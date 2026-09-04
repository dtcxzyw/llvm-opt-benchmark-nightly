Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/extents?download=true
inline.NumInlined: 711
inline.NumDeleted: 166
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ext4_check_map_extents_env
; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @__read_extent_tree_block(ptr noundef %0, i32 noundef range(i32 648, 3016) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef range(i32 -2147483647, 65535) %4, i32 noundef %5) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = and i32 %5, 268435456
  %.not = icmp eq i32 %i.a, 0
  %spec.select = select i1 %.not, i32 3144, i32 35912
  %i.b = getelementptr i8, ptr %3, i64 4
  %.val45 = load i32, ptr %i.b, align 4           ; 2 uses
  %i.c = getelementptr i8, ptr %3, i64 8
  %.val46 = load i16, ptr %i.c, align 4
  %i.d = zext i32 %.val45 to i64
  %i.e = zext i16 %.val46 to i64
  %i.f = shl nuw nsw i64 %i.e, 32
  %i.g = or disjoint i64 %i.f, %i.d               ; 2 uses
  %i.h = getelementptr i8, ptr %2, i64 40
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 24
  %.val47 = load i64, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %i.i, i64 192
  %.val48 = load ptr, ptr %i.k, align 64
  %i.l = trunc i64 %.val47 to i32
  %i.m = tail call ptr @bdev_getblk(ptr noundef %.val48, i64 noundef %i.g, i32 noundef %i.l, i32 noundef range(i32 3144, 35913) %spec.select) #14 ; 12 uses
  %.not37 = icmp eq ptr %i.m, null
  br i1 %.not37, label %ext4_cache_extents.exit, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.n = tail call i32 @bh_uptodate_or_lock(ptr noundef nonnull %i.m) #14
  %.not38 = icmp eq i32 %i.n, 0
  br i1 %.not38, label %bb.c, label %buffer_verified.exit

bb.c:                                             ; preds = %bb.b
  %i.o = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.p = ptrtoint ptr %i.o to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_ext4_ext_load_extent, i64 8), i1 false) #15
          to label %trace_ext4_ext_load_extent.exit [label %cpumask_test_cpu.exit.i.i], !srcloc !22

cpumask_test_cpu.exit.i.i:                        ; preds = %bb.c
  %i.q = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #15, !srcloc !48
  %i.r = zext i32 %i.q to i64
  %i.s = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.r) #15, !srcloc !23 ; 2 uses
  %i.t = icmp ult i8 %i.s, 2
  tail call void @llvm.assume(i1 %i.t)
  %i.u = trunc nuw i8 %i.s to i1
  br i1 %i.u, label %bb.d, label %trace_ext4_ext_load_extent.exit

bb.d:                                             ; preds = %cpumask_test_cpu.exit.i.i
  %i.v = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.v, ptr elementtype(i64) %i.v) #15, !srcloc !24
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !25
  %i.w = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_ext4_ext_load_extent, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call i32 @__SCT__tp_func_ext4_ext_load_extent(ptr noundef %i.y, ptr noundef %2, i32 noundef %.val45, i64 noundef %i.p) #14 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !26
  %i.aa = getelementptr i8, ptr %i.v, i64 8       ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.aa, ptr elementtype(i64) %i.aa) #15, !srcloc !27
  br label %trace_ext4_ext_load_extent.exit

