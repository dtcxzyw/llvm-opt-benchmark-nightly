inline.NumInlined: 171
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@je_tsd_tcache_data_init:bb.a
  %i.am = and i64 %i.al, 9223372036854771712
  %i.an = add nsw i64 %i.am, -4096
  %i.ao = add i64 %i.an, %.0.i
  %i.ap = add i64 %i.ao, %i.ak
  %i.aq = icmp ult i64 %i.ap, %.0.i
  %..0.i = select i1 %i.aq, i64 0, i64 %.0.i
  br label %sz_sa2u.exit

sz_sa2u.exit:                                     ; preds = %bb.d, %sz_s2u.exit, %bb.f, %sz_s2u.exit27, %.thread38
  %.018.i = phi i64 [ 0, %bb.f ], [ %.0.i25, %sz_s2u.exit ], [ %..0.i, %.thread38 ], [ 0, %sz_s2u.exit27 ], [ 0, %bb.d ] ; 2 uses
  %i.ar = load atomic ptr, ptr @je_arenas acquire, align 8 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.j, label %arena_get.exit, !prof !11

bb.j:                                             ; preds = %sz_sa2u.exit
  %i.at = tail call ptr @je_arena_init(ptr noundef null, i32 noundef 0, ptr noundef nonnull @je_arena_config_default) #13
  br label %arena_get.exit

arena_get.exit:                                   ; preds = %sz_sa2u.exit, %bb.j
  %.0.i34 = phi ptr [ %i.at, %bb.j ], [ %i.ar, %sz_sa2u.exit ] ; 2 uses
  %i.au = icmp eq ptr %0, null                    ; 2 uses
  br i1 %i.au, label %tsdn_witness_tsdp_get.exit, label %tsdn_witness_tsdp_get.exit.thread

tsdn_witness_tsdp_get.exit:                       ; preds = %arena_get.exit
  %i.av = tail call ptr @je_arena_palloc(ptr noundef null, ptr noundef %.0.i34, i64 noundef %.018.i, i64 noundef %i.c, i1 noundef zeroext true, ptr noundef null) #13 ; 2 uses
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %ipallocztm.exit.thread, label %bb.k, !prof !11

tsdn_witness_tsdp_get.exit.thread:                ; preds = %arena_get.exit
  %i.aw = tail call ptr @je_arena_palloc(ptr noundef nonnull %0, ptr noundef %.0.i34, i64 noundef %.018.i, i64 noundef %i.c, i1 noundef zeroext true, ptr noundef null) #13 ; 2 uses
  %.not.i39 = icmp eq ptr %i.aw, null
  br i1 %.not.i39, label %ipallocztm.exit.thread, label %bb.l, !prof !11

bb.k:                                             ; preds = %tsdn_witness_tsdp_get.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %1) #13
  br label %emap_edata_lookup.exit

bb.l:                                             ; preds = %tsdn_witness_tsdp_get.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 448
  br label %emap_edata_lookup.exit

emap_edata_lookup.exit:                           ; preds = %bb.k, %bb.l
  %i.ay = phi ptr [ %i.av, %bb.k ], [ %i.aw, %bb.l ] ; 2 uses
  %.0.i.i29 = phi ptr [ %1, %bb.k ], [ %i.ax, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.az = ptrtoint ptr %i.ay to i64               ; 2 uses
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %0, ptr noundef nonnull %.0.i.i29, i64 noundef %i.az)
  %i.ba = load ptr, ptr %2, align 8, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %.val = load i64, ptr %i.ba, align 8, !tbaa !48
  %i.bb = and i64 %.val, 4095
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.bb
  %i.bd = load atomic ptr, ptr %i.bc monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  br i1 %i.au, label %bb.m, label %bb.n, !prof !11

bb.m:                                             ; preds = %emap_edata_lookup.exit
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %3) #13
  br label %bb.o

bb.n:                                             ; preds = %emap_edata_lookup.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 448
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.0.i.i = phi ptr [ %3, %bb.m ], [ %i.be, %bb.n ]
  %i.bf = call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef %0, ptr noundef nonnull %.0.i.i, i64 noundef %i.az)
  %.fca.0.extract.i.i = extractvalue { i64, i32 } %i.bf, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.bg = and i64 %.fca.0.extract.i.i, 4294967295
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.bk = atomicrmw add ptr %i.bj, i64 %i.bi monotonic, align 8 ; 0 uses
  call fastcc void @tcache_init(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.ay)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  store ptr null, ptr %i.bl, align 8, !tbaa !47
  %i.bm = load i32, ptr @je_malloc_init_state, align 4, !tbaa !7
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.p, label %arena_get.exit36

