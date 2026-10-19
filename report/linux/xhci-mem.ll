Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/xhci-mem?download=true
inline.NumInlined: 315
inline.NumDeleted: 94
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@xhci_alloc_port_bw_ctx
define dso_local noundef ptr @xhci_alloc_port_bw_ctx(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr i8, ptr %.val, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = or i32 %1, 256                           ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 664
  %.val19 = load i32, ptr %i.d, align 8
  %i.e = and i32 %1, 17
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %kmalloc_type.exit, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.g = and i32 %1, 1
  %..i = add nuw nsw i32 %i.g, 1
  %i.h = zext nneg i32 %..i to i64
  br label %kmalloc_type.exit

kmalloc_type.exit:                                ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ 0, %bb.a ], [ %i.h, %bb.b ]
  %i.i = getelementptr [112 x i8], ptr @kmalloc_caches, i64 %.0.i
  %i.j = getelementptr i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noalias align 8 dereferenceable_or_null(24) ptr @__kmalloc_cache_node_noprof(ptr noundef %i.k, i32 noundef range(i32 256, 0) %i.c, i32 noundef %.val19, i64 noundef 24) #20 ; 6 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %kmalloc_type.exit
  %i.m = getelementptr i8, ptr %i.l, i64 4
  store i32 256, ptr %i.m, align 4
  %i.n = getelementptr i8, ptr %0, i64 384
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.l, i64 16
  %i.q = tail call ptr @dma_pool_alloc(ptr noundef %i.o, i32 noundef %i.c, ptr noundef %i.p) #19 ; 2 uses
  %i.r = getelementptr i8, ptr %i.l, i64 8
  store ptr %i.q, ptr %i.r, align 8
  %.not18 = icmp eq ptr %i.q, null
  br i1 %.not18, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @kfree(ptr noundef nonnull %i.l) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %kmalloc_type.exit, %bb.d
  %.0 = phi ptr [ null, %kmalloc_type.exit ], [ null, %bb.d ], [ %i.l, %bb.c ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @xhci_free_port_bw_ctx(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 384
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8
  tail call void @dma_pool_free(ptr noundef %i.b, ptr noundef %i.d, i64 noundef %i.f) #19
  tail call void @kfree(ptr noundef nonnull %1) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local ptr @xhci_get_input_control_ctx(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %.not = icmp eq i32 %i.a, 2
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local ptr @xhci_get_slot_ctx(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %1, align 8
  %i.b = icmp eq i32 %i.a, 1
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 56
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 4
  %.not = icmp eq i32 %i.g, 0
  %i.h = select i1 %.not, i64 32, i64 64
  %i.i = getelementptr i8, ptr %i.d, i64 %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.i, %bb.b ], [ %i.d, %bb.a ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local ptr @xhci_get_ep_ctx(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #6 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %1, align 8
  %i.b = icmp eq i32 %i.a, 2
  %spec.select.v = select i1 %i.b, i32 2, i32 1
  %spec.select = add i32 %spec.select.v, %2
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 56
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 4
  %.not = icmp eq i32 %i.g, 0
  %i.h = select i1 %.not, i32 5, i32 6
  %i.i = shl i32 %spec.select, %i.h
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr i8, ptr %i.d, i64 %i.j
  ret ptr %i.k
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @xhci_dma_to_transfer_ring(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 16
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 40
  %i.g = lshr i64 %1, 12
  %i.h = tail call ptr @radix_tree_lookup(ptr noundef %i.f, i64 noundef %i.g) #19
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.h, %bb.b ], [ %i.j, %bb.c ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef ptr @xhci_alloc_stream_info(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 176        ; 4 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i32 %i.b, 253
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8
  %i.d = getelementptr i8, ptr %.val, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = add i32 %i.b, 1
  store i32 %i.f, ptr %i.a, align 8
  %i.g = or i32 %4, 256                           ; 5 uses
  %i.h = getelementptr i8, ptr %i.e, i64 664      ; 2 uses
  %.val102 = load i32, ptr %i.h, align 8
  %i.i = and i32 %4, 17
  %i.j = icmp eq i32 %i.i, 0                      ; 2 uses
  br i1 %i.j, label %kmalloc_type.exit, label %bb.c, !prof !21

bb.c:                                             ; preds = %bb.b
  %i.k = and i32 %4, 1
  %..i = add nuw nsw i32 %i.k, 1
  %i.l = zext nneg i32 %..i to i64
  br label %kmalloc_type.exit

kmalloc_type.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ 0, %bb.b ], [ %i.l, %bb.c ]
  %i.m = getelementptr [112 x i8], ptr @kmalloc_caches, i64 %.0.i
  %i.n = getelementptr i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 16
  %i.p = tail call noalias align 8 dereferenceable_or_null(64) ptr @__kmalloc_cache_node_noprof(ptr noundef %i.o, i32 noundef range(i32 256, 0) %i.g, i32 noundef %.val102, i64 noundef 64) #20 ; 20 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.ad, label %_kmalloc_array_node_noprof.exit

_kmalloc_array_node_noprof.exit:                  ; preds = %kmalloc_type.exit
  %i.q = getelementptr i8, ptr %i.p, i64 8
  store i32 %2, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %i.p, i64 24       ; 2 uses
  store i32 %1, ptr %i.r, align 8
  %i.s = zext i32 %2 to i64                       ; 3 uses
  %i.t = shl nuw nsw i64 %i.s, 3
  %.val101 = load i32, ptr %i.h, align 8
  %i.u = tail call noalias align 8 ptr @__kmalloc_node_noprof(i64 noundef %i.t, i32 noundef range(i32 256, 0) %i.g, i32 noundef %.val101) #23 ; 2 uses
  store ptr %i.u, ptr %i.p, align 8
  %.not95 = icmp eq ptr %i.u, null
  br i1 %.not95, label %bb.ac, label %bb.d

bb.d:                                             ; preds = %_kmalloc_array_node_noprof.exit
  %i.v = getelementptr i8, ptr %i.p, i64 32       ; 4 uses
  %i.w = icmp ugt i32 %1, 64
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = zext i32 %1 to i64
  %i.y = shl nuw nsw i64 %i.x, 4
  %.val.i = load ptr, ptr %0, align 8
  %i.z = getelementptr i8, ptr %.val.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = lshr i32 %4, 5
  %i.ac = and i32 %i.ab, 256
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = tail call ptr @dma_alloc_attrs(ptr noundef %i.aa, i64 noundef range(i64 -1, 21680994905161) %i.y, ptr noundef %i.v, i32 noundef %4, i64 noundef %i.ad) #19
  br label %xhci_alloc_stream_ctx.exit

bb.f:                                             ; preds = %bb.d
  %i.af = icmp samesign ugt i32 %1, 16
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr i8, ptr %0, i64 392
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call ptr @dma_pool_alloc(ptr noundef %i.ah, i32 noundef %i.g, ptr noundef %i.v) #19
  br label %xhci_alloc_stream_ctx.exit

bb.h:                                             ; preds = %bb.f
  %i.aj = getelementptr i8, ptr %0, i64 376
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call ptr @dma_pool_alloc(ptr noundef %i.ak, i32 noundef %i.g, ptr noundef %i.v) #19
  br label %xhci_alloc_stream_ctx.exit

xhci_alloc_stream_ctx.exit:                       ; preds = %bb.e, %bb.g, %bb.h
  %.0.i104 = phi ptr [ %i.ae, %bb.e ], [ %i.ai, %bb.g ], [ %i.al, %bb.h ] ; 2 uses
  %i.am = getelementptr i8, ptr %i.p, i64 16      ; 3 uses
  store ptr %.0.i104, ptr %i.am, align 8
  %.not96 = icmp eq ptr %.0.i104, null
  br i1 %.not96, label %xhci_free_stream_ctx.exit, label %bb.i

bb.i:                                             ; preds = %xhci_alloc_stream_ctx.exit
  %i.an = tail call ptr @xhci_alloc_command_with_ctx(ptr noundef %0, i1 noundef zeroext true, i32 noundef %4) #21 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.p, i64 56      ; 2 uses
  store ptr %i.an, ptr %i.ao, align 8
  %.not97 = icmp eq ptr %i.an, null
  br i1 %.not97, label %bb.x, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr i8, ptr %i.p, i64 40      ; 2 uses
  store i32 0, ptr %i.ap, align 8
  %i.aq = getelementptr i8, ptr %i.p, i64 44
  store i32 2080, ptr %i.aq, align 4
  %i.ar = getelementptr i8, ptr %i.p, i64 48
  store ptr null, ptr %i.ar, align 8
  %i.as = icmp ugt i32 %2, 1
  br i1 %i.as, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.j
  %i.at = and i32 %4, 1
  %..i.i106 = add nuw nsw i32 %i.at, 1
  %i.au = zext nneg i32 %..i.i106 to i64
  br label %bb.l

bb.k:                                             ; preds = %trace_xhci_alloc_stream_info_ctx.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.s
  br i1 %exitcond.not, label %.loopexit, label %bb.l, !llvm.loop !47

bb.l:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 6 uses
  %.val.i105 = load ptr, ptr %0, align 8
  %i.av = getelementptr i8, ptr %.val.i105, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr i8, ptr %i.aw, i64 664
  %.val26.i = load i32, ptr %i.ax, align 8
  br i1 %i.j, label %kmalloc_type.exit.i107, label %bb.m, !prof !21

bb.m:                                             ; preds = %bb.l
  br label %kmalloc_type.exit.i107

kmalloc_type.exit.i107:                           ; preds = %bb.m, %bb.l
  %.0.i.i108 = phi i64 [ 0, %bb.l ], [ %i.au, %bb.m ]
  %i.ay = getelementptr [112 x i8], ptr @kmalloc_caches, i64 %.0.i.i108
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noalias align 8 dereferenceable_or_null(96) ptr @__kmalloc_cache_node_noprof(ptr noundef %i.ba, i32 noundef range(i32 256, 0) %i.g, i32 noundef %.val26.i, i64 noundef 96) #20 ; 9 uses
  %.not.i109 = icmp eq ptr %i.bb, null
  br i1 %.not.i109, label %xhci_ring_alloc.exit, label %bb.n

bb.n:                                             ; preds = %kmalloc_type.exit.i107
  %i.bc = getelementptr i8, ptr %i.bb, i64 72
  store i32 2, ptr %i.bc, align 8
  %i.bd = getelementptr i8, ptr %i.bb, i64 76
  store i32 %3, ptr %i.bd, align 4
  %i.be = getelementptr i8, ptr %i.bb, i64 48     ; 3 uses
  store volatile ptr %i.be, ptr %i.be, align 8
  %i.bf = getelementptr i8, ptr %i.bb, i64 56
  store volatile ptr %i.be, ptr %i.bf, align 8
  %i.bg = getelementptr i8, ptr %i.bb, i64 80
  store i32 4, ptr %i.bg, align 8
  %i.bh = tail call fastcc i32 @xhci_alloc_segments_for_ring(ptr noundef readonly %0, ptr noundef nonnull %i.bb, i32 noundef %4) #21, !srcloc !22
  %.not25.i = icmp eq i32 %i.bh, 0
  br i1 %.not25.i, label %xhci_ring_alloc.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @kfree(ptr noundef nonnull %i.bb) #19
  br label %xhci_ring_alloc.exit

xhci_ring_alloc.exit:                             ; preds = %kmalloc_type.exit.i107, %bb.n, %bb.o
  %.0.i110 = phi ptr [ null, %kmalloc_type.exit.i107 ], [ null, %bb.o ], [ %i.bb, %bb.n ]
  %i.bi = load ptr, ptr %i.p, align 8
  %i.bj = getelementptr [8 x i8], ptr %i.bi, i64 %indvars.iv
  store ptr %.0.i110, ptr %i.bj, align 8
  %i.bk = load ptr, ptr %i.p, align 8
  %i.bl = getelementptr [8 x i8], ptr %i.bk, i64 %indvars.iv
  %i.bm = load ptr, ptr %i.bl, align 8            ; 9 uses
  %.not98 = icmp eq ptr %i.bm, null
  br i1 %.not98, label %.lr.ph122.preheader, label %bb.p

bb.p:                                             ; preds = %xhci_ring_alloc.exit
  tail call void @xhci_ring_init(ptr noundef %0, ptr noundef nonnull %i.bm) #21
  %i.bn = getelementptr i8, ptr %i.bm, i64 68
  %i.bo = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  store i32 %i.bo, ptr %i.bn, align 4
  %i.bp = getelementptr i8, ptr %i.bm, i64 88     ; 2 uses
  store ptr %i.ap, ptr %i.bp, align 8
  %i.bq = load ptr, ptr %i.bm, align 8
  %i.br = getelementptr i8, ptr %i.bq, i64 24
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = getelementptr i8, ptr %i.bm, i64 64
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = zext i32 %i.bu to i64
  %i.bw = or i64 %i.bs, %i.bv
  %i.bx = or i64 %i.bw, 2
  %i.by = load ptr, ptr %i.am, align 8
  %i.bz = getelementptr [16 x i8], ptr %i.by, i64 %indvars.iv
  store i64 %i.bx, ptr %i.bz, align 8
  %i.ca = load ptr, ptr %i.bp, align 8
  %i.cb = load ptr, ptr %i.bm, align 8
  %i.cc = tail call fastcc i32 @xhci_update_stream_segment_mapping(ptr noundef %i.ca, ptr noundef nonnull %i.bm, ptr noundef %i.cb, i32 noundef %4) #21, !srcloc !49
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_xhci_alloc_stream_info_ctx, i64 8), i1 false) #18
          to label %trace_xhci_alloc_stream_info_ctx.exit [label %arch_test_bit.exit.i.i], !srcloc !13

arch_test_bit.exit.i.i:                           ; preds = %bb.p
  %i.cd = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #18, !srcloc !50
  %i.ce = zext i32 %i.cd to i64
  %i.cf = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ce) #18, !srcloc !14 ; 2 uses
  %i.cg = icmp ult i8 %i.cf, 2
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = trunc nuw i8 %i.cf to i1
  br i1 %i.ch, label %bb.q, label %trace_xhci_alloc_stream_info_ctx.exit

bb.q:                                             ; preds = %arch_test_bit.exit.i.i
  %i.ci = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ci, ptr elementtype(i64) %i.ci) #18, !srcloc !15
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !16
  %i.cj = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_xhci_alloc_stream_info_ctx, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ck = getelementptr i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = tail call i32 @__SCT__tp_func_xhci_alloc_stream_info_ctx(ptr noundef %i.cl, ptr noundef nonnull %i.p, i32 noundef %i.bo) #19 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !17
  %i.cn = getelementptr i8, ptr %i.ci, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.cn, ptr elementtype(i64) %i.cn) #18, !srcloc !18
  br label %trace_xhci_alloc_stream_info_ctx.exit

trace_xhci_alloc_stream_info_ctx.exit:            ; preds = %bb.p, %arch_test_bit.exit.i.i, %bb.s
  %.not99 = icmp eq i32 %i.cc, 0
  br i1 %.not99, label %bb.k, label %bb.t

bb.t:                                             ; preds = %trace_xhci_alloc_stream_info_ctx.exit
  tail call void @xhci_ring_free(ptr noundef %0, ptr noundef nonnull %i.bm) #21
  %i.co = load ptr, ptr %i.p, align 8
  %i.cp = getelementptr [8 x i8], ptr %i.co, i64 %indvars.iv
  store ptr null, ptr %i.cp, align 8
  br label %.lr.ph122.preheader

.lr.ph122.preheader:                              ; preds = %xhci_ring_alloc.exit, %bb.t
  br label %.lr.ph122

.lr.ph122:                                        ; preds = %.lr.ph122.preheader, %bb.v
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %bb.v ], [ 1, %.lr.ph122.preheader ] ; 3 uses
  %i.cq = load ptr, ptr %i.p, align 8
  %i.cr = getelementptr [8 x i8], ptr %i.cq, i64 %indvars.iv129
  %i.cs = load ptr, ptr %i.cr, align 8            ; 2 uses
  %.not100 = icmp eq ptr %i.cs, null
  br i1 %.not100, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph122
  tail call void @xhci_ring_free(ptr noundef %0, ptr noundef nonnull %i.cs) #21
  %i.ct = load ptr, ptr %i.p, align 8
  %i.cu = getelementptr [8 x i8], ptr %i.ct, i64 %indvars.iv129
  store ptr null, ptr %i.cu, align 8
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph122, %bb.u
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %exitcond133.not = icmp eq i64 %indvars.iv.next130, %i.s
  br i1 %exitcond133.not, label %._crit_edge, label %.lr.ph122, !llvm.loop !48

