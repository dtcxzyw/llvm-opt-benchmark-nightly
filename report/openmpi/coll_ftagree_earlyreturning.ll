Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/coll_ftagree_earlyreturning?download=true
inline.NumInlined: 266
inline.NumDeleted: 81
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@msg_up:bb.a
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !184
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  store i32 %i.dq, ptr %i.dr, align 8, !tbaa !187
  %i.ds = getelementptr inbounds nuw i8, ptr %.056, i64 120 ; 3 uses
  %i.dt = load volatile ptr, ptr %i.ds, align 8, !tbaa !63
  %i.du = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store volatile ptr %i.dt, ptr %i.du, align 8, !tbaa !63
  %i.dv = load volatile ptr, ptr %i.ds, align 8, !tbaa !63
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store volatile ptr %i.dg, ptr %i.dw, align 8, !tbaa !64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store volatile ptr %i.bo, ptr %i.dx, align 8, !tbaa !64
  store volatile ptr %i.dg, ptr %i.ds, align 8, !tbaa !63
  %i.dy = getelementptr inbounds nuw i8, ptr %.056, i64 136 ; 2 uses
  %i.dz = load volatile i64, ptr %i.dy, align 8, !tbaa !61
  %i.ea = add i64 %i.dz, 1
  store volatile i64 %i.ea, ptr %i.dy, align 8, !tbaa !61
  call fastcc void @era_check_status(ptr noundef %.056)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %opal_obj_new.exit77, %bb.o, %opal_obj_new.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @msg_down(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.d = call i32 @opal_hash_table_get_value_uint64(ptr noundef nonnull @era_ongoing_agreements, i64 noundef %i.c, ptr noundef nonnull %i.a) #20
  %i.e = icmp ne i32 %i.d, 0
  %i.f = load ptr, ptr %i.a, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.g = icmp eq ptr %i.f, null
  %i.h = select i1 %i.e, i1 true, i1 %i.g
  br i1 %i.h, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_ftagree_era_value_t_class, i64 56), align 8, !tbaa !71
  %i.j = call noalias ptr @malloc(i64 noundef %i.i) #21 ; 15 uses
  %i.k = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !52
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_ftagree_era_value_t_class, i64 32), align 8, !tbaa !55
  %.not.i = icmp eq i32 %i.k, %i.l
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @opal_class_initialize(ptr noundef nonnull @ompi_coll_ftagree_era_value_t_class) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not9.i = icmp eq ptr %i.j, null
  br i1 %.not9.i, label %opal_obj_new.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr @ompi_coll_ftagree_era_value_t_class, ptr %i.j, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store volatile i32 1, ptr %i.m, align 8, !tbaa !57
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_ftagree_era_value_t_class, i64 40), align 8, !tbaa !58 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !59   ; 2 uses
  %.not6.i.i = icmp eq ptr %i.o, null
  br i1 %.not6.i.i, label %opal_obj_new.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %i.p = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.o, %bb.e ]
  %.07.i.i = phi ptr [ %i.q, %.lr.ph.i.i ], [ %i.n, %bb.e ]
  call void %i.p(ptr noundef nonnull %i.j) #20, !inline_history !4
  %i.q = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !59   ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %opal_obj_new.exit, label %.lr.ph.i.i, !llvm.loop !1

opal_obj_new.exit:                                ; preds = %.lr.ph.i.i, %bb.d, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 4 dereferenceable(24) %i.t, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !170  ; 4 uses
  %i.w = icmp sgt i32 %i.v, -1
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_datatype_f_to_c_table, i64 88), align 8
  %.not.i24 = icmp sgt i32 %i.x, %i.v
  call void @llvm.assume(i1 %i.w)
  call void @llvm.assume(i1 %.not.i24)
  %i.y = load i8, ptr @opal_uses_threads, align 1, !tbaa !66, !range !67, !noundef !68
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.f, label %.thread.i, !prof !69

.thread.i:                                        ; preds = %opal_obj_new.exit
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_datatype_f_to_c_table, i64 112), align 8, !tbaa !96
  %i.ab = zext nneg i32 %i.v to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !59
  br label %opal_pointer_array_get_item.exit

