inline.NumInlined: 27
inline.NumDeleted: 13
begin_hunk_0_@duckdb_je_buf_writer_cb:bb.a
  %i.p = load ptr, ptr %0, align 8, !tbaa !7
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !25
  tail call void %i.p(ptr noundef %i.q, ptr noundef %i.r) #8
  store i64 0, ptr %i.h, align 8, !tbaa !28
  %.pre31 = load i64, ptr %i.i, align 8, !tbaa !27
  %.pre32 = load ptr, ptr %i.a, align 8, !tbaa !25
end_hunk_0
begin_hunk_1_@duckdb_je_buf_writer_terminate:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !25
  tail call void %i.g(ptr noundef %i.i, ptr noundef %i.j) #8
  store i64 0, ptr %i.d, align 8, !tbaa !28
  br label %duckdb_je_buf_writer_flush.exit

duckdb_je_buf_writer_flush.exit:                  ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load i8, ptr %i.k, align 8, !tbaa !26, !range !29, !noundef !30
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %buf_writer_free_internal_buf.exit

end_hunk_1
begin_hunk_2_@duckdb_je_buf_writer_pipe:bb.a
  %i.s = load ptr, ptr %.017, align 8, !tbaa !7
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !13
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !25
  tail call void %i.s(ptr noundef %i.t, ptr noundef %i.u) #8
  store i64 0, ptr %i.i, align 8, !tbaa !28
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !25
  %.pre22 = load i64, ptr %i.j, align 8, !tbaa !27
end_hunk_2
begin_hunk_3_@duckdb_je_buf_writer_pipe:bb.a
  %i.ag = load ptr, ptr %.017, align 8, !tbaa !7
  %i.ah = load ptr, ptr %i.l, align 8, !tbaa !13
  %i.ai = load ptr, ptr %i.k, align 8, !tbaa !25
  tail call void %i.ag(ptr noundef %i.ah, ptr noundef %i.ai) #8
  store i64 0, ptr %i.i, align 8, !tbaa !28
  br label %duckdb_je_buf_writer_flush.exit19

end_hunk_3
begin_hunk_4_@rtree_read:bb.a
  %i.b = and i64 %i.a, 15
  %i.c = and i64 %3, -1073741824                  ; 11 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.b ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !31   ; 3 uses
  %i.f = icmp eq i64 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.i = lshr i64 %3, 12
  %i.j = and i64 %i.i, 262143
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
end_hunk_4
begin_hunk_5_@rtree_read:bb.a

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !31
  %i.n = icmp eq i64 %i.m, %i.c
  br i1 %i.n, label %bb.d, label %.preheader.preheader, !prof !14

.preheader.preheader:                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !31
  %i.q = icmp eq i64 %i.p, %i.c
  br i1 %i.q, label %bb.f, label %.preheader.1, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34   ; 2 uses
  store i64 %i.e, ptr %i.l, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !34
  store ptr %i.u, ptr %i.r, align 8, !tbaa !34
  store i64 %i.c, ptr %i.d, align 8, !tbaa !31
  store ptr %i.s, ptr %i.t, align 8, !tbaa !34
  %i.v = lshr i64 %3, 12
  %i.w = and i64 %i.v, 262143
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.w
end_hunk_5
begin_hunk_6_@rtree_read:bb.a

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !31
  %i.aa = icmp eq i64 %i.z, %i.c
  br i1 %i.aa, label %bb.f, label %.preheader.2, !prof !14

.preheader.2:                                     ; preds = %.preheader.1
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !31
  %i.ad = icmp eq i64 %i.ac, %i.c
  br i1 %i.ad, label %bb.f, label %.preheader.3, !prof !14

.preheader.3:                                     ; preds = %.preheader.2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !31
  %i.ag = icmp eq i64 %i.af, %i.c
  br i1 %i.ag, label %bb.f, label %.preheader.4, !prof !14

.preheader.4:                                     ; preds = %.preheader.3
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 336 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !31
  %i.aj = icmp eq i64 %i.ai, %i.c
  br i1 %i.aj, label %bb.f, label %.preheader.5, !prof !14

