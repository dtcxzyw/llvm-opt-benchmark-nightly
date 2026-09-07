Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/pml_ob1_recvfrag?download=true
inline.NumInlined: 187
inline.NumDeleted: 76
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@mca_pml_ob1_recv_request_ack_send:bb.a
mca_pml_ob1_add_ack_to_pending.exit:              ; preds = %mca_bml_base_btl_array_get_next.exit, %bb.n, %bb.m
  ret void
}

; Function Attrs: inlinehint norecurse nounwind uwtable
define internal fastcc void @opal_free_list_return(ptr nofree noundef captures(address) %0, ptr noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr @opal_uses_threads, align 1, !tbaa !62, !range !63, !noundef !64
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = load volatile i64, ptr %i.c, align 8, !tbaa !28 ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.08.i.i = inttoptr i64 %i.d to ptr             ; 2 uses
  store volatile ptr %.08.i.i, ptr %i.e, align 8, !tbaa !30
  fence release
  %i.f = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.g = cmpxchg volatile ptr %i.c, i64 %i.d, i64 %i.f acquire monotonic, align 8 ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %opal_lifo_push_atomic.exit.i, label %opal_atomic_compare_exchange_strong_ptr.exit.i.i

opal_atomic_compare_exchange_strong_ptr.exit.i.i: ; preds = %bb.b, %opal_atomic_compare_exchange_strong_ptr.exit.i.i
  %i.i = phi { i64, i1 } [ %i.k, %opal_atomic_compare_exchange_strong_ptr.exit.i.i ], [ %i.g, %bb.b ]
  %i.j = extractvalue { i64, i1 } %i.i, 0         ; 2 uses
  %.0.i.i = inttoptr i64 %i.j to ptr              ; 2 uses
  store volatile ptr %.0.i.i, ptr %i.e, align 8, !tbaa !30
  fence release
  %i.k = cmpxchg volatile ptr %i.c, i64 %i.j, i64 %i.f acquire monotonic, align 8 ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %opal_lifo_push_atomic.exit.i, label %opal_atomic_compare_exchange_strong_ptr.exit.i.i

opal_lifo_push_atomic.exit.i:                     ; preds = %opal_atomic_compare_exchange_strong_ptr.exit.i.i, %bb.b
  %.0.lcssa.i.i = phi ptr [ %.08.i.i, %bb.b ], [ %.0.i.i, %opal_atomic_compare_exchange_strong_ptr.exit.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = icmp eq ptr %i.m, %.0.lcssa.i.i
  br i1 %i.n, label %bb.c, label %opal_free_list_return_mt.exit

bb.c:                                             ; preds = %opal_lifo_push_atomic.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load i64, ptr %i.o, align 8, !tbaa !109
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %opal_free_list_return_mt.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.r = load volatile i32, ptr %i.q, align 8, !tbaa !100
  %.not.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i, label %opal_free_list_return_mt.exit, label %opal_free_list_return_mt.exit.sink.split

bb.e:                                             ; preds = %bb.a
  %i.s = inttoptr i64 %i.d to ptr
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store volatile ptr %i.s, ptr %i.t, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %i.u, align 8, !tbaa !101
  %i.v = ptrtoint ptr %1 to i64
  store volatile i64 %i.v, ptr %i.c, align 8, !tbaa !28
  %i.w = load volatile ptr, ptr %i.t, align 8, !tbaa !30
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = icmp eq ptr %i.x, %i.w
  br i1 %i.y, label %bb.f, label %opal_free_list_return_mt.exit

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !109
  %.not.i4 = icmp eq i64 %i.aa, 0
  br i1 %.not.i4, label %opal_free_list_return_mt.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ac = load volatile i32, ptr %i.ab, align 8, !tbaa !100
  %.not.i.i5 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i5, label %opal_free_list_return_mt.exit, label %opal_free_list_return_mt.exit.sink.split

opal_free_list_return_mt.exit.sink.split:         ; preds = %bb.g, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  %i.ae = load volatile i32, ptr %i.ad, align 4, !tbaa !102
  %i.af = add nsw i32 %i.ae, 1
  store volatile i32 %i.af, ptr %i.ad, align 4, !tbaa !102
  br label %opal_free_list_return_mt.exit

opal_free_list_return_mt.exit:                    ; preds = %opal_free_list_return_mt.exit.sink.split, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %opal_lifo_push_atomic.exit.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define ptr @ompi_pml_ob1_check_cantmatch_for_match(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110  ; 12 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.d = load i16, ptr %i.c, align 4, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i16, ptr %i.e, align 8, !tbaa !79
  %i.g = icmp eq i16 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22   ; 12 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.l = load volatile ptr, ptr %i.k, align 8, !tbaa !20
  %i.m = icmp eq ptr %i.l, %i.b
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.a, align 8, !tbaa !23
  br label %remove_head_from_ordered_list.exit

bb.f:                                             ; preds = %bb.d
  %i.n = load volatile ptr, ptr %i.k, align 8, !tbaa !20
  store ptr %i.n, ptr %i.a, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.p = load volatile ptr, ptr %i.o, align 8, !tbaa !21
  %i.q = load volatile ptr, ptr %i.k, align 8, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store volatile ptr %i.p, ptr %i.r, align 8, !tbaa !31
  %i.s = load volatile ptr, ptr %i.k, align 8, !tbaa !20
  %i.t = load volatile ptr, ptr %i.o, align 8, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store volatile ptr %i.s, ptr %i.u, align 8, !tbaa !30
  br label %remove_head_from_ordered_list.exit

bb.g:                                             ; preds = %bb.c
  store ptr null, ptr %i.h, align 8, !tbaa !22
  store ptr %i.i, ptr %i.a, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 7 uses
  %i.w = load volatile ptr, ptr %i.v, align 8, !tbaa !20
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load volatile ptr, ptr %i.v, align 8, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.aa = load volatile ptr, ptr %i.z, align 8, !tbaa !21
  %i.ab = load volatile ptr, ptr %i.v, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store volatile ptr %i.aa, ptr %i.ac, align 8, !tbaa !31
  %i.ad = load volatile ptr, ptr %i.v, align 8, !tbaa !20
  %i.ae = load volatile ptr, ptr %i.z, align 8, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store volatile ptr %i.ad, ptr %i.af, align 8, !tbaa !30
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink.i = phi ptr [ %i.y, %bb.h ], [ null, %bb.g ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  store ptr %.sink.i, ptr %i.ag, align 8, !tbaa !22
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ai = load volatile ptr, ptr %i.ah, align 8, !tbaa !20
  %i.aj = icmp eq ptr %i.ai, %i.b
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store volatile ptr %i.i, ptr %i.v, align 8, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store volatile ptr %i.i, ptr %i.ak, align 8, !tbaa !21
  br label %remove_head_from_ordered_list.exit

bb.k:                                             ; preds = %bb.i
  %i.al = load volatile ptr, ptr %i.ah, align 8, !tbaa !20
  store volatile ptr %i.al, ptr %i.v, align 8, !tbaa !20
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.an = load volatile ptr, ptr %i.am, align 8, !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  store volatile ptr %i.an, ptr %i.ao, align 8, !tbaa !21
  %i.ap = load volatile ptr, ptr %i.v, align 8, !tbaa !20
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store volatile ptr %i.i, ptr %i.aq, align 8, !tbaa !31
  %i.ar = load volatile ptr, ptr %i.ao, align 8, !tbaa !21
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store volatile ptr %i.i, ptr %i.as, align 8, !tbaa !30
  br label %remove_head_from_ordered_list.exit

remove_head_from_ordered_list.exit:               ; preds = %bb.e, %bb.f, %bb.j, %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store volatile ptr null, ptr %i.at, align 8, !tbaa !20
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store volatile ptr null, ptr %i.au, align 8, !tbaa !21
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.b, %remove_head_from_ordered_list.exit
  %.0 = phi ptr [ %i.b, %remove_head_from_ordered_list.exit ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define void @mca_pml_ob1_recv_frag_callback_match(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %2 = alloca [16 x %struct.iovec], align 16      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !114  ; 12 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28   ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !115  ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i64 0, ptr %i.b, align 8, !tbaa !116
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !84
  %i.k = icmp ult i64 %i.j, 14
  br i1 %i.k, label %bb.cq, label %bb.b, !prof !65

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !117  ; 3 uses
  %i.n = zext i16 %i.m to i32
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_communicators, i64 88), align 8, !tbaa !120
  %.not.i.i = icmp sgt i32 %i.o, %i.n
  br i1 %.not.i.i, label %bb.c, label %select.unfold, !prof !81

bb.c:                                             ; preds = %bb.b
  %i.p = load i8, ptr @opal_uses_threads, align 1, !tbaa !62, !range !63, !noundef !64
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.d, label %.thread.i.i, !prof !65

.thread.i.i:                                      ; preds = %bb.c
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_communicators, i64 112), align 8, !tbaa !121
  %i.s = zext i16 %i.m to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !61
  br label %opal_pointer_array_get_item.exit.i

bb.d:                                             ; preds = %bb.c
  %i.v = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_mpi_communicators, i64 32)) #13 ; 0 uses
  %.pre.i.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !62, !range !63
  %i.w = trunc nuw i8 %.pre.i.i to i1
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_communicators, i64 112), align 8, !tbaa !121
  %i.y = zext i16 %i.m to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !61  ; 2 uses
  br i1 %i.w, label %bb.e, label %opal_pointer_array_get_item.exit.i, !prof !122

bb.e:                                             ; preds = %bb.d
  %i.ab = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_mpi_communicators, i64 32)) #13 ; 0 uses
  br label %opal_pointer_array_get_item.exit.i

