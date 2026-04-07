begin_hunk_0_@luaD_precall:bb.a
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  store ptr %i.iw, ptr %i.ix, align 8, !tbaa !52
  store i8 0, ptr %i.hx, align 1, !tbaa !43
  call void %i.hw(ptr noundef nonnull %0, ptr noundef nonnull %4) #9
  store i8 1, ptr %i.hx, align 1, !tbaa !43
  %i.iy = load ptr, ptr %i.ap, align 8, !tbaa !47
  %i.iz = getelementptr inbounds i8, ptr %i.iy, i64 %i.ic ; 2 uses
end_hunk_0
begin_hunk_1_@luaD_precall:bb.a
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  store ptr %i.me, ptr %i.mf, align 8, !tbaa !52
  store i8 0, ptr %i.le, align 1, !tbaa !43
  call void %i.ld(ptr noundef nonnull %0, ptr noundef nonnull %3) #9
  store i8 1, ptr %i.le, align 1, !tbaa !43
  %i.mg = load ptr, ptr %i.ap, align 8, !tbaa !47 ; 2 uses
  %i.mh = getelementptr inbounds i8, ptr %i.mg, i64 %i.lk
end_hunk_1
begin_hunk_2_@luaD_poscall:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !52
  store i8 0, ptr %i.h, align 1, !tbaa !43
  call void %i.g(ptr noundef nonnull %0, ptr noundef nonnull %3) #9
  store i8 1, ptr %i.h, align 1, !tbaa !43
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !47  ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.t
end_hunk_2
begin_hunk_3_@luaD_poscall:bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !52
  store i8 0, ptr %i.bf, align 1, !tbaa !43
  call void %i.br(ptr noundef nonnull %0, ptr noundef nonnull %2) #9
  store i8 1, ptr %i.bf, align 1, !tbaa !43
  %i.cm = load ptr, ptr %i.d, align 8, !tbaa !47  ; 3 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %i.ca
end_hunk_3
begin_hunk_4_@luaD_poscall:bb.a
  %i.ct = phi ptr [ %i.bn, %bb.h ], [ %i.bn, %bb.i ], [ %i.co, %bb.l ] ; 2 uses
  %i.cu = and i8 %i.cr, 2
  %.not8.i = icmp eq i8 %i.cu, 0
  br i1 %.not8.i, label %callrethooks.exit, label %bb.g, !llvm.loop !88

callrethooks.exit:                                ; preds = %bb.g, %luaD_callhook.exit16.i, %luaD_callhook.exit.i, %.preheader.i
  %i.cv = phi ptr [ %i.ax, %luaD_callhook.exit.i ], [ %i.ax, %.preheader.i ], [ %i.bn, %bb.g ], [ %i.ct, %luaD_callhook.exit16.i ]
end_hunk_4
begin_hunk_5_@luaD_poscall:bb.a
  %i.dw = add nsw i32 %.02731, -1                 ; 2 uses
  %.not29 = icmp eq i32 %i.dw, 0
  %indvar.next = add i32 %indvar, 1
  br i1 %.not29, label %._crit_edge, label %.lr.ph, !llvm.loop !89

.critedge:                                        ; preds = %.lr.ph
  %i.dx = icmp sgt i32 %.02731, 0
end_hunk_5
begin_hunk_6_@luaD_poscall:bb.a
  store i32 0, ptr %i.ea, align 8, !tbaa !21
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph40.prol.loopexit, label %.lr.ph40.prol, !llvm.loop !90

.lr.ph40.prol.loopexit:                           ; preds = %.lr.ph40.prol, %.lr.ph40.preheader
  %.12639.unr = phi ptr [ %.02532, %.lr.ph40.preheader ], [ %i.dz, %.lr.ph40.prol ]
end_hunk_6
begin_hunk_7_@luaD_poscall:bb.a
  %i.em = getelementptr inbounds nuw i8, ptr %.12639, i64 120
  store i32 0, ptr %i.em, align 8, !tbaa !21
  %i.en = icmp sgt i32 %.12838, 8
  br i1 %i.en, label %.lr.ph40, label %._crit_edge, !llvm.loop !91

