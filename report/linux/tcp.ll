Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/tcp?download=true
inline.NumInlined: 912
inline.NumDeleted: 363
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@tcp_md5_hash_skb_data:bb.a

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.t = getelementptr i8, ptr %i.r, i64 12
  %.val58 = load i32, ptr %i.t, align 4           ; 2 uses
  %i.u = and i32 %.val58, 4095
  %i.v = zext nneg i32 %i.u to i64
  %.val66 = load i64, ptr %i.r, align 8           ; 2 uses
  %i.w = trunc i64 %.val66 to i1
  %i.x = inttoptr i64 %.val66 to ptr
  %spec.select.i = select i1 %i.w, ptr null, ptr %i.x
  %i.y = lshr i32 %.val58, 12
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr [64 x i8], ptr %spec.select.i, i64 %i.z ; 2 uses
  %i.ab = load i64, ptr @vmemmap_base, align 8
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ac, %i.ab
  %i.ae = shl i64 %i.ad, 6
  %i.af = load i64, ptr @page_offset_base, align 8
  %i.ag = add i64 %i.ae, %i.af
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr i8, ptr %i.ah, i64 %i.v
  %i.aj = zext i32 %.val61 to i64
  tail call void @md5_update(ptr noundef %0, ptr noundef %i.ai, i64 noundef %i.aj) #20
  %.val59.peel = load i32, ptr %i.s, align 8      ; 2 uses
  %i.ak = icmp ult i32 %.val61, %.val59.peel
  br i1 %i.ak, label %.lr.ph.peel.next, label %._crit_edge.loopexit

.lr.ph.peel.next:                                 ; preds = %.lr.ph.preheader
  %i.al = sub nuw i32 %.val59.peel, %.val61
  %i.am = tail call i32 @llvm.umin.i32(i32 %i.al, i32 4096)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.peel.next, %.lr.ph
  %.05072.pn = phi ptr [ %.05072, %.lr.ph ], [ %i.aa, %.lr.ph.peel.next ]
  %.05171 = phi i32 [ %i.av, %.lr.ph ], [ %.val61, %.lr.ph.peel.next ]
  %.05270 = phi i32 [ %i.ax, %.lr.ph ], [ %i.am, %.lr.ph.peel.next ] ; 2 uses
  %.05072 = getelementptr i8, ptr %.05072.pn, i64 64 ; 2 uses
  %i.an = load i64, ptr @vmemmap_base, align 8
  %i.ao = ptrtoint ptr %.05072 to i64
  %i.ap = sub i64 %i.ao, %i.an
  %i.aq = shl i64 %i.ap, 6
  %i.ar = load i64, ptr @page_offset_base, align 8
  %i.as = add i64 %i.aq, %i.ar
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = zext nneg i32 %.05270 to i64
  tail call void @md5_update(ptr noundef %0, ptr noundef %i.at, i64 noundef %i.au) #20
  %i.av = add i32 %.05171, %.05270                ; 3 uses
  %.val59 = load i32, ptr %i.s, align 8           ; 2 uses
  %i.aw = sub i32 %.val59, %i.av
  %i.ax = tail call i32 @llvm.umin.i32(i32 %i.aw, i32 4096)
  %i.ay = icmp ult i32 %i.av, %.val59
  br i1 %i.ay, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !170