trace_ext4_ext_load_extent.exit:                  ; preds = %bb.c, %cpumask_test_cpu.exit.i.i, %bb.f
  %i.ab = tail call i32 @ext4_read_bh(ptr noundef nonnull %i.m, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #14 ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %bb.m, label %buffer_verified.exit

buffer_verified.exit:                             ; preds = %trace_ext4_ext_load_extent.exit, %bb.b
  %i.ad = load volatile i64, ptr %i.m, align 8
  %.in.i.in = and i64 %i.ad, 33554432
  %.in.i = icmp ne i64 %.in.i.in, 0
  %i.ae = and i32 %5, 536870912
  %.not40 = icmp eq i32 %i.ae, 0
  %or.cond42 = and i1 %.not40, %.in.i
  br i1 %or.cond42, label %ext4_cache_extents.exit, label %bb.g

bb.g:                                             ; preds = %buffer_verified.exit
  %i.af = getelementptr i8, ptr %i.m, i64 40      ; 2 uses
  %.val44 = load ptr, ptr %i.af, align 8
  %i.ag = load i32, ptr %3, align 4
  %i.ah = tail call fastcc i32 @__ext4_ext_check(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %.val44, i32 noundef %4, i64 noundef %i.g, i32 noundef %i.ag) #16, !srcloc !49 ; 2 uses
  %.not41 = icmp eq i32 %i.ah, 0
  br i1 %.not41, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ai = load volatile i64, ptr %i.m, align 8
  %i.aj = and i64 %i.ai, 33554432
  %.not50 = icmp eq i64 %i.aj, 0
  br i1 %.not50, label %bb.i, label %set_buffer_verified.exit

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr i8, ptr %i.m, i64 3       ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.ak, i32 2, ptr elementtype(i8) %i.ak) #15, !srcloc !20
  br label %set_buffer_verified.exit

set_buffer_verified.exit:                         ; preds = %bb.h, %bb.i
  %i.al = and i32 %5, 1073741824
  %i.am = or i32 %i.al, %4
  %or.cond = icmp eq i32 %i.am, 0
  br i1 %or.cond, label %bb.j, label %ext4_cache_extents.exit

bb.j:                                             ; preds = %set_buffer_verified.exit
  %.val = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.an = getelementptr i8, ptr %.val, i64 2
  %i.ao = load i16, ptr %i.an, align 2            ; 2 uses
  %.not35.i = icmp eq i16 %i.ao, 0
  br i1 %.not35.i, label %ext4_cache_extents.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.ap = zext i16 %i.ao to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.preheader.i
  %.02133.i = phi i32 [ %i.bf, %bb.l ], [ %i.ap, %.lr.ph.preheader.i ] ; 2 uses
  %.02232.i = phi i32 [ %i.be, %bb.l ], [ 0, %.lr.ph.preheader.i ] ; 4 uses
  %.pn31.i = phi ptr [ %.02334.i, %bb.l ], [ %.val, %.lr.ph.preheader.i ] ; 4 uses
  %.02334.i = getelementptr i8, ptr %.pn31.i, i64 12 ; 2 uses
  %i.aq = load i32, ptr %.02334.i, align 4        ; 4 uses
  %i.ar = getelementptr i8, ptr %.pn31.i, i64 16  ; 2 uses
  %.023.val28.i = load i16, ptr %i.ar, align 4    ; 3 uses
  %i.as = zext i16 %.023.val28.i to i32           ; 2 uses
  %i.at = icmp ult i16 %.023.val28.i, -32767
  %i.au = add nsw i32 %i.as, -32768
  %i.av = select i1 %i.at, i32 %i.as, i32 %i.au   ; 2 uses
  %.not.i = icmp eq i32 %.02232.i, 0
  %.not25.i = icmp eq i32 %.02232.i, %i.aq
  %or.cond.i49 = select i1 %.not.i, i1 true, i1 %.not25.i
  br i1 %or.cond.i49, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.aw = sub i32 %i.aq, %.02232.i
  tail call void @ext4_es_cache_extent(ptr noundef %2, i32 noundef %.02232.i, i32 noundef %i.aw, i64 noundef -1, i32 noundef 8) #14
  %.023.val29.pre.i = load i16, ptr %i.ar, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
  %.023.val29.i = phi i16 [ %.023.val29.pre.i, %bb.k ], [ %.023.val28.i, %.lr.ph.i ]
  %i.ax = icmp ult i16 %.023.val29.i, -32767
  %spec.select.i = select i1 %i.ax, i32 1, i32 2
  %i.ay = getelementptr i8, ptr %.pn31.i, i64 18
  %.023.val.i = load i16, ptr %i.ay, align 2
  %i.az = getelementptr i8, ptr %.pn31.i, i64 20
  %.023.val27.i = load i32, ptr %i.az, align 4
  %i.ba = zext i32 %.023.val27.i to i64
  %i.bb = zext i16 %.023.val.i to i64
  %i.bc = shl nuw nsw i64 %i.bb, 32
  %i.bd = or disjoint i64 %i.bc, %i.ba
  tail call void @ext4_es_cache_extent(ptr noundef %2, i32 noundef %i.aq, i32 noundef %i.av, i64 noundef %i.bd, i32 noundef %spec.select.i) #14
  %i.be = add i32 %i.av, %i.aq
  %i.bf = add nsw i32 %.02133.i, -1
  %i.bg = icmp sgt i32 %.02133.i, 1
  br i1 %i.bg, label %.lr.ph.i, label %ext4_cache_extents.exit, !llvm.loop !1

