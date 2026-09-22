Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/drm_dp_mst_topology?download=true
inline.NumInlined: 535
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 16
begin_hunk_0_@drm_dp_get_mst_branch_device:bb.a
  br i1 %.not.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.e
  %i.ab = phi ptr [ %i.aa, %bb.f ], [ null, %bb.e ]
  %i.ac = load i8, ptr %2, align 1
  %i.ad = zext i8 %i.ac to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.ab, ptr noundef nonnull @.str.128, i32 noundef %i.d, i32 noundef %i.ad) #27
  br label %drm_dp_mst_topology_try_get_mstb.exit

.loopexit:                                        ; preds = %bb.b, %bb.d
  %.2 = phi ptr [ %i.w, %bb.d ], [ %.02948, %bb.b ] ; 2 uses
  %exitcond.not = icmp eq i32 %i.f, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %drm_dp_mst_get_ufp_num_at_lct_from_rad.exit, !llvm.loop !199

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %.029.lcssa = phi ptr [ %i.c, %.preheader ], [ %.2, %.loopexit ] ; 8 uses
  %i.ae = getelementptr i8, ptr %.029.lcssa, i64 64
  %i.af = load volatile i32, ptr %.029.lcssa, align 4 ; 2 uses
  %.old1.not.i.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.old1.not.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %._crit_edge, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.al, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i ], [ %i.af, %._crit_edge ] ; 3 uses
  %i.ag = add i32 %.0.i.i.i.i.i, 1
  %i.ah = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.029.lcssa, i32 %i.ag, ptr elementtype(i32) %.029.lcssa, i32 %.0.i.i.i.i.i) #21, !srcloc !30 ; 2 uses
  %i.ai = extractvalue { i8, i32 } %i.ah, 0       ; 2 uses
  %i.aj = icmp ult i8 %i.ai, 2
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = trunc nuw i8 %i.ai to i1
  br i1 %i.ak, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i.i.i, !prof !21

arch_atomic_try_cmpxchg.exit.i.i.i.i.i:           ; preds = %.preheader.i.i.i.i.i
  %i.al = extractvalue { i8, i32 } %i.ah, 1       ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i, label %.preheader.i.i.i.i.i, !llvm.loop !1

arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i:    ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i.i.i, %.preheader.i.i.i.i.i, %._crit_edge
  %.2.i.i.i.i.i = phi i32 [ 0, %._crit_edge ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i ], [ %.0.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.an = add i32 %.2.i.i.i.i.i, 1
  %i.ao = or i32 %i.an, %.2.i.i.i.i.i
  %.not.i.i.i.i.i = icmp sgt i32 %i.ao, -1
  br i1 %.not.i.i.i.i.i, label %kref_get_unless_zero.exit.i, label %bb.g, !prof !21

bb.g:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef %.029.lcssa, i32 noundef 0) #23
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %bb.g, %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i
  %.not42 = icmp eq i32 %.2.i.i.i.i.i, 0
  br i1 %.not42, label %drm_dp_mst_topology_try_get_mstb.exit, label %bb.h

bb.h:                                             ; preds = %kref_get_unless_zero.exit.i
  %i.ap = load ptr, ptr %i.ae, align 8
  %i.aq = getelementptr i8, ptr %i.ap, i64 88
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i, label %__drm_to_dev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.i, %bb.h
  %i.au = phi ptr [ %i.at, %bb.i ], [ null, %bb.h ]
  %i.av = load volatile i32, ptr %.029.lcssa, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.au, i32 noundef 1, ptr noundef nonnull @.str.100, ptr noundef %.029.lcssa, i32 noundef %i.av) #23
  br label %drm_dp_mst_topology_try_get_mstb.exit