.preheader.5:                                     ; preds = %.preheader.4
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 352 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !31
  %i.am = icmp eq i64 %i.al, %i.c
  br i1 %i.am, label %bb.f, label %.preheader.6, !prof !14

.preheader.6:                                     ; preds = %.preheader.5
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 368 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !31
  %i.ap = icmp eq i64 %i.ao, %i.c
  br i1 %i.ap, label %bb.f, label %bb.e, !prof !14

end_hunk_6
begin_hunk_7_@rtree_read:bb.a
bb.f:                                             ; preds = %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi ptr [ %i.o, %.preheader.preheader ], [ %i.y, %.preheader.1 ], [ %i.ab, %.preheader.2 ], [ %i.ae, %.preheader.3 ], [ %i.ah, %.preheader.4 ], [ %i.ak, %.preheader.5 ], [ %i.an, %.preheader.6 ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !34 ; 2 uses
  %i.at = getelementptr i8, ptr %.lcssa, i64 -16  ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !31
  store i64 %i.au, ptr %.lcssa, align 8, !tbaa !31
  %i.av = getelementptr i8, ptr %.lcssa, i64 -8   ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !34
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !34
  store i64 %i.e, ptr %i.at, align 8, !tbaa !31
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !34
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !34
  store i64 %i.c, ptr %i.d, align 8, !tbaa !31
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !34
  %i.az = lshr i64 %3, 12
  %i.ba = and i64 %i.az, 262143
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ba
end_hunk_7
begin_hunk_8_@rtree_read:bb.a

rtree_leaf_elm_lookup.exit:                       ; preds = %bb.f, %bb.b, %bb.d, %bb.e
  %.1.i = phi ptr [ %i.k, %bb.b ], [ %i.x, %bb.d ], [ %i.aq, %bb.e ], [ %i.bb, %bb.f ]
  %i.bc = load atomic ptr, ptr %.1.i monotonic, align 8, !noalias !35
  %i.bd = ptrtoint ptr %i.bc to i64               ; 4 uses
  %i.be = lshr i64 %i.bd, 48
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !38, !alias.scope !39
  %i.bh = trunc i64 %i.bd to i8                   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.bj = and i8 %i.bh, 1
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !42, !alias.scope !39
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = lshr i8 %i.bh, 1
  %i.bm = and i8 %i.bl, 1
  store i8 %i.bm, ptr %i.bk, align 8, !tbaa !43, !alias.scope !39
  %i.bn = trunc i64 %i.bd to i32
  %i.bo = lshr i32 %i.bn, 2
  %i.bp = and i32 %i.bo, 7
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !44, !alias.scope !39
  %i.br = shl i64 %i.bd, 16
  %i.bs = ashr exact i64 %i.br, 16
  %i.bt = and i64 %i.bs, -128
  %i.bu = inttoptr i64 %i.bt to ptr
  store ptr %i.bu, ptr %0, align 8, !tbaa !17, !alias.scope !39
  ret void
}

end_hunk_8
begin_hunk_9_@rtree_metadata_read:bb.a
  %i.b = and i64 %i.a, 15
  %i.c = and i64 %2, -1073741824                  ; 11 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.b ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !31   ; 3 uses
  %i.f = icmp eq i64 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.i = lshr i64 %2, 12
  %i.j = and i64 %i.i, 262143
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
end_hunk_9
begin_hunk_10_@rtree_metadata_read:bb.a

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !31
  %i.n = icmp eq i64 %i.m, %i.c
  br i1 %i.n, label %bb.d, label %.preheader.preheader, !prof !14

.preheader.preheader:                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !31
  %i.q = icmp eq i64 %i.p, %i.c
  br i1 %i.q, label %bb.f, label %.preheader.1, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34   ; 2 uses
  store i64 %i.e, ptr %i.l, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !34
  store ptr %i.u, ptr %i.r, align 8, !tbaa !34
  store i64 %i.c, ptr %i.d, align 8, !tbaa !31
  store ptr %i.s, ptr %i.t, align 8, !tbaa !34
  %i.v = lshr i64 %2, 12
  %i.w = and i64 %i.v, 262143
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.w
end_hunk_10
begin_hunk_11_@rtree_metadata_read:bb.a

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !31
  %i.aa = icmp eq i64 %i.z, %i.c
  br i1 %i.aa, label %bb.f, label %.preheader.2, !prof !14

