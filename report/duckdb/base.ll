inline.NumInlined: 129
inline.NumDeleted: 61
begin_hunk_0_@base_block_alloc:bb.a
ehooks_pre_reentrancy.exit.i.i:                   ; preds = %bb.i, %tsd_fetch_impl.exit.i.i.i
  %i.bc = load ptr, ptr %i.an, align 8, !tbaa !46
  %.val.i.i = load i32, ptr %2, align 8, !tbaa !44
  %i.bd = call ptr %i.bc(ptr noundef nonnull %i.an, ptr noundef null, i64 noundef range(i64 0, -2097151) %i.ai, i64 noundef 2097152, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.val.i.i) #10 ; 2 uses
  br i1 %i.aq, label %bb.j, label %tsd_fetch_impl.exit.i27.i.i

bb.j:                                             ; preds = %ehooks_pre_reentrancy.exit.i.i
end_hunk_0
begin_hunk_1_@base_block_alloc:bb.a

malloc_mutex_lock.exit:                           ; preds = %bb.s, %bb.t
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !30, !range !48, !noundef !49
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %base_auto_thp_switch.exit.thread, label %bb.u

end_hunk_1
begin_hunk_2_@base_block_alloc:bb.a
  %.05.i.i = phi ptr [ %i.co, %.preheader59 ], [ %.val17.i, %bb.u ]
  %.0.i.i = phi i64 [ %i.cp, %.preheader59 ], [ 2, %bb.u ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !50 ; 2 uses
  %.not.i.i57 = icmp eq ptr %i.co, null
  %i.cp = add i64 %.0.i.i, 1
  br i1 %.not.i.i57, label %base_get_num_blocks.exit.i, label %.preheader59
end_hunk_2
begin_hunk_3_@base_block_alloc:bb.a
  %.05.i20.i = phi ptr [ %i.cs, %.preheader ], [ %.val17.i, %bb.u ]
  %.0.i21.i = phi i64 [ %i.ct, %.preheader ], [ 2, %bb.u ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.05.i20.i, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !50 ; 2 uses
  %.not.i22.i = icmp eq ptr %i.cs, null
  %i.ct = add i64 %.0.i21.i, 1
  br i1 %.not.i22.i, label %bb.v, label %.preheader
end_hunk_3
begin_hunk_4_@base_block_alloc:bb.a
  %i.de = add i64 %i.dc, %i.dd
  store i64 %i.de, ptr %i.cv, align 8, !tbaa !34
  %i.df = getelementptr inbounds nuw i8, ptr %.03.i, i64 8
  %.0.i58 = load ptr, ptr %i.df, align 8, !tbaa !51 ; 2 uses
  %.not16.i = icmp eq ptr %.0.i58, null
  br i1 %.not16.i, label %base_auto_thp_switch.exit, label %bb.x

base_auto_thp_switch.exit:                        ; preds = %bb.x
  %.pre = load i8, ptr %i.cj, align 8, !tbaa !30, !range !48
  %i.dg = trunc nuw i8 %.pre to i1
  br i1 %i.dg, label %base_auto_thp_switch.exit.thread, label %base_auto_thp_switch.exit.thread66

end_hunk_4
begin_hunk_5_@base_block_alloc:bb.a
  store i32 %.0.i, ptr %3, align 4, !tbaa !3
  store i64 %i.ai, ptr %.0.i55, align 8, !tbaa !17
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.i55, i64 8
  store ptr null, ptr %i.dx, align 8, !tbaa !50
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.i55, i64 16 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i55, i64 144
  %i.ea = add i64 %i.ai, -144
end_hunk_5
begin_hunk_6_@base_block_alloc:bb.a
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.i55, i64 32
  store i64 %i.ea, ptr %i.ef, align 8, !tbaa !15
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.i55, i64 48
  store i64 %i.eb, ptr %i.eg, align 8, !tbaa !52
  %i.eh = and i64 %i.ed, -268435456
  %i.ei = or disjoint i64 %i.eh, 243314687
  store i64 %i.ei, ptr %i.dy, align 8, !tbaa !16
end_hunk_6
begin_hunk_7_@base_unmap:bb.a

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !53
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %ehooks_dalloc.exit.thread, label %bb.i

end_hunk_7
begin_hunk_8_@base_unmap:bb.a
  br label %ehooks_pre_reentrancy.exit.i

ehooks_pre_reentrancy.exit.i:                     ; preds = %bb.l, %tsd_fetch_impl.exit.i.i
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !53
  %.val.i = load i32, ptr %1, align 8, !tbaa !44
  %i.aa = tail call zeroext i1 %i.z(ptr noundef %i.h, ptr noundef %2, i64 noundef %3, i1 noundef zeroext true, i32 noundef %.val.i) #10 ; 2 uses
  br i1 %i.n, label %bb.m, label %tsd_fetch_impl.exit.i15.i

bb.m:                                             ; preds = %ehooks_pre_reentrancy.exit.i
end_hunk_8
begin_hunk_9_@base_unmap:bb.a

bb.q:                                             ; preds = %ehooks_dalloc.exit.thread
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !54
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %ehooks_decommit.exit.thread, label %bb.r

end_hunk_9
begin_hunk_10_@base_unmap:bb.a
  br label %ehooks_pre_reentrancy.exit.i30

ehooks_pre_reentrancy.exit.i30:                   ; preds = %bb.u, %tsd_fetch_impl.exit.i.i29
  %i.bc = load ptr, ptr %i.an, align 8, !tbaa !54
  %.val.i31 = load i32, ptr %1, align 8, !tbaa !44
  %i.bd = tail call zeroext i1 %i.bc(ptr noundef %i.ak, ptr noundef %2, i64 noundef %3, i64 noundef 0, i64 noundef %3, i32 noundef %.val.i31) #10 ; 2 uses
  br i1 %i.aq, label %bb.v, label %tsd_fetch_impl.exit.i17.i

bb.v:                                             ; preds = %ehooks_pre_reentrancy.exit.i30
end_hunk_10
begin_hunk_11_@base_unmap:bb.a

bb.z:                                             ; preds = %ehooks_decommit.exit.thread
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 48 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !55
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %ehooks_purge_forced.exit.thread, label %bb.aa

end_hunk_11
begin_hunk_12_@base_unmap:bb.a
  br label %ehooks_pre_reentrancy.exit.i35

ehooks_pre_reentrancy.exit.i35:                   ; preds = %bb.ad, %tsd_fetch_impl.exit.i.i34
  %i.cf = load ptr, ptr %i.bq, align 8, !tbaa !55
  %.val.i36 = load i32, ptr %1, align 8, !tbaa !44
  %i.cg = tail call zeroext i1 %i.cf(ptr noundef %i.bn, ptr noundef %2, i64 noundef %3, i64 noundef 0, i64 noundef %3, i32 noundef %.val.i36) #10 ; 2 uses
  br i1 %i.bt, label %bb.ae, label %tsd_fetch_impl.exit.i17.i37

bb.ae:                                            ; preds = %ehooks_pre_reentrancy.exit.i35
end_hunk_12
begin_hunk_13_@base_unmap:bb.a

bb.ai:                                            ; preds = %ehooks_purge_forced.exit.thread
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 40 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !56
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %ehooks_purge_lazy.exit, label %bb.aj

end_hunk_13
begin_hunk_14_@base_unmap:bb.a
  br label %ehooks_pre_reentrancy.exit.i42

ehooks_pre_reentrancy.exit.i42:                   ; preds = %bb.am, %tsd_fetch_impl.exit.i.i41
  %i.di = load ptr, ptr %i.ct, align 8, !tbaa !56
  %.val.i43 = load i32, ptr %1, align 8, !tbaa !44
  %i.dj = tail call zeroext i1 %i.di(ptr noundef %i.cq, ptr noundef %2, i64 noundef %3, i64 noundef 0, i64 noundef %3, i32 noundef %.val.i43) #10 ; 0 uses
  br i1 %i.cw, label %bb.an, label %tsd_fetch_impl.exit.i17.i44

bb.an:                                            ; preds = %ehooks_pre_reentrancy.exit.i42
end_hunk_14
begin_hunk_15_@base_extent_bump_alloc_post:bb.a

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.au = load i8, ptr %i.at, align 8, !tbaa !30, !range !48, !noundef !49
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.k, label %bb.l

end_hunk_15
begin_hunk_16_@duckdb_je_base_delete:bb.a
bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.c, %bb.a ], [ %i.e, %bb.b ]  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50   ; 2 uses
  %i.f = load i64, ptr %.0, align 8, !tbaa !17
  tail call fastcc void @base_unmap(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %.0, i64 noundef %i.f)
  %.not = icmp eq ptr %i.e, null
end_hunk_16
begin_hunk_17_@base_alloc_impl:bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !29
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !50
  store ptr %i.ax, ptr %i.bg, align 8, !tbaa !29
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 3896 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !31
end_hunk_17
begin_hunk_18_@base_alloc_impl:bb.a

bb.o:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !30, !range !48, !noundef !49
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.p, label %bb.q

end_hunk_18
begin_hunk_19_@base_alloc_impl:bb.a

bb.r:                                             ; preds = %.loopexit
  %i.cq = getelementptr i8, ptr %.2.ph, i64 32
  %.2.val = load i64, ptr %i.cq, align 8, !tbaa !52
  store i64 %.2.val, ptr %4, align 8, !tbaa !10
  br label %bb.s

end_hunk_19
begin_hunk_20_@duckdb_je_base_alloc_edata:bb.a
bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.b, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 3904 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !57
  %i.h = add i64 %i.g, %i.e
  store i64 %i.h, ptr %i.f, align 8, !tbaa !57
  %i.i = load i64, ptr %i.a, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !15
end_hunk_20
begin_hunk_21_@duckdb_je_base_alloc_rtree:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 3912 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !58
  %i.g = add i64 %i.f, %i.d
  store i64 %i.g, ptr %i.e, align 8, !tbaa !58
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
end_hunk_21
begin_hunk_22_@duckdb_je_b0_alloc_tcache_stack:bb.a
base_alloc_base_edata.exit:                       ; preds = %bb.e
  %i.y = load i64, ptr %i.b, align 8, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 3904 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !57
  %i.ab = add i64 %i.aa, %i.y
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !57
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !10
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !15
end_hunk_22
begin_hunk_23_@duckdb_je_b0_alloc_tcache_stack:bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i1923, i64 16
  store i64 %.0.i, ptr %i.be, align 8, !tbaa !15
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i1923, i64 32
  store i64 %i.bb, ptr %i.bf, align 8, !tbaa !52
  %i.bg = and i64 %i.bc, -268435456
  %i.bh = or disjoint i64 %i.bg, 243380223
  store i64 %i.bh, ptr %.0.i1923, align 8, !tbaa !16
  store ptr %.0.i1923, ptr %i.az, align 8, !tbaa !59
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  br label %bb.l

end_hunk_23
begin_hunk_24_@duckdb_je_b0_dalloc_tcache_stack
define void @duckdb_je_b0_dalloc_tcache_stack(ptr noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val11 = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.d = getelementptr i8, ptr %i.b, i64 16       ; 2 uses
end_hunk_24
begin_hunk_25_@duckdb_je_base_stats_get:bb.a
  %i.n = load i64, ptr %i.m, align 8, !tbaa !31
  store i64 %i.n, ptr %2, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 3904
  %i.p = load i64, ptr %i.o, align 8, !tbaa !57
  store i64 %i.p, ptr %3, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 3912
  %i.r = load i64, ptr %i.q, align 8, !tbaa !58
  store i64 %i.r, ptr %4, align 8, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 3920
  %i.t = load i64, ptr %i.s, align 8, !tbaa !32
end_hunk_25
begin_hunk_26_@llvm.usub.sat.i32
!45 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!46 = !{!47, !9, i64 0}
!47 = !{!"extent_hooks_s", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64}
!48 = !{i8 0, i8 2}
!49 = !{}
!50 = !{!18, !19, i64 8}
!51 = !{!19, !19, i64 0}
!52 = !{!13, !11, i64 32}
!53 = !{!47, !9, i64 8}
!54 = !{!47, !9, i64 32}
!55 = !{!47, !9, i64 48}
!56 = !{!47, !9, i64 40}
!57 = !{!21, !11, i64 3904}
!58 = !{!21, !11, i64 3912}
!59 = !{!60, !60, i64 0}
!60 = !{!"p1 _ZTS7edata_s", !9, i64 0}
end_hunk_26