bb.m:                                             ; preds = %bb.g, %trace_ext4_ext_load_extent.exit
  %.034 = phi i32 [ %i.ah, %bb.g ], [ %i.ab, %trace_ext4_ext_load_extent.exit ]
  %i.bh = getelementptr i8, ptr %i.m, i64 88      ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bh, ptr elementtype(i32) %i.bh) #15, !srcloc !28
  %i.bi = sext i32 %.034 to i64
  %i.bj = inttoptr i64 %i.bi to ptr
  br label %ext4_cache_extents.exit

ext4_cache_extents.exit:                          ; preds = %bb.l, %bb.j, %bb.a, %set_buffer_verified.exit, %buffer_verified.exit, %bb.m
  %.0 = phi ptr [ %i.m, %set_buffer_verified.exit ], [ %i.bj, %bb.m ], [ %i.m, %buffer_verified.exit ], [ inttoptr (i64 -12 to ptr), %bb.a ], [ %i.m, %bb.j ], [ %i.m, %bb.l ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ext4_ext_tree_init(ptr noundef %0, ptr noundef initializes((-232, -220)) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 -232
  %i.b = getelementptr i8, ptr %1, i64 -226
  store i16 0, ptr %i.b, align 2
  %i.c = getelementptr i8, ptr %1, i64 -230
  store i16 0, ptr %i.c, align 2
  store i16 -3318, ptr %i.a, align 4
  %i.d = getelementptr i8, ptr %1, i64 -228
  store i16 4, ptr %i.d, align 4
  %i.e = getelementptr i8, ptr %1, i64 -224
  store i32 0, ptr %i.e, align 4
  %i.f = tail call i32 @__ext4_mark_inode_dirty(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.ext4_ext_tree_init, i32 noundef 882) #14 ; 0 uses
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @ext4_find_extent(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = and i32 %3, 268435456
  %.not = icmp eq i32 %i.a, 0
  %i.b = getelementptr i8, ptr %0, i64 -232       ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 -226
  %.val103 = load i16, ptr %i.c, align 2          ; 6 uses
  %i.d = sext i16 %.val103 to i32                 ; 4 uses
  %or.cond = icmp ugt i16 %.val103, 5
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %0, ptr noundef nonnull @__func__.ext4_find_extent, i32 noundef 904, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef %i.d) #14
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %.not98 = icmp eq ptr %2, null
  br i1 %.not98, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ugt ptr %2, inttoptr (i64 -4096 to ptr)
  br i1 %i.e, label %ext4_ext_drop_refs.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr i8, ptr %2, i64 8
  %i.g = load i16, ptr %i.f, align 8
  %i.h = zext i16 %i.g to i32
  br label %bb.f

bb.f:                                             ; preds = %ext4_ext_path_brelse.exit.i, %bb.e
  %.08.i = phi i32 [ 0, %bb.e ], [ %i.k, %ext4_ext_path_brelse.exit.i ] ; 2 uses
  %.067.i = phi ptr [ %2, %bb.e ], [ %i.l, %ext4_ext_path_brelse.exit.i ] ; 2 uses
  %i.i = getelementptr i8, ptr %.067.i, i64 40    ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %ext4_ext_path_brelse.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__brelse(ptr noundef nonnull %i.j) #14
  br label %ext4_ext_path_brelse.exit.i

ext4_ext_path_brelse.exit.i:                      ; preds = %bb.g, %bb.f
  store ptr null, ptr %i.i, align 8
  %i.k = add nuw nsw i32 %.08.i, 1
  %i.l = getelementptr i8, ptr %.067.i, i64 48
  %exitcond.not.i = icmp eq i32 %.08.i, %i.h
  br i1 %exitcond.not.i, label %ext4_ext_drop_refs.exit, label %bb.f, !llvm.loop !0

ext4_ext_drop_refs.exit:                          ; preds = %ext4_ext_path_brelse.exit.i, %bb.d
  %i.m = getelementptr i8, ptr %2, i64 10
  %i.n = load i16, ptr %i.m, align 2
  %i.o = zext i16 %i.n to i32
  %i.p = icmp sgt i32 %i.d, %i.o
  br i1 %i.p, label %bb.h, label %bb.j

bb.h:                                             ; preds = %ext4_ext_drop_refs.exit
  tail call void @kfree(ptr noundef nonnull %2) #14
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.c
  %i.q = select i1 %.not, i32 3392, i32 36160
  %i.r = mul nuw nsw i32 %i.d, 48
  %narrow = add nuw nsw i32 %i.r, 96
  %i.s = zext nneg i32 %narrow to i64
  %i.t = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 3145729) %i.s, i32 noundef range(i32 3136, 36352) %i.q) #17 ; 3 uses
  %.not100 = icmp eq ptr %i.t, null
  br i1 %.not100, label %ext4_ext_binsearch.exit.thread, label %bb.i, !prof !14

