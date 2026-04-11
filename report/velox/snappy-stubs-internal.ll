inline.NumInlined: 6
inline.NumDeleted: 6
begin_hunk_0
; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6snappy6Varint8Append32EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = icmp ult i32 %1, 128
  %.pn.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 4 uses
  %.pn.i.sroa.gep2 = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 3 uses
  %.pn.i.sroa.gep3 = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 3 uses
  %.pn.i.sroa.gep4 = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %.pn.i.sroa.gep5 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nuw nsw i32 %1 to i8
  store i8 %i.c, ptr %i.a, align 1, !tbaa !7
  br label %_ZN6snappy6Varint8Encode32EPcj.exit

end_hunk_0
begin_hunk_1_@_ZN6snappy6Varint8Append32EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj:bb.a
bb.d:                                             ; preds = %bb.c
  %i.e = trunc i32 %1 to i8
  %i.f = or i8 %i.e, -128
  store i8 %i.f, ptr %i.a, align 1, !tbaa !7
  %i.g = lshr i32 %1, 7
  %i.h = trunc nuw nsw i32 %i.g to i8
  store i8 %i.h, ptr %.pn.i.sroa.gep, align 1, !tbaa !7
  br label %_ZN6snappy6Varint8Encode32EPcj.exit

bb.e:                                             ; preds = %bb.c
end_hunk_1
begin_hunk_2_@_ZN6snappy6Varint8Append32EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj:bb.a
bb.f:                                             ; preds = %bb.e
  %i.j = trunc i32 %1 to i8
  %i.k = or i8 %i.j, -128
  store i8 %i.k, ptr %i.a, align 1, !tbaa !7
  %i.l = lshr i32 %1, 7
  %i.m = trunc i32 %i.l to i8
  %i.n = or i8 %i.m, -128
  store i8 %i.n, ptr %.pn.i.sroa.gep, align 1, !tbaa !7
  %i.o = lshr i32 %1, 14
  %i.p = trunc nuw nsw i32 %i.o to i8
  store i8 %i.p, ptr %.pn.i.sroa.gep2, align 1, !tbaa !7
  br label %_ZN6snappy6Varint8Encode32EPcj.exit

bb.g:                                             ; preds = %bb.e
  %i.q = icmp ult i32 %1, 268435456
  %i.r = trunc i32 %1 to i8
  %i.s = or i8 %i.r, -128
  store i8 %i.s, ptr %i.a, align 1, !tbaa !7
  %i.t = lshr i32 %1, 7
  %i.u = trunc i32 %i.t to i8
  %i.v = or i8 %i.u, -128
  store i8 %i.v, ptr %.pn.i.sroa.gep, align 1, !tbaa !7
  %i.w = lshr i32 %1, 14
  %i.x = trunc i32 %i.w to i8
  %i.y = or i8 %i.x, -128
  store i8 %i.y, ptr %.pn.i.sroa.gep2, align 1, !tbaa !7
  %i.z = lshr i32 %1, 21
  %i.aa = trunc i32 %i.z to i8                    ; 2 uses
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 %i.aa, ptr %.pn.i.sroa.gep3, align 1, !tbaa !7
  br label %_ZN6snappy6Varint8Encode32EPcj.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = or i8 %i.aa, -128
  store i8 %i.ab, ptr %.pn.i.sroa.gep3, align 1, !tbaa !7
  %i.ac = lshr i32 %1, 28
  %i.ad = trunc nuw nsw i32 %i.ac to i8
  store i8 %i.ad, ptr %.pn.i.sroa.gep4, align 1, !tbaa !7
  br label %_ZN6snappy6Varint8Encode32EPcj.exit

_ZN6snappy6Varint8Encode32EPcj.exit:              ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %bb.i
  %.0.i = phi ptr [ %.pn.i.sroa.gep, %bb.b ], [ %.pn.i.sroa.gep2, %bb.d ], [ %.pn.i.sroa.gep3, %bb.f ], [ %.pn.i.sroa.gep4, %bb.h ], [ %.pn.i.sroa.gep5, %bb.i ]
  %i.ae = ptrtoint ptr %.0.i to i64
  %i.af = ptrtoint ptr %i.a to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 2 uses
end_hunk_2
