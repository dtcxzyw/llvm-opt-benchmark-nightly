inline.NumInlined: 17
inline.NumDeleted: 6
begin_hunk_0_@build_decrypt_dictionaries:bb.a

.preheader113:                                    ; preds = %.split.us
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 27 ; 10 uses
  %scevgep = getelementptr i8, ptr %0, i64 28     ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader113, %.loopexit110
  %.155132 = phi i32 [ 0, %.preheader113 ], [ %.4, %.loopexit110 ] ; 8 uses
  %i.bd = call fastcc i32 @getdec(ptr noundef %0, i8 noundef zeroext 3, ptr noundef %i.a) ; 3 uses
  %i.be = load i32, ptr %i.a, align 4, !tbaa !4
  %.not66 = icmp eq i32 %i.be, 0
end_hunk_0
begin_hunk_1_@build_decrypt_dictionaries:bb.a
.lr.ph.preheader:                                 ; preds = %.preheader111.thread, %.preheader111
  %i.dq = phi i32 [ %.pre156, %.preheader111.thread ], [ %i.dk, %.preheader111 ]
  %i.dr = phi i32 [ %.pr.i.i87, %.preheader111.thread ], [ %i.dm, %.preheader111 ]
  %1 = zext nneg i32 %.155132 to i64              ; 10 uses
  %.phi.trans.insert157 = getelementptr inbounds nuw i8, ptr %i.bc, i64 %1
  %.pre158 = load i8, ptr %.phi.trans.insert157, align 1, !tbaa !18 ; 8 uses
  %2 = tail call i64 @llvm.usub.sat.i64(i64 756, i64 %1)
  %i.ds = sub nuw nsw i32 8, %i.dr
  %i.dt = lshr i32 %i.dq, %i.ds
  %i.du = lshr i32 %i.dt, 22
  %i.dv = and i32 %i.du, 3
  %narrow223 = add nuw nsw i32 %i.dv, 2
  %3 = zext nneg i32 %narrow223 to i64
  %umin = tail call i64 @llvm.umin.i64(i64 %2, i64 %3) ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %umin, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %4 = icmp samesign uge <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7> ; 8 uses
  %5 = extractelement <8 x i1> %4, i64 0
  br i1 %5, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %.lr.ph.preheader
  %6 = getelementptr inbounds nuw i8, ptr %i.bc, i64 %1
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 %.pre158, ptr %7, align 1, !tbaa !18
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %.lr.ph.preheader
  %8 = extractelement <8 x i1> %4, i64 1
  br i1 %8, label %pred.store.if209, label %pred.store.continue210

pred.store.if209:                                 ; preds = %pred.store.continue
  %9 = getelementptr inbounds nuw i8, ptr %i.bc, i64 %1
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 2
  store i8 %.pre158, ptr %10, align 1, !tbaa !18
  br label %pred.store.continue210

pred.store.continue210:                           ; preds = %pred.store.if209, %pred.store.continue
  %11 = extractelement <8 x i1> %4, i64 2
  br i1 %11, label %pred.store.if211, label %pred.store.continue212

pred.store.if211:                                 ; preds = %pred.store.continue210
  %12 = getelementptr inbounds nuw i8, ptr %i.bc, i64 %1
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 3
  store i8 %.pre158, ptr %13, align 1, !tbaa !18
  br label %pred.store.continue212

pred.store.continue212:                           ; preds = %pred.store.if211, %pred.store.continue210
  %14 = extractelement <8 x i1> %4, i64 3
  br i1 %14, label %pred.store.if213, label %pred.store.continue214

pred.store.if213:                                 ; preds = %pred.store.continue212
  %15 = getelementptr inbounds nuw i8, ptr %i.bc, i64 %1
  %i.dw = getelementptr inbounds nuw i8, ptr %15, i64 4
  store i8 %.pre158, ptr %i.dw, align 1, !tbaa !18
  br label %pred.store.continue214

pred.store.continue214:                           ; preds = %pred.store.if213, %pred.store.continue212
  %16 = extractelement <8 x i1> %4, i64 4
  br i1 %16, label %pred.store.if215, label %pred.store.continue216

pred.store.if215:                                 ; preds = %pred.store.continue214
  %17 = getelementptr inbounds nuw i8, ptr %i.bc, i64 %1
  %i.dx = getelementptr inbounds nuw i8, ptr %17, i64 5
  store i8 %.pre158, ptr %i.dx, align 1, !tbaa !18
  br label %pred.store.continue216

pred.store.continue216:                           ; preds = %pred.store.if215, %pred.store.continue214
  %18 = extractelement <8 x i1> %4, i64 5
  br i1 %18, label %pred.store.if217, label %pred.store.continue218

pred.store.if217:                                 ; preds = %pred.store.continue216
  %19 = getelementptr inbounds nuw i8, ptr %i.bc, i64 %1
  %i.dy = getelementptr inbounds nuw i8, ptr %19, i64 6
  store i8 %.pre158, ptr %i.dy, align 1, !tbaa !18
  br label %pred.store.continue218

pred.store.continue218:                           ; preds = %pred.store.if217, %pred.store.continue216
  %20 = extractelement <8 x i1> %4, i64 6
  br i1 %20, label %pred.store.if219, label %pred.store.continue220

pred.store.if219:                                 ; preds = %pred.store.continue218
  %21 = getelementptr inbounds nuw i8, ptr %i.bc, i64 %1
  %i.dz = getelementptr inbounds nuw i8, ptr %21, i64 7
  store i8 %.pre158, ptr %i.dz, align 1, !tbaa !18
  br label %pred.store.continue220

pred.store.continue220:                           ; preds = %pred.store.if219, %pred.store.continue218
  %22 = extractelement <8 x i1> %4, i64 7
  br i1 %22, label %pred.store.if221, label %.loopexit110.loopexit134

pred.store.if221:                                 ; preds = %pred.store.continue220
  %23 = getelementptr inbounds nuw i8, ptr %i.bc, i64 %1
  %i.ea = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i8 %.pre158, ptr %i.ea, align 1, !tbaa !18
  br label %.loopexit110.loopexit134

end_hunk_1
begin_hunk_2_@build_decrypt_dictionaries:bb.a
  %i.el = trunc nuw nsw i64 %indvars.iv.next148 to i32
  br label %.loopexit110

.loopexit110.loopexit134:                         ; preds = %pred.store.if221, %pred.store.continue220
  %24 = trunc nuw nsw i64 %umin to i32
  %25 = add nuw nsw i32 %24, 1
  %26 = add nuw nsw i32 %25, %.155132
  br label %.loopexit110

.loopexit110:                                     ; preds = %.loopexit110.loopexit134, %.loopexit110.loopexit, %bb.s
  %.4 = phi i32 [ %i.ei, %bb.s ], [ %i.el, %.loopexit110.loopexit ], [ %26, %.loopexit110.loopexit134 ] ; 2 uses
  %i.em = icmp ult i32 %.4, 757
  br i1 %i.em, label %bb.g, label %.loopexit110.thread, !llvm.loop !44

end_hunk_2
begin_hunk_3_@llvm.umin.i32
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_3