arena_get.exit36:                                 ; preds = %bb.o
  %i.bo = load atomic ptr, ptr @je_arenas acquire, align 8
  br label %ipallocztm.exit.thread.sink.split

bb.p:                                             ; preds = %bb.o
  %i.bp = call fastcc ptr @arena_choose_impl(ptr noundef nonnull %0, i1 noundef zeroext false)
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !47
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %ipallocztm.exit.thread.sink.split, label %ipallocztm.exit.thread

ipallocztm.exit.thread.sink.split:                ; preds = %bb.p, %arena_get.exit36
  %.sink = phi ptr [ %i.bo, %arena_get.exit36 ], [ %i.bp, %bb.p ]
  call void @je_tcache_arena_associate(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %.sink)
  br label %ipallocztm.exit.thread

ipallocztm.exit.thread:                           ; preds = %ipallocztm.exit.thread.sink.split, %tsdn_witness_tsdp_get.exit, %tsdn_witness_tsdp_get.exit.thread, %bb.p
  %.not.i4147 = phi i1 [ true, %tsdn_witness_tsdp_get.exit ], [ false, %bb.p ], [ true, %tsdn_witness_tsdp_get.exit.thread ], [ false, %ipallocztm.exit.thread.sink.split ]
  ret i1 %.not.i4147
}

; Function Attrs: nounwind uwtable
define internal fastcc void @tcache_init(ptr noundef %0, ptr noundef initializes((0, 8)) %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  store ptr %0, ptr %1, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %1, ptr %i.c, align 8, !tbaa !135
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.e, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %2, ptr %i.f, align 8, !tbaa !141
  %i.g = load i32, ptr @je_nhbins, align 4, !tbaa !7 ; 2 uses
  %i.h = tail call i32 @llvm.umax.i32(i32 %i.g, i32 39)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = zext i32 %i.h to i64
  %i.k = mul nuw nsw i64 %i.j, 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, i8 0, i64 %i.k, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 0, ptr %i.a, align 8, !tbaa !12
  %i.l = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !37
  call void @je_cache_bin_preincrement(ptr noundef %i.l, i32 noundef %i.g, ptr noundef nonnull %2, ptr noundef nonnull %i.a) #13
  %i.m = load i32, ptr @je_nhbins, align 4, !tbaa !7
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %.lr.ph3.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 91
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 130
  br label %bb.b

.preheader:                                       ; preds = %bb.d
  %i.q = icmp ult i32 %i.af, 39
  br i1 %i.q, label %.lr.ph3.preheader, label %._crit_edge

.lr.ph3.preheader:                                ; preds = %bb.a, %.preheader
  %i.r = phi i32 [ %i.af, %.preheader ], [ 0, %bb.a ]
  %i.s = zext nneg i32 %i.r to i64
  br label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 8 uses
  %i.t = icmp samesign ult i64 %indvars.iv, 39
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv
  store i8 1, ptr %i.u, align 1, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv
  store i8 0, ptr %i.v, align 1, !tbaa !14
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %indvars.iv
  %i.x = load i64, ptr %i.w, align 8, !tbaa !12
  %i.y = load i64, ptr @je_opt_tcache_gc_delay_bytes, align 8, !tbaa !12
  %i.z = udiv i64 %i.y, %i.x
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.z, i64 255)
  %i.aa = trunc nuw i64 %spec.select.i to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !37
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %indvars.iv
  call void @je_cache_bin_init(ptr noundef nonnull %i.ac, ptr noundef %i.ae, ptr noundef nonnull %2, ptr noundef nonnull %i.a) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = load i32, ptr @je_nhbins, align 4, !tbaa !7 ; 4 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = icmp samesign ult i64 %indvars.iv.next, %i.ag
  br i1 %i.ah, label %bb.b, label %.preheader, !llvm.loop !142