bb.f:                                             ; preds = %opal_obj_new.exit
  %i.ae = call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_datatype_f_to_c_table, i64 32)) #20 ; 0 uses
  %.pre.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !66, !range !67
  %i.af = trunc nuw i8 %.pre.i to i1
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_datatype_f_to_c_table, i64 112), align 8, !tbaa !96
  %i.ah = zext nneg i32 %i.v to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !59 ; 2 uses
  br i1 %i.af, label %bb.g, label %opal_pointer_array_get_item.exit, !prof !97

bb.g:                                             ; preds = %bb.f
  %i.ak = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_datatype_f_to_c_table, i64 32)) #20 ; 0 uses
  br label %opal_pointer_array_get_item.exit

opal_pointer_array_get_item.exit:                 ; preds = %.thread.i, %bb.f, %bb.g
  %.0.i25 = phi ptr [ %i.ad, %.thread.i ], [ %i.aj, %bb.f ], [ %i.aj, %bb.g ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i25, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !103
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !168
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul i64 %i.am, %i.ap                    ; 3 uses
  %.not = icmp eq i64 %i.aq, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %opal_pointer_array_get_item.exit
  %i.ar = call noalias ptr @malloc(i64 noundef %i.aq) #21 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %1, i64 %i.aq, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %opal_pointer_array_get_item.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %i.au = load i32, ptr %i.at, align 4, !tbaa !171 ; 2 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aw = zext nneg i32 %i.au to i64
  %i.ax = shl nuw nsw i64 %i.aw, 2                ; 2 uses
  %i.ay = call noalias ptr @malloc(i64 noundef %i.ax) #21 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ay, ptr align 4 %2, i64 %i.ax, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call fastcc void @era_decide(ptr noundef nonnull %i.j, ptr noundef nonnull %i.f)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.bb = load i8, ptr @opal_uses_threads, align 1, !tbaa !66, !range !67, !noundef !68
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.l, label %bb.m, !prof !69

bb.l:                                             ; preds = %bb.k
  %i.bd = atomicrmw volatile add ptr %i.ba, i32 -1 monotonic, align 4
  %i.be = add i32 %i.bd, -1
  br label %opal_thread_add_fetch_32.exit

bb.m:                                             ; preds = %bb.k
  %i.bf = load volatile i32, ptr %i.ba, align 8, !tbaa !52
  %i.bg = add nsw i32 %i.bf, -1
  store volatile i32 %i.bg, ptr %i.ba, align 8, !tbaa !52
  %i.bh = load volatile i32, ptr %i.ba, align 8, !tbaa !52
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.l, %bb.m
  %.0.i26 = phi i32 [ %i.be, %bb.l ], [ %i.bh, %bb.m ]
  %i.bi = icmp eq i32 %.0.i26, 0
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %opal_thread_add_fetch_32.exit
  %i.bj = load ptr, ptr %i.j, align 8, !tbaa !56
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !70 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !59 ; 2 uses
  %.not6.i = icmp eq ptr %i.bm, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %i.bn = phi ptr [ %i.bp, %.lr.ph.i ], [ %i.bm, %bb.n ]
  %.07.i = phi ptr [ %i.bo, %.lr.ph.i ], [ %i.bl, %bb.n ]
  call void %i.bn(ptr noundef nonnull %i.j) #20, !inline_history !2
  %i.bo = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !59 ; 2 uses
  %.not.i27 = icmp eq ptr %i.bp, null
  br i1 %.not.i27, label %opal_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !3

opal_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %bb.n
  call void @free(ptr noundef nonnull %i.j) #20
  br label %bb.o

bb.o:                                             ; preds = %opal_thread_add_fetch_32.exit, %opal_obj_run_destructors.exit, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc void @send_msg(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, i64 %3, i32 noundef range(i32 1, 4) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, ptr noundef %7) unnamed_addr #2 {
bb.a:
  %8 = alloca [4 x %struct.iovec], align 16       ; 9 uses
  %9 = alloca %struct.era_msg_header_t, align 8   ; 9 uses
  %.sroa.0.0.extract.trunc = trunc i64 %3 to i32
  %.sroa.3.0.extract.shift = lshr i64 %3, 16
  %.sroa.3.0.extract.trunc = trunc i64 %.sroa.3.0.extract.shift to i32
  %.sroa.4.0.extract.shift = lshr i64 %3, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.a = icmp eq ptr %0, null                     ; 2 uses
  %.0104.sroa.gep = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.0104.sroa.gep136 = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @ompi_proc_find(ptr noundef %2) #20
  br label %ompi_comm_peer_lookup.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 272
  %.val121 = load ptr, ptr %i.c, align 8, !tbaa !183
  %i.d = getelementptr inbounds nuw i8, ptr %.val121, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !141
  %i.f = sext i32 %1 to i64                       ; 2 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !143  ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.j = trunc i64 %i.i to i1
  br i1 %i.j, label %bb.d, label %ompi_comm_peer_lookup.exit, !prof !69

bb.d:                                             ; preds = %bb.c
  %i.k = lshr i64 %i.i, 1
  %i.l = and i64 %i.k, 32767
  %i.m = and i64 %i.i, -65536
  %.sroa.0.0.insert.insert.i.i.i.i.i = or disjoint i64 %i.l, %i.m
  %i.n = tail call ptr @ompi_proc_for_name(i64 %.sroa.0.0.insert.insert.i.i.i.i.i) #20 ; 5 uses
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !141
  %i.p = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.f
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = cmpxchg volatile ptr %i.p, i64 %i.i, i64 %i.q acquire monotonic, align 8
  %i.s = extractvalue { i64, i1 } %i.r, 1
  br i1 %i.s, label %bb.e, label %ompi_comm_peer_lookup.exit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.u = load i8, ptr @opal_uses_threads, align 1, !tbaa !66, !range !67, !noundef !68
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.f, label %bb.g, !prof !69

bb.f:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.t, i32 1 monotonic, align 4 ; 0 uses
  br label %ompi_comm_peer_lookup.exit

bb.g:                                             ; preds = %bb.e
  %i.x = load volatile i32, ptr %i.t, align 4, !tbaa !52
  %i.y = add nsw i32 %i.x, 1
  store volatile i32 %i.y, ptr %i.t, align 4, !tbaa !52
  %i.z = load volatile i32, ptr %i.t, align 4, !tbaa !52 ; 0 uses
  br label %ompi_comm_peer_lookup.exit

ompi_comm_peer_lookup.exit:                       ; preds = %bb.g, %bb.f, %bb.d, %bb.c, %bb.b
  %.097 = phi ptr [ %i.b, %bb.b ], [ %i.h, %bb.c ], [ %i.n, %bb.g ], [ %i.n, %bb.f ], [ %i.n, %bb.d ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.097, i64 72 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !59 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  %.pre150 = load i8, ptr @opal_uses_threads, align 1, !tbaa !66, !range !67 ; 2 uses
  br i1 %i.ac, label %bb.h, label %mca_bml_base_get_endpoint.exit.thread, !prof !69

bb.h:                                             ; preds = %ompi_comm_peer_lookup.exit
  %i.ad = trunc nuw i8 %.pre150 to i1
  br i1 %i.ad, label %bb.i, label %.thread.i, !prof !69

bb.i:                                             ; preds = %bb.h
  %i.ae = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mca_bml_lock, i64 16)) #20 ; 0 uses
  %.pr.i = load ptr, ptr %i.aa, align 8, !tbaa !59
  %i.af = icmp eq ptr %.pr.i, null
  br i1 %i.af, label %.thread.i, label %bb.j

