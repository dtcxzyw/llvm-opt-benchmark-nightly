inline.NumInlined: 156
inline.NumDeleted: 31
begin_hunk_0_@_ZNK12btBox2dShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i:bb.a
  %i.g = icmp eq i64 %n.mod.vf, 0
  %i.h = select i1 %i.g, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %wide.trip.count, %i.h     ; 2 uses
  %i.i = load <4 x float>, ptr %i.a, align 8
  %broadcast.splat28.a = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %4 = fneg <4 x float> %broadcast.splat28.a
  %i.j = load <4 x float>, ptr %i.c, align 4
  %broadcast.splat26 = shufflevector <4 x float> %i.j, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %5 = fneg <4 x float> %broadcast.splat26
  %6 = load <4 x float>, ptr %i.d, align 8
  %broadcast.splat28 = shufflevector <4 x float> %6, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.k = fneg <4 x float> %broadcast.splat28
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_0
begin_hunk_1_@_ZNK12btBox2dShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i:bb.a
  %i.z = insertelement <4 x float> %i.y, float %i.v, i64 2
  %i.aa = insertelement <4 x float> %i.z, float %i.w, i64 3
  %i.ab = fcmp oge <4 x float> %i.aa, zeroinitializer
  %i.ac = select <4 x i1> %i.ab, <4 x float> %broadcast.splat28.a, <4 x float> %4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 36
end_hunk_1
begin_hunk_2_@_ZNK12btBox2dShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i:bb.a
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 2
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 3
  %i.ap = fcmp oge <4 x float> %i.ao, zeroinitializer
  %i.aq = select <4 x i1> %i.ap, <4 x float> %broadcast.splat26, <4 x float> %5
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 40
end_hunk_2
begin_hunk_3_@_ZNK12btBox2dShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i:bb.a
  %i.bb = insertelement <4 x float> %i.ba, float %i.ax, i64 2
  %i.bc = insertelement <4 x float> %i.bb, float %i.ay, i64 3
  %i.bd = fcmp oge <4 x float> %i.bc, zeroinitializer
  %i.be = select <4 x i1> %i.bd, <4 x float> %broadcast.splat28, <4 x float> %i.k
  %i.bf = shufflevector <4 x float> %i.ac, <4 x float> %i.aq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bg = shufflevector <4 x float> %i.be, <4 x float> zeroinitializer, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.bf, <8 x float> %i.bg, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
end_hunk_3
