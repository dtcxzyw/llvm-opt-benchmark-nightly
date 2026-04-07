begin_hunk_0_@ckh_try_insert:bb.a
  store ptr %.034.i, ptr %i.br, align 8, !tbaa !44
  store ptr %.035.i, ptr %i.bt, align 8, !tbaa !47
  %i.bv = load ptr, ptr %i.e, align 8, !tbaa !14
  call void %i.bv(ptr noundef %i.bs, ptr noundef nonnull %i.a) #15
  %i.bw = load i64, ptr %i.bk, align 8, !tbaa !18
  %i.bx = load i32, ptr %i.h, align 4, !tbaa !13
  %i.by = zext nneg i32 %i.bx to i64
end_hunk_0
begin_hunk_1_@ckh_isearch:bb.a

bb.b:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.q = call zeroext i1 %i.p(ptr noundef %1, ptr noundef nonnull %i.o) #15
  br i1 %i.q, label %ckh_bucket_search.exit26, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b
end_hunk_1
begin_hunk_2_@ckh_isearch:bb.a

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.w = call zeroext i1 %i.v(ptr noundef %1, ptr noundef nonnull %i.u) #15
  br i1 %i.w, label %ckh_bucket_search.exit26, label %._crit_edge16.i

._crit_edge16.i:                                  ; preds = %bb.d
end_hunk_2
begin_hunk_3_@ckh_isearch:bb.a

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.ac = call zeroext i1 %i.ab(ptr noundef %1, ptr noundef nonnull %i.aa) #15
  br i1 %i.ac, label %ckh_bucket_search.exit26, label %._crit_edge18.i

._crit_edge18.i:                                  ; preds = %bb.f
end_hunk_3
begin_hunk_4_@ckh_isearch:bb.a

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.ai = call zeroext i1 %i.ah(ptr noundef %1, ptr noundef nonnull %i.ag) #15
  %.not = icmp ne i64 %i.k, -4
  %or.cond.not = and i1 %.not, %i.ai
  br i1 %or.cond.not, label %ckh_bucket_search.exit26, label %.ckh_bucket_search.exit.thread29_crit_edge
end_hunk_4
begin_hunk_5_@ckh_isearch:bb.a

bb.i:                                             ; preds = %ckh_bucket_search.exit.thread29
  %i.at = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.au = call zeroext i1 %i.at(ptr noundef %1, ptr noundef nonnull %i.as) #15
  br i1 %i.au, label %ckh_bucket_search.exit26, label %._crit_edge.i16

._crit_edge.i16:                                  ; preds = %bb.i
end_hunk_5
begin_hunk_6_@ckh_isearch:bb.a

bb.k:                                             ; preds = %bb.j
  %i.az = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.ba = call zeroext i1 %i.az(ptr noundef %1, ptr noundef nonnull %i.ay) #15
  br i1 %i.ba, label %ckh_bucket_search.exit26, label %._crit_edge16.i19

._crit_edge16.i19:                                ; preds = %bb.k
end_hunk_6
begin_hunk_7_@ckh_isearch:bb.a

bb.m:                                             ; preds = %bb.l
  %i.bf = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.bg = call zeroext i1 %i.bf(ptr noundef %1, ptr noundef nonnull %i.be) #15
  br i1 %i.bg, label %ckh_bucket_search.exit26, label %._crit_edge18.i22

._crit_edge18.i22:                                ; preds = %bb.m
end_hunk_7
begin_hunk_8_@ckh_isearch:bb.a

bb.o:                                             ; preds = %bb.n
  %i.bl = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.bm = call zeroext i1 %i.bl(ptr noundef %1, ptr noundef nonnull %i.bk) #15
  br i1 %i.bm, label %ckh_bucket_search.exit26, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
end_hunk_8
begin_hunk_9_@rtree_read:bb.a
  %i.b = and i64 %i.a, 15
  %i.c = and i64 %3, -1073741824                  ; 11 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.b ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !48   ; 3 uses
  %i.f = icmp eq i64 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = lshr i64 %3, 12
  %i.j = and i64 %i.i, 262143
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
end_hunk_9
begin_hunk_10_@rtree_read:bb.a

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !48
  %i.n = icmp eq i64 %i.m, %i.c
  br i1 %i.n, label %bb.d, label %.preheader.preheader, !prof !16

.preheader.preheader:                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !48
  %i.q = icmp eq i64 %i.p, %i.c
  br i1 %i.q, label %bb.f, label %.preheader.1, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !51   ; 2 uses
  store i64 %i.e, ptr %i.l, align 8, !tbaa !48
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !51
  store ptr %i.u, ptr %i.r, align 8, !tbaa !51
  store i64 %i.c, ptr %i.d, align 8, !tbaa !48
  store ptr %i.s, ptr %i.t, align 8, !tbaa !51
  %i.v = lshr i64 %3, 12
  %i.w = and i64 %i.v, 262143
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.w
end_hunk_10
begin_hunk_11_@rtree_read:bb.a

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !48
  %i.aa = icmp eq i64 %i.z, %i.c
  br i1 %i.aa, label %bb.f, label %.preheader.2, !prof !16