opal_pointer_array_get_item.exit.i:               ; preds = %bb.e, %bb.d, %.thread.i.i
  %.0.i.i = phi ptr [ %i.u, %.thread.i.i ], [ %i.aa, %bb.e ], [ %i.aa, %bb.d ] ; 9 uses
  %i.ac = icmp ult ptr %.0.i.i, inttoptr (i64 2 to ptr)
  br i1 %i.ac, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %opal_pointer_array_get_item.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 224
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !57
  %i.af = and i32 %i.ae, 4096
  %.not6.i = icmp eq i32 %i.af, 0
  br i1 %.not6.i, label %select.unfold, label %ompi_comm_lookup.exit

select.unfold:                                    ; preds = %bb.f, %opal_pointer_array_get_item.exit.i, %bb.b
  tail call fastcc void @append_frag_to_list(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 2320), ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, i64 noundef %i.h, ptr noundef null)
  br label %bb.cq

ompi_comm_lookup.exit:                            ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 328
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !56 ; 11 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !123 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 224
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !71
  %i.am = trunc i64 %i.al to i32
  %.not.i = icmp slt i32 %i.aj, %i.am
  br i1 %.not.i, label %bb.h, label %bb.g, !prof !81

bb.g:                                             ; preds = %ompi_comm_lookup.exit
  tail call void (i32, ptr, ...) @ompi_rte_abort(i32 noundef -1, ptr noundef nonnull @.str.2) #14
  unreachable