._crit_edge.loopexit:                             ; preds = %.lr.ph, %.lr.ph.preheader
  %.pre = load i8, ptr %i.n, align 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.az = phi i8 [ %.pre, %._crit_edge.loopexit ], [ %i.q, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ba = zext i8 %i.az to i64
  %i.bb = icmp samesign ult i64 %indvars.iv.next, %i.ba
  br i1 %i.bb, label %bb.b, label %._crit_edge77, !llvm.loop !171

._crit_edge77:                                    ; preds = %._crit_edge, %bb.a
  %.val = load i32, ptr %i.e, align 8
  %.val54 = load ptr, ptr %i.f, align 8
  %i.bc = zext i32 %.val to i64
  %i.bd = getelementptr i8, ptr %.val54, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %.078 = load ptr, ptr %i.be, align 8            ; 2 uses
  %.not79 = icmp eq ptr %.078, null
  br i1 %.not79, label %._crit_edge83, label %.lr.ph82

.lr.ph82:                                         ; preds = %._crit_edge77, %.lr.ph82
  %.080 = phi ptr [ %.0, %.lr.ph82 ], [ %.078, %._crit_edge77 ] ; 2 uses
  tail call void @tcp_md5_hash_skb_data(ptr noundef %0, ptr noundef nonnull %.080, i32 noundef 0) #21
  %.0 = load ptr, ptr %.080, align 8              ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge83, label %.lr.ph82, !llvm.loop !172

._crit_edge83:                                    ; preds = %.lr.ph82, %._crit_edge77
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @md5_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @tcp_md5_hash_key(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %i.b = load volatile i8, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %1, i64 40
  %i.d = zext i8 %i.b to i64
  tail call void @md5_update(ptr noundef %0, ptr noundef %i.c, i64 noundef %i.d) #20
  ret void
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define dso_local range(i32 -22, 1) i32 @tcp_do_parse_auth_options(ptr noundef %0, ptr nofree noundef captures(none) initializes((0, 8)) %1, ptr nofree noundef captures(none) initializes((0, 8)) %2) local_unnamed_addr #12 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 12
  %i.b = load i16, ptr %i.a, align 4
  %i.c = lshr i16 %i.b, 2
  %i.d = and i16 %i.c, 60
  %i.e = zext nneg i16 %i.d to i32
  %i.f = add nsw i32 %i.e, -20                    ; 2 uses
  store ptr null, ptr %1, align 8
  store ptr null, ptr %2, align 8
  %i.g = icmp ugt i32 %i.f, 17
  br i1 %i.g, label %.lr.ph.preheader, label %.critedge.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 20
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge
  %.03048 = phi ptr [ %.1, %.critedge ], [ %i.h, %.lr.ph.preheader ] ; 3 uses
  %.03147 = phi i32 [ %.132, %.critedge ], [ %i.f, %.lr.ph.preheader ] ; 3 uses
  %i.i = getelementptr i8, ptr %.03048, i64 1     ; 2 uses
  %i.j = load i8, ptr %.03048, align 1            ; 2 uses
  switch i8 %i.j, label %bb.c [
    i8 0, label %.critedge.thread
    i8 1, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.k = add i32 %.03147, -1
  br label %.critedge, !llvm.loop !2

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr i8, ptr %.03048, i64 2     ; 2 uses
  %i.m = load i8, ptr %i.i, align 1               ; 5 uses
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %i.o = icmp ult i8 %i.m, 2
  %i.p = icmp slt i32 %.03147, %i.n
  %or.cond = or i1 %i.o, %i.p
  br i1 %or.cond, label %.critedge.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i8 %i.j, label %bb.k [
    i8 19, label %bb.e
    i8 29, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %.not37 = icmp eq i8 %i.m, 18
  br i1 %.not37, label %bb.f, label %.critedge.thread

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %1, align 8
  %.not38 = icmp eq ptr %i.q, null
  br i1 %.not38, label %bb.g, label %.critedge.thread, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %2, align 8
  %.not46 = icmp eq ptr %i.r, null
  br i1 %.not46, label %.sink.split, label %.critedge.thread, !prof !16

bb.h:                                             ; preds = %bb.d
  %i.s = icmp ult i8 %i.m, 5
  br i1 %i.s, label %.critedge.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %1, align 8
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.j, label %.critedge.thread, !prof !16

bb.j:                                             ; preds = %bb.i
  %i.u = load ptr, ptr %2, align 8
  %.not45 = icmp eq ptr %i.u, null
  br i1 %.not45, label %.sink.split, label %.critedge.thread, !prof !16

.sink.split:                                      ; preds = %bb.j, %bb.g
  %.sink = phi ptr [ %1, %bb.g ], [ %2, %bb.j ]
  store ptr %i.l, ptr %.sink, align 8
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.d
  %i.v = zext i8 %i.m to i64
  %i.w = getelementptr i8, ptr %i.l, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 -2
  %i.y = sub nuw nsw i32 %.03147, %i.n
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.b
  %.132 = phi i32 [ %i.k, %bb.b ], [ %i.y, %bb.k ] ; 2 uses
  %.1 = phi ptr [ %i.i, %bb.b ], [ %i.x, %bb.k ]
  %i.z = icmp ugt i32 %.132, 17
  br i1 %i.z, label %.lr.ph, label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge, %.lr.ph, %bb.c, %bb.e, %bb.g, %bb.h, %bb.j, %bb.f, %bb.i, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph ], [ -17, %bb.i ], [ -17, %bb.f ], [ -17, %bb.j ], [ -22, %bb.h ], [ -17, %bb.g ], [ -22, %bb.e ], [ -22, %bb.c ], [ 0, %.critedge ]
  ret i32 %.2
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 29) i32 @tcp_inbound_hash(ptr noundef %0, ptr nofree noundef readnone captures(address_is_null) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readnone captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %8 = alloca ptr, align 8                        ; 8 uses
  %9 = alloca ptr, align 8                        ; 8 uses
  %i.a = getelementptr i8, ptr %2, i64 182
  %.val52 = load i16, ptr %i.a, align 2
  %i.b = getelementptr i8, ptr %2, i64 200
  %.val53 = load ptr, ptr %i.b, align 8
  %i.c = zext i16 %.val52 to i64
  %i.d = getelementptr i8, ptr %.val53, i64 %i.c  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.e = getelementptr i8, ptr %i.d, i64 12
  %i.f = load i16, ptr %i.e, align 4
  %i.g = lshr i16 %i.f, 2
  %i.h = and i16 %i.g, 60
  %i.i = zext nneg i16 %i.h to i32
  %i.j = add nsw i32 %i.i, -20                    ; 2 uses
  store ptr null, ptr %8, align 8
  store ptr null, ptr %9, align 8
  %i.k = icmp ugt i32 %i.j, 17
  br i1 %i.k, label %.lr.ph.preheader.i.i, label %.loopexit

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.d, i64 20
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge.i.i, %.lr.ph.preheader.i.i
  %.03048.i.i = phi ptr [ %.1.i.i, %.critedge.i.i ], [ %i.l, %.lr.ph.preheader.i.i ] ; 3 uses
  %.03147.i.i = phi i32 [ %.132.i.i, %.critedge.i.i ], [ %i.j, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.m = getelementptr i8, ptr %.03048.i.i, i64 1 ; 2 uses
  %i.n = load i8, ptr %.03048.i.i, align 1        ; 2 uses
  switch i8 %i.n, label %bb.c [
    i8 0, label %.loopexit.loopexit
    i8 1, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.o = add i32 %.03147.i.i, -1
  br label %.critedge.i.i, !llvm.loop !2

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.p = getelementptr i8, ptr %.03048.i.i, i64 2 ; 2 uses
  %i.q = load i8, ptr %i.m, align 1               ; 5 uses
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %i.s = icmp ult i8 %i.q, 2
  %i.t = icmp slt i32 %.03147.i.i, %i.r
  %or.cond.i.i = or i1 %i.s, %i.t
  br i1 %or.cond.i.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i8 %i.n, label %bb.i [
    i8 19, label %bb.e
    i8 29, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %.not37.i.i = icmp eq i8 %i.q, 18
  br i1 %.not37.i.i, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %.0..0..0..0..0.19.i = load ptr, ptr %8, align 8
  %.not38.i.i = icmp eq ptr %.0..0..0..0..0.19.i, null
  %.0..0..0..0..0.16.i = load ptr, ptr %9, align 8
  %.not46.i.i = icmp eq ptr %.0..0..0..0..0.16.i, null
  %or.cond.i = select i1 %.not38.i.i, i1 %.not46.i.i, i1 false, !prof !38
  br i1 %or.cond.i, label %.sink.split.i.i, label %bb.j, !prof !38

bb.g:                                             ; preds = %bb.d
  %i.u = icmp ult i8 %i.q, 5
  br i1 %i.u, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.0..0..0..0..0.18.i = load ptr, ptr %8, align 8
  %.not.i.i = icmp eq ptr %.0..0..0..0..0.18.i, null
  %.0..0..0..0..0.15.i = load ptr, ptr %9, align 8
  %.not45.i.i = icmp eq ptr %.0..0..0..0..0.15.i, null
  %or.cond22.i = select i1 %.not.i.i, i1 %.not45.i.i, i1 false, !prof !38
  br i1 %or.cond22.i, label %.sink.split.i.i, label %bb.j, !prof !38

.sink.split.i.i:                                  ; preds = %bb.h, %bb.f
  %.sink.i.i = phi ptr [ %8, %bb.f ], [ %9, %bb.h ]
  store ptr %i.p, ptr %.sink.i.i, align 8
  br label %bb.i

bb.i:                                             ; preds = %.sink.split.i.i, %bb.d
  %i.v = zext i8 %i.q to i64
  %i.w = getelementptr i8, ptr %i.p, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 -2
  %i.y = sub nuw nsw i32 %.03147.i.i, %i.r
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.i, %bb.b
  %.132.i.i = phi i32 [ %i.o, %bb.b ], [ %i.y, %bb.i ] ; 2 uses
  %.1.i.i = phi ptr [ %i.m, %bb.b ], [ %i.x, %bb.i ]
  %i.z = icmp ugt i32 %.132.i.i, 17
  br i1 %i.z, label %.lr.ph.i.i, label %.loopexit.loopexit

bb.j:                                             ; preds = %bb.e, %bb.c, %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_tcp_hash_bad_header, i64 8), i1 false) #19
          to label %trace_tcp_hash_bad_header.exit [label %cpumask_test_cpu.exit.i.i], !srcloc !19

cpumask_test_cpu.exit.i.i:                        ; preds = %bb.j
  %i.aa = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #19, !srcloc !174
  %i.ab = zext i32 %i.aa to i64
  %i.ac = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ab) #19, !srcloc !33 ; 2 uses
  %i.ad = icmp ult i8 %i.ac, 2
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = trunc nuw i8 %i.ac to i1
  br i1 %i.ae, label %bb.k, label %trace_tcp_hash_bad_header.exit

bb.k:                                             ; preds = %cpumask_test_cpu.exit.i.i
  %i.af = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.af, ptr elementtype(i64) %i.af) #19, !srcloc !34
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !35
  %i.ag = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_tcp_hash_bad_header, i64 56), align 8 ; 2 uses
  %.not.i.i55 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i55, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call i32 @__SCT__tp_func_tcp_hash_bad_header(ptr noundef %i.ai, ptr noundef %0, ptr noundef %2) #20 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !36
  %i.ak = getelementptr i8, ptr %i.af, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ak, ptr elementtype(i64) %i.ak) #19, !srcloc !37
  br label %trace_tcp_hash_bad_header.exit

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i, %.critedge.i.i
  %.0..0..0..0..0.17.i.pre = load ptr, ptr %8, align 8
  %.0..0..0..0..0..i.pre = load ptr, ptr %9, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.0..0..0..0..i = phi ptr [ %.0..0..0..0..0..i.pre, %.loopexit.loopexit ], [ null, %bb.a ] ; 2 uses
  %.0..0..0..0.17.i = phi ptr [ %.0..0..0..0..0.17.i.pre, %.loopexit.loopexit ], [ null, %bb.a ] ; 2 uses
  %.not14.i = icmp eq ptr %.0..0..0..0..i, null
  %i.al = getelementptr i8, ptr %.0..0..0..0..i, i64 -2
  %.sink.i = select i1 %.not14.i, ptr null, ptr %i.al ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %.not44 = icmp eq ptr %1, null
  %.not45 = icmp eq ptr %.sink.i, null            ; 3 uses
  %or.cond = select i1 %.not44, i1 true, i1 %.not45
  br i1 %or.cond, label %bb.r, label %bb.n