.preheader.2:                                     ; preds = %.preheader.1
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !48
  %i.ad = icmp eq i64 %i.ac, %i.c
  br i1 %i.ad, label %bb.f, label %.preheader.3, !prof !16

.preheader.3:                                     ; preds = %.preheader.2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !48
  %i.ag = icmp eq i64 %i.af, %i.c
  br i1 %i.ag, label %bb.f, label %.preheader.4, !prof !16

.preheader.4:                                     ; preds = %.preheader.3
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 336 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !48
  %i.aj = icmp eq i64 %i.ai, %i.c
  br i1 %i.aj, label %bb.f, label %.preheader.5, !prof !16

.preheader.5:                                     ; preds = %.preheader.4
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 352 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !48
  %i.am = icmp eq i64 %i.al, %i.c
  br i1 %i.am, label %bb.f, label %.preheader.6, !prof !16

.preheader.6:                                     ; preds = %.preheader.5
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 368 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !48
  %i.ap = icmp eq i64 %i.ao, %i.c
  br i1 %i.ap, label %bb.f, label %bb.e, !prof !16

end_hunk_11
begin_hunk_12_@rtree_read:bb.a
bb.f:                                             ; preds = %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi ptr [ %i.o, %.preheader.preheader ], [ %i.y, %.preheader.1 ], [ %i.ab, %.preheader.2 ], [ %i.ae, %.preheader.3 ], [ %i.ah, %.preheader.4 ], [ %i.ak, %.preheader.5 ], [ %i.an, %.preheader.6 ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !51 ; 2 uses
  %i.at = getelementptr i8, ptr %.lcssa, i64 -16  ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !48
  store i64 %i.au, ptr %.lcssa, align 8, !tbaa !48
  %i.av = getelementptr i8, ptr %.lcssa, i64 -8   ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !51
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !51
  store i64 %i.e, ptr %i.at, align 8, !tbaa !48
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !51
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !51
  store i64 %i.c, ptr %i.d, align 8, !tbaa !48
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !51
  %i.az = lshr i64 %3, 12
  %i.ba = and i64 %i.az, 262143
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ba
end_hunk_12
begin_hunk_13_@rtree_read:bb.a

rtree_leaf_elm_lookup.exit:                       ; preds = %bb.f, %bb.b, %bb.d, %bb.e
  %.1.i = phi ptr [ %i.k, %bb.b ], [ %i.x, %bb.d ], [ %i.aq, %bb.e ], [ %i.bb, %bb.f ]
  %i.bc = load atomic ptr, ptr %.1.i monotonic, align 8, !noalias !52
  %i.bd = ptrtoint ptr %i.bc to i64               ; 4 uses
  %i.be = lshr i64 %i.bd, 48
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !55, !alias.scope !56
  %i.bh = trunc i64 %i.bd to i8                   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.bj = and i8 %i.bh, 1
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !59, !alias.scope !56
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = lshr i8 %i.bh, 1
  %i.bm = and i8 %i.bl, 1
  store i8 %i.bm, ptr %i.bk, align 8, !tbaa !60, !alias.scope !56
  %i.bn = trunc i64 %i.bd to i32
  %i.bo = lshr i32 %i.bn, 2
  %i.bp = and i32 %i.bo, 7
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !61, !alias.scope !56
  %i.br = shl i64 %i.bd, 16
  %i.bs = ashr exact i64 %i.br, 16
  %i.bt = and i64 %i.bs, -128
  %i.bu = inttoptr i64 %i.bt to ptr
  store ptr %i.bu, ptr %0, align 8, !tbaa !36, !alias.scope !56
  ret void
}

end_hunk_13
begin_hunk_14_@rtree_metadata_read:bb.a
  %i.b = and i64 %i.a, 15
  %i.c = and i64 %2, -1073741824                  ; 11 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.b ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !48   ; 3 uses
  %i.f = icmp eq i64 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = lshr i64 %2, 12
  %i.j = and i64 %i.i, 262143
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
end_hunk_14
begin_hunk_15_@rtree_metadata_read:bb.a

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !48
  %i.n = icmp eq i64 %i.m, %i.c
  br i1 %i.n, label %bb.d, label %.preheader.preheader, !prof !16