bb.h:                                             ; preds = %ompi_comm_lookup.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 216 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !72 ; 2 uses
  %i.ap = sext i32 %i.aj to i64                   ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load volatile ptr, ptr %i.aq, align 8, !tbaa !74
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.i, label %mca_pml_ob1_peer_lookup.exit, !prof !65

bb.i:                                             ; preds = %bb.h
  %i.at = tail call ptr @mca_pml_ob1_peer_create(ptr noundef nonnull %.0.i.i, ptr noundef nonnull %i.ah, i32 noundef %i.aj) #13 ; 0 uses
  %.pre.i = load ptr, ptr %i.an, align 8, !tbaa !72
  br label %mca_pml_ob1_peer_lookup.exit

mca_pml_ob1_peer_lookup.exit:                     ; preds = %bb.h, %bb.i
  %i.au = phi ptr [ %.pre.i, %bb.i ], [ %i.ao, %bb.h ]
  %i.av = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.ap
  %i.aw = load volatile ptr, ptr %i.av, align 8, !tbaa !74 ; 6 uses
  %i.ax = load i8, ptr @mca_pml_ob1_matching_protection, align 1, !tbaa !62, !range !63, !noundef !64
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = load i8, ptr @opal_uses_threads, align 1, !range !63
  %i.ba = trunc nuw i8 %i.az to i1
  %or.cond = select i1 %i.ay, i1 true, i1 %i.ba, !prof !124
  br i1 %or.cond, label %.sink.split, label %bb.j, !prof !124

.sink.split:                                      ; preds = %mca_pml_ob1_peer_lookup.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.bc = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.bb) #13 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %mca_pml_ob1_peer_lookup.exit, %.sink.split
  %i.bd = getelementptr i8, ptr %.0.i.i, i64 377
  %.val = load i8, ptr %i.bd, align 1, !tbaa !67, !range !63, !noundef !64
  %i.be = trunc nuw i8 %.val to i1
  br i1 %i.be, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !125
  %i.bh = add i32 %i.bg, 30
  %i.bi = icmp ult i32 %i.bh, 4
  br i1 %i.bi, label %bb.l, label %.critedge, !prof !81

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bj = getelementptr i8, ptr %.0.i.i, i64 378
  %.val120 = load i8, ptr %i.bj, align 2, !tbaa !66, !range !63, !noundef !64
  %i.bk = trunc nuw i8 %.val120 to i1
  br i1 %i.bk, label %bb.m, label %.critedge119

bb.m:                                             ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !125 ; 2 uses
  %i.bn = add i32 %i.bm, 2147483647
  %or.cond.i = icmp ult i32 %i.bn, 2147483641
  %i.bo = add i32 %i.bm, 26
  %i.bp = icmp ult i32 %i.bo, -4
  %i.bq = and i1 %or.cond.i, %i.bp
  br i1 %i.bq, label %.critedge, label %.critedge119, !prof !65

.critedge:                                        ; preds = %bb.k, %bb.m
  %i.br = load i8, ptr @opal_uses_threads, align 1, !tbaa !62, !range !63, !noundef !64
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.n, label %bb.cq, !prof !65

bb.n:                                             ; preds = %.critedge
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.bu = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bt) #13 ; 0 uses
  br label %bb.cq