bb.n:                                             ; preds = %.loopexit
  %i.am = getelementptr i8, ptr %.sink.i, i64 2
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = getelementptr i8, ptr %.sink.i, i64 3
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = getelementptr i8, ptr %.sink.i, i64 1
  %.val54 = load i8, ptr %i.aq, align 1
  %i.ar = add i8 %.val54, -4
  %i.as = getelementptr i8, ptr %0, i64 48
  %.val51 = load ptr, ptr %i.as, align 8
  %i.at = getelementptr i8, ptr %.val51, i64 744
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr i8, ptr %i.au, i64 1056   ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.av, ptr elementtype(i64) %i.av) #19, !srcloc !175
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_tcp_ao_handshake_failure, i64 8), i1 false) #19
          to label %trace_tcp_hash_bad_header.exit [label %cpumask_test_cpu.exit.i.i56], !srcloc !19

cpumask_test_cpu.exit.i.i56:                      ; preds = %bb.n
  %i.aw = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #19, !srcloc !176
  %i.ax = zext i32 %i.aw to i64
  %i.ay = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ax) #19, !srcloc !33 ; 2 uses
  %i.az = icmp ult i8 %i.ay, 2
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = trunc nuw i8 %i.ay to i1
  br i1 %i.ba, label %bb.o, label %trace_tcp_hash_bad_header.exit

