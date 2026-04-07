begin_hunk_0_@duckdb_je_ecache_alloc_grow:tsdn_witness_tsdp_get.exit
ehooks_pre_reentrancy.exit.i.i.i:                 ; preds = %bb.n, %tsd_fetch_impl.exit.i.i.i.i
  %i.bc = load ptr, ptr %i.ao, align 8, !tbaa !52
  %.val.i.i.i = load i32, ptr %2, align 8, !tbaa !48
  %i.bd = call ptr %i.bc(ptr noundef nonnull %i.ao, ptr noundef null, i64 noundef %storemerge.i.i.i, i64 noundef 4096, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.val.i.i.i) #9 ; 2 uses
  br i1 %i.d, label %bb.o, label %tsd_fetch_impl.exit.i27.i.i.i

bb.o:                                             ; preds = %ehooks_pre_reentrancy.exit.i.i.i
end_hunk_0
begin_hunk_1_@duckdb_je_ecache_alloc_grow:tsdn_witness_tsdp_get.exit

bb.s:                                             ; preds = %ehooks_alloc.exit.i.i
  %i.bp = getelementptr i8, ptr %1, i64 58364
  %.val79.i.i = load i32, ptr %i.bp, align 4, !tbaa !54
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 62232
  %i.br = atomicrmw add ptr %i.bq, i64 1 monotonic, align 8
  %i.bs = load i8, ptr %i.a, align 1, !tbaa !7, !range !38, !noundef !39
end_hunk_1
begin_hunk_2_@duckdb_je_ecache_alloc_grow:tsdn_witness_tsdp_get.exit
  %i.ca = or i64 %i.bz, %storemerge.i.i.i
  store i64 %i.ca, ptr %i.bx, align 8, !tbaa !36
  %i.cb = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store i64 %i.br, ptr %i.cb, align 8, !tbaa !55
  %i.cc = and i32 %.val79.i.i, -268431361
  %.masked.masked.i.i.i = zext i32 %i.cc to i64
  %i.cd = zext nneg i8 %i.bs to i64
end_hunk_2
begin_hunk_3_@duckdb_je_ecache_alloc_grow:tsdn_witness_tsdp_get.exit
  %i.dp = add i32 %i.ae, 1
  %i.dq = add i32 %i.dp, %i.do
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 58404
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !56
  %storemerge.i81.i.i = call i32 @llvm.umin.i32(i32 %i.dq, i32 %i.ds)
  store i32 %storemerge.i81.i.i, ptr %i.ac, align 4, !tbaa !46
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 58472
end_hunk_3
begin_hunk_4_@duckdb_je_extent_alloc_wrapper:tsdn_witness_tsdp_get.exit
ehooks_pre_reentrancy.exit.i:                     ; preds = %bb.f, %tsd_fetch_impl.exit.i.i
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !52
  %.val.i = load i32, ptr %2, align 8, !tbaa !48
  %i.z = call ptr %i.y(ptr noundef nonnull %i.k, ptr noundef %3, i64 noundef %4, i64 noundef range(i64 0, -4095) %i.i, ptr noundef nonnull %i.a, ptr noundef %7, i32 noundef %.val.i) #9 ; 2 uses
  br i1 %i.c, label %bb.g, label %tsd_fetch_impl.exit.i27.i

bb.g:                                             ; preds = %ehooks_pre_reentrancy.exit.i
end_hunk_4
begin_hunk_5_@duckdb_je_extent_alloc_wrapper:tsdn_witness_tsdp_get.exit

bb.j:                                             ; preds = %ehooks_alloc.exit
  %i.ak = getelementptr i8, ptr %1, i64 19484
  %.val33 = load i32, ptr %i.ak, align 4, !tbaa !54
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 62232
  %i.am = atomicrmw add ptr %i.al, i64 1 monotonic, align 8
  %i.an = load i8, ptr %i.a, align 1, !tbaa !7, !range !38, !noundef !39
