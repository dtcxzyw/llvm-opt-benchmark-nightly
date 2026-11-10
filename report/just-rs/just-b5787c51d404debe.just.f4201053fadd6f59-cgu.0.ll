Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27272
inline.NumDeleted: 11238
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 664
loop-unroll.NumUnrolled: 789
begin_hunk_0_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBW_11sort_by_keyTRINtNtB1G_3vec3VecjEjENCNvMNtB11_8justfileNtB2P_8Justfile14public_recipess_0E0EB11_:bb.a
_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit71: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i70, %.loopexit.i.i.i.i.i.i.i.i.i65
  %.sroa.0.0.i.i.i.i.i.i.i.i.i66 = phi i8 [ %i.aa, %._crit_edge.i.i.i.i.i.i.i.i.i70 ], [ %i.ab, %.loopexit.i.i.i.i.i.i.i.i.i65 ] ; 2 uses
  %cond.i.i.i.i.i67 = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i66, 0
  %i.af = icmp slt i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i66, 0
  %i.ag = icmp ult i64 %i.s, %i.u
  %.sroa.0.0.i.i68 = select i1 %cond.i.i.i.i.i67, i1 %i.ag, i1 %i.af ; 2 uses
  %.not111 = icmp eq i64 %i.n, 2                  ; 2 uses
  br i1 %.sroa.0.0.i.i68, label %.preheader, label %.preheader81

.preheader81:                                     ; preds = %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit71
  br i1 %.not111, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyTRINtNtB1M_3vec3VecjEjENCNvMNtB17_8justfileNtB2W_8Justfile14public_recipess_0E0EB17_.exit.i.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader81
  %umax = tail call i64 @llvm.umax.i64(i64 %i.n, i64 3) ; 2 uses
  br label %.lr.ph

.preheader:                                       ; preds = %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit71
  br i1 %.not111, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyTRINtNtB1M_3vec3VecjEjENCNvMNtB17_8justfileNtB2W_8Justfile14public_recipess_0E0EB17_.exit.i.thread166, label %.lr.ph99.preheader

.lr.ph99.preheader:                               ; preds = %.preheader
  %umax128 = tail call i64 @llvm.umax.i64(i64 %i.n, i64 3) ; 2 uses
  br label %.lr.ph99

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.n
  %.val3.i.i.i41 = phi i64 [ %.val1.i.i.i39, %bb.n ], [ %.val1.i.i.i56, %.lr.ph.preheader ] ; 2 uses
  %.val2.i.i.i40 = phi ptr [ %.val.i.i.i38, %bb.n ], [ %.val.i.i.i55, %.lr.ph.preheader ]
  %i.ah = phi i64 [ %i.am, %bb.n ], [ %i.s, %.lr.ph.preheader ]
  %.sroa.01.0.i.i96 = phi i64 [ %i.ax, %bb.n ], [ 2, %.lr.ph.preheader ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i96
  %i.aj = add nsw i64 %.sroa.01.0.i.i96, -1
  %i.ak = icmp ult i64 %i.aj, %i.n
  tail call void @llvm.assume(i1 %i.ak)
  %.val8.i = load ptr, ptr %i.ai, align 8, !alias.scope !23200, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val8.i, i64 240
  %i.am = load i64, ptr %i.al, align 8, !noalias !23201, !noundef !28 ; 2 uses
  %i.an = getelementptr i8, ptr %.val8.i, i64 56
  %.val.i.i.i38 = load ptr, ptr %i.an, align 8, !noalias !23201, !nonnull !28, !noundef !28 ; 2 uses
  %i.ao = getelementptr i8, ptr %.val8.i, i64 64
  %.val1.i.i.i39 = load i64, ptr %i.ao, align 8, !noalias !23201, !noundef !28 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23210), !noalias !23201
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23211), !noalias !23201
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23212), !noalias !23201
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23213), !noalias !23201
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23214), !noalias !23201
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23215), !noalias !23201
  %..i.i.i.i.i.i.i.i.i.i42 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.val3.i.i.i41, i64 range(i64 0, 1152921504606846976) %.val1.i.i.i39) ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i43 = icmp eq i64 %..i.i.i.i.i.i.i.i.i.i42, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i43, label %._crit_edge.i.i.i.i.i.i.i.i.i53, label %.lr.ph.i.i.i.i.i.i.i.i.i44

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i44
  %i.ap = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i.i.i.i.i45, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i52 = icmp eq i64 %i.ap, %..i.i.i.i.i.i.i.i.i.i42
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i52, label %._crit_edge.i.i.i.i.i.i.i.i.i53, label %.lr.ph.i.i.i.i.i.i.i.i.i44

._crit_edge.i.i.i.i.i.i.i.i.i53:                  ; preds = %bb.m, %.lr.ph
  %i.aq = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.val1.i.i.i39, i64 range(i64 0, 1152921504606846976) %.val3.i.i.i41)
  br label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit54

.loopexit.i.i.i.i.i.i.i.i.i48:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i44
  %i.ar = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.val15.i.i.i.i.i.i.i.i.i46, i64 %.val16.i.i.i.i.i.i.i.i.i47)
  br label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit54

.lr.ph.i.i.i.i.i.i.i.i.i44:                       ; preds = %.lr.ph, %bb.m
  %.sroa.01.019.i.i.i.i.i.i.i.i.i45 = phi i64 [ %i.ap, %bb.m ], [ 0, %.lr.ph ] ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i38, i64 %.sroa.01.019.i.i.i.i.i.i.i.i.i45
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.val2.i.i.i40, i64 %.sroa.01.019.i.i.i.i.i.i.i.i.i45
  %.val15.i.i.i.i.i.i.i.i.i46 = load i64, ptr %i.as, align 8, !alias.scope !23216, !noalias !23201, !noundef !28 ; 2 uses
  %.val16.i.i.i.i.i.i.i.i.i47 = load i64, ptr %i.at, align 8, !alias.scope !23217, !noalias !23201, !noundef !28 ; 2 uses
  %i.au = icmp eq i64 %.val15.i.i.i.i.i.i.i.i.i46, %.val16.i.i.i.i.i.i.i.i.i47
  br i1 %i.au, label %bb.m, label %.loopexit.i.i.i.i.i.i.i.i.i48

_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit54: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i53, %.loopexit.i.i.i.i.i.i.i.i.i48
  %.sroa.0.0.i.i.i.i.i.i.i.i.i49 = phi i8 [ %i.aq, %._crit_edge.i.i.i.i.i.i.i.i.i53 ], [ %i.ar, %.loopexit.i.i.i.i.i.i.i.i.i48 ] ; 2 uses
  %cond.i.i.i.i.i50 = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i49, 0
  %i.av = icmp slt i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i49, 0
  %i.aw = icmp ult i64 %i.am, %i.ah
  %.sroa.0.0.i.i51 = select i1 %cond.i.i.i.i.i50, i1 %i.aw, i1 %i.av
  br i1 %.sroa.0.0.i.i51, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyTRINtNtB1M_3vec3VecjEjENCNvMNtB17_8justfileNtB2W_8Justfile14public_recipess_0E0EB17_.exit.i, label %bb.n

bb.n:                                             ; preds = %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit54
  %i.ax = add nuw i64 %.sroa.01.0.i.i96, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ax, %umax
  br i1 %exitcond.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyTRINtNtB1M_3vec3VecjEjENCNvMNtB17_8justfileNtB2W_8Justfile14public_recipess_0E0EB17_.exit.i, label %.lr.ph

