inline.NumInlined: 712
inline.NumDeleted: 274
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@read_swap_header:bb.a
  %i.ar = icmp eq i64 %i.aq, 0
  %spec.store.select = select i1 %i.ar, i64 4294967295, i64 %i.ap
  %.033 = select i1 %i.ao, i64 %spec.store.select, i64 %i.af ; 3 uses
  %.not40 = icmp eq i64 %.033, 0
  br i1 %.not40, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr i8, ptr %1, i64 80
  %i.at = load volatile i64, ptr %i.as, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !219
  %i.au = ashr i64 %i.at, 12                      ; 2 uses
  %.not41 = icmp ne i64 %i.au, 0
  %i.av = icmp ugt i64 %.033, %i.au
  %or.cond = and i1 %.not41, %i.av
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aw = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #20 ; 0 uses
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.ax = getelementptr i8, ptr %0, i64 1032
  %i.ay = load i32, ptr %i.ax, align 4            ; 2 uses
  %.not42 = icmp eq i32 %i.ay, 0
  br i1 %.not42, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = load i16, ptr %1, align 8
  %i.ba = icmp slt i16 %i.az, -28672
  br i1 %i.ba, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bb = icmp ugt i32 %i.ay, 637
  %..033 = select i1 %i.bb, i64 0, i64 %.033
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.j, %bb.d, %bb.l, %bb.g, %bb.f, %bb.b
  %.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.l ], [ 0, %bb.j ], [ %..033, %bb.o ], [ 0, %bb.n ], [ 0, %bb.d ]
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @setup_swap_extents(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load i16, ptr %i.c, align 8
  %i.e = and i16 %i.d, -4096
  %i.f = icmp eq i16 %i.e, 24576
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 76
  %i.h = load i32, ptr %i.g, align 4
  %i.i = getelementptr i8, ptr %0, i64 184        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.036.i = phi ptr [ null, %bb.b ], [ %i.j, %bb.c ] ; 5 uses
  %.034.i = phi ptr [ %i.i, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.j = load ptr, ptr %.034.i, align 8           ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  %i.k = getelementptr i8, ptr %i.j, i64 8
  br i1 %.not.i, label %bb.d, label %bb.c, !llvm.loop !116

bb.d:                                             ; preds = %bb.c
  %i.l = zext i32 %i.h to i64                     ; 2 uses
  %.not38.i = icmp eq ptr %.036.i, null
  br i1 %.not38.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %.036.i, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %.036.i, i64 32    ; 2 uses
  %i.p = load i64, ptr %i.o, align 8              ; 3 uses
  %i.q = sub i64 0, %i.n
  %.not39.i = icmp eq i64 %i.p, %i.q
  br i1 %.not39.i, label %bb.g, label %bb.f, !prof !15

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "894: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 894b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 894) #17, !srcloc !117
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.2, i32 2888, i32 0, i64 16) #17, !srcloc !118
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr i8, ptr %.036.i, i64 40
  %i.s = load i64, ptr %i.r, align 8
  %i.t = sub i64 0, %i.p
  %i.u = icmp eq i64 %i.s, %i.t
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = add i64 %i.p, %i.l
  store i64 %i.v, ptr %i.o, align 8
  br label %add_swap_extent.exit

bb.i:                                             ; preds = %bb.g, %bb.d
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 48), align 16
  %i.x = tail call noalias align 8 dereferenceable_or_null(48) ptr @__kmalloc_cache_noprof(ptr noundef %i.w, i32 noundef 3264, i64 noundef 48) #21 ; 8 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %add_swap_extent.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr i8, ptr %i.x, i64 24
  store i64 0, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %i.x, i64 32
  store i64 %i.l, ptr %i.aa, align 8
  %i.ab = getelementptr i8, ptr %i.x, i64 40
  store i64 0, ptr %i.ab, align 8
  %i.ac = ptrtoint ptr %.036.i to i64
  store i64 %i.ac, ptr %i.x, align 8
  %i.ad = getelementptr i8, ptr %i.x, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr %i.x, ptr %.034.i, align 8
  tail call void @rb_insert_color(ptr noundef nonnull %i.x, ptr noundef %i.i) #19
  br label %add_swap_extent.exit

add_swap_extent.exit:                             ; preds = %bb.h, %bb.i, %bb.j
  %.0.i = phi i32 [ 0, %bb.h ], [ 1, %bb.j ], [ -12, %bb.i ]
  %i.ae = getelementptr i8, ptr %0, i64 152
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = zext i32 %i.af to i64
  store i64 %i.ag, ptr %2, align 8
  br label %destroy_swap_extents.exit