._crit_edge:                                      ; preds = %bb.v
  %i.cv = load ptr, ptr %i.ao, align 8            ; 3 uses
  %i.cw = load ptr, ptr %i.cv, align 8            ; 4 uses
  %.not.i.i111 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i111, label %xhci_free_command.exit, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  %i.cx = getelementptr i8, ptr %0, i64 360
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = getelementptr i8, ptr %i.cw, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr i8, ptr %i.cw, i64 16
  %i.dc = load i64, ptr %i.db, align 8
  tail call void @dma_pool_free(ptr noundef %i.cy, ptr noundef %i.da, i64 noundef %i.dc) #19
  tail call void @kfree(ptr noundef nonnull %i.cw) #19
  br label %xhci_free_command.exit

xhci_free_command.exit:                           ; preds = %._crit_edge, %bb.w
  %i.dd = getelementptr i8, ptr %i.cv, i64 24
  %i.de = load ptr, ptr %i.dd, align 8
  tail call void @kfree(ptr noundef %i.de) #19
  tail call void @kfree(ptr noundef %i.cv) #19
  br label %bb.x

bb.x:                                             ; preds = %bb.i, %xhci_free_command.exit
  %i.df = load i32, ptr %i.r, align 8             ; 3 uses
  %i.dg = load ptr, ptr %i.am, align 8            ; 3 uses
  %i.dh = load i64, ptr %i.v, align 8             ; 3 uses
  %i.di = icmp ugt i32 %i.df, 64
  br i1 %i.di, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dj = zext i32 %i.df to i64
  %i.dk = shl nuw nsw i64 %i.dj, 4
  %.val.i112 = load ptr, ptr %0, align 8
  %i.dl = getelementptr i8, ptr %.val.i112, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  tail call void @dma_free_attrs(ptr noundef %i.dm, i64 noundef %i.dk, ptr noundef %i.dg, i64 noundef %i.dh, i64 noundef 0) #19
  br label %xhci_free_stream_ctx.exit