.lr.ph99:                                         ; preds = %.lr.ph99.preheader, %bb.p
  %.val3.i.i.i = phi i64 [ %.val1.i.i.i, %bb.p ], [ %.val1.i.i.i56, %.lr.ph99.preheader ] ; 2 uses
  %.val2.i.i.i = phi ptr [ %.val.i.i.i, %bb.p ], [ %.val.i.i.i55, %.lr.ph99.preheader ]
  %i.ay = phi i64 [ %i.bd, %bb.p ], [ %i.s, %.lr.ph99.preheader ]
  %.sroa.01.1.i.i98 = phi i64 [ %i.bo, %bb.p ], [ 2, %.lr.ph99.preheader ] ; 4 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i98
  %i.ba = add nsw i64 %.sroa.01.1.i.i98, -1
  %i.bb = icmp ult i64 %i.ba, %i.n
  tail call void @llvm.assume(i1 %i.bb)
  %.val.i = load ptr, ptr %i.az, align 8, !alias.scope !23200, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.i, i64 240
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !23201, !noundef !28 ; 2 uses
  %i.be = getelementptr i8, ptr %.val.i, i64 56
  %.val.i.i.i = load ptr, ptr %i.be, align 8, !noalias !23201, !nonnull !28, !noundef !28 ; 2 uses
  %i.bf = getelementptr i8, ptr %.val.i, i64 64
  %.val1.i.i.i = load i64, ptr %i.bf, align 8, !noalias !23201, !noundef !28 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23218), !noalias !23201
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23219), !noalias !23201
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23220), !noalias !23201
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23221), !noalias !23201
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23222), !noalias !23201
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23223), !noalias !23201
  %..i.i.i.i.i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.val3.i.i.i, i64 range(i64 0, 1152921504606846976) %.val1.i.i.i) ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %..i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bg = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bg, %..i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.o, %.lr.ph99
  %i.bh = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.val1.i.i.i, i64 range(i64 0, 1152921504606846976) %.val3.i.i.i)
  br label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bi = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.val15.i.i.i.i.i.i.i.i.i, i64 %.val16.i.i.i.i.i.i.i.i.i)
  br label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph99, %bb.o
  %.sroa.01.019.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bg, %bb.o ], [ 0, %.lr.ph99 ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.sroa.01.019.i.i.i.i.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.val2.i.i.i, i64 %.sroa.01.019.i.i.i.i.i.i.i.i.i
  %.val15.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bj, align 8, !alias.scope !23224, !noalias !23201, !noundef !28 ; 2 uses
  %.val16.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bk, align 8, !alias.scope !23225, !noalias !23201, !noundef !28 ; 2 uses
  %i.bl = icmp eq i64 %.val15.i.i.i.i.i.i.i.i.i, %.val16.i.i.i.i.i.i.i.i.i
  br i1 %i.bl, label %bb.o, label %.loopexit.i.i.i.i.i.i.i.i.i

_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i8 [ %i.bh, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.bi, %.loopexit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %cond.i.i.i.i.i = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i, 0
  %i.bm = icmp slt i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i, 0
  %i.bn = icmp ult i64 %i.bd, %i.ay
  %.sroa.0.0.i.i37 = select i1 %cond.i.i.i.i.i, i1 %i.bn, i1 %i.bm
  br i1 %.sroa.0.0.i.i37, label %bb.p, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyTRINtNtB1M_3vec3VecjEjENCNvMNtB17_8justfileNtB2W_8Justfile14public_recipess_0E0EB17_.exit.i

bb.p:                                             ; preds = %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit
  %i.bo = add nuw i64 %.sroa.01.1.i.i98, 1        ; 2 uses
  %exitcond129.not = icmp eq i64 %i.bo, %umax128
  br i1 %exitcond129.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyTRINtNtB1M_3vec3VecjEjENCNvMNtB17_8justfileNtB2W_8Justfile14public_recipess_0E0EB17_.exit.i, label %.lr.ph99

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyTRINtNtB1M_3vec3VecjEjENCNvMNtB17_8justfileNtB2W_8Justfile14public_recipess_0E0EB17_.exit.i: ; preds = %bb.n, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit54, %bb.p, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i98, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit ], [ %umax128, %bb.p ], [ %.sroa.01.0.i.i96, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit54 ], [ %umax, %bb.n ] ; 6 uses
  %i.bp = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.bp)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.q

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyTRINtNtB1M_3vec3VecjEjENCNvMNtB17_8justfileNtB2W_8Justfile14public_recipess_0E0EB17_.exit.i.thread166: ; preds = %.preheader
  br i1 %.not5.i168, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe12split_at_mutBz_.exit11.preheader.i.i

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyTRINtNtB1M_3vec3VecjEjENCNvMNtB17_8justfileNtB2W_8Justfile14public_recipess_0E0EB17_.exit.i.thread: ; preds = %.preheader81
  br i1 %.not5.i163, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe7reverseBz_.exit

bb.q:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyTRINtNtB1M_3vec3VecjEjENCNvMNtB17_8justfileNtB2W_8Justfile14public_recipess_0E0EB17_.exit.i
  br i1 %.sroa.0.0.i.i68, label %bb.t, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe7reverseBz_.exit

bb.r:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0)
  %i.bq = shl nuw nsw i64 %..i36, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyTRINtNtB1N_3vec3VecjEjENCNvMNtB18_8justfileNtB2X_8Justfile14public_recipess_0E0EB18_.exit

bb.s:                                             ; preds = %bb.i
  %..i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyTRINtNtB1P_3vec3VecjEjENCNvMNtB1a_8justfileNtB2Z_8Justfile14public_recipess_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i35, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #73, !inline_history !23162
  %i.br = shl nuw nsw i64 %..i35, 1
  %i.bs = or disjoint i64 %i.br, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyTRINtNtB1N_3vec3VecjEjENCNvMNtB18_8justfileNtB2X_8Justfile14public_recipess_0E0EB18_.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe7reverseBz_.exit: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe12split_at_mutBz_.exit11.i.i, %middle.block, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyTRINtNtB1M_3vec3VecjEjENCNvMNtB17_8justfileNtB2W_8Justfile14public_recipess_0E0EB17_.exit.i.thread, %bb.j, %bb.t, %bb.q
  %.sroa.0.0.i.i7679 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.q ], [ %.sroa.0.0.i.i, %bb.t ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyTRINtNtB1M_3vec3VecjEjENCNvMNtB17_8justfileNtB2W_8Justfile14public_recipess_0E0EB17_.exit.i.thread ], [ %.sroa.0.0.i.i164171175, %middle.block ], [ %.sroa.0.0.i.i164171175, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe12split_at_mutBz_.exit11.i.i ]
  %i.bt = shl nuw nsw i64 %.sroa.0.0.i.i7679, 1
  %i.bu = or disjoint i64 %i.bt, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyTRINtNtB1N_3vec3VecjEjENCNvMNtB18_8justfileNtB2X_8Justfile14public_recipess_0E0EB18_.exit

bb.t:                                             ; preds = %bb.q
  %i.bv = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23226), !noalias !23227
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23228), !noalias !23227
  %.not.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe7reverseBz_.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe12split_at_mutBz_.exit11.preheader.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe12split_at_mutBz_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyTRINtNtB1M_3vec3VecjEjENCNvMNtB17_8justfileNtB2W_8Justfile14public_recipess_0E0EB17_.exit.i.thread166, %bb.t
  %i.bw = phi i64 [ %i.bv, %bb.t ], [ 1, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyTRINtNtB1M_3vec3VecjEjENCNvMNtB17_8justfileNtB2W_8Justfile14public_recipess_0E0EB17_.exit.i.thread166 ] ; 4 uses
  %.sroa.0.0.i.i164171175 = phi i64 [ %.sroa.0.0.i.i, %bb.t ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyTRINtNtB1M_3vec3VecjEjENCNvMNtB17_8justfileNtB2W_8Justfile14public_recipess_0E0EB17_.exit.i.thread166 ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i164171175 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bw, 4
  br i1 %min.iters.check, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe12split_at_mutBz_.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe12split_at_mutBz_.exit11.preheader.i.i
  %n.vec = and i64 %i.bw, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.by = xor i64 %index, -1
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 4 uses
  %i.ca = getelementptr [8 x i8], ptr %i.bx, i64 %i.by ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %wide.load = load <2 x ptr>, ptr %i.bz, align 8, !alias.scope !23229, !noalias !23227
  %wide.load208 = load <2 x ptr>, ptr %i.cb, align 8, !alias.scope !23229, !noalias !23227
  %i.cc = getelementptr i8, ptr %i.ca, i64 -8
  %i.cd = getelementptr i8, ptr %i.ca, i64 -24
  %wide.load209 = load <2 x i64>, ptr %i.cc, align 8, !alias.scope !23230, !noalias !23227
  %wide.load210 = load <2 x i64>, ptr %i.cd, align 8, !alias.scope !23230, !noalias !23227
  %reverse = shufflevector <2 x i64> %wide.load209, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse211 = shufflevector <2 x i64> %wide.load210, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %6 = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store <2 x i64> %reverse, ptr %i.bz, align 8, !alias.scope !23229, !noalias !23227
  store <2 x i64> %reverse211, ptr %6, align 8, !alias.scope !23229, !noalias !23227
  %7 = getelementptr i8, ptr %i.ca, i64 -8
  %8 = getelementptr i8, ptr %i.ca, i64 -24
  %reverse212 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse213 = shufflevector <2 x ptr> %wide.load208, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse212, ptr %7, align 8, !alias.scope !23230, !noalias !23227
  store <2 x ptr> %reverse213, ptr %8, align 8, !alias.scope !23230, !noalias !23227
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !23168

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe7reverseBz_.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe12split_at_mutBz_.exit11.i.i.preheader

_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe12split_at_mutBz_.exit11.i.i.preheader: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe12split_at_mutBz_.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe12split_at_mutBz_.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe12split_at_mutBz_.exit11.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe12split_at_mutBz_.exit11.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe12split_at_mutBz_.exit11.i.i.preheader, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe12split_at_mutBz_.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ck, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe12split_at_mutBz_.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe12split_at_mutBz_.exit11.i.i.preheader ] ; 3 uses
  %i.cf = xor i64 %.sroa.0.016.i.i, -1
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ch = getelementptr [8 x i8], ptr %i.bx, i64 %i.cf ; 2 uses
  %i.ci = load ptr, ptr %i.cg, align 8, !alias.scope !23229, !noalias !23227, !nonnull !28, !align !35, !noundef !28
  %i.cj = load i64, ptr %i.ch, align 8, !alias.scope !23230, !noalias !23227
  store i64 %i.cj, ptr %i.cg, align 8, !alias.scope !23229, !noalias !23227
  store ptr %i.ci, ptr %i.ch, align 8, !alias.scope !23230, !noalias !23227
  %i.ck = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ck, %i.bw
  br i1 %exitcond.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe7reverseBz_.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe12split_at_mutBz_.exit11.i.i, !llvm.loop !23169

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyTRINtNtB1N_3vec3VecjEjENCNvMNtB18_8justfileNtB2X_8Justfile14public_recipess_0E0EB18_.exit: ; preds = %bb.r, %bb.s, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe7reverseBz_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.bu, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe7reverseBz_.exit ], [ %i.bs, %bb.s ], [ %i.bq, %bb.r ] ; 2 uses
  %i.cl = lshr i64 %.sroa.023.0, 1
  %i.cm = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.cn = sub nsw i64 %factor, %i.cl
  %i.co = add nuw nsw i64 %i.cm, %factor
  %i.cp = mul i64 %i.cn, %.sroa.0.0
  %i.cq = mul i64 %i.co, %.sroa.0.0
  %i.cr = xor i64 %i.cq, %i.cp
  %i.cs = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cr, i1 false)
  %i.ct = trunc nuw nsw i64 %i.cs to i8
  br label %bb.g