.critedge119:                                     ; preds = %bb.l, %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 228
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !126
  %i.bx = and i32 %i.bw, 8
  %.not = icmp eq i32 %i.bx, 0
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.critedge119
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !125
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %bb.p, label %bb.ah

bb.p:                                             ; preds = %bb.o, %.critedge119
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.cc = load i16, ptr %i.cb, align 4, !tbaa !27 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 3 uses
  %i.ce = load i16, ptr %i.cd, align 8, !tbaa !79
  %.not112 = icmp eq i16 %i.cc, %i.ce
  br i1 %.not112, label %bb.ag, label %bb.q, !prof !81

bb.q:                                             ; preds = %bb.p
  %i.cf = tail call fastcc ptr @opal_free_list_wait() ; 9 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 160
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 416
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 672
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 152
  store ptr %0, ptr %i.cj, align 8, !tbaa !127
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  br label %bb.r

bb.r:                                             ; preds = %bb.z, %bb.q
  %.023.i = phi ptr [ %i.ck, %bb.q ], [ %i.cr, %bb.z ] ; 10 uses
  %.0.i = phi ptr [ %i.f, %bb.q ], [ %i.co, %bb.z ] ; 11 uses
  %i.cl = load i8, ptr %.0.i, align 8, !tbaa !28
  switch i8 %i.cl, label %bb.aa [
    i8 65, label %bb.s
    i8 66, label %bb.t
    i8 67, label %bb.u
    i8 68, label %bb.v
    i8 70, label %bb.w
    i8 72, label %bb.x
    i8 73, label %bb.y
    i8 74, label %bb.z
  ]

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.023.i, ptr noundef nonnull align 8 dereferenceable(16) %.0.i, i64 16, i1 false)
  br label %ob1_hdr_copy.exit

bb.t:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.023.i, ptr noundef nonnull align 8 dereferenceable(32) %.0.i, i64 32, i1 false)
  br label %ob1_hdr_copy.exit

bb.u:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.023.i, ptr noundef nonnull align 8 dereferenceable(48) %.0.i, i64 48, i1 false)
  br label %ob1_hdr_copy.exit

bb.v:                                             ; preds = %bb.r
end_hunk_0
begin_hunk_1_@mca_pml_ob1_recv_frag_callback_match:bb.a
bb.y:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.023.i, ptr noundef nonnull align 8 dereferenceable(24) %.0.i, i64 24, i1 false)
  br label %ob1_hdr_copy.exit

bb.z:                                             ; preds = %bb.r
  %i.cm = ptrtoint ptr %.0.i to i64
  %i.cn = add i64 %i.cm, 32
  %i.co = inttoptr i64 %i.cn to ptr
  %i.cp = ptrtoint ptr %.023.i to i64
  %i.cq = add i64 %i.cp, 32
  %i.cr = inttoptr i64 %i.cq to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.023.i, ptr noundef nonnull align 8 dereferenceable(32) %.0.i, i64 32, i1 false)
  br label %bb.r

bb.aa:                                            ; preds = %bb.r
  %i.cs = load i16, ptr %.0.i, align 8
  store i16 %i.cs, ptr %.023.i, align 8
  br label %ob1_hdr_copy.exit

ob1_hdr_copy.exit:                                ; preds = %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.aa
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cf, i64 136
  store i64 1, ptr %i.ct, align 8, !tbaa !99
  %i.cu = load i64, ptr %i.i, align 8, !tbaa !84  ; 3 uses
  %i.cv = icmp ugt i64 %i.h, 1
  br i1 %i.cv, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %ob1_hdr_copy.exit
  %min.iters.check = icmp ult i64 %i.h, 6
  br i1 %min.iters.check, label %.lr.ph.preheader232, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.cw = add i64 %i.h, -1                        ; 2 uses
  %i.cx = and i64 %i.cw, 3                        ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 0
  %i.cz = select i1 %i.cy, i64 4, i64 %i.cx
  %n.vec = sub i64 %i.cw, %i.cz                   ; 2 uses
  %i.da = add i64 %n.vec, 1
  %i.db = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.cu, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.db, %vector.ph ], [ %i.dg, %vector.body ]
  %vec.phi229 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dh, %vector.body ]
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %index
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %index
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  %wide.vec = load <4 x i64>, ptr %i.de, align 8, !tbaa !84
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec230 = load <4 x i64>, ptr %i.df, align 8, !tbaa !84
  %strided.vec231 = shufflevector <4 x i64> %wide.vec230, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.dg = add <2 x i64> %strided.vec, %vec.phi    ; 2 uses
  %i.dh = add <2 x i64> %strided.vec231, %vec.phi229 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !205

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.dh, %i.dg
  %i.dj = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.lr.ph.preheader232