bb.k:                                             ; preds = %bb.a
  %i.ah = getelementptr i8, ptr %i.b, i64 96
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr i8, ptr %i.ai, i64 128
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ak, null
  br i1 %.not, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = tail call i32 %i.ak(ptr noundef %0, ptr noundef %1, ptr noundef %2) #19 ; 4 uses
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %destroy_swap_extents.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr i8, ptr %0, i64 16        ; 4 uses
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = or i64 %i.ao, 128
  store i64 %i.ap, ptr %i.an, align 8
  %i.aq = and i64 %i.ao, 256
  %.not25 = icmp eq i64 %i.aq, 0
  br i1 %.not25, label %destroy_swap_extents.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = tail call i32 @sio_pool_init() #19
  %.not26 = icmp eq i32 %i.ar, 0
  br i1 %.not26, label %destroy_swap_extents.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr i8, ptr %0, i64 184       ; 3 uses
  %i.at = load volatile ptr, ptr %i.as, align 8   ; 2 uses
  %.not17.i = icmp eq ptr %i.at, null
  br i1 %.not17.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.i
  %i.au = phi ptr [ %i.av, %.lr.ph.i ], [ %i.at, %bb.o ] ; 2 uses
  tail call void @rb_erase(ptr noundef nonnull %i.au, ptr noundef %i.as) #19
  tail call void @kfree(ptr noundef nonnull %i.au) #19
  %i.av = load volatile ptr, ptr %i.as, align 8   ; 2 uses
  %.not.i27 = icmp eq ptr %i.av, null
  br i1 %.not.i27, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !144

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.o
  %i.aw = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ax = and i64 %i.aw, 128
  %.not15.i = icmp eq i64 %i.ax, 0
  br i1 %.not15.i, label %destroy_swap_extents.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i
  %i.ay = load ptr, ptr %i.a, align 8
  %i.az = and i64 %i.aw, -129
  store i64 %i.az, ptr %i.an, align 8
  %i.ba = getelementptr i8, ptr %i.ay, i64 96
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr i8, ptr %i.bb, i64 136
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not16.i = icmp eq ptr %i.bd, null
  br i1 %.not16.i, label %destroy_swap_extents.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void %i.bd(ptr noundef %1) #19, !inline_history !220
  br label %destroy_swap_extents.exit

bb.r:                                             ; preds = %bb.k
  %i.be = tail call i32 @generic_swapfile_activate(ptr noundef %0, ptr noundef %1, ptr noundef %2) #19
  br label %destroy_swap_extents.exit

destroy_swap_extents.exit:                        ; preds = %bb.q, %bb.p, %._crit_edge.i, %bb.m, %bb.n, %bb.l, %bb.r, %add_swap_extent.exit
  %.0 = phi i32 [ %.0.i, %add_swap_extent.exit ], [ %i.be, %bb.r ], [ %i.al, %bb.m ], [ %i.al, %bb.l ], [ %i.al, %bb.n ], [ -12, %._crit_edge.i ], [ -12, %bb.p ], [ -12, %bb.q ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -22, 1) i32 @setup_swap_clusters_info(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef range(i64 0, 4294967296) %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = add nuw nsw i64 %2, 255
  %i.b = lshr i64 %i.a, 8                         ; 5 uses
  %i.c = mul nuw nsw i64 %i.b, 40
  %i.d = tail call noalias ptr @__kvmalloc_node_noprof(i64 noundef %i.c, i64 noundef 1, i32 noundef 3520, i32 noundef -1) #24 ; 12 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.thread, label %.preheader110

.preheader110:                                    ; preds = %bb.a
  %.not123 = icmp eq i64 %i.b, 0                  ; 2 uses
  br i1 %.not123, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader110
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.e = icmp samesign ult i64 %2, 769
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.b, 33554428
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.086114 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.m, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.f = getelementptr [40 x i8], ptr %i.d, i64 %.086114
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr [40 x i8], ptr %i.d, i64 %.086114
  %i.h = getelementptr i8, ptr %i.g, i64 40
  store i32 0, ptr %i.h, align 8
  %i.i = getelementptr [40 x i8], ptr %i.d, i64 %.086114
  %i.j = getelementptr i8, ptr %i.i, i64 80
  store i32 0, ptr %i.j, align 8
  %i.k = getelementptr [40 x i8], ptr %i.d, i64 %.086114
  %i.l = getelementptr i8, ptr %i.k, i64 120
  store i32 0, ptr %i.l, align 8
  %i.m = add nuw nsw i64 %.086114, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !221

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.086114.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.m, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod179 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod179)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.086114.epil = phi i64 [ %i.o, %.lr.ph.epil ], [ %.086114.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.n = getelementptr [40 x i8], ptr %i.d, i64 %.086114.epil
  store i32 0, ptr %i.n, align 8
  %i.o = add nuw nsw i64 %.086114.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !222

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader110
  %i.p = getelementptr i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 8
  %i.r = and i64 %i.q, 16
  %.not96 = icmp eq i64 %i.r, 0
  br i1 %.not96, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 24), align 8
  %i.t = tail call noalias align 8 dereferenceable_or_null(4) ptr @__kmalloc_cache_noprof(ptr noundef %i.s, i32 noundef 3264, i64 noundef 4) #21 ; 3 uses
  %i.u = getelementptr i8, ptr %0, i64 168
  store ptr %i.t, ptr %i.u, align 8
  %.not97 = icmp eq ptr %i.t, null
  br i1 %.not97, label %.thread, label %.preheader109