end_hunk_5
begin_hunk_6_@duckdb_je_extent_alloc_wrapper:tsdn_witness_tsdp_get.exit
  %i.aw = or i64 %i.av, %4
  store i64 %i.aw, ptr %i.at, align 8, !tbaa !36
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %i.am, ptr %i.ax, align 8, !tbaa !55
  %i.ay = and i32 %.val33, -268431361
  %i.az = zext nneg i8 %i.an to i64
  %i.ba = shl nuw nsw i64 %i.az, 15
end_hunk_6
begin_hunk_7_@duckdb_je_ecache_evict:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.k, %malloc_mutex_lock.exit
  %.val40 = load ptr, ptr %i.n, align 8, !tbaa !57 ; 2 uses
  %i.t = icmp eq ptr %.val40, null
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.val39 = load ptr, ptr %i.p, align 8, !tbaa !57 ; 2 uses
  %i.u = icmp eq ptr %.val39, null
  br i1 %i.u, label %.thread46, label %bb.g

end_hunk_7
begin_hunk_8_@duckdb_je_extent_dalloc_wrapper:tsdn_witness_tsdp_get.exit
ehooks_dalloc_will_fail.exit:                     ; preds = %tsdn_witness_tsdp_get.exit
  %i.g = load atomic ptr, ptr %i.b acquire, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.o, label %bb.b

end_hunk_8
begin_hunk_9_@duckdb_je_extent_dalloc_wrapper:tsdn_witness_tsdp_get.exit

bb.f:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !58
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.n, label %bb.g

end_hunk_9
begin_hunk_10_@duckdb_je_extent_dalloc_wrapper:tsdn_witness_tsdp_get.exit
  br label %ehooks_pre_reentrancy.exit.i.i

ehooks_pre_reentrancy.exit.i.i:                   ; preds = %bb.j, %tsd_fetch_impl.exit.i.i.i
  %i.as = load ptr, ptr %i.ae, align 8, !tbaa !58
  %.val.i.i = load i32, ptr %2, align 8, !tbaa !48
  %i.at = tail call zeroext i1 %i.as(ptr noundef %i.ab, ptr noundef %i.w, i64 noundef range(i64 0, -4095) %i.y, i1 noundef zeroext %i.aa, i32 noundef %.val.i.i) #9 ; 2 uses
  br i1 %i.a, label %bb.k, label %tsd_fetch_impl.exit.i15.i.i

bb.k:                                             ; preds = %ehooks_pre_reentrancy.exit.i.i
end_hunk_10
begin_hunk_11_@duckdb_je_extent_dalloc_wrapper:tsdn_witness_tsdp_get.exit

bb.r:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 32 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !59
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %.critedge, label %bb.s

end_hunk_11
begin_hunk_12_@duckdb_je_extent_dalloc_wrapper:tsdn_witness_tsdp_get.exit
  br label %ehooks_pre_reentrancy.exit.i.i52

ehooks_pre_reentrancy.exit.i.i52:                 ; preds = %bb.v, %tsd_fetch_impl.exit.i.i.i51
  %i.cf = load ptr, ptr %i.br, align 8, !tbaa !59
  %.val.i.i53 = load i32, ptr %2, align 8, !tbaa !48
  %i.cg = tail call zeroext i1 %i.cf(ptr noundef %i.bo, ptr noundef %i.bn, i64 noundef range(i64 0, -4095) %i.bi, i64 noundef 0, i64 noundef range(i64 0, -4095) %i.bi, i32 noundef %.val.i.i53) #9 ; 2 uses
  br i1 %i.a, label %bb.w, label %tsd_fetch_impl.exit.i17.i.i

bb.w:                                             ; preds = %ehooks_pre_reentrancy.exit.i.i52
end_hunk_12
begin_hunk_13_@duckdb_je_extent_dalloc_wrapper:tsdn_witness_tsdp_get.exit