bb.u:                                             ; preds = %.lr.ph104, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyTRINtNtB1Q_3vec3VecjEjENCNvMNtB1b_8justfileNtB30_8Justfile14public_recipess_0E0EB1b_.exit
  %.sroa.02.1103 = phi i64 [ %.sroa.02.0, %.lr.ph104 ], [ %i.cu, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyTRINtNtB1Q_3vec3VecjEjENCNvMNtB1b_8justfileNtB30_8Justfile14public_recipess_0E0EB1b_.exit ] ; 2 uses
  %.sroa.023.1102 = phi i64 [ %.sroa.023.0, %.lr.ph104 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyTRINtNtB1Q_3vec3VecjEjENCNvMNtB1b_8justfileNtB30_8Justfile14public_recipess_0E0EB1b_.exit ] ; 4 uses
  %i.cu = add i64 %.sroa.02.1103, -1              ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !noundef !28
  %.not28 = icmp ult i8 %i.cw, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.v

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyTRINtNtB1Q_3vec3VecjEjENCNvMNtB1b_8justfileNtB30_8Justfile14public_recipess_0E0EB1b_.exit, %bb.u, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1102, %bb.u ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyTRINtNtB1Q_3vec3VecjEjENCNvMNtB1b_8justfileNtB30_8Justfile14public_recipess_0E0EB1b_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1103, %bb.u ], [ 1, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyTRINtNtB1Q_3vec3VecjEjENCNvMNtB1b_8justfileNtB30_8Justfile14public_recipess_0E0EB1b_.exit ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cy, align 1
  br i1 %i.k, label %bb.af, label %bb.ag

bb.v:                                             ; preds = %bb.u
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cu
  %i.da = load i64, ptr %i.cz, align 8, !noundef !28 ; 3 uses
  %i.db = lshr i64 %i.da, 1                       ; 8 uses
  %i.dc = lshr i64 %.sroa.023.1102, 1             ; 6 uses
  %i.dd = add nuw i64 %i.db, %i.dc                ; 4 uses
  %i.de = sub i64 %.sroa.09.0, %i.dd
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.de ; 6 uses
  %i.dg = icmp samesign ugt i64 %i.dd, %3
  %i.dh = trunc i64 %.sroa.023.1102 to i1
  %i.di = or i64 %i.da, %.sroa.023.1102
  %i.dj = trunc i64 %i.di to i1
  %or.cond3.i = or i1 %i.dg, %i.dj
  br i1 %or.cond3.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dk = trunc i64 %i.da to i1
  br i1 %i.dk, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.dl = shl nuw nsw i64 %i.dd, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyTRINtNtB1Q_3vec3VecjEjENCNvMNtB1b_8justfileNtB30_8Justfile14public_recipess_0E0EB1b_.exit

bb.y:                                             ; preds = %bb.z, %bb.w
  br i1 %i.dh, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.dm = or i64 %i.db, 1
  %i.dn = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.dm, i1 true)
  %i.do = trunc nuw nsw i64 %i.dn to i32
  %i.dp = shl nuw nsw i32 %i.do, 1
  %i.dq = xor i32 %i.dp, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyTRINtNtB1P_3vec3VecjEjENCNvMNtB1a_8justfileNtB2Z_8Justfile14public_recipess_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.df, i64 noundef range(i64 0, 1152921504606846976) %i.db, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #73, !inline_history !23170
  br label %bb.y

bb.aa:                                            ; preds = %bb.y
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.db
  %i.ds = or i64 %i.dc, 1
  %i.dt = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ds, i1 true)
  %i.du = trunc nuw nsw i64 %i.dt to i32
  %i.dv = shl nuw nsw i32 %i.du, 1
  %i.dw = xor i32 %i.dv, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyTRINtNtB1P_3vec3VecjEjENCNvMNtB1a_8justfileNtB2Z_8Justfile14public_recipess_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.dr, i64 noundef range(i64 0, 1152921504606846976) %i.dc, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #73, !inline_history !23170
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23232)
  %i.dx = icmp eq i64 %i.db, 0
  %i.dy = icmp eq i64 %i.dc, 0
  %or.cond.i = or i1 %i.dy, %i.dx
  br i1 %or.cond.i, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyTRINtNtB1H_3vec3VecjEjENCNvMNtB12_8justfileNtB2Q_8Justfile14public_recipess_0E0EB12_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.dc, i64 range(i64 0, -9223372036854775808) %i.db) ; 2 uses
  %i.dz = icmp samesign ult i64 %3, %..i.i
  br i1 %i.dz, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyTRINtNtB1H_3vec3VecjEjENCNvMNtB12_8justfileNtB2Q_8Justfile14public_recipess_0E0EB12_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ac
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.db ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.db, %i.dc  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.ea, ptr %i.df
  %i.eb = shl nuw nsw i64 %..i.i, 3               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.eb, i1 false), !alias.scope !23233
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 %i.eb ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit.i.i
  %i.ed = phi ptr [ %i.fd, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit.i.i ], [ %i.ec, %.critedge.i ]
  %i.ee = phi ptr [ %i.fb, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit.i.i ], [ %i.ea, %.critedge.i ]
  %.sroa.0.0.i.i34 = phi ptr [ %i.eh, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit.i.i ], [ %i.m, %.critedge.i ]
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 -8 ; 3 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ed, i64 -8 ; 3 uses
  %i.eh = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -8 ; 2 uses
  %.val.i.i = load ptr, ptr %i.eg, align 8, !alias.scope !23232, !noalias !23234, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %.val12.i.i = load ptr, ptr %i.ef, align 8, !alias.scope !23231, !noalias !23234, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 240
  %i.ej = load i64, ptr %i.ei, align 8, !noalias !23235, !noundef !28
  %i.ek = getelementptr inbounds nuw i8, ptr %.val12.i.i, i64 240
  %i.el = load i64, ptr %i.ek, align 8, !noalias !23235, !noundef !28
  %i.em = getelementptr i8, ptr %.val.i.i, i64 56
  %.val.i.i.i.i.i = load ptr, ptr %i.em, align 8, !noalias !23235, !nonnull !28, !noundef !28
  %i.en = getelementptr i8, ptr %.val.i.i, i64 64
  %.val1.i.i.i.i.i = load i64, ptr %i.en, align 8, !noalias !23235, !noundef !28 ; 2 uses
  %i.eo = getelementptr i8, ptr %.val12.i.i, i64 56
  %.val2.i.i.i.i.i = load ptr, ptr %i.eo, align 8, !noalias !23235, !nonnull !28, !noundef !28
  %i.ep = getelementptr i8, ptr %.val12.i.i, i64 64
  %.val3.i.i.i.i.i = load i64, ptr %i.ep, align 8, !noalias !23235, !noundef !28 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23241)
  %..i.i.i.i.i.i.i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.val3.i.i.i.i.i, i64 range(i64 0, 1152921504606846976) %.val1.i.i.i.i.i) ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %..i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.eq = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.eq, %..i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.ad, %.preheader.i
  %i.er = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.val1.i.i.i.i.i, i64 range(i64 0, 1152921504606846976) %.val3.i.i.i.i.i)
  br label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.es = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.val15.i.i.i.i.i.i.i.i.i.i.i, i64 %.val16.i.i.i.i.i.i.i.i.i.i.i)
  br label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.preheader.i, %bb.ad
  %.sroa.01.019.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.eq, %bb.ad ], [ 0, %.preheader.i ] ; 3 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.01.019.i.i.i.i.i.i.i.i.i.i.i
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %.val2.i.i.i.i.i, i64 %.sroa.01.019.i.i.i.i.i.i.i.i.i.i.i
  %.val15.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.et, align 8, !alias.scope !23242, !noalias !23235, !noundef !28 ; 2 uses
  %.val16.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.eu, align 8, !alias.scope !23243, !noalias !23235, !noundef !28 ; 2 uses
  %i.ev = icmp eq i64 %.val15.i.i.i.i.i.i.i.i.i.i.i, %.val16.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ev, label %bb.ad, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i