.preheader109:                                    ; preds = %bb.b
  store i32 0, ptr %i.t, align 8
  %i.v = getelementptr i8, ptr %0, i64 176
  store i32 0, ptr %i.v, align 8
  br label %bb.c

bb.c:                                             ; preds = %.preheader109, %._crit_edge
  %i.w = tail call fastcc i32 @swap_cluster_setup_bad_slot(ptr noundef %0, ptr noundef %i.d, i32 noundef 0, i1 noundef zeroext false) #18, !srcloc !224 ; 2 uses
  %.not98 = icmp eq i32 %i.w, 0
  br i1 %.not98, label %.preheader107, label %.thread

.preheader107:                                    ; preds = %bb.c
  %i.x = getelementptr i8, ptr %1, i64 1032       ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %.not124 = icmp eq i32 %i.y, 0
  br i1 %.not124, label %.preheader106, label %.lr.ph116

.lr.ph116:                                        ; preds = %.preheader107
  %i.z = getelementptr i8, ptr %1, i64 1536
  %i.aa = getelementptr i8, ptr %1, i64 1028
  br label %bb.e

bb.d:                                             ; preds = %bb.g
  %i.ab = add nuw nsw i64 %.2115, 1               ; 2 uses
  %i.ac = load i32, ptr %i.x, align 4
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp samesign ult i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.e, label %.preheader106, !llvm.loop !225

.preheader106:                                    ; preds = %bb.d, %.preheader107
  %3 = add nsw i64 %2, -1
  %4 = or i64 %3, 255                             ; 2 uses
  %5 = add nsw i64 %4, 1
  %i.af = icmp ult i64 %2, %5
  br i1 %i.af, label %.lr.ph118, label %._crit_edge119

bb.e:                                             ; preds = %.lr.ph116, %bb.d
  %.2115 = phi i64 [ 0, %.lr.ph116 ], [ %i.ab, %bb.d ] ; 2 uses
  %i.ag = getelementptr [4 x i8], ptr %i.z, i64 %.2115
  %i.ah = load i32, ptr %i.ag, align 4            ; 3 uses
  %.pre = load i32, ptr %i.aa, align 4
  %i.ai = freeze i32 %.pre                        ; 2 uses
  %i.aj = add i32 %i.ah, -1
  %or.cond.not = icmp ult i32 %i.aj, %i.ai
  br i1 %or.cond.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %i.ah, i32 noundef %i.ai) #20 ; 0 uses
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.al = tail call fastcc i32 @swap_cluster_setup_bad_slot(ptr noundef %0, ptr noundef %i.d, i32 noundef %i.ah, i1 noundef zeroext false) #18, !srcloc !226 ; 2 uses
  %.not102 = icmp eq i32 %i.al, 0
  br i1 %.not102, label %bb.d, label %.thread

bb.h:                                             ; preds = %.lr.ph118
  %i.am = add i64 %.3117, 1
  %exitcond133.not = icmp eq i64 %.3117, %4
  br i1 %exitcond133.not, label %._crit_edge119, label %.lr.ph118, !llvm.loop !227