.lr.ph.preheader232:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0104149.ph = phi i64 [ %i.cu, %.lr.ph.preheader ], [ %i.dj, %middle.block ]
  %.0105148.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.da, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader232, %.lr.ph
  %.0104149 = phi i64 [ %i.dn, %.lr.ph ], [ %.0104149.ph, %.lr.ph.preheader232 ]
  %.0105148 = phi i64 [ %i.do, %.lr.ph ], [ %.0105148.ph, %.lr.ph.preheader232 ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.0105148
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !84
  %i.dn = add i64 %i.dm, %.0104149                ; 2 uses
  %i.do = add nuw i64 %.0105148, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.do, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !206

._crit_edge:                                      ; preds = %.lr.ph, %ob1_hdr_copy.exit
  %.0104.lcssa = phi i64 [ %i.cu, %ob1_hdr_copy.exit ], [ %i.dn, %.lr.ph ] ; 4 uses
  %i.dp = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 2408), align 8, !tbaa !93
  %i.dq = zext i32 %i.dp to i64
  %.not117 = icmp ugt i64 %.0104.lcssa, %i.dq
  br i1 %.not117, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %._crit_edge
  store i64 %.0104.lcssa, ptr %i.ch, align 8, !tbaa !130
  %i.dr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml_ob1, i64 2400), align 16, !tbaa !94 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !131
  %i.dt = tail call ptr %i.ds(ptr noundef nonnull %i.dr, i64 noundef %.0104.lcssa, i64 noundef 0) #13 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.cf, i64 424
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !98
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge, %bb.ab
  %storemerge = phi ptr [ %i.dt, %bb.ab ], [ %i.ci, %._crit_edge ] ; 3 uses
  store ptr %storemerge, ptr %i.cg, align 8, !tbaa !28
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cf, i64 168
  store i64 %.0104.lcssa, ptr %i.dv, align 8, !tbaa !84
  %.not159 = icmp eq i64 %i.h, 0
  br i1 %.not159, label %._crit_edge154, label %.lr.ph153.preheader

.lr.ph153.preheader:                              ; preds = %bb.ac
  %xtraiter = and i64 %i.h, 1
  %i.dw = icmp eq i64 %i.h, 1
  br i1 %i.dw, label %.lr.ph153.epil.preheader, label %.lr.ph153.preheader.new

.lr.ph153.preheader.new:                          ; preds = %.lr.ph153.preheader
  %unroll_iter = and i64 %i.h, -2
  br label %.lr.ph153

.lr.ph153:                                        ; preds = %.lr.ph153, %.lr.ph153.preheader.new
  %.1151 = phi ptr [ %storemerge, %.lr.ph153.preheader.new ], [ %i.ej, %.lr.ph153 ] ; 2 uses
  %.1106150 = phi i64 [ 0, %.lr.ph153.preheader.new ], [ %i.ek, %.lr.ph153 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph153.preheader.new ], [ %niter.next.1, %.lr.ph153 ]
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.1106150 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !28
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !84
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1151, ptr align 1 %i.dy, i64 %i.ea, i1 false)
  %i.eb = load i64, ptr %i.dz, align 8, !tbaa !84
  %i.ec = getelementptr inbounds nuw i8, ptr %.1151, i64 %i.eb ; 2 uses
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.1106150 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !28
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 24 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !84
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ec, ptr align 1 %i.ef, i64 %i.eh, i1 false)
  %i.ei = load i64, ptr %i.eg, align 8, !tbaa !84
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ei ; 2 uses
  %i.ek = add nuw i64 %.1106150, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge154.loopexit.unr-lcssa, label %.lr.ph153, !llvm.loop !207

._crit_edge154.loopexit.unr-lcssa:                ; preds = %.lr.ph153
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge154, label %.lr.ph153.epil.preheader

.lr.ph153.epil.preheader:                         ; preds = %._crit_edge154.loopexit.unr-lcssa, %.lr.ph153.preheader
  %.1151.epil.init = phi ptr [ %storemerge, %.lr.ph153.preheader ], [ %i.ej, %._crit_edge154.loopexit.unr-lcssa ]
  %.1106150.epil.init = phi i64 [ 0, %.lr.ph153.preheader ], [ %i.ek, %._crit_edge154.loopexit.unr-lcssa ]
  %lcmp.mod250 = trunc i64 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod250)
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.1106150.epil.init ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !28
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !84
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1151.epil.init, ptr align 1 %i.em, i64 %i.eo, i1 false)
  br label %._crit_edge154

._crit_edge154:                                   ; preds = %.lr.ph153.epil.preheader, %._crit_edge154.loopexit.unr-lcssa, %bb.ac
  %i.ep = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.eq = load i16, ptr %i.cd, align 8, !tbaa !79
  tail call void @ompi_pml_ob1_append_frag_to_ordered_list(ptr noundef nonnull %i.ep, ptr noundef nonnull %i.cf, i16 noundef zeroext %i.eq)
  %i.er = load i8, ptr @mca_pml_ob1_matching_protection, align 1, !tbaa !62, !range !63, !noundef !64
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %._crit_edge154
  %i.et = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.eu = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.et) #13 ; 0 uses
  br label %bb.cq