.thread.i:                                        ; preds = %bb.i, %bb.h
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_bml, i64 8), align 8, !tbaa !278
  %i.ah = tail call i32 %i.ag(ptr noundef nonnull %.097) #20, !inline_history !275 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %.thread.i, %bb.i
  %i.ai = load i8, ptr @opal_uses_threads, align 1, !tbaa !66, !range !67, !noundef !68
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.k, label %mca_bml_base_get_endpoint.exit, !prof !69

bb.k:                                             ; preds = %bb.j
  %i.ak = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mca_bml_lock, i64 16)) #20 ; 0 uses
  br label %mca_bml_base_get_endpoint.exit

mca_bml_base_get_endpoint.exit:                   ; preds = %bb.j, %bb.k
  %.pr = load ptr, ptr %i.aa, align 8, !tbaa !59  ; 2 uses
  %i.al = icmp eq ptr %.pr, null
  br i1 %i.al, label %bb.l, label %mca_bml_base_get_endpoint.exit.mca_bml_base_get_endpoint.exit.thread_crit_edge

mca_bml_base_get_endpoint.exit.mca_bml_base_get_endpoint.exit.thread_crit_edge: ; preds = %mca_bml_base_get_endpoint.exit
  %.pre = load i8, ptr @opal_uses_threads, align 1, !tbaa !66, !range !67
  br label %mca_bml_base_get_endpoint.exit.thread