._crit_edge.loopexit:                             ; preds = %.lr.ph3
  %.pre = load i32, ptr @je_nhbins, align 4, !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ai = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.af, %.preheader ]
  %i.aj = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !37
  call void @je_cache_bin_postincrement(ptr noundef %i.aj, i32 noundef %i.ai, ptr noundef nonnull %2, ptr noundef nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void

.lr.ph3:                                          ; preds = %.lr.ph3.preheader, %.lr.ph3
  %indvars.iv6 = phi i64 [ %i.s, %.lr.ph3.preheader ], [ %indvars.iv.next7, %.lr.ph3 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %indvars.iv6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i64 0, ptr %i.b, align 8, !tbaa !12
  %i.al = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !37
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv6
  call void @je_cache_bin_init(ptr noundef nonnull %i.ak, ptr noundef %i.am, ptr noundef nonnull %2, ptr noundef nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next7, 39
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph3, !llvm.loop !143
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @je_tcache_create_explicit(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.rtree_ctx_s, align 8        ; 5 uses
  %2 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %3 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %i.a = load i64, ptr @tcache_bin_alloc_size, align 8, !tbaa !12
  %i.b = add i64 %i.a, 2031
  %i.c = and i64 %i.b, 4294967288                 ; 6 uses
  %i.d = load i64, ptr @tcache_bin_alloc_alignment, align 8, !tbaa !12 ; 7 uses
  %i.e = icmp samesign ult i64 %i.c, 14337
  %i.f = icmp ult i64 %i.d, 4097
  %or.cond.i = and i1 %i.f, %i.e
  br i1 %or.cond.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.d, -1
  %i.h = add nsw i64 %i.g, %i.c
  %i.i = sub nsw i64 0, %i.d
  %i.j = and i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp ult i64 %i.j, 4097
  br i1 %i.k, label %bb.c, label %bb.d, !prof !136

bb.c:                                             ; preds = %bb.b
  %i.l = add nuw nsw i64 %i.j, 7
  %i.m = lshr i64 %i.l, 3
  %i.n = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !35
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !12
  br label %sz_s2u.exit

bb.d:                                             ; preds = %bb.b
  %i.s = icmp ugt i64 %i.j, 8070450532247928832
  br i1 %i.s, label %sz_sa2u.exit, label %bb.e, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.t = shl nuw i64 %i.j, 1
  %i.u = add nsw i64 %i.t, -1
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.u, i1 true) ; 2 uses
  %notmask.i24 = ashr exact i64 -1152921504606846976, %i.v
  %i.w = lshr i64 1152921504606846975, %i.v
  %i.x = add nuw nsw i64 %i.j, %i.w
  %i.y = and i64 %i.x, %notmask.i24
  br label %sz_s2u.exit

sz_s2u.exit:                                      ; preds = %bb.e, %bb.c
  %.0.i18 = phi i64 [ %i.r, %bb.c ], [ %i.y, %bb.e ] ; 2 uses
  %i.z = icmp ult i64 %.0.i18, 16384
  br i1 %i.z, label %sz_sa2u.exit, label %.thread28

bb.f:                                             ; preds = %bb.a
  %i.aa = icmp ugt i64 %i.d, 8070450532247928832
  br i1 %i.aa, label %sz_sa2u.exit, label %bb.g, !prof !137

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp samesign ult i64 %i.c, 16385
  br i1 %i.ab, label %.thread28, label %sz_s2u.exit20

sz_s2u.exit20:                                    ; preds = %bb.g
  %i.ac = shl nuw nsw i64 %i.c, 1
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ad, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.ae
  %i.af = lshr i64 1152921504606846975, %i.ae
  %i.ag = add nuw nsw i64 %i.c, %i.af
  %i.ah = and i64 %i.ag, %notmask.i               ; 2 uses
  %i.ai = icmp samesign ult i64 %i.ah, %i.c
  br i1 %i.ai, label %sz_sa2u.exit, label %.thread28

.thread28:                                        ; preds = %sz_s2u.exit, %sz_s2u.exit20, %bb.g
  %.0.i = phi i64 [ %i.ah, %sz_s2u.exit20 ], [ 16384, %bb.g ], [ 16384, %sz_s2u.exit ] ; 3 uses
  %i.aj = load i64, ptr @je_sz_large_pad, align 8, !tbaa !12
  %i.ak = add nuw nsw i64 %i.d, 4095
  %i.al = and i64 %i.ak, 9223372036854771712
  %i.am = add nsw i64 %i.al, -4096
  %i.an = add nsw i64 %i.am, %.0.i
  %i.ao = add i64 %i.an, %i.aj
  %i.ap = icmp ult i64 %i.ao, %.0.i
  %..0.i = select i1 %i.ap, i64 0, i64 %.0.i
  br label %sz_sa2u.exit

sz_sa2u.exit:                                     ; preds = %bb.d, %sz_s2u.exit, %bb.f, %sz_s2u.exit20, %.thread28
  %.018.i = phi i64 [ 0, %bb.f ], [ %.0.i18, %sz_s2u.exit ], [ %..0.i, %.thread28 ], [ 0, %sz_s2u.exit20 ], [ 0, %bb.d ] ; 2 uses
  %i.aq = load atomic ptr, ptr @je_arenas acquire, align 8 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.h, label %arena_get.exit, !prof !11

bb.h:                                             ; preds = %sz_sa2u.exit
  %i.as = tail call ptr @je_arena_init(ptr noundef null, i32 noundef 0, ptr noundef nonnull @je_arena_config_default) #13
  br label %arena_get.exit

arena_get.exit:                                   ; preds = %sz_sa2u.exit, %bb.h
  %.0.i26 = phi ptr [ %i.as, %bb.h ], [ %i.aq, %sz_sa2u.exit ] ; 2 uses
  %i.at = icmp eq ptr %0, null                    ; 2 uses
  br i1 %i.at, label %tsdn_witness_tsdp_get.exit, label %tsdn_witness_tsdp_get.exit.thread

tsdn_witness_tsdp_get.exit:                       ; preds = %arena_get.exit
  %i.au = tail call ptr @je_arena_palloc(ptr noundef null, ptr noundef %.0.i26, i64 noundef %.018.i, i64 noundef %i.d, i1 noundef zeroext true, ptr noundef null) #13 ; 2 uses
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %ipallocztm.exit.thread, label %bb.i, !prof !11

tsdn_witness_tsdp_get.exit.thread:                ; preds = %arena_get.exit
  %i.av = tail call ptr @je_arena_palloc(ptr noundef nonnull %0, ptr noundef %.0.i26, i64 noundef %.018.i, i64 noundef %i.d, i1 noundef zeroext true, ptr noundef null) #13 ; 2 uses
  %.not.i29 = icmp eq ptr %i.av, null
  br i1 %.not.i29, label %ipallocztm.exit.thread, label %bb.j, !prof !11

bb.i:                                             ; preds = %tsdn_witness_tsdp_get.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %1) #13
  br label %emap_edata_lookup.exit

bb.j:                                             ; preds = %tsdn_witness_tsdp_get.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 448
  br label %emap_edata_lookup.exit

emap_edata_lookup.exit:                           ; preds = %bb.i, %bb.j
  %i.ax = phi ptr [ %i.au, %bb.i ], [ %i.av, %bb.j ] ; 2 uses
  %.0.i.i22 = phi ptr [ %1, %bb.i ], [ %i.aw, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.ay = ptrtoint ptr %i.ax to i64               ; 3 uses
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %0, ptr noundef nonnull %.0.i.i22, i64 noundef %i.ay)
  %i.az = load ptr, ptr %2, align 8, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %.val = load i64, ptr %i.az, align 8, !tbaa !48
  %i.ba = and i64 %.val, 4095
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.ba
  %i.bc = load atomic ptr, ptr %i.bb monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  br i1 %i.at, label %bb.k, label %bb.l, !prof !11

bb.k:                                             ; preds = %emap_edata_lookup.exit
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %3) #13
  br label %bb.m

bb.l:                                             ; preds = %emap_edata_lookup.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 448
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.0.i.i = phi ptr [ %3, %bb.k ], [ %i.bd, %bb.l ]
  %i.be = call fastcc { i64, i32 } @rtree_metadata_read(ptr noundef %0, ptr noundef nonnull %.0.i.i, i64 noundef %i.ay)
  %.fca.0.extract.i.i = extractvalue { i64, i32 } %i.be, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.bf = and i64 %.fca.0.extract.i.i, 4294967295
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !12
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %i.bj = atomicrmw add ptr %i.bi, i64 %i.bh monotonic, align 8 ; 0 uses
  %i.bk = load i64, ptr @tcache_bin_alloc_size, align 8, !tbaa !12
  %i.bl = add i64 %i.bk, %i.ay                    ; 2 uses
  %i.bm = inttoptr i64 %i.bl to ptr               ; 3 uses
  %i.bn = add i64 %i.bl, 1832
  %i.bo = inttoptr i64 %i.bn to ptr               ; 2 uses
  call fastcc void @tcache_init(ptr noundef %i.bo, ptr noundef %i.bm, ptr noundef %i.ax)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !35
  %i.br = icmp sgt i8 %i.bq, 0
  br i1 %i.br, label %bb.n, label %bb.p, !prof !11

bb.n:                                             ; preds = %bb.m
  %i.bs = load atomic ptr, ptr @je_arenas acquire, align 8 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.o, label %arena_ichoose.exit, !prof !11

bb.o:                                             ; preds = %bb.n
  %i.bu = call ptr @je_arena_init(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @je_arena_config_default) #13
  br label %arena_ichoose.exit

bb.p:                                             ; preds = %bb.m
  %.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bv = load ptr, ptr %.in.i.i, align 8, !tbaa !144 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.q, label %arena_ichoose.exit, !prof !11

bb.q:                                             ; preds = %bb.p
  %i.bx = call ptr @je_arena_choose_hard(ptr noundef nonnull %0, i1 noundef zeroext true) #13 ; 5 uses
  %i.by = load i8, ptr %0, align 8, !tbaa !14, !range !16, !noundef !17
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.r, label %arena_ichoose.exit

bb.r:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !47 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i, label %.sink.split.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not43.i.i = icmp eq ptr %i.cd, %i.bx
  br i1 %.not43.i.i, label %arena_ichoose.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
end_hunk_0
begin_hunk_1_@je_tcaches_destroy:bb.a
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 56), align 8, !tbaa !51
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 48), align 8, !tbaa !56
  %.not.i.i = icmp eq ptr %i.d, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 48), align 8, !tbaa !56
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 40), align 8, !tbaa !57
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 40), align 8, !tbaa !57
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.g = load ptr, ptr @je_tcaches, align 8, !tbaa !147
  %i.h = zext i32 %1 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35   ; 2 uses
  %switch = icmp ult ptr %i.j, inttoptr (i64 2 to ptr)
  %i.k = load ptr, ptr @tcaches_avail, align 8, !tbaa !147
  store ptr %i.k, ptr %i.i, align 8, !tbaa !35
  store ptr %i.i, ptr @tcaches_avail, align 8, !tbaa !147
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 104) monotonic, align 8
  %i.l = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcaches_mtx, i64 64)) #13 ; 0 uses
  br i1 %switch, label %bb.f, label %bb.e

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  tail call fastcc void @tcache_destroy(ptr noundef %0, ptr noundef nonnull %i.j)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %malloc_mutex_lock.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_tcache_boot(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @je_opt_tcache_max, align 8, !tbaa !12 ; 5 uses
  %i.b = icmp ult i64 %i.a, 4097
  br i1 %i.b, label %bb.b, label %bb.c, !prof !136

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw nsw i64 %i.a, 7
  %i.d = lshr i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !35
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !12
  br label %sz_s2u.exit

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.a, 8070450532247928832
  br i1 %i.j, label %sz_s2u.exit.thread, label %bb.d, !prof !11

sz_s2u.exit.thread:                               ; preds = %bb.c
  store i64 0, ptr @je_tcache_maxclass, align 8, !tbaa !12
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw i64 %i.a, 1
  %i.l = add i64 %i.k, -1
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.l, i1 true) ; 2 uses
  %notmask.i = ashr exact i64 -1152921504606846976, %i.m
  %i.n = lshr i64 1152921504606846975, %i.m
  %i.o = add nuw nsw i64 %i.a, %i.n
  %i.p = and i64 %i.o, %notmask.i
  br label %sz_s2u.exit