drm_dp_mst_topology_try_get_mstb.exit:            ; preds = %__drm_to_dev.exit.i, %kref_get_unless_zero.exit.i, %.thread, %bb.a
  %.3 = phi ptr [ null, %.thread ], [ null, %bb.a ], [ null, %kref_get_unless_zero.exit.i ], [ %.029.lcssa, %__drm_to_dev.exit.i ]
  tail call void @mutex_unlock(ptr noundef %i.a) #23
  ret ptr %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #14

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #15

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_noprof(i64 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_edid_get_monitor_name(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_private_obj_create_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_private_obj_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_crtc_commit_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_init_generic(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -2147483648, 2) i32 @drm_dp_check_and_send_link_address(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 72
  %i.b = load i8, ptr %i.a, align 8, !range !19, !noundef !20
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i32 @drm_dp_send_link_address(ptr noundef %0, ptr noundef %1) #24, !srcloc !201 ; 3 uses
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp slt i32 %i.d, 0
  br i1 %i.f, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.024 = phi i8 [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 40         ; 3 uses
  %.pn30 = load ptr, ptr %i.g, align 8            ; 2 uses
  %.not31 = icmp eq ptr %.pn30, %i.g
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.i
  %.pn33 = phi ptr [ %.pn, %bb.i ], [ %.pn30, %bb.d ] ; 4 uses
  %.132 = phi i8 [ %.2, %bb.i ], [ %.024, %bb.d ] ; 4 uses
  %i.h = getelementptr i8, ptr %.pn33, i64 -15
  %i.i = load i8, ptr %i.h, align 1, !range !19, !noundef !20
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.k = getelementptr i8, ptr %.pn33, i64 -13
  %i.l = load i8, ptr %i.k, align 1, !range !19, !noundef !20
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %.pn33, i64 16
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not28 = icmp eq ptr %i.o, null
  br i1 %.not28, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call fastcc i32 @drm_dp_check_and_send_link_address(ptr noundef %0, ptr noundef %i.o) #24, !srcloc !202 ; 3 uses
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = icmp slt i32 %i.p, 0
  br i1 %i.r, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %.lr.ph, %bb.e, %bb.f
  %.2 = phi i8 [ %.132, %.lr.ph ], [ %.132, %bb.e ], [ %.132, %bb.h ], [ %.132, %bb.f ], [ 1, %bb.g ] ; 2 uses
  %.pn = load ptr, ptr %.pn33, align 8            ; 2 uses
  %.not = icmp eq ptr %.pn, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !200

._crit_edge:                                      ; preds = %bb.i, %bb.d
  %.1.lcssa = phi i8 [ %.024, %bb.d ], [ %.2, %bb.i ]
  %i.s = zext nneg i8 %.1.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.c, %._crit_edge
  %.0 = phi i32 [ %i.d, %bb.c ], [ %i.s, %._crit_edge ], [ %i.p, %bb.h ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_kms_helper_hotplug_event(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -2147483648, 2) i32 @drm_dp_send_link_address(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 align 16 prefalign(16) {
_kzalloc_noprof.exit:
  %i.a = alloca [16 x i8], align 16               ; 7 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %2 = alloca %struct.drm_printer, align 8        ; 11 uses
  %3 = alloca %struct.drm_dp_sideband_msg_req_body, align 8 ; 5 uses
  %i.c = alloca [64 x i8], align 16               ; 5 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 80), align 16
  %i.e = tail call noalias align 8 dereferenceable_or_null(768) ptr @__kmalloc_cache_noprof(ptr noundef %i.d, i32 noundef 3520, i64 noundef range(i64 -3040836845568, 3040836844153) 768) #25 ; 13 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.br, label %bb.a

bb.a:                                             ; preds = %_kzalloc_noprof.exit
  %i.f = getelementptr i8, ptr %i.e, i64 312
  store ptr %1, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %3, i8 0, i64 120, i1 false), !annotation !25
  store i8 1, ptr %3, align 8
  call void @drm_dp_encode_sideband_req(ptr noundef nonnull %3, ptr noundef nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.g = getelementptr i8, ptr %1, i64 72         ; 2 uses
  store i8 1, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %0, i64 872        ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.h) #23
  %i.i = getelementptr i8, ptr %i.e, i64 320      ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 896        ; 3 uses
  %i.k = getelementptr i8, ptr %0, i64 904        ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  store ptr %i.i, ptr %i.k, align 8
  store ptr %i.j, ptr %i.i, align 8
  %i.m = getelementptr i8, ptr %i.e, i64 328
  store ptr %i.l, ptr %i.m, align 8
  store volatile ptr %i.i, ptr %i.l, align 8
  %i.n = load i64, ptr @__drm_debug, align 8
  %i.o = and i64 %i.n, 256
  %.not9.i = icmp eq i64 %i.o, 0
  br i1 %.not9.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.p = getelementptr i8, ptr %0, i64 88
  %i.q = load ptr, ptr %i.p, align 8
  store ptr @__drm_printfn_dbg, ptr %2, align 8, !alias.scope !209
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.r, align 8, !alias.scope !209
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.q, ptr %i.s, align 8, !alias.scope !209
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.u = tail call i64 asm "lea 0(%rip), $0", "=r,~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !26
  %i.v = inttoptr i64 %i.u to ptr
  store ptr %i.v, ptr %i.t, align 8, !alias.scope !209
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr @.str.101, ptr %i.w, align 8, !alias.scope !209
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.x, align 8, !alias.scope !209
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 8, ptr %i.y, align 8, !alias.scope !209
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 52
  store i32 0, ptr %i.z, align 4, !alias.scope !209
  call fastcc void @drm_dp_mst_dump_sideband_msg_tx(ptr noundef nonnull %2, ptr noundef nonnull %i.e) #24, !srcloc !27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aa = load volatile ptr, ptr %i.j, align 8    ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, %i.j
  br i1 %.not.i.i, label %drm_dp_queue_down_tx.exit, label %list_is_singular.exit.i

list_is_singular.exit.i:                          ; preds = %bb.c
  %i.ab = load ptr, ptr %i.k, align 8
  %.not.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i, label %bb.d, label %drm_dp_queue_down_tx.exit

bb.d:                                             ; preds = %list_is_singular.exit.i
  call fastcc void @process_single_down_tx_qlock(ptr noundef %0) #24, !srcloc !28
  br label %drm_dp_queue_down_tx.exit

drm_dp_queue_down_tx.exit:                        ; preds = %bb.c, %list_is_singular.exit.i, %bb.d
  call void @mutex_unlock(ptr noundef %i.h) #23
  %i.ac = call fastcc i32 @drm_dp_mst_wait_tx_reply(ptr noundef nonnull %1, ptr noundef %i.e) #24, !srcloc !210 ; 3 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %bb.g

bb.e:                                             ; preds = %drm_dp_queue_down_tx.exit
  %i.ae = getelementptr i8, ptr %0, i64 88
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not.i87 = icmp eq ptr %i.af, null
  br i1 %.not.i87, label %__drm_to_dev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.e, %bb.f
  %i.ai = phi ptr [ %i.ah, %bb.f ], [ null, %bb.e ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.ai, ptr noundef nonnull @.str.181, i32 noundef %i.ac) #27
  br label %.thread122

bb.g:                                             ; preds = %drm_dp_queue_down_tx.exit
  %i.aj = getelementptr i8, ptr %i.e, i64 346
  %i.ak = load i8, ptr %i.aj, align 2
  %i.al = icmp eq i8 %i.ak, 1
  br i1 %i.al, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr i8, ptr %0, i64 88
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not.i88 = icmp eq ptr %i.an, null
  br i1 %.not.i88, label %__drm_to_dev.exit89, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  br label %__drm_to_dev.exit89

__drm_to_dev.exit89:                              ; preds = %bb.h, %bb.i
  %i.aq = phi ptr [ %i.ap, %bb.i ], [ null, %bb.h ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.aq, ptr noundef nonnull @.str.182) #27
  br label %.thread122

bb.j:                                             ; preds = %bb.g
  %i.ar = getelementptr i8, ptr %i.e, i64 348
  %i.as = getelementptr i8, ptr %0, i64 88        ; 5 uses
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not.i90 = icmp eq ptr %i.at, null
  br i1 %.not.i90, label %__drm_to_dev.exit91, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  br label %__drm_to_dev.exit91

__drm_to_dev.exit91:                              ; preds = %bb.j, %bb.k
  %i.aw = phi ptr [ %i.av, %bb.k ], [ null, %bb.j ]
  %i.ax = getelementptr i8, ptr %i.e, i64 364     ; 5 uses
  %i.ay = load i8, ptr %i.ax, align 4
  %i.az = zext i8 %i.ay to i32
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.aw, i32 noundef 2, ptr noundef nonnull @.str.183, i32 noundef %i.az) #23
  %i.ba = load i8, ptr %i.ax, align 4
  %.not.i92 = icmp eq i8 %i.ba, 0
  br i1 %.not.i92, label %drm_dp_dump_link_address.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %__drm_to_dev.exit91
  %i.bb = getelementptr i8, ptr %i.e, i64 365
  br label %bb.l

bb.l:                                             ; preds = %__drm_to_dev.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %__drm_to_dev.exit.i ] ; 3 uses
  %i.bc = getelementptr [25 x i8], ptr %i.bb, i64 %indvars.iv.i ; 9 uses
  %i.bd = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not.i.i93 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i93, label %__drm_to_dev.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.m, %bb.l
  %i.bg = phi ptr [ %i.bf, %bb.m ], [ null, %bb.l ]
  %i.bh = load i8, ptr %i.bc, align 1, !range !19, !noundef !20
  %i.bi = zext nneg i8 %i.bh to i32
  %i.bj = getelementptr i8, ptr %i.bc, i64 1
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = zext i8 %i.bk to i32
  %i.bm = getelementptr i8, ptr %i.bc, i64 2
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = zext i8 %i.bn to i32
  %i.bp = getelementptr i8, ptr %i.bc, i64 6
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = zext i8 %i.bq to i32
  %i.bs = getelementptr i8, ptr %i.bc, i64 3
  %i.bt = load i8, ptr %i.bs, align 1, !range !19, !noundef !20
  %i.bu = zext nneg i8 %i.bt to i32
  %i.bv = getelementptr i8, ptr %i.bc, i64 4
  %i.bw = load i8, ptr %i.bv, align 1, !range !19, !noundef !20
  %i.bx = zext nneg i8 %i.bw to i32
  %i.by = getelementptr i8, ptr %i.bc, i64 5
  %i.bz = load i8, ptr %i.by, align 1, !range !19, !noundef !20
  %i.ca = zext nneg i8 %i.bz to i32
  %i.cb = getelementptr i8, ptr %i.bc, i64 23
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = zext i8 %i.cc to i32
  %i.ce = getelementptr i8, ptr %i.bc, i64 24
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = zext i8 %i.cf to i32
  %i.ch = trunc nuw nsw i64 %indvars.iv.i to i32
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.bg, i32 noundef 2, ptr noundef nonnull @.str.186, i32 noundef %i.ch, i32 noundef %i.bi, i32 noundef %i.bl, i32 noundef %i.bo, i32 noundef %i.br, i32 noundef %i.bu, i32 noundef %i.bx, i32 noundef %i.ca, i32 noundef %i.cd, i32 noundef %i.cg) #23
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ci = load i8, ptr %i.ax, align 4
  %i.cj = zext i8 %i.ci to i64
  %i.ck = icmp samesign ult i64 %indvars.iv.next.i, %i.cj
  br i1 %i.ck, label %bb.l, label %drm_dp_dump_link_address.exit, !llvm.loop !205

drm_dp_dump_link_address.exit:                    ; preds = %__drm_to_dev.exit.i, %__drm_to_dev.exit91
  %i.cl = getelementptr i8, ptr %1, i64 73        ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(16) %i.cl, ptr noundef readonly align 4 dereferenceable(16) %i.ar, i64 16, i1 false)
  %i.cm = getelementptr i8, ptr %1, i64 64        ; 2 uses
  %i.cn = load i64, ptr %i.cl, align 1
  %i.co = load i64, ptr @guid_null, align 1
  %i.cp = xor i64 %i.cn, %i.co
  %i.cq = getelementptr i8, ptr %i.cl, i64 8
  %i.cr = load i64, ptr %i.cq, align 1
  %i.cs = load i64, ptr getelementptr (i8, ptr @guid_null, i64 8), align 1
  %i.ct = xor i64 %i.cr, %i.cs
  %i.cu = or i64 %i.cp, %i.ct
  %i.cv = icmp ne i64 %i.cu, 0
  %i.cw = zext i1 %i.cv to i32
  %.not11.i = icmp eq i32 %i.cw, 0
  br i1 %.not11.i, label %bb.n, label %.preheader

bb.n:                                             ; preds = %drm_dp_dump_link_address.exit
  call void @guid_gen(ptr noundef %i.cl) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef readonly align 1 dereferenceable(16) %i.cl, i64 16, i1 false)
  %i.cx = getelementptr i8, ptr %1, i64 56
  %i.cy = load ptr, ptr %i.cx, align 8            ; 2 uses
  %.not.i94 = icmp eq ptr %i.cy, null
  br i1 %.not.i94, label %bb.p, label %bb.o

