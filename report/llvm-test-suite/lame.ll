inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0_@lame_init_params:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread433
  %i.g = phi i1 [ false, %.thread433 ], [ %i.f, %bb.b ] ; 4 uses
  %i.h = phi i32 [ 1, %.thread433 ], [ %spec.select446, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  store i32 %i.h, ptr %i.i, align 4
end_hunk_0
begin_hunk_1_@lame_init_params:bb.a

bb.k:                                             ; preds = %bb.j
  %i.ah = fmul nnan double %i.aa, 1.000000e+04
  %1 = select i1 %i.g, double 3.200000e+01, double 1.600000e+01
  %i.ai = fdiv double %i.ah, %1
  %i.aj = fptosi double %i.ai to i32              ; 5 uses
  %i.ak = icmp slt i32 %i.aj, 16001
  br i1 %i.ak, label %bb.l, label %bb.m
end_hunk_1
begin_hunk_2_@lame_init_params:bb.a
bb.v:                                             ; preds = %._crit_edge397, %bb.i, %bb.l, %bb.p, %bb.t, %bb.u, %bb.r, %bb.n, %bb.j
  %i.ap = phi i32 [ %i.u, %bb.i ], [ %i.u, %bb.l ], [ %i.u, %bb.p ], [ %i.u, %bb.t ], [ %i.u, %bb.u ], [ %i.u, %bb.r ], [ %i.u, %bb.n ], [ %i.u, %bb.j ], [ %.pre399, %._crit_edge397 ] ; 2 uses
  %i.aq = phi i32 [ %.sink447, %bb.i ], [ 16000, %bb.l ], [ 24000, %bb.p ], [ 44100, %bb.t ], [ 48000, %bb.u ], [ 32000, %bb.r ], [ 22050, %bb.n ], [ %.sink447, %bb.j ], [ %i.l, %._crit_edge397 ] ; 4 uses
  %2 = icmp slt i32 %i.aq, 24001                  ; 3 uses
  %i.ar = select i1 %2, i32 1, i32 2
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 800, ptr %i.at, align 8, !tbaa !21
  %3 = select i1 %2, i32 576, i32 1152            ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 %3, ptr %i.au, align 4, !tbaa !22
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aw = icmp eq i32 %i.ap, 0
  br i1 %i.aw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %spec.store.select349 = select i1 %2, i32 64, i32 128 ; 2 uses
  store i32 %spec.store.select349, ptr %i.av, align 8
  br label %bb.x

end_hunk_2
begin_hunk_3_@lame_init_params:bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bg = load i64, ptr %0, align 8, !tbaa !24
  %i.bh = uitofp i64 %i.bg to float
  %i.bi = uitofp nneg i32 %3 to float
  %i.bj = fmul float %i.be, %i.bi
  %i.bk = fdiv float %i.bh, %i.bj
  %i.bl = fadd float %i.bk, 2.000000e+00
end_hunk_3