bb.aa:                                            ; preds = %.critedge
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 48 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !60
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %ehooks_purge_forced.exit.thread, label %bb.ab

end_hunk_13
begin_hunk_14_@duckdb_je_extent_dalloc_wrapper:tsdn_witness_tsdp_get.exit
  br label %ehooks_pre_reentrancy.exit.i

ehooks_pre_reentrancy.exit.i:                     ; preds = %bb.ae, %tsd_fetch_impl.exit.i.i
  %i.ds = load ptr, ptr %i.de, align 8, !tbaa !60
  %.val.i55 = load i32, ptr %2, align 8, !tbaa !48
  %i.dt = tail call zeroext i1 %i.ds(ptr noundef %i.db, ptr noundef %i.cz, i64 noundef range(i64 0, -4095) %i.da, i64 noundef 0, i64 noundef %i.da, i32 noundef %.val.i55) #9 ; 2 uses
  br i1 %i.a, label %bb.af, label %tsd_fetch_impl.exit.i17.i

bb.af:                                            ; preds = %ehooks_pre_reentrancy.exit.i
end_hunk_14
begin_hunk_15_@duckdb_je_extent_dalloc_wrapper:tsdn_witness_tsdp_get.exit

bb.ak:                                            ; preds = %bb.ai
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 40 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !61
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %ehooks_purge_lazy.exit, label %bb.al

end_hunk_15
begin_hunk_16_@duckdb_je_extent_dalloc_wrapper:tsdn_witness_tsdp_get.exit
  br label %ehooks_pre_reentrancy.exit.i58

ehooks_pre_reentrancy.exit.i58:                   ; preds = %bb.ao, %tsd_fetch_impl.exit.i.i57
  %i.fb = load ptr, ptr %i.en, align 8, !tbaa !61
  %.val.i59 = load i32, ptr %2, align 8, !tbaa !48
  %i.fc = tail call zeroext i1 %i.fb(ptr noundef %i.ek, ptr noundef %i.ei, i64 noundef range(i64 0, -4095) %i.ej, i64 noundef 0, i64 noundef %i.ej, i32 noundef %.val.i59) #9 ; 0 uses
  br i1 %i.a, label %bb.ap, label %tsd_fetch_impl.exit.i17.i60

bb.ap:                                            ; preds = %ehooks_pre_reentrancy.exit.i58
end_hunk_16
begin_hunk_17_@duckdb_je_extent_destroy_wrapper:tsdn_witness_tsdp_get.exit

bb.d:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !62
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %ehooks_destroy.exit, label %bb.e

end_hunk_17
begin_hunk_18_@duckdb_je_extent_destroy_wrapper:tsdn_witness_tsdp_get.exit
  br label %ehooks_pre_reentrancy.exit.i

ehooks_pre_reentrancy.exit.i:                     ; preds = %bb.h, %tsd_fetch_impl.exit.i.i
  %i.ai = load ptr, ptr %i.u, align 8, !tbaa !62
  %.val.i = load i32, ptr %2, align 8, !tbaa !48
  tail call void %i.ai(ptr noundef %i.s, ptr noundef %i.m, i64 noundef range(i64 0, -4095) %i.o, i1 noundef zeroext %i.q, i32 noundef %.val.i) #9
  br i1 %i.a, label %bb.i, label %tsd_fetch_impl.exit.i12.i

bb.i:                                             ; preds = %ehooks_pre_reentrancy.exit.i
end_hunk_18
begin_hunk_19_@extent_commit_impl:tsdn_witness_tsdp_get.exit

bb.b:                                             ; preds = %tsdn_witness_tsdp_get.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !63
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %ehooks_commit.exit, label %bb.c

end_hunk_19
begin_hunk_20_@extent_commit_impl:tsdn_witness_tsdp_get.exit
  br label %ehooks_pre_reentrancy.exit.i