bb.i:                                             ; preds = %.thread
  %i.u = add nuw nsw i16 %.val103, 1
  %i.v = getelementptr i8, ptr %i.t, i64 10
  store i16 %i.u, ptr %i.v, align 2
  br label %bb.j

bb.j:                                             ; preds = %ext4_ext_drop_refs.exit, %bb.i
  %.1 = phi ptr [ %i.t, %bb.i ], [ %2, %ext4_ext_drop_refs.exit ] ; 9 uses
  %i.w = getelementptr i8, ptr %.1, i64 32        ; 2 uses
  store ptr %i.b, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %.1, i64 40
  store ptr null, ptr %i.x, align 8
  %i.y = and i32 %3, 1073741824
  %i.z = icmp eq i32 %i.y, 0
  %i.aa = icmp eq i16 %.val103, 0                 ; 2 uses
  %or.cond5 = and i1 %i.z, %i.aa
  br i1 %or.cond5, label %bb.k, label %ext4_cache_extents.exit

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr i8, ptr %0, i64 -230
  %i.ac = load i16, ptr %i.ab, align 2            ; 2 uses
  %.not35.i = icmp eq i16 %i.ac, 0
  br i1 %.not35.i, label %._crit_edge, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.k
  %i.ad = zext i16 %i.ac to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.preheader.i
  %.02133.i = phi i32 [ %i.at, %bb.m ], [ %i.ad, %.lr.ph.preheader.i ] ; 2 uses
  %.02232.i = phi i32 [ %i.as, %bb.m ], [ 0, %.lr.ph.preheader.i ] ; 4 uses
  %.pn31.i = phi ptr [ %.02334.i, %bb.m ], [ %i.b, %.lr.ph.preheader.i ] ; 4 uses
  %.02334.i = getelementptr i8, ptr %.pn31.i, i64 12 ; 2 uses
  %i.ae = load i32, ptr %.02334.i, align 4        ; 4 uses
  %i.af = getelementptr i8, ptr %.pn31.i, i64 16  ; 2 uses
  %.023.val28.i = load i16, ptr %i.af, align 4    ; 3 uses
  %i.ag = zext i16 %.023.val28.i to i32           ; 2 uses
  %i.ah = icmp ult i16 %.023.val28.i, -32767
  %i.ai = add nsw i32 %i.ag, -32768
  %i.aj = select i1 %i.ah, i32 %i.ag, i32 %i.ai   ; 2 uses
  %.not.i = icmp eq i32 %.02232.i, 0
  %.not25.i = icmp eq i32 %.02232.i, %i.ae
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not25.i
  br i1 %or.cond.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ak = sub i32 %i.ae, %.02232.i
  tail call void @ext4_es_cache_extent(ptr noundef %0, i32 noundef %.02232.i, i32 noundef %i.ak, i64 noundef -1, i32 noundef 8) #14
  %.023.val29.pre.i = load i16, ptr %i.af, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i
  %.023.val29.i = phi i16 [ %.023.val29.pre.i, %bb.l ], [ %.023.val28.i, %.lr.ph.i ]
  %i.al = icmp ult i16 %.023.val29.i, -32767
  %spec.select.i = select i1 %i.al, i32 1, i32 2
  %i.am = getelementptr i8, ptr %.pn31.i, i64 18
  %.023.val.i = load i16, ptr %i.am, align 2
  %i.an = getelementptr i8, ptr %.pn31.i, i64 20
  %.023.val27.i = load i32, ptr %i.an, align 4
  %i.ao = zext i32 %.023.val27.i to i64
  %i.ap = zext i16 %.023.val.i to i64
  %i.aq = shl nuw nsw i64 %i.ap, 32
  %i.ar = or disjoint i64 %i.aq, %i.ao
  tail call void @ext4_es_cache_extent(ptr noundef %0, i32 noundef %i.ae, i32 noundef %i.aj, i64 noundef %i.ar, i32 noundef %spec.select.i) #14
  %i.as = add i32 %i.aj, %i.ae
  %i.at = add nsw i32 %.02133.i, -1
  %i.au = icmp sgt i32 %.02133.i, 1
  br i1 %i.au, label %.lr.ph.i, label %ext4_cache_extents.exit, !llvm.loop !1