bb.z:                                             ; preds = %bb.x
  %i.dn = icmp samesign ugt i32 %i.df, 16
  br i1 %i.dn, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.do = getelementptr i8, ptr %0, i64 392
  %i.dp = load ptr, ptr %i.do, align 8
  tail call void @dma_pool_free(ptr noundef %i.dp, ptr noundef %i.dg, i64 noundef %i.dh) #19
  br label %xhci_free_stream_ctx.exit

bb.ab:                                            ; preds = %bb.z
  %i.dq = getelementptr i8, ptr %0, i64 376
  %i.dr = load ptr, ptr %i.dq, align 8
  tail call void @dma_pool_free(ptr noundef %i.dr, ptr noundef %i.dg, i64 noundef %i.dh) #19
  br label %xhci_free_stream_ctx.exit

xhci_free_stream_ctx.exit:                        ; preds = %bb.ab, %bb.aa, %bb.y, %xhci_alloc_stream_ctx.exit
  %i.ds = load ptr, ptr %i.p, align 8
  tail call void @kfree(ptr noundef %i.ds) #19
  br label %bb.ac

bb.ac:                                            ; preds = %_kmalloc_array_node_noprof.exit, %xhci_free_stream_ctx.exit
  tail call void @kfree(ptr noundef nonnull %i.p) #19
  br label %bb.ad