bb.l:                                             ; preds = %mca_bml_base_get_endpoint.exit
  %i.am = load i32, ptr @ompi_ftmpi_output_handle, align 4, !tbaa !52
  %i.an = tail call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.am) #20
  br i1 %i.an, label %switch.lookup, label %.loopexit

switch.lookup:                                    ; preds = %bb.l
  %i.ao = load i32, ptr @ompi_ftmpi_output_handle, align 4, !tbaa !52
  %i.ap = tail call ptr @ompi_pmix_print_name(ptr noundef nonnull @opal_process_info) #20
  %10 = and i32 %.sroa.3.0.extract.trunc, 65535
  %i.aq = and i32 %.sroa.0.0.extract.trunc, 65535
  %i.ar = zext nneg i32 %4 to i64
  %i.as = getelementptr [8 x i8], ptr @switch.table.send_msg, i64 %i.ar
  %switch.gep = getelementptr i8, ptr %i.as, i64 -8
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !26 ; 2 uses
  %.not119 = icmp eq ptr %i.au, null
  br i1 %.not119, label %bb.n, label %bb.m

bb.m:                                             ; preds = %switch.lookup
  %i.av = load i32, ptr %i.au, align 4, !tbaa !52
  br label %bb.n

bb.n:                                             ; preds = %switch.lookup, %bb.m
  %i.aw = phi i32 [ %i.av, %bb.m ], [ 0, %switch.lookup ]
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !23
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !171
  %.not120 = icmp eq ptr %2, null
  br i1 %.not120, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = tail call ptr @ompi_pmix_print_name(ptr noundef nonnull %2) #20
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.bc = phi ptr [ %i.bb, %bb.o ], [ @.str.8, %bb.n ]
  tail call void (i32, ptr, ...) @opal_output(i32 noundef %i.ao, ptr noundef nonnull @.str.7, ptr noundef %i.ap, i32 noundef %10, i32 noundef %.sroa.4.0.extract.trunc, i32 noundef %i.aq, ptr noundef nonnull %switch.load, i32 noundef %i.aw, i32 noundef %i.ay, i32 noundef %i.ba, i32 noundef %1, ptr noundef %i.bc) #20
  br label %.loopexit

mca_bml_base_get_endpoint.exit.thread:            ; preds = %mca_bml_base_get_endpoint.exit.mca_bml_base_get_endpoint.exit.thread_crit_edge, %ompi_comm_peer_lookup.exit
  %i.bd = phi i8 [ %.pre, %mca_bml_base_get_endpoint.exit.mca_bml_base_get_endpoint.exit.thread_crit_edge ], [ %.pre150, %ompi_comm_peer_lookup.exit ]
  %i.be = phi ptr [ %.pr, %mca_bml_base_get_endpoint.exit.mca_bml_base_get_endpoint.exit.thread_crit_edge ], [ %i.ab, %ompi_comm_peer_lookup.exit ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 112
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !281 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !285 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !286 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !170 ; 4 uses
  %i.bo = icmp sgt i32 %i.bn, -1
  %i.bp = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_datatype_f_to_c_table, i64 88), align 8
  %.not.i123 = icmp sgt i32 %i.bp, %i.bn
  tail call void @llvm.assume(i1 %i.bo)
  tail call void @llvm.assume(i1 %.not.i123)
  %i.bq = trunc nuw i8 %i.bd to i1
  br i1 %i.bq, label %bb.q, label %.thread.i125, !prof !69