ext4_cache_extents.exit:                          ; preds = %bb.m, %bb.j
  br i1 %i.aa, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %ext4_cache_extents.exit
  %.pre = load ptr, ptr %i.w, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %i.av = phi ptr [ %.pre, %.lr.ph.preheader ], [ %.val, %bb.o ] ; 3 uses
  %indvars.iv = phi i32 [ %i.d, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.o ] ; 2 uses
  %.093121 = phi i16 [ 0, %.lr.ph.preheader ], [ %i.cb, %bb.o ] ; 2 uses
  %i.aw = sext i16 %.093121 to i64
  %i.ax = getelementptr [48 x i8], ptr %.1, i64 %i.aw ; 4 uses
  %i.ay = getelementptr i8, ptr %i.av, i64 24     ; 3 uses
  %i.az = getelementptr i8, ptr %i.av, i64 2
  %i.ba = load i16, ptr %i.az, align 2
  %i.bb = zext i16 %i.ba to i64
  %i.bc = getelementptr [12 x i8], ptr %i.av, i64 %i.bb ; 2 uses
  %.not1.i = icmp ugt ptr %i.ay, %i.bc
  br i1 %.not1.i, label %ext4_ext_binsearch_idx.exit, label %.lr.ph.i108

.lr.ph.i108:                                      ; preds = %.lr.ph, %.lr.ph.i108
  %.03.i = phi ptr [ %.1.i, %.lr.ph.i108 ], [ %i.bc, %.lr.ph ] ; 2 uses
  %.0142.i = phi ptr [ %.115.i, %.lr.ph.i108 ], [ %i.ay, %.lr.ph ] ; 3 uses
  %i.bd = ptrtoint ptr %.03.i to i64
  %i.be = ptrtoint ptr %.0142.i to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = sdiv i64 %i.bf, 24
  %i.bh = getelementptr [12 x i8], ptr %.0142.i, i64 %i.bg ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = icmp ult i32 %1, %i.bi                  ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bh, i64 -12
  %i.bl = getelementptr i8, ptr %i.bh, i64 12
  %.115.i = select i1 %i.bj, ptr %.0142.i, ptr %i.bl ; 3 uses
  %.1.i = select i1 %i.bj, ptr %i.bk, ptr %.03.i  ; 2 uses
  %.not.i109 = icmp ugt ptr %.115.i, %.1.i
  br i1 %.not.i109, label %ext4_ext_binsearch_idx.exit, label %.lr.ph.i108, !llvm.loop !50