end_hunk_0
begin_hunk_1_@drm_dp_send_link_address:_kzalloc_noprof.exit
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au, %bb.at
  %i.ka = getelementptr i8, ptr %.0101.i, i64 18
  store i16 0, ptr %i.ka, align 2
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.1.i = phi i1 [ %.0.i103, %bb.aw ], [ %spec.select.i, %bb.av ]
  %i.kb = call fastcc i32 @drm_dp_port_set_pdt(ptr noundef %.0101.i, i8 noundef zeroext %.099.i, i1 noundef zeroext %i.ik) #24, !inline_history !206, !srcloc !218 ; 5 uses
  %i.kc = icmp eq i32 %i.kb, 1                    ; 3 uses
  %i.kd = icmp slt i32 %i.kb, 0
  br i1 %i.kd, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %.not.i106 = icmp eq ptr %i.fh, null
  br i1 %.not.i106, label %__drm_to_dev.exit107, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ke = getelementptr i8, ptr %i.fh, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  br label %__drm_to_dev.exit107

__drm_to_dev.exit107:                             ; preds = %bb.ay, %bb.az
  %i.kg = phi ptr [ %i.kf, %bb.az ], [ null, %bb.ay ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.kg, ptr noundef nonnull @.str.187, ptr noundef nonnull %.0101.i, i32 noundef %i.kb) #27, !inline_history !206
  %i.kh = getelementptr i8, ptr %i.fi, i64 784    ; 2 uses
  call void @mutex_lock(ptr noundef %i.kh) #23
  %i.ki = getelementptr i8, ptr %.0101.i, i64 1376
  %i.kj = load ptr, ptr %i.ki, align 8
  %i.kk = getelementptr i8, ptr %i.kj, i64 36     ; 2 uses
  %i.kl = load i32, ptr %i.kk, align 4
  %i.km = add i32 %i.kl, -1
  store i32 %i.km, ptr %i.kk, align 4
  %i.kn = getelementptr i8, ptr %.0101.i, i64 24  ; 2 uses
  %i.ko = getelementptr i8, ptr %.0101.i, i64 32  ; 2 uses
  %i.kp = load ptr, ptr %i.ko, align 8            ; 2 uses
  %i.kq = load ptr, ptr %i.kn, align 8            ; 2 uses
  %i.kr = getelementptr i8, ptr %i.kq, i64 8
  store ptr %i.kp, ptr %i.kr, align 8
  store volatile ptr %i.kq, ptr %i.kp, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %i.kn, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.ko, align 8
  call void @mutex_unlock(ptr noundef %i.kh) #23
  call fastcc void @drm_dp_mst_topology_put_port(ptr noundef nonnull %.0101.i) #24, !srcloc !35
  %i.ks = getelementptr i8, ptr %.0101.i, i64 1384
  %i.kt = load ptr, ptr %i.ks, align 8
  %.not118.i = icmp eq ptr %i.kt, null
  br i1 %.not118.i, label %.loopexit, label %bb.bl

