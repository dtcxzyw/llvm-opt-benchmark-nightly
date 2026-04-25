inline.NumInlined: 62
inline.NumDeleted: 31
begin_hunk_0_@do_end_block_check:bb.a
  %i.p = load <4 x i32>, ptr %i.n, align 4, !tbaa !3 ; 4 uses
  %i.q = load <4 x i32>, ptr %i.o, align 4, !tbaa !3 ; 4 uses
  %i.r = load <2 x i32>, ptr %i.g, align 4, !tbaa !3
  %2 = load <2 x i32>, ptr %0, align 4, !tbaa !3
  %3 = insertelement <8 x i32> poison, i32 %i.i, i64 0
  %4 = shufflevector <8 x i32> %3, <8 x i32> poison, <8 x i32> zeroinitializer
  %5 = shufflevector <4 x i32> %i.l, <4 x i32> %i.p, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5>
  %6 = shufflevector <2 x i32> %i.r, <2 x i32> poison, <8 x i32> <i32 1, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %7 = shufflevector <8 x i32> %6, <8 x i32> %5, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %8 = mul <8 x i32> %4, %7                       ; 3 uses
  %9 = shufflevector <4 x i32> %i.m, <4 x i32> %i.q, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5>
  %10 = shufflevector <2 x i32> %2, <2 x i32> poison, <8 x i32> <i32 1, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %11 = shufflevector <8 x i32> %10, <8 x i32> %9, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.s = insertelement <8 x i32> poison, i32 %i.b, i64 0
  %i.t = shufflevector <8 x i32> %i.s, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.u = mul <8 x i32> %11, %i.t                  ; 3 uses
  %i.v = icmp ugt <8 x i32> %i.u, %8
  %i.w = sub nuw <8 x i32> %i.u, %8
  %i.x = sub nuw <8 x i32> %8, %i.u
  %i.y = select <8 x i1> %i.v, <8 x i32> %i.w, <8 x i32> %i.x
  %i.z = extractelement <4 x i32> %i.p, i64 2
  %i.aa = mul i32 %i.i, %i.z                      ; 3 uses
  %i.ab = extractelement <4 x i32> %i.q, i64 2
end_hunk_0
begin_hunk_1_@deflate_compute_true_cost:.preheader44
  %i.cj = mul <32 x i32> %i.ci, %i.cf             ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 2972
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 2988
  %2 = load <16 x i8>, ptr %i.cl, align 4, !tbaa !20
  %i.cm = load <24 x i32>, ptr %i.ck, align 4, !tbaa !3
  %3 = load <8 x i8>, ptr %1, align 4, !tbaa !20
  %4 = shufflevector <16 x i8> %2, <16 x i8> poison, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %5 = shufflevector <8 x i8> %3, <8 x i8> poison, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %6 = shufflevector <24 x i8> %4, <24 x i8> %5, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cn = zext <24 x i8> %6 to <24 x i32>
  %i.co = add nuw nsw <24 x i32> %i.cn, <i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12>
  %i.cp = mul <24 x i32> %i.co, %i.cm
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1296
end_hunk_1
