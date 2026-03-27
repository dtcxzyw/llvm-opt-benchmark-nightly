begin_hunk_0
; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @OJPEGReadHeaderInfoSec(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 7 uses
  %i.b = alloca i8, align 1                       ; 18 uses
  %i.c = alloca i16, align 2                      ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 7 uses
end_hunk_0
begin_hunk_1
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ty, i64 408
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ty, i64 500 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ft, %.lr.ph95.i
end_hunk_1
begin_hunk_2
  br i1 %.not84.i131, label %.preheader.preheader.i, label %OJPEGReadHeaderInfoSecTablesDcTable.exit.thread

.preheader.preheader.i:                           ; preds = %._crit_edge.i130
  %1 = load <16 x i8>, ptr %i.a, align 16, !tbaa !101
  %2 = zext <16 x i8> %1 to <16 x i32>
  %i.vd = call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %2) ; 4 uses
  %i.ve = add nuw nsw i32 %i.vd, 25               ; 2 uses
  %i.vf = zext nneg i32 %i.ve to i64
  %i.vg = call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef %i.vf) #13 ; 12 uses
  %i.vh = icmp eq ptr %i.vg, null
end_hunk_2
begin_hunk_3
  br label %OJPEGReadHeaderInfoSecTablesDcTable.exit.thread

bb.fn:                                            ; preds = %.preheader.preheader.i
  %i.vi = zext nneg i32 %i.vd to i64
  store i32 %i.ve, ptr %i.vg, align 4, !tbaa !3
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vg, i64 4
  store i8 -1, ptr %i.vj, align 4, !tbaa !101
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vg, i64 5
  store i8 -60, ptr %i.vk, align 1, !tbaa !101
  %i.vl = add nuw nsw i32 %i.vd, 19               ; 2 uses
  %i.vm = lshr i32 %i.vl, 8
  %i.vn = trunc nuw nsw i32 %i.vm to i8
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vg, i64 6
end_hunk_3
begin_hunk_4
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vg, i64 25
  %i.wa = call i64 %i.vx(ptr noundef %i.vy, ptr noundef nonnull %i.vz, i64 noundef %i.vi) #13
  %i.wb = trunc i64 %i.wa to i32
  %.not85.i134 = icmp eq i32 %i.vd, %i.wb
  br i1 %.not85.i134, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
end_hunk_4
begin_hunk_5
; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @OJPEGReadHeaderInfoSecTablesAcTable(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
end_hunk_5
begin_hunk_6
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 440
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 500 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph99, %bb.q
end_hunk_6
begin_hunk_7
  br i1 %.not88, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %._crit_edge
  %1 = load <16 x i8>, ptr %i.a, align 16, !tbaa !101
  %2 = zext <16 x i8> %1 to <16 x i32>
  %i.am = call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %2) ; 4 uses
  %i.an = add nuw nsw i32 %i.am, 25               ; 2 uses
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef %i.ao) #13 ; 12 uses
  %i.aq = icmp eq ptr %i.ap, null
end_hunk_7
begin_hunk_8
  br label %.loopexit

bb.k:                                             ; preds = %.preheader.preheader
  %i.ar = zext nneg i32 %i.am to i64
  store i32 %i.an, ptr %i.ap, align 4, !tbaa !3
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i8 -1, ptr %i.as, align 4, !tbaa !101
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 5
  store i8 -60, ptr %i.at, align 1, !tbaa !101
  %i.au = add nuw nsw i32 %i.am, 19               ; 2 uses
  %i.av = lshr i32 %i.au, 8
  %i.aw = trunc nuw nsw i32 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 6
end_hunk_8
begin_hunk_9
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 25
  %i.bk = call i64 %i.bh(ptr noundef %i.bi, ptr noundef nonnull %i.bj, i64 noundef %i.ar) #13
  %i.bl = trunc i64 %i.bk to i32
  %.not89 = icmp eq i32 %i.am, %i.bl
  br i1 %.not89, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
end_hunk_9
begin_hunk_10
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_10