bb.ae:                                            ; preds = %._crit_edge154
  %i.ev = load i8, ptr @opal_uses_threads, align 1, !tbaa !62, !range !63, !noundef !64
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.af, label %bb.cq, !prof !65

bb.af:                                            ; preds = %bb.ae
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.ey = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ex) #13 ; 0 uses
  br label %bb.cq

bb.ag:                                            ; preds = %bb.p
  %i.ez = add i16 %i.cc, 1
  store i16 %i.ez, ptr %i.cd, align 8, !tbaa !79
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.o
  %i.fa = tail call fastcc ptr @match_one(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, i64 noundef %i.h, ptr noundef nonnull %.0.i.i, ptr noundef %i.aw, ptr noundef null) ; 38 uses
  %i.fb = load i8, ptr @mca_pml_ob1_matching_protection, align 1, !tbaa !62, !range !63, !noundef !64
  %i.fc = trunc nuw i8 %i.fb to i1
  %i.fd = load i8, ptr @opal_uses_threads, align 1, !range !63
  %i.fe = trunc nuw i8 %i.fd to i1
  %or.cond211 = select i1 %i.fc, i1 true, i1 %i.fe, !prof !124
  br i1 %or.cond211, label %.sink.split207, label %bb.ai, !prof !124

.sink.split207:                                   ; preds = %bb.ah
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.fg = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ff) #13 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.sink.split207
  %.not113 = icmp eq ptr %i.fa, null
  br i1 %.not113, label %recv_request_pml_complete.exit, label %bb.aj, !prof !65

bb.aj:                                            ; preds = %bb.ai
  %i.fh = load i64, ptr %i.i, align 8, !tbaa !84
  %i.fi = add i64 %i.fh, -14                      ; 4 uses
  store i64 %i.fi, ptr %i.b, align 8, !tbaa !116
  %i.fj = add i64 %i.h, -1
  %i.fk = add i64 %i.fj, %i.fi
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fa, i64 512 ; 2 uses
  store i64 %i.fk, ptr %i.fl, align 8, !tbaa !214
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fa, i64 64
  %i.fn = load <2 x i32>, ptr %i.ai, align 4, !tbaa !58
  store <2 x i32> %i.fn, ptr %i.fm, align 8, !tbaa !58
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fa, i64 578
  store i8 1, ptr %i.fo, align 2, !tbaa !62
  fence release
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fa, i64 544 ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !116
  %.not114 = icmp eq i64 %i.fq, 0
  br i1 %.not114, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 1, ptr %i.c, align 4, !tbaa !58
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.fi, ptr %i.fr, align 8, !tbaa !216
  %i.fs = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 14
  store ptr %i.ft, ptr %2, align 16, !tbaa !217
  %i.fu = icmp ugt i64 %i.h, 1
  br i1 %i.fu, label %.lr.ph157, label %bb.al

.lr.ph157:                                        ; preds = %bb.ak, %.lr.ph157
  %i.fv = phi i64 [ %5, %.lr.ph157 ], [ 1, %bb.ak ] ; 2 uses
  %3 = phi i32 [ %4, %.lr.ph157 ], [ 1, %bb.ak ]
  %i.fw = phi i64 [ %i.ga, %.lr.ph157 ], [ %i.fi, %bb.ak ]
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.fv ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !84 ; 2 uses
  %i.ga = add i64 %i.fw, %i.fz                    ; 2 uses
  store i64 %i.ga, ptr %i.b, align 8, !tbaa !116
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.fv ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store i64 %i.fz, ptr %i.gc, align 8, !tbaa !216
  %i.gd = load ptr, ptr %i.fx, align 8, !tbaa !28
  store ptr %i.gd, ptr %i.gb, align 16, !tbaa !217
  %4 = add i32 %3, 1                              ; 3 uses
  %5 = zext i32 %4 to i64                         ; 2 uses
  %6 = icmp ugt i64 %i.h, %5
  br i1 %6, label %.lr.ph157, label %._crit_edge158, !llvm.loop !208