_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.er, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ %i.es, %.loopexit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %cond.i.i.i.i.i.i.i = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.ew = icmp slt i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.ex = icmp ult i64 %i.ej, %i.el
  %.sroa.0.0.i.i.i.i = select i1 %cond.i.i.i.i.i.i.i, i1 %i.ex, i1 %i.ew ; 3 uses
  %..i17.i = select i1 %.sroa.0.0.i.i.i.i, ptr %i.ef, ptr %i.eg
  %i.ey = load i64, ptr %..i17.i, align 8, !alias.scope !23233, !noalias !23234
  store i64 %i.ey, ptr %i.eh, align 8, !alias.scope !23231, !noalias !23234
  %i.ez = xor i1 %.sroa.0.0.i.i.i.i, true
  %i.fa = zext i1 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.fa ; 3 uses
  %i.fc = zext i1 %.sroa.0.0.i.i.i.i to i64
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.fc ; 3 uses
  %i.fe = icmp eq ptr %i.fb, %i.df
  %i.ff = icmp eq ptr %i.fd, %2
  %or.cond.i.i = select i1 %i.fe, i1 true, i1 %i.ff
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_11sort_by_keyTRINtNtB27_3vec3VecjEjENCNvMNtB1f_8justfileNtB3h_8Justfile14public_recipess_0E0EB1f_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit.i31.i
  %i.fg = phi ptr [ %i.ge, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit.i31.i ], [ %i.df, %.critedge.i ] ; 2 uses
  %.sroa.0.04.i.i = phi ptr [ %i.gd, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit.i31.i ], [ %i.ea, %.critedge.i ] ; 3 uses
  %i.fh = phi ptr [ %i.gb, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit.i31.i ], [ %2, %.critedge.i ] ; 3 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBW_11sort_by_keyTRINtNtB1G_3vec3VecjEjENCNvMNtB11_8justfileNtB2P_8Justfile14public_recipess_0E0EB11_:bb.a
_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyTRINtNtB1H_3vec3VecjEjENCNvMNtB12_8justfileNtB2Q_8Justfile14public_recipess_0E0EB12_.exit: ; preds = %bb.ab, %bb.ac, %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_11sort_by_keyTRINtNtB27_3vec3VecjEjENCNvMNtB1f_8justfileNtB3h_8Justfile14public_recipess_0E0EB1f_.exit.i
  %i.gk = shl nuw nsw i64 %i.dd, 1
  %i.gl = or disjoint i64 %i.gk, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyTRINtNtB1Q_3vec3VecjEjENCNvMNtB1b_8justfileNtB30_8Justfile14public_recipess_0E0EB1b_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyTRINtNtB1Q_3vec3VecjEjENCNvMNtB1b_8justfileNtB30_8Justfile14public_recipess_0E0EB1b_.exit: ; preds = %bb.x, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyTRINtNtB1H_3vec3VecjEjENCNvMNtB12_8justfileNtB2Q_8Justfile14public_recipess_0E0EB12_.exit
  %.sroa.0.0.i = phi i64 [ %i.gl, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyTRINtNtB1H_3vec3VecjEjENCNvMNtB12_8justfileNtB2Q_8Justfile14public_recipess_0E0EB12_.exit ], [ %i.dl, %bb.x ] ; 2 uses
  %i.gm = icmp ugt i64 %i.cu, 1
  br i1 %i.gm, label %bb.u, label %._crit_edge

bb.af:                                            ; preds = %._crit_edge
  %i.gn = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.go = lshr i64 %.sroa.018.0, 1
  %i.gp = add nuw i64 %i.go, %.sroa.09.0
  br label %bb.f

bb.ag:                                            ; preds = %._crit_edge
  %i.gq = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.gq, 0
  br i1 %.not30, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gr = or i64 %1, 1
  %i.gs = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.gr, i1 true)
  %i.gt = trunc nuw nsw i64 %i.gs to i32
  %i.gu = shl nuw nsw i32 %i.gt, 1
  %i.gv = xor i32 %i.gu, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyTRINtNtB1P_3vec3VecjEjENCNvMNtB1a_8justfileNtB2Z_8Justfile14public_recipess_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.gv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #73, !inline_history !23170
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.a, %bb.ai
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBW_11sort_by_keyReNCNvMNtB11_8justfileNtB2w_8Justfile3runs0_0E0EB11_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.av, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i239 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i244 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ar, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ar ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.hl, %bb.ar ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.hj, %bb.ar ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyReNCNvMNtB18_8justfileNtB2E_8Justfile3runs0_0E0EB18_.exit
  %.sroa.021.0 = phi i8 [ %i.bc, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyReNCNvMNtB18_8justfileNtB2E_8Justfile3runs0_0E0EB18_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyReNCNvMNtB18_8justfileNtB2E_8Justfile3runs0_0E0EB18_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph139, label %._crit_edge

.lr.ph139:                                        ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23317)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyReNCNvMNtB17_8justfileNtB2D_8Justfile3runs0_0E0EB17_.exit.i.thread242, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyReNCNvMNtB17_8justfileNtB2D_8Justfile3runs0_0E0EB17_.exit.i.thread, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyReNCNvMNtB17_8justfileNtB2D_8Justfile3runs0_0E0EB17_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding7reverseBz_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val10.i = load ptr, ptr %i.q, align 8, !alias.scope !23317, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %.val11.i = load ptr, ptr %i.o, align 8, !alias.scope !23317
  %i.r = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding11sort_by_keyReNCNvMNtBD_8justfileNtB1w_8Justfile3runs0_0E0BD_(ptr nonnull %.val10.i, ptr %.val11.i) #75, !noalias !23318, !inline_history !23259 ; 2 uses
  %.not146 = icmp eq i64 %i.n, 2                  ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader60

.preheader60:                                     ; preds = %bb.k
  br i1 %.not146, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyReNCNvMNtB17_8justfileNtB2D_8Justfile3runs0_0E0EB17_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not146, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyReNCNvMNtB17_8justfileNtB2D_8Justfile3runs0_0E0EB17_.exit.i.thread242, label %.lr.ph133

.lr.ph:                                           ; preds = %.preheader60, %bb.l
  %.val9.i = phi ptr [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader60 ]
  %.sroa.01.0.i.i129 = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader60 ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i129
  %.val8.i = load ptr, ptr %i.s, align 8, !alias.scope !23317, !nonnull !28, !align !35, !noundef !28 ; 2 uses
  %i.t = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding11sort_by_keyReNCNvMNtBD_8justfileNtB1w_8Justfile3runs0_0E0BD_(ptr nonnull %.val8.i, ptr nonnull %.val9.i) #75, !noalias !23318, !inline_history !23259
  br i1 %i.t, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyReNCNvMNtB17_8justfileNtB2D_8Justfile3runs0_0E0EB17_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i129, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyReNCNvMNtB17_8justfileNtB2D_8Justfile3runs0_0E0EB17_.exit.i, label %.lr.ph

.lr.ph133:                                        ; preds = %.preheader, %bb.m
  %.val7.i = phi ptr [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i132 = phi i64 [ %i.x, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i132
  %.val.i = load ptr, ptr %i.v, align 8, !alias.scope !23317, !nonnull !28, !align !35, !noundef !28 ; 2 uses
  %i.w = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding11sort_by_keyReNCNvMNtBD_8justfileNtB1w_8Justfile3runs0_0E0BD_(ptr nonnull %.val.i, ptr nonnull %.val7.i) #75, !noalias !23318, !inline_history !23259
  br i1 %i.w, label %bb.m, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyReNCNvMNtB17_8justfileNtB2D_8Justfile3runs0_0E0EB17_.exit.i

bb.m:                                             ; preds = %.lr.ph133
  %i.x = add nuw i64 %.sroa.01.1.i.i132, 1        ; 2 uses
  %exitcond209.not = icmp eq i64 %i.x, %i.n
  br i1 %exitcond209.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyReNCNvMNtB17_8justfileNtB2D_8Justfile3runs0_0E0EB17_.exit.i, label %.lr.ph133

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyReNCNvMNtB17_8justfileNtB2D_8Justfile3runs0_0E0EB17_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph133
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i132, %.lr.ph133 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i129, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyReNCNvMNtB17_8justfileNtB2D_8Justfile3runs0_0E0EB17_.exit.i.thread242: ; preds = %.preheader
  br i1 %.not5.i244, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit11.preheader.i.i

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyReNCNvMNtB17_8justfileNtB2D_8Justfile3runs0_0E0EB17_.exit.i.thread: ; preds = %.preheader60
  br i1 %.not5.i239, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding7reverseBz_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyReNCNvMNtB17_8justfileNtB2D_8Justfile3runs0_0E0EB17_.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding7reverseBz_.exit

bb.o:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0)
  %i.z = shl nuw nsw i64 %..i37, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyReNCNvMNtB18_8justfileNtB2E_8Justfile3runs0_0E0EB18_.exit

bb.p:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyReNCNvMNtB1a_8justfileNtB2G_8Justfile3runs0_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i36, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #73, !inline_history !23259
  %i.aa = shl nuw nsw i64 %..i36, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyReNCNvMNtB18_8justfileNtB2E_8Justfile3runs0_0E0EB18_.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding7reverseBz_.exit: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit11.i.i, %middle.block, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyReNCNvMNtB17_8justfileNtB2D_8Justfile3runs0_0E0EB17_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i5558 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyReNCNvMNtB17_8justfileNtB2D_8Justfile3runs0_0E0EB17_.exit.i.thread ], [ %.sroa.0.0.i.i240247251, %middle.block ], [ %.sroa.0.0.i.i240247251, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit11.i.i ]
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i.i5558, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyReNCNvMNtB18_8justfileNtB2E_8Justfile3runs0_0E0EB18_.exit