sz_s2u.exit:                                      ; preds = %bb.d, %bb.b
  %.0.i = phi i64 [ %i.i, %bb.b ], [ %i.p, %bb.d ] ; 6 uses
  store i64 %.0.i, ptr @je_tcache_maxclass, align 8, !tbaa !12
  %i.q = icmp ult i64 %.0.i, 4097
  br i1 %i.q, label %bb.e, label %bb.f, !prof !149

bb.e:                                             ; preds = %sz_s2u.exit.thread, %sz_s2u.exit
  %.0.i21 = phi i64 [ 0, %sz_s2u.exit.thread ], [ %.0.i, %sz_s2u.exit ]
  %i.r = add nuw nsw i64 %.0.i21, 7
  %i.s = lshr i64 %i.r, 3
  %i.t = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !35
  %i.v = zext i8 %i.u to i32
  br label %sz_size2index.exit

bb.f:                                             ; preds = %sz_s2u.exit
  %i.w = icmp ugt i64 %.0.i, 8070450532247928832
  br i1 %i.w, label %sz_size2index.exit, label %bb.g, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.x = shl nuw i64 %.0.i, 1
  %i.y = add i64 %i.x, -1
  %i.z = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.y, i1 true) ; 3 uses
  %i.aa = trunc nuw nsw i64 %i.z to i32
  %i.ab = sub nuw nsw i64 60, %i.z
  %i.ac = ashr exact i64 -1152921504606846976, %i.z
  %i.ad = add nsw i64 %.0.i, -1
  %i.ae = and i64 %i.ac, %i.ad
  %i.af = lshr i64 %i.ae, %i.ab
  %i.ag = trunc i64 %i.af to i32
  %i.ah = and i32 %i.ag, 3
  %i.ai = shl nuw nsw i32 %i.aa, 2
  %reass.sub = sub nsw i32 %i.ah, %i.ai
  %i.aj = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.g, %bb.f, %bb.e
  %.0.i16 = phi i32 [ %i.v, %bb.e ], [ %i.aj, %bb.g ], [ 235, %bb.f ]
  %i.ak = add nuw nsw i32 %.0.i16, 1
  store i32 %i.ak, ptr @je_nhbins, align 4, !tbaa !7
  %i.al = tail call zeroext i1 @je_malloc_mutex_init(ptr noundef nonnull @tcaches_mtx, ptr noundef nonnull @.str, i32 noundef 3, i32 noundef 0) #13
  br i1 %i.al, label %bb.k, label %bb.h