.lr.ph118:                                        ; preds = %.preheader106, %bb.h
  %.3117 = phi i64 [ %i.am, %bb.h ], [ %2, %.preheader106 ] ; 3 uses
  %i.an = trunc i64 %.3117 to i32
  %i.ao = tail call fastcc i32 @swap_cluster_setup_bad_slot(ptr noundef %0, ptr noundef %i.d, i32 noundef %i.an, i1 noundef zeroext true) #18, !srcloc !228 ; 2 uses
  %.not100 = icmp eq i32 %i.ao, 0
  br i1 %.not100, label %bb.h, label %.thread

._crit_edge119:                                   ; preds = %bb.h, %.preheader106
  %i.ap = getelementptr i8, ptr %0, i64 88        ; 4 uses
  store volatile ptr %i.ap, ptr %i.ap, align 8
  %i.aq = getelementptr i8, ptr %0, i64 96        ; 3 uses
  store volatile ptr %i.ap, ptr %i.aq, align 8
  %i.ar = getelementptr i8, ptr %0, i64 104       ; 3 uses
  store volatile ptr %i.ar, ptr %i.ar, align 8
  %i.as = getelementptr i8, ptr %0, i64 112
  store volatile ptr %i.ar, ptr %i.as, align 8
  %i.at = getelementptr i8, ptr %0, i64 312       ; 3 uses
  store volatile ptr %i.at, ptr %i.at, align 8
  %i.au = getelementptr i8, ptr %0, i64 320
  store volatile ptr %i.at, ptr %i.au, align 8
  %i.av = getelementptr i8, ptr %0, i64 120       ; 4 uses
  %i.aw = getelementptr i8, ptr %0, i64 128       ; 3 uses
  %i.ax = getelementptr i8, ptr %0, i64 136       ; 3 uses
  %i.ay = getelementptr i8, ptr %0, i64 144
  store volatile ptr %i.av, ptr %i.av, align 8
  store volatile ptr %i.av, ptr %i.aw, align 8
  store volatile ptr %i.ax, ptr %i.ax, align 8
  store volatile ptr %i.ax, ptr %i.ay, align 8
  br i1 %.not123, label %._crit_edge122, label %.lr.ph121

.lr.ph121:                                        ; preds = %._crit_edge119, %bb.k
  %.5120 = phi i64 [ %i.bh, %bb.k ], [ 0, %._crit_edge119 ] ; 2 uses
  %i.az = getelementptr [40 x i8], ptr %i.d, i64 %.5120 ; 4 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 4
  %i.bb = load i16, ptr %i.ba, align 4
  %.not99 = icmp eq i16 %i.bb, 0
  %i.bc = getelementptr i8, ptr %i.az, i64 6      ; 2 uses
  %i.bd = getelementptr i8, ptr %i.az, i64 24     ; 4 uses
  %i.be = getelementptr i8, ptr %i.az, i64 32
  br i1 %.not99, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph121
  store i8 2, ptr %i.bc, align 2
  %i.bf = load ptr, ptr %i.aw, align 8
  store ptr %i.bd, ptr %i.aw, align 8
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph121
  store i8 1, ptr %i.bc, align 2
  %i.bg = load ptr, ptr %i.aq, align 8
  store ptr %i.bd, ptr %i.aq, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink158 = phi ptr [ %i.ap, %bb.j ], [ %i.av, %bb.i ]
  %.sink157 = phi ptr [ %i.bg, %bb.j ], [ %i.bf, %bb.i ] ; 2 uses
  store ptr %.sink158, ptr %i.bd, align 8
  store ptr %.sink157, ptr %i.be, align 8
  store volatile ptr %i.bd, ptr %.sink157, align 8
  %i.bh = add nuw nsw i64 %.5120, 1               ; 2 uses
  %exitcond134.not = icmp eq i64 %i.bh, %i.b
  br i1 %exitcond134.not, label %._crit_edge122, label %.lr.ph121, !llvm.loop !229

._crit_edge122:                                   ; preds = %bb.k, %._crit_edge119
  %i.bi = getelementptr i8, ptr %0, i64 80
  store ptr %i.d, ptr %i.bi, align 8
  br label %bb.l

.thread:                                          ; preds = %bb.g, %.lr.ph118, %bb.f, %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ %i.w, %bb.c ], [ -12, %bb.a ], [ -22, %bb.f ], [ -12, %bb.b ], [ %i.ao, %.lr.ph118 ], [ %i.al, %bb.g ]
  tail call fastcc void @free_swap_cluster_info(ptr noundef %i.d, i64 noundef %2) #18, !srcloc !230
  br label %bb.l