bb.q:                                             ; preds = %bb.n
  %i.ae = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23319), !noalias !23320
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23321), !noalias !23320
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding7reverseBz_.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit11.preheader.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyReNCNvMNtB17_8justfileNtB2D_8Justfile3runs0_0E0EB17_.exit.i.thread242, %bb.q
  %i.af = phi i64 [ %i.ae, %bb.q ], [ 1, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyReNCNvMNtB17_8justfileNtB2D_8Justfile3runs0_0E0EB17_.exit.i.thread242 ] ; 4 uses
  %.sroa.0.0.i.i240247251 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyReNCNvMNtB17_8justfileNtB2D_8Justfile3runs0_0E0EB17_.exit.i.thread242 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i240247251 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.af, 4
  br i1 %min.iters.check, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit11.preheader.i.i
  %n.vec = and i64 %i.af, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = xor i64 %index, -1
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 4 uses
  %i.aj = getelementptr [8 x i8], ptr %i.ag, i64 %i.ah ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ai, align 8, !alias.scope !23322, !noalias !23320
  %wide.load376 = load <2 x ptr>, ptr %i.ak, align 8, !alias.scope !23322, !noalias !23320
  %i.al = getelementptr i8, ptr %i.aj, i64 -8
  %i.am = getelementptr i8, ptr %i.aj, i64 -24
  %wide.load377 = load <2 x i64>, ptr %i.al, align 8, !alias.scope !23323, !noalias !23320
  %wide.load378 = load <2 x i64>, ptr %i.am, align 8, !alias.scope !23323, !noalias !23320
  %reverse = shufflevector <2 x i64> %wide.load377, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse379 = shufflevector <2 x i64> %wide.load378, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %6 = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <2 x i64> %reverse, ptr %i.ai, align 8, !alias.scope !23322, !noalias !23320
  store <2 x i64> %reverse379, ptr %6, align 8, !alias.scope !23322, !noalias !23320
  %7 = getelementptr i8, ptr %i.aj, i64 -8
  %8 = getelementptr i8, ptr %i.aj, i64 -24
  %reverse380 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse381 = shufflevector <2 x ptr> %wide.load376, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse380, ptr %7, align 8, !alias.scope !23323, !noalias !23320
  store <2 x ptr> %reverse381, ptr %8, align 8, !alias.scope !23323, !noalias !23320
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !23265

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding7reverseBz_.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit11.i.i.preheader

_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit11.i.i.preheader: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit11.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit11.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit11.i.i.preheader, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.at, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit11.i.i.preheader ] ; 3 uses
  %i.ao = xor i64 %.sroa.0.016.i.i, -1
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.aq = getelementptr [8 x i8], ptr %i.ag, i64 %i.ao ; 2 uses
  %i.ar = load ptr, ptr %i.ap, align 8, !alias.scope !23322, !noalias !23320, !nonnull !28, !align !35, !noundef !28
  %i.as = load i64, ptr %i.aq, align 8, !alias.scope !23323, !noalias !23320
  store i64 %i.as, ptr %i.ap, align 8, !alias.scope !23322, !noalias !23320
  store ptr %i.ar, ptr %i.aq, align 8, !alias.scope !23323, !noalias !23320
  %i.at = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, %i.af
  br i1 %exitcond.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding7reverseBz_.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding12split_at_mutBz_.exit11.i.i, !llvm.loop !23266

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyReNCNvMNtB18_8justfileNtB2E_8Justfile3runs0_0E0EB18_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding7reverseBz_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ad, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding7reverseBz_.exit ], [ %i.ab, %bb.p ], [ %i.z, %bb.o ] ; 2 uses
  %i.au = lshr i64 %.sroa.023.0, 1
  %i.av = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aw = sub nsw i64 %factor, %i.au
  %i.ax = add nuw nsw i64 %i.av, %factor
  %i.ay = mul i64 %i.aw, %.sroa.0.0
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 false)
  %i.bc = trunc nuw nsw i64 %i.bb to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph139, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyReNCNvMNtB1b_8justfileNtB2H_8Justfile3runs0_0E0EB1b_.exit
  %.sroa.02.1138 = phi i64 [ %.sroa.02.0, %.lr.ph139 ], [ %i.bd, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyReNCNvMNtB1b_8justfileNtB2H_8Justfile3runs0_0E0EB1b_.exit ] ; 2 uses
  %.sroa.023.1137 = phi i64 [ %.sroa.023.0, %.lr.ph139 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyReNCNvMNtB1b_8justfileNtB2H_8Justfile3runs0_0E0EB1b_.exit ] ; 4 uses
  %i.bd = add i64 %.sroa.02.1138, -1              ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noundef !28
  %.not28 = icmp ult i8 %i.bf, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyReNCNvMNtB1b_8justfileNtB2H_8Justfile3runs0_0E0EB1b_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1137, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyReNCNvMNtB1b_8justfileNtB2H_8Justfile3runs0_0E0EB1b_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1138, %bb.r ], [ 1, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyReNCNvMNtB1b_8justfileNtB2H_8Justfile3runs0_0E0EB1b_.exit ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bh, align 1
  br i1 %i.k, label %bb.ar, label %bb.as

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bd
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !28 ; 3 uses
  %i.bk = lshr i64 %i.bj, 1                       ; 8 uses
  %i.bl = lshr i64 %.sroa.023.1137, 1             ; 6 uses
  %i.bm = add nuw i64 %i.bk, %i.bl                ; 4 uses
  %i.bn = sub i64 %.sroa.09.0, %i.bm
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bn ; 6 uses
  %i.bp = icmp samesign ugt i64 %i.bm, %3
  %i.bq = trunc i64 %.sroa.023.1137 to i1
  %i.br = or i64 %i.bj, %.sroa.023.1137
  %i.bs = trunc i64 %i.br to i1
  %or.cond3.i = or i1 %i.bp, %i.bs
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bt = trunc i64 %i.bj to i1
  br i1 %i.bt, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bu = shl nuw nsw i64 %i.bm, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyReNCNvMNtB1b_8justfileNtB2H_8Justfile3runs0_0E0EB1b_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bq, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.bv = or i64 %i.bk, 1
  %i.bw = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyReNCNvMNtB1a_8justfileNtB2G_8Justfile3runs0_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.bo, i64 noundef range(i64 0, 1152921504606846976) %i.bk, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #73, !inline_history !23267
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bk
  %i.cb = or i64 %i.bl, 1
  %i.cc = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cb, i1 true)
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  %i.ce = shl nuw nsw i32 %i.cd, 1
  %i.cf = xor i32 %i.ce, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyReNCNvMNtB1a_8justfileNtB2G_8Justfile3runs0_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.ca, i64 noundef range(i64 0, 1152921504606846976) %i.bl, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #73, !inline_history !23267
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23325)
  %i.cg = icmp eq i64 %i.bk, 0
  %i.ch = icmp eq i64 %i.bl, 0
  %or.cond.i = or i1 %i.ch, %i.cg
  br i1 %or.cond.i, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyReNCNvMNtB12_8justfileNtB2x_8Justfile3runs0_0E0EB12_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 range(i64 0, -9223372036854775808) %i.bk) ; 2 uses
  %i.ci = icmp samesign ult i64 %3, %..i.i
  br i1 %i.ci, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeRNtNtCskXtk6F4WjxZ_4just7binding7BindingNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyReNCNvMNtB12_8justfileNtB2x_8Justfile3runs0_0E0EB12_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bk ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bk, %i.bl  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cj, ptr %i.bo
  %i.ck = shl nuw nsw i64 %..i.i, 3               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.ck, i1 false), !alias.scope !23326
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 %i.ck ; 4 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.eq, %.noexc.i ], [ %i.cj, %.critedge.i ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.er, %.noexc.i ], [ %i.cl, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.en, %.noexc.i ], [ %i.m, %.critedge.i ]
  %i.cm = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -8 ; 3 uses
  %i.cn = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -8 ; 3 uses
  %.val.i.i = load ptr, ptr %i.cn, align 8, !alias.scope !23325, !noalias !23327, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  %.val12.i.i = load ptr, ptr %i.cm, align 8, !alias.scope !23324, !noalias !23327 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23328), !noalias !23326
  %i.co = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 40
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !23328, !noalias !23326, !nonnull !28, !noundef !28 ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 48
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !23328, !noalias !23326, !noundef !28 ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 80
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !23328, !noalias !23326, !noundef !28 ; 9 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 64
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !23328, !noalias !23326, !noundef !28 ; 3 uses
  %i.cw = add i64 %i.cv, %i.ct                    ; 7 uses
  %i.cx = icmp ugt i64 %i.ct, %i.cw
  %i.cy = icmp ugt i64 %i.cw, %i.cr
  %or.cond.i.i.i.i39 = or i1 %i.cx, %i.cy
  br i1 %or.cond.i.i.i.i39, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i7.i44.invoke, label %bb.aa, !prof !31