bb.o:                                             ; preds = %cpumask_test_cpu.exit.i.i56
  %i.bb = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bb, ptr elementtype(i64) %i.bb) #19, !srcloc !34
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !35
  %i.bc = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_tcp_ao_handshake_failure, i64 56), align 8 ; 2 uses
  %.not.i.i57 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i57, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call i32 @__SCT__tp_func_tcp_ao_handshake_failure(ptr noundef %i.be, ptr noundef %0, ptr noundef %2, i8 noundef zeroext %i.an, i8 noundef zeroext %i.ap, i8 noundef zeroext %i.ar) #20 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !36
  %i.bg = getelementptr i8, ptr %i.bb, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bg, ptr elementtype(i64) %i.bg) #19, !srcloc !37
  br label %trace_tcp_hash_bad_header.exit

bb.r:                                             ; preds = %.loopexit
  %.not46 = icmp eq i32 %7, 0
  %i.bh = select i1 %.not46, i32 0, i32 %6        ; 2 uses
  %.not47 = icmp eq ptr %.0..0..0..0.17.i, null
  %i.bi = select i1 %.not47, i1 %.not45, i1 false, !prof !16
  br i1 %i.bi, label %bb.s, label %bb.u, !prof !16

bb.s:                                             ; preds = %bb.r
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @tcp_md5_needed, i1 false) #19
          to label %trace_tcp_hash_bad_header.exit [label %tcp_md5_do_lookup.exit], !srcloc !19

