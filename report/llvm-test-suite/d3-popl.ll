inline.NumInlined: 10
inline.NumDeleted: 5
begin_hunk_0_@_Z10storelocalP9Classfile:bb.a
bb.k:                                             ; preds = %bb.c, %bb.g, %bb.j, %bb.i, %bb.e, %switch.lookup
  %.1 = phi i32 [ %spec.select, %switch.lookup ], [ 4, %bb.c ], [ 5, %bb.e ], [ 6, %bb.g ], [ 7, %bb.i ], [ 8, %bb.j ] ; 4 uses
  %.0 = phi i32 [ %i.l, %switch.lookup ], [ %i.n, %bb.c ], [ %i.p, %bb.e ], [ %i.r, %bb.g ], [ %i.t, %bb.i ], [ %i.u, %bb.j ] ; 3 uses
  %i.v = load ptr, ptr @miptr, align 8, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !13
  %i.y = sext i32 %.0 to i64                      ; 5 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !8   ; 3 uses
  %.not = icmp eq ptr %i.aa, null                 ; 2 uses
  br i1 %.not, label %bb.m, label %bb.l
end_hunk_0
begin_hunk_1_@_Z10storelocalP9Classfile:bb.a
  %i.ac = add i64 %i.ab, 1
  %i.ad = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ac) #10 ; 2 uses
  %i.ae = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ad, ptr noundef nonnull dereferenceable(1) %i.aa) #11 ; 0 uses
  %1 = load ptr, ptr @miptr, align 8, !tbaa !12
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !21
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.y
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !22
end_hunk_1
begin_hunk_2_@_Z10storelocalP9Classfile:bb.a

bb.m:                                             ; preds = %bb.k
  %i.aj = tail call noalias noundef nonnull dereferenceable(7) ptr @_Znam(i64 noundef 7) #10 ; 5 uses
  %2 = load ptr, ptr @miptr, align 8, !tbaa !12
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 88
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = getelementptr inbounds [8 x i8], ptr %4, i64 %i.y
  store ptr %i.aj, ptr %5, align 8, !tbaa !8
  %i.ak = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.aj, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.0) #11 ; 0 uses
  %i.al = load ptr, ptr @miptr, align 8, !tbaa !12
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 112
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !21
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.y ; 3 uses
end_hunk_2
begin_hunk_3_@_Z10storelocalP9Classfile:bb.a
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p, %bb.o, %bb.l
  %.040 = phi ptr [ %i.ad, %bb.l ], [ %i.aj, %bb.o ], [ %i.aj, %bb.p ], [ %i.aj, %bb.m ]
  %.2 = phi i32 [ %i.ai, %bb.l ], [ %.1, %bb.o ], [ 4, %bb.p ], [ %.1, %bb.m ] ; 3 uses
  %i.aq = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #10 ; 7 uses
  %i.ar = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #10
          to label %.noexc unwind label %bb.u     ; 5 uses

end_hunk_3
begin_hunk_4_@_Z10storelocalP9Classfile:bb.a
  store ptr %i.aq, ptr %i.bq, align 8, !tbaa !48
  %i.br = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store ptr %i.bf, ptr %i.br, align 8, !tbaa !49
  br i1 %.not, label %bb.t, label %7

bb.t:                                             ; preds = %bb.s
  %6 = load ptr, ptr @miptr, align 8, !tbaa !12
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !50
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.y
  store i32 %., ptr %i.bu, align 4, !tbaa !4
  br label %7

bb.u:                                             ; preds = %.noexc, %bb.q
  %i.bv = landingpad { ptr, i32 }
end_hunk_4
begin_hunk_5_@_Z10storelocalP9Classfile:bb.a
          cleanup
  br label %bb.aa

7:                                                ; preds = %bb.t, %bb.s
  %8 = load ptr, ptr %i.bf, align 8, !tbaa !44    ; 4 uses
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %10 = load i32, ptr %9, align 8, !tbaa !41
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %bb.w, label %bb.z

bb.w:                                             ; preds = %7
  %i.bx = load ptr, ptr %i.aq, align 8, !tbaa !44
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !41
  %i.ca = icmp eq i32 %i.bz, 10
  br i1 %i.ca, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cb = icmp eq ptr %8, getelementptr inbounds nuw (i8, ptr @std_exps, i64 48)
  %i.cc = icmp eq ptr %8, getelementptr inbounds nuw (i8, ptr @std_exps, i64 72)
  %or.cond = select i1 %i.cb, i1 true, i1 %i.cc
  br i1 %or.cond, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 312
  store ptr %i.cd, ptr %i.bf, align 8, !tbaa !44
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.w, %7
  %i.ce = load ptr, ptr @donestkptr, align 8, !tbaa !45 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %i.cf, ptr @donestkptr, align 8, !tbaa !45
end_hunk_5
begin_hunk_6_@_Z9iinclocalP9Classfile
define dso_local noundef range(i32 0, 2) i32 @_Z9iinclocalP9Classfile(ptr noundef readnone captures(none) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr @currpc, align 4, !tbaa !4 ; 3 uses
  %i.b = add i32 %i.a, -1                         ; 10 uses
  %i.c = add i32 %i.a, 1
  store i32 %i.c, ptr @currpc, align 4, !tbaa !4
  %i.d = load i32, ptr @bufflength, align 4, !tbaa !4 ; 2 uses
end_hunk_6
begin_hunk_7_@_Z9iinclocalP9Classfile:bb.a
bb.s:                                             ; preds = %bb.r
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store i32 3, ptr %i.cv, align 4, !tbaa !40
  %i.cw = getelementptr inbounds nuw i8, ptr %.sink75, i64 16 ; 2 uses
  %1 = load i32, ptr %i.cw, align 8, !tbaa !33
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !33
  %. = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.cy)
  store i32 %., ptr %i.cw, align 8, !tbaa !33
  store ptr %.sink75, ptr %i.co, align 8, !tbaa !47
  br label %bb.v
end_hunk_7