bb.ba:                                            ; preds = %bb.ax
  br i1 %.098.i, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ku = getelementptr i8, ptr %.0101.i, i64 12
  %i.kv = load i8, ptr %i.ku, align 4
  %i.kw = icmp eq i8 %i.kv, 2
  br i1 %i.kw, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.kx = getelementptr i8, ptr %.0101.i, i64 10
  %i.ky = load i8, ptr %i.kx, align 2, !range !19, !noundef !20
  %i.kz = trunc nuw i8 %i.ky to i1
  %spec.select122.i = or i1 %i.kc, %i.kz
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ba
  %.197.i = phi i1 [ %i.kc, %bb.ba ], [ %i.kc, %bb.bb ], [ %spec.select122.i, %bb.bc ]
  %i.la = getelementptr i8, ptr %.0101.i, i64 1384
  %i.lb = load ptr, ptr %i.la, align 8
  %.not119.i = icmp eq ptr %i.lb, null
  br i1 %.not119.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lc = getelementptr i8, ptr %i.fi, i64 24
  call void @drm_modeset_unlock(ptr noundef %i.lc) #23, !inline_history !206
  br label %bb.bh

bb.bf:                                            ; preds = %bb.bd
  %i.ld = load i8, ptr %i.if, align 1, !range !19, !noundef !20
  %i.le = trunc nuw i8 %i.ld to i1
  br i1 %i.le, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call fastcc void @drm_dp_mst_port_add_connector(ptr noundef nonnull %1, ptr noundef %.0101.i) #24, !inline_history !206, !srcloc !219
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.be
  br i1 %.197.i, label %bb.bi, label %drm_dp_mst_handle_link_address_port.exit