bb.h:                                             ; preds = %sz_size2index.exit
  %i.am = load i32, ptr @je_nhbins, align 4, !tbaa !7
  %i.an = tail call i32 @llvm.umax.i32(i32 %i.am, i32 39)
  %i.ao = zext i32 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 1
  %i.aq = tail call ptr @je_base_alloc(ptr noundef %0, ptr noundef %1, i64 noundef %i.ap, i64 noundef 64) #13 ; 2 uses
  store ptr %i.aq, ptr @je_tcache_bin_info, align 8, !tbaa !37
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.k, label %.preheader22

.preheader22:                                     ; preds = %bb.h
  %i.as = load i32, ptr @je_nhbins, align 4, !tbaa !7
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %.lr.ph25.preheader, label %.lr.ph

.preheader:                                       ; preds = %tcache_ncached_max_compute.exit
  %i.at = icmp ult i32 %i.bp, 39
  br i1 %i.at, label %.lr.ph25.preheader, label %._crit_edge

.lr.ph25.preheader:                               ; preds = %.preheader22, %.preheader
  %i.au = phi i32 [ %i.bp, %.preheader ], [ 0, %.preheader22 ]
  %i.av = zext nneg i32 %i.au to i64
  br label %.lr.ph25

.lr.ph:                                           ; preds = %.preheader22, %tcache_ncached_max_compute.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %tcache_ncached_max_compute.exit ], [ 0, %.preheader22 ] ; 4 uses
  %i.aw = icmp samesign ugt i64 %indvars.iv, 38
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.ax = load i32, ptr @je_opt_tcache_nslots_large, align 4, !tbaa !7
  br label %tcache_ncached_max_compute.exit