bb.aa:                                            ; preds = %.preheader.i
  %i.cz = icmp eq i64 %i.ct, %i.cr
  br i1 %i.cz, label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i42, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = icmp eq i64 %i.ct, 0
  br i1 %i.da, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ad, %bb.ab
  %i.db = icmp eq i64 %i.cw, %i.cr
  br i1 %i.db, label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i42, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i.i41

bb.ad:                                            ; preds = %bb.ab
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.ct
  %i.dd = load i8, ptr %i.dc, align 1, !alias.scope !23329, !noalias !23330, !noundef !28
  %i.de = icmp sgt i8 %i.dd, -65
  br i1 %i.de, label %bb.ac, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i7.i44.invoke, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i.i41: ; preds = %bb.ac
  %i.df = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cw
  %i.dg = load i8, ptr %i.df, align 1, !alias.scope !23329, !noalias !23330, !noundef !28
  %i.dh = icmp sgt i8 %i.dg, -65
  br i1 %i.dh, label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i42, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i7.i44.invoke, !prof !33

_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i42: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i.i41, %bb.ac, %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12.i.i) ], !noalias !23326
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23331), !noalias !23326
  %i.di = getelementptr inbounds nuw i8, ptr %.val12.i.i, i64 40
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !23331, !noalias !23326, !nonnull !28, !noundef !28 ; 6 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.val12.i.i, i64 48
  %i.dl = load i64, ptr %i.dk, align 8, !alias.scope !23331, !noalias !23326, !noundef !28 ; 6 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.val12.i.i, i64 80
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !23331, !noalias !23326, !noundef !28 ; 9 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.val12.i.i, i64 64
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !23331, !noalias !23326, !noundef !28 ; 3 uses
  %i.dq = add i64 %i.dp, %i.dn                    ; 7 uses
  %i.dr = icmp ugt i64 %i.dn, %i.dq
  %i.ds = icmp ugt i64 %i.dq, %i.dl
  %or.cond.i.i.i6.i43 = or i1 %i.dr, %i.ds
  br i1 %or.cond.i.i.i6.i43, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i7.i44.invoke, label %bb.ae, !prof !31

bb.ae:                                            ; preds = %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit.i42
  %i.dt = icmp eq i64 %i.dn, %i.dl
  br i1 %i.dt, label %.noexc.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.du = icmp eq i64 %i.dn, 0
  br i1 %i.du, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.ah, %bb.af
  %i.dv = icmp eq i64 %i.dq, %i.dl
  br i1 %i.dv, label %.noexc.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i8.i45

end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBW_11sort_by_keyjNCNvMBZ_BX_14public_moduless_0E0EB11_:bb.a

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.ae, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ae ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ea, %bb.ae ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dy, %bb.ae ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCNvMB16_B14_14public_moduless_0E0EB18_.exit
  %.sroa.021.0 = phi i8 [ %i.bf, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCNvMB16_B14_14public_moduless_0E0EB18_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCNvMB16_B14_14public_moduless_0E0EB18_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph93, label %._crit_edge

.lr.ph93:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.t

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 14 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23369)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCNvMB15_B13_14public_moduless_0E0EB17_.exit.i, %bb.h
  br i1 %4, label %bb.r, label %bb.q

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile7reverseBz_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val10.i = load ptr, ptr %i.q, align 8, !alias.scope !23369, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  %.val11.i = load ptr, ptr %i.o, align 8, !alias.scope !23369 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i53 = getelementptr inbounds nuw i8, ptr %.val10.i, i64 568
  %.sroa.5.0.copyload.i.i54 = load i8, ptr %.sroa.5.0..sroa_idx.i.i53, align 8, !noalias !23370
  %.not.i.i55 = icmp eq i8 %.sroa.5.0.copyload.i.i54, -1
  br i1 %.not.i.i55, label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i58, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.4.0..sroa_idx.i.i56 = getelementptr inbounds nuw i8, ptr %.val10.i, i64 560
  %.sroa.4.0.copyload.i.i57 = load i64, ptr %.sroa.4.0..sroa_idx.i.i56, align 8, !noalias !23370
  br label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i58

_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i58: ; preds = %bb.l, %bb.k
  %.sroa.0.0.i.i59 = phi i64 [ %.sroa.4.0.copyload.i.i57, %bb.l ], [ 0, %bb.k ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i) ], !noalias !23370
  %.sroa.5.0..sroa_idx.i2.i60 = getelementptr inbounds nuw i8, ptr %.val11.i, i64 568
  %.sroa.5.0.copyload.i3.i61 = load i8, ptr %.sroa.5.0..sroa_idx.i2.i60, align 8, !noalias !23370
  %.not.i4.i62 = icmp eq i8 %.sroa.5.0.copyload.i3.i61, -1
  br i1 %.not.i4.i62, label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit66.preheader, label %.split

.split:                                           ; preds = %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i58
  %.sroa.4.0..sroa_idx.i5.i63 = getelementptr inbounds nuw i8, ptr %.val11.i, i64 560
  %.sroa.4.0.copyload.i6.i64 = load i64, ptr %.sroa.4.0..sroa_idx.i5.i63, align 8, !noalias !23370
  %i.r = icmp ult i64 %.sroa.0.0.i.i59, %.sroa.4.0.copyload.i6.i64
  br i1 %i.r, label %.preheader, label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit66.preheader

.preheader:                                       ; preds = %.split
  %.not99 = icmp eq i64 %i.n, 2
  br i1 %.not99, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCNvMB15_B13_14public_moduless_0E0EB17_.exit.i, label %.lr.ph

_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit66.preheader: ; preds = %.split, %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i58
  %.not100 = icmp eq i64 %i.n, 2
  br i1 %.not100, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCNvMB15_B13_14public_moduless_0E0EB17_.exit.i, label %.lr.ph88

.lr.ph88:                                         ; preds = %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit66.preheader, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit52.thread
  %.val9.i = phi ptr [ %.val8.i, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit52.thread ], [ %.val10.i, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit66.preheader ] ; 2 uses
  %.sroa.01.0.i.i87 = phi i64 [ %i.w, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit52.thread ], [ 2, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit66.preheader ] ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i87
  %i.t = add nsw i64 %.sroa.01.0.i.i87, -1
  %i.u = icmp ult i64 %i.t, %i.n
  tail call void @llvm.assume(i1 %i.u)
  %.val8.i = load ptr, ptr %i.s, align 8, !alias.scope !23369, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i39 = getelementptr inbounds nuw i8, ptr %.val8.i, i64 568
  %.sroa.5.0.copyload.i.i40 = load i8, ptr %.sroa.5.0..sroa_idx.i.i39, align 8, !noalias !23370
  %.not.i.i41 = icmp eq i8 %.sroa.5.0.copyload.i.i40, -1
  br i1 %.not.i.i41, label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i44, label %bb.m

bb.m:                                             ; preds = %.lr.ph88
  %.sroa.4.0..sroa_idx.i.i42 = getelementptr inbounds nuw i8, ptr %.val8.i, i64 560
  %.sroa.4.0.copyload.i.i43 = load i64, ptr %.sroa.4.0..sroa_idx.i.i42, align 8, !noalias !23370
  br label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i44

_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i44: ; preds = %bb.m, %.lr.ph88
  %.sroa.0.0.i.i45 = phi i64 [ %.sroa.4.0.copyload.i.i43, %bb.m ], [ 0, %.lr.ph88 ]
  %.sroa.5.0..sroa_idx.i2.i46 = getelementptr inbounds nuw i8, ptr %.val9.i, i64 568
  %.sroa.5.0.copyload.i3.i47 = load i8, ptr %.sroa.5.0..sroa_idx.i2.i46, align 8, !noalias !23370
  %.not.i4.i48 = icmp eq i8 %.sroa.5.0.copyload.i3.i47, -1
  br i1 %.not.i4.i48, label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit52.thread, label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit52

_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit52: ; preds = %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i44
  %.sroa.4.0..sroa_idx.i5.i49 = getelementptr inbounds nuw i8, ptr %.val9.i, i64 560
  %.sroa.4.0.copyload.i6.i50 = load i64, ptr %.sroa.4.0..sroa_idx.i5.i49, align 8, !noalias !23370
  %i.v = icmp ult i64 %.sroa.0.0.i.i45, %.sroa.4.0.copyload.i6.i50
  br i1 %i.v, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCNvMB15_B13_14public_moduless_0E0EB17_.exit.i, label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit52.thread