bb.bi:                                            ; preds = %bb.bh
  %i.lf = getelementptr i8, ptr %.0101.i, i64 40
  %i.lg = load ptr, ptr %i.lf, align 8            ; 2 uses
  %.not120.i = icmp eq ptr %i.lg, null
  br i1 %.not120.i, label %drm_dp_mst_handle_link_address_port.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lh = call fastcc i32 @drm_dp_send_link_address(ptr noundef %i.fi, ptr noundef %i.lg) #24, !inline_history !206, !srcloc !220 ; 3 uses
  %i.li = icmp eq i32 %i.lh, 1
  br i1 %i.li, label %drm_dp_mst_handle_link_address_port.exit.thread117, label %bb.bk

drm_dp_mst_handle_link_address_port.exit.thread117: ; preds = %bb.bj
  call fastcc void @drm_dp_mst_topology_put_port(ptr noundef nonnull %.0101.i) #24, !inline_history !206, !srcloc !221
  br label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.lj = icmp slt i32 %i.lh, 0
  br i1 %i.lj, label %.loopexit, label %drm_dp_mst_handle_link_address_port.exit

bb.bl:                                            ; preds = %__drm_to_dev.exit107
  %i.lk = getelementptr i8, ptr %i.fi, i64 24
  call void @drm_modeset_unlock(ptr noundef %i.lk) #23, !inline_history !206
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bk, %bb.bl, %__drm_to_dev.exit107
  %.0100.i = phi i32 [ %i.kb, %__drm_to_dev.exit107 ], [ %i.kb, %bb.bl ], [ %i.lh, %bb.bk ]
  call fastcc void @drm_dp_mst_topology_put_port(ptr noundef nonnull %.0101.i) #24, !inline_history !206, !srcloc !222
  br label %.thread122