tcp_md5_do_lookup.exit:                           ; preds = %bb.s
  %i.bj = tail call ptr @__tcp_md5_do_lookup(ptr noundef %0, i32 noundef %i.bh, ptr noundef %3, i32 noundef %5, i1 noundef zeroext false) #20
  %.not50 = icmp eq ptr %i.bj, null
  br i1 %.not50, label %trace_tcp_hash_bad_header.exit, label %bb.t, !prof !177

bb.t:                                             ; preds = %tcp_md5_do_lookup.exit
  %i.bk = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.bk, align 8
  %i.bl = getelementptr i8, ptr %.val, i64 744
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr i8, ptr %i.bm, i64 528    ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bn, ptr elementtype(i64) %i.bn) #19, !srcloc !178
  tail call fastcc void @trace_tcp_hash_md5_required(ptr noundef %0, ptr noundef %2) #21, !srcloc !179
  br label %trace_tcp_hash_bad_header.exit

bb.u:                                             ; preds = %bb.r
  br i1 %.not45, label %bb.v, label %trace_tcp_hash_bad_header.exit

bb.v:                                             ; preds = %bb.u
  %i.bo = tail call fastcc i32 @tcp_inbound_md5_hash(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %5, i32 noundef %i.bh, ptr noundef %.0..0..0..0.17.i) #21
  br label %trace_tcp_hash_bad_header.exit