._crit_edge:                                      ; preds = %bb.n, %.lr.ph40.prol.loopexit, %.lr.ph40, %bb.m, %.critedge
  %.126.lcssa = phi ptr [ %.02532, %.critedge ], [ %i.df, %bb.m ], [ %i.el, %.lr.ph40 ], [ %.lcssa.unr, %.lr.ph40.prol.loopexit ], [ %i.dr, %bb.n ]
end_hunk_7
begin_hunk_8_@luaD_pcall:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 101 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !92
  store i64 %4, ptr %i.i, align 8, !tbaa !92
  %i.k = tail call i32 @luaD_rawrunprotected(ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 3 uses
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %restore_stack_limit.exit, label %bb.b
end_hunk_8
begin_hunk_9_@luaD_pcall:bb.a
  br label %restore_stack_limit.exit

restore_stack_limit.exit:                         ; preds = %bb.f, %luaD_seterrorobj.exit, %bb.a
  store i64 %i.j, ptr %i.i, align 8, !tbaa !92
  ret i32 %i.k
}

end_hunk_9
begin_hunk_10_@luaD_protectedparser:bb.a
bb.a:
  %3 = alloca %struct.SParser, align 8            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store ptr %1, ptr %3, align 8, !tbaa !93
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %2, ptr %i.a, align 8, !tbaa !96
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !98
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
end_hunk_10
begin_hunk_11_@luaD_protectedparser:bb.a
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.l = load i64, ptr %i.k, align 8, !tbaa !92
  %i.m = call i32 @luaD_pcall(ptr noundef %0, ptr noundef nonnull @f_parser, ptr noundef nonnull %3, i64 noundef %i.j, i64 noundef %i.l)
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !97
  %i.o = load i64, ptr %i.c, align 8, !tbaa !98
  %i.p = call ptr @luaM_realloc_(ptr noundef %0, ptr noundef %i.n, i64 noundef %i.o, i64 noundef 0) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret i32 %i.m
end_hunk_11
begin_hunk_12_@luaD_protectedparser:bb.a
; Function Attrs: nounwind uwtable
define internal void @f_parser(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !93
  %i.b = tail call i32 @luaZ_lookahead(ptr noundef %i.a) #9 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
end_hunk_12
begin_hunk_13_@f_parser:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !93
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !96
  %i.m = tail call ptr @luaY_parser(ptr noundef nonnull %0, ptr noundef %i.i, ptr noundef nonnull %i.j, ptr noundef %i.l) #9 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 112 ; 3 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !99
  %i.p = zext i8 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.s = tail call ptr @luaF_newLclosure(ptr noundef nonnull %0, i32 noundef %i.p, ptr noundef %i.r) #9 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.m, ptr %i.t, align 8, !tbaa !8
  %i.u = load i8, ptr %i.n, align 8, !tbaa !99
  %.not28 = icmp eq i8 %i.u, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph

end_hunk_13
begin_hunk_14_@f_parser:bb.a
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  store ptr %i.w, ptr %i.x, align 8, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = load i8, ptr %i.n, align 8, !tbaa !99
  %i.z = zext i8 %i.y to i64
  %i.aa = icmp samesign ult i64 %indvars.iv.next, %i.z
  br i1 %i.aa, label %bb.d, label %._crit_edge, !llvm.loop !100

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
end_hunk_14
begin_hunk_15_@llvm.assume
!85 = !{!39, !5, i64 32}
!86 = distinct !{!86, !51}
!87 = !{!10, !6, i64 100}
!88 = distinct !{!88, !51}
!89 = distinct !{!89, !51}
!90 = distinct !{!90, !77}
!91 = distinct !{!91, !51}
!92 = !{!10, !20, i64 176}
!93 = !{!94, !95, i64 0}
!94 = !{!"SParser", !95, i64 0, !32, i64 8, !33, i64 32}
!95 = !{!"p1 _ZTS3Zio", !12, i64 0}
!96 = !{!94, !33, i64 32}
!97 = !{!94, !33, i64 8}
!98 = !{!94, !20, i64 24}
!99 = !{!69, !6, i64 112}
!100 = distinct !{!100, !51}
end_hunk_15
