inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0_@Gsm_Long_Term_Predictor:iter.check
  %i.c = ptrtoaddr ptr %4 to i64                  ; 12 uses
  %i.d = ptrtoaddr ptr %3 to i64                  ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %wide.load34 = load <8 x i16>, ptr %i.e, align 2, !tbaa !8 ; 3 uses
  %i.f = icmp slt <8 x i16> %wide.load34, zeroinitializer
  %7 = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> zeroinitializer, <8 x i16> %wide.load34)
  %i.g = select <8 x i1> %i.f, <8 x i16> %7, <8 x i16> %wide.load34
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %wide.load34.1 = load <8 x i16>, ptr %i.h, align 2, !tbaa !8 ; 3 uses
  %i.i = icmp slt <8 x i16> %wide.load34.1, zeroinitializer
  %8 = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> zeroinitializer, <8 x i16> %wide.load34.1)
  %i.j = select <8 x i1> %i.i, <8 x i16> %8, <8 x i16> %wide.load34.1
  %i.k = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.g, <8 x i16> %i.j)
  %wide.load = load <8 x i16>, ptr %1, align 2, !tbaa !8 ; 3 uses
  %i.l = icmp slt <8 x i16> %wide.load, zeroinitializer
  %9 = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> zeroinitializer, <8 x i16> %wide.load)
  %i.m = select <8 x i1> %i.l, <8 x i16> %9, <8 x i16> %wide.load
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %wide.load.1 = load <8 x i16>, ptr %i.n, align 2, !tbaa !8 ; 3 uses
  %i.o = icmp slt <8 x i16> %wide.load.1, zeroinitializer
  %10 = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> zeroinitializer, <8 x i16> %wide.load.1)
  %i.p = select <8 x i1> %i.o, <8 x i16> %10, <8 x i16> %wide.load.1
  %i.q = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.m, <8 x i16> %i.p)
  %i.r = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.k, <8 x i16> %i.q)
  %i.s = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.r, <8 x i16> zeroinitializer)
end_hunk_0
begin_hunk_1_@Gsm_Long_Term_Predictor:iter.check
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.t, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  %wide.load37 = load <8 x i16>, ptr %i.u, align 2, !tbaa !8 ; 3 uses
  %i.v = icmp slt <8 x i16> %wide.load37, zeroinitializer
  %11 = tail call <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16> zeroinitializer, <8 x i16> %wide.load37)
  %i.w = select <8 x i1> %i.v, <8 x i16> %11, <8 x i16> %wide.load37
  %i.x = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.w, <8 x i16> %broadcast.splat)
  %i.y = tail call i16 @llvm.vector.reduce.smax.v8i16(<8 x i16> %i.x) ; 2 uses
  %i.z = icmp eq i16 %i.y, 0
end_hunk_1
begin_hunk_2_@gsm_mult
declare signext i16 @gsm_mult(i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ssub.sat.i16(i16, i16) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.sadd.sat.i16(i16, i16) #3
end_hunk_2
begin_hunk_3_@llvm.memmove.p0.p0.i64
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.ssub.sat.v8i16(<8 x i16>, <8 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.smax.v8i16(<8 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16>, <8 x i16>) #3
end_hunk_3
