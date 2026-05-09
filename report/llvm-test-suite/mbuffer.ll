inline.NumInlined: 130
inline.NumDeleted: 29
begin_hunk_0_@dpb_split_field:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.in = phi ptr [ %i.b, %bb.c ], [ %.pre, %._crit_edge ] ; 13 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 6396
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !79 ; 5 uses
  %i.iq = sdiv i32 %i.ip, 4
end_hunk_0
begin_hunk_1_@dpb_split_field:bb.a
  %i.iu = icmp sgt i32 %i.it, 3
  %i.iv = getelementptr inbounds nuw i8, ptr %i.in, i64 6480
  %i.iw = getelementptr inbounds nuw i8, ptr %i.in, i64 6488 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.in, i64 24 ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.in, i64 6504 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.in, i64 1608 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.in, i64 288 ; 2 uses
end_hunk_1
begin_hunk_2_@dpb_split_field:bb.a
  %i.jh = lshr i32 %i.je, 3
  %i.ji = mul nsw i32 %i.jh, %i.f
  %invariant.op.us = or disjoint i32 %i.ji, %i.jg
  %.not464.us = icmp eq i32 %i.jg, 0              ; 2 uses
  %1 = select i1 %.not464.us, i64 2, i64 4        ; 3 uses
  %i.jj = getelementptr inbounds nuw [264 x i8], ptr %i.ix, i64 %1
  %2 = select i1 %.not464.us, i64 3, i64 5        ; 3 uses
  %3 = getelementptr inbounds nuw [264 x i8], ptr %i.ix, i64 %2
  %i.jk = getelementptr inbounds nuw [264 x i8], ptr %i.iz, i64 %1
  %i.jl = getelementptr inbounds nuw [264 x i8], ptr %i.iz, i64 %2
  br i1 %.not462.us, label %.lr.ph482.split.us.us, label %.lr.ph482.split.us490

bb.e:                                             ; preds = %.lr.ph482.split.us490, %bb.r
end_hunk_2
begin_hunk_3_@dpb_split_field:bb.a

bb.g:                                             ; preds = %bb.f
  %i.kc = zext nneg i32 %i.ju to i64
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.kc
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !215
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.kf = phi i64 [ %i.ke, %bb.g ], [ 0, %bb.f ]
  %i.kg = load ptr, ptr %i.iy, align 8, !tbaa !92 ; 5 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %1
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !217
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %indvars.iv525
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !219
end_hunk_3
begin_hunk_4_@dpb_split_field:bb.a

bb.i:                                             ; preds = %bb.h
  %i.kn = zext nneg i32 %i.ka to i64
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.kn
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !215
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.kq = phi i64 [ %i.kp, %bb.i ], [ 0, %bb.h ]
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %2
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !217
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %indvars.iv525
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !219
end_hunk_4