trace_tcp_hash_bad_header.exit:                   ; preds = %bb.s, %bb.u, %bb.q, %cpumask_test_cpu.exit.i.i56, %bb.n, %bb.m, %cpumask_test_cpu.exit.i.i, %bb.j, %tcp_md5_do_lookup.exit, %bb.v, %bb.t
  %.0 = phi i32 [ 0, %tcp_md5_do_lookup.exit ], [ 21, %bb.m ], [ %i.bo, %bb.v ], [ 22, %bb.t ], [ 0, %bb.u ], [ 21, %bb.j ], [ 0, %bb.s ], [ 21, %cpumask_test_cpu.exit.i.i ], [ 28, %bb.n ], [ 28, %bb.q ], [ 28, %cpumask_test_cpu.exit.i.i56 ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @trace_tcp_hash_md5_required(ptr noundef %0, ptr noundef %1) unnamed_addr #6 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_tcp_hash_md5_required, i64 8), i1 false) #19
          to label %arch_static_branch.exit [label %cpumask_test_cpu.exit.i], !srcloc !19

cpumask_test_cpu.exit.i:                          ; preds = %bb.a
  %i.a = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #19, !srcloc !180
  %i.b = zext i32 %i.a to i64
  %i.c = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.b) #19, !srcloc !33 ; 2 uses
  %i.d = icmp ult i8 %i.c, 2
  tail call void @llvm.assume(i1 %i.d)
  %i.e = trunc nuw i8 %i.c to i1
  br i1 %i.e, label %bb.b, label %arch_static_branch.exit

bb.b:                                             ; preds = %cpumask_test_cpu.exit.i
  %i.f = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.f, ptr elementtype(i64) %i.f) #19, !srcloc !34
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !35
  %i.g = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_tcp_hash_md5_required, i64 56), align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 @__SCT__tp_func_tcp_hash_md5_required(ptr noundef %i.i, ptr noundef %0, ptr noundef %1) #20 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !36
  %i.k = getelementptr i8, ptr %i.f, i64 8        ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.k, ptr elementtype(i64) %i.k) #19, !srcloc !37
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %bb.d, %cpumask_test_cpu.exit.i, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 0, 25) i32 @tcp_inbound_md5_hash(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 align 16 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !annotation !18
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @tcp_md5_needed, i1 false) #19
          to label %tcp_md5_do_lookup.exit.thread [label %tcp_md5_do_lookup.exit], !srcloc !19

tcp_md5_do_lookup.exit:                           ; preds = %bb.a
  %i.b = tail call ptr @__tcp_md5_do_lookup(ptr noundef %0, i32 noundef %4, ptr noundef %2, i32 noundef %3, i1 noundef zeroext false) #20 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %tcp_md5_do_lookup.exit.thread, label %bb.e

tcp_md5_do_lookup.exit.thread:                    ; preds = %bb.a, %tcp_md5_do_lookup.exit
  %i.c = getelementptr i8, ptr %0, i64 48
  %.val23 = load ptr, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %.val23, i64 744
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 536      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.f, ptr elementtype(i64) %i.f) #19, !srcloc !181
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_tcp_hash_md5_unexpected, i64 8), i1 false) #19
          to label %trace_tcp_hash_md5_unexpected.exit [label %cpumask_test_cpu.exit.i.i], !srcloc !19

cpumask_test_cpu.exit.i.i:                        ; preds = %tcp_md5_do_lookup.exit.thread
  %i.g = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #19, !srcloc !182
  %i.h = zext i32 %i.g to i64
  %i.i = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.h) #19, !srcloc !33 ; 2 uses
  %i.j = icmp ult i8 %i.i, 2
  tail call void @llvm.assume(i1 %i.j)
  %i.k = trunc nuw i8 %i.i to i1
  br i1 %i.k, label %bb.b, label %trace_tcp_hash_md5_unexpected.exit