bb.ad:                                            ; preds = %kmalloc_type.exit, %bb.ac
  %i.dt = load i32, ptr %i.a, align 8
  %i.du = add i32 %i.dt, -1
  store i32 %i.du, ptr %i.a, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %bb.j, %bb.a, %bb.ad
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.ad ], [ %i.p, %bb.j ], [ %i.p, %bb.k ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef ptr @xhci_alloc_command_with_ctx(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @xhci_alloc_command(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) #21 ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %.val.i, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = or i32 %2, 256                           ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 664
  %.val30.i = load i32, ptr %i.e, align 8
  %i.f = and i32 %2, 17
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %kmalloc_type.exit.i, label %bb.c, !prof !21

bb.c:                                             ; preds = %bb.b
  %i.h = and i32 %2, 1
  %..i.i = add nuw nsw i32 %i.h, 1
  %i.i = zext nneg i32 %..i.i to i64
  br label %kmalloc_type.exit.i

kmalloc_type.exit.i:                              ; preds = %bb.c, %bb.b
  %.0.i.i = phi i64 [ 0, %bb.b ], [ %i.i, %bb.c ]
  %i.j = getelementptr [112 x i8], ptr @kmalloc_caches, i64 %.0.i.i
  %i.k = getelementptr i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noalias align 8 dereferenceable_or_null(24) ptr @__kmalloc_cache_node_noprof(ptr noundef %i.l, i32 noundef range(i32 256, 0) %i.d, i32 noundef %.val30.i, i64 noundef 24) #20 ; 7 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %kmalloc_type.exit.i
  store i32 2, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %0, i64 56
  %i.o = load i32, ptr %i.n, align 8
  %i.p = and i32 %i.o, 4
  %.not27.i = icmp eq i32 %i.p, 0
  %i.q = getelementptr i8, ptr %i.m, i64 4
  %i.r = select i1 %.not27.i, i32 1056, i32 2112
  store i32 %i.r, ptr %i.q, align 4
  %i.s = getelementptr i8, ptr %0, i64 360
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.m, i64 16
  %i.v = tail call ptr @dma_pool_alloc(ptr noundef %i.t, i32 noundef %i.d, ptr noundef %i.u) #19 ; 2 uses
  %i.w = getelementptr i8, ptr %i.m, i64 8
  store ptr %i.v, ptr %i.w, align 8
  %.not29.i = icmp eq ptr %i.v, null
  br i1 %.not29.i, label %bb.e, label %xhci_alloc_container_ctx.exit

bb.e:                                             ; preds = %bb.d
  tail call void @kfree(ptr noundef nonnull %i.m) #19
  br label %bb.f

xhci_alloc_container_ctx.exit:                    ; preds = %bb.d
  store ptr %i.m, ptr %i.a, align 8
  br label %bb.g

bb.f:                                             ; preds = %kmalloc_type.exit.i, %bb.e
  store ptr null, ptr %i.a, align 8
  %i.x = getelementptr i8, ptr %i.a, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  tail call void @kfree(ptr noundef %i.y) #19
  tail call void @kfree(ptr noundef nonnull %i.a) #19
  br label %bb.g

bb.g:                                             ; preds = %xhci_alloc_container_ctx.exit, %bb.a, %bb.f
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.f ], [ %i.a, %xhci_alloc_container_ctx.exit ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @xhci_free_command(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %xhci_free_container_ctx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 360
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8
  tail call void @dma_pool_free(ptr noundef %i.c, ptr noundef %i.e, i64 noundef %i.g) #19
  tail call void @kfree(ptr noundef nonnull %i.a) #19
  br label %xhci_free_container_ctx.exit

xhci_free_container_ctx.exit:                     ; preds = %bb.a, %bb.b
  %i.h = getelementptr i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  tail call void @kfree(ptr noundef %i.i) #19
  tail call void @kfree(ptr noundef %1) #19
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @xhci_setup_streams_ep_input_ctx(ptr noundef %0, ptr nofree noundef captures(none) initializes((8, 16)) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 16 prefalign(16) {
fls.exit:
  %i.a = getelementptr i8, ptr %2, i64 24
  %i.b = load i32, ptr %i.a, align 8
  %i.c = tail call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.b, i32 -1) #24, !srcloc !24 ; 2 uses
  %i.d = shl nuw i32 1, %i.c
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_context_change, ptr noundef nonnull @.str.1, i32 noundef %i.d) #19
  %i.e = load i32, ptr %1, align 8
  %i.f = and i32 %i.e, -64513
  %i.g = shl i32 %i.c, 10
  %i.h = add i32 %i.g, 31744
  %i.i = and i32 %i.h, 31744
  %i.j = or disjoint i32 %i.i, %i.f
  %i.k = or disjoint i32 %i.j, 32768
  store i32 %i.k, ptr %1, align 8
  %i.l = getelementptr i8, ptr %2, i64 32
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %1, i64 8
  store i64 %i.m, ptr %i.n, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
end_hunk_0