_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit52.thread: ; preds = %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i44, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit52
  %i.w = add nuw i64 %.sroa.01.0.i.i87, 1         ; 2 uses
  %exitcond108.not = icmp eq i64 %i.w, %i.n
  br i1 %exitcond108.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCNvMB15_B13_14public_moduless_0E0EB17_.exit.i, label %.lr.ph88

.lr.ph:                                           ; preds = %.preheader, %bb.o
  %.val7.i = phi ptr [ %.val.i, %bb.o ], [ %.val10.i, %.preheader ] ; 2 uses
  %.sroa.01.1.i.i84 = phi i64 [ %i.ab, %bb.o ], [ 2, %.preheader ] ; 5 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i84
  %i.y = add nsw i64 %.sroa.01.1.i.i84, -1
  %i.z = icmp ult i64 %i.y, %i.n
  tail call void @llvm.assume(i1 %i.z)
  %.val.i = load ptr, ptr %i.x, align 8, !alias.scope !23369, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 568
  %.sroa.5.0.copyload.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !23370
  %.not.i.i37 = icmp eq i8 %.sroa.5.0.copyload.i.i, -1
  br i1 %.not.i.i37, label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 560
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !23370
  br label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i

_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i: ; preds = %bb.n, %.lr.ph
  %.sroa.0.0.i.i38 = phi i64 [ %.sroa.4.0.copyload.i.i, %bb.n ], [ 0, %.lr.ph ]
  %.sroa.5.0..sroa_idx.i2.i = getelementptr inbounds nuw i8, ptr %.val7.i, i64 568
  %.sroa.5.0.copyload.i3.i = load i8, ptr %.sroa.5.0..sroa_idx.i2.i, align 8, !noalias !23370
  %.not.i4.i = icmp eq i8 %.sroa.5.0.copyload.i3.i, -1
  br i1 %.not.i4.i, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCNvMB15_B13_14public_moduless_0E0EB17_.exit.i, label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit

_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit: ; preds = %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i
  %.sroa.4.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %.val7.i, i64 560
  %.sroa.4.0.copyload.i6.i = load i64, ptr %.sroa.4.0..sroa_idx.i5.i, align 8, !noalias !23370
  %i.aa = icmp ult i64 %.sroa.0.0.i.i38, %.sroa.4.0.copyload.i6.i
  br i1 %i.aa, label %bb.o, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCNvMB15_B13_14public_moduless_0E0EB17_.exit.i

bb.o:                                             ; preds = %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit
  %i.ab = add nuw i64 %.sroa.01.1.i.i84, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCNvMB15_B13_14public_moduless_0E0EB17_.exit.i, label %.lr.ph

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCNvMB15_B13_14public_moduless_0E0EB17_.exit.i: ; preds = %bb.o, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit, %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit52.thread, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit52, %.preheader, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit66.preheader
  %.sroa.3.0.i.i = phi i1 [ false, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit66.preheader ], [ false, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit52.thread ], [ true, %.preheader ], [ false, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit52 ], [ true, %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i ], [ true, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit ], [ true, %bb.o ]
  %.sroa.0.0.i.i = phi i64 [ 2, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit66.preheader ], [ %i.n, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit52.thread ], [ 2, %.preheader ], [ %.sroa.01.0.i.i87, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit52 ], [ %.sroa.01.1.i.i84, %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i ], [ %i.n, %bb.o ], [ %.sroa.01.1.i.i84, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit ] ; 9 uses
  %i.ac = icmp ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ac)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.p

bb.p:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCNvMB15_B13_14public_moduless_0E0EB17_.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.s, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile7reverseBz_.exit

bb.q:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0)
  %i.ad = shl nuw nsw i64 %..i36, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCNvMB16_B14_14public_moduless_0E0EB18_.exit

bb.r:                                             ; preds = %bb.i
  %..i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCNvMB18_B16_14public_moduless_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i35, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #73, !inline_history !23349
  %i.ae = shl nuw nsw i64 %..i35, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCNvMB16_B14_14public_moduless_0E0EB18_.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile7reverseBz_.exit: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile12split_at_mutBz_.exit11.i.i, %middle.block, %bb.j, %bb.s, %bb.p
  %.sroa.0.0.i.i7578 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.p ], [ %.sroa.0.0.i.i, %bb.s ], [ %.sroa.0.0.i.i, %middle.block ], [ %.sroa.0.0.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile12split_at_mutBz_.exit11.i.i ]
  %i.ag = shl nuw nsw i64 %.sroa.0.0.i.i7578, 1
  %i.ah = or disjoint i64 %i.ag, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCNvMB16_B14_14public_moduless_0E0EB18_.exit

bb.s:                                             ; preds = %bb.p
  %i.ai = lshr i64 %.sroa.0.0.i.i, 1              ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23371), !noalias !23372
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23373), !noalias !23372
  %.not.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile7reverseBz_.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile12split_at_mutBz_.exit11.preheader.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile12split_at_mutBz_.exit11.preheader.i.i: ; preds = %bb.s
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i ; 2 uses
  %min.iters.check = icmp ult i64 %.sroa.0.0.i.i, 8
  br i1 %min.iters.check, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile12split_at_mutBz_.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile12split_at_mutBz_.exit11.preheader.i.i
  %n.vec = and i64 %i.ai, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = xor i64 %index, -1
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 4 uses
  %i.am = getelementptr [8 x i8], ptr %i.aj, i64 %i.ak ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <2 x ptr>, ptr %i.al, align 8, !alias.scope !23374, !noalias !23372
  %wide.load137 = load <2 x ptr>, ptr %i.an, align 8, !alias.scope !23374, !noalias !23372
  %i.ao = getelementptr i8, ptr %i.am, i64 -8
  %i.ap = getelementptr i8, ptr %i.am, i64 -24
  %wide.load138 = load <2 x i64>, ptr %i.ao, align 8, !alias.scope !23375, !noalias !23372
  %wide.load139 = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !23375, !noalias !23372
  %reverse = shufflevector <2 x i64> %wide.load138, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse140 = shufflevector <2 x i64> %wide.load139, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %6 = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <2 x i64> %reverse, ptr %i.al, align 8, !alias.scope !23374, !noalias !23372
  store <2 x i64> %reverse140, ptr %6, align 8, !alias.scope !23374, !noalias !23372
  %7 = getelementptr i8, ptr %i.am, i64 -8
  %8 = getelementptr i8, ptr %i.am, i64 -24
  %reverse141 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse142 = shufflevector <2 x ptr> %wide.load137, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse141, ptr %7, align 8, !alias.scope !23375, !noalias !23372
  store <2 x ptr> %reverse142, ptr %8, align 8, !alias.scope !23375, !noalias !23372
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !23355

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile7reverseBz_.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile12split_at_mutBz_.exit11.i.i.preheader

_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile12split_at_mutBz_.exit11.i.i.preheader: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile12split_at_mutBz_.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile12split_at_mutBz_.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile12split_at_mutBz_.exit11.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile12split_at_mutBz_.exit11.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile12split_at_mutBz_.exit11.i.i.preheader, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile12split_at_mutBz_.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.aw, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile12split_at_mutBz_.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile12split_at_mutBz_.exit11.i.i.preheader ] ; 3 uses
  %i.ar = xor i64 %.sroa.0.016.i.i, -1
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.at = getelementptr [8 x i8], ptr %i.aj, i64 %i.ar ; 2 uses
  %i.au = load ptr, ptr %i.as, align 8, !alias.scope !23374, !noalias !23372, !nonnull !28, !align !35, !noundef !28
  %i.av = load i64, ptr %i.at, align 8, !alias.scope !23375, !noalias !23372
  store i64 %i.av, ptr %i.as, align 8, !alias.scope !23374, !noalias !23372
  store ptr %i.au, ptr %i.at, align 8, !alias.scope !23375, !noalias !23372
  %i.aw = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.aw, %i.ai
  br i1 %exitcond.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile7reverseBz_.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile12split_at_mutBz_.exit11.i.i, !llvm.loop !23356

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCNvMB16_B14_14public_moduless_0E0EB18_.exit: ; preds = %bb.q, %bb.r, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile7reverseBz_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ah, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile7reverseBz_.exit ], [ %i.af, %bb.r ], [ %i.ad, %bb.q ] ; 2 uses
  %i.ax = lshr i64 %.sroa.023.0, 1
  %i.ay = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.az = sub nsw i64 %factor, %i.ax
  %i.ba = add nuw nsw i64 %i.ay, %factor
  %i.bb = mul i64 %i.az, %.sroa.0.0
  %i.bc = mul i64 %i.ba, %.sroa.0.0
  %i.bd = xor i64 %i.bc, %i.bb
  %i.be = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bd, i1 false)
  %i.bf = trunc nuw nsw i64 %i.be to i8
  br label %bb.g