._crit_edge158:                                   ; preds = %.lr.ph157
  store i32 %4, ptr %i.c, align 4, !tbaa !58
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge158, %bb.ak
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fa, i64 192
  %i.gf = call i32 @opal_convertor_unpack(ptr noundef nonnull %i.ge, ptr noundef nonnull %2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #13 ; 0 uses
  %i.gg = load i64, ptr %i.b, align 8, !tbaa !116
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fa, i64 536
  store volatile i64 %i.gg, ptr %i.gh, align 8, !tbaa !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aj
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fa, i64 160 ; 2 uses
  %i.gj = load volatile i32, ptr %i.gi, align 8, !tbaa !218
  %i.gk = icmp eq i32 %i.gj, 0
  br i1 %i.gk, label %bb.an, label %recv_request_pml_complete.exit

bb.an:                                            ; preds = %bb.am
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fa, i64 568 ; 3 uses
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !58 ; 2 uses
  %.not41.i = icmp eq i32 %i.gm, 0
  br i1 %.not41.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.an
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fa, i64 664
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aq, %.lr.ph.i
  %i.go = phi i32 [ %i.gm, %.lr.ph.i ], [ %i.gx, %bb.aq ]
  %.040.i = phi i64 [ 0, %.lr.ph.i ], [ %i.gy, %bb.aq ] ; 2 uses
  %i.gp = getelementptr inbounds nuw [24 x i8], ptr %i.gn, i64 %.040.i ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !145 ; 2 uses
  %.not33.i = icmp eq ptr %i.gr, null
  br i1 %.not33.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gs = load ptr, ptr %i.gp, align 8, !tbaa !146
  %i.gt = getelementptr i8, ptr %i.gs, i64 8
  %.val34.i = load ptr, ptr %i.gt, align 8, !tbaa !149 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.val34.i, i64 264
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !152
  %i.gw = call i32 %i.gv(ptr noundef %.val34.i, ptr noundef nonnull %i.gr) #13, !inline_history !209 ; 0 uses
  %.pre.i124 = load i32, ptr %i.gl, align 8, !tbaa !58
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.gx = phi i32 [ %.pre.i124, %bb.ap ], [ %i.go, %bb.ao ] ; 2 uses
  %i.gy = add nuw nsw i64 %.040.i, 1              ; 2 uses
  %i.gz = zext i32 %i.gx to i64
  %i.ha = icmp samesign ult i64 %i.gy, %i.gz
  br i1 %i.ha, label %bb.ao, label %._crit_edge.i, !llvm.loop !210

._crit_edge.i:                                    ; preds = %bb.aq, %bb.an
  store i32 0, ptr %i.gl, align 8, !tbaa !58
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fa, i64 164
  %i.hc = load volatile i32, ptr %i.hb, align 4, !tbaa !219
  %i.hd = icmp eq i32 %i.hc, 1
  br i1 %i.hd, label %bb.ar, label %bb.bl

bb.ar:                                            ; preds = %._crit_edge.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.fa, i64 72
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !220
  %.not32.i = icmp eq i32 %i.hf, 0
  br i1 %.not32.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 7, ptr %i.a, align 4, !tbaa !58
  call void (ptr, ptr, ...) @ompi_mpi_errors_are_fatal_comm_handler(ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fa, i64 96
  store volatile i32 0, ptr %i.hg, align 8, !tbaa !221
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fa, i64 104 ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !222 ; 2 uses
  %.not.i.i126 = icmp eq i32 %i.hi, -32766
  br i1 %.not.i.i126, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hj = call i32 @opal_pointer_array_set_item(ptr noundef nonnull @ompi_request_f_to_c_table, i32 noundef %i.hi, ptr noundef null) #13 ; 0 uses
  store i32 -32766, ptr %i.hh, align 8, !tbaa !222
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fa, i64 176 ; 4 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !223
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8 ; 4 uses
  %i.hn = load i8, ptr @opal_uses_threads, align 1, !tbaa !62, !range !63, !noundef !64
  %i.ho = trunc nuw i8 %i.hn to i1
  br i1 %i.ho, label %bb.aw, label %bb.ax, !prof !65

bb.aw:                                            ; preds = %bb.av
  %i.hp = atomicrmw volatile add ptr %i.hm, i32 -1 monotonic, align 4
  %i.hq = add i32 %i.hp, -1
  br label %opal_thread_add_fetch_32.exit.i.i

bb.ax:                                            ; preds = %bb.av
  %i.hr = load volatile i32, ptr %i.hm, align 4, !tbaa !58
  %i.hs = add nsw i32 %i.hr, -1
  store volatile i32 %i.hs, ptr %i.hm, align 4, !tbaa !58
  %i.ht = load volatile i32, ptr %i.hm, align 4, !tbaa !58
  br label %opal_thread_add_fetch_32.exit.i.i

opal_thread_add_fetch_32.exit.i.i:                ; preds = %bb.ax, %bb.aw
  %.0.i.i.i = phi i32 [ %i.hq, %bb.aw ], [ %i.ht, %bb.ax ]
  %i.hu = icmp eq i32 %.0.i.i.i, 0
  br i1 %i.hu, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %opal_thread_add_fetch_32.exit.i.i
  %i.hv = load ptr, ptr %i.hk, align 8, !tbaa !223 ; 3 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !60
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 48
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !80 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !61 ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.hz, null
  br i1 %.not6.i.i.i, label %opal_obj_run_destructors.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ay, %.lr.ph.i.i.i
  %i.ia = phi ptr [ %i.ic, %.lr.ph.i.i.i ], [ %i.hz, %bb.ay ]
  %.07.i.i.i = phi ptr [ %i.ib, %.lr.ph.i.i.i ], [ %i.hy, %bb.ay ]
  call void %i.ia(ptr noundef nonnull %i.hv) #13, !inline_history !211
  %i.ib = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8 ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !61 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ic, null
  br i1 %.not.i.i.i, label %opal_obj_run_destructors.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

opal_obj_run_destructors.exit.loopexit.i.i:       ; preds = %.lr.ph.i.i.i
  %.pre.i.i128 = load ptr, ptr %i.hk, align 8, !tbaa !223
  br label %opal_obj_run_destructors.exit.i.i

opal_obj_run_destructors.exit.i.i:                ; preds = %opal_obj_run_destructors.exit.loopexit.i.i, %bb.ay
  %i.id = phi ptr [ %.pre.i.i128, %opal_obj_run_destructors.exit.loopexit.i.i ], [ %i.hv, %bb.ay ]
  call void @free(ptr noundef %i.id) #13
  store ptr null, ptr %i.hk, align 8, !tbaa !223
  br label %bb.az

bb.az:                                            ; preds = %opal_obj_run_destructors.exit.i.i, %opal_thread_add_fetch_32.exit.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.fa, i64 184 ; 4 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !224 ; 2 uses
  %i.ig = getelementptr i8, ptr %i.if, i64 16
  %.val21.i.i = load i16, ptr %i.ig, align 8, !tbaa !157
  %i.ih = and i16 %.val21.i.i, 512
  %.not19.i.i = icmp eq i16 %i.ih, 0
  br i1 %.not19.i.i, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 8 ; 4 uses
  %i.ij = load i8, ptr @opal_uses_threads, align 1, !tbaa !62, !range !63, !noundef !64
  %i.ik = trunc nuw i8 %i.ij to i1
  br i1 %i.ik, label %bb.bb, label %bb.bc, !prof !65

bb.bb:                                            ; preds = %bb.ba
  %i.il = atomicrmw volatile add ptr %i.ii, i32 -1 monotonic, align 4
  %i.im = add i32 %i.il, -1
  br label %opal_thread_add_fetch_32.exit23.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.in = load volatile i32, ptr %i.ii, align 8, !tbaa !58
  %i.io = add nsw i32 %i.in, -1
  store volatile i32 %i.io, ptr %i.ii, align 8, !tbaa !58
  %i.ip = load volatile i32, ptr %i.ii, align 8, !tbaa !58
  br label %opal_thread_add_fetch_32.exit23.i.i

opal_thread_add_fetch_32.exit23.i.i:              ; preds = %bb.bc, %bb.bb
  %.0.i22.i.i = phi i32 [ %i.im, %bb.bb ], [ %i.ip, %bb.bc ]
  %i.iq = icmp eq i32 %.0.i22.i.i, 0
  br i1 %i.iq, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %opal_thread_add_fetch_32.exit23.i.i
  %i.ir = load ptr, ptr %i.ie, align 8, !tbaa !224 ; 3 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !60
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 48
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !80 ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !61 ; 2 uses
  %.not6.i24.i.i = icmp eq ptr %i.iv, null
  br i1 %.not6.i24.i.i, label %opal_obj_run_destructors.exit28.i.i, label %.lr.ph.i25.i.i

.lr.ph.i25.i.i:                                   ; preds = %bb.bd, %.lr.ph.i25.i.i
  %i.iw = phi ptr [ %i.iy, %.lr.ph.i25.i.i ], [ %i.iv, %bb.bd ]
  %.07.i26.i.i = phi ptr [ %i.ix, %.lr.ph.i25.i.i ], [ %i.iu, %bb.bd ]
  call void %i.iw(ptr noundef nonnull %i.ir) #13, !inline_history !211
  %i.ix = getelementptr inbounds nuw i8, ptr %.07.i26.i.i, i64 8 ; 2 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !61 ; 2 uses
  %.not.i27.i.i = icmp eq ptr %i.iy, null
  br i1 %.not.i27.i.i, label %opal_obj_run_destructors.exit28.loopexit.i.i, label %.lr.ph.i25.i.i, !llvm.loop !0

opal_obj_run_destructors.exit28.loopexit.i.i:     ; preds = %.lr.ph.i25.i.i
  %.pre29.i.i = load ptr, ptr %i.ie, align 8, !tbaa !224
  br label %opal_obj_run_destructors.exit28.i.i

opal_obj_run_destructors.exit28.i.i:              ; preds = %opal_obj_run_destructors.exit28.loopexit.i.i, %bb.bd
  %i.iz = phi ptr [ %.pre29.i.i, %opal_obj_run_destructors.exit28.loopexit.i.i ], [ %i.ir, %bb.bd ]
  call void @free(ptr noundef %i.iz) #13
  store ptr null, ptr %i.ie, align 8, !tbaa !224
  br label %bb.be

end_hunk_1
