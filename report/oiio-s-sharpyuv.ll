begin_hunk_0
  %20 = sext i32 %3 to i64                        ; [#uses=1 type=i64]
  %21 = sext i32 %13 to i64                       ; [#uses=2 type=i64]
  %22 = sext i32 %19 to i64                       ; [#uses=2 type=i64]
  %smax81 = tail call i32 @llvm.smax.i32(i32 %5, i32 1) ; [#uses=1 type=i32]
  %wide.trip.count82 = zext nneg i32 %smax81 to i64 ; [#uses=9 type=i64]
  %invariant.gep92 = getelementptr [2 x i8], ptr %6, i64 %21 ; [#uses=7 type=ptr]
  %invariant.gep94 = getelementptr [2 x i8], ptr %6, i64 %22 ; [#uses=7 type=ptr]
  %min.iters.check216 = icmp sgt i32 %5, 55       ; [#uses=1 type=i1]
  %ident.check164.not = icmp eq i32 %3, 1         ; [#uses=1 type=i1]
  %or.cond = and i1 %min.iters.check216, %ident.check164.not ; [#uses=1 type=i1]
  br i1 %or.cond, label %vector.memcheck165, label %.split.us.preheader232

vector.memcheck165:                               ; preds = %.split.us.preheader
  %23 = shl nuw nsw i64 %wide.trip.count82, 1     ; [#uses=1 type=i64]
  %scevgep = getelementptr i8, ptr %6, i64 %23    ; [#uses=5 type=ptr]
  %24 = add nsw i64 %21, %wide.trip.count82       ; [#uses=1 type=i64]
  %25 = shl nsw i64 %24, 1                        ; [#uses=1 type=i64]
  %scevgep166 = getelementptr i8, ptr %6, i64 %25 ; [#uses=5 type=ptr]
  %26 = add nsw i64 %22, %wide.trip.count82       ; [#uses=1 type=i64]
  %27 = shl nsw i64 %26, 1                        ; [#uses=1 type=i64]
  %scevgep167 = getelementptr i8, ptr %6, i64 %27 ; [#uses=5 type=ptr]
  %scevgep168 = getelementptr i8, ptr %0, i64 %wide.trip.count82 ; [#uses=3 type=ptr]
  %scevgep169 = getelementptr i8, ptr %1, i64 %wide.trip.count82 ; [#uses=3 type=ptr]
  %scevgep170 = getelementptr i8, ptr %2, i64 %wide.trip.count82 ; [#uses=3 type=ptr]
  %bound0 = icmp ult ptr %6, %scevgep166          ; [#uses=1 type=i1]
  %bound1 = icmp ult ptr %invariant.gep92, %scevgep ; [#uses=1 type=i1]
  %found.conflict = and i1 %bound0, %bound1       ; [#uses=1 type=i1]
  %bound0171 = icmp ult ptr %6, %scevgep167       ; [#uses=1 type=i1]
  %bound1172 = icmp ult ptr %invariant.gep94, %scevgep ; [#uses=1 type=i1]
  %found.conflict173 = and i1 %bound0171, %bound1172 ; [#uses=1 type=i1]
  %conflict.rdx174 = or i1 %found.conflict, %found.conflict173 ; [#uses=1 type=i1]
  %bound0175 = icmp ult ptr %6, %scevgep168       ; [#uses=1 type=i1]
  %bound1176 = icmp ult ptr %0, %scevgep          ; [#uses=1 type=i1]
  %found.conflict177 = and i1 %bound0175, %bound1176 ; [#uses=1 type=i1]
  %conflict.rdx178 = or i1 %conflict.rdx174, %found.conflict177 ; [#uses=1 type=i1]
  %bound0179 = icmp ult ptr %6, %scevgep169       ; [#uses=1 type=i1]
  %bound1180 = icmp ult ptr %1, %scevgep          ; [#uses=1 type=i1]
  %found.conflict181 = and i1 %bound0179, %bound1180 ; [#uses=1 type=i1]
  %conflict.rdx182 = or i1 %conflict.rdx178, %found.conflict181 ; [#uses=1 type=i1]
  %bound0183 = icmp ult ptr %6, %scevgep170       ; [#uses=1 type=i1]
  %bound1184 = icmp ult ptr %2, %scevgep          ; [#uses=1 type=i1]
  %found.conflict185 = and i1 %bound0183, %bound1184 ; [#uses=1 type=i1]
  %conflict.rdx186 = or i1 %conflict.rdx182, %found.conflict185 ; [#uses=1 type=i1]
  %bound0187 = icmp ult ptr %invariant.gep92, %scevgep167 ; [#uses=1 type=i1]
  %bound1188 = icmp ult ptr %invariant.gep94, %scevgep166 ; [#uses=1 type=i1]
  %found.conflict189 = and i1 %bound0187, %bound1188 ; [#uses=1 type=i1]
  %conflict.rdx190 = or i1 %conflict.rdx186, %found.conflict189 ; [#uses=1 type=i1]
  %bound0191 = icmp ult ptr %invariant.gep92, %scevgep168 ; [#uses=1 type=i1]
  %bound1192 = icmp ult ptr %0, %scevgep166       ; [#uses=1 type=i1]
  %found.conflict193 = and i1 %bound0191, %bound1192 ; [#uses=1 type=i1]
  %conflict.rdx194 = or i1 %conflict.rdx190, %found.conflict193 ; [#uses=1 type=i1]
  %bound0195 = icmp ult ptr %invariant.gep92, %scevgep169 ; [#uses=1 type=i1]
  %bound1196 = icmp ult ptr %1, %scevgep166       ; [#uses=1 type=i1]
  %found.conflict197 = and i1 %bound0195, %bound1196 ; [#uses=1 type=i1]
  %conflict.rdx198 = or i1 %conflict.rdx194, %found.conflict197 ; [#uses=1 type=i1]
  %bound0199 = icmp ult ptr %invariant.gep92, %scevgep170 ; [#uses=1 type=i1]
  %bound1200 = icmp ult ptr %2, %scevgep166       ; [#uses=1 type=i1]
  %found.conflict201 = and i1 %bound0199, %bound1200 ; [#uses=1 type=i1]
  %conflict.rdx202 = or i1 %conflict.rdx198, %found.conflict201 ; [#uses=1 type=i1]
  %bound0203 = icmp ult ptr %invariant.gep94, %scevgep168 ; [#uses=1 type=i1]
  %bound1204 = icmp ult ptr %0, %scevgep167       ; [#uses=1 type=i1]
  %found.conflict205 = and i1 %bound0203, %bound1204 ; [#uses=1 type=i1]
  %conflict.rdx206 = or i1 %conflict.rdx202, %found.conflict205 ; [#uses=1 type=i1]
  %bound0207 = icmp ult ptr %invariant.gep94, %scevgep169 ; [#uses=1 type=i1]
  %bound1208 = icmp ult ptr %1, %scevgep167       ; [#uses=1 type=i1]
  %found.conflict209 = and i1 %bound0207, %bound1208 ; [#uses=1 type=i1]
  %conflict.rdx210 = or i1 %conflict.rdx206, %found.conflict209 ; [#uses=1 type=i1]
  %bound0211 = icmp ult ptr %invariant.gep94, %scevgep170 ; [#uses=1 type=i1]
  %bound1212 = icmp ult ptr %2, %scevgep167       ; [#uses=1 type=i1]
  %found.conflict213 = and i1 %bound0211, %bound1212 ; [#uses=1 type=i1]
  %conflict.rdx214 = or i1 %conflict.rdx210, %found.conflict213 ; [#uses=1 type=i1]
  br i1 %conflict.rdx214, label %.split.us.preheader232, label %vector.ph217

vector.ph217:                                     ; preds = %vector.memcheck165
  %n.vec219 = and i64 %wide.trip.count82, 2147483640 ; [#uses=3 type=i64]
  br label %vector.body220

vector.body220:                                   ; preds = %vector.body220, %vector.ph217
  %index221 = phi i64 [ 0, %vector.ph217 ], [ %index.next225, %vector.body220 ] ; [#uses=7 type=i64]
  %28 = getelementptr inbounds i8, ptr %0, i64 %index221 ; [#uses=1 type=ptr]
  %wide.load222 = load <8 x i8>, ptr %28, align 1, !tbaa !25, !alias.scope !45 ; [#uses=1 type=<8 x i8>]
  %29 = zext <8 x i8> %wide.load222 to <8 x i16>  ; [#uses=1 type=<8 x i16>]
  %30 = shl nuw nsw <8 x i16> %29, splat (i16 2)  ; [#uses=1 type=<8 x i16>]
  %31 = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index221 ; [#uses=1 type=ptr]
  store <8 x i16> %30, ptr %31, align 2, !tbaa !12, !alias.scope !48, !noalias !50
  %32 = getelementptr inbounds i8, ptr %1, i64 %index221 ; [#uses=1 type=ptr]
  %wide.load223 = load <8 x i8>, ptr %32, align 1, !tbaa !25, !alias.scope !55 ; [#uses=1 type=<8 x i8>]
  %33 = zext <8 x i8> %wide.load223 to <8 x i16>  ; [#uses=1 type=<8 x i16>]
  %34 = shl nuw nsw <8 x i16> %33, splat (i16 2)  ; [#uses=1 type=<8 x i16>]
  %35 = getelementptr [2 x i8], ptr %invariant.gep92, i64 %index221 ; [#uses=1 type=ptr]
  store <8 x i16> %34, ptr %35, align 2, !tbaa !12, !alias.scope !56, !noalias !57
  %36 = getelementptr inbounds i8, ptr %2, i64 %index221 ; [#uses=1 type=ptr]
  %wide.load224 = load <8 x i8>, ptr %36, align 1, !tbaa !25, !alias.scope !58 ; [#uses=1 type=<8 x i8>]
  %37 = zext <8 x i8> %wide.load224 to <8 x i16>  ; [#uses=1 type=<8 x i16>]
  %38 = shl nuw nsw <8 x i16> %37, splat (i16 2)  ; [#uses=1 type=<8 x i16>]
  %39 = getelementptr [2 x i8], ptr %invariant.gep94, i64 %index221 ; [#uses=1 type=ptr]
  store <8 x i16> %38, ptr %39, align 2, !tbaa !12, !alias.scope !59, !noalias !60
  %index.next225 = add nuw i64 %index221, 8       ; [#uses=2 type=i64]
  %40 = icmp eq i64 %index.next225, %n.vec219     ; [#uses=1 type=i1]
  br i1 %40, label %middle.block226, label %vector.body220, !llvm.loop !61

middle.block226:                                  ; preds = %vector.body220
  %cmp.n227 = icmp eq i64 %n.vec219, %wide.trip.count82 ; [#uses=1 type=i1]
  br i1 %cmp.n227, label %.split67.us, label %.split.us.preheader232

.split.us.preheader232:                           ; preds = %vector.memcheck165, %.split.us.preheader, %middle.block226
  %indvars.iv78.ph = phi i64 [ 0, %vector.memcheck165 ], [ 0, %.split.us.preheader ], [ %n.vec219, %middle.block226 ] ; [#uses=1 type=i64]
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader232, %.split.us
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %.split.us ], [ %indvars.iv78.ph, %.split.us.preheader232 ] ; [#uses=5 type=i64]
  %41 = mul nsw i64 %indvars.iv78, %20            ; [#uses=3 type=i64]
  %42 = getelementptr inbounds i8, ptr %0, i64 %41 ; [#uses=1 type=ptr]
  %43 = load i8, ptr %42, align 1, !tbaa !25      ; [#uses=1 type=i8]
  %44 = zext i8 %43 to i16                        ; [#uses=1 type=i16]
  %45 = shl nuw nsw i16 %44, 2                    ; [#uses=1 type=i16]
  %46 = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv78 ; [#uses=1 type=ptr]
  store i16 %45, ptr %46, align 2, !tbaa !12
  %47 = getelementptr inbounds i8, ptr %1, i64 %41 ; [#uses=1 type=ptr]
  %48 = load i8, ptr %47, align 1, !tbaa !25      ; [#uses=1 type=i8]
  %49 = zext i8 %48 to i16                        ; [#uses=1 type=i16]
  %50 = shl nuw nsw i16 %49, 2                    ; [#uses=1 type=i16]
  %gep93 = getelementptr [2 x i8], ptr %invariant.gep92, i64 %indvars.iv78 ; [#uses=1 type=ptr]
  store i16 %50, ptr %gep93, align 2, !tbaa !12
  %51 = getelementptr inbounds i8, ptr %2, i64 %41 ; [#uses=1 type=ptr]
  %52 = load i8, ptr %51, align 1, !tbaa !25      ; [#uses=1 type=i8]
  %53 = zext i8 %52 to i16                        ; [#uses=1 type=i16]
  %54 = shl nuw nsw i16 %53, 2                    ; [#uses=1 type=i16]
  %gep95 = getelementptr [2 x i8], ptr %invariant.gep94, i64 %indvars.iv78 ; [#uses=1 type=ptr]
  store i16 %54, ptr %gep95, align 2, !tbaa !12
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; [#uses=2 type=i64]
  %exitcond83.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count82 ; [#uses=1 type=i1]
  br i1 %exitcond83.not, label %.split67.us, label %.split.us, !llvm.loop !62

.split:                                           ; preds = %7
  %55 = icmp sgt i32 %4, 8                        ; [#uses=1 type=i1]
end_hunk_0
begin_hunk_1
  %59 = sext i32 %57 to i64                       ; [#uses=2 type=i64]
  %60 = sext i32 %13 to i64                       ; [#uses=3 type=i64]
  %61 = sext i32 %19 to i64                       ; [#uses=3 type=i64]
  %smax75 = tail call i32 @llvm.smax.i32(i32 %5, i32 1) ; [#uses=1 type=i32]
  %wide.trip.count76 = zext nneg i32 %smax75 to i64 ; [#uses=6 type=i64]
  %invariant.gep88 = getelementptr [2 x i8], ptr %6, i64 %60 ; [#uses=4 type=ptr]
  %invariant.gep90 = getelementptr [2 x i8], ptr %6, i64 %61 ; [#uses=4 type=ptr]
  %min.iters.check148 = icmp sgt i32 %5, 39       ; [#uses=1 type=i1]
  %ident.check122.not = icmp eq i32 %57, 1        ; [#uses=1 type=i1]
  %or.cond231 = and i1 %min.iters.check148, %ident.check122.not ; [#uses=2 type=i1]
  br i1 %58, label %.split.split.us.preheader, label %.split.split.preheader

.split.split.preheader:                           ; preds = %.split
  br i1 %or.cond231, label %vector.memcheck, label %.split.split.preheader235

vector.memcheck:                                  ; preds = %.split.split.preheader
  %62 = shl nsw i64 %60, 1                        ; [#uses=4 type=i64]
  %diff.check = icmp ult i64 %62, 16              ; [#uses=1 type=i1]
  %63 = shl nsw i64 %61, 1                        ; [#uses=4 type=i64]
  %diff.check98 = icmp ult i64 %63, 16            ; [#uses=1 type=i1]
  %conflict.rdx = or i1 %diff.check, %diff.check98 ; [#uses=1 type=i1]
  %64 = sub i64 %11, %10                          ; [#uses=1 type=i64]
  %diff.check99 = icmp ult i64 %64, 16            ; [#uses=1 type=i1]
  %conflict.rdx100 = or i1 %conflict.rdx, %diff.check99 ; [#uses=1 type=i1]
  %65 = sub i64 %9, %11                           ; [#uses=1 type=i64]
  %diff.check101 = icmp ult i64 %65, 16           ; [#uses=1 type=i1]
  %conflict.rdx102 = or i1 %conflict.rdx100, %diff.check101 ; [#uses=1 type=i1]
  %66 = sub i64 %8, %11                           ; [#uses=1 type=i64]
  %diff.check103 = icmp ult i64 %66, 16           ; [#uses=1 type=i1]
  %conflict.rdx104 = or i1 %conflict.rdx102, %diff.check103 ; [#uses=1 type=i1]
  %67 = sub nsw i64 %63, %62                      ; [#uses=1 type=i64]
  %diff.check105 = icmp ult i64 %67, 16           ; [#uses=1 type=i1]
  %conflict.rdx106 = or i1 %conflict.rdx104, %diff.check105 ; [#uses=1 type=i1]
  %68 = add i64 %62, %11                          ; [#uses=2 type=i64]
  %69 = sub i64 %68, %10                          ; [#uses=1 type=i64]
  %diff.check107 = icmp ult i64 %69, 16           ; [#uses=1 type=i1]
  %conflict.rdx108 = or i1 %conflict.rdx106, %diff.check107 ; [#uses=1 type=i1]
  %70 = sub i64 %68, %9                           ; [#uses=1 type=i64]
  %diff.check109 = icmp ult i64 %70, 16           ; [#uses=1 type=i1]
  %conflict.rdx110 = or i1 %conflict.rdx108, %diff.check109 ; [#uses=1 type=i1]
  %71 = add i64 %62, %11                          ; [#uses=1 type=i64]
  %72 = sub i64 %8, %71                           ; [#uses=1 type=i64]
  %diff.check111 = icmp ult i64 %72, 16           ; [#uses=1 type=i1]
  %conflict.rdx112 = or i1 %conflict.rdx110, %diff.check111 ; [#uses=1 type=i1]
  %73 = add i64 %63, %11                          ; [#uses=2 type=i64]
  %74 = sub i64 %73, %10                          ; [#uses=1 type=i64]
  %diff.check113 = icmp ult i64 %74, 16           ; [#uses=1 type=i1]
  %conflict.rdx114 = or i1 %conflict.rdx112, %diff.check113 ; [#uses=1 type=i1]
  %75 = sub i64 %73, %9                           ; [#uses=1 type=i64]
  %diff.check115 = icmp ult i64 %75, 16           ; [#uses=1 type=i1]
  %conflict.rdx116 = or i1 %conflict.rdx114, %diff.check115 ; [#uses=1 type=i1]
  %76 = add i64 %63, %11                          ; [#uses=1 type=i64]
  %77 = sub i64 %76, %8                           ; [#uses=1 type=i64]
  %diff.check117 = icmp ult i64 %77, 16           ; [#uses=1 type=i1]
  %conflict.rdx118 = or i1 %conflict.rdx116, %diff.check117 ; [#uses=1 type=i1]
  br i1 %conflict.rdx118, label %.split.split.preheader235, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count76, 2147483640 ; [#uses=3 type=i64]
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %17, i64 0 ; [#uses=1 type=<8 x i32>]
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; [#uses=3 type=<8 x i32>]
  br label %vector.body
end_hunk_1
begin_hunk_2
  %82 = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index ; [#uses=1 type=ptr]
  store <8 x i16> %81, ptr %82, align 2, !tbaa !12
  %83 = getelementptr inbounds [2 x i8], ptr %1, i64 %index ; [#uses=1 type=ptr]
  %wide.load119 = load <8 x i16>, ptr %83, align 2, !tbaa !12 ; [#uses=1 type=<8 x i16>]
  %84 = zext <8 x i16> %wide.load119 to <8 x i32> ; [#uses=1 type=<8 x i32>]
  %85 = shl <8 x i32> %84, %broadcast.splat       ; [#uses=1 type=<8 x i32>]
  %86 = trunc <8 x i32> %85 to <8 x i16>          ; [#uses=1 type=<8 x i16>]
  %87 = getelementptr [2 x i8], ptr %invariant.gep88, i64 %index ; [#uses=1 type=ptr]
  store <8 x i16> %86, ptr %87, align 2, !tbaa !12
  %88 = getelementptr inbounds [2 x i8], ptr %2, i64 %index ; [#uses=1 type=ptr]
  %wide.load120 = load <8 x i16>, ptr %88, align 2, !tbaa !12 ; [#uses=1 type=<8 x i16>]
  %89 = zext <8 x i16> %wide.load120 to <8 x i32> ; [#uses=1 type=<8 x i32>]
  %90 = shl <8 x i32> %89, %broadcast.splat       ; [#uses=1 type=<8 x i32>]
  %91 = trunc <8 x i32> %90 to <8 x i16>          ; [#uses=1 type=<8 x i16>]
  %92 = getelementptr [2 x i8], ptr %invariant.gep90, i64 %index ; [#uses=1 type=ptr]
  store <8 x i16> %91, ptr %92, align 2, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; [#uses=2 type=i64]
  %93 = icmp eq i64 %index.next, %n.vec           ; [#uses=1 type=i1]
  br i1 %93, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count76 ; [#uses=1 type=i1]
  br i1 %cmp.n, label %.split67.us, label %.split.split.preheader235

.split.split.preheader235:                        ; preds = %vector.memcheck, %.split.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.split.split.preheader ], [ %n.vec, %middle.block ] ; [#uses=1 type=i64]
  br label %.split.split

.split.split.us.preheader:                        ; preds = %.split
  br i1 %or.cond231, label %vector.memcheck123, label %.split.split.us.preheader233

vector.memcheck123:                               ; preds = %.split.split.us.preheader
  %94 = shl nsw i64 %60, 1                        ; [#uses=4 type=i64]
  %diff.check124 = icmp ult i64 %94, 16           ; [#uses=1 type=i1]
  %95 = shl nsw i64 %61, 1                        ; [#uses=4 type=i64]
  %diff.check125 = icmp ult i64 %95, 16           ; [#uses=1 type=i1]
  %conflict.rdx126 = or i1 %diff.check124, %diff.check125 ; [#uses=1 type=i1]
  %96 = sub i64 %11, %10                          ; [#uses=1 type=i64]
  %diff.check127 = icmp ult i64 %96, 16           ; [#uses=1 type=i1]
  %conflict.rdx128 = or i1 %conflict.rdx126, %diff.check127 ; [#uses=1 type=i1]
  %97 = sub i64 %9, %11                           ; [#uses=1 type=i64]
  %diff.check129 = icmp ult i64 %97, 16           ; [#uses=1 type=i1]
  %conflict.rdx130 = or i1 %conflict.rdx128, %diff.check129 ; [#uses=1 type=i1]
  %98 = sub i64 %8, %11                           ; [#uses=1 type=i64]
  %diff.check131 = icmp ult i64 %98, 16           ; [#uses=1 type=i1]
  %conflict.rdx132 = or i1 %conflict.rdx130, %diff.check131 ; [#uses=1 type=i1]
  %99 = sub nsw i64 %95, %94                      ; [#uses=1 type=i64]
  %diff.check133 = icmp ult i64 %99, 16           ; [#uses=1 type=i1]
  %conflict.rdx134 = or i1 %conflict.rdx132, %diff.check133 ; [#uses=1 type=i1]
  %100 = add i64 %94, %11                         ; [#uses=2 type=i64]
  %101 = sub i64 %100, %10                        ; [#uses=1 type=i64]
  %diff.check135 = icmp ult i64 %101, 16          ; [#uses=1 type=i1]
  %conflict.rdx136 = or i1 %conflict.rdx134, %diff.check135 ; [#uses=1 type=i1]
  %102 = sub i64 %100, %9                         ; [#uses=1 type=i64]
  %diff.check137 = icmp ult i64 %102, 16          ; [#uses=1 type=i1]
  %conflict.rdx138 = or i1 %conflict.rdx136, %diff.check137 ; [#uses=1 type=i1]
  %103 = add i64 %94, %11                         ; [#uses=1 type=i64]
  %104 = sub i64 %8, %103                         ; [#uses=1 type=i64]
  %diff.check139 = icmp ult i64 %104, 16          ; [#uses=1 type=i1]
  %conflict.rdx140 = or i1 %conflict.rdx138, %diff.check139 ; [#uses=1 type=i1]
  %105 = add i64 %95, %11                         ; [#uses=2 type=i64]
  %106 = sub i64 %105, %10                        ; [#uses=1 type=i64]
  %diff.check141 = icmp ult i64 %106, 16          ; [#uses=1 type=i1]
  %conflict.rdx142 = or i1 %conflict.rdx140, %diff.check141 ; [#uses=1 type=i1]
  %107 = sub i64 %105, %9                         ; [#uses=1 type=i64]
  %diff.check143 = icmp ult i64 %107, 16          ; [#uses=1 type=i1]
  %conflict.rdx144 = or i1 %conflict.rdx142, %diff.check143 ; [#uses=1 type=i1]
  %108 = add i64 %95, %11                         ; [#uses=1 type=i64]
  %109 = sub i64 %108, %8                         ; [#uses=1 type=i64]
  %diff.check145 = icmp ult i64 %109, 16          ; [#uses=1 type=i1]
  %conflict.rdx146 = or i1 %conflict.rdx144, %diff.check145 ; [#uses=1 type=i1]
  br i1 %conflict.rdx146, label %.split.split.us.preheader233, label %vector.ph149

vector.ph149:                                     ; preds = %vector.memcheck123
  %n.vec151 = and i64 %wide.trip.count76, 2147483640 ; [#uses=3 type=i64]
  %broadcast.splatinsert152 = insertelement <8 x i32> poison, i32 %18, i64 0 ; [#uses=1 type=<8 x i32>]
  %broadcast.splat153 = shufflevector <8 x i32> %broadcast.splatinsert152, <8 x i32> poison, <8 x i32> zeroinitializer ; [#uses=3 type=<8 x i32>]
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph149
  %index155 = phi i64 [ 0, %vector.ph149 ], [ %index.next159, %vector.body154 ] ; [#uses=7 type=i64]
  %110 = getelementptr inbounds [2 x i8], ptr %0, i64 %index155 ; [#uses=1 type=ptr]
  %wide.load156 = load <8 x i16>, ptr %110, align 2, !tbaa !12 ; [#uses=1 type=<8 x i16>]
  %111 = zext <8 x i16> %wide.load156 to <8 x i32> ; [#uses=1 type=<8 x i32>]
  %112 = lshr <8 x i32> %111, %broadcast.splat153 ; [#uses=1 type=<8 x i32>]
  %113 = trunc nuw <8 x i32> %112 to <8 x i16>    ; [#uses=1 type=<8 x i16>]
  %114 = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %index155 ; [#uses=1 type=ptr]
  store <8 x i16> %113, ptr %114, align 2, !tbaa !12
  %115 = getelementptr inbounds [2 x i8], ptr %1, i64 %index155 ; [#uses=1 type=ptr]
  %wide.load157 = load <8 x i16>, ptr %115, align 2, !tbaa !12 ; [#uses=1 type=<8 x i16>]
  %116 = zext <8 x i16> %wide.load157 to <8 x i32> ; [#uses=1 type=<8 x i32>]
  %117 = lshr <8 x i32> %116, %broadcast.splat153 ; [#uses=1 type=<8 x i32>]
  %118 = trunc nuw <8 x i32> %117 to <8 x i16>    ; [#uses=1 type=<8 x i16>]
  %119 = getelementptr [2 x i8], ptr %invariant.gep88, i64 %index155 ; [#uses=1 type=ptr]
  store <8 x i16> %118, ptr %119, align 2, !tbaa !12
  %120 = getelementptr inbounds [2 x i8], ptr %2, i64 %index155 ; [#uses=1 type=ptr]
  %wide.load158 = load <8 x i16>, ptr %120, align 2, !tbaa !12 ; [#uses=1 type=<8 x i16>]
  %121 = zext <8 x i16> %wide.load158 to <8 x i32> ; [#uses=1 type=<8 x i32>]
  %122 = lshr <8 x i32> %121, %broadcast.splat153 ; [#uses=1 type=<8 x i32>]
  %123 = trunc nuw <8 x i32> %122 to <8 x i16>    ; [#uses=1 type=<8 x i16>]
  %124 = getelementptr [2 x i8], ptr %invariant.gep90, i64 %index155 ; [#uses=1 type=ptr]
  store <8 x i16> %123, ptr %124, align 2, !tbaa !12
  %index.next159 = add nuw i64 %index155, 8       ; [#uses=2 type=i64]
  %125 = icmp eq i64 %index.next159, %n.vec151    ; [#uses=1 type=i1]
  br i1 %125, label %middle.block160, label %vector.body154, !llvm.loop !64

middle.block160:                                  ; preds = %vector.body154
  %cmp.n161 = icmp eq i64 %n.vec151, %wide.trip.count76 ; [#uses=1 type=i1]
  br i1 %cmp.n161, label %.split67.us, label %.split.split.us.preheader233

.split.split.us.preheader233:                     ; preds = %vector.memcheck123, %.split.split.us.preheader, %middle.block160
  %indvars.iv72.ph = phi i64 [ 0, %vector.memcheck123 ], [ 0, %.split.split.us.preheader ], [ %n.vec151, %middle.block160 ] ; [#uses=1 type=i64]
  br label %.split.split.us

.split.split.us:                                  ; preds = %.split.split.us.preheader233, %.split.split.us
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %.split.split.us ], [ %indvars.iv72.ph, %.split.split.us.preheader233 ] ; [#uses=5 type=i64]
  %126 = mul nsw i64 %indvars.iv72, %59           ; [#uses=3 type=i64]
  %127 = getelementptr inbounds [2 x i8], ptr %0, i64 %126 ; [#uses=1 type=ptr]
  %128 = load i16, ptr %127, align 2, !tbaa !12   ; [#uses=1 type=i16]
  %129 = zext i16 %128 to i32                     ; [#uses=1 type=i32]
  %130 = lshr i32 %129, %18                       ; [#uses=1 type=i32]
  %131 = trunc nuw i32 %130 to i16                ; [#uses=1 type=i16]
  %132 = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %indvars.iv72 ; [#uses=1 type=ptr]
  store i16 %131, ptr %132, align 2, !tbaa !12
  %133 = getelementptr inbounds [2 x i8], ptr %1, i64 %126 ; [#uses=1 type=ptr]
  %134 = load i16, ptr %133, align 2, !tbaa !12   ; [#uses=1 type=i16]
  %135 = zext i16 %134 to i32                     ; [#uses=1 type=i32]
  %136 = lshr i32 %135, %18                       ; [#uses=1 type=i32]
  %137 = trunc nuw i32 %136 to i16                ; [#uses=1 type=i16]
  %gep89 = getelementptr [2 x i8], ptr %invariant.gep88, i64 %indvars.iv72 ; [#uses=1 type=ptr]
  store i16 %137, ptr %gep89, align 2, !tbaa !12
  %138 = getelementptr inbounds [2 x i8], ptr %2, i64 %126 ; [#uses=1 type=ptr]
  %139 = load i16, ptr %138, align 2, !tbaa !12   ; [#uses=1 type=i16]
  %140 = zext i16 %139 to i32                     ; [#uses=1 type=i32]
  %141 = lshr i32 %140, %18                       ; [#uses=1 type=i32]
  %142 = trunc nuw i32 %141 to i16                ; [#uses=1 type=i16]
  %gep91 = getelementptr [2 x i8], ptr %invariant.gep90, i64 %indvars.iv72 ; [#uses=1 type=ptr]
  store i16 %142, ptr %gep91, align 2, !tbaa !12
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; [#uses=2 type=i64]
  %exitcond77.not = icmp eq i64 %indvars.iv.next73, %wide.trip.count76 ; [#uses=1 type=i1]
  br i1 %exitcond77.not, label %.split67.us, label %.split.split.us, !llvm.loop !65

.split.split:                                     ; preds = %.split.split.preheader235, %.split.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.split.split ], [ %indvars.iv.ph, %.split.split.preheader235 ] ; [#uses=5 type=i64]
  %143 = mul nsw i64 %indvars.iv, %59             ; [#uses=3 type=i64]
  %144 = getelementptr inbounds [2 x i8], ptr %0, i64 %143 ; [#uses=1 type=ptr]
  %145 = load i16, ptr %144, align 2, !tbaa !12   ; [#uses=1 type=i16]
end_hunk_2
begin_hunk_3
  %152 = zext i16 %151 to i32                     ; [#uses=1 type=i32]
  %153 = shl i32 %152, %17                        ; [#uses=1 type=i32]
  %154 = trunc i32 %153 to i16                    ; [#uses=1 type=i16]
  %gep = getelementptr [2 x i8], ptr %invariant.gep88, i64 %indvars.iv ; [#uses=1 type=ptr]
  store i16 %154, ptr %gep, align 2, !tbaa !12
  %155 = getelementptr inbounds [2 x i8], ptr %2, i64 %143 ; [#uses=1 type=ptr]
  %156 = load i16, ptr %155, align 2, !tbaa !12   ; [#uses=1 type=i16]
  %157 = zext i16 %156 to i32                     ; [#uses=1 type=i32]
  %158 = shl i32 %157, %17                        ; [#uses=1 type=i32]
  %159 = trunc i32 %158 to i16                    ; [#uses=1 type=i16]
  %gep87 = getelementptr [2 x i8], ptr %invariant.gep90, i64 %indvars.iv ; [#uses=1 type=ptr]
  store i16 %159, ptr %gep87, align 2, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; [#uses=2 type=i64]
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count76 ; [#uses=1 type=i1]
  br i1 %exitcond.not, label %.split67.us, label %.split.split, !llvm.loop !66

.split67.us:                                      ; preds = %.split.split, %.split.split.us, %.split.us, %middle.block, %middle.block160, %middle.block226
  %160 = and i32 %5, 1                            ; [#uses=1 type=i32]
  %.not = icmp eq i32 %160, 0                     ; [#uses=1 type=i1]
  br i1 %.not, label %177, label %161
end_hunk_3
