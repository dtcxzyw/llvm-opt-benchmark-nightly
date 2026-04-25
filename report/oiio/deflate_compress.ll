inline.NumInlined: 62
inline.NumDeleted: 31
begin_hunk_0_@do_end_block_check:bb.a
  %i.p = load <4 x i32>, ptr %i.n, align 4, !tbaa !3 ; 4 uses
  %i.q = load <4 x i32>, ptr %i.o, align 4, !tbaa !3 ; 4 uses
  %i.r = load <2 x i32>, ptr %i.g, align 4, !tbaa !3
  %2 = shufflevector <2 x i32> %i.r, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %3 = shufflevector <4 x i32> %i.l, <4 x i32> %i.p, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %4 = shufflevector <8 x i32> %2, <8 x i32> %3, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %5 = load <2 x i32>, ptr %0, align 4, !tbaa !3
  %6 = shufflevector <2 x i32> %5, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %7 = shufflevector <4 x i32> %i.m, <4 x i32> %i.q, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %8 = shufflevector <8 x i32> %6, <8 x i32> %7, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %9 = insertelement <8 x i32> poison, i32 %i.i, i64 0
  %10 = shufflevector <8 x i32> %9, <8 x i32> poison, <8 x i32> zeroinitializer
  %11 = mul <8 x i32> %10, %4                     ; 2 uses
  %i.s = insertelement <8 x i32> poison, i32 %i.b, i64 0
  %i.t = shufflevector <8 x i32> %i.s, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.u = mul <8 x i32> %8, %i.t                   ; 2 uses
  %i.v = icmp ugt <8 x i32> %i.u, %11
  %12 = shufflevector <8 x i1> %i.v, <8 x i1> poison, <8 x i32> <i32 1, i32 0, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %13 = shufflevector <8 x i32> %i.u, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %14 = shufflevector <8 x i32> %11, <8 x i32> poison, <8 x i32> <i32 1, i32 0, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.w = sub nuw <8 x i32> %13, %14
  %i.x = sub nuw <8 x i32> %14, %13
  %i.y = select <8 x i1> %12, <8 x i32> %i.w, <8 x i32> %i.x
  %i.z = extractelement <4 x i32> %i.p, i64 2
  %i.aa = mul i32 %i.i, %i.z                      ; 3 uses
  %i.ab = extractelement <4 x i32> %i.q, i64 2
end_hunk_0
begin_hunk_1_@deflate_compute_true_cost:.preheader44
  %i.cj = mul <32 x i32> %i.ci, %i.cf             ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 2972
  %i.cm = load <24 x i32>, ptr %i.ck, align 4, !tbaa !3
  %1 = load <24 x i8>, ptr %i.cl, align 4, !tbaa !20
  %i.cn = zext <24 x i8> %1 to <24 x i32>
  %i.co = add nuw nsw <24 x i32> %i.cn, <i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12>
  %i.cp = mul <24 x i32> %i.co, %i.cm
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1296
end_hunk_1