bb.j:                                             ; preds = %.lr.ph
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr @je_bin_infos, i64 %indvars.iv
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !77 ; 2 uses
  %i.bb = load i32, ptr @je_opt_tcache_nslots_small_min, align 4, !tbaa !7 ; 2 uses
  %i.bc = load i32, ptr @je_opt_tcache_nslots_small_max, align 4, !tbaa !7
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %i.bc, i32 8191)
  %i.bd = and i32 %i.bb, 1
  %spec.select.i = add i32 %i.bd, %i.bb           ; 2 uses
  %.025.i = and i32 %spec.store.select.i, 8190    ; 2 uses
  %spec.store.select2.i = tail call i32 @llvm.umax.i32(i32 %.025.i, i32 2) ; 2 uses
  %i.be = icmp ugt i32 %spec.select.i, %spec.store.select2.i
  %minmaxop.i = select i1 %i.be, i32 %.025.i, i32 %spec.select.i
  %.127.i = tail call i32 @llvm.umax.i32(i32 %minmaxop.i, i32 2) ; 2 uses
  %i.bf = load i64, ptr @je_opt_lg_tcache_nslots_mul, align 8, !tbaa !12 ; 2 uses
  %i.bg = icmp slt i64 %i.bf, 0
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  %i.bi = sub i32 0, %i.bh
  %i.bj = lshr i32 %i.ba, %i.bi
  %i.bk = shl i32 %i.ba, %i.bh
  %.0.i19 = select i1 %i.bg, i32 %i.bj, i32 %i.bk ; 2 uses
  %i.bl = and i32 %.0.i19, 1
  %.1.i = add i32 %i.bl, %.0.i19                  ; 2 uses
  %.not35.i = icmp ugt i32 %.1.i, %.127.i
  %spec.store.select2..1.i = tail call i32 @llvm.umin.i32(i32 %.1.i, i32 %spec.store.select2.i)
  %.028.i = select i1 %.not35.i, i32 %spec.store.select2..1.i, i32 %.127.i
  br label %tcache_ncached_max_compute.exit