.preheader.preheader:                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !48
  %i.q = icmp eq i64 %i.p, %i.c
  br i1 %i.q, label %bb.f, label %.preheader.1, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !51   ; 2 uses
  store i64 %i.e, ptr %i.l, align 8, !tbaa !48
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !51
  store ptr %i.u, ptr %i.r, align 8, !tbaa !51
  store i64 %i.c, ptr %i.d, align 8, !tbaa !48
  store ptr %i.s, ptr %i.t, align 8, !tbaa !51
  %i.v = lshr i64 %2, 12
  %i.w = and i64 %i.v, 262143
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.w
end_hunk_15
begin_hunk_16_@rtree_metadata_read:bb.a

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !48
  %i.aa = icmp eq i64 %i.z, %i.c
  br i1 %i.aa, label %bb.f, label %.preheader.2, !prof !16

.preheader.2:                                     ; preds = %.preheader.1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !48
  %i.ad = icmp eq i64 %i.ac, %i.c
  br i1 %i.ad, label %bb.f, label %.preheader.3, !prof !16

.preheader.3:                                     ; preds = %.preheader.2
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !48
  %i.ag = icmp eq i64 %i.af, %i.c
  br i1 %i.ag, label %bb.f, label %.preheader.4, !prof !16

.preheader.4:                                     ; preds = %.preheader.3
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !48
  %i.aj = icmp eq i64 %i.ai, %i.c
  br i1 %i.aj, label %bb.f, label %.preheader.5, !prof !16

.preheader.5:                                     ; preds = %.preheader.4
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !48
  %i.am = icmp eq i64 %i.al, %i.c
  br i1 %i.am, label %bb.f, label %.preheader.6, !prof !16

.preheader.6:                                     ; preds = %.preheader.5
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !48
  %i.ap = icmp eq i64 %i.ao, %i.c
  br i1 %i.ap, label %bb.f, label %bb.e, !prof !16

end_hunk_16
begin_hunk_17_@rtree_metadata_read:bb.a
bb.f:                                             ; preds = %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi ptr [ %i.o, %.preheader.preheader ], [ %i.y, %.preheader.1 ], [ %i.ab, %.preheader.2 ], [ %i.ae, %.preheader.3 ], [ %i.ah, %.preheader.4 ], [ %i.ak, %.preheader.5 ], [ %i.an, %.preheader.6 ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !51 ; 2 uses
  %i.at = getelementptr i8, ptr %.lcssa, i64 -16  ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !48
  store i64 %i.au, ptr %.lcssa, align 8, !tbaa !48
  %i.av = getelementptr i8, ptr %.lcssa, i64 -8   ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !51
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !51
  store i64 %i.e, ptr %i.at, align 8, !tbaa !48
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !51
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !51
  store i64 %i.c, ptr %i.d, align 8, !tbaa !48
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !51
  %i.az = lshr i64 %2, 12
  %i.ba = and i64 %i.az, 262143
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ba
end_hunk_17
begin_hunk_18_@rtree_metadata_read:bb.a

rtree_leaf_elm_lookup.exit:                       ; preds = %bb.f, %bb.b, %bb.d, %bb.e
  %.1.i = phi ptr [ %i.k, %bb.b ], [ %i.x, %bb.d ], [ %i.aq, %bb.e ], [ %i.bb, %bb.f ]
  %i.bc = load atomic ptr, ptr %.1.i monotonic, align 8, !noalias !62
  %i.bd = ptrtoint ptr %i.bc to i64               ; 3 uses
  %i.be = lshr i64 %i.bd, 48
  %i.bf = trunc i64 %i.bd to i8                   ; 2 uses
end_hunk_18
begin_hunk_19_@llvm.fshl.i64
!45 = !{!"", !10, i64 0, !10, i64 8}
!46 = !{!10, !10, i64 0}
!47 = !{!45, !10, i64 8}
!48 = !{!49, !9, i64 0}
!49 = !{!"rtree_ctx_cache_elm_s", !9, i64 0, !50, i64 8}
!50 = !{!"p1 _ZTS16rtree_leaf_elm_s", !10, i64 0}
!51 = !{!49, !50, i64 8}
!52 = !{!53}
!53 = distinct !{!53, !54, !"rtree_leaf_elm_read: argument 0"}
!54 = distinct !{!54, !"rtree_leaf_elm_read"}
!55 = !{!37, !4, i64 8}
!56 = !{!57}
!57 = distinct !{!57, !58, !"rtree_leaf_elm_bits_decode: argument 0"}
!58 = distinct !{!58, !"rtree_leaf_elm_bits_decode"}
!59 = !{!37, !24, i64 17}
!60 = !{!37, !24, i64 16}
!61 = !{!37, !4, i64 12}
!62 = !{!63}
!63 = distinct !{!63, !64, !"rtree_leaf_elm_read: argument 0"}
!64 = distinct !{!64, !"rtree_leaf_elm_read"}
end_hunk_19