bb.t:                                             ; preds = %.lr.ph93, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCNvMB19_B17_14public_moduless_0E0EB1b_.exit
  %.sroa.02.192 = phi i64 [ %.sroa.02.0, %.lr.ph93 ], [ %i.bg, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCNvMB19_B17_14public_moduless_0E0EB1b_.exit ] ; 2 uses
  %.sroa.023.191 = phi i64 [ %.sroa.023.0, %.lr.ph93 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCNvMB19_B17_14public_moduless_0E0EB1b_.exit ] ; 4 uses
  %i.bg = add i64 %.sroa.02.192, -1               ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noundef !28
  %.not28 = icmp ult i8 %i.bi, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.u

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCNvMB19_B17_14public_moduless_0E0EB1b_.exit, %bb.t, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.191, %bb.t ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCNvMB19_B17_14public_moduless_0E0EB1b_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.192, %bb.t ], [ 1, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCNvMB19_B17_14public_moduless_0E0EB1b_.exit ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bk, align 1
  br i1 %i.k, label %bb.ae, label %bb.af

bb.u:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bg
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !28 ; 3 uses
  %i.bn = lshr i64 %i.bm, 1                       ; 8 uses
  %i.bo = lshr i64 %.sroa.023.191, 1              ; 6 uses
  %i.bp = add nuw i64 %i.bn, %i.bo                ; 4 uses
  %i.bq = sub i64 %.sroa.09.0, %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bq ; 6 uses
  %i.bs = icmp samesign ugt i64 %i.bp, %3
  %i.bt = trunc i64 %.sroa.023.191 to i1
  %i.bu = or i64 %i.bm, %.sroa.023.191
  %i.bv = trunc i64 %i.bu to i1
  %or.cond3.i = or i1 %i.bs, %i.bv
  br i1 %or.cond3.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bw = trunc i64 %i.bm to i1
  br i1 %i.bw, label %bb.x, label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.bx = shl nuw nsw i64 %i.bp, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCNvMB19_B17_14public_moduless_0E0EB1b_.exit

bb.x:                                             ; preds = %bb.y, %bb.v
  br i1 %i.bt, label %bb.aa, label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.by = or i64 %i.bn, 1
  %i.bz = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.by, i1 true)
  %i.ca = trunc nuw nsw i64 %i.bz to i32
  %i.cb = shl nuw nsw i32 %i.ca, 1
  %i.cc = xor i32 %i.cb, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCNvMB18_B16_14public_moduless_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.br, i64 noundef range(i64 0, 1152921504606846976) %i.bn, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #73, !inline_history !23357
  br label %bb.x

bb.z:                                             ; preds = %bb.x
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bn
  %i.ce = or i64 %i.bo, 1
  %i.cf = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 1
  %i.ci = xor i32 %i.ch, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCNvMB18_B16_14public_moduless_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.cd, i64 noundef range(i64 0, 1152921504606846976) %i.bo, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #73, !inline_history !23357
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23377)
  %i.cj = icmp eq i64 %i.bn, 0
  %i.ck = icmp eq i64 %i.bo, 0
  %or.cond.i = or i1 %i.ck, %i.cj
  br i1 %or.cond.i, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyjNCNvMB10_BY_14public_moduless_0E0EB12_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 range(i64 0, -9223372036854775808) %i.bn) ; 2 uses
  %i.cl = icmp samesign ult i64 %3, %..i.i
  br i1 %i.cl, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyjNCNvMB10_BY_14public_moduless_0E0EB12_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ab
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bn ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bn, %i.bo  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cm, ptr %i.br
  %i.cn = shl nuw nsw i64 %..i.i, 3               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cn, i1 false), !alias.scope !23378
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 %i.cn ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.thread.i.i
  %i.cp = phi ptr [ %i.db, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.thread.i.i ], [ %i.co, %.critedge.i ]
  %i.cq = phi ptr [ %i.cz, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.thread.i.i ], [ %i.cm, %.critedge.i ]
  %.sroa.0.0.i.i34 = phi ptr [ %i.ct, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.thread.i.i ], [ %i.m, %.critedge.i ]
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -8 ; 3 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cp, i64 -8 ; 3 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -8 ; 2 uses
  %.val.i.i = load ptr, ptr %i.cs, align 8, !alias.scope !23377, !noalias !23379, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %.val12.i.i = load ptr, ptr %i.cr, align 8, !alias.scope !23376, !noalias !23379 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 568
  %.sroa.5.0.copyload.i.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !23380
  %.not.i.i.i.i = icmp eq i8 %.sroa.5.0.copyload.i.i.i.i, -1
  %i.cu = ptrtoint ptr %.val.i.i to i64
  br i1 %.not.i.i.i.i, label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %.preheader.i
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 560
  %.sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !23380
  br label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i.i.i

_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i.i.i: ; preds = %bb.ac, %.preheader.i
  %.sroa.0.0.i.i.i.i = phi i64 [ %.sroa.4.0.copyload.i.i.i.i, %bb.ac ], [ 0, %.preheader.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12.i.i) ]
  %.sroa.5.0..sroa_idx.i2.i.i.i = getelementptr inbounds nuw i8, ptr %.val12.i.i, i64 568
  %.sroa.5.0.copyload.i3.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i2.i.i.i, align 8, !noalias !23380
  %.not.i4.i.i.i = icmp eq i8 %.sroa.5.0.copyload.i3.i.i.i, -1
  br i1 %.not.i4.i.i.i, label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.thread.i.i, label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.i.i

_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.i.i: ; preds = %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i.i.i
  %.sroa.4.0..sroa_idx.i5.i.i.i = getelementptr inbounds nuw i8, ptr %.val12.i.i, i64 560
  %.sroa.4.0.copyload.i6.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i5.i.i.i, align 8, !noalias !23380
  %i.cv = icmp ult i64 %.sroa.0.0.i.i.i.i, %.sroa.4.0.copyload.i6.i.i.i
  %cond.fr.i.i = freeze i1 %i.cv                  ; 2 uses
  %spec.select.i.i = select i1 %cond.fr.i.i, ptr %i.cr, ptr %i.cs
  %.pre.i.i = load i64, ptr %spec.select.i.i, align 8, !alias.scope !23378, !noalias !23379
  br label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.thread.i.i

_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.thread.i.i: ; preds = %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.i.i, %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i.i.i
  %i.cw = phi i64 [ %i.cu, %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i.i.i ], [ %.pre.i.i, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.i.i ]
  %.sroa.0.0.i7.i3.i.i = phi i1 [ false, %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i.i.i ], [ %cond.fr.i.i, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.i.i ] ; 2 uses
  store i64 %i.cw, ptr %i.ct, align 8, !alias.scope !23376, !noalias !23379
  %i.cx = xor i1 %.sroa.0.0.i7.i3.i.i, true
  %i.cy = zext i1 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cy ; 3 uses
  %i.da = zext i1 %.sroa.0.0.i7.i3.i.i to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.da ; 3 uses
  %i.dc = icmp eq ptr %i.cz, %i.br
  %i.dd = icmp eq ptr %i.db, %2
  %or.cond.i.i = select i1 %i.dc, i1 true, i1 %i.dd
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_11sort_by_keyjNCNvMB1d_B1b_14public_moduless_0E0EB1f_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.thread.i35.i
  %i.de = phi ptr [ %i.dp, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.thread.i35.i ], [ %i.br, %.critedge.i ] ; 2 uses
  %.sroa.0.05.i.i = phi ptr [ %i.do, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.thread.i35.i ], [ %i.cm, %.critedge.i ] ; 3 uses
  %i.df = phi ptr [ %i.dn, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.thread.i35.i ], [ %2, %.critedge.i ] ; 3 uses
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.05.i.i, align 8, !alias.scope !23376, !noalias !23381, !nonnull !28, !align !35, !noundef !28 ; 2 uses
  %.val.i18.i = load ptr, ptr %i.df, align 8, !alias.scope !23377, !noalias !23381 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i.i19.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 568
  %.sroa.5.0.copyload.i.i.i20.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i.i19.i, align 8, !noalias !23382
  %.not.i.i.i21.i = icmp eq i8 %.sroa.5.0.copyload.i.i.i20.i, -1
  %i.dg = ptrtoint ptr %.val.i18.i to i64
  br i1 %.not.i.i.i21.i, label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i.i24.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i
  %.sroa.4.0..sroa_idx.i.i.i22.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 560
  %.sroa.4.0.copyload.i.i.i23.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i22.i, align 8, !noalias !23382
  br label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i.i24.i

_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i.i24.i: ; preds = %bb.ad, %.lr.ph.i.i
  %.sroa.0.0.i.i.i25.i = phi i64 [ %.sroa.4.0.copyload.i.i.i23.i, %bb.ad ], [ 0, %.lr.ph.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i18.i) ]
  %.sroa.5.0..sroa_idx.i2.i.i26.i = getelementptr inbounds nuw i8, ptr %.val.i18.i, i64 568
  %.sroa.5.0.copyload.i3.i.i27.i = load i8, ptr %.sroa.5.0..sroa_idx.i2.i.i26.i, align 8, !noalias !23382
  %.not.i4.i.i28.i = icmp eq i8 %.sroa.5.0.copyload.i3.i.i27.i, -1
  br i1 %.not.i4.i.i28.i, label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.thread.i35.i, label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.i29.i

end_hunk_2