bb.b:                                             ; preds = %cpumask_test_cpu.exit.i.i
  %i.l = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.l, ptr elementtype(i64) %i.l) #19, !srcloc !34
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !35
  %i.m = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_tcp_hash_md5_unexpected, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call i32 @__SCT__tp_func_tcp_hash_md5_unexpected(ptr noundef %i.o, ptr noundef %0, ptr noundef %1) #20 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !36
  %i.q = getelementptr i8, ptr %i.l, i64 8        ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.q, ptr elementtype(i64) %i.q) #19, !srcloc !37
  br label %trace_tcp_hash_md5_unexpected.exit

bb.e:                                             ; preds = %tcp_md5_do_lookup.exit
  %i.r = icmp eq i32 %3, 2
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @tcp_v4_md5_hash_skb(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef %1) #20
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %0, i64 2296
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef %1) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.w = call i64 @__crypto_memneq(ptr noundef %5, ptr noundef nonnull %i.a, i64 noundef 16) #20
  %.not.i.not = icmp eq i64 %i.w, 0
  br i1 %.not.i.not, label %trace_tcp_hash_md5_unexpected.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %.val, i64 744
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 544     ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.aa, ptr elementtype(i64) %i.aa) #19, !srcloc !183
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_tcp_hash_md5_mismatch, i64 8), i1 false) #19
          to label %trace_tcp_hash_md5_unexpected.exit [label %cpumask_test_cpu.exit.i.i24], !srcloc !19

cpumask_test_cpu.exit.i.i24:                      ; preds = %bb.i
  %i.ab = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #19, !srcloc !184
  %i.ac = zext i32 %i.ab to i64
  %i.ad = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ac) #19, !srcloc !33 ; 2 uses
  %i.ae = icmp ult i8 %i.ad, 2
  call void @llvm.assume(i1 %i.ae)
  %i.af = trunc nuw i8 %i.ad to i1
  br i1 %i.af, label %bb.j, label %trace_tcp_hash_md5_unexpected.exit

bb.j:                                             ; preds = %cpumask_test_cpu.exit.i.i24
  %i.ag = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ag, ptr elementtype(i64) %i.ag) #19, !srcloc !34
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !35
  %i.ah = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_tcp_hash_md5_mismatch, i64 56), align 8 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i25, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call i32 @__SCT__tp_func_tcp_hash_md5_mismatch(ptr noundef %i.aj, ptr noundef %0, ptr noundef %1) #20 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !36
  %i.al = getelementptr i8, ptr %i.ag, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.al, ptr elementtype(i64) %i.al) #19, !srcloc !37
  br label %trace_tcp_hash_md5_unexpected.exit

trace_tcp_hash_md5_unexpected.exit:               ; preds = %bb.l, %cpumask_test_cpu.exit.i.i24, %bb.i, %bb.d, %cpumask_test_cpu.exit.i.i, %tcp_md5_do_lookup.exit.thread, %bb.h
  %.0 = phi i32 [ 23, %bb.d ], [ 0, %bb.h ], [ 23, %tcp_md5_do_lookup.exit.thread ], [ 24, %bb.l ], [ 23, %cpumask_test_cpu.exit.i.i ], [ 24, %bb.i ], [ 24, %cpumask_test_cpu.exit.i.i24 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @tcp_done(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2320
  %i.b = load ptr, ptr %i.a, align 16             ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 18         ; 4 uses
  %i.d = load volatile i8, ptr %i.c, align 2
  %i.e = icmp eq i8 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load volatile i8, ptr %i.c, align 2
  %i.g = icmp eq i8 %i.f, 3
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.h, align 16
  %i.i = getelementptr i8, ptr %.val, i64 736
  %i.j = load ptr, ptr %i.i, align 16
  %i.k = getelementptr i8, ptr %i.j, i64 56       ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.k, ptr elementtype(i64) %i.k) #19, !srcloc !185
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = load volatile i8, ptr %i.c, align 2      ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 2272
  %i.n = load i8, ptr %i.m, align 32
  %i.o = and i8 %i.n, 4
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load volatile i8, ptr %i.c, align 2      ; 0 uses
  br label %bb.f
end_hunk_0
