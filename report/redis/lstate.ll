begin_hunk_0_@lua_newstate:bb.a
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !57
  %i.br = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !58
  %i.bt = tail call ptr %i.bq(ptr noundef %i.bs, ptr noundef nonnull %i.a, i64 noundef 616, i64 noundef 0) #3 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
end_hunk_0
begin_hunk_1_@f_luaopen:bb.a
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !67
  %i.ai = shl i64 %i.ah, 2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !76
  ret void
}

end_hunk_1
begin_hunk_2_@lua_close:bb.a
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !41   ; 2 uses
  store ptr %i.p, ptr %i.k, align 8, !tbaa !39
  store ptr %i.p, ptr %i.l, align 8, !tbaa !42
  store i16 0, ptr %i.m, align 2, !tbaa !77
  store i16 0, ptr %i.n, align 8, !tbaa !78
  %i.q = tail call i32 @luaD_rawrunprotected(ptr noundef nonnull %i.d, ptr noundef nonnull @callallgcTM, ptr noundef null) #3
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !79

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
end_hunk_2
begin_hunk_3_@lua_close:bb.a
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !57
  %i.au = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !58
  %i.aw = tail call ptr %i.at(ptr noundef %i.av, ptr noundef nonnull %i.d, i64 noundef 616, i64 noundef 0) #3 ; 0 uses
  ret void
}

end_hunk_3
begin_hunk_4_@llvm.memset.p0.i64
!73 = !{!48, !50, i64 0}
!74 = !{!48, !5, i64 12}
!75 = !{!48, !19, i64 104}
!76 = !{!48, !19, i64 112}
!77 = !{!9, !16, i64 98}
!78 = !{!9, !16, i64 96}
!79 = distinct !{!79, !80}
!80 = !{!"llvm.loop.mustprogress"}
end_hunk_4