ehooks_pre_reentrancy.exit.i:                     ; preds = %bb.f, %tsd_fetch_impl.exit.i.i
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !63
  %.val.i = load i32, ptr %1, align 8, !tbaa !48
  %i.ab = tail call zeroext i1 %i.aa(ptr noundef %i.j, ptr noundef %i.f, i64 noundef range(i64 0, -4095) %i.h, i64 noundef %3, i64 noundef %4, i32 noundef %.val.i) #9 ; 2 uses
  br i1 %i.a, label %bb.g, label %tsd_fetch_impl.exit.i19.i

bb.g:                                             ; preds = %ehooks_pre_reentrancy.exit.i
end_hunk_20
begin_hunk_21_@extent_purge_lazy_impl:tsdn_witness_tsdp_get.exit

bb.b:                                             ; preds = %tsdn_witness_tsdp_get.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !61
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %ehooks_purge_lazy.exit, label %bb.c

end_hunk_21
begin_hunk_22_@extent_purge_lazy_impl:tsdn_witness_tsdp_get.exit
  br label %ehooks_pre_reentrancy.exit.i

ehooks_pre_reentrancy.exit.i:                     ; preds = %bb.f, %tsd_fetch_impl.exit.i.i
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !61
  %.val.i = load i32, ptr %1, align 8, !tbaa !48
  %i.ab = tail call zeroext i1 %i.aa(ptr noundef %i.j, ptr noundef %i.f, i64 noundef range(i64 0, -4095) %i.h, i64 noundef %3, i64 noundef %4, i32 noundef %.val.i) #9 ; 2 uses
  br i1 %i.a, label %bb.g, label %tsd_fetch_impl.exit.i17.i

bb.g:                                             ; preds = %ehooks_pre_reentrancy.exit.i
end_hunk_22
begin_hunk_23_@extent_purge_forced_impl:tsdn_witness_tsdp_get.exit

bb.b:                                             ; preds = %tsdn_witness_tsdp_get.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !60
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %ehooks_purge_forced.exit, label %bb.c

end_hunk_23
begin_hunk_24_@extent_purge_forced_impl:tsdn_witness_tsdp_get.exit
  br label %ehooks_pre_reentrancy.exit.i

ehooks_pre_reentrancy.exit.i:                     ; preds = %bb.f, %tsd_fetch_impl.exit.i.i
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !60
  %.val.i = load i32, ptr %1, align 8, !tbaa !48
  %i.ab = tail call zeroext i1 %i.aa(ptr noundef %i.j, ptr noundef %i.f, i64 noundef range(i64 0, -4095) %i.h, i64 noundef %3, i64 noundef %4, i32 noundef %.val.i) #9 ; 2 uses
  br i1 %i.a, label %bb.g, label %tsd_fetch_impl.exit.i17.i

bb.g:                                             ; preds = %ehooks_pre_reentrancy.exit.i
end_hunk_24
begin_hunk_25_@extent_split_impl:tsdn_witness_tsdp_get.exit46
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load atomic ptr, ptr %i.a acquire, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.n, label %bb.a

end_hunk_25
begin_hunk_26_@extent_split_impl:tsdn_witness_tsdp_get.exit46
  %i.n = getelementptr inbounds i8, ptr %.val47, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %4
  %i.p = getelementptr i8, ptr %3, i64 32
  %.val49 = load i64, ptr %i.p, align 8, !tbaa !55
  %i.q = load i64, ptr %i.h, align 8, !tbaa !43
  %i.r = and i64 %i.q, -17592454479872
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8
end_hunk_26
begin_hunk_27_@extent_split_impl:tsdn_witness_tsdp_get.exit46
  %i.w = or i64 %i.v, %5
  store i64 %i.w, ptr %i.t, align 8, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %.val49, ptr %i.x, align 8, !tbaa !55
  %i.y = and i64 %.val48, 962559
  %i.z = or disjoint i64 %i.y, %i.r
  %i.aa = or disjoint i64 %i.z, 243269632