tcache_ncached_max_compute.exit:                  ; preds = %bb.i, %bb.j
  %.129.i = phi i32 [ %i.ax, %bb.i ], [ %.028.i, %bb.j ]
  %i.bm = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !37
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv
  %i.bo = trunc i32 %.129.i to i16
  tail call void @je_cache_bin_info_init(ptr noundef %i.bn, i16 noundef zeroext %i.bo) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bp = load i32, ptr @je_nhbins, align 4, !tbaa !7 ; 4 uses
  %i.bq = zext i32 %i.bp to i64
  %i.br = icmp samesign ult i64 %indvars.iv.next, %i.bq
  br i1 %i.br, label %.lr.ph, label %.preheader, !llvm.loop !150

._crit_edge.loopexit:                             ; preds = %.lr.ph25
  %.pre = load i32, ptr @je_nhbins, align 4, !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bs = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.bp, %.preheader ]
  %i.bt = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !37
  tail call void @je_cache_bin_info_compute_alloc(ptr noundef %i.bt, i32 noundef %i.bs, ptr noundef nonnull @tcache_bin_alloc_size, ptr noundef nonnull @tcache_bin_alloc_alignment) #13
  br label %bb.k

.lr.ph25:                                         ; preds = %.lr.ph25.preheader, %.lr.ph25
  %indvars.iv29 = phi i64 [ %i.av, %.lr.ph25.preheader ], [ %indvars.iv.next30, %.lr.ph25 ] ; 2 uses
  %i.bu = load ptr, ptr @je_tcache_bin_info, align 8, !tbaa !37
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %indvars.iv29
  tail call void @je_cache_bin_info_init(ptr noundef %i.bv, i16 noundef zeroext 0) #13
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next30, 39
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph25, !llvm.loop !151

bb.k:                                             ; preds = %._crit_edge, %bb.h, %sz_size2index.exit
  %.1 = phi i1 [ true, %sz_size2index.exit ], [ true, %bb.h ], [ false, %._crit_edge ]
  ret i1 %.1
}

