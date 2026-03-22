begin_hunk_0
  %20 = sext i32 %3 to i64                        ; [#uses=1 type=i64]
  %21 = sext i32 %13 to i64                       ; [#uses=2 type=i64]
  %22 = sext i32 %19 to i64                       ; [#uses=2 type=i64]
  %smax82 = tail call i32 @llvm.smax.i32(i32 %5, i32 1) ; [#uses=1 type=i32]
  %wide.trip.count83 = zext nneg i32 %smax82 to i64 ; [#uses=9 type=i64]
  %invariant.gep93 = getelementptr [2 x i8], ptr %6, i64 %21 ; [#uses=7 type=ptr]
  %invariant.gep95 = getelementptr [2 x i8], ptr %6, i64 %22 ; [#uses=7 type=ptr]
  %min.iters.check217 = icmp sgt i32 %5, 55       ; [#uses=1 type=i1]
  %ident.check165.not = icmp eq i32 %3, 1         ; [#uses=1 type=i1]
  %or.cond = and i1 %min.iters.check217, %ident.check165.not ; [#uses=1 type=i1]
  br i1 %or.cond, label %vector.memcheck166, label %.split.us.preheader233

vector.memcheck166:                               ; preds = %.split.us.preheader
  %23 = shl nuw nsw i64 %wide.trip.count83, 1     ; [#uses=1 type=i64]
  %scevgep = getelementptr i8, ptr %6, i64 %23    ; [#uses=5 type=ptr]
  %24 = add nsw i64 %21, %wide.trip.count83       ; [#uses=1 type=i64]
  %25 = shl nsw i64 %24, 1                        ; [#uses=1 type=i64]
  %scevgep167 = getelementptr i8, ptr %6, i64 %25 ; [#uses=5 type=ptr]
  %26 = add nsw i64 %22, %wide.trip.count83       ; [#uses=1 type=i64]
  %27 = shl nsw i64 %26, 1                        ; [#uses=1 type=i64]
  %scevgep168 = getelementptr i8, ptr %6, i64 %27 ; [#uses=5 type=ptr]
  %scevgep169 = getelementptr i8, ptr %0, i64 %wide.trip.count83 ; [#uses=3 type=ptr]
  %scevgep170 = getelementptr i8, ptr %1, i64 %wide.trip.count83 ; [#uses=3 type=ptr]
  %scevgep171 = getelementptr i8, ptr %2, i64 %wide.trip.count83 ; [#uses=3 type=ptr]
  %bound0 = icmp ult ptr %6, %scevgep167          ; [#uses=1 type=i1]
  %bound1 = icmp ult ptr %invariant.gep93, %scevgep ; [#uses=1 type=i1]
  %found.conflict = and i1 %bound0, %bound1       ; [#uses=1 type=i1]
  %bound0172 = icmp ult ptr %6, %scevgep168       ; [#uses=1 type=i1]
  %bound1173 = icmp ult ptr %invariant.gep95, %scevgep ; [#uses=1 type=i1]
  %found.conflict174 = and i1 %bound0172, %bound1173 ; [#uses=1 type=i1]
  %conflict.rdx175 = or i1 %found.conflict, %found.conflict174 ; [#uses=1 type=i1]
  %bound0176 = icmp ult ptr %6, %scevgep169       ; [#uses=1 type=i1]
  %bound1177 = icmp ult ptr %0, %scevgep          ; [#uses=1 type=i1]
  %found.conflict178 = and i1 %bound0176, %bound1177 ; [#uses=1 type=i1]
  %conflict.rdx179 = or i1 %conflict.rdx175, %found.conflict178 ; [#uses=1 type=i1]
  %bound0180 = icmp ult ptr %6, %scevgep170       ; [#uses=1 type=i1]
  %bound1181 = icmp ult ptr %1, %scevgep          ; [#uses=1 type=i1]
  %found.conflict182 = and i1 %bound0180, %bound1181 ; [#uses=1 type=i1]
  %conflict.rdx183 = or i1 %conflict.rdx179, %found.conflict182 ; [#uses=1 type=i1]
  %bound0184 = icmp ult ptr %6, %scevgep171       ; [#uses=1 type=i1]
  %bound1185 = icmp ult ptr %2, %scevgep          ; [#uses=1 type=i1]
  %found.conflict186 = and i1 %bound0184, %bound1185 ; [#uses=1 type=i1]
  %conflict.rdx187 = or i1 %conflict.rdx183, %found.conflict186 ; [#uses=1 type=i1]
  %bound0188 = icmp ult ptr %invariant.gep93, %scevgep168 ; [#uses=1 type=i1]
  %bound1189 = icmp ult ptr %invariant.gep95, %scevgep167 ; [#uses=1 type=i1]
  %found.conflict190 = and i1 %bound0188, %bound1189 ; [#uses=1 type=i1]
  %conflict.rdx191 = or i1 %conflict.rdx187, %found.conflict190 ; [#uses=1 type=i1]
  %bound0192 = icmp ult ptr %invariant.gep93, %scevgep169 ; [#uses=1 type=i1]
  %bound1193 = icmp ult ptr %0, %scevgep167       ; [#uses=1 type=i1]
  %found.conflict194 = and i1 %bound0192, %bound1193 ; [#uses=1 type=i1]
  %conflict.rdx195 = or i1 %conflict.rdx191, %found.conflict194 ; [#uses=1 type=i1]
  %bound0196 = icmp ult ptr %invariant.gep93, %scevgep170 ; [#uses=1 type=i1]
  %bound1197 = icmp ult ptr %1, %scevgep167       ; [#uses=1 type=i1]
  %found.conflict198 = and i1 %bound0196, %bound1197 ; [#uses=1 type=i1]
  %conflict.rdx199 = or i1 %conflict.rdx195, %found.conflict198 ; [#uses=1 type=i1]
  %bound0200 = icmp ult ptr %invariant.gep93, %scevgep171 ; [#uses=1 type=i1]
  %bound1201 = icmp ult ptr %2, %scevgep167       ; [#uses=1 type=i1]
  %found.conflict202 = and i1 %bound0200, %bound1201 ; [#uses=1 type=i1]
  %conflict.rdx203 = or i1 %conflict.rdx199, %found.conflict202 ; [#uses=1 type=i1]
  %bound0204 = icmp ult ptr %invariant.gep95, %scevgep169 ; [#uses=1 type=i1]
  %bound1205 = icmp ult ptr %0, %scevgep168       ; [#uses=1 type=i1]
  %found.conflict206 = and i1 %bound0204, %bound1205 ; [#uses=1 type=i1]
  %conflict.rdx207 = or i1 %conflict.rdx203, %found.conflict206 ; [#uses=1 type=i1]
  %bound0208 = icmp ult ptr %invariant.gep95, %scevgep170 ; [#uses=1 type=i1]
  %bound1209 = icmp ult ptr %1, %scevgep168       ; [#uses=1 type=i1]
  %found.conflict210 = and i1 %bound0208, %bound1209 ; [#uses=1 type=i1]
  %conflict.rdx211 = or i1 %conflict.rdx207, %found.conflict210 ; [#uses=1 type=i1]
  %bound0212 = icmp ult ptr %invariant.gep95, %scevgep171 ; [#uses=1 type=i1]
  %bound1213 = icmp ult ptr %2, %scevgep168       ; [#uses=1 type=i1]
  %found.conflict214 = and i1 %bound0212, %bound1213 ; [#uses=1 type=i1]
  %conflict.rdx215 = or i1 %conflict.rdx211, %found.conflict214 ; [#uses=1 type=i1]
  br i1 %conflict.rdx215, label %.split.us.preheader233, label %vector.ph218

vector.ph218:                                     ; preds = %vector.memcheck166
  %n.vec220 = and i64 %wide.trip.count83, 2147483640 ; [#uses=3 type=i64]
  br label %vector.body221

vector.body221:                                   ; preds = %vector.body221, %vector.ph218
  %index222 = phi i64 [ 0, %vector.ph218 ], [ %index.next226, %vector.body221 ] ; [#uses=7 type=i64]
  %28 = getelementptr inbounds i8, ptr %0, i64 %index222 ; [#uses=1 type=ptr]
  %wide.load223 = load <8 x i8>, ptr %28, align 1, !tbaa !25, !alias.scope !45 ; [#uses=1 type=<8 x i8>]
  %29 = zext <8 x i8> %wide.load223 to <8 x i16>  ; [#uses=1 type=<8 x i16>]
  %30 = shl nuw nsw <8 x i16> %29, splat (i16 2)  ; [#uses=1 type=<8 x i16>]
  %31 = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index222 ; [#uses=1 type=ptr]
  store <8 x i16> %30, ptr %31, align 2, !tbaa !12, !alias.scope !48, !noalias !50
  %32 = getelementptr inbounds i8, ptr %1, i64 %index222 ; [#uses=1 type=ptr]
  %wide.load224 = load <8 x i8>, ptr %32, align 1, !tbaa !25, !alias.scope !55 ; [#uses=1 type=<8 x i8>]
  %33 = zext <8 x i8> %wide.load224 to <8 x i16>  ; [#uses=1 type=<8 x i16>]
  %34 = shl nuw nsw <8 x i16> %33, splat (i16 2)  ; [#uses=1 type=<8 x i16>]
  %35 = getelementptr [2 x i8], ptr %invariant.gep93, i64 %index222 ; [#uses=1 type=ptr]
  store <8 x i16> %34, ptr %35, align 2, !tbaa !12, !alias.scope !56, !noalias !57
  %36 = getelementptr inbounds i8, ptr %2, i64 %index222 ; [#uses=1 type=ptr]
  %wide.load225 = load <8 x i8>, ptr %36, align 1, !tbaa !25, !alias.scope !58 ; [#uses=1 type=<8 x i8>]
  %37 = zext <8 x i8> %wide.load225 to <8 x i16>  ; [#uses=1 type=<8 x i16>]
  %38 = shl nuw nsw <8 x i16> %37, splat (i16 2)  ; [#uses=1 type=<8 x i16>]
  %39 = getelementptr [2 x i8], ptr %invariant.gep95, i64 %index222 ; [#uses=1 type=ptr]
  store <8 x i16> %38, ptr %39, align 2, !tbaa !12, !alias.scope !59, !noalias !60
  %index.next226 = add nuw i64 %index222, 8       ; [#uses=2 type=i64]
  %40 = icmp eq i64 %index.next226, %n.vec220     ; [#uses=1 type=i1]
  br i1 %40, label %middle.block227, label %vector.body221, !llvm.loop !61

middle.block227:                                  ; preds = %vector.body221
  %cmp.n228 = icmp eq i64 %n.vec220, %wide.trip.count83 ; [#uses=1 type=i1]
  br i1 %cmp.n228, label %.split67.us, label %.split.us.preheader233

.split.us.preheader233:                           ; preds = %vector.memcheck166, %.split.us.preheader, %middle.block227
  %indvars.iv79.ph = phi i64 [ 0, %vector.memcheck166 ], [ 0, %.split.us.preheader ], [ %n.vec220, %middle.block227 ] ; [#uses=1 type=i64]
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader233, %.split.us
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %.split.us ], [ %indvars.iv79.ph, %.split.us.preheader233 ] ; [#uses=5 type=i64]
  %41 = mul nsw i64 %indvars.iv79, %20            ; [#uses=3 type=i64]
  %42 = getelementptr inbounds i8, ptr %0, i64 %41 ; [#uses=1 type=ptr]
  %43 = load i8, ptr %42, align 1, !tbaa !25      ; [#uses=1 type=i8]
  %44 = zext i8 %43 to i16                        ; [#uses=1 type=i16]
  %45 = shl nuw nsw i16 %44, 2                    ; [#uses=1 type=i16]
  %46 = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv79 ; [#uses=1 type=ptr]
  store i16 %45, ptr %46, align 2, !tbaa !12
  %47 = getelementptr inbounds i8, ptr %1, i64 %41 ; [#uses=1 type=ptr]
  %48 = load i8, ptr %47, align 1, !tbaa !25      ; [#uses=1 type=i8]
  %49 = zext i8 %48 to i16                        ; [#uses=1 type=i16]
  %50 = shl nuw nsw i16 %49, 2                    ; [#uses=1 type=i16]
  %gep94 = getelementptr [2 x i8], ptr %invariant.gep93, i64 %indvars.iv79 ; [#uses=1 type=ptr]
  store i16 %50, ptr %gep94, align 2, !tbaa !12
  %51 = getelementptr inbounds i8, ptr %2, i64 %41 ; [#uses=1 type=ptr]
  %52 = load i8, ptr %51, align 1, !tbaa !25      ; [#uses=1 type=i8]
  %53 = zext i8 %52 to i16                        ; [#uses=1 type=i16]
  %54 = shl nuw nsw i16 %53, 2                    ; [#uses=1 type=i16]
  %gep96 = getelementptr [2 x i8], ptr %invariant.gep95, i64 %indvars.iv79 ; [#uses=1 type=ptr]
  store i16 %54, ptr %gep96, align 2, !tbaa !12
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; [#uses=2 type=i64]
  %exitcond84.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count83 ; [#uses=1 type=i1]
  br i1 %exitcond84.not, label %.split67.us, label %.split.us, !llvm.loop !62

.split:                                           ; preds = %7
  %55 = icmp sgt i32 %4, 8                        ; [#uses=1 type=i1]
end_hunk_0
begin_hunk_1
  %59 = sext i32 %57 to i64                       ; [#uses=2 type=i64]
  %60 = sext i32 %13 to i64                       ; [#uses=3 type=i64]
  %61 = sext i32 %19 to i64                       ; [#uses=3 type=i64]
  %smax76 = tail call i32 @llvm.smax.i32(i32 %5, i32 1) ; [#uses=1 type=i32]
  %wide.trip.count77 = zext nneg i32 %smax76 to i64 ; [#uses=6 type=i64]
  %invariant.gep89 = getelementptr [2 x i8], ptr %6, i64 %60 ; [#uses=4 type=ptr]
  %invariant.gep91 = getelementptr [2 x i8], ptr %6, i64 %61 ; [#uses=4 type=ptr]
  %min.iters.check149 = icmp sgt i32 %5, 39       ; [#uses=1 type=i1]
  %ident.check123.not = icmp eq i32 %57, 1        ; [#uses=1 type=i1]
  %or.cond232 = and i1 %min.iters.check149, %ident.check123.not ; [#uses=2 type=i1]
  br i1 %58, label %.split.split.us.preheader, label %.split.split.preheader

.split.split.preheader:                           ; preds = %.split
  br i1 %or.cond232, label %vector.memcheck, label %.split.split.preheader236

vector.memcheck:                                  ; preds = %.split.split.preheader
  %62 = shl nsw i64 %60, 1                        ; [#uses=4 type=i64]
  %diff.check = icmp ult i64 %62, 16              ; [#uses=1 type=i1]
  %63 = shl nsw i64 %61, 1                        ; [#uses=4 type=i64]
  %diff.check99 = icmp ult i64 %63, 16            ; [#uses=1 type=i1]
  %conflict.rdx = or i1 %diff.check, %diff.check99 ; [#uses=1 type=i1]
  %64 = sub i64 %11, %10                          ; [#uses=1 type=i64]
  %diff.check100 = icmp ult i64 %64, 16           ; [#uses=1 type=i1]
  %conflict.rdx101 = or i1 %conflict.rdx, %diff.check100 ; [#uses=1 type=i1]
  %65 = sub i64 %9, %11                           ; [#uses=1 type=i64]
  %diff.check102 = icmp ult i64 %65, 16           ; [#uses=1 type=i1]
  %conflict.rdx103 = or i1 %conflict.rdx101, %diff.check102 ; [#uses=1 type=i1]
  %66 = sub i64 %8, %11                           ; [#uses=1 type=i64]
  %diff.check104 = icmp ult i64 %66, 16           ; [#uses=1 type=i1]
  %conflict.rdx105 = or i1 %conflict.rdx103, %diff.check104 ; [#uses=1 type=i1]
  %67 = sub nsw i64 %63, %62                      ; [#uses=1 type=i64]
  %diff.check106 = icmp ult i64 %67, 16           ; [#uses=1 type=i1]
  %conflict.rdx107 = or i1 %conflict.rdx105, %diff.check106 ; [#uses=1 type=i1]
  %68 = add i64 %62, %11                          ; [#uses=2 type=i64]
  %69 = sub i64 %68, %10                          ; [#uses=1 type=i64]
  %diff.check108 = icmp ult i64 %69, 16           ; [#uses=1 type=i1]
  %conflict.rdx109 = or i1 %conflict.rdx107, %diff.check108 ; [#uses=1 type=i1]
  %70 = sub i64 %68, %9                           ; [#uses=1 type=i64]
  %diff.check110 = icmp ult i64 %70, 16           ; [#uses=1 type=i1]
  %conflict.rdx111 = or i1 %conflict.rdx109, %diff.check110 ; [#uses=1 type=i1]
  %71 = add i64 %62, %11                          ; [#uses=1 type=i64]
  %72 = sub i64 %8, %71                           ; [#uses=1 type=i64]
  %diff.check112 = icmp ult i64 %72, 16           ; [#uses=1 type=i1]
  %conflict.rdx113 = or i1 %conflict.rdx111, %diff.check112 ; [#uses=1 type=i1]
  %73 = add i64 %63, %11                          ; [#uses=2 type=i64]
  %74 = sub i64 %73, %10                          ; [#uses=1 type=i64]
  %diff.check114 = icmp ult i64 %74, 16           ; [#uses=1 type=i1]
  %conflict.rdx115 = or i1 %conflict.rdx113, %diff.check114 ; [#uses=1 type=i1]
  %75 = sub i64 %73, %9                           ; [#uses=1 type=i64]
  %diff.check116 = icmp ult i64 %75, 16           ; [#uses=1 type=i1]
  %conflict.rdx117 = or i1 %conflict.rdx115, %diff.check116 ; [#uses=1 type=i1]
  %76 = add i64 %63, %11                          ; [#uses=1 type=i64]
  %77 = sub i64 %76, %8                           ; [#uses=1 type=i64]
  %diff.check118 = icmp ult i64 %77, 16           ; [#uses=1 type=i1]
  %conflict.rdx119 = or i1 %conflict.rdx117, %diff.check118 ; [#uses=1 type=i1]
  br i1 %conflict.rdx119, label %.split.split.preheader236, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count77, 2147483640 ; [#uses=3 type=i64]
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %17, i64 0 ; [#uses=1 type=<8 x i32>]
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; [#uses=3 type=<8 x i32>]
  br label %vector.body
end_hunk_1
begin_hunk_2
  %82 = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index ; [#uses=1 type=ptr]
  store <8 x i16> %81, ptr %82, align 2, !tbaa !12
  %83 = getelementptr inbounds [2 x i8], ptr %1, i64 %index ; [#uses=1 type=ptr]
  %wide.load120 = load <8 x i16>, ptr %83, align 2, !tbaa !12 ; [#uses=1 type=<8 x i16>]
  %84 = zext <8 x i16> %wide.load120 to <8 x i32> ; [#uses=1 type=<8 x i32>]
  %85 = shl <8 x i32> %84, %broadcast.splat       ; [#uses=1 type=<8 x i32>]
  %86 = trunc <8 x i32> %85 to <8 x i16>          ; [#uses=1 type=<8 x i16>]
  %87 = getelementptr [2 x i8], ptr %invariant.gep89, i64 %index ; [#uses=1 type=ptr]
  store <8 x i16> %86, ptr %87, align 2, !tbaa !12
  %88 = getelementptr inbounds [2 x i8], ptr %2, i64 %index ; [#uses=1 type=ptr]
  %wide.load121 = load <8 x i16>, ptr %88, align 2, !tbaa !12 ; [#uses=1 type=<8 x i16>]
  %89 = zext <8 x i16> %wide.load121 to <8 x i32> ; [#uses=1 type=<8 x i32>]
  %90 = shl <8 x i32> %89, %broadcast.splat       ; [#uses=1 type=<8 x i32>]
  %91 = trunc <8 x i32> %90 to <8 x i16>          ; [#uses=1 type=<8 x i16>]
  %92 = getelementptr [2 x i8], ptr %invariant.gep91, i64 %index ; [#uses=1 type=ptr]
  store <8 x i16> %91, ptr %92, align 2, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; [#uses=2 type=i64]
  %93 = icmp eq i64 %index.next, %n.vec           ; [#uses=1 type=i1]
  br i1 %93, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count77 ; [#uses=1 type=i1]
  br i1 %cmp.n, label %.split67.us, label %.split.split.preheader236

.split.split.preheader236:                        ; preds = %vector.memcheck, %.split.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.split.split.preheader ], [ %n.vec, %middle.block ] ; [#uses=1 type=i64]
  br label %.split.split

.split.split.us.preheader:                        ; preds = %.split
  br i1 %or.cond232, label %vector.memcheck124, label %.split.split.us.preheader234

vector.memcheck124:                               ; preds = %.split.split.us.preheader
  %94 = shl nsw i64 %60, 1                        ; [#uses=4 type=i64]
  %diff.check125 = icmp ult i64 %94, 16           ; [#uses=1 type=i1]
  %95 = shl nsw i64 %61, 1                        ; [#uses=4 type=i64]
  %diff.check126 = icmp ult i64 %95, 16           ; [#uses=1 type=i1]
  %conflict.rdx127 = or i1 %diff.check125, %diff.check126 ; [#uses=1 type=i1]
  %96 = sub i64 %11, %10                          ; [#uses=1 type=i64]
  %diff.check128 = icmp ult i64 %96, 16           ; [#uses=1 type=i1]
  %conflict.rdx129 = or i1 %conflict.rdx127, %diff.check128 ; [#uses=1 type=i1]
  %97 = sub i64 %9, %11                           ; [#uses=1 type=i64]
  %diff.check130 = icmp ult i64 %97, 16           ; [#uses=1 type=i1]
  %conflict.rdx131 = or i1 %conflict.rdx129, %diff.check130 ; [#uses=1 type=i1]
  %98 = sub i64 %8, %11                           ; [#uses=1 type=i64]
  %diff.check132 = icmp ult i64 %98, 16           ; [#uses=1 type=i1]
  %conflict.rdx133 = or i1 %conflict.rdx131, %diff.check132 ; [#uses=1 type=i1]
  %99 = sub nsw i64 %95, %94                      ; [#uses=1 type=i64]
  %diff.check134 = icmp ult i64 %99, 16           ; [#uses=1 type=i1]
  %conflict.rdx135 = or i1 %conflict.rdx133, %diff.check134 ; [#uses=1 type=i1]
  %100 = add i64 %94, %11                         ; [#uses=2 type=i64]
  %101 = sub i64 %100, %10                        ; [#uses=1 type=i64]
  %diff.check136 = icmp ult i64 %101, 16          ; [#uses=1 type=i1]
  %conflict.rdx137 = or i1 %conflict.rdx135, %diff.check136 ; [#uses=1 type=i1]
  %102 = sub i64 %100, %9                         ; [#uses=1 type=i64]
  %diff.check138 = icmp ult i64 %102, 16          ; [#uses=1 type=i1]
  %conflict.rdx139 = or i1 %conflict.rdx137, %diff.check138 ; [#uses=1 type=i1]
  %103 = add i64 %94, %11                         ; [#uses=1 type=i64]
  %104 = sub i64 %8, %103                         ; [#uses=1 type=i64]
  %diff.check140 = icmp ult i64 %104, 16          ; [#uses=1 type=i1]
  %conflict.rdx141 = or i1 %conflict.rdx139, %diff.check140 ; [#uses=1 type=i1]
  %105 = add i64 %95, %11                         ; [#uses=2 type=i64]
  %106 = sub i64 %105, %10                        ; [#uses=1 type=i64]
  %diff.check142 = icmp ult i64 %106, 16          ; [#uses=1 type=i1]
  %conflict.rdx143 = or i1 %conflict.rdx141, %diff.check142 ; [#uses=1 type=i1]
  %107 = sub i64 %105, %9                         ; [#uses=1 type=i64]
  %diff.check144 = icmp ult i64 %107, 16          ; [#uses=1 type=i1]
  %conflict.rdx145 = or i1 %conflict.rdx143, %diff.check144 ; [#uses=1 type=i1]
  %108 = add i64 %95, %11                         ; [#uses=1 type=i64]
  %109 = sub i64 %108, %8                         ; [#uses=1 type=i64]
  %diff.check146 = icmp ult i64 %109, 16          ; [#uses=1 type=i1]
  %conflict.rdx147 = or i1 %conflict.rdx145, %diff.check146 ; [#uses=1 type=i1]
  br i1 %conflict.rdx147, label %.split.split.us.preheader234, label %vector.ph150

vector.ph150:                                     ; preds = %vector.memcheck124
  %n.vec152 = and i64 %wide.trip.count77, 2147483640 ; [#uses=3 type=i64]
  %broadcast.splatinsert153 = insertelement <8 x i32> poison, i32 %18, i64 0 ; [#uses=1 type=<8 x i32>]
  %broadcast.splat154 = shufflevector <8 x i32> %broadcast.splatinsert153, <8 x i32> poison, <8 x i32> zeroinitializer ; [#uses=3 type=<8 x i32>]
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph150
  %index156 = phi i64 [ 0, %vector.ph150 ], [ %index.next160, %vector.body155 ] ; [#uses=7 type=i64]
  %110 = getelementptr inbounds [2 x i8], ptr %0, i64 %index156 ; [#uses=1 type=ptr]
  %wide.load157 = load <8 x i16>, ptr %110, align 2, !tbaa !12 ; [#uses=1 type=<8 x i16>]
  %111 = zext <8 x i16> %wide.load157 to <8 x i32> ; [#uses=1 type=<8 x i32>]
  %112 = lshr <8 x i32> %111, %broadcast.splat154 ; [#uses=1 type=<8 x i32>]
  %113 = trunc nuw <8 x i32> %112 to <8 x i16>    ; [#uses=1 type=<8 x i16>]
  %114 = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index156 ; [#uses=1 type=ptr]
  store <8 x i16> %113, ptr %114, align 2, !tbaa !12
  %115 = getelementptr inbounds [2 x i8], ptr %1, i64 %index156 ; [#uses=1 type=ptr]
  %wide.load158 = load <8 x i16>, ptr %115, align 2, !tbaa !12 ; [#uses=1 type=<8 x i16>]
  %116 = zext <8 x i16> %wide.load158 to <8 x i32> ; [#uses=1 type=<8 x i32>]
  %117 = lshr <8 x i32> %116, %broadcast.splat154 ; [#uses=1 type=<8 x i32>]
  %118 = trunc nuw <8 x i32> %117 to <8 x i16>    ; [#uses=1 type=<8 x i16>]
  %119 = getelementptr [2 x i8], ptr %invariant.gep89, i64 %index156 ; [#uses=1 type=ptr]
  store <8 x i16> %118, ptr %119, align 2, !tbaa !12
  %120 = getelementptr inbounds [2 x i8], ptr %2, i64 %index156 ; [#uses=1 type=ptr]
  %wide.load159 = load <8 x i16>, ptr %120, align 2, !tbaa !12 ; [#uses=1 type=<8 x i16>]
  %121 = zext <8 x i16> %wide.load159 to <8 x i32> ; [#uses=1 type=<8 x i32>]
  %122 = lshr <8 x i32> %121, %broadcast.splat154 ; [#uses=1 type=<8 x i32>]
  %123 = trunc nuw <8 x i32> %122 to <8 x i16>    ; [#uses=1 type=<8 x i16>]
  %124 = getelementptr [2 x i8], ptr %invariant.gep91, i64 %index156 ; [#uses=1 type=ptr]
  store <8 x i16> %123, ptr %124, align 2, !tbaa !12
  %index.next160 = add nuw i64 %index156, 8       ; [#uses=2 type=i64]
  %125 = icmp eq i64 %index.next160, %n.vec152    ; [#uses=1 type=i1]
  br i1 %125, label %middle.block161, label %vector.body155, !llvm.loop !64

middle.block161:                                  ; preds = %vector.body155
  %cmp.n162 = icmp eq i64 %n.vec152, %wide.trip.count77 ; [#uses=1 type=i1]
  br i1 %cmp.n162, label %.split67.us, label %.split.split.us.preheader234

.split.split.us.preheader234:                     ; preds = %vector.memcheck124, %.split.split.us.preheader, %middle.block161
  %indvars.iv73.ph = phi i64 [ 0, %vector.memcheck124 ], [ 0, %.split.split.us.preheader ], [ %n.vec152, %middle.block161 ] ; [#uses=1 type=i64]
  br label %.split.split.us

.split.split.us:                                  ; preds = %.split.split.us.preheader234, %.split.split.us
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %.split.split.us ], [ %indvars.iv73.ph, %.split.split.us.preheader234 ] ; [#uses=5 type=i64]
  %126 = mul nsw i64 %indvars.iv73, %59           ; [#uses=3 type=i64]
  %127 = getelementptr inbounds [2 x i8], ptr %0, i64 %126 ; [#uses=1 type=ptr]
  %128 = load i16, ptr %127, align 2, !tbaa !12   ; [#uses=1 type=i16]
  %129 = zext i16 %128 to i32                     ; [#uses=1 type=i32]
  %130 = lshr i32 %129, %18                       ; [#uses=1 type=i32]
  %131 = trunc nuw i32 %130 to i16                ; [#uses=1 type=i16]
  %132 = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv73 ; [#uses=1 type=ptr]
  store i16 %131, ptr %132, align 2, !tbaa !12
  %133 = getelementptr inbounds [2 x i8], ptr %1, i64 %126 ; [#uses=1 type=ptr]
  %134 = load i16, ptr %133, align 2, !tbaa !12   ; [#uses=1 type=i16]
  %135 = zext i16 %134 to i32                     ; [#uses=1 type=i32]
  %136 = lshr i32 %135, %18                       ; [#uses=1 type=i32]
  %137 = trunc nuw i32 %136 to i16                ; [#uses=1 type=i16]
  %gep90 = getelementptr [2 x i8], ptr %invariant.gep89, i64 %indvars.iv73 ; [#uses=1 type=ptr]
  store i16 %137, ptr %gep90, align 2, !tbaa !12
  %138 = getelementptr inbounds [2 x i8], ptr %2, i64 %126 ; [#uses=1 type=ptr]
  %139 = load i16, ptr %138, align 2, !tbaa !12   ; [#uses=1 type=i16]
  %140 = zext i16 %139 to i32                     ; [#uses=1 type=i32]
  %141 = lshr i32 %140, %18                       ; [#uses=1 type=i32]
  %142 = trunc nuw i32 %141 to i16                ; [#uses=1 type=i16]
  %gep92 = getelementptr [2 x i8], ptr %invariant.gep91, i64 %indvars.iv73 ; [#uses=1 type=ptr]
  store i16 %142, ptr %gep92, align 2, !tbaa !12
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; [#uses=2 type=i64]
  %exitcond78.not = icmp eq i64 %indvars.iv.next74, %wide.trip.count77 ; [#uses=1 type=i1]
  br i1 %exitcond78.not, label %.split67.us, label %.split.split.us, !llvm.loop !65

.split.split:                                     ; preds = %.split.split.preheader236, %.split.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.split.split ], [ %indvars.iv.ph, %.split.split.preheader236 ] ; [#uses=5 type=i64]
  %143 = mul nsw i64 %indvars.iv, %59             ; [#uses=3 type=i64]
  %144 = getelementptr inbounds [2 x i8], ptr %0, i64 %143 ; [#uses=1 type=ptr]
  %145 = load i16, ptr %144, align 2, !tbaa !12   ; [#uses=1 type=i16]
end_hunk_2
begin_hunk_3
  %152 = zext i16 %151 to i32                     ; [#uses=1 type=i32]
  %153 = shl i32 %152, %17                        ; [#uses=1 type=i32]
  %154 = trunc i32 %153 to i16                    ; [#uses=1 type=i16]
  %gep = getelementptr [2 x i8], ptr %invariant.gep89, i64 %indvars.iv ; [#uses=1 type=ptr]
  store i16 %154, ptr %gep, align 2, !tbaa !12
  %155 = getelementptr inbounds [2 x i8], ptr %2, i64 %143 ; [#uses=1 type=ptr]
  %156 = load i16, ptr %155, align 2, !tbaa !12   ; [#uses=1 type=i16]
  %157 = zext i16 %156 to i32                     ; [#uses=1 type=i32]
  %158 = shl i32 %157, %17                        ; [#uses=1 type=i32]
  %159 = trunc i32 %158 to i16                    ; [#uses=1 type=i16]
  %gep88 = getelementptr [2 x i8], ptr %invariant.gep91, i64 %indvars.iv ; [#uses=1 type=ptr]
  store i16 %159, ptr %gep88, align 2, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; [#uses=2 type=i64]
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count77 ; [#uses=1 type=i1]
  br i1 %exitcond.not, label %.split67.us, label %.split.split, !llvm.loop !66

.split67.us:                                      ; preds = %.split.split, %.split.split.us, %.split.us, %middle.block, %middle.block161, %middle.block227
  %160 = and i32 %5, 1                            ; [#uses=1 type=i32]
  %.not = icmp eq i32 %160, 0                     ; [#uses=1 type=i1]
  br i1 %.not, label %177, label %161
end_hunk_3