drm_dp_mst_handle_link_address_port.exit:         ; preds = %bb.bh, %bb.bi, %bb.bk
  call fastcc void @drm_dp_mst_topology_put_port(ptr noundef nonnull %.0101.i) #24, !inline_history !206, !srcloc !221
  %spec.select = select i1 %.1.i, i8 1, i8 %.077156
  br label %bb.bm

bb.bm:                                            ; preds = %drm_dp_mst_handle_link_address_port.exit, %drm_dp_mst_handle_link_address_port.exit.thread117
  %.178 = phi i8 [ 1, %drm_dp_mst_handle_link_address_port.exit.thread117 ], [ %spec.select, %drm_dp_mst_handle_link_address_port.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ll = load i8, ptr %i.ax, align 4
  %i.lm = zext i8 %i.ll to i64
  %i.ln = icmp samesign ult i64 %indvars.iv.next, %i.lm
  br i1 %i.ln, label %bb.s, label %._crit_edge.loopexit, !llvm.loop !207

._crit_edge.loopexit:                             ; preds = %bb.bm
  %i.lo = sext i32 %i.fg to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.077.lcssa = phi i8 [ 0, %.preheader ], [ %.178, %._crit_edge.loopexit ] ; 2 uses
  %.075.lcssa = phi i64 [ 0, %.preheader ], [ %i.lo, %._crit_edge.loopexit ]
  %i.lp = getelementptr i8, ptr %0, i64 784       ; 2 uses
  call void @mutex_lock(ptr noundef %i.lp) #23
  %i.lq = getelementptr i8, ptr %1, i64 40        ; 3 uses
  %i.lr = load ptr, ptr %i.lq, align 8            ; 2 uses
  %.not138162 = icmp eq ptr %i.lr, %i.lq
  br i1 %.not138162, label %.thread129, label %.lr.ph168

.lr.ph168:                                        ; preds = %._crit_edge, %bb.bp
  %.pn.in164 = phi ptr [ %.pn166, %bb.bp ], [ %i.lr, %._crit_edge ] ; 6 uses
  %.2163 = phi i8 [ %.3, %bb.bp ], [ %.077.lcssa, %._crit_edge ]
  %.071165 = getelementptr i8, ptr %.pn.in164, i64 -24
  %.pn166 = load ptr, ptr %.pn.in164, align 8     ; 2 uses
  %i.ls = getelementptr i8, ptr %.pn.in164, i64 -16
  %i.lt = load i8, ptr %i.ls, align 8             ; 2 uses
  %i.lu = zext nneg i8 %i.lt to i64
  %i.lv = shl nuw i64 1, %i.lu
  %i.lw = and i64 %i.lv, %.075.lcssa
  %.not85 = icmp eq i64 %i.lw, 0
  br i1 %.not85, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %.lr.ph168
  %i.lx = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not.i104 = icmp eq ptr %i.lx, null
  br i1 %.not.i104, label %__drm_to_dev.exit105, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ly = getelementptr i8, ptr %i.lx, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8
  br label %__drm_to_dev.exit105

__drm_to_dev.exit105:                             ; preds = %bb.bn, %bb.bo
  %i.ma = phi ptr [ %i.lz, %bb.bo ], [ null, %bb.bn ]
  %i.mb = zext i8 %i.lt to i32
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ma, i32 noundef 2, ptr noundef nonnull @.str.185, i32 noundef %i.mb) #23
  %i.mc = getelementptr i8, ptr %.pn.in164, i64 8 ; 2 uses
  %i.md = load ptr, ptr %i.mc, align 8            ; 2 uses
  %i.me = load ptr, ptr %.pn.in164, align 8       ; 2 uses
  %i.mf = getelementptr i8, ptr %i.me, i64 8
  store ptr %i.md, ptr %i.mf, align 8
  store volatile ptr %i.me, ptr %i.md, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %.pn.in164, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.mc, align 8
  call fastcc void @drm_dp_mst_topology_put_port(ptr noundef %.071165) #24, !srcloc !223
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph168, %__drm_to_dev.exit105
  %.3 = phi i8 [ %.2163, %.lr.ph168 ], [ 1, %__drm_to_dev.exit105 ] ; 2 uses
  %.not138 = icmp eq ptr %.pn166, %i.lq
  br i1 %.not138, label %.thread129, label %.lr.ph168, !llvm.loop !208

.thread129:                                       ; preds = %bb.bp, %._crit_edge
  %.2.lcssa = phi i8 [ %.077.lcssa, %._crit_edge ], [ %.3, %bb.bp ]
  call void @mutex_unlock(ptr noundef %i.lp) #23
  %i.mg = zext nneg i8 %.2.lcssa to i32
  br label %.sink.split