end_hunk_27
begin_hunk_28_@extent_split_impl:tsdn_witness_tsdp_get.exit46

bb.e:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 56 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !64
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %ehooks_split.exit.thread, label %bb.f

end_hunk_28
begin_hunk_29_@extent_split_impl:tsdn_witness_tsdp_get.exit46
  br label %ehooks_pre_reentrancy.exit.i

ehooks_pre_reentrancy.exit.i:                     ; preds = %bb.i, %tsd_fetch_impl.exit.i.i
  %i.be = load ptr, ptr %i.ap, align 8, !tbaa !64
  %.val.i = load i32, ptr %2, align 8, !tbaa !48
  %i.bf = call zeroext i1 %i.be(ptr noundef nonnull %i.al, ptr noundef %i.ah, i64 noundef %i.ai, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %i.ak, i32 noundef %.val.i) #9 ; 2 uses
  br i1 %i.as, label %bb.j, label %tsd_fetch_impl.exit.i14.i

bb.j:                                             ; preds = %ehooks_pre_reentrancy.exit.i
end_hunk_29
begin_hunk_30_@extent_merge_impl:tsdn_witness_tsdp_get.exit41

bb.b:                                             ; preds = %tsdn_witness_tsdp_get.exit41
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 64 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !65
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %ehooks_merge.exit.thread, label %bb.c

end_hunk_30
begin_hunk_31_@extent_merge_impl:tsdn_witness_tsdp_get.exit41
  br label %ehooks_pre_reentrancy.exit.i

ehooks_pre_reentrancy.exit.i:                     ; preds = %bb.f, %tsd_fetch_impl.exit.i.i
  %i.ak = load ptr, ptr %i.v, align 8, !tbaa !65
  %.val.i = load i32, ptr %2, align 8, !tbaa !48
  %i.al = tail call zeroext i1 %i.ak(ptr noundef %i.s, ptr noundef %i.f, i64 noundef range(i64 0, -4095) %i.h, ptr noundef %i.m, i64 noundef range(i64 0, -4095) %i.o, i1 noundef zeroext %i.q, i32 noundef %.val.i) #9 ; 2 uses
  br i1 %i.y, label %bb.g, label %tsd_fetch_impl.exit.i18.i

bb.g:                                             ; preds = %ehooks_pre_reentrancy.exit.i
end_hunk_31
begin_hunk_32_@extent_merge_impl:tsdn_witness_tsdp_get.exit41
  %i.bc = or disjoint i64 %i.ba, %i.bb
  store i64 %i.bc, ptr %i.g, align 8, !tbaa !36
  %i.bd = getelementptr i8, ptr %3, i64 32        ; 2 uses
  %.val50 = load i64, ptr %i.bd, align 8, !tbaa !55
  %i.be = getelementptr i8, ptr %4, i64 32
  %.val49 = load i64, ptr %i.be, align 8, !tbaa !55
  %spec.select = call i64 @llvm.umin.i64(i64 %.val50, i64 %.val49)
  store i64 %spec.select, ptr %i.bd, align 8, !tbaa !55
  %i.bf = and i64 %i.aw, 32768
  %.not = icmp eq i64 %i.bf, 0
  br i1 %.not, label %.thread, label %bb.k
end_hunk_32
begin_hunk_33_@llvm.umin.i32
!51 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!52 = !{!53, !15, i64 0}
!53 = !{!"extent_hooks_s", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64}
!54 = !{!21, !4, i64 19428}
!55 = !{!41, !12, i64 32}
!56 = !{!30, !4, i64 4}
!57 = !{!24, !26, i64 0}
!58 = !{!53, !15, i64 8}
!59 = !{!53, !15, i64 32}
!60 = !{!53, !15, i64 48}
!61 = !{!53, !15, i64 40}
!62 = !{!53, !15, i64 16}
!63 = !{!53, !15, i64 24}
!64 = !{!53, !15, i64 56}
!65 = !{!53, !15, i64 64}
end_hunk_33
