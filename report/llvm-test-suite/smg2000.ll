inline.NumInlined: 16
begin_hunk_0_@main:bb.a

.preheader513.lr.ph:                              ; preds = %._crit_edge623
  %i.md = fneg double %.0434536                   ; 3 uses
  %2 = fneg double %.0432534                      ; 2 uses
  %3 = fneg double %.0430532
  %i.me = fadd double %.0434536, %.0432534        ; 2 uses
  %i.mf = fadd double %i.me, %.0430532
  %i.mg = fmul double %i.mf, 2.000000e+00
end_hunk_0
begin_hunk_1_@main:bb.a

.preheader513.preheader:                          ; preds = %.preheader513.lr.ph
  %i.mj = zext i32 %i.lk to i64                   ; 13 uses
  %min.iters.check859 = icmp ult i32 %i.lk, 8     ; 4 uses
  %n.vec901 = and i64 %i.mj, 4294967288           ; 3 uses
  %cmp.n909 = icmp eq i64 %n.vec901, %i.mj
end_hunk_1
begin_hunk_2_@main:bb.a
  %indvars.iv757 = phi i64 [ 0, %.preheader513.preheader ], [ %indvars.iv.next758, %._crit_edge627 ] ; 2 uses
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %indvars.iv757 ; 6 uses
  %i.ml = getelementptr i8, ptr %i.mk, i64 8      ; 3 uses
  %i.mm = getelementptr i8, ptr %i.mk, i64 16     ; 2 uses
  %i.mn = getelementptr i8, ptr %i.mk, i64 24
  switch i32 %.0423528, label %.lr.ph626.split.preheader [
    i32 1, label %.lr.ph626.split.us.preheader
end_hunk_2
begin_hunk_3_@main:bb.a

._crit_edge627.split.split.us:                    ; preds = %.lr.ph626.split.us628, %middle.block894
  store double %i.md, ptr %i.mk, align 8, !tbaa !44
  store double %2, ptr %i.ml, align 8, !tbaa !44
  store double %i.mh, ptr %i.mm, align 8, !tbaa !44
  br label %._crit_edge627

end_hunk_3
begin_hunk_4_@main:bb.a

._crit_edge627.split.split.split.us:              ; preds = %.lr.ph626.split.us631, %middle.block908
  store double %i.md, ptr %i.mk, align 8, !tbaa !44
  store double %2, ptr %i.ml, align 8, !tbaa !44
  store double %3, ptr %i.mm, align 8, !tbaa !44
  store double %i.mg, ptr %i.mn, align 8, !tbaa !44
  br label %._crit_edge627

end_hunk_4