bb.bq:                                            ; preds = %bb.r, %drm_dp_mst_rad_to_str.exit
  %i.mh = phi ptr [ %i.ez, %bb.r ], [ null, %drm_dp_mst_rad_to_str.exit ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.mh, ptr noundef nonnull @.str.184, ptr noundef nonnull %i.c, i32 noundef %.0.i.i96) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.mi = or i1 %i.df, %i.dh
  br i1 %i.mi, label %.thread122, label %.sink.split

.thread122:                                       ; preds = %drm_dp_get_port.exit.thread, %bb.ac, %.loopexit, %__drm_to_dev.exit89, %__drm_to_dev.exit, %bb.bq
  %.1128 = phi i32 [ %.0.i.i96, %bb.bq ], [ %i.ac, %__drm_to_dev.exit ], [ -5, %__drm_to_dev.exit89 ], [ %.0100.i, %.loopexit ], [ -12, %bb.ac ], [ -12, %drm_dp_get_port.exit.thread ]
  store i8 0, ptr %i.g, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %.thread129, %bb.bq, %.thread122
  %.0.ph = phi i32 [ %.1128, %.thread122 ], [ %i.mg, %.thread129 ], [ 0, %bb.bq ]
  call void @kfree(ptr noundef nonnull %i.e) #23
  br label %bb.br

bb.br:                                            ; preds = %.sink.split, %_kzalloc_noprof.exit
  %.0 = phi i32 [ -12, %_kzalloc_noprof.exit ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef ptr @drm_dp_mst_add_port(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i8 noundef zeroext %3) unnamed_addr #0 align 16 prefalign(16) {
_kzalloc_noprof.exit:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 88), align 8
  %i.b = tail call noalias align 8 dereferenceable_or_null(1416) ptr @__kmalloc_cache_noprof(ptr noundef %i.a, i32 noundef 3520, i64 noundef range(i64 -3040836845568, 3040836844153) 1416) #25 ; 11 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.a

bb.a:                                             ; preds = %_kzalloc_noprof.exit
  store volatile i32 1, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 4
  store volatile i32 1, ptr %i.c, align 4
  %i.d = getelementptr i8, ptr %i.b, i64 1376
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %i.b, i64 8
  store i8 %3, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %i.b, i64 1392
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %i.b, i64 48       ; 2 uses
  store ptr @.str.188, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.b, i64 1120
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %i.b, i64 1360
  store i8 1, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %i.b, i64 1128
  store ptr %0, ptr %i.l, align 8
  tail call void @drm_dp_remote_aux_init(ptr noundef %i.g) #23
  %i.m = getelementptr i8, ptr %2, i64 4          ; 4 uses
  %i.n = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.m, i32 1, ptr elementtype(i32) %i.m) #21, !srcloc !22 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.o = add i32 %i.n, 1
  %i.p = or i32 %i.o, %i.n
  %.not10.i.i.i.i.i = icmp sgt i32 %i.p, -1
  br i1 %.not10.i.i.i.i.i, label %kref_get.exit.i, label %.sink.split.i.i.i.i.i, !prof !21

.sink.split.i.i.i.i.i:                            ; preds = %bb.b, %bb.a
  %.sink.i.i.i.i.i = phi i32 [ 2, %bb.a ], [ 1, %bb.b ]
  tail call void @refcount_warn_saturate(ptr noundef %i.m, i32 noundef %.sink.i.i.i.i.i) #23
  br label %kref_get.exit.i

kref_get.exit.i:                                  ; preds = %.sink.split.i.i.i.i.i, %bb.b
  %i.q = getelementptr i8, ptr %2, i64 64
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 88
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %drm_dp_mst_get_mstb_malloc.exit, label %bb.c

bb.c:                                             ; preds = %kref_get.exit.i
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  br label %drm_dp_mst_get_mstb_malloc.exit

drm_dp_mst_get_mstb_malloc.exit:                  ; preds = %kref_get.exit.i, %bb.c
  %i.w = phi ptr [ %i.v, %bb.c ], [ null, %kref_get.exit.i ]
  %i.x = load volatile i32, ptr %i.m, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.w, i32 noundef 1, ptr noundef nonnull @.str.100, ptr noundef nonnull %2, i32 noundef %i.x) #23
  br label %bb.d