.thread.i125:                                     ; preds = %mca_bml_base_get_endpoint.exit.thread
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_datatype_f_to_c_table, i64 112), align 8, !tbaa !96
  %i.bs = zext nneg i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !59
  br label %opal_pointer_array_get_item.exit

bb.q:                                             ; preds = %mca_bml_base_get_endpoint.exit.thread
  %i.bv = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_datatype_f_to_c_table, i64 32)) #20 ; 0 uses
  %.pre.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !66, !range !67
  %i.bw = trunc nuw i8 %.pre.i to i1
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_datatype_f_to_c_table, i64 112), align 8, !tbaa !96
  %i.by = zext nneg i32 %i.bn to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !59 ; 2 uses
  br i1 %i.bw, label %bb.r, label %opal_pointer_array_get_item.exit, !prof !97

bb.r:                                             ; preds = %bb.q
  %i.cb = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_datatype_f_to_c_table, i64 32)) #20 ; 0 uses
  br label %opal_pointer_array_get_item.exit

opal_pointer_array_get_item.exit:                 ; preds = %.thread.i125, %bb.q, %bb.r
  %.0.i124 = phi ptr [ %i.bu, %.thread.i125 ], [ %i.ca, %bb.q ], [ %i.ca, %bb.r ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i124, i64 24
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !103
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 3 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !168
  %i.cg = zext i32 %i.cf to i64
  %i.ch = mul i64 %i.cd, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !171
  %i.ck = sext i32 %i.cj to i64
  %i.cl = shl nsw i64 %i.ck, 2
  %i.cm = sext i32 %6 to i64
  %i.cn = shl nsw i64 %i.cm, 2                    ; 2 uses
  %i.co = add nsw i64 %i.cn, 56
  %i.cp = add i64 %i.co, %i.ch
  %i.cq = add i64 %i.cp, %i.cl                    ; 2 uses
  %i.cr = trunc i64 %i.cq to i32                  ; 3 uses
  store i32 %4, ptr %9, align 8, !tbaa !119
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %3, ptr %i.cs, align 8, !tbaa !35
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ct, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false)
  br i1 %i.a, label %bb.t, label %bb.s

bb.s:                                             ; preds = %opal_pointer_array_get_item.exit
  %i.cu = getelementptr i8, ptr %0, i64 220
  %.val = load i32, ptr %i.cu, align 4, !tbaa !185
  br label %bb.t

bb.t:                                             ; preds = %opal_pointer_array_get_item.exit, %bb.s
  %.val.sink = phi i32 [ %.val, %bb.s ], [ -1, %opal_pointer_array_get_item.exit ]
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %.val.sink, ptr %i.cv, align 8, !tbaa !184
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.cx = load i64, ptr @opal_process_info, align 8
  store i64 %i.cx, ptr %i.cw, align 4
  %i.cy = icmp eq i32 %4, 1                       ; 2 uses
  %spec.select = select i1 %i.cy, i32 %6, i32 0
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 52
  store i32 %spec.select, ptr %i.cz, align 4, !tbaa !106
  store ptr %9, ptr %8, align 16, !tbaa !288
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 56, ptr %i.da, align 8, !tbaa !289
  %i.db = load i32, ptr %i.bm, align 8, !tbaa !170 ; 4 uses
  %i.dc = icmp sgt i32 %i.db, -1
  %i.dd = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_datatype_f_to_c_table, i64 88), align 8
  %.not.i126 = icmp sgt i32 %i.dd, %i.db
  call void @llvm.assume(i1 %i.dc)
  call void @llvm.assume(i1 %.not.i126)
  %i.de = load i8, ptr @opal_uses_threads, align 1, !tbaa !66, !range !67, !noundef !68
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.u, label %.thread.i128, !prof !69