.preheader.2:                                     ; preds = %.preheader.1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !31
  %i.ad = icmp eq i64 %i.ac, %i.c
  br i1 %i.ad, label %bb.f, label %.preheader.3, !prof !14

.preheader.3:                                     ; preds = %.preheader.2
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !31
  %i.ag = icmp eq i64 %i.af, %i.c
  br i1 %i.ag, label %bb.f, label %.preheader.4, !prof !14

.preheader.4:                                     ; preds = %.preheader.3
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !31
  %i.aj = icmp eq i64 %i.ai, %i.c
  br i1 %i.aj, label %bb.f, label %.preheader.5, !prof !14

.preheader.5:                                     ; preds = %.preheader.4
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !31
  %i.am = icmp eq i64 %i.al, %i.c
  br i1 %i.am, label %bb.f, label %.preheader.6, !prof !14

.preheader.6:                                     ; preds = %.preheader.5
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !31
  %i.ap = icmp eq i64 %i.ao, %i.c
  br i1 %i.ap, label %bb.f, label %bb.e, !prof !14

end_hunk_11
begin_hunk_12_@rtree_metadata_read:bb.a
bb.f:                                             ; preds = %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi ptr [ %i.o, %.preheader.preheader ], [ %i.y, %.preheader.1 ], [ %i.ab, %.preheader.2 ], [ %i.ae, %.preheader.3 ], [ %i.ah, %.preheader.4 ], [ %i.ak, %.preheader.5 ], [ %i.an, %.preheader.6 ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !34 ; 2 uses
  %i.at = getelementptr i8, ptr %.lcssa, i64 -16  ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !31
  store i64 %i.au, ptr %.lcssa, align 8, !tbaa !31
  %i.av = getelementptr i8, ptr %.lcssa, i64 -8   ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !34
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !34
  store i64 %i.e, ptr %i.at, align 8, !tbaa !31
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !34
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !34
  store i64 %i.c, ptr %i.d, align 8, !tbaa !31
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !34
  %i.az = lshr i64 %2, 12
  %i.ba = and i64 %i.az, 262143
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ba
end_hunk_12
begin_hunk_13_@rtree_metadata_read:bb.a

rtree_leaf_elm_lookup.exit:                       ; preds = %bb.f, %bb.b, %bb.d, %bb.e
  %.1.i = phi ptr [ %i.k, %bb.b ], [ %i.x, %bb.d ], [ %i.aq, %bb.e ], [ %i.bb, %bb.f ]
  %i.bc = load atomic ptr, ptr %.1.i monotonic, align 8, !noalias !45
  %i.bd = ptrtoint ptr %i.bc to i64               ; 3 uses
  %i.be = lshr i64 %i.bd, 48
  %i.bf = trunc i64 %i.bd to i8                   ; 2 uses
end_hunk_13
begin_hunk_14_@llvm.umin.i64
!26 = !{!8, !12, i64 40}
!27 = !{!8, !11, i64 24}
!28 = !{!8, !11, i64 32}
!29 = !{i8 0, i8 2}
!30 = !{}
!31 = !{!32, !11, i64 0}
!32 = !{!"rtree_ctx_cache_elm_s", !11, i64 0, !33, i64 8}
!33 = !{!"p1 _ZTS16rtree_leaf_elm_s", !9, i64 0}
!34 = !{!32, !33, i64 8}
!35 = !{!36}
!36 = distinct !{!36, !37, !"rtree_leaf_elm_read: argument 0"}
!37 = distinct !{!37, !"rtree_leaf_elm_read"}
!38 = !{!18, !4, i64 8}
!39 = !{!40}
!40 = distinct !{!40, !41, !"rtree_leaf_elm_bits_decode: argument 0"}
!41 = distinct !{!41, !"rtree_leaf_elm_bits_decode"}
!42 = !{!18, !12, i64 17}
!43 = !{!18, !12, i64 16}
!44 = !{!18, !4, i64 12}
!45 = !{!46}
!46 = distinct !{!46, !47, !"rtree_leaf_elm_read: argument 0"}
!47 = distinct !{!47, !"rtree_leaf_elm_read"}
end_hunk_14