bb.d:                                             ; preds = %_kzalloc_noprof.exit, %drm_dp_mst_get_mstb_malloc.exit
  ret ptr %i.b
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -12, 2) i32 @drm_dp_send_enum_path_resources(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 align 16 prefalign(16) {
_kzalloc_noprof.exit:
  %3 = alloca %struct.drm_printer, align 8        ; 11 uses
  %4 = alloca %struct.drm_dp_sideband_msg_req_body, align 8 ; 6 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 80), align 16
  %i.b = tail call noalias align 8 dereferenceable_or_null(768) ptr @__kmalloc_cache_noprof(ptr noundef %i.a, i32 noundef 3520, i64 noundef range(i64 -3040836845568, 3040836844153) 768) #25 ; 15 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.o, label %bb.a

bb.a:                                             ; preds = %_kzalloc_noprof.exit
  %i.c = getelementptr i8, ptr %i.b, i64 312
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %i.e = load i8, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %4, i8 0, i64 120, i1 false), !annotation !25
  store i8 16, ptr %4, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 %i.e, ptr %i.f, align 8
  call void @drm_dp_encode_sideband_req(ptr noundef nonnull %4, ptr noundef nonnull %i.b) #24
  %i.g = getelementptr i8, ptr %i.b, i64 344
  store i8 1, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.h = getelementptr i8, ptr %0, i64 872        ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.h) #23
  %i.i = getelementptr i8, ptr %i.b, i64 320      ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 896        ; 3 uses
  %i.k = getelementptr i8, ptr %0, i64 904        ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  store ptr %i.i, ptr %i.k, align 8
  store ptr %i.j, ptr %i.i, align 8
  %i.m = getelementptr i8, ptr %i.b, i64 328
  store ptr %i.l, ptr %i.m, align 8
  store volatile ptr %i.i, ptr %i.l, align 8
  %i.n = load i64, ptr @__drm_debug, align 8
  %i.o = and i64 %i.n, 256
  %.not9.i = icmp eq i64 %i.o, 0
  br i1 %.not9.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.p = getelementptr i8, ptr %0, i64 88
  %i.q = load ptr, ptr %i.p, align 8
  store ptr @__drm_printfn_dbg, ptr %3, align 8, !alias.scope !226
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.r, align 8, !alias.scope !226
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.q, ptr %i.s, align 8, !alias.scope !226
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.u = tail call i64 asm "lea 0(%rip), $0", "=r,~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !26
  %i.v = inttoptr i64 %i.u to ptr
  store ptr %i.v, ptr %i.t, align 8, !alias.scope !226
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr @.str.101, ptr %i.w, align 8, !alias.scope !226
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.x, align 8, !alias.scope !226
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 8, ptr %i.y, align 8, !alias.scope !226
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 0, ptr %i.z, align 4, !alias.scope !226
  call fastcc void @drm_dp_mst_dump_sideband_msg_tx(ptr noundef nonnull %3, ptr noundef nonnull %i.b) #24, !srcloc !27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aa = load volatile ptr, ptr %i.j, align 8    ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, %i.j
  br i1 %.not.i.i, label %drm_dp_queue_down_tx.exit, label %list_is_singular.exit.i

list_is_singular.exit.i:                          ; preds = %bb.c
  %i.ab = load ptr, ptr %i.k, align 8
  %.not.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i, label %bb.d, label %drm_dp_queue_down_tx.exit

bb.d:                                             ; preds = %list_is_singular.exit.i
  call fastcc void @process_single_down_tx_qlock(ptr noundef %0) #24, !srcloc !28
  br label %drm_dp_queue_down_tx.exit

drm_dp_queue_down_tx.exit:                        ; preds = %bb.c, %list_is_singular.exit.i, %bb.d
  call void @mutex_unlock(ptr noundef %i.h) #23
  %i.ac = call fastcc i32 @drm_dp_mst_wait_tx_reply(ptr noundef nonnull %1, ptr noundef %i.b) #24, !srcloc !227 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %bb.n

bb.e:                                             ; preds = %drm_dp_queue_down_tx.exit
  %i.ae = getelementptr i8, ptr %i.b, i64 346
  %i.af = getelementptr i8, ptr %i.b, i64 348     ; 2 uses
  %i.ag = load i8, ptr %i.ae, align 2
  %i.ah = icmp eq i8 %i.ag, 1
  br i1 %i.ah, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr i8, ptr %0, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %.not.i41 = icmp eq ptr %i.aj, null
  br i1 %.not.i41, label %__drm_to_dev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.f, %bb.g
  %i.am = phi ptr [ %i.al, %bb.g ], [ null, %bb.f ]
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.am, i32 noundef 2, ptr noundef nonnull @.str.189) #23
  br label %bb.n

bb.h:                                             ; preds = %bb.e
  %i.an = load i8, ptr %i.d, align 8
  %i.ao = load i8, ptr %i.af, align 4
  %.not38 = icmp eq i8 %i.an, %i.ao
  br i1 %.not38, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.190) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ap = getelementptr i8, ptr %0, i64 88
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not.i42 = icmp eq ptr %i.aq, null
  br i1 %.not.i42, label %__drm_to_dev.exit43, label %bb.k

end_hunk_1