bb.l:                                             ; preds = %.thread, %._crit_edge122
  %.0 = phi i32 [ %.1, %.thread ], [ 0, %._crit_edge122 ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @discard_swap(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 184
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %first_se.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.c, %.preheader.i.i ], [ %.val, %bb.a ] ; 2 uses
  %i.b = getelementptr i8, ptr %.0.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not9.i.i = icmp eq ptr %i.c, null
  br i1 %.not9.i.i, label %first_se.exit, label %.preheader.i.i, !llvm.loop !107

first_se.exit:                                    ; preds = %.preheader.i.i, %bb.a
  %.06.i.i = phi ptr [ null, %bb.a ], [ %.0.i.i, %.preheader.i.i ] ; 3 uses
  %i.d = getelementptr i8, ptr %.06.i.i, i64 32
  %i.e = load i64, ptr %i.d, align 8
  %i.f = shl i64 %i.e, 3
  %i.g = add i64 %i.f, -8                         ; 2 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %first_se.exit
  %i.h = getelementptr i8, ptr %.06.i.i, i64 40
  %i.i = load i64, ptr %i.h, align 8
  %i.j = shl i64 %i.i, 3
  %i.k = add i64 %i.j, 8
  %i.l = getelementptr i8, ptr %0, i64 192
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i32 @blkdev_issue_discard(ptr noundef %i.m, i64 noundef %i.k, i64 noundef %i.g, i32 noundef 3264) #19 ; 2 uses
  %.not26 = icmp eq i32 %i.n, 0
  br i1 %.not26, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.o = tail call i32 @__SCT__cond_resched() #19 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %first_se.exit
  %i.p = tail call ptr @rb_next(ptr noundef %.06.i.i) #19 ; 2 uses
  %.not2729 = icmp eq ptr %i.p, null
  br i1 %.not2729, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.q = getelementptr i8, ptr %0, i64 192
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %.01930 = phi ptr [ %i.p, %.lr.ph ], [ %i.aa, %bb.f ] ; 3 uses
  %i.r = getelementptr i8, ptr %.01930, i64 40
  %i.s = load i64, ptr %i.r, align 8
  %i.t = shl i64 %i.s, 3
  %i.u = getelementptr i8, ptr %.01930, i64 32
  %i.v = load i64, ptr %i.u, align 8
  %i.w = shl i64 %i.v, 3
  %i.x = load ptr, ptr %i.q, align 8
  %i.y = tail call i32 @blkdev_issue_discard(ptr noundef %i.x, i64 noundef %i.t, i64 noundef %i.w, i32 noundef 3264) #19 ; 2 uses
  %.not28 = icmp eq i32 %i.y, 0
  br i1 %.not28, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.z = tail call i32 @__SCT__cond_resched() #19 ; 0 uses
  %i.aa = tail call ptr @rb_next(ptr noundef nonnull %.01930) #19 ; 2 uses
  %.not27 = icmp eq ptr %i.aa, null
  br i1 %.not27, label %.loopexit, label %bb.e, !llvm.loop !231

.loopexit:                                        ; preds = %bb.e, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ %i.n, %bb.b ], [ 0, %bb.d ], [ %i.y, %bb.e ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @inode_drain_writes(ptr noundef %0) unnamed_addr #7 align 16 prefalign(16) {
bb.a:
  tail call void @inode_dio_wait(ptr noundef %0) #19
  %i.a = getelementptr i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 @filemap_write_and_wait_range(ptr noundef %i.b, i64 noundef 0, i64 noundef 9223372036854775807) #19
  ret i32 %i.c
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @enable_swap_info(ptr noundef %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void @percpu_ref_resurrect(ptr noundef %0) #19
  tail call void @_raw_spin_lock(ptr noundef nonnull @swap_lock) #19
  %i.a = getelementptr i8, ptr %0, i64 240        ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.a) #19
  tail call fastcc void @_enable_swap_info(ptr noundef %0) #18, !srcloc !232
  tail call void @_raw_spin_unlock(ptr noundef %i.a) #19
  tail call void @_raw_spin_unlock(ptr noundef nonnull @swap_lock) #19
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kvmalloc_node_noprof(i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @percpu_ref_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @swap_users_ref_free(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 208
  tail call void @complete(ptr noundef %i.a) #19
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @percpu_ref_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @I_BDEV(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @read_cache_folio(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

end_hunk_0