ext4_ext_binsearch_idx.exit:                      ; preds = %.lr.ph.i108, %.lr.ph
  %.014.lcssa.i = phi ptr [ %i.ay, %.lr.ph ], [ %.115.i, %.lr.ph.i108 ] ; 3 uses
  %i.bm = getelementptr i8, ptr %.014.lcssa.i, i64 -12 ; 2 uses
  %i.bn = getelementptr i8, ptr %i.ax, i64 24
  store ptr %i.bm, ptr %i.bn, align 8
  %i.bo = getelementptr i8, ptr %.014.lcssa.i, i64 -8
  %.val106 = load i32, ptr %i.bo, align 4
  %i.bp = getelementptr i8, ptr %.014.lcssa.i, i64 -4
  %.val107 = load i16, ptr %i.bp, align 4
  %i.bq = zext i32 %.val106 to i64
  %i.br = zext i16 %.val107 to i64
  %i.bs = shl nuw nsw i64 %i.br, 32
  %i.bt = or disjoint i64 %i.bs, %i.bq
  store i64 %i.bt, ptr %i.ax, align 8
  %i.bu = getelementptr i8, ptr %i.ax, i64 8
  %4 = trunc nsw i32 %indvars.iv to i16
  store i16 %4, ptr %i.bu, align 8
  %i.bv = getelementptr i8, ptr %i.ax, i64 16
  store ptr null, ptr %i.bv, align 8
  %indvars.iv.next = add nsw i32 %indvars.iv, -1  ; 2 uses
  %i.bw = tail call fastcc ptr @__read_extent_tree_block(ptr noundef nonnull @__func__.ext4_find_extent, i32 noundef 939, ptr noundef %0, ptr noundef %i.bm, i32 noundef %indvars.iv.next, i32 noundef %3) #16, !srcloc !53 ; 4 uses
  %i.bx = icmp ugt ptr %i.bw, inttoptr (i64 -4096 to ptr)
  br i1 %i.bx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %ext4_ext_binsearch_idx.exit
  %i.by = ptrtoint ptr %i.bw to i64
  %sext = shl i64 %i.by, 32
  %i.bz = ashr exact i64 %sext, 32
  br label %bb.r

bb.o:                                             ; preds = %ext4_ext_binsearch_idx.exit
  %i.ca = getelementptr i8, ptr %i.bw, i64 40
  %.val = load ptr, ptr %i.ca, align 8            ; 2 uses
  %i.cb = add nuw i16 %.093121, 1                 ; 3 uses
  %i.cc = sext i16 %i.cb to i64
  %i.cd = getelementptr [48 x i8], ptr %.1, i64 %i.cc ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 40
  store ptr %i.bw, ptr %i.ce, align 8
  %i.cf = getelementptr i8, ptr %i.cd, i64 32
  store ptr %.val, ptr %i.cf, align 8
  %.not101 = icmp eq i16 %i.cb, %.val103
  br i1 %.not101, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !51

._crit_edge.loopexit:                             ; preds = %bb.o
  %i.cg = zext nneg i16 %.val103 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.k, %._crit_edge.loopexit, %ext4_cache_extents.exit
  %.092.lcssa = phi i64 [ 0, %ext4_cache_extents.exit ], [ %i.cg, %._crit_edge.loopexit ], [ 0, %bb.k ]
  %i.ch = getelementptr [48 x i8], ptr %.1, i64 %.092.lcssa ; 4 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 8
  store i16 0, ptr %i.ci, align 8
  %i.cj = getelementptr i8, ptr %i.ch, i64 16     ; 2 uses
  %i.ck = getelementptr i8, ptr %i.ch, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.cj, i8 0, i64 16, i1 false)
  %i.cl = load ptr, ptr %i.ck, align 8            ; 3 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 2
  %i.cn = load i16, ptr %i.cm, align 2            ; 2 uses
  %i.co = icmp eq i16 %i.cn, 0
  br i1 %i.co, label %ext4_ext_binsearch.exit.thread, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.cp = getelementptr i8, ptr %i.cl, i64 24     ; 3 uses
  %i.cq = zext i16 %i.cn to i64
  %i.cr = getelementptr [12 x i8], ptr %i.cl, i64 %i.cq ; 2 uses
  %.not1.i110 = icmp ugt ptr %i.cp, %i.cr
  br i1 %.not1.i110, label %ext4_ext_binsearch.exit, label %.lr.ph.i111