.thread.i128:                                     ; preds = %bb.t
  %i.dg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_datatype_f_to_c_table, i64 112), align 8, !tbaa !96
  %i.dh = zext nneg i32 %i.db to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !59
  br label %opal_pointer_array_get_item.exit130

bb.u:                                             ; preds = %bb.t
  %i.dk = call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_datatype_f_to_c_table, i64 32)) #20 ; 0 uses
  %.pre.i129 = load i8, ptr @opal_uses_threads, align 1, !tbaa !66, !range !67
  %i.dl = trunc nuw i8 %.pre.i129 to i1
  %i.dm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_datatype_f_to_c_table, i64 112), align 8, !tbaa !96
  %i.dn = zext nneg i32 %i.db to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !59 ; 2 uses
  br i1 %i.dl, label %bb.v, label %opal_pointer_array_get_item.exit130, !prof !97

bb.v:                                             ; preds = %bb.u
  %i.dq = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_datatype_f_to_c_table, i64 32)) #20 ; 0 uses
  br label %opal_pointer_array_get_item.exit130

opal_pointer_array_get_item.exit130:              ; preds = %.thread.i128, %bb.u, %bb.v
  %.0.i127 = phi ptr [ %i.dj, %.thread.i128 ], [ %i.dp, %bb.u ], [ %i.dp, %bb.v ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i127, i64 24
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !103
  %i.dt = load i32, ptr %i.ce, align 4, !tbaa !168
  %i.du = sext i32 %i.dt to i64
  %i.dv = mul i64 %i.ds, %i.du
  %.not117 = icmp eq i64 %i.dv, 0
  br i1 %.not117, label %bb.z, label %bb.w

bb.w:                                             ; preds = %opal_pointer_array_get_item.exit130
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !26
  store ptr %i.dx, ptr %.0104.sroa.gep136, align 16, !tbaa !288
  %i.dy = load i32, ptr %i.bm, align 8, !tbaa !170 ; 4 uses
  %i.dz = icmp sgt i32 %i.dy, -1
  %i.ea = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_datatype_f_to_c_table, i64 88), align 8
  %.not.i131 = icmp sgt i32 %i.ea, %i.dy
  call void @llvm.assume(i1 %i.dz)
  call void @llvm.assume(i1 %.not.i131)
  %i.eb = load i8, ptr @opal_uses_threads, align 1, !tbaa !66, !range !67, !noundef !68
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.x, label %.thread.i133, !prof !69

.thread.i133:                                     ; preds = %bb.w
  %i.ed = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_datatype_f_to_c_table, i64 112), align 8, !tbaa !96
  %i.ee = zext nneg i32 %i.dy to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ee
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !59
  br label %opal_pointer_array_get_item.exit135

bb.x:                                             ; preds = %bb.w
  %i.eh = call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_datatype_f_to_c_table, i64 32)) #20 ; 0 uses
  %.pre.i134 = load i8, ptr @opal_uses_threads, align 1, !tbaa !66, !range !67
  %i.ei = trunc nuw i8 %.pre.i134 to i1
  %i.ej = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_datatype_f_to_c_table, i64 112), align 8, !tbaa !96
  %i.ek = zext nneg i32 %i.dy to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !59 ; 2 uses
  br i1 %i.ei, label %bb.y, label %opal_pointer_array_get_item.exit135, !prof !97

bb.y:                                             ; preds = %bb.x
  %i.en = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_datatype_f_to_c_table, i64 32)) #20 ; 0 uses
  br label %opal_pointer_array_get_item.exit135

opal_pointer_array_get_item.exit135:              ; preds = %.thread.i133, %bb.x, %bb.y
  %.0.i132 = phi ptr [ %i.eg, %.thread.i133 ], [ %i.em, %bb.x ], [ %i.em, %bb.y ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.i132, i64 24
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !103
  %i.eq = load i32, ptr %i.ce, align 4, !tbaa !168
  %i.er = sext i32 %i.eq to i64
  %i.es = mul i64 %i.ep, %i.er
end_hunk_0