declare zeroext i1 @je_malloc_mutex_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @je_base_alloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @je_cache_bin_info_init(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

declare void @je_cache_bin_info_compute_alloc(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @je_tcache_prefork(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @je_malloc_mutex_prefork(ptr noundef %0, ptr noundef nonnull @tcaches_mtx) #13
  ret void
}

declare void @je_malloc_mutex_prefork(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @je_tcache_postfork_parent(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @je_malloc_mutex_postfork_parent(ptr noundef %0, ptr noundef nonnull @tcaches_mtx) #13
  ret void
}

declare void @je_malloc_mutex_postfork_parent(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @je_tcache_postfork_child(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @je_malloc_mutex_postfork_child(ptr noundef %0, ptr noundef nonnull @tcaches_mtx) #13
  ret void
}

declare void @je_malloc_mutex_postfork_child(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @je_tcache_assert_initialized(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i64, i32 } @rtree_metadata_read(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = lshr i64 %2, 30
  %i.b = and i64 %i.a, 15
  %i.c = and i64 %2, -1073741824                  ; 11 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.b ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !152  ; 3 uses
  %i.f = icmp eq i64 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.c, !prof !136

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !155
  %i.i = lshr i64 %2, 12
  %i.j = and i64 %i.i, 262143
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  br label %atomic_load_p.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !152
  %i.n = icmp eq i64 %i.m, %i.c
  br i1 %i.n, label %bb.d, label %.preheader.preheader, !prof !136

.preheader.preheader:                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !152
  %i.q = icmp eq i64 %i.p, %i.c
  br i1 %i.q, label %bb.f, label %.preheader.1, !prof !136

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !155  ; 2 uses
  store i64 %i.e, ptr %i.l, align 8, !tbaa !152
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !155
  store ptr %i.u, ptr %i.r, align 8, !tbaa !155
  store i64 %i.c, ptr %i.d, align 8, !tbaa !152
  store ptr %i.s, ptr %i.t, align 8, !tbaa !155
  %i.v = lshr i64 %2, 12
  %i.w = and i64 %i.v, 262143
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.w
  br label %atomic_load_p.exit

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !152
  %i.aa = icmp eq i64 %i.z, %i.c
  br i1 %i.aa, label %bb.f, label %.preheader.2, !prof !136

.preheader.2:                                     ; preds = %.preheader.1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !152
  %i.ad = icmp eq i64 %i.ac, %i.c
  br i1 %i.ad, label %bb.f, label %.preheader.3, !prof !136

.preheader.3:                                     ; preds = %.preheader.2
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !152
  %i.ag = icmp eq i64 %i.af, %i.c
  br i1 %i.ag, label %bb.f, label %.preheader.4, !prof !136

.preheader.4:                                     ; preds = %.preheader.3
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !152
  %i.aj = icmp eq i64 %i.ai, %i.c
  br i1 %i.aj, label %bb.f, label %.preheader.5, !prof !136

.preheader.5:                                     ; preds = %.preheader.4
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !152
  %i.am = icmp eq i64 %i.al, %i.c
  br i1 %i.am, label %bb.f, label %.preheader.6, !prof !136

.preheader.6:                                     ; preds = %.preheader.5
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !152
  %i.ap = icmp eq i64 %i.ao, %i.c
  br i1 %i.ap, label %bb.f, label %bb.e, !prof !136

bb.e:                                             ; preds = %.preheader.6
  %i.aq = tail call ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef %0, ptr noundef nonnull @je_arena_emap_global, ptr noundef nonnull %1, i64 noundef %2, i1 noundef zeroext true, i1 noundef zeroext false) #13
  br label %atomic_load_p.exit

bb.f:                                             ; preds = %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi ptr [ %i.o, %.preheader.preheader ], [ %i.y, %.preheader.1 ], [ %i.ab, %.preheader.2 ], [ %i.ae, %.preheader.3 ], [ %i.ah, %.preheader.4 ], [ %i.ak, %.preheader.5 ], [ %i.an, %.preheader.6 ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !155 ; 2 uses
  %i.at = getelementptr i8, ptr %.lcssa, i64 -16  ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !152
  store i64 %i.au, ptr %.lcssa, align 8, !tbaa !152
  %i.av = getelementptr i8, ptr %.lcssa, i64 -8   ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !155
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !155
  store i64 %i.e, ptr %i.at, align 8, !tbaa !152
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !155
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !155
  store i64 %i.c, ptr %i.d, align 8, !tbaa !152
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !155
  %i.az = lshr i64 %2, 12
  %i.ba = and i64 %i.az, 262143
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ba
  br label %atomic_load_p.exit

atomic_load_p.exit:                               ; preds = %bb.f, %bb.b, %bb.d, %bb.e
  %.1.i = phi ptr [ %i.k, %bb.b ], [ %i.x, %bb.d ], [ %i.aq, %bb.e ], [ %i.bb, %bb.f ]
  %i.bc = load atomic ptr, ptr %.1.i monotonic, align 8, !noalias !156
  %i.bd = ptrtoint ptr %i.bc to i64               ; 3 uses
  %i.be = lshr i64 %i.bd, 48
  %i.bf = trunc i64 %i.bd to i8                   ; 2 uses
  %i.bg = and i8 %i.bf, 1
  %.sroa.6.17.insert.ext = zext nneg i8 %i.bg to i32
  %.sroa.6.17.insert.shift = shl nuw nsw i32 %.sroa.6.17.insert.ext, 8
  %i.bh = lshr i8 %i.bf, 1
  %i.bi = and i8 %i.bh, 1
  %.sroa.6.16.insert.ext = zext nneg i8 %i.bi to i32
  %.sroa.6.16.insert.insert = or disjoint i32 %.sroa.6.17.insert.shift, %.sroa.6.16.insert.ext
  %i.bj = shl i64 %i.bd, 30
  %.sroa.3.12.insert.shift = and i64 %i.bj, 30064771072
  %.sroa.3.12.insert.insert = or disjoint i64 %.sroa.3.12.insert.shift, %i.be
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.3.12.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.6.16.insert.insert, 1
  ret { i64, i32 } %.fca.1.insert
}

declare void @je_rtree_ctx_data_init(ptr noundef) local_unnamed_addr #4

declare ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #6

; Function Attrs: nounwind uwtable
define internal fastcc void @tcache_bin_flush_edatas_lookup(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, 4294967296) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %emap_edata_lookup_batch.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
end_hunk_1