.lr.ph.i111:                                      ; preds = %bb.p, %.lr.ph.i111
  %.03.i112 = phi ptr [ %.1.i113, %.lr.ph.i111 ], [ %i.cr, %bb.p ] ; 2 uses
  %.0152.i = phi ptr [ %.116.i, %.lr.ph.i111 ], [ %i.cp, %bb.p ] ; 3 uses
  %i.cs = ptrtoint ptr %.03.i112 to i64
  %i.ct = ptrtoint ptr %.0152.i to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = sdiv i64 %i.cu, 24
  %i.cw = getelementptr [12 x i8], ptr %.0152.i, i64 %i.cv ; 3 uses
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = icmp ult i32 %1, %i.cx                  ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cw, i64 -12
  %i.da = getelementptr i8, ptr %i.cw, i64 12
  %.116.i = select i1 %i.cy, ptr %.0152.i, ptr %i.da ; 3 uses
  %.1.i113 = select i1 %i.cy, ptr %i.cz, ptr %.03.i112 ; 2 uses
  %.not.i114 = icmp ugt ptr %.116.i, %.1.i113
  br i1 %.not.i114, label %ext4_ext_binsearch.exit, label %.lr.ph.i111, !llvm.loop !52

ext4_ext_binsearch.exit:                          ; preds = %.lr.ph.i111, %bb.p
  %.015.lcssa.i = phi ptr [ %i.cp, %bb.p ], [ %.116.i, %.lr.ph.i111 ] ; 3 uses
  %i.db = getelementptr i8, ptr %.015.lcssa.i, i64 -12 ; 2 uses
  store ptr %i.db, ptr %i.cj, align 8
  %.not102 = icmp eq ptr %i.db, null
  br i1 %.not102, label %ext4_ext_binsearch.exit.thread, label %bb.q

bb.q:                                             ; preds = %ext4_ext_binsearch.exit
  %i.dc = getelementptr i8, ptr %.015.lcssa.i, i64 -6
  %.val104 = load i16, ptr %i.dc, align 2
  %i.dd = getelementptr i8, ptr %.015.lcssa.i, i64 -4
  %.val105 = load i32, ptr %i.dd, align 4
  %i.de = zext i32 %.val105 to i64
  %i.df = zext i16 %.val104 to i64
  %i.dg = shl nuw nsw i64 %i.df, 32
  %i.dh = or disjoint i64 %i.dg, %i.de
  store i64 %i.dh, ptr %i.ch, align 8
  br label %ext4_ext_binsearch.exit.thread

bb.r:                                             ; preds = %bb.n, %bb.b
  %.091 = phi i64 [ -117, %bb.b ], [ %i.bz, %bb.n ]
  %.2 = phi ptr [ %2, %bb.b ], [ %.1, %bb.n ]     ; 5 uses
  %.not.i.i115 = icmp eq ptr %.2, null
  %i.di = icmp ugt ptr %.2, inttoptr (i64 -4096 to ptr)
  %spec.select.i.i116 = or i1 %.not.i.i115, %i.di
  br i1 %spec.select.i.i116, label %ext4_free_ext_path.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dj = getelementptr i8, ptr %.2, i64 8
  %i.dk = load i16, ptr %i.dj, align 8
  %i.dl = zext i16 %i.dk to i32
  br label %bb.t

bb.t:                                             ; preds = %ext4_ext_path_brelse.exit.i.i, %bb.s
  %.08.i.i = phi i32 [ 0, %bb.s ], [ %i.do, %ext4_ext_path_brelse.exit.i.i ] ; 2 uses
  %.067.i.i = phi ptr [ %.2, %bb.s ], [ %i.dp, %ext4_ext_path_brelse.exit.i.i ] ; 2 uses
  %i.dm = getelementptr i8, ptr %.067.i.i, i64 40 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8            ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i, label %ext4_ext_path_brelse.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @__brelse(ptr noundef nonnull %i.dn) #14
  br label %ext4_ext_path_brelse.exit.i.i

ext4_ext_path_brelse.exit.i.i:                    ; preds = %bb.u, %bb.t
  store ptr null, ptr %i.dm, align 8
  %i.do = add nuw nsw i32 %.08.i.i, 1
  %i.dp = getelementptr i8, ptr %.067.i.i, i64 48
  %exitcond.not.i.i = icmp eq i32 %.08.i.i, %i.dl
  br i1 %exitcond.not.i.i, label %ext4_ext_drop_refs.exit.i, label %bb.t, !llvm.loop !0

ext4_ext_drop_refs.exit.i:                        ; preds = %ext4_ext_path_brelse.exit.i.i
  tail call void @kfree(ptr noundef %.2) #14
  br label %ext4_free_ext_path.exit

ext4_free_ext_path.exit:                          ; preds = %bb.r, %ext4_ext_drop_refs.exit.i
  %i.dq = inttoptr i64 %.091 to ptr
  br label %ext4_ext_binsearch.exit.thread

ext4_ext_binsearch.exit.thread:                   ; preds = %._crit_edge, %.thread, %ext4_ext_binsearch.exit, %bb.q, %ext4_free_ext_path.exit
  %.0 = phi ptr [ %i.dq, %ext4_free_ext_path.exit ], [ %.1, %ext4_ext_binsearch.exit ], [ %.1, %bb.q ], [ inttoptr (i64 -12 to ptr), %.thread ], [ %.1, %._crit_edge ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__ext4_error_inode(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @ext4_ext_next_allocated_block(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "1494: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1494b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1494) #15, !srcloc !29
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 1644, i32 0, i64 16) #15, !srcloc !30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp eq i16 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.h = zext i16 %i.c to i64                     ; 2 uses
  %i.i = getelementptr [48 x i8], ptr %0, i64 %i.h ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %.not26.peel = icmp eq ptr %i.k, null
  br i1 %.not26.peel, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %i.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 2
  %i.o = load i16, ptr %i.n, align 2
  %i.p = zext i16 %i.o to i64
  %i.q = getelementptr [12 x i8], ptr %i.m, i64 %i.p
  %.not27.peel = icmp eq ptr %i.k, %i.q
  br i1 %.not27.peel, label %bb.g, label %.thread.sink.split

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not42 = icmp eq i16 %i.c, 0
  br i1 %.not42, label %.thread, label %.peel.next

.peel.next:                                       ; preds = %bb.g, %bb.h
  %indvars.iv.in = phi i64 [ %indvars.iv, %bb.h ], [ %i.h, %bb.g ] ; 2 uses
  %indvars.iv = add nsw i64 %indvars.iv.in, -1    ; 2 uses
  %i.r = getelementptr [48 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr i8, ptr %i.r, i64 32
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 2
  %i.x = load i16, ptr %i.w, align 2
  %i.y = zext i16 %i.x to i64
  %i.z = getelementptr [12 x i8], ptr %i.v, i64 %i.y
  %.not = icmp eq ptr %i.t, %i.z
  br i1 %.not, label %bb.h, label %.thread.sink.split

bb.h:                                             ; preds = %.peel.next
  %i.aa = icmp samesign ugt i64 %indvars.iv.in, 1
  br i1 %i.aa, label %.peel.next, label %.thread, !llvm.loop !2

.thread.sink.split:                               ; preds = %.peel.next, %bb.f
  %.lcssa.sink = phi ptr [ %i.k, %bb.f ], [ %i.t, %.peel.next ]
  %i.ab = getelementptr i8, ptr %.lcssa.sink, i64 12
  %i.ac = load i32, ptr %i.ab, align 4
  br label %.thread

.thread:                                          ; preds = %bb.h, %.thread.sink.split, %bb.g, %bb.d
  %.2 = phi i32 [ -1, %bb.d ], [ -1, %bb.g ], [ %i.ac, %.thread.sink.split ], [ -1, %bb.h ]
  ret i32 %.2
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @ext4_ext_insert_extent(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 24 uses
  %i.c = shl i32 %4, 8
  %i.d = getelementptr i8, ptr %3, i64 4          ; 4 uses
  %.val204 = load i16, ptr %i.d, align 4          ; 4 uses
  %i.e = zext i16 %.val204 to i32                 ; 2 uses
  %i.f = icmp ult i16 %.val204, -32767            ; 2 uses
  %i.g = add nsw i32 %i.e, -32768
  %i.h = select i1 %i.f, i32 %i.e, i32 %i.g       ; 6 uses
  %i.i = icmp eq i32 %i.h, 0
end_hunk_0
