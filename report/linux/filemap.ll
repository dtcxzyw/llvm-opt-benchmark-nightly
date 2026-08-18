inline.NumInlined: 1036
inline.NumDeleted: 336
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@mapping_seek_hole_data:bb.a
  br label %bb.p

bb.p:                                             ; preds = %folio_test_uptodate.exit.thread.i, %seek_folio_size.exit
  %i.bn = select i1 %i.i, i64 %.037.mux, i64 %i.be
  br label %folio_seek_hole_data.exit

folio_test_uptodate.exit.i:                       ; preds = %bb.o
  %i.bo = getelementptr i8, ptr %i.bf, i64 104    ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  %.not.i = icmp eq ptr %i.bp, null
  br i1 %.not.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %folio_test_uptodate.exit.i
  %i.bq = select i1 %i.i, i64 %i.be, i64 %.037.mux
  br label %folio_seek_hole_data.exit

bb.r:                                             ; preds = %folio_test_uptodate.exit.i
  call void @xas_pause(ptr noundef nonnull %5) #14
  call void @__rcu_read_unlock() #14
  %i.br = call i32 @__SCT__might_resched() #14    ; 0 uses
  %i.bs = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.m, i64 0, ptr nonnull elementtype(i64) %i.m) #15, !srcloc !92 ; 2 uses
  %i.bt = icmp ult i8 %i.bs, 2
  call void @llvm.assume(i1 %i.bt)
  %i.bu = trunc nuw i8 %i.bs to i1
  br i1 %i.bu, label %bb.s, label %folio_lock.exit.i

bb.s:                                             ; preds = %bb.r
  %i.bv = call fastcc i32 @folio_wait_bit_common(ptr noundef nonnull %i.m, i32 noundef 0, i32 noundef 2, i32 noundef 0) #17, !srcloc !106 ; 0 uses
  br label %folio_lock.exit.i

folio_lock.exit.i:                                ; preds = %bb.s, %bb.r
  %i.bw = getelementptr i8, ptr %i.m, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  %.not35.i = icmp eq ptr %i.bx, %0
  br i1 %.not35.i, label %bb.t, label %.loopexit.i, !prof !21

bb.t:                                             ; preds = %folio_lock.exit.i
  %i.by = load volatile i64, ptr %i.m, align 8
  %i.bz = and i64 %i.by, 64
  %.not.i.i.i50 = icmp eq i64 %i.bz, 0
  br i1 %.not.i.i.i50, label %folio_size.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ca = getelementptr i8, ptr %i.m, i64 64
  %.val.i.i.i51 = load i64, ptr %i.ca, align 16
  %i.cb = and i64 %.val.i.i.i51, 255
  br label %folio_size.exit.i

folio_size.exit.i:                                ; preds = %bb.u, %bb.t
  %.0.i.i.i = phi i64 [ %i.cb, %bb.u ], [ 0, %bb.t ]
  %i.cc = shl i64 4096, %.0.i.i.i
  %i.cd = add i64 %i.cc, -1
  %i.ce = sub nsw i64 0, %i.bk                    ; 2 uses
  %i.cf = and i64 %i.cd, %i.ce
  %i.cg = and i64 %i.cf, %.037.mux
  %i.ch = getelementptr i8, ptr %i.m, i64 64
  br label %bb.v

bb.v:                                             ; preds = %folio_size.exit39.i, %folio_size.exit.i
  %.033.i = phi i64 [ %.037.mux, %folio_size.exit.i ], [ %i.cm, %folio_size.exit39.i ] ; 2 uses
  %.032.i = phi i64 [ %i.cg, %folio_size.exit.i ], [ %i.cn, %folio_size.exit39.i ] ; 2 uses
  %i.ci = load ptr, ptr %i.bo, align 8
  %i.cj = call zeroext i1 %i.ci(ptr noundef nonnull %i.m, i64 noundef %.032.i, i64 noundef %i.bk) #14, !inline_history !141
  %i.ck = xor i1 %i.i, %i.cj
  br i1 %i.ck, label %bb.w, label %.loopexit.i

bb.w:                                             ; preds = %bb.v
  %i.cl = add i64 %.033.i, %i.bk
  %i.cm = and i64 %i.cl, %i.ce                    ; 2 uses
  %i.cn = add i64 %.032.i, %i.bk                  ; 2 uses
  %i.co = load volatile i64, ptr %i.m, align 8
  %i.cp = and i64 %i.co, 64
  %.not.i.i36.i = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i36.i, label %folio_size.exit39.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.val.i.i37.i = load i64, ptr %i.ch, align 16
  %i.cq = and i64 %.val.i.i37.i, 255
  br label %folio_size.exit39.i

folio_size.exit39.i:                              ; preds = %bb.x, %bb.w
  %.0.i.i38.i = phi i64 [ %i.cq, %bb.x ], [ 0, %bb.w ]
  %i.cr = shl i64 4096, %.0.i.i38.i
  %i.cs = icmp ult i64 %i.cn, %i.cr
  br i1 %i.cs, label %bb.v, label %.loopexit.i, !llvm.loop !142

.loopexit.i:                                      ; preds = %folio_size.exit39.i, %bb.v, %folio_lock.exit.i
  %.1.i = phi i64 [ %.037.mux, %folio_lock.exit.i ], [ %.033.i, %bb.v ], [ %i.cm, %folio_size.exit39.i ]
  %i.ct = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xorb $2,$1", "={@ccs},=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.m, i8 1, ptr nonnull elementtype(i8) %i.m) #15, !srcloc !101 ; 2 uses
  %i.cu = icmp ult i8 %i.ct, 2
  call void @llvm.assume(i1 %i.cu)
  %i.cv = trunc nuw i8 %i.ct to i1
  br i1 %i.cv, label %bb.y, label %folio_unlock.exit.i

bb.y:                                             ; preds = %.loopexit.i
  %i.cw = mul i64 %magicptr.i, 7046029254386353131
  %i.cx = lshr i64 %i.cw, 56
  %i.cy = getelementptr [24 x i8], ptr @folio_wait_table, i64 %i.cx ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store ptr %i.m, ptr %4, align 8
  store i32 0, ptr %i.k, align 8
  store i32 0, ptr %i.l, align 4
  %i.cz = call i64 @_raw_spin_lock_irqsave(ptr noundef %i.cy) #14
  call void @__wake_up_locked_key(ptr noundef %i.cy, i32 noundef 3, ptr noundef nonnull %4) #14
  %i.da = getelementptr i8, ptr %i.cy, i64 8      ; 2 uses
  %i.db = load volatile ptr, ptr %i.da, align 8
  %i.dc = icmp ne ptr %i.db, %i.da
  %i.dd = load i32, ptr %i.l, align 4
  %i.de = icmp ne i32 %i.dd, 0
  %or.cond.i.i.i = select i1 %i.dc, i1 %i.de, i1 false
  br i1 %or.cond.i.i.i, label %folio_wake_bit.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.m, i32 -129, ptr nonnull elementtype(i8) %i.m) #15, !srcloc !63
  br label %folio_wake_bit.exit.i.i

folio_wake_bit.exit.i.i:                          ; preds = %bb.z, %bb.y
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.cy, i64 noundef %i.cz) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %folio_unlock.exit.i

folio_unlock.exit.i:                              ; preds = %folio_wake_bit.exit.i.i, %.loopexit.i
  call void @__rcu_read_lock() #14
  br label %folio_seek_hole_data.exit

folio_seek_hole_data.exit:                        ; preds = %bb.p, %bb.q, %folio_unlock.exit.i
  %.0.i49 = phi i64 [ %i.bn, %bb.p ], [ %.1.i, %folio_unlock.exit.i ], [ %i.bq, %bb.q ] ; 5 uses
  %i.df = icmp slt i64 %.0.i49, %i.be
  br i1 %i.df, label %.sink.split, label %bb.aa

bb.aa:                                            ; preds = %folio_seek_hole_data.exit
  %.not47 = icmp slt i64 %.0.i49, %2
  br i1 %.not47, label %bb.ab, label %folio_put.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.dg = icmp ugt i64 %.0.i, 4096
  br i1 %i.dg, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dh = ashr exact i64 %i.be, 12
  store i64 %i.dh, ptr %i.b, align 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.e, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  br i1 %i.av, label %folio_put.exit.backedge, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.di = getelementptr i8, ptr %i.m, i64 52      ; 2 uses
  %i.dj = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.di, ptr elementtype(i32) %i.di) #15, !srcloc !67 ; 2 uses
  %i.dk = icmp ult i8 %i.dj, 2
  call void @llvm.assume(i1 %i.dk)
  %.not.i52 = icmp eq i8 %i.dj, 0
  br i1 %.not.i52, label %folio_put.exit.backedge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @__folio_put(ptr noundef nonnull %i.m) #14
  br label %folio_put.exit.backedge

folio_put.exit.backedge:                          ; preds = %bb.af, %bb.ae, %bb.ad
  br label %folio_put.exit

folio_put.exit.thread:                            ; preds = %bb.aa
  %spec.select = select i1 %i.i, i64 -6, i64 %.0.i49
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %folio_seek_hole_data.exit, %folio_put.exit.thread
  %.461 = phi i64 [ %spec.select, %folio_put.exit.thread ], [ %.0.i49, %folio_seek_hole_data.exit ], [ %.037, %bb.j ] ; 3 uses
  call void @__rcu_read_unlock() #14
  %i.dl = trunc i64 %magicptr.i to i1
  br i1 %i.dl, label %folio_put.exit54, label %bb.ag

bb.ag:                                            ; preds = %.sink.split
  %i.dm = getelementptr i8, ptr %i.m, i64 52      ; 2 uses
  %i.dn = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dm, ptr elementtype(i32) %i.dm) #15, !srcloc !67 ; 2 uses
  %i.do = icmp ult i8 %i.dn, 2
  call void @llvm.assume(i1 %i.do)
  %.not.i53 = icmp eq i8 %i.dn, 0
  br i1 %.not.i53, label %folio_put.exit54, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @__folio_put(ptr noundef nonnull %i.m) #14
  br label %folio_put.exit54

folio_put.exit54:                                 ; preds = %folio_put.exit.thread.thread99, %bb.ah, %bb.ag, %.sink.split
  %.462 = phi i64 [ %.461, %bb.ah ], [ %.461, %bb.ag ], [ %.461, %.sink.split ], [ %spec.select102, %folio_put.exit.thread.thread99 ]
  %..4 = call i64 @llvm.smin.i64(i64 %.462, i64 %2)
  br label %bb.ai

bb.ai:                                            ; preds = %folio_put.exit54, %bb.a
  %.036 = phi i64 [ %..4, %folio_put.exit54 ], [ -6, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret i64 %.036
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 1, 1032) i32 @filemap_fault(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.wait_page_key, align 8      ; 6 uses
  %2 = alloca %struct.readahead_control, align 8  ; 8 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 88
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 12 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.h = load i64, ptr %i.g, align 8              ; 6 uses
  %i.i = getelementptr i8, ptr %i.f, i64 80       ; 2 uses
  %i.j = load volatile i64, ptr %i.i, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !124
  %i.k = add i64 %i.j, 4095
  %i.l = lshr i64 %i.k, 12
  %.not = icmp ult i64 %i.h, %i.l
  br i1 %.not, label %bb.b, label %folio_put.exit92, !prof !21

bb.b:                                             ; preds = %bb.a
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mm_filemap_fault, i64 8), i1 false) #15
          to label %trace_mm_filemap_fault.exit [label %arch_test_bit.exit.i.i], !srcloc !32

arch_test_bit.exit.i.i:                           ; preds = %bb.b
  %i.m = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #15, !srcloc !143
  %i.n = zext i32 %i.m to i64
  %i.o = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 -2147483648, 4294967296) %i.n) #15, !srcloc !34 ; 2 uses
  %i.p = icmp ult i8 %i.o, 2
  tail call void @llvm.assume(i1 %i.p)
  %i.q = trunc nuw i8 %i.o to i1
  br i1 %i.q, label %bb.c, label %trace_mm_filemap_fault.exit

bb.c:                                             ; preds = %arch_test_bit.exit.i.i
  %i.r = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.r, ptr elementtype(i64) %i.r) #15, !srcloc !35
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !36
  %i.s = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_mm_filemap_fault, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call i32 @__SCT__tp_func_mm_filemap_fault(ptr noundef %i.u, ptr noundef %i.e, i64 noundef range(i64 0, 4503599627370495) %i.h) #14 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !37
  %i.w = getelementptr i8, ptr %i.r, i64 8        ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.w, ptr elementtype(i64) %i.w) #15, !srcloc !38
  br label %trace_mm_filemap_fault.exit

trace_mm_filemap_fault.exit:                      ; preds = %bb.b, %arch_test_bit.exit.i.i, %bb.e
  %i.x = tail call ptr @__filemap_get_folio_mpol(ptr noundef %i.e, i64 noundef %i.h, i32 noundef 0, i32 noundef 0, ptr noundef null) #17 ; 7 uses
  %i.y = icmp ugt ptr %i.x, inttoptr (i64 -4096 to ptr)
  br i1 %i.y, label %bb.o, label %bb.f, !prof !22

bb.f:                                             ; preds = %trace_mm_filemap_fault.exit
  %i.z = getelementptr i8, ptr %0, i64 40
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = and i32 %i.aa, 32
  %.not76 = icmp eq i32 %i.ab, 0
  br i1 %.not76, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %0, align 8               ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8            ; 5 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 136
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store ptr %i.ae, ptr %2, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = getelementptr i8, ptr %i.ae, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  store ptr %i.ai, ptr %i.ag, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.af, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.al = load i64, ptr %i.g, align 8
  store i64 %i.al, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.an = getelementptr i8, ptr %i.ac, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  %i.ao = load i64, ptr %i.an, align 32           ; 2 uses
  %i.ap = and i64 %i.ao, 65536
  %.not.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i, label %bb.h, label %do_async_mmap_readahead.exit

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr i8, ptr %i.ae, i64 152    ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8
  %.not24.i = icmp eq i32 %i.ar, 0
  br i1 %.not24.i, label %do_async_mmap_readahead.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = load volatile i64, ptr %i.x, align 8
  %i.at = and i64 %i.as, 1
  %i.au = and i64 %i.ao, 32772
  %i.av = or disjoint i64 %i.at, %i.au
  %or.cond.i = icmp eq i64 %i.av, 0
  br i1 %or.cond.i, label %bb.j, label %bb.l, !prof !144

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr i8, ptr %i.ae, i64 158    ; 2 uses
  %i.ax = load volatile i16, ptr %i.aw, align 2   ; 2 uses
  %.not26.i = icmp eq i16 %i.ax, 0
  br i1 %.not26.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = add i16 %i.ax, -1
  store volatile i16 %i.ay, ptr %i.aw, align 2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.az = load volatile i64, ptr %i.x, align 8
  %i.ba = and i64 %i.az, 65536
  %.not27.i = icmp eq i64 %i.ba, 0
  br i1 %.not27.i, label %do_async_mmap_readahead.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = tail call fastcc ptr @maybe_unlock_mmap_for_io(ptr noundef readonly %0, ptr noundef null) #17, !srcloc !145
  %i.bc = load i32, ptr %i.aq, align 8
  %i.bd = zext i32 %i.bc to i64
  call void @page_cache_async_ra(ptr noundef nonnull %2, ptr noundef %i.x, i64 noundef %i.bd) #14
  br label %do_async_mmap_readahead.exit

do_async_mmap_readahead.exit:                     ; preds = %bb.g, %bb.h, %bb.l, %bb.m
  %.0.i = phi ptr [ null, %bb.g ], [ null, %bb.h ], [ %i.bb, %bb.m ], [ null, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.n

bb.n:                                             ; preds = %do_async_mmap_readahead.exit, %bb.f
  %.0 = phi ptr [ %.0.i, %do_async_mmap_readahead.exit ], [ null, %bb.f ] ; 2 uses
  %i.be = load volatile i64, ptr %i.x, align 8
  %i.bf = and i64 %i.be, 8
  %.not111 = icmp eq i64 %i.bf, 0
  br i1 %.not111, label %folio_test_uptodate.exit, label %folio_test_uptodate.exit.thread

folio_test_uptodate.exit.thread:                  ; preds = %bb.n
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !90
  br label %bb.u

folio_test_uptodate.exit:                         ; preds = %bb.n
  %i.bg = getelementptr i8, ptr %i.e, i64 24
  call void @down_read(ptr noundef %i.bg) #14
  br label %bb.u

bb.o:                                             ; preds = %trace_mm_filemap_fault.exit
  %i.bh = tail call fastcc i32 @filemap_fault_recheck_pte_none(ptr noundef %0) #17, !srcloc !146 ; 2 uses
  %.not75 = icmp eq i32 %i.bh, 0
  br i1 %.not75, label %bb.p, label %folio_put.exit92, !prof !21

bb.p:                                             ; preds = %bb.o
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @vm_event_states, i64 168), ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @vm_event_states, i64 168)) #15, !srcloc !147
  %i.bi = tail call fastcc ptr @do_sync_mmap_readahead(ptr noundef %0) #17, !srcloc !148
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %bb.z, %bb.y, %bb.w, %bb.v, %folio_put.exit95, %folio_put.exit95, %bb.p
  %.1104 = phi ptr [ %i.bi, %bb.p ], [ null, %folio_put.exit95 ], [ null, %folio_put.exit95 ], [ %.4107, %bb.w ], [ %.4107, %bb.v ], [ %.4107, %bb.y ], [ %.4107, %bb.z ] ; 3 uses
  %.065 = phi i32 [ 4, %bb.p ], [ %.166, %folio_put.exit95 ], [ %.166, %folio_put.exit95 ], [ %.166, %bb.w ], [ %.166, %bb.v ], [ %.166, %bb.y ], [ %.166, %bb.z ] ; 2 uses
  %.1 = phi i8 [ 0, %bb.p ], [ 1, %folio_put.exit95 ], [ 1, %folio_put.exit95 ], [ %.3, %bb.w ], [ %.3, %bb.v ], [ 0, %bb.y ], [ 0, %bb.z ]
  %i.bj = trunc nuw i8 %.1 to i1
  br i1 %i.bj, label %bb.r, label %bb.q

bb.q:                                             ; preds = %folio_put.exit
  %i.bk = getelementptr i8, ptr %i.e, i64 24
  call void @down_read(ptr noundef %i.bk) #14
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %folio_put.exit
  %i.bl = getelementptr i8, ptr %0, i64 8
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = call ptr @__filemap_get_folio_mpol(ptr noundef %i.e, i64 noundef %i.h, i32 noundef 68, i32 noundef %i.bm, ptr noundef null) #17 ; 3 uses
  %i.bo = icmp ugt ptr %i.bn, inttoptr (i64 -4096 to ptr)
  br i1 %i.bo, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %.not82 = icmp eq ptr %.1104, null
  br i1 %.not82, label %bb.t, label %folio_unlock.exit

bb.t:                                             ; preds = %bb.s
  %i.bp = getelementptr i8, ptr %i.e, i64 24
  call void @up_read(ptr noundef %i.bp) #14
  br label %folio_put.exit92

bb.u:                                             ; preds = %folio_test_uptodate.exit.thread, %folio_test_uptodate.exit, %bb.r
  %.2105 = phi ptr [ %.1104, %bb.r ], [ %.0, %folio_test_uptodate.exit.thread ], [ %.0, %folio_test_uptodate.exit ] ; 3 uses
  %.068 = phi ptr [ %i.bn, %bb.r ], [ %i.x, %folio_test_uptodate.exit.thread ], [ %i.x, %folio_test_uptodate.exit ] ; 37 uses
  %.166 = phi i32 [ %.065, %bb.r ], [ 0, %folio_test_uptodate.exit.thread ], [ 0, %folio_test_uptodate.exit ] ; 17 uses
  %.3 = phi i8 [ 1, %bb.r ], [ 0, %folio_test_uptodate.exit.thread ], [ 1, %folio_test_uptodate.exit ] ; 13 uses
  %3 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %.068, i64 0, ptr elementtype(i64) %.068) #15, !srcloc !92 ; 2 uses
  %4 = icmp ult i8 %3, 2
  call void @llvm.assume(i1 %4)
  %5 = trunc nuw i8 %3 to i1
  br i1 %5, label %6, label %lock_folio_maybe_drop_mmap.exit

6:                                                ; preds = %bb.u
  %7 = getelementptr i8, ptr %0, i64 40           ; 3 uses
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 8
  %.not.i85 = icmp eq i32 %9, 0
  br i1 %.not.i85, label %10, label %folio_unlock.exit

10:                                               ; preds = %6
  %11 = call fastcc ptr @maybe_unlock_mmap_for_io(ptr noundef readonly %0, ptr noundef %.2105) #17, !srcloc !149 ; 4 uses
  %12 = load i32, ptr %7, align 8
  %13 = and i32 %12, 16
  %.not10.i = icmp eq i32 %13, 0
  br i1 %.not10.i, label %42, label %14

14:                                               ; preds = %10
  %15 = call fastcc range(i32 -4, 1) i32 @folio_wait_bit_common(ptr noundef %.068, i32 noundef 0, i32 noundef 258, i32 noundef 0) #17, !srcloc !107
  %.not11.i = icmp eq i32 %15, 0
  br i1 %.not11.i, label %lock_folio_maybe_drop_mmap.exit, label %16

16:                                               ; preds = %14
  %17 = icmp eq ptr %11, null
  br i1 %17, label %18, label %folio_unlock.exit

18:                                               ; preds = %16
  %19 = load i32, ptr %7, align 8
  %20 = and i32 %19, 4096
  %.not.i.i86 = icmp eq i32 %20, 0
  %21 = load ptr, ptr %0, align 8                 ; 2 uses
  %22 = getelementptr i8, ptr %21, i64 16
  %23 = load ptr, ptr %22, align 16               ; 3 uses
  br i1 %.not.i.i86, label %39, label %24

24:                                               ; preds = %18
  %25 = getelementptr i8, ptr %21, i64 128        ; 3 uses
  %26 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %25, i32 -1, ptr elementtype(i32) %25) #15, !srcloc !108 ; 4 uses
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %__vma_refcount_put_return.exit.i.i.i.i, label %28

28:                                               ; preds = %24
  %29 = icmp slt i32 %26, 1
  br i1 %29, label %.thread.i.i.i.i, label %30, !prof !22

.thread.i.i.i.i:                                  ; preds = %28
  call void @refcount_warn_saturate(ptr noundef %25, i32 noundef 3) #14
  br label %folio_unlock.exit

__vma_refcount_put_return.exit.i.i.i.i:           ; preds = %24
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !109
  br label %folio_unlock.exit

30:                                               ; preds = %28
  %31 = add nuw i32 %26, 2147483647
  %32 = and i32 %31, 1073741824
  %33 = icmp ne i32 %32, 0
  %34 = icmp samesign ult i32 %26, 1073741827
  %35 = and i1 %34, %33
  br i1 %35, label %36, label %folio_unlock.exit

36:                                               ; preds = %30
  %37 = getelementptr i8, ptr %23, i64 512
  %38 = call i32 @rcuwait_wake_up(ptr noundef %37) #14 ; 0 uses
  br label %folio_unlock.exit

39:                                               ; preds = %18
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_released, i64 8), i1 false) #15
          to label %mmap_read_unlock.exit.i.i [label %40], !srcloc !32

40:                                               ; preds = %39
  call void @__mmap_lock_do_trace_released(ptr noundef %23, i1 noundef zeroext false) #14
  br label %mmap_read_unlock.exit.i.i

mmap_read_unlock.exit.i.i:                        ; preds = %40, %39
  %41 = getelementptr i8, ptr %23, i64 464
  call void @up_read(ptr noundef %41) #14
  br label %folio_unlock.exit

42:                                               ; preds = %10
  %43 = call fastcc i32 @folio_wait_bit_common(ptr noundef %.068, i32 noundef 0, i32 noundef 2, i32 noundef 0) #17, !srcloc !106 ; 0 uses
  br label %lock_folio_maybe_drop_mmap.exit

lock_folio_maybe_drop_mmap.exit:                  ; preds = %42, %14, %bb.u
  %.4107 = phi ptr [ %11, %42 ], [ %11, %14 ], [ %.2105, %bb.u ] ; 8 uses
  %i.bq = getelementptr i8, ptr %.068, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  %.not78 = icmp eq ptr %i.br, %i.e
  br i1 %.not78, label %bb.x, label %bb.v, !prof !21

bb.v:                                             ; preds = %lock_folio_maybe_drop_mmap.exit
  call void @folio_unlock(ptr noundef %.068) #17
  %i.bs = getelementptr i8, ptr %.068, i64 52     ; 2 uses
  %i.bt = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bs, ptr elementtype(i32) %i.bs) #15, !srcloc !67 ; 2 uses
  %i.bu = icmp ult i8 %i.bt, 2
  call void @llvm.assume(i1 %i.bu)
  %.not.i87 = icmp eq i8 %i.bt, 0
  br i1 %.not.i87, label %folio_put.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @__folio_put(ptr noundef %.068) #14
  br label %folio_put.exit

bb.x:                                             ; preds = %lock_folio_maybe_drop_mmap.exit
  %i.bv = load volatile i64, ptr %.068, align 8
  %i.bw = and i64 %i.bv, 8
  %.not112 = icmp eq i64 %i.bw, 0
  br i1 %.not112, label %folio_test_uptodate.exit88, label %bb.aa

folio_test_uptodate.exit88:                       ; preds = %bb.x
  %i.bx = trunc nuw i8 %.3 to i1
  br i1 %i.bx, label %bb.al, label %bb.y

bb.y:                                             ; preds = %folio_test_uptodate.exit88
  call void @folio_unlock(ptr noundef %.068) #17
  %i.by = getelementptr i8, ptr %.068, i64 52     ; 2 uses
  %i.bz = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.by, ptr elementtype(i32) %i.by) #15, !srcloc !67 ; 2 uses
  %i.ca = icmp ult i8 %i.bz, 2
  call void @llvm.assume(i1 %i.ca)
  %.not.i89 = icmp eq i8 %i.bz, 0
  br i1 %.not.i89, label %folio_put.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @__folio_put(ptr noundef %.068) #14
  br label %folio_put.exit

bb.aa:                                            ; preds = %bb.x
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !90
  %.not79 = icmp eq ptr %.4107, null
  br i1 %.not79, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cb = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xorb $2,$1", "={@ccs},=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %.068, i8 1, ptr elementtype(i8) %.068) #15, !srcloc !101 ; 2 uses
  %i.cc = icmp ult i8 %i.cb, 2
  call void @llvm.assume(i1 %i.cc)
  %i.cd = trunc nuw i8 %i.cb to i1
  br i1 %i.cd, label %bb.ac, label %folio_unlock.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ce = ptrtoint ptr %.068 to i64
  %i.cf = mul i64 %i.ce, 7046029254386353131
  %i.cg = lshr i64 %i.cf, 56
  %i.ch = getelementptr [24 x i8], ptr @folio_wait_table, i64 %i.cg ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  store ptr %.068, ptr %1, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  store i32 0, ptr %i.cj, align 4
  %i.ck = call i64 @_raw_spin_lock_irqsave(ptr noundef %i.ch) #14
  call void @__wake_up_locked_key(ptr noundef %i.ch, i32 noundef 3, ptr noundef nonnull %1) #14
  %i.cl = getelementptr i8, ptr %i.ch, i64 8      ; 2 uses
  %i.cm = load volatile ptr, ptr %i.cl, align 8
  %i.cn = icmp ne ptr %i.cm, %i.cl
  %i.co = load i32, ptr %i.cj, align 4
  %i.cp = icmp ne i32 %i.co, 0
  %or.cond.i.i = select i1 %i.cn, i1 %i.cp, i1 false
  br i1 %or.cond.i.i, label %folio_wake_bit.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %.068, i32 -129, ptr elementtype(i8) %.068) #15, !srcloc !63
  br label %folio_wake_bit.exit.i

folio_wake_bit.exit.i:                            ; preds = %bb.ad, %bb.ac
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.ch, i64 noundef %i.ck) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %folio_unlock.exit

bb.ae:                                            ; preds = %bb.aa
  %i.cq = trunc nuw i8 %.3 to i1
  br i1 %i.cq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cr = getelementptr i8, ptr %i.e, i64 24
  call void @up_read(ptr noundef %i.cr) #14
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cs = load volatile i64, ptr %i.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !124
  %i.ct = add i64 %i.cs, 4095
  %i.cu = lshr i64 %i.ct, 12
  %.not80 = icmp ult i64 %i.h, %i.cu
  br i1 %.not80, label %bb.aj, label %bb.ah, !prof !21

bb.ah:                                            ; preds = %bb.ag
  call void @folio_unlock(ptr noundef %.068) #17
  %i.cv = getelementptr i8, ptr %.068, i64 52     ; 2 uses
  %i.cw = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cv, ptr elementtype(i32) %i.cv) #15, !srcloc !67 ; 2 uses
  %i.cx = icmp ult i8 %i.cw, 2
  call void @llvm.assume(i1 %i.cx)
  %.not.i91.a = icmp eq i8 %i.cw, 0
  br i1 %.not.i91.a, label %folio_put.exit92, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @__folio_put(ptr noundef %.068) #14
  br label %folio_put.exit92

bb.aj:                                            ; preds = %bb.ag
  %i.cy = load volatile i64, ptr %.068, align 8
  %i.cz = and i64 %i.cy, 64
  %.not.i.i93 = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i93, label %folio_file_page.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.da = getelementptr i8, ptr %.068, i64 64
  %.val.i.i = load i64, ptr %i.da, align 16
  %i.db = and i64 %.val.i.i, 255
  %notmask.i = shl nsw i64 -1, %i.db
  %i.dc = xor i64 %notmask.i, -1
  %i.dd = and i64 %i.h, %i.dc
  br label %folio_file_page.exit

folio_file_page.exit:                             ; preds = %bb.aj, %bb.ak
  %.0.i.i = phi i64 [ %i.dd, %bb.ak ], [ 0, %bb.aj ]
  %i.de = getelementptr [64 x i8], ptr %.068, i64 %.0.i.i
  %i.df = getelementptr i8, ptr %0, i64 80
  store ptr %i.de, ptr %i.df, align 8
  %i.dg = or i32 %.166, 512
  br label %folio_put.exit92

bb.al:                                            ; preds = %folio_test_uptodate.exit88
  %i.dh = call fastcc ptr @maybe_unlock_mmap_for_io(ptr noundef %0, ptr noundef %.4107) #17, !srcloc !150 ; 2 uses
  %i.di = getelementptr i8, ptr %i.e, i64 96
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = call fastcc i32 @filemap_read_folio(ptr noundef %i.c, ptr noundef %i.dk, ptr noundef %.068) #17, !srcloc !151
  %.not81 = icmp eq ptr %i.dh, null
  br i1 %.not81, label %bb.am, label %folio_unlock.exit

bb.am:                                            ; preds = %bb.al
  %i.dm = getelementptr i8, ptr %.068, i64 52     ; 2 uses
  %i.dn = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dm, ptr elementtype(i32) %i.dm) #15, !srcloc !67 ; 2 uses
  %i.do = icmp ult i8 %i.dn, 2
  call void @llvm.assume(i1 %i.do)
  %.not.i94 = icmp eq i8 %i.dn, 0
  br i1 %.not.i94, label %folio_put.exit95, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @__folio_put(ptr noundef %.068) #14
  br label %folio_put.exit95

folio_put.exit95:                                 ; preds = %bb.am, %bb.an
  switch i32 %i.dl, label %bb.ao [
    i32 524289, label %folio_put.exit
    i32 0, label %folio_put.exit
  ]

bb.ao:                                            ; preds = %folio_put.exit95
  %i.dp = getelementptr i8, ptr %i.e, i64 24
  call void @up_read(ptr noundef %i.dp) #14
  br label %folio_put.exit92

folio_unlock.exit:                                ; preds = %mmap_read_unlock.exit.i.i, %36, %30, %__vma_refcount_put_return.exit.i.i.i.i, %.thread.i.i.i.i, %6, %16, %folio_wake_bit.exit.i, %bb.ab, %bb.al, %bb.s
  %.3106 = phi ptr [ %.1104, %bb.s ], [ %.4107, %folio_wake_bit.exit.i ], [ %i.dh, %bb.al ], [ %.4107, %bb.ab ], [ %.2105, %6 ], [ %11, %16 ], [ null, %30 ], [ null, %36 ], [ null, %.thread.i.i.i.i ], [ null, %__vma_refcount_put_return.exit.i.i.i.i ], [ null, %mmap_read_unlock.exit.i.i ] ; 2 uses
  %.169 = phi ptr [ %i.bn, %bb.s ], [ %.068, %folio_wake_bit.exit.i ], [ %.068, %bb.al ], [ %.068, %bb.ab ], [ %.068, %6 ], [ %.068, %16 ], [ %.068, %30 ], [ %.068, %36 ], [ %.068, %.thread.i.i.i.i ], [ %.068, %__vma_refcount_put_return.exit.i.i.i.i ], [ %.068, %mmap_read_unlock.exit.i.i ] ; 3 uses
  %.267 = phi i32 [ %.065, %bb.s ], [ %.166, %folio_wake_bit.exit.i ], [ %.166, %bb.al ], [ %.166, %bb.ab ], [ %.166, %6 ], [ %.166, %16 ], [ %.166, %30 ], [ %.166, %36 ], [ %.166, %.thread.i.i.i.i ], [ %.166, %__vma_refcount_put_return.exit.i.i.i.i ], [ %.166, %mmap_read_unlock.exit.i.i ]
  %.4 = phi i8 [ 1, %bb.s ], [ %.3, %folio_wake_bit.exit.i ], [ 1, %bb.al ], [ %.3, %bb.ab ], [ %.3, %6 ], [ %.3, %16 ], [ %.3, %30 ], [ %.3, %36 ], [ %.3, %.thread.i.i.i.i ], [ %.3, %__vma_refcount_put_return.exit.i.i.i.i ], [ %.3, %mmap_read_unlock.exit.i.i ]
  %i.dq = icmp ugt ptr %.169, inttoptr (i64 -4096 to ptr)
  br i1 %i.dq, label %folio_put.exit97, label %bb.ap

bb.ap:                                            ; preds = %folio_unlock.exit
  %i.dr = getelementptr i8, ptr %.169, i64 52     ; 2 uses
  %i.ds = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dr, ptr elementtype(i32) %i.dr) #15, !srcloc !67 ; 2 uses
  %i.dt = icmp ult i8 %i.ds, 2
  call void @llvm.assume(i1 %i.dt)
  %.not.i96 = icmp eq i8 %i.ds, 0
  br i1 %.not.i96, label %folio_put.exit97, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @__folio_put(ptr noundef %.169) #14
  br label %folio_put.exit97

folio_put.exit97:                                 ; preds = %bb.aq, %bb.ap, %folio_unlock.exit
  %i.du = trunc nuw i8 %.4 to i1
  br i1 %i.du, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %folio_put.exit97
  %i.dv = getelementptr i8, ptr %i.e, i64 24
  call void @up_read(ptr noundef %i.dv) #14
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %folio_put.exit97
  %.not83 = icmp eq ptr %.3106, null
  br i1 %.not83, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @fput(ptr noundef nonnull %.3106) #14
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.dw = or i32 %.267, 1024
  br label %folio_put.exit92

folio_put.exit92:                                 ; preds = %bb.ai, %bb.ah, %bb.o, %bb.a, %bb.au, %bb.ao, %folio_file_page.exit, %bb.t
  %.070 = phi i32 [ 2, %bb.a ], [ %i.dw, %bb.au ], [ 1, %bb.t ], [ 2, %bb.ao ], [ %i.bh, %bb.o ], [ %i.dg, %folio_file_page.exit ], [ 2, %bb.ah ], [ 2, %bb.ai ]
  ret i32 %.070
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 0, 257) i32 @filemap_fault_recheck_pte_none(ptr noundef %0) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %.sroa.0.i = alloca i64, align 8                ; 3 uses
  %.sroa.0.i.i = alloca i64, align 8              ; 3 uses
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 32
  %i.c = load i64, ptr %i.b, align 32
  %i.d = and i64 %i.c, 8192
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 40
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 2048
  %.not16 = icmp eq i32 %i.g, 0
  br i1 %.not16, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.a, i64 16
  %i.i = load ptr, ptr %i.h, align 16
  %i.j = getelementptr i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %0, i64 96         ; 3 uses
  %i.o = tail call ptr @pte_offset_map_ro_nolock(ptr noundef %i.i, ptr noundef %i.k, i64 noundef %i.m, ptr noundef %i.n) #14 ; 3 uses
  %.not17 = icmp eq ptr %i.o, null
  br i1 %.not17, label %bb.i, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %.sroa.0.0.copyload.i.i = load volatile i64, ptr %i.o, align 8 ; 2 uses
  store volatile i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.0.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.p = and i64 %.sroa.0.0.copyload.i.i, -97
  %.not.i.not = icmp eq i64 %i.p, 0
  br i1 %.not.i.not, label %bb.e, label %bb.h, !prof !21

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.n, align 8
  tail call void @_raw_spin_lock(ptr noundef %i.q) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %.sroa.0.0.copyload.i = load volatile i64, ptr %i.o, align 8 ; 2 uses
  store volatile i64 %.sroa.0.0.copyload.i, ptr %.sroa.0.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.r = and i64 %.sroa.0.0.copyload.i, -97
  %.not.i20.not = icmp eq i64 %i.r, 0
  br i1 %.not.i20.not, label %bb.g, label %bb.f, !prof !21

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.015 = phi i32 [ 256, %bb.f ], [ 0, %bb.e ]
  %i.s = load ptr, ptr %i.n, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i.s) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %.1 = phi i32 [ %.015, %bb.g ], [ 256, %bb.d ]
  tail call void @__rcu_read_unlock() #14
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.h
  %.0 = phi i32 [ 0, %bb.b ], [ %.1, %bb.h ], [ 0, %bb.a ], [ 256, %bb.c ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @do_sync_mmap_readahead(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.readahead_control, align 8  ; 9 uses
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %i.b = getelementptr i8, ptr %i.a, i64 88
  %i.c = load ptr, ptr %i.b, align 8              ; 11 uses
  %i.d = getelementptr i8, ptr %i.c, i64 136      ; 5 uses
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  store ptr %i.c, ptr %1, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.d, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.k = load i64, ptr %i.j, align 8
  store i64 %i.k, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = getelementptr i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.n = load i64, ptr %i.m, align 32             ; 3 uses
  %i.o = and i64 %i.n, 65540
  %i.p = icmp eq i64 %i.o, 65536
  br i1 %i.p, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr i8, ptr %i.c, i64 152      ; 2 uses
  %i.r = load i32, ptr %i.q, align 8              ; 5 uses
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = and i64 %i.n, 32768
  %.not91 = icmp eq i64 %i.s, 0
  br i1 %.not91, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = tail call fastcc ptr @maybe_unlock_mmap_for_io(ptr noundef %0, ptr noundef null) #17, !srcloc !152
  %i.u = load i32, ptr %i.q, align 8
  %i.v = zext i32 %i.u to i64
  call void @page_cache_sync_ra(ptr noundef nonnull %1, i64 noundef %i.v) #14
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.w = and i64 %i.n, 4
  %.not92 = icmp eq i64 %i.w, 0
  br i1 %.not92, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %i.c, i64 158      ; 2 uses
  %i.y = load volatile i16, ptr %i.x, align 2     ; 3 uses
  %i.z = icmp ult i16 %i.y, 1000
  br i1 %i.z, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.aa = add nuw nsw i16 %i.y, 1
  store volatile i16 %i.aa, ptr %i.x, align 2
  %i.ab = icmp samesign ugt i16 %i.y, 99
  br i1 %i.ab, label %.critedge, label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ac = getelementptr i8, ptr %i.a, i64 80
  %i.ad = load i64, ptr %i.ac, align 16           ; 2 uses
  %.val = load i64, ptr %i.a, align 64
  %i.ae = getelementptr i8, ptr %i.a, i64 8
  %.val94 = load i64, ptr %i.ae, align 8
  %i.af = sub i64 %.val94, %.val
  %i.ag = lshr i64 %i.af, 12
  %i.ah = add i64 %i.ag, %i.ad
  %i.ai = getelementptr i8, ptr %i.c, i64 156
  store i16 0, ptr %i.ai, align 4
  %i.aj = load i64, ptr %i.j, align 8
  %i.ak = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 %i.ad) ; 3 uses
  store i64 %i.ak, ptr %i.d, align 8
  %i.al = zext i32 %i.r to i64
  %i.am = add i64 %i.ak, %i.al
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.am, i64 %i.ah)
  %i.ao = sub i64 %i.an, %i.ak
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = getelementptr i8, ptr %i.c, i64 144
  store i32 %i.ap, ptr %i.aq, align 8
  %i.ar = getelementptr i8, ptr %i.c, i64 148
  store i32 0, ptr %i.ar, align 4
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.as = load i64, ptr %i.j, align 8
  %i.at = lshr i32 %i.r, 1
  %i.au = zext nneg i32 %i.at to i64
  %i.av = sub i64 %i.as, %i.au
  %i.aw = tail call i64 @llvm.smax.i64(i64 %i.av, i64 0)
  store i64 %i.aw, ptr %i.d, align 8
  %i.ax = getelementptr i8, ptr %i.c, i64 144
  store i32 %i.r, ptr %i.ax, align 8
  %i.ay = lshr i32 %i.r, 2
  %i.az = getelementptr i8, ptr %i.c, i64 148
  store i32 %i.ay, ptr %i.az, align 4
  %i.ba = getelementptr i8, ptr %i.c, i64 156
  store i16 0, ptr %i.ba, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bb = tail call fastcc ptr @maybe_unlock_mmap_for_io(ptr noundef %0, ptr noundef null) #17, !srcloc !153
  %i.bc = load i64, ptr %i.d, align 8
  store i64 %i.bc, ptr %i.i, align 8
  call void @page_cache_ra_order(ptr noundef nonnull %1, ptr noundef %i.d) #14
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.g, %bb.b, %bb.a, %bb.j, %bb.d
  %.0 = phi ptr [ null, %bb.a ], [ %i.bb, %bb.j ], [ null, %bb.b ], [ %i.t, %bb.d ], [ null, %bb.g ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @maybe_unlock_mmap_for_io(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address_is_null, ret: address, provenance) %1) unnamed_addr #7 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %release_fault_lock.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 44
  %or.cond = icmp eq i32 %i.c, 4
  br i1 %or.cond, label %bb.c, label %release_fault_lock.exit

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 88
  %i.f = load ptr, ptr %i.e, align 8              ; 6 uses
  %i.g = getelementptr i8, ptr %i.f, i64 168      ; 2 uses
  %i.h = tail call i64 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddq ${0:q}, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.g, i64 1, ptr elementtype(i64) %i.g) #15, !srcloc !154
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %get_file.exit, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.36, ptr nonnull @.str.37, i32 121, i32 2323, i64 16) #15, !srcloc !155
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.j) #14
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !156
  br label %get_file.exit

get_file.exit:                                    ; preds = %bb.c, %bb.d
  %i.k = load i32, ptr %i.a, align 8
  %i.l = and i32 %i.k, 4096
  %.not.i = icmp eq i32 %i.l, 0
  %i.m = load ptr, ptr %0, align 8                ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 16             ; 3 uses
  br i1 %.not.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %get_file.exit
  %i.p = getelementptr i8, ptr %i.m, i64 128      ; 3 uses
  %i.q = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.p, i32 -1, ptr elementtype(i32) %i.p) #15, !srcloc !108 ; 4 uses
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %__vma_refcount_put_return.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = icmp slt i32 %i.q, 1
  br i1 %i.s, label %.thread.i.i.i, label %bb.g, !prof !22

.thread.i.i.i:                                    ; preds = %bb.f
  tail call void @refcount_warn_saturate(ptr noundef %i.p, i32 noundef 3) #14
  br label %release_fault_lock.exit

__vma_refcount_put_return.exit.i.i.i:             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !109
  br label %release_fault_lock.exit

bb.g:                                             ; preds = %bb.f
  %i.t = add nuw i32 %i.q, 2147483647
  %i.u = and i32 %i.t, 1073741824
  %i.v = icmp ne i32 %i.u, 0
  %i.w = icmp samesign ult i32 %i.q, 1073741827
  %i.x = and i1 %i.w, %i.v
  br i1 %i.x, label %bb.h, label %release_fault_lock.exit

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr i8, ptr %i.o, i64 512
  %i.z = tail call i32 @rcuwait_wake_up(ptr noundef %i.y) #14 ; 0 uses
  br label %release_fault_lock.exit

bb.i:                                             ; preds = %get_file.exit
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_released, i64 8), i1 false) #15
          to label %mmap_read_unlock.exit.i [label %bb.j], !srcloc !32

bb.j:                                             ; preds = %bb.i
  tail call void @__mmap_lock_do_trace_released(ptr noundef %i.o, i1 noundef zeroext false) #14
  br label %mmap_read_unlock.exit.i

mmap_read_unlock.exit.i:                          ; preds = %bb.j, %bb.i
  %i.aa = getelementptr i8, ptr %i.o, i64 464
  tail call void @up_read(ptr noundef %i.aa) #14
  br label %release_fault_lock.exit

release_fault_lock.exit:                          ; preds = %mmap_read_unlock.exit.i, %bb.h, %bb.g, %__vma_refcount_put_return.exit.i.i.i, %.thread.i.i.i, %bb.b, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ null, %bb.b ], [ %i.f, %.thread.i.i.i ], [ %i.f, %__vma_refcount_put_return.exit.i.i.i ], [ %i.f, %bb.g ], [ %i.f, %bb.h ], [ %i.f, %mmap_read_unlock.exit.i ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @filemap_read_folio(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = load volatile i64, ptr %2, align 8       ; 0 uses
  %i.b = tail call i32 %1(ptr noundef %0, ptr noundef %2) #14 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load volatile i64, ptr %2, align 8
  %i.d = and i64 %i.c, 1
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %folio_wait_locked_killable.exit.thread, label %folio_wait_locked_killable.exit

folio_wait_locked_killable.exit:                  ; preds = %bb.b
  %i.e = tail call fastcc range(i32 -4, 1) i32 @folio_wait_bit_common(ptr noundef %2, i32 noundef 0, i32 noundef 258, i32 noundef 1) #17, !srcloc !100 ; 2 uses
  %.not17 = icmp eq i32 %i.e, 0
  br i1 %.not17, label %folio_wait_locked_killable.exit.thread, label %bb.d

folio_wait_locked_killable.exit.thread:           ; preds = %bb.b, %folio_wait_locked_killable.exit
  %i.f = load volatile i64, ptr %2, align 8
  %i.g = and i64 %i.f, 8
  %.not21 = icmp eq i64 %i.g, 0
  br i1 %.not21, label %folio_test_uptodate.exit, label %folio_test_uptodate.exit.thread

folio_test_uptodate.exit.thread:                  ; preds = %folio_wait_locked_killable.exit.thread
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !90
  br label %bb.d

folio_test_uptodate.exit:                         ; preds = %folio_wait_locked_killable.exit.thread
  %.not18 = icmp eq ptr %0, null
  br i1 %.not18, label %bb.d, label %bb.c

bb.c:                                             ; preds = %folio_test_uptodate.exit
  %i.h = getelementptr i8, ptr %0, i64 152        ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = lshr i32 %i.i, 2
  store i32 %i.j, ptr %i.h, align 8
  br label %bb.d

bb.d:                                             ; preds = %folio_test_uptodate.exit.thread, %folio_test_uptodate.exit, %bb.c, %folio_wait_locked_killable.exit, %bb.a
  %.0 = phi i32 [ 0, %folio_test_uptodate.exit.thread ], [ %i.b, %bb.a ], [ %i.e, %folio_wait_locked_killable.exit ], [ -5, %bb.c ], [ -5, %folio_test_uptodate.exit ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 512) i32 @filemap_map_pages(ptr noundef %0, i64 noundef %1, i64 noundef %2) #1 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.wait_page_key, align 8      ; 6 uses
  %.sroa.0.i.i99 = alloca i64, align 8            ; 3 uses
  %.sroa.0.i.i = alloca i64, align 8              ; 3 uses
  %4 = alloca %struct.wait_page_key, align 8      ; 6 uses
  %5 = alloca %struct.xa_state, align 8           ; 9 uses
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %i.b = getelementptr i8, ptr %i.a, i64 88
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.f = getelementptr i8, ptr %i.e, i64 8
  store ptr %i.f, ptr %5, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %i.h, align 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.k = load ptr, ptr %i.e, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 80
  %i.m = load volatile i64, ptr %i.l, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !124
  %i.n = add i64 %i.m, 4095
  %i.o = lshr i64 %i.n, 12
  %i.p = add nsw i64 %i.o, -1                     ; 3 uses
  %i.q = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.p) ; 4 uses
  tail call void @__rcu_read_lock() #14
  %i.r = call fastcc ptr @next_uptodate_folio(ptr noundef nonnull %5, ptr noundef %i.e, i64 noundef %i.q) #17, !srcloc !157 ; 14 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %folio_put.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr i8, ptr %i.r, i64 32
  %i.t = load i64, ptr %i.s, align 16
  %i.u = load volatile i64, ptr %i.r, align 16
  %i.v = and i64 %i.u, 64
  %.not.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i, label %folio_next_index.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr i8, ptr %i.r, i64 64
  %.val.i.i = load i64, ptr %i.w, align 16
  %i.x = and i64 %.val.i.i, 255
  %i.y = shl nuw i64 1, %i.x
  br label %folio_next_index.exit

folio_next_index.exit:                            ; preds = %bb.b, %bb.c
  %.0.i.i = phi i64 [ %i.y, %bb.c ], [ 1, %bb.b ]
  %i.z = add i64 %.0.i.i, %i.t
  %.not86 = icmp ult i64 %i.p, %i.z
  br i1 %.not86, label %bb.d, label %bb.e

bb.d:                                             ; preds = %folio_next_index.exit
  %i.aa = call zeroext i1 @shmem_mapping(ptr noundef %i.e) #14
  br i1 %i.aa, label %bb.e, label %filemap_map_pmd.exit

bb.e:                                             ; preds = %bb.d, %folio_next_index.exit
  %i.ab = load ptr, ptr %0, align 8
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 16
  %i.ae = getelementptr i8, ptr %0, i64 48
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, -97
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %bb.f, label %filemap_map_pmd.exit

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr i8, ptr %0, i64 104       ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %.not21.i = icmp eq ptr %i.aj, null
  br i1 %.not21.i, label %filemap_map_pmd.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @pmd_install(ptr noundef %i.ad, ptr noundef %i.af, ptr noundef %i.ai) #14
  br label %filemap_map_pmd.exit

filemap_map_pmd.exit:                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.ak = load i64, ptr %i.a, align 64
  %i.al = getelementptr i8, ptr %i.a, i64 80
  %i.am = load i64, ptr %i.al, align 16
  %i.an = sub i64 %1, %i.am
  %i.ao = shl i64 %i.an, 12
  %i.ap = add i64 %i.ao, %i.ak                    ; 2 uses
  %i.aq = getelementptr i8, ptr %i.a, i64 16      ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 16
  %i.as = getelementptr i8, ptr %0, i64 48
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %i.av = call ptr @pte_offset_map_lock(ptr noundef %i.ar, ptr noundef %i.at, i64 noundef %i.ap, ptr noundef %i.au) #14 ; 2 uses
  %i.aw = getelementptr i8, ptr %0, i64 88        ; 10 uses
  store ptr %i.av, ptr %i.aw, align 8
  %.not87 = icmp eq ptr %i.av, null
  br i1 %.not87, label %bb.h, label %bb.l

bb.h:                                             ; preds = %filemap_map_pmd.exit
  %i.ax = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xorb $2,$1", "={@ccs},=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.r, i8 1, ptr nonnull elementtype(i8) %i.r) #15, !srcloc !101 ; 2 uses
  %i.ay = icmp ult i8 %i.ax, 2
  call void @llvm.assume(i1 %i.ay)
  %i.az = trunc nuw i8 %i.ax to i1
  br i1 %i.az, label %bb.i, label %folio_unlock.exit

bb.i:                                             ; preds = %bb.h
  %i.ba = ptrtoint ptr %i.r to i64
  %i.bb = mul i64 %i.ba, 7046029254386353131
  %i.bc = lshr i64 %i.bb, 56
  %i.bd = getelementptr [24 x i8], ptr @folio_wait_table, i64 %i.bc ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store ptr %i.r, ptr %4, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 0, ptr %i.bf, align 4
  %i.bg = call i64 @_raw_spin_lock_irqsave(ptr noundef %i.bd) #14
  call void @__wake_up_locked_key(ptr noundef %i.bd, i32 noundef 3, ptr noundef nonnull %4) #14
  %i.bh = getelementptr i8, ptr %i.bd, i64 8      ; 2 uses
  %i.bi = load volatile ptr, ptr %i.bh, align 8
  %i.bj = icmp ne ptr %i.bi, %i.bh
  %i.bk = load i32, ptr %i.bf, align 4
  %i.bl = icmp ne i32 %i.bk, 0
  %or.cond.i.i = select i1 %i.bj, i1 %i.bl, i1 false
  br i1 %or.cond.i.i, label %folio_wake_bit.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.r, i32 -129, ptr nonnull elementtype(i8) %i.r) #15, !srcloc !63
  br label %folio_wake_bit.exit.i

folio_wake_bit.exit.i:                            ; preds = %bb.j, %bb.i
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.bd, i64 noundef %i.bg) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %folio_unlock.exit

folio_unlock.exit:                                ; preds = %bb.h, %folio_wake_bit.exit.i
  %i.bm = getelementptr i8, ptr %i.r, i64 52      ; 2 uses
  %i.bn = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bm, ptr elementtype(i32) %i.bm) #15, !srcloc !67 ; 2 uses
  %i.bo = icmp ult i8 %i.bn, 2
  call void @llvm.assume(i1 %i.bo)
  %.not.i93 = icmp eq i8 %i.bn, 0
  br i1 %.not.i93, label %folio_put.exit, label %bb.k

bb.k:                                             ; preds = %folio_unlock.exit
  call void @__folio_put(ptr noundef nonnull %i.r) #14
  br label %folio_put.exit

bb.l:                                             ; preds = %filemap_map_pmd.exit
  %i.bp = load volatile i64, ptr %i.r, align 16
  %i.bq = getelementptr i8, ptr %0, i64 24        ; 3 uses
  %i.br = getelementptr i8, ptr %0, i64 40
  %i.bs = getelementptr i8, ptr %i.a, i64 32
  %i.bt = getelementptr i8, ptr %i.c, i64 158     ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %folio_unlock.exit108, %bb.l
  %.0113 = phi i64 [ 0, %bb.l ], [ %.1114119, %folio_unlock.exit108 ] ; 3 uses
  %.082 = phi i32 [ 0, %bb.l ], [ %i.gh, %folio_unlock.exit108 ] ; 4 uses
  %.080 = phi ptr [ %i.r, %bb.l ], [ %i.gv, %folio_unlock.exit108 ] ; 29 uses
  %.079 = phi i64 [ %i.ap, %bb.l ], [ %i.bz, %folio_unlock.exit108 ]
  %.0 = phi i64 [ %1, %bb.l ], [ %i.bw, %folio_unlock.exit108 ]
  %i.bw = load i64, ptr %i.g, align 8             ; 4 uses
  %i.bx = sub i64 %i.bw, %.0                      ; 2 uses
  %i.by = shl i64 %i.bx, 12
  %i.bz = add i64 %i.by, %.079                    ; 10 uses
  %i.ca = load ptr, ptr %i.aw, align 8
  %i.cb = getelementptr [8 x i8], ptr %i.ca, i64 %i.bx ; 4 uses
  store ptr %i.cb, ptr %i.aw, align 8
  %i.cc = getelementptr i8, ptr %.080, i64 32     ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 16           ; 3 uses
  %i.ce = load volatile i64, ptr %.080, align 16
  %i.cf = and i64 %i.ce, 64
  %.not.i.i95 = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i95, label %folio_next_index.exit98, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cg = getelementptr i8, ptr %.080, i64 64
  %.val.i.i96 = load i64, ptr %i.cg, align 16
  %i.ch = and i64 %.val.i.i96, 255
  %i.ci = shl nuw i64 1, %i.ch
  br label %folio_next_index.exit98

folio_next_index.exit98:                          ; preds = %bb.m, %bb.n
  %.0.i.i97 = phi i64 [ %i.ci, %bb.n ], [ 1, %bb.m ]
  %i.cj = load volatile i64, ptr %.080, align 16
  %i.ck = and i64 %i.cj, 64
  %.not127 = icmp eq i64 %i.ck, 0
  br i1 %.not127, label %bb.o, label %bb.r

bb.o:                                             ; preds = %folio_next_index.exit98
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %.sroa.0.0.copyload.i.i = load volatile i64, ptr %i.cb, align 8 ; 2 uses
  store volatile i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.0.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.cl = and i64 %.sroa.0.0.copyload.i.i, -97
  %.not.i.not.i = icmp eq i64 %i.cl, 0
  br i1 %.not.i.not.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cm = load i64, ptr %i.bq, align 8
  %i.cn = icmp eq i64 %i.cm, %i.bz
  call void @set_pte_range(ptr noundef %0, ptr noundef nonnull %.080, ptr noundef nonnull %.080, i32 noundef 1, i64 noundef %i.bz) #14
  %i.co = add i64 %.0113, 1                       ; 2 uses
  br i1 %i.cn, label %filemap_map_order0_folio.exit.thread122, label %filemap_map_order0_folio.exit.thread

bb.q:                                             ; preds = %bb.o
  %i.cp = getelementptr i8, ptr %.080, i64 52     ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.cp, ptr elementtype(i32) %i.cp) #15, !srcloc !158
  br label %filemap_map_order0_folio.exit.thread

bb.r:                                             ; preds = %folio_next_index.exit98
  %i.cq = add i64 %i.cd, -1
  %i.cr = add i64 %i.cq, %.0.i.i97
  %i.cs = call i64 @llvm.umin.i64(i64 %i.cr, i64 %i.q)
  %i.ct = sub i64 %i.cs, %i.bw
  %i.cu = trunc i64 %i.ct to i32
  %i.cv = add i32 %i.cu, 1                        ; 6 uses
  %i.cw = sub i64 %i.bw, %i.cd                    ; 3 uses
  %i.cx = getelementptr i8, ptr %.080, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = getelementptr [64 x i8], ptr %.080, i64 %i.cw ; 6 uses
  %i.da = shl i64 %i.cw, 12
  %i.db = sub i64 %i.bz, %i.da                    ; 4 uses
  %i.dc = load volatile i64, ptr %.080, align 16
  %i.dd = and i64 %i.dc, 64
  %.not.i.i.i = icmp eq i64 %i.dd, 0
  br i1 %.not.i.i.i, label %folio_next_index.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.de = getelementptr i8, ptr %.080, i64 64
  %.val.i.i.i = load i64, ptr %i.de, align 16
  %i.df = and i64 %.val.i.i.i, 255
  %i.dg = shl nuw i64 1, %i.df
  br label %folio_next_index.exit.i

folio_next_index.exit.i:                          ; preds = %bb.s, %bb.r
  %.0.i.i.i = phi i64 [ %i.dg, %bb.s ], [ 1, %bb.r ]
  %i.dh = add i64 %.0.i.i.i, %i.cd
  %.not.i100 = icmp ult i64 %i.p, %i.dh
  br i1 %.not.i100, label %bb.t, label %bb.u

bb.t:                                             ; preds = %folio_next_index.exit.i
  %i.di = call zeroext i1 @shmem_mapping(ptr noundef %i.cy) #14
  br i1 %i.di, label %bb.u, label %folio_within_vma.exit.thread.i

bb.u:                                             ; preds = %bb.t, %folio_next_index.exit.i
  %i.dj = load ptr, ptr %0, align 8               ; 3 uses
  %i.dk = load i64, ptr %i.dj, align 64           ; 4 uses
  %i.dl = getelementptr i8, ptr %i.dj, i64 8
  %i.dm = load i64, ptr %i.dl, align 8            ; 3 uses
  %i.dn = icmp ugt i64 %i.dk, %i.dm
  br i1 %i.dn, label %folio_within_vma.exit.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.do = sub nuw i64 %i.dm, %i.dk
  %i.dp = lshr i64 %i.do, 12
  %.val29.i.i.i = load i64, ptr %i.cc, align 16
  %i.dq = getelementptr i8, ptr %i.dj, i64 80
  %i.dr = load i64, ptr %i.dq, align 16
  %i.ds = sub i64 %.val29.i.i.i, %i.dr            ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.dp
  br i1 %i.dt, label %bb.w, label %folio_within_vma.exit.thread.i

bb.w:                                             ; preds = %bb.v
  %i.du = shl nuw i64 %i.ds, 12
  %i.dv = add i64 %i.du, %i.dk                    ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.dk
  br i1 %i.dw, label %folio_within_vma.exit.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dx = sub i64 %i.dm, %i.dv
  %i.dy = load volatile i64, ptr %.080, align 16
  %i.dz = and i64 %i.dy, 64
  %.not.i.i.i.i.i = icmp eq i64 %i.dz, 0
  br i1 %.not.i.i.i.i.i, label %folio_within_vma.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ea = getelementptr i8, ptr %.080, i64 64
  %.val.i.i.i.i.i = load i64, ptr %i.ea, align 16
  %i.eb = and i64 %.val.i.i.i.i.i, 255
  br label %folio_within_vma.exit.i

folio_within_vma.exit.i:                          ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i = phi i64 [ %i.eb, %bb.y ], [ 0, %bb.x ]
  %i.ec = shl i64 4096, %.0.i.i.i.i.i
  %.not115.i = icmp ult i64 %i.dx, %i.ec
  br i1 %.not115.i, label %folio_within_vma.exit.thread.i, label %bb.z

bb.z:                                             ; preds = %folio_within_vma.exit.i
  %i.ed = load volatile i64, ptr %.080, align 16
  %i.ee = and i64 %i.ed, 64
  %.not.i.i87.i = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i87.i, label %folio_size.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ef = getelementptr i8, ptr %.080, i64 64
  %.val.i.i88.i = load i64, ptr %i.ef, align 16
  %i.eg = and i64 %.val.i.i88.i, 255
  br label %folio_size.exit.i

folio_size.exit.i:                                ; preds = %bb.aa, %bb.z
  %.0.i.i89.i = phi i64 [ %i.eg, %bb.aa ], [ 0, %bb.z ]
  %i.eh = shl i64 4096, %.0.i.i89.i
  %i.ei = add i64 %i.db, -1
  %i.ej = add i64 %i.ei, %i.eh
  %i.ek = xor i64 %i.ej, %i.db
  %i.el = icmp ult i64 %i.ek, 2097152
  br i1 %i.el, label %bb.ab, label %folio_within_vma.exit.thread.i

bb.ab:                                            ; preds = %folio_size.exit.i
  %i.em = load ptr, ptr %i.aw, align 8
  %i.en = sub i64 0, %i.cw
  %i.eo = getelementptr [8 x i8], ptr %i.em, i64 %i.en
  store ptr %i.eo, ptr %i.aw, align 8
  %i.ep = load volatile i64, ptr %.080, align 16
  %i.eq = and i64 %i.ep, 64
  %.not.i.i104 = icmp eq i64 %i.eq, 0
  br i1 %.not.i.i104, label %folio_within_vma.exit.thread.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.er = getelementptr i8, ptr %.080, i64 64
  %.val.i.i105 = load i64, ptr %i.er, align 16
  %i.es = and i64 %.val.i.i105, 255
  %i.et = shl nuw i64 1, %i.es
  %i.eu = trunc i64 %i.et to i32
  br label %folio_within_vma.exit.thread.i

folio_within_vma.exit.thread.i:                   ; preds = %bb.ac, %bb.ab, %folio_size.exit.i, %folio_within_vma.exit.i, %bb.w, %bb.v, %bb.u, %bb.t
  %.069.i = phi ptr [ %i.cz, %bb.w ], [ %i.cz, %folio_size.exit.i ], [ %i.cz, %folio_within_vma.exit.i ], [ %i.cz, %bb.t ], [ %i.cz, %bb.u ], [ %i.cz, %bb.v ], [ %.080, %bb.ab ], [ %.080, %bb.ac ]
  %.065.i = phi i32 [ %i.cv, %bb.w ], [ %i.cv, %folio_size.exit.i ], [ %i.cv, %folio_within_vma.exit.i ], [ %i.cv, %bb.t ], [ %i.cv, %bb.u ], [ %i.cv, %bb.v ], [ 1, %bb.ab ], [ %i.eu, %bb.ac ]
  %.0.i101 = phi i64 [ %i.bz, %bb.w ], [ %i.bz, %folio_size.exit.i ], [ %i.bz, %folio_within_vma.exit.i ], [ %i.bz, %bb.t ], [ %i.bz, %bb.u ], [ %i.bz, %bb.v ], [ %i.db, %bb.ab ], [ %i.db, %bb.ac ]
  %i.ev = getelementptr i8, ptr %.080, i64 52     ; 6 uses
  %.pre.i = load ptr, ptr %i.aw, align 8
  br label %.outer.i

.outer.i:                                         ; preds = %.thread.i, %folio_within_vma.exit.thread.i
  %.3 = phi i64 [ %.0113, %folio_within_vma.exit.thread.i ], [ %.4, %.thread.i ] ; 4 uses
  %i.ew = phi ptr [ %.pre.i, %folio_within_vma.exit.thread.i ], [ %i.fl, %.thread.i ] ; 2 uses
  %.075.ph.i = phi i32 [ 1, %folio_within_vma.exit.thread.i ], [ %.176.i, %.thread.i ] ; 4 uses
  %.072.ph.i = phi i32 [ 0, %folio_within_vma.exit.thread.i ], [ %.173.i, %.thread.i ] ; 4 uses
  %.170.ph.i = phi ptr [ %.069.i, %folio_within_vma.exit.thread.i ], [ %i.fk, %.thread.i ] ; 3 uses
  %.166.ph.i = phi i32 [ %.065.i, %folio_within_vma.exit.thread.i ], [ %i.fo, %.thread.i ] ; 5 uses
  %.1.ph.i = phi i64 [ %.0.i101, %folio_within_vma.exit.thread.i ], [ %i.fn, %.thread.i ] ; 5 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ag, %.outer.i
  %indvars.iv.i = phi i64 [ 0, %.outer.i ], [ %indvars.iv.next.i, %bb.ag ] ; 7 uses
  %.166.i = phi i32 [ %.166.ph.i, %.outer.i ], [ %i.fg, %bb.ag ] ; 2 uses
  %i.ex = getelementptr [8 x i8], ptr %i.ew, i64 %indvars.iv.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i99)
  %.sroa.0.0.copyload.i.i102 = load volatile i64, ptr %i.ex, align 8 ; 2 uses
  store volatile i64 %.sroa.0.0.copyload.i.i102, ptr %.sroa.0.i.i99, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i99)
  %i.ey = and i64 %.sroa.0.0.copyload.i.i102, -97
  %.not.i90.not.i = icmp eq i64 %i.ey, 0
  br i1 %.not.i90.not.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not81.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not81.i, label %.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ez = trunc nuw i64 %indvars.iv.i to i32      ; 2 uses
  call void @set_pte_range(ptr noundef %0, ptr noundef nonnull %.080, ptr noundef %.170.ph.i, i32 noundef %i.ez, i64 noundef %.1.ph.i) #14
  %i.fa = add i64 %indvars.iv.i, %.3
  %i.fb = sub nuw i32 %i.ez, %.075.ph.i
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addl $1, $0", "=*m,ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ev, i32 %i.fb, ptr elementtype(i32) %i.ev) #15, !srcloc !68
  %i.fc = load i64, ptr %i.bq, align 8
  %i.fd = shl nuw nsw i64 %indvars.iv.i, 12
  %i.fe = sub i64 %i.fc, %.1.ph.i
  %i.ff = icmp ult i64 %i.fe, %i.fd
  %spec.select.i103 = select i1 %i.ff, i32 256, i32 %.072.ph.i
  %.pre133.i = load ptr, ptr %i.aw, align 8
  br label %.thread.i

bb.ag:                                            ; preds = %bb.ad
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.fg = add i32 %.166.i, -1                     ; 2 uses
  %.not82.i = icmp eq i32 %i.fg, 0
  br i1 %.not82.i, label %bb.ah, label %bb.ad, !llvm.loop !159

.thread.i:                                        ; preds = %bb.af, %bb.ae
  %.4 = phi i64 [ %.3, %bb.ae ], [ %i.fa, %bb.af ] ; 2 uses
  %i.fh = phi ptr [ %i.ew, %bb.ae ], [ %.pre133.i, %bb.af ]
  %.176.i = phi i32 [ %.075.ph.i, %bb.ae ], [ 0, %bb.af ] ; 2 uses
  %.173.i = phi i32 [ %.072.ph.i, %bb.ae ], [ %spec.select.i103, %bb.af ] ; 2 uses
  %i.fi = add nuw i64 %indvars.iv.i, 1
  %i.fj = and i64 %i.fi, 4294967295               ; 3 uses
  %i.fk = getelementptr [64 x i8], ptr %.170.ph.i, i64 %i.fj
  %i.fl = getelementptr [8 x i8], ptr %i.fh, i64 %i.fj ; 2 uses
  store ptr %i.fl, ptr %i.aw, align 8
  %i.fm = shl nuw nsw i64 %i.fj, 12
  %i.fn = add i64 %i.fm, %.1.ph.i
  %i.fo = add i32 %.166.i, -1                     ; 2 uses
  %.not8297.i = icmp eq i32 %i.fo, 0
  br i1 %.not8297.i, label %.thread103.i, label %.outer.i, !llvm.loop !159

bb.ah:                                            ; preds = %bb.ag
  %.not83.i = icmp eq i32 %.166.ph.i, 0
  br i1 %.not83.i, label %.thread103.i, label %.thread110.i

.thread110.i:                                     ; preds = %bb.ah
  call void @set_pte_range(ptr noundef %0, ptr noundef nonnull %.080, ptr noundef %.170.ph.i, i32 noundef %.166.ph.i, i64 noundef %.1.ph.i) #14
  %i.fp = zext i32 %.166.ph.i to i64              ; 2 uses
  %i.fq = add i64 %.3, %i.fp                      ; 2 uses
  %i.fr = sub nuw i32 %.166.ph.i, %.075.ph.i
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addl $1, $0", "=*m,ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ev, i32 %i.fr, ptr elementtype(i32) %i.ev) #15, !srcloc !68
  %i.fs = load i64, ptr %i.bq, align 8
  %i.ft = shl nuw nsw i64 %i.fp, 12
  %i.fu = sub i64 %i.fs, %.1.ph.i
  %i.fv = icmp ult i64 %i.fu, %i.ft
  store ptr %i.cb, ptr %i.aw, align 8
  br i1 %i.fv, label %filemap_map_order0_folio.exit.thread122, label %filemap_map_order0_folio.exit

.thread103.i:                                     ; preds = %.thread.i, %bb.ah
  %.5 = phi i64 [ %.3, %bb.ah ], [ %.4, %.thread.i ] ; 2 uses
  %.378.i = phi i32 [ %.075.ph.i, %bb.ah ], [ %.176.i, %.thread.i ]
  %.3.i = phi i32 [ %.072.ph.i, %bb.ah ], [ %.173.i, %.thread.i ] ; 2 uses
  store ptr %i.cb, ptr %i.aw, align 8
  %.not84.i = icmp eq i32 %.378.i, 0
  br i1 %.not84.i, label %filemap_map_order0_folio.exit, label %bb.ai

bb.ai:                                            ; preds = %.thread103.i
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ev, ptr elementtype(i32) %i.ev) #15, !srcloc !158
  br label %filemap_map_order0_folio.exit

filemap_map_order0_folio.exit.thread122:          ; preds = %bb.p, %.thread110.i
  %.1114.ph121 = phi i64 [ %i.co, %bb.p ], [ %i.fq, %.thread110.i ]
  %i.fw = or i32 %.082, 256
  br label %bb.aj

filemap_map_order0_folio.exit:                    ; preds = %.thread110.i, %bb.ai, %.thread103.i
  %.1114 = phi i64 [ %.5, %bb.ai ], [ %i.fq, %.thread110.i ], [ %.5, %.thread103.i ] ; 2 uses
  %.081 = phi i32 [ %.3.i, %bb.ai ], [ %.072.ph.i, %.thread110.i ], [ %.3.i, %.thread103.i ] ; 2 uses
  %i.fx = or i32 %.081, %.082                     ; 2 uses
  %.not88 = icmp samesign ult i32 %.081, 256
  br i1 %.not88, label %filemap_map_order0_folio.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %filemap_map_order0_folio.exit.thread122, %filemap_map_order0_folio.exit
  %i.fy = phi i32 [ %i.fw, %filemap_map_order0_folio.exit.thread122 ], [ %i.fx, %filemap_map_order0_folio.exit ] ; 5 uses
  %.1114126 = phi i64 [ %.1114.ph121, %filemap_map_order0_folio.exit.thread122 ], [ %.1114, %filemap_map_order0_folio.exit ] ; 5 uses
  %i.fz = load i32, ptr %i.br, align 8
  %i.ga = and i32 %i.fz, 32
  %.not89 = icmp eq i32 %i.ga, 0
  br i1 %.not89, label %bb.ak, label %filemap_map_order0_folio.exit.thread

bb.ak:                                            ; preds = %bb.aj
  %i.gb = load volatile i64, ptr %.080, align 16
  %i.gc = and i64 %i.gb, 512
  %.not128 = icmp eq i64 %i.gc, 0
  br i1 %.not128, label %bb.al, label %filemap_map_order0_folio.exit.thread

bb.al:                                            ; preds = %bb.ak
  %i.gd = load i64, ptr %i.bs, align 32
  %i.ge = and i64 %i.gd, 32772
  %.not90 = icmp eq i64 %i.ge, 0
  br i1 %.not90, label %bb.am, label %filemap_map_order0_folio.exit.thread

bb.am:                                            ; preds = %bb.al
  %i.gf = load volatile i16, ptr %i.bt, align 2   ; 2 uses
  %.not91 = icmp eq i16 %i.gf, 0
  br i1 %.not91, label %filemap_map_order0_folio.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gg = add i16 %i.gf, -1
  store volatile i16 %i.gg, ptr %i.bt, align 2
  br label %filemap_map_order0_folio.exit.thread

filemap_map_order0_folio.exit.thread:             ; preds = %bb.q, %bb.p, %bb.am, %bb.an, %bb.al, %bb.ak, %bb.aj, %filemap_map_order0_folio.exit
  %i.gh = phi i32 [ %i.fx, %filemap_map_order0_folio.exit ], [ %i.fy, %bb.am ], [ %i.fy, %bb.an ], [ %i.fy, %bb.al ], [ %i.fy, %bb.ak ], [ %i.fy, %bb.aj ], [ %.082, %bb.p ], [ %.082, %bb.q ] ; 4 uses
  %.1114119 = phi i64 [ %.1114, %filemap_map_order0_folio.exit ], [ %.1114126, %bb.am ], [ %.1114126, %bb.an ], [ %.1114126, %bb.al ], [ %.1114126, %bb.ak ], [ %.1114126, %bb.aj ], [ %i.co, %bb.p ], [ %.0113, %bb.q ] ; 2 uses
  %i.gi = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xorb $2,$1", "={@ccs},=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %.080, i8 1, ptr nonnull elementtype(i8) %.080) #15, !srcloc !101 ; 2 uses
  %i.gj = icmp ult i8 %i.gi, 2
  call void @llvm.assume(i1 %i.gj)
  %i.gk = trunc nuw i8 %i.gi to i1
  br i1 %i.gk, label %bb.ao, label %folio_unlock.exit108

bb.ao:                                            ; preds = %filemap_map_order0_folio.exit.thread
  %i.gl = ptrtoint ptr %.080 to i64
  %i.gm = mul i64 %i.gl, 7046029254386353131
  %i.gn = lshr i64 %i.gm, 56
  %i.go = getelementptr [24 x i8], ptr @folio_wait_table, i64 %i.gn ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store ptr %.080, ptr %3, align 8
  store i32 0, ptr %i.bu, align 8
  store i32 0, ptr %i.bv, align 4
  %i.gp = call i64 @_raw_spin_lock_irqsave(ptr noundef %i.go) #14
  call void @__wake_up_locked_key(ptr noundef %i.go, i32 noundef 3, ptr noundef nonnull %3) #14
  %i.gq = getelementptr i8, ptr %i.go, i64 8      ; 2 uses
  %i.gr = load volatile ptr, ptr %i.gq, align 8
  %i.gs = icmp ne ptr %i.gr, %i.gq
  %i.gt = load i32, ptr %i.bv, align 4
  %i.gu = icmp ne i32 %i.gt, 0
  %or.cond.i.i106 = select i1 %i.gs, i1 %i.gu, i1 false
  br i1 %or.cond.i.i106, label %folio_wake_bit.exit.i107, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %.080, i32 -129, ptr nonnull elementtype(i8) %.080) #15, !srcloc !63
  br label %folio_wake_bit.exit.i107

folio_wake_bit.exit.i107:                         ; preds = %bb.ap, %bb.ao
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.go, i64 noundef %i.gp) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %folio_unlock.exit108

folio_unlock.exit108:                             ; preds = %filemap_map_order0_folio.exit.thread, %folio_wake_bit.exit.i107
  %i.gv = call fastcc ptr @next_uptodate_folio(ptr noundef nonnull %5, ptr noundef %i.e, i64 noundef %i.q) #17, !srcloc !160 ; 2 uses
  %.not92 = icmp eq ptr %i.gv, null
  br i1 %.not92, label %bb.aq, label %bb.m, !llvm.loop !161

bb.aq:                                            ; preds = %folio_unlock.exit108
  %i.gw = and i64 %i.bp, 131072
  %.not.i94 = icmp eq i64 %i.gw, 0
  %..i = select i1 %.not.i94, i32 0, i32 3        ; 2 uses
  %i.gx = load ptr, ptr %i.aq, align 16           ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gx, i64 1256
  %i.gz = zext nneg i32 %..i to i64
  %i.ha = getelementptr [40 x i8], ptr %i.gy, i64 %i.gz
  %i.hb = load i32, ptr @percpu_counter_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef %i.ha, i64 noundef %.1114119, i32 noundef %i.hb) #14
  call void @mm_trace_rss_stat(ptr noundef %i.gx, i32 noundef range(i32 0, 4) %..i) #14
  %i.hc = load ptr, ptr %i.au, align 8
  call void @_raw_spin_unlock(ptr noundef %i.hc) #14
  call void @__rcu_read_unlock() #14
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mm_filemap_map_pages, i64 8), i1 false) #15
          to label %folio_put.exit [label %arch_test_bit.exit.i.i], !srcloc !32

arch_test_bit.exit.i.i:                           ; preds = %bb.aq
  %i.hd = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #15, !srcloc !162
  %i.he = zext i32 %i.hd to i64
  %i.hf = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 -2147483648, 4294967296) %i.he) #15, !srcloc !34 ; 2 uses
  %i.hg = icmp ult i8 %i.hf, 2
  call void @llvm.assume(i1 %i.hg)
  %i.hh = trunc nuw i8 %i.hf to i1
  br i1 %i.hh, label %bb.ar, label %folio_put.exit

bb.ar:                                            ; preds = %arch_test_bit.exit.i.i
  %i.hi = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.hi, ptr elementtype(i64) %i.hi) #15, !srcloc !35
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !36
  %i.hj = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_mm_filemap_map_pages, i64 56), align 8 ; 2 uses
  %.not.i.i109 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i109, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hk = getelementptr i8, ptr %i.hj, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8
  %i.hm = call i32 @__SCT__tp_func_mm_filemap_map_pages(ptr noundef %i.hl, ptr noundef %i.e, i64 noundef %1, i64 noundef %i.q) #14 ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !37
  %i.hn = getelementptr i8, ptr %i.hi, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.hn, ptr elementtype(i64) %i.hn) #15, !srcloc !38
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %bb.at, %arch_test_bit.exit.i.i, %bb.aq, %bb.k, %folio_unlock.exit, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.k ], [ 0, %folio_unlock.exit ], [ %i.gh, %bb.aq ], [ %i.gh, %bb.at ], [ %i.gh, %arch_test_bit.exit.i.i ]
  call void @__rcu_read_unlock() #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @next_uptodate_folio(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.wait_page_key, align 8      ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = and i64 %i.c, 3
  %.not.i.i = icmp ne i64 %i.d, 0
  %.not2.i.i = icmp eq ptr %i.b, null
  %spec.select.i.i = or i1 %.not2.i.i, %.not.i.i
  br i1 %spec.select.i.i, label %.loopexit.sink.split.i, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.b, align 8
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %.loopexit.sink.split.i, !prof !21

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 18         ; 2 uses
  %i.g = load i8, ptr %i.f, align 2               ; 3 uses
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 4 uses
  %i.k = and i64 %i.j, 63
  %.not27.i = icmp eq i64 %i.k, %i.h
  br i1 %.not27.i, label %.preheader.i, label %.loopexit.sink.split.i, !prof !21

.preheader.i:                                     ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.b, i64 48
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.j, i64 %2)
  %exitcond.not.i72 = icmp uge i64 %i.j, %2
  %i.m = icmp eq i8 %i.g, 63
  %or.cond.i73 = or i1 %exitcond.not.i72, %i.m
  br i1 %or.cond.i73, label %.loopexit.sink.split.i, label %.lr.ph, !prof !55

bb.d:                                             ; preds = %bb.e
  %exitcond.not.i = icmp eq i64 %i.x, %umax.i
  %i.n = icmp eq i8 %i.w, 63
  %or.cond.i = or i1 %exitcond.not.i, %i.n
  br i1 %or.cond.i, label %.loopexit.sink.split.i, label %.lr.ph, !prof !56, !llvm.loop !57

.lr.ph:                                           ; preds = %.preheader.i, %bb.d
  %i.o = phi i64 [ %i.x, %bb.d ], [ %i.j, %.preheader.i ]
  %i.p = phi i8 [ %i.w, %bb.d ], [ %i.g, %.preheader.i ] ; 2 uses
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr [8 x i8], ptr %i.l, i64 %i.q
  %i.s = load volatile ptr, ptr %i.r, align 8     ; 3 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = and i64 %i.t, 3
  %i.v = icmp eq i64 %i.u, 2
  br i1 %i.v, label %.loopexit.sink.split.i, label %bb.e, !prof !22

bb.e:                                             ; preds = %.lr.ph
  %i.w = add i8 %i.p, 1                           ; 3 uses
  store i8 %i.w, ptr %i.f, align 2
  %i.x = add i64 %i.o, 1                          ; 3 uses
  store i64 %i.x, ptr %i.i, align 8
  %.not26.i = icmp eq ptr %i.s, null
  br i1 %.not26.i, label %bb.d, label %xas_next_entry.exit, !llvm.loop !57

.loopexit.sink.split.i:                           ; preds = %bb.d, %.lr.ph, %.preheader.i, %bb.c, %bb.b, %bb.a
  %i.y = tail call ptr @xas_find(ptr noundef %0, i64 noundef %2) #14
  br label %xas_next_entry.exit

xas_next_entry.exit:                              ; preds = %bb.e, %.loopexit.sink.split.i
  %.0.i = phi ptr [ %i.y, %.loopexit.sink.split.i ], [ %i.s, %bb.e ]
  %i.z = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.ac = getelementptr i8, ptr %0, i64 18        ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %xas_next_entry.exit49, %xas_next_entry.exit
  %.0 = phi ptr [ %.0.i, %xas_next_entry.exit ], [ %.0.i42, %xas_next_entry.exit49 ] ; 18 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %bb.aa, label %bb.g

bb.g:                                             ; preds = %bb.f
  %magicptr.i = ptrtoint ptr %.0 to i64           ; 3 uses
  switch i64 %magicptr.i, label %xas_retry.exit [
    i64 1030, label %folio_put.exit
    i64 1026, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  store ptr inttoptr (i64 3 to ptr), ptr %i.a, align 8
  br label %folio_put.exit

xas_retry.exit:                                   ; preds = %bb.g
  %i.ad = trunc i64 %magicptr.i to i1
  br i1 %i.ad, label %folio_put.exit, label %bb.i

bb.i:                                             ; preds = %xas_retry.exit
  %i.ae = getelementptr i8, ptr %.0, i64 52       ; 5 uses
  %i.af = load volatile i32, ptr %i.ae, align 4   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i, label %folio_put.exit, label %.lr.ph.i.i.i, !prof !112

.lr.ph.i.i.i:                                     ; preds = %bb.i, %arch_atomic_try_cmpxchg.exit.i.i.i
  %.05.i.i.i = phi i32 [ %i.al, %arch_atomic_try_cmpxchg.exit.i.i.i ], [ %i.af, %bb.i ] ; 2 uses
  %i.ag = add i32 %.05.i.i.i, 1
  %i.ah = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ae, i32 range(i32 2, 1) %i.ag, ptr elementtype(i32) %i.ae, i32 %.05.i.i.i) #15, !srcloc !113 ; 2 uses
  %i.ai = extractvalue { i8, i32 } %i.ah, 0       ; 2 uses
  %i.aj = icmp ult i8 %i.ai, 2
  call void @llvm.assume(i1 %i.aj)
  %i.ak = trunc nuw i8 %i.ai to i1
  br i1 %i.ak, label %folio_try_get.exit, label %arch_atomic_try_cmpxchg.exit.i.i.i, !prof !21

arch_atomic_try_cmpxchg.exit.i.i.i:               ; preds = %.lr.ph.i.i.i
  %i.al = extractvalue { i8, i32 } %i.ah, 1       ; 2 uses
  %.not8.i.i.i = icmp eq i32 %i.al, 0
  br i1 %.not8.i.i.i, label %folio_put.exit, label %.lr.ph.i.i.i, !prof !114

folio_try_get.exit:                               ; preds = %.lr.ph.i.i.i
  %i.am = load volatile i64, ptr %.0, align 8
  %i.an = and i64 %i.am, 1
  %.not52 = icmp eq i64 %i.an, 0
  br i1 %.not52, label %bb.j, label %folio_test_uptodate.exit

bb.j:                                             ; preds = %folio_try_get.exit
  %i.ao = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not.i32 = icmp eq ptr %i.ao, null
  br i1 %.not.i32, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = load ptr, ptr %0, align 8
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %i.ar = load volatile ptr, ptr %i.aq, align 8
  br label %xas_reload.exit

bb.l:                                             ; preds = %bb.j
  %i.as = load i64, ptr %i.z, align 8
  %i.at = load i8, ptr %i.ao, align 8
  %i.au = zext nneg i8 %i.at to i64
  %i.av = lshr i64 %i.as, %i.au
  %i.aw = and i64 %i.av, 63
  %i.ax = getelementptr i8, ptr %i.ao, i64 40     ; 2 uses
  %i.ay = getelementptr [8 x i8], ptr %i.ax, i64 %i.aw
  %i.az = load volatile ptr, ptr %i.ay, align 8   ; 3 uses
  %i.ba = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bb = and i64 %i.ba, 3
  %i.bc = icmp eq i64 %i.bb, 2
  %i.bd = icmp ult ptr %i.az, inttoptr (i64 254 to ptr)
  %spec.select.i.i33 = and i1 %i.bd, %i.bc
  br i1 %spec.select.i.i33, label %bb.m, label %xas_reload.exit

bb.m:                                             ; preds = %bb.l
  %i.be = lshr i64 %i.ba, 2
  %i.bf = and i64 %i.be, 255
  %i.bg = getelementptr [8 x i8], ptr %i.ax, i64 %i.bf
  %i.bh = load volatile ptr, ptr %i.bg, align 8
  br label %xas_reload.exit

xas_reload.exit:                                  ; preds = %bb.k, %bb.l, %bb.m
  %.0.i34 = phi ptr [ %i.bh, %bb.m ], [ %i.ar, %bb.k ], [ %i.az, %bb.l ]
  %.not27 = icmp eq ptr %.0, %.0.i34
  br i1 %.not27, label %bb.n, label %folio_test_uptodate.exit, !prof !21

bb.n:                                             ; preds = %xas_reload.exit
  %i.bi = load volatile i64, ptr %.0, align 8
  %i.bj = and i64 %i.bi, 8
  %.not53 = icmp eq i64 %i.bj, 0
  br i1 %.not53, label %folio_test_uptodate.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !90
  %i.bk = load volatile i64, ptr %.0, align 8
  %i.bl = and i64 %i.bk, 65536
  %.not54 = icmp eq i64 %i.bl, 0
  br i1 %.not54, label %bb.p, label %folio_test_uptodate.exit

bb.p:                                             ; preds = %bb.o
  %i.bm = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %.0, i64 0, ptr nonnull elementtype(i64) %.0) #15, !srcloc !92 ; 2 uses
  %i.bn = icmp ult i8 %i.bm, 2
  call void @llvm.assume(i1 %i.bn)
  %i.bo = trunc nuw i8 %i.bm to i1
  br i1 %i.bo, label %folio_test_uptodate.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = getelementptr i8, ptr %.0, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  %.not28 = icmp eq ptr %i.bq, %1
  br i1 %.not28, label %bb.r, label %folio_test_uptodate.exit35

bb.r:                                             ; preds = %bb.q
  %i.br = load volatile i64, ptr %.0, align 8
  %i.bs = and i64 %i.br, 8
  %.not55 = icmp eq i64 %i.bs, 0
  br i1 %.not55, label %folio_test_uptodate.exit35, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !90
  %i.bt = load ptr, ptr %1, align 8
  %i.bu = getelementptr i8, ptr %i.bt, i64 80
  %i.bv = load volatile i64, ptr %i.bu, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !124
  %i.bw = add i64 %i.bv, 4095
  %i.bx = lshr i64 %i.bw, 12
  %i.by = load i64, ptr %i.z, align 8
  %.not29 = icmp ult i64 %i.by, %i.bx
  br i1 %.not29, label %bb.aa, label %folio_test_uptodate.exit35

folio_test_uptodate.exit35:                       ; preds = %bb.r, %bb.s, %bb.q
  %i.bz = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xorb $2,$1", "={@ccs},=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %.0, i8 1, ptr nonnull elementtype(i8) %.0) #15, !srcloc !101 ; 2 uses
  %i.ca = icmp ult i8 %i.bz, 2
  call void @llvm.assume(i1 %i.ca)
  %i.cb = trunc nuw i8 %i.bz to i1
  br i1 %i.cb, label %bb.t, label %folio_test_uptodate.exit

bb.t:                                             ; preds = %folio_test_uptodate.exit35
  %i.cc = mul i64 %magicptr.i, 7046029254386353131
  %i.cd = lshr i64 %i.cc, 56
  %i.ce = getelementptr [24 x i8], ptr @folio_wait_table, i64 %i.cd ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store ptr %.0, ptr %3, align 8
  store i32 0, ptr %i.aa, align 8
  store i32 0, ptr %i.ab, align 4
  %i.cf = call i64 @_raw_spin_lock_irqsave(ptr noundef %i.ce) #14
  call void @__wake_up_locked_key(ptr noundef %i.ce, i32 noundef 3, ptr noundef nonnull %3) #14
  %i.cg = getelementptr i8, ptr %i.ce, i64 8      ; 2 uses
  %i.ch = load volatile ptr, ptr %i.cg, align 8
  %i.ci = icmp ne ptr %i.ch, %i.cg
  %i.cj = load i32, ptr %i.ab, align 4
  %i.ck = icmp ne i32 %i.cj, 0
  %or.cond.i.i = select i1 %i.ci, i1 %i.ck, i1 false
  br i1 %or.cond.i.i, label %folio_wake_bit.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %.0, i32 -129, ptr nonnull elementtype(i8) %.0) #15, !srcloc !63
  br label %folio_wake_bit.exit.i

folio_wake_bit.exit.i:                            ; preds = %bb.u, %bb.t
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.ce, i64 noundef %i.cf) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %folio_test_uptodate.exit

folio_test_uptodate.exit:                         ; preds = %folio_wake_bit.exit.i, %folio_test_uptodate.exit35, %bb.n, %bb.p, %bb.o, %xas_reload.exit, %folio_try_get.exit
  %i.cl = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ae, ptr elementtype(i32) %i.ae) #15, !srcloc !67 ; 2 uses
  %i.cm = icmp ult i8 %i.cl, 2
  call void @llvm.assume(i1 %i.cm)
  %.not.i36 = icmp eq i8 %i.cl, 0
  br i1 %.not.i36, label %folio_put.exit, label %bb.v

bb.v:                                             ; preds = %folio_test_uptodate.exit
  call void @__folio_put(ptr noundef nonnull %.0) #14
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i, %bb.i, %bb.h, %bb.g, %bb.v, %folio_test_uptodate.exit, %xas_retry.exit
  %i.cn = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = and i64 %i.co, 3
  %.not.i.i37 = icmp ne i64 %i.cp, 0
  %.not2.i.i38 = icmp eq ptr %i.cn, null
  %spec.select.i.i39 = or i1 %.not2.i.i38, %.not.i.i37
  br i1 %spec.select.i.i39, label %.loopexit.sink.split.i41, label %bb.w, !prof !22

bb.w:                                             ; preds = %folio_put.exit
  %i.cq = load i8, ptr %i.cn, align 8
  %.not.i40 = icmp eq i8 %i.cq, 0
  br i1 %.not.i40, label %bb.x, label %.loopexit.sink.split.i41, !prof !21

bb.x:                                             ; preds = %bb.w
  %i.cr = load i8, ptr %i.ac, align 2             ; 3 uses
  %i.cs = zext i8 %i.cr to i64
  %i.ct = load i64, ptr %i.z, align 8             ; 4 uses
  %i.cu = and i64 %i.ct, 63
  %.not27.i43 = icmp eq i64 %i.cu, %i.cs
  br i1 %.not27.i43, label %.preheader.i44, label %.loopexit.sink.split.i41, !prof !21

.preheader.i44:                                   ; preds = %bb.x
  %i.cv = getelementptr i8, ptr %i.cn, i64 48
  %umax.i45 = call i64 @llvm.umax.i64(i64 %i.ct, i64 %2)
  %exitcond.not.i4675 = icmp uge i64 %i.ct, %2
  %i.cw = icmp eq i8 %i.cr, 63
  %or.cond.i4776 = or i1 %exitcond.not.i4675, %i.cw
  br i1 %or.cond.i4776, label %.loopexit.sink.split.i41, label %.lr.ph77, !prof !55

bb.y:                                             ; preds = %bb.z
  %exitcond.not.i46 = icmp eq i64 %i.dh, %umax.i45
  %i.cx = icmp eq i8 %i.dg, 63
  %or.cond.i47 = or i1 %exitcond.not.i46, %i.cx
  br i1 %or.cond.i47, label %.loopexit.sink.split.i41, label %.lr.ph77, !prof !56, !llvm.loop !57

.lr.ph77:                                         ; preds = %.preheader.i44, %bb.y
  %i.cy = phi i64 [ %i.dh, %bb.y ], [ %i.ct, %.preheader.i44 ]
  %i.cz = phi i8 [ %i.dg, %bb.y ], [ %i.cr, %.preheader.i44 ] ; 2 uses
  %i.da = zext i8 %i.cz to i64
  %i.db = getelementptr [8 x i8], ptr %i.cv, i64 %i.da
  %i.dc = load volatile ptr, ptr %i.db, align 8   ; 3 uses
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = and i64 %i.dd, 3
  %i.df = icmp eq i64 %i.de, 2
  br i1 %i.df, label %.loopexit.sink.split.i41, label %bb.z, !prof !22

bb.z:                                             ; preds = %.lr.ph77
  %i.dg = add i8 %i.cz, 1                         ; 3 uses
  store i8 %i.dg, ptr %i.ac, align 2
  %i.dh = add i64 %i.cy, 1                        ; 3 uses
  store i64 %i.dh, ptr %i.z, align 8
  %.not26.i48 = icmp eq ptr %i.dc, null
  br i1 %.not26.i48, label %bb.y, label %xas_next_entry.exit49, !llvm.loop !57

.loopexit.sink.split.i41:                         ; preds = %bb.y, %.lr.ph77, %.preheader.i44, %bb.x, %bb.w, %folio_put.exit
  %i.di = call ptr @xas_find(ptr noundef %0, i64 noundef %2) #14
  br label %xas_next_entry.exit49

xas_next_entry.exit49:                            ; preds = %bb.z, %.loopexit.sink.split.i41
  %.0.i42 = phi ptr [ %i.di, %.loopexit.sink.split.i41 ], [ %i.dc, %bb.z ] ; 2 uses
  %.not30 = icmp eq ptr %.0.i42, null
  br i1 %.not30, label %bb.aa, label %bb.f, !llvm.loop !163

bb.aa:                                            ; preds = %xas_next_entry.exit49, %bb.s, %bb.f
  %.024 = phi ptr [ %.0, %bb.s ], [ null, %bb.f ], [ null, %xas_next_entry.exit49 ]
  ret ptr %.024
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @pte_offset_map_lock(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 256, 513) i32 @filemap_page_mkwrite(ptr nofree noundef readonly captures(none) %0) #1 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.wait_page_key, align 8      ; 6 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 88
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load volatile i64, ptr %i.h, align 8     ; 2 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = and i64 %i.i, 1
  %i.l = add nsw i64 %i.k, -1
  %i.m = or i64 %i.l, %i.i
  %i.n = and i64 %i.m, %i.j                       ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr                 ; 11 uses
  %i.p = load ptr, ptr %i.e, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 40
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 672      ; 2 uses
  %i.t = tail call i32 @__SCT__might_resched() #14 ; 0 uses
  tail call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #15, !srcloc !19
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !164
  %i.u = load volatile i32, ptr %i.s, align 8
  %.not.i.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %bb.b, label %bb.c, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr i8, ptr %i.r, i64 720
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  tail call void asm sideeffect "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.w, ptr elementtype(i32) %i.w) #15, !srcloc !165
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.x = tail call zeroext i1 @__percpu_down_read(ptr noundef %i.s, i1 noundef zeroext false, i1 noundef zeroext true) #14 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !166
  %i.y = tail call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #15, !srcloc !25 ; 2 uses
  %i.z = icmp ult i8 %i.y, 2
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = trunc nuw i8 %i.y to i1
  br i1 %i.aa, label %bb.e, label %sb_start_pagefault.exit, !prof !22

bb.e:                                             ; preds = %bb.d
  %i.ab = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.ac = tail call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.ab) #15, !srcloc !167
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.ac)
  br label %sb_start_pagefault.exit

sb_start_pagefault.exit:                          ; preds = %bb.d, %bb.e
  %i.ad = load ptr, ptr %0, align 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 88
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call i32 @file_update_time(ptr noundef %i.af) #14 ; 0 uses
  %i.ah = tail call i32 @__SCT__might_resched() #14 ; 0 uses
  %i.ai = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.o, i64 0, ptr elementtype(i64) %i.o) #15, !srcloc !92 ; 2 uses
  %i.aj = icmp ult i8 %i.ai, 2
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = trunc nuw i8 %i.ai to i1
  br i1 %i.ak, label %bb.f, label %folio_lock.exit

bb.f:                                             ; preds = %sb_start_pagefault.exit
  %i.al = tail call fastcc i32 @folio_wait_bit_common(ptr noundef %i.o, i32 noundef 0, i32 noundef 2, i32 noundef 0) #17, !srcloc !106 ; 0 uses
  br label %folio_lock.exit

folio_lock.exit:                                  ; preds = %sb_start_pagefault.exit, %bb.f
  %i.am = getelementptr i8, ptr %i.o, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  %.not = icmp eq ptr %i.an, %i.e
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %folio_lock.exit
  %i.ao = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xorb $2,$1", "={@ccs},=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.o, i8 1, ptr elementtype(i8) %i.o) #15, !srcloc !101 ; 2 uses
  %i.ap = icmp ult i8 %i.ao, 2
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = trunc nuw i8 %i.ao to i1
  br i1 %i.aq, label %bb.h, label %folio_unlock.exit

bb.h:                                             ; preds = %bb.g
  %i.ar = mul i64 %i.n, 7046029254386353131
  %i.as = lshr i64 %i.ar, 56
  %i.at = getelementptr [24 x i8], ptr @folio_wait_table, i64 %i.as ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  store ptr %i.o, ptr %1, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  store i32 0, ptr %i.av, align 4
  %i.aw = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.at) #14
  call void @__wake_up_locked_key(ptr noundef %i.at, i32 noundef 3, ptr noundef nonnull %1) #14
  %i.ax = getelementptr i8, ptr %i.at, i64 8      ; 2 uses
  %i.ay = load volatile ptr, ptr %i.ax, align 8
  %i.az = icmp ne ptr %i.ay, %i.ax
  %i.ba = load i32, ptr %i.av, align 4
  %i.bb = icmp ne i32 %i.ba, 0
  %or.cond.i.i = select i1 %i.az, i1 %i.bb, i1 false
  br i1 %or.cond.i.i, label %folio_wake_bit.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.o, i32 -129, ptr elementtype(i8) %i.o) #15, !srcloc !63
  br label %folio_wake_bit.exit.i

folio_wake_bit.exit.i:                            ; preds = %bb.i, %bb.h
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.at, i64 noundef %i.aw) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %folio_unlock.exit

bb.j:                                             ; preds = %folio_lock.exit
  %i.bc = tail call zeroext i1 @folio_mark_dirty(ptr noundef %i.o) #14 ; 0 uses
  tail call void @folio_wait_stable(ptr noundef %i.o) #14
  br label %folio_unlock.exit

folio_unlock.exit:                                ; preds = %folio_wake_bit.exit.i, %bb.g, %bb.j
  %.0 = phi i32 [ 512, %bb.j ], [ 256, %bb.g ], [ 256, %folio_wake_bit.exit.i ]
  %i.bd = load ptr, ptr %i.e, align 8
  %i.be = getelementptr i8, ptr %i.bd, i64 40
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 672    ; 2 uses
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #15, !srcloc !19
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !168
  %i.bh = load volatile i32, ptr %i.bg, align 8
  %.not.i.i.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l, !prof !21

bb.k:                                             ; preds = %folio_unlock.exit
  %i.bi = getelementptr i8, ptr %i.bf, i64 720
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  call void asm sideeffect "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bj, ptr elementtype(i32) %i.bj) #15, !srcloc !169
  br label %bb.m

bb.l:                                             ; preds = %folio_unlock.exit
  call void @__percpu_up_read(ptr noundef %i.bg) #14
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !170
  %i.bk = call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #15, !srcloc !25 ; 2 uses
  %i.bl = icmp ult i8 %i.bk, 2
  call void @llvm.assume(i1 %i.bl)
  %i.bm = trunc nuw i8 %i.bk to i1
  br i1 %i.bm, label %bb.n, label %sb_end_pagefault.exit, !prof !22

bb.n:                                             ; preds = %bb.m
  %i.bn = call i64 @llvm.read_register.i64(metadata !0)
  %i.bo = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.bn) #15, !srcloc !171
  call void @llvm.write_register.i64(metadata !0, i64 %i.bo)
  br label %sb_end_pagefault.exit

sb_end_pagefault.exit:                            ; preds = %bb.m, %bb.n
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @file_update_time(ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @folio_mark_dirty(ptr noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -8, 1) i32 @generic_file_mmap(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.d, align 8
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 40
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, 262144
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.c, label %file_accessed.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %0, i64 64
  tail call void @touch_atime(ptr noundef %i.i) #14
  br label %file_accessed.exit

file_accessed.exit:                               ; preds = %bb.b, %bb.c
  %i.j = getelementptr i8, ptr %1, i64 72
  store ptr @generic_file_vm_ops, ptr %i.j, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %file_accessed.exit
  %.0 = phi i32 [ 0, %file_accessed.exit ], [ -8, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -8, 1) i32 @generic_file_mmap_prepare(ptr nofree noundef captures(none) %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 96
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.f, align 8
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.b, i64 40
  %i.i = load i32, ptr %i.h, align 8
  %i.j = and i32 %i.i, 262144
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.c, label %file_accessed.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.b, i64 64
  tail call void @touch_atime(ptr noundef %i.k) #14
  br label %file_accessed.exit

file_accessed.exit:                               ; preds = %bb.b, %bb.c
  %i.l = getelementptr i8, ptr %0, i64 64
  store ptr @generic_file_vm_ops, ptr %i.l, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %file_accessed.exit
  %.0 = phi i32 [ 0, %file_accessed.exit ], [ -8, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @generic_file_readonly_mmap(ptr noundef %0, ptr nofree noundef captures(none) %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 32
  %.val = load i64, ptr %i.a, align 8
  %i.b = and i64 %.val, 40
  %.not.i.i.i = icmp eq i64 %i.b, 40
  br i1 %.not.i.i.i, label %generic_file_mmap.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 96
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.f, align 8
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %generic_file_mmap.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 40
  %i.i = load i32, ptr %i.h, align 8
  %i.j = and i32 %i.i, 262144
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %bb.d, label %file_accessed.exit.i

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %0, i64 64
  tail call void @touch_atime(ptr noundef %i.k) #14
  br label %file_accessed.exit.i

file_accessed.exit.i:                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr i8, ptr %1, i64 72
  store ptr @generic_file_vm_ops, ptr %i.l, align 8
  br label %generic_file_mmap.exit

generic_file_mmap.exit:                           ; preds = %file_accessed.exit.i, %bb.b, %bb.a
  %.0 = phi i32 [ -22, %bb.a ], [ 0, %file_accessed.exit.i ], [ -8, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @generic_file_readonly_mmap_prepare(ptr nofree noundef captures(none) %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %.pre.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.pre.i, 40
  %.not.i.i = icmp eq i64 %i.b, 40
  br i1 %.not.i.i, label %generic_file_mmap_prepare.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 96
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %i.h, align 8
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %generic_file_mmap_prepare.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.d, i64 40
  %i.k = load i32, ptr %i.j, align 8
  %i.l = and i32 %i.k, 262144
  %.not.i.i2 = icmp eq i32 %i.l, 0
  br i1 %.not.i.i2, label %bb.d, label %file_accessed.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.d, i64 64
  tail call void @touch_atime(ptr noundef %i.m) #14
  br label %file_accessed.exit.i

file_accessed.exit.i:                             ; preds = %bb.d, %bb.c
  %i.n = getelementptr i8, ptr %0, i64 64
  store ptr @generic_file_vm_ops, ptr %i.n, align 8
  br label %generic_file_mmap_prepare.exit

generic_file_mmap_prepare.exit:                   ; preds = %file_accessed.exit.i, %bb.b, %bb.a
  %.0 = phi i32 [ -22, %bb.a ], [ 0, %file_accessed.exit.i ], [ -8, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @read_cache_folio(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %.val = load i32, ptr %i.a, align 8
  %i.b = tail call fastcc ptr @do_read_cache_folio(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %.val) #17, !srcloc !172
  ret ptr %i.b
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @do_read_cache_folio(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3, i32 noundef %4) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %5 = alloca %struct.wait_page_key, align 8      ; 6 uses
  %6 = alloca %struct.wait_page_key, align 8      ; 6 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.042 = phi ptr [ %2, %bb.a ], [ %i.c, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %.not18.i = icmp eq ptr %3, null
  %i.f = getelementptr i8, ptr %3, i64 152        ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.c
  %i.g = call ptr @__filemap_get_folio_mpol(ptr noundef %0, i64 noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef null) #17 ; 25 uses
  %i.h = icmp ugt ptr %i.g, inttoptr (i64 -4096 to ptr)
  br i1 %i.h, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.backedge
  %i.i = call ptr @filemap_alloc_folio_noprof(i32 noundef %4, i32 noundef 0, ptr noundef null) #17 ; 5 uses
  %.not49 = icmp eq ptr %i.i, null
  br i1 %.not49, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = call i32 @filemap_add_folio(ptr noundef %0, ptr noundef nonnull %i.i, i64 noundef %1, i32 noundef %4) #17 ; 3 uses
  %.not50 = icmp eq i32 %i.j, 0
  br i1 %.not50, label %folio_test_uptodate.exit54, label %bb.f, !prof !21

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %i.i, i64 52       ; 2 uses
  %i.l = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.k, ptr elementtype(i32) %i.k) #15, !srcloc !67 ; 2 uses
  %i.m = icmp ult i8 %i.l, 2
  call void @llvm.assume(i1 %i.m)
  %.not.i = icmp eq i8 %i.l, 0
  br i1 %.not.i, label %folio_put.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @__folio_put(ptr noundef nonnull %i.i) #14
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %bb.f, %bb.g
  %i.n = icmp eq i32 %i.j, -17
  br i1 %i.n, label %.backedge.backedge, label %bb.h

bb.h:                                             ; preds = %folio_put.exit
  %i.o = sext i32 %i.j to i64
  %i.p = inttoptr i64 %i.o to ptr
  br label %.loopexit

bb.i:                                             ; preds = %.backedge
  %i.q = load volatile i64, ptr %i.g, align 8
  %i.r = and i64 %i.q, 8
  %.not64 = icmp eq i64 %i.r, 0
  br i1 %.not64, label %folio_test_uptodate.exit, label %folio_test_uptodate.exit.thread

folio_test_uptodate.exit.thread:                  ; preds = %bb.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !90
  br label %folio_unlock.exit57

folio_test_uptodate.exit:                         ; preds = %bb.i
  %i.s = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.g, i64 0, ptr elementtype(i64) %i.g) #15, !srcloc !92 ; 2 uses
  %i.t = icmp ult i8 %i.s, 2
  call void @llvm.assume(i1 %i.t)
  %i.u = trunc nuw i8 %i.s to i1
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %folio_test_uptodate.exit
  %i.v = call fastcc range(i32 -4, 1) i32 @folio_wait_bit_common(ptr noundef %i.g, i32 noundef 0, i32 noundef 2, i32 noundef 2) #17, !srcloc !133 ; 0 uses
  br label %.backedge.backedge

bb.k:                                             ; preds = %folio_test_uptodate.exit
  %i.w = getelementptr i8, ptr %i.g, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  %.not48 = icmp eq ptr %i.x, null
  br i1 %.not48, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.y = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xorb $2,$1", "={@ccs},=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.g, i8 1, ptr elementtype(i8) %i.g) #15, !srcloc !101 ; 2 uses
  %i.z = icmp ult i8 %i.y, 2
  call void @llvm.assume(i1 %i.z)
  %i.aa = trunc nuw i8 %i.y to i1
  br i1 %i.aa, label %bb.m, label %folio_unlock.exit

bb.m:                                             ; preds = %bb.l
  %i.ab = ptrtoint ptr %i.g to i64
  %i.ac = mul i64 %i.ab, 7046029254386353131
  %i.ad = lshr i64 %i.ac, 56
  %i.ae = getelementptr [24 x i8], ptr @folio_wait_table, i64 %i.ad ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store ptr %i.g, ptr %6, align 8
  store i32 0, ptr %i.d, align 8
  store i32 0, ptr %i.e, align 4
  %i.af = call i64 @_raw_spin_lock_irqsave(ptr noundef %i.ae) #14
  call void @__wake_up_locked_key(ptr noundef %i.ae, i32 noundef 3, ptr noundef nonnull %6) #14
  %i.ag = getelementptr i8, ptr %i.ae, i64 8      ; 2 uses
  %i.ah = load volatile ptr, ptr %i.ag, align 8
  %i.ai = icmp ne ptr %i.ah, %i.ag
  %i.aj = load i32, ptr %i.e, align 4
  %i.ak = icmp ne i32 %i.aj, 0
  %or.cond.i.i = select i1 %i.ai, i1 %i.ak, i1 false
  br i1 %or.cond.i.i, label %folio_wake_bit.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.g, i32 -129, ptr elementtype(i8) %i.g) #15, !srcloc !63
  br label %folio_wake_bit.exit.i

folio_wake_bit.exit.i:                            ; preds = %bb.n, %bb.m
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.ae, i64 noundef %i.af) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %folio_unlock.exit

folio_unlock.exit:                                ; preds = %bb.l, %folio_wake_bit.exit.i
  %i.al = getelementptr i8, ptr %i.g, i64 52      ; 2 uses
  %i.am = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.al, ptr elementtype(i32) %i.al) #15, !srcloc !67 ; 2 uses
  %i.an = icmp ult i8 %i.am, 2
  call void @llvm.assume(i1 %i.an)
  %.not.i52 = icmp eq i8 %i.am, 0
  br i1 %.not.i52, label %.backedge.backedge, label %bb.o

bb.o:                                             ; preds = %folio_unlock.exit
  call void @__folio_put(ptr noundef %i.g) #14
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.o, %folio_unlock.exit, %bb.j, %folio_put.exit, %folio_put.exit60
  br label %.backedge

bb.p:                                             ; preds = %bb.k
  %i.ao = load volatile i64, ptr %i.g, align 8
  %i.ap = and i64 %i.ao, 8
  %.not65 = icmp eq i64 %i.ap, 0
  br i1 %.not65, label %folio_test_uptodate.exit54, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !90
  %i.aq = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xorb $2,$1", "={@ccs},=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.g, i8 1, ptr elementtype(i8) %i.g) #15, !srcloc !101 ; 2 uses
  %i.ar = icmp ult i8 %i.aq, 2
  call void @llvm.assume(i1 %i.ar)
  %i.as = trunc nuw i8 %i.aq to i1
  br i1 %i.as, label %bb.r, label %folio_unlock.exit57

bb.r:                                             ; preds = %bb.q
  %i.at = ptrtoint ptr %i.g to i64
  %i.au = mul i64 %i.at, 7046029254386353131
  %i.av = lshr i64 %i.au, 56
  %i.aw = getelementptr [24 x i8], ptr @folio_wait_table, i64 %i.av ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr %i.g, ptr %5, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 0, ptr %i.ay, align 4
  %i.az = call i64 @_raw_spin_lock_irqsave(ptr noundef %i.aw) #14
  call void @__wake_up_locked_key(ptr noundef %i.aw, i32 noundef 3, ptr noundef nonnull %5) #14
  %i.ba = getelementptr i8, ptr %i.aw, i64 8      ; 2 uses
  %i.bb = load volatile ptr, ptr %i.ba, align 8
  %i.bc = icmp ne ptr %i.bb, %i.ba
  %i.bd = load i32, ptr %i.ay, align 4
  %i.be = icmp ne i32 %i.bd, 0
  %or.cond.i.i55 = select i1 %i.bc, i1 %i.be, i1 false
  br i1 %or.cond.i.i55, label %folio_wake_bit.exit.i56, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.g, i32 -129, ptr elementtype(i8) %i.g) #15, !srcloc !63
  br label %folio_wake_bit.exit.i56

folio_wake_bit.exit.i56:                          ; preds = %bb.s, %bb.r
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.aw, i64 noundef %i.az) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %folio_unlock.exit57

folio_test_uptodate.exit54:                       ; preds = %bb.p, %bb.e
  %.043 = phi ptr [ %i.i, %bb.e ], [ %i.g, %bb.p ] ; 8 uses
  %i.bf = load volatile i64, ptr %.043, align 8   ; 0 uses
  %i.bg = call i32 %.042(ptr noundef %3, ptr noundef %.043) #14, !inline_history !173 ; 2 uses
  %.not.i58 = icmp eq i32 %i.bg, 0
  br i1 %.not.i58, label %bb.t, label %bb.v

bb.t:                                             ; preds = %folio_test_uptodate.exit54
  %i.bh = load volatile i64, ptr %.043, align 8
  %i.bi = and i64 %i.bh, 1
  %.not.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i, label %folio_wait_locked_killable.exit.thread.i, label %folio_wait_locked_killable.exit.i

folio_wait_locked_killable.exit.i:                ; preds = %bb.t
  %i.bj = call fastcc range(i32 -4, 1) i32 @folio_wait_bit_common(ptr noundef %.043, i32 noundef 0, i32 noundef 258, i32 noundef 1) #17, !srcloc !100 ; 2 uses
  %.not17.i = icmp eq i32 %i.bj, 0
  br i1 %.not17.i, label %folio_wait_locked_killable.exit.thread.i, label %bb.v

folio_wait_locked_killable.exit.thread.i:         ; preds = %folio_wait_locked_killable.exit.i, %bb.t
  %i.bk = load volatile i64, ptr %.043, align 8
  %i.bl = and i64 %i.bk, 8
  %.not21.i = icmp eq i64 %i.bl, 0
  br i1 %.not21.i, label %folio_test_uptodate.exit.i, label %filemap_read_folio.exit

folio_test_uptodate.exit.i:                       ; preds = %folio_wait_locked_killable.exit.thread.i
  br i1 %.not18.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %folio_test_uptodate.exit.i
  %i.bm = load i32, ptr %i.f, align 8
  %i.bn = lshr i32 %i.bm, 2
  store i32 %i.bn, ptr %i.f, align 8
  br label %bb.v

filemap_read_folio.exit:                          ; preds = %folio_wait_locked_killable.exit.thread.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !90
  br label %folio_unlock.exit57

bb.v:                                             ; preds = %folio_test_uptodate.exit54, %folio_wait_locked_killable.exit.i, %bb.u, %folio_test_uptodate.exit.i
  %.0.i.ph = phi i32 [ -5, %folio_test_uptodate.exit.i ], [ -5, %bb.u ], [ %i.bj, %folio_wait_locked_killable.exit.i ], [ %i.bg, %folio_test_uptodate.exit54 ] ; 2 uses
  %i.bo = getelementptr i8, ptr %.043, i64 52     ; 2 uses
  %i.bp = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bo, ptr elementtype(i32) %i.bo) #15, !srcloc !67 ; 2 uses
  %i.bq = icmp ult i8 %i.bp, 2
  call void @llvm.assume(i1 %i.bq)
  %.not.i59 = icmp eq i8 %i.bp, 0
  br i1 %.not.i59, label %folio_put.exit60, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @__folio_put(ptr noundef %.043) #14
  br label %folio_put.exit60

folio_put.exit60:                                 ; preds = %bb.v, %bb.w
  %i.br = icmp eq i32 %.0.i.ph, 524289
  br i1 %i.br, label %.backedge.backedge, label %bb.x

bb.x:                                             ; preds = %folio_put.exit60
  %i.bs = sext i32 %.0.i.ph to i64
  %i.bt = inttoptr i64 %i.bs to ptr
  br label %.loopexit

folio_unlock.exit57:                              ; preds = %filemap_read_folio.exit, %folio_wake_bit.exit.i56, %bb.q, %folio_test_uptodate.exit.thread
  %.144 = phi ptr [ %.043, %filemap_read_folio.exit ], [ %i.g, %folio_test_uptodate.exit.thread ], [ %i.g, %bb.q ], [ %i.g, %folio_wake_bit.exit.i56 ] ; 2 uses
  call void @folio_mark_accessed(ptr noundef %.144) #14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %folio_unlock.exit57, %bb.x, %bb.h
  %.0 = phi ptr [ %i.p, %bb.h ], [ %i.bt, %bb.x ], [ %.144, %folio_unlock.exit57 ], [ inttoptr (i64 -12 to ptr), %bb.d ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @mapping_read_folio_gfp(ptr noundef %0, i64 noundef %1, i32 noundef %2) #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc ptr @do_read_cache_folio(ptr noundef %0, i64 noundef %1, ptr noundef null, ptr noundef null, i32 noundef %2) #17, !srcloc !174
  ret ptr %i.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @read_cache_page(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %.val = load i32, ptr %i.a, align 8
  %i.b = tail call fastcc ptr @do_read_cache_folio(ptr noundef %0, i64 noundef %1, ptr noundef readonly %2, ptr noundef %3, i32 noundef %.val) #17, !srcloc !175 ; 5 uses
  %i.c = icmp ugt ptr %i.b, inttoptr (i64 -4096 to ptr)
  br i1 %i.c, label %do_read_cache_page.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load volatile i64, ptr %i.b, align 8
  %i.e = and i64 %i.d, 64
  %.not.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i, label %folio_file_page.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.b, i64 64
  %.val.i.i.i = load i64, ptr %i.f, align 16
  %i.g = and i64 %.val.i.i.i, 255
  %notmask.i.i = shl nsw i64 -1, %i.g
  %i.h = xor i64 %notmask.i.i, -1
  %i.i = and i64 %1, %i.h
  br label %folio_file_page.exit.i

folio_file_page.exit.i:                           ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ]
  %i.j = getelementptr [64 x i8], ptr %i.b, i64 %.0.i.i.i
  br label %do_read_cache_page.exit

do_read_cache_page.exit:                          ; preds = %bb.a, %folio_file_page.exit.i
  %.0.i = phi ptr [ %i.j, %folio_file_page.exit.i ], [ %i.b, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @read_cache_page_gfp(ptr noundef %0, i64 noundef %1, i32 noundef %2) #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc ptr @do_read_cache_folio(ptr noundef %0, i64 noundef %1, ptr noundef null, ptr noundef null, i32 noundef %2) #17, !srcloc !175 ; 5 uses
  %i.b = icmp ugt ptr %i.a, inttoptr (i64 -4096 to ptr)
  br i1 %i.b, label %do_read_cache_page.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load volatile i64, ptr %i.a, align 8
  %i.d = and i64 %i.c, 64
  %.not.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i, label %folio_file_page.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.a, i64 64
  %.val.i.i.i = load i64, ptr %i.e, align 16
  %i.f = and i64 %.val.i.i.i, 255
  %notmask.i.i = shl nsw i64 -1, %i.f
  %i.g = xor i64 %notmask.i.i, -1
  %i.h = and i64 %1, %i.g
  br label %folio_file_page.exit.i

folio_file_page.exit.i:                           ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi i64 [ %i.h, %bb.c ], [ 0, %bb.b ]
  %i.i = getelementptr [64 x i8], ptr %i.a, i64 %.0.i.i.i
  br label %do_read_cache_page.exit

do_read_cache_page.exit:                          ; preds = %bb.a, %folio_file_page.exit.i
  %.0.i = phi ptr [ %i.i, %folio_file_page.exit.i ], [ %i.a, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @kiocb_invalidate_post_direct_write(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 80
  %i.f = load i64, ptr %i.e, align 8
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = ashr i64 %i.h, 12
  %i.j = add i64 %1, -1
  %i.k = add i64 %i.j, %i.h
  %i.l = lshr i64 %i.k, 12
  %i.m = tail call i32 @invalidate_inode_pages2_range(ptr noundef %i.d, i64 noundef %i.i, i64 noundef %i.l) #14
  %.not6 = icmp eq i32 %i.m, 0
  br i1 %.not6, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %0, align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.o = getelementptr i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 112
  %i.r = tail call i32 @errseq_set(ptr noundef %i.q, i32 noundef -5) #14 ; 0 uses
  %i.s = tail call i32 @___ratelimit(ptr noundef nonnull @dio_warn_stale_pagecache._rs, ptr noundef nonnull @__func__.dio_warn_stale_pagecache) #14
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %dio_warn_stale_pagecache.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false), !annotation !23
  %i.t = call ptr @file_path(ptr noundef %i.n, ptr noundef nonnull %i.a, i32 noundef 128) #14 ; 2 uses
  %i.u = icmp ugt ptr %i.t, inttoptr (i64 -4096 to ptr)
  %spec.select.i = select i1 %i.u, ptr @.str.38, ptr %i.t
  %i.v = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #19 ; 0 uses
  %i.w = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #18, !srcloc !41
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 1528
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = getelementptr i8, ptr %i.x, i64 2008
  %i.ab = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %spec.select.i, i32 noundef %i.z, ptr noundef %i.aa) #19 ; 0 uses
  br label %dio_warn_stale_pagecache.exit

dio_warn_stale_pagecache.exit:                    ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.e

bb.e:                                             ; preds = %dio_warn_stale_pagecache.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @generic_file_direct_write(ptr noundef %0, ptr noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %.val37 = load i64, ptr %i.d, align 8           ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = add i64 %.val37, -1
  %i.h = add i64 %i.g, %i.f
  %i.i = getelementptr i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8
  %i.k = and i32 %i.j, 8
  %i.l = icmp ne i32 %i.k, 0
  %i.m = tail call i32 @filemap_invalidate_pages(ptr noundef %i.c, i64 noundef %i.f, i64 noundef %i.h, i1 noundef zeroext %i.l) #17 ; 2 uses
  switch i32 %i.m, label %bb.b [
    i32 0, label %bb.c
    i32 -16, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.n = sext i32 %i.m to i64
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %i.c, i64 96
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 80
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call i64 %i.r(ptr noundef %0, ptr noundef %1) #14 ; 6 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.v = load i64, ptr %i.e, align 8
  tail call void @kiocb_invalidate_post_direct_write(ptr noundef %0, i64 noundef %i.s) #17
  %i.w = add i64 %i.v, %i.s                       ; 3 uses
  %i.x = sub i64 %.val37, %i.s
  %i.y = getelementptr i8, ptr %i.u, i64 80       ; 2 uses
  %i.z = load volatile i64, ptr %i.y, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !124
  %i.aa = icmp sgt i64 %i.w, %i.z
  br i1 %i.aa, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ab = load i16, ptr %i.u, align 8
  %i.ac = and i16 %i.ab, -4096
  %i.ad = icmp eq i16 %i.ac, 24576
  br i1 %i.ad, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !176
  store volatile i64 %i.w, ptr %i.y, align 8
  tail call void @__mark_inode_dirty(ptr noundef %i.u, i32 noundef 112) #14
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %bb.f
  store i64 %i.w, ptr %i.e, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %.not36 = icmp eq i64 %i.s, -529
  br i1 %.not36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %.03240 = phi i64 [ %i.x, %.thread ], [ %.val37, %bb.g ]
  %.val = load i64, ptr %i.d, align 8
  %i.ae = sub i64 %.03240, %.val
  tail call void @iov_iter_revert(ptr noundef %1, i64 noundef %i.ae) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.a, %bb.b
  %.0 = phi i64 [ 0, %bb.a ], [ %i.n, %bb.b ], [ %i.s, %bb.h ], [ -529, %bb.g ]
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @generic_perform_write(ptr noundef %0, ptr noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.c, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 5 uses
  %i.h = getelementptr i8, ptr %i.g, i64 96
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.k = getelementptr i8, ptr %i.i, i64 32
  %i.l = getelementptr i8, ptr %i.g, i64 60
  %i.m = getelementptr i8, ptr %i.i, i64 40
  %.val94.pre = load i64, ptr %i.j, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.o, %bb.a
  %.val94 = phi i64 [ %.val94.pre, %bb.a ], [ %.val, %bb.o ]
  %.077 = phi i64 [ 0, %bb.a ], [ %.279, %bb.o ]  ; 3 uses
  %.071 = phi i64 [ %i.e, %bb.a ], [ %.2, %bb.o ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8, !annotation !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store ptr null, ptr %i.b, align 8
  %i.n = and i64 %.071, 4095
  %i.o = sub nuw nsw i64 4096, %i.n
  br label %task_sigpending.exit.i

task_sigpending.exit.i:                           ; preds = %bb.l, %bb.b
  %.080 = phi i64 [ %.val94, %bb.b ], [ %i.ax, %bb.l ]
  %i.p = call i64 @llvm.umin.i64(i64 %i.o, i64 %.080) ; 3 uses
  call void @balance_dirty_pages_ratelimited(ptr noundef %i.g) #14
  %i.q = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #18, !srcloc !41
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %i.s = load volatile i64, ptr %i.r, align 8
  %i.t = and i64 %i.s, 2
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %fatal_signal_pending.exit.thread, label %fatal_signal_pending.exit

fatal_signal_pending.exit:                        ; preds = %task_sigpending.exit.i
  %i.u = getelementptr i8, ptr %i.r, i64 2152
  %.val.i = load i64, ptr %i.u, align 8
  %i.v = and i64 %.val.i, 256
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %fatal_signal_pending.exit.thread, label %.thread

fatal_signal_pending.exit.thread:                 ; preds = %task_sigpending.exit.i, %fatal_signal_pending.exit
  %i.w = load ptr, ptr %i.k, align 8
  %i.x = trunc nuw nsw i64 %i.p to i32            ; 2 uses
  %i.y = call i32 %i.w(ptr noundef %0, ptr noundef %i.g, i64 noundef %.071, i32 noundef %i.x, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #14 ; 2 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.c, label %bb.d, !prof !22

bb.c:                                             ; preds = %fatal_signal_pending.exit.thread
  %i.aa = sext i32 %i.y to i64
  br label %.thread

bb.d:                                             ; preds = %fatal_signal_pending.exit.thread
  %i.ab = load ptr, ptr %i.a, align 8             ; 7 uses
  %i.ac = load volatile i64, ptr %i.ab, align 8
  %i.ad = and i64 %i.ac, 64
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %folio_size.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr i8, ptr %i.ab, i64 64
  %.val.i.i = load i64, ptr %i.ae, align 16
  %i.af = and i64 %.val.i.i, 255
  br label %folio_size.exit

folio_size.exit:                                  ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.af, %bb.e ], [ 0, %bb.d ]
  %i.ag = shl i64 4096, %.0.i.i
  %i.ah = add i64 %i.ag, -1
  %i.ai = and i64 %i.ah, %.071                    ; 3 uses
  %i.aj = load volatile i64, ptr %i.ab, align 8
  %i.ak = and i64 %i.aj, 64
  %.not.i.i95 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i95, label %folio_size.exit98, label %bb.f

bb.f:                                             ; preds = %folio_size.exit
  %i.al = getelementptr i8, ptr %i.ab, i64 64
  %.val.i.i96 = load i64, ptr %i.al, align 16
  %i.am = and i64 %.val.i.i96, 255
  br label %folio_size.exit98

folio_size.exit98:                                ; preds = %folio_size.exit, %bb.f
  %.0.i.i97 = phi i64 [ %i.am, %bb.f ], [ 0, %folio_size.exit ]
  %i.an = shl i64 4096, %.0.i.i97
  %i.ao = sub i64 %i.an, %i.ai
  %i.ap = icmp ugt i64 %i.p, %i.ao
  br i1 %i.ap, label %bb.g, label %bb.i

bb.g:                                             ; preds = %folio_size.exit98
  %i.aq = load volatile i64, ptr %i.ab, align 8
  %i.ar = and i64 %i.aq, 64
  %.not.i.i99 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i99, label %folio_size.exit102, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr i8, ptr %i.ab, i64 64
  %.val.i.i100 = load i64, ptr %i.as, align 16
  %i.at = and i64 %.val.i.i100, 255
  br label %folio_size.exit102

folio_size.exit102:                               ; preds = %bb.g, %bb.h
  %.0.i.i101 = phi i64 [ %i.at, %bb.h ], [ 0, %bb.g ]
  %i.au = shl i64 4096, %.0.i.i101
  %i.av = sub i64 %i.au, %i.ai                    ; 2 uses
  %.pre = trunc i64 %i.av to i32
  br label %bb.i

bb.i:                                             ; preds = %folio_size.exit102, %folio_size.exit98
  %.pre-phi = phi i32 [ %.pre, %folio_size.exit102 ], [ %i.x, %folio_size.exit98 ]
  %.181 = phi i64 [ %i.av, %folio_size.exit102 ], [ %i.p, %folio_size.exit98 ] ; 3 uses
  %i.aw = load volatile i32, ptr %i.l, align 4    ; 0 uses
  %i.ax = call i64 @copy_folio_from_iter_atomic(ptr noundef %i.ab, i64 noundef %i.ai, i64 noundef %.181, ptr noundef %1) #14 ; 5 uses
  %i.ay = load ptr, ptr %i.m, align 8
  %i.az = trunc i64 %i.ax to i32
  %i.ba = load ptr, ptr %i.a, align 8
  %i.bb = load ptr, ptr %i.b, align 8
  %i.bc = call i32 %i.ay(ptr noundef %0, ptr noundef %i.g, i64 noundef %.071, i32 noundef %.pre-phi, i32 noundef %i.az, ptr noundef %i.ba, ptr noundef %i.bb) #14 ; 3 uses
  %i.bd = sext i32 %i.bc to i64                   ; 6 uses
  %.not89 = icmp eq i64 %i.ax, %i.bd
  br i1 %.not89, label %bb.k, label %bb.j, !prof !21

bb.j:                                             ; preds = %bb.i
  %i.be = call i64 @llvm.smax.i64(i64 %i.bd, i64 0)
  %i.bf = sub i64 %i.ax, %i.be
  call void @iov_iter_revert(ptr noundef %1, i64 noundef %i.bf) #14
  %i.bg = icmp slt i32 %i.bc, 0
  br i1 %i.bg, label %.thread, label %bb.k, !prof !22

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bh = call i32 @__SCT__cond_resched() #14     ; 0 uses
  %i.bi = icmp eq i32 %i.bc, 0
  br i1 %i.bi, label %bb.l, label %bb.n, !prof !22

bb.l:                                             ; preds = %bb.k
  %.not90 = icmp eq i64 %i.ax, 0
  br i1 %.not90, label %bb.m, label %task_sigpending.exit.i

bb.m:                                             ; preds = %bb.l
  %i.bj = call i64 @fault_in_iov_iter_readable(ptr noundef %1, i64 noundef %.181) #14
  %i.bk = icmp eq i64 %i.bj, %.181
  br i1 %i.bk, label %.thread, label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.bl = add i64 %.071, %i.bd
  %i.bm = add i64 %.077, %i.bd
  br label %bb.o

.thread:                                          ; preds = %bb.m, %fatal_signal_pending.exit, %bb.j, %bb.c
  %.075.ph = phi i64 [ %i.aa, %bb.c ], [ %i.bd, %bb.j ], [ -4, %fatal_signal_pending.exit ], [ -14, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %.loopexit

bb.o:                                             ; preds = %bb.n, %bb.m
  %.279 = phi i64 [ %.077, %bb.m ], [ %i.bm, %bb.n ] ; 2 uses
  %.2 = phi i64 [ %.071, %bb.m ], [ %i.bl, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %.val = load i64, ptr %i.j, align 8             ; 2 uses
  %.not91 = icmp eq i64 %.val, 0
  br i1 %.not91, label %.loopexit, label %bb.b, !llvm.loop !177

.loopexit:                                        ; preds = %bb.o, %.thread
  %.075109 = phi i64 [ %.075.ph, %.thread ], [ %i.bd, %bb.o ]
  %.279108 = phi i64 [ %.077, %.thread ], [ %.279, %bb.o ] ; 3 uses
  %.not92 = icmp eq i64 %.279108, 0
  br i1 %.not92, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.loopexit
  %i.bn = load i64, ptr %i.d, align 8
  %i.bo = add i64 %i.bn, %.279108
  store i64 %i.bo, ptr %i.d, align 8
  br label %bb.q

bb.q:                                             ; preds = %.loopexit, %bb.p
  %.0 = phi i64 [ %.279108, %bb.p ], [ %.075109, %.loopexit ]
  ret i64 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @balance_dirty_pages_ratelimited(ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @copy_folio_from_iter_atomic(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @fault_in_iov_iter_readable(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @__generic_file_write_iter(ptr noundef %0, ptr noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = tail call i32 @file_remove_privs(ptr noundef %i.a) #14 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %i.b to i64
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @file_update_time(ptr noundef %i.a) #14 ; 2 uses
  %.not26 = icmp eq i32 %i.d, 0
  br i1 %.not26, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = sext i32 %i.d to i64
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, 131072
  %.not27 = icmp eq i32 %i.h, 0
  br i1 %.not27, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i64 @generic_file_direct_write(ptr noundef %0, ptr noundef %1) #17 ; 4 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr i8, ptr %1, i64 24
  %.val = load i64, ptr %i.k, align 8
  %.not28 = icmp eq i64 %.val, 0
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = tail call i64 @generic_perform_write(ptr noundef %0, ptr noundef %1) #17
  %i.m = tail call i64 @direct_write_fallback(ptr noundef %0, ptr noundef %1, i64 noundef %i.i, i64 noundef %i.l) #14
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.n = tail call i64 @generic_perform_write(ptr noundef %0, ptr noundef %1) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.i, %bb.h, %bb.d, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ %i.e, %bb.d ], [ %i.n, %bb.i ], [ %i.m, %bb.h ], [ %i.i, %bb.g ], [ %i.i, %bb.f ]
  ret i64 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @file_remove_privs(ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @direct_write_fallback(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @generic_file_write_iter(ptr noundef %0, ptr noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 152      ; 3 uses
  tail call void @down_write(ptr noundef %i.e) #14
  %i.f = tail call i64 @generic_write_checks(ptr noundef %0, ptr noundef %1) #14 ; 2 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  tail call void @up_write(ptr noundef %i.e) #14
  br label %generic_write_sync.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i64 @__generic_file_write_iter(ptr noundef %0, ptr noundef %1) #17 ; 4 uses
  tail call void @up_write(ptr noundef %i.e) #14
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %generic_write_sync.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %0, i64 32
  %i.k = load i32, ptr %i.j, align 8              ; 3 uses
  %i.l = and i32 %i.k, 2
  %.not.i.i = icmp eq i32 %i.l, 0
  %.pre.i = load ptr, ptr %0, align 8             ; 2 uses
  br i1 %.not.i.i, label %bb.d, label %iocb_is_dsync.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %.pre.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 40
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 80
  %i.s = load i64, ptr %i.r, align 16
  %i.t = and i64 %i.s, 16
  %.not3.i.i = icmp eq i64 %i.t, 0
  br i1 %.not3.i.i, label %iocb_is_dsync.exit.i, label %iocb_is_dsync.exit.thread.i

iocb_is_dsync.exit.i:                             ; preds = %bb.d
  %i.u = getelementptr i8, ptr %i.o, i64 4
  %i.v = load i32, ptr %i.u, align 4
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %iocb_is_dsync.exit.thread.i, label %bb.e

iocb_is_dsync.exit.thread.i:                      ; preds = %iocb_is_dsync.exit.i, %bb.d, %bb.c
  %i.x = getelementptr i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = sub i64 %i.y, %i.h
  %i.aa = add i64 %i.y, -1
  %i.ab = lshr i32 %i.k, 2
  %.lobit.i = and i32 %i.ab, 1
  %i.ac = xor i32 %.lobit.i, 1
  %i.ad = tail call i32 @vfs_fsync_range(ptr noundef %.pre.i, i64 noundef %i.z, i64 noundef %i.aa, i32 noundef %i.ac) #14 ; 2 uses
  %.not15.not.i = icmp eq i32 %i.ad, 0
  %i.ae = sext i32 %i.ad to i64
  br i1 %.not15.not.i, label %bb.g, label %generic_write_sync.exit

bb.e:                                             ; preds = %iocb_is_dsync.exit.i
  %i.af = and i32 %i.k, 128
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @filemap_dontcache_kick_writeback(ptr noundef %i.n) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %iocb_is_dsync.exit.thread.i
  br label %generic_write_sync.exit

generic_write_sync.exit:                          ; preds = %bb.g, %iocb_is_dsync.exit.thread.i, %.thread, %bb.b
  %.1 = phi i64 [ %i.f, %.thread ], [ %i.h, %bb.b ], [ %i.h, %bb.g ], [ %i.ae, %iocb_is_dsync.exit.thread.i ]
  ret i64 %.1
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @generic_write_checks(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local zeroext i1 @filemap_release_folio(ptr noundef %0, i32 noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load volatile i64, ptr %0, align 8
  %i.d = and i64 %i.c, 1
  %.not14 = icmp eq i64 %i.d, 0
  br i1 %.not14, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "940: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 940b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 940) #15, !srcloc !178
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 4531, i32 0, i64 16) #15, !srcloc !179
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @folio_mapping(ptr noundef %0) #14 ; 2 uses
  %.val.i = load i64, ptr %0, align 16
  %i.f = and i64 %.val.i, 49152
  %.not5.i = icmp eq i64 %i.f, 0
  br i1 %.not5.i, label %bb.d, label %folio_needs_release.exit.thread

bb.d:                                             ; preds = %bb.c
  %.not4.i = icmp eq ptr %i.e, null
  br i1 %.not4.i, label %folio_needs_release.exit.thread13, label %folio_needs_release.exit

folio_needs_release.exit:                         ; preds = %bb.d
  %i.g = getelementptr i8, ptr %i.e, i64 104
  %i.h = load volatile i64, ptr %i.g, align 8
  %.in.in.i.i = and i64 %i.h, 64
  %.in.i.i.not = icmp eq i64 %.in.in.i.i, 0
  br i1 %.in.i.i.not, label %folio_needs_release.exit.thread13, label %folio_needs_release.exit.thread

folio_needs_release.exit.thread:                  ; preds = %bb.c, %folio_needs_release.exit
  %i.i = load volatile i64, ptr %0, align 16
  %i.j = and i64 %i.i, 2
  %.not15 = icmp eq i64 %i.j, 0
  br i1 %.not15, label %bb.e, label %folio_needs_release.exit.thread13

bb.e:                                             ; preds = %folio_needs_release.exit.thread
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %i.b, i64 96
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 64
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not12 = icmp eq ptr %i.n, null
  br i1 %.not12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call zeroext i1 %i.n(ptr noundef %0, i32 noundef %1) #14
  br label %folio_needs_release.exit.thread13

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.p = tail call zeroext i1 @try_to_free_buffers(ptr noundef %0) #14
  br label %folio_needs_release.exit.thread13

folio_needs_release.exit.thread13:                ; preds = %bb.d, %folio_needs_release.exit.thread, %folio_needs_release.exit, %bb.h, %bb.g
  %.0 = phi i1 [ true, %folio_needs_release.exit ], [ %i.o, %bb.g ], [ %i.p, %bb.h ], [ false, %folio_needs_release.exit.thread ], [ true, %bb.d ]
  ret i1 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @try_to_free_buffers(ptr noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -28, 1) i32 @filemap_invalidate_inode(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3) #1 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.writeback_control, align 8  ; 8 uses
  %i.a = getelementptr i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8              ; 9 uses
  %i.c = ashr i64 %2, 12                          ; 2 uses
  %i.d = ashr i64 %3, 12
  %i.e = icmp eq i64 %3, 9223372036854775807
  %reass.sub = sub nsw i64 %i.d, %i.c
  %i.f = add nsw i64 %reass.sub, 1
  %i.g = select i1 %i.e, i64 -1, i64 %i.f
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.b, i64 80       ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %.not25 = icmp eq i64 %i.i, 0
  %i.j = icmp slt i64 %3, %2
  %or.cond = or i1 %i.j, %.not25
  br i1 %or.cond, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.b, i64 24       ; 2 uses
  tail call void @down_write(ptr noundef %i.k) #14
  %i.l = load i64, ptr %i.h, align 8
  %.not26 = icmp eq i64 %i.l, 0
  br i1 %.not26, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @unmap_mapping_pages(ptr noundef nonnull %i.b, i64 noundef %i.c, i64 noundef %i.g, i1 noundef zeroext false) #14
  br i1 %1, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.m, i8 0, i64 304, i1 false)
  store i64 9223372036854775807, ptr %4, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %2, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %3, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 1, ptr %i.p, align 8
  %.val.i.i = load ptr, ptr %i.b, align 8
  %i.q = tail call ptr @inode_to_bdi(ptr noundef %.val.i.i) #14
  %i.r = getelementptr i8, ptr %i.q, i64 68
  %i.s = load i32, ptr %i.r, align 4
  %i.t = trunc i32 %i.s to i1
  br i1 %i.t, label %bb.f, label %filemap_fdatawrite_range.exit

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr i8, ptr %i.b, i64 12
  %.val15.i.i = load i32, ptr %i.u, align 4
  %i.v = and i32 %.val15.i.i, 33554432
  %.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i, label %filemap_fdatawrite_range.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = call i32 @do_writepages(ptr noundef nonnull %i.b, ptr noundef nonnull %4) #14 ; 0 uses
  br label %filemap_fdatawrite_range.exit

filemap_fdatawrite_range.exit:                    ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.h

bb.h:                                             ; preds = %filemap_fdatawrite_range.exit, %bb.d
  %i.x = lshr i64 %2, 12
  %i.y = lshr i64 %3, 12
  %i.z = call i32 @invalidate_inode_pages2_range(ptr noundef nonnull %i.b, i64 noundef %i.x, i64 noundef %i.y) #14 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.h
  call void @up_write(ptr noundef %i.k) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.b, %bb.i
  %i.aa = getelementptr i8, ptr %i.b, i64 104     ; 6 uses
  %i.ab = load volatile i64, ptr %i.aa, align 8
  %i.ac = and i64 %i.ab, 2
  %.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btrq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.aa, i64 1, ptr elementtype(i64) %i.aa) #15, !srcloc !60 ; 2 uses
  %i.ae = icmp ult i8 %i.ad, 2
  call void @llvm.assume(i1 %i.ae)
  %i.af = trunc nuw i8 %i.ad to i1
  %spec.select.i = select i1 %i.af, i32 -28, i32 0
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.0.i = phi i32 [ 0, %bb.j ], [ %spec.select.i, %bb.k ] ; 2 uses
  %i.ag = load volatile i64, ptr %i.aa, align 8
  %i.ah = and i64 %i.ag, 1
  %.not21.i = icmp eq i64 %i.ah, 0
  br i1 %.not21.i, label %filemap_check_errors.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btrq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.aa, i64 0, ptr elementtype(i64) %i.aa) #15, !srcloc !60 ; 2 uses
  %i.aj = icmp ult i8 %i.ai, 2
  call void @llvm.assume(i1 %i.aj)
  %i.ak = trunc nuw i8 %i.ai to i1
  %spec.select19.i = select i1 %i.ak, i32 -5, i32 %.0.i
  br label %filemap_check_errors.exit

filemap_check_errors.exit:                        ; preds = %bb.l, %bb.m
  %.1.i = phi i32 [ %.0.i, %bb.l ], [ %spec.select19.i, %bb.m ]
  ret i32 %.1.i
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @unmap_mapping_pages(ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -95, 1) i64 @__x64_sys_cachestat(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 104
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %0, i64 56
  %i.h = load i64, ptr %i.g, align 8
  %i.i = tail call fastcc i64 @__se_sys_cachestat(i64 noundef %i.b, i64 noundef %i.d, i64 noundef %i.f, i64 noundef %i.h) #17, !srcloc !180
  ret i64 %i.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i64 -95, 1) i64 @__se_sys_cachestat(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.xa_state, align 8           ; 14 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %5 = alloca %struct.cachestat_range, align 8    ; 7 uses
  %6 = alloca %struct.cachestat, align 8          ; 11 uses
  %i.b = trunc i64 %0 to i32
  %i.c = inttoptr i64 %2 to ptr
  %i.d = tail call i64 @fdget(i32 noundef %i.b) #14 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %.thread.i, label %copy_from_user.exit.i

.thread.i:                                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %__do_sys_cachestat.exit

copy_from_user.exit.i:                            ; preds = %bb.a
  %i.e = inttoptr i64 %1 to ptr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !annotation !23
  %i.f = call i64 @_copy_from_user(ptr noundef nonnull %5, ptr noundef %i.e, i64 noundef 16) #14
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.b, label %bb.w

bb.b:                                             ; preds = %copy_from_user.exit.i
  %i.g = and i64 %i.d, -4
  %i.h = inttoptr i64 %i.g to ptr                 ; 5 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val.i = load ptr, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %.val.i, i64 8
  %.val.val.i = load i32, ptr %i.j, align 8
  %i.k = and i32 %.val.val.i, 16
  %.not29.i = icmp eq i32 %i.k, 0
  br i1 %.not29.i, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.h, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %i.n = and i32 %i.m, 2
  %.not.i14.i = icmp eq i32 %i.n, 0
  br i1 %.not.i14.i, label %bb.d, label %can_do_cachestat.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %i.h, i64 64       ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 24
  %i.r = load volatile ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.h, i64 32       ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.s, align 8
  %i.t = call zeroext i1 @inode_owner_or_capable(ptr noundef %i.r, ptr noundef %.val.i.i.i) #14
  br i1 %i.t, label %can_do_cachestat.exit.thread.i, label %can_do_cachestat.exit.i

can_do_cachestat.exit.i:                          ; preds = %bb.d
  %i.u = load ptr, ptr %i.o, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 24
  %i.w = load volatile ptr, ptr %i.v, align 8
  %.val.i4.i.i = load ptr, ptr %i.s, align 8
  %i.x = call i32 @inode_permission(ptr noundef %i.w, ptr noundef %.val.i4.i.i, i32 noundef 2) #14
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %can_do_cachestat.exit.thread.i, label %bb.w

can_do_cachestat.exit.thread.i:                   ; preds = %can_do_cachestat.exit.i, %bb.d, %bb.c
  %i.z = and i64 %3, 4294967295
  %.not8.i = icmp eq i64 %i.z, 0
  br i1 %.not8.i, label %copy_to_user.exit.i, label %bb.w

copy_to_user.exit.i:                              ; preds = %can_do_cachestat.exit.thread.i
  %i.aa = load i64, ptr %5, align 8               ; 2 uses
  %i.ab = lshr i64 %i.aa, 12                      ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = add i64 %i.aa, -1
  %i.ag = add i64 %i.af, %i.ad
  %i.ah = lshr i64 %i.ag, 12
  %i.ai = select i1 %i.ae, i64 -1, i64 %i.ah      ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false)
  %i.aj = getelementptr i8, ptr %i.h, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  store ptr %i.al, ptr %4, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 %i.ab, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 18 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store i64 0, ptr %i.an, align 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false)
  call void @__rcu_read_lock() #14
  %i.ar = call ptr @xas_find(ptr noundef nonnull %4, i64 noundef range(i64 -1, 4503599627370496) %i.ai) #14 ; 2 uses
  %.not65.i = icmp eq ptr %i.ar, null
  br i1 %.not65.i, label %filemap_cachestat.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %copy_to_user.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %xas_next_entry.exit.i, %.lr.ph.i
  %.04366.i = phi ptr [ %i.ar, %.lr.ph.i ], [ %.0.i54.i, %xas_next_entry.exit.i ] ; 2 uses
  %magicptr.i.i = ptrtoint ptr %.04366.i to i64   ; 3 uses
  switch i64 %magicptr.i.i, label %xas_retry.exit.i [
    i64 1030, label %xas_retry.exit.thread.i
    i64 1026, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  store ptr inttoptr (i64 3 to ptr), ptr %i.ap, align 8
  br label %xas_retry.exit.thread.i

xas_retry.exit.i:                                 ; preds = %bb.e
  %i.aw = call i32 @xas_get_order(ptr noundef nonnull %4) #14
  %i.ax = shl nuw i32 1, %i.aw                    ; 2 uses
  %i.ay = sext i32 %i.ax to i64                   ; 2 uses
  %i.az = load i64, ptr %i.am, align 8
  %i.ba = sub i32 0, %i.ax
  %i.bb = sext i32 %i.ba to i64
  %i.bc = and i64 %i.az, %i.bb                    ; 2 uses
  %i.bd = add nsw i64 %i.ay, -1
  %i.be = add i64 %i.bd, %i.bc
  %i.bf = call i64 @llvm.usub.sat.i64(i64 range(i64 0, 4503599627370496) %i.ab, i64 %i.bc)
  %i.bg = call i64 @llvm.usub.sat.i64(i64 %i.be, i64 range(i64 -1, 4503599627370496) %i.ai)
  %i.bh = add i64 %i.bf, %i.bg
  %.142.i = sub i64 %i.ay, %i.bh                  ; 5 uses
  %i.bi = trunc i64 %magicptr.i.i to i1
  br i1 %i.bi, label %bb.g, label %bb.m

bb.g:                                             ; preds = %xas_retry.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 0, ptr %i.a, align 1, !annotation !23
  %i.bj = load i64, ptr %i.au, align 8
  %i.bk = add i64 %i.bj, %.142.i
  store i64 %i.bk, ptr %i.au, align 8
  %i.bl = call zeroext i1 @shmem_mapping(ptr noundef %i.ak) #14
  br i1 %i.bl, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bm = lshr i64 %magicptr.i.i, 1               ; 2 uses
  %i.bn = add nsw i64 %i.bm, -1
  %i.bo = icmp ult i64 %i.bn, 8070450532247928831
  br i1 %i.bo, label %bb.i, label %.thread59.i

bb.i:                                             ; preds = %bb.h
  %i.bp = call ptr @swap_cache_get_shadow(i64 %i.bm) #14 ; 2 uses
  %.not51.not.i = icmp eq ptr %i.bp, null
  br i1 %.not51.not.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.1.i = phi ptr [ %i.bp, %bb.i ], [ %.04366.i, %bb.g ]
  %i.bq = call zeroext i1 @workingset_test_recent(ptr noundef nonnull %.1.i, i1 noundef zeroext true, ptr noundef nonnull %i.a, i1 noundef zeroext false) #14
  br i1 %i.bq, label %bb.k, label %.thread59.i

bb.k:                                             ; preds = %bb.j
  %i.br = load i64, ptr %i.av, align 8
  %i.bs = add i64 %i.br, %.142.i
  store i64 %i.bs, ptr %i.av, align 8
  br label %.thread59.i

.thread59.i:                                      ; preds = %bb.k, %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.q

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.q

bb.m:                                             ; preds = %xas_retry.exit.i
  %i.bt = load i64, ptr %6, align 8
  %i.bu = add i64 %i.bt, %.142.i
  store i64 %i.bu, ptr %6, align 8
  %i.bv = call zeroext i1 @xas_get_mark(ptr noundef nonnull %4, i32 noundef 0) #14
  br i1 %i.bv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bw = load i64, ptr %i.as, align 8
  %i.bx = add i64 %i.bw, %.142.i
  store i64 %i.bx, ptr %i.as, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.by = call zeroext i1 @xas_get_mark(ptr noundef nonnull %4, i32 noundef 1) #14
  br i1 %i.by, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bz = load i64, ptr %i.at, align 8
  %i.ca = add i64 %i.bz, %.142.i
  store i64 %i.ca, ptr %i.at, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.l, %.thread59.i
  %i.cb = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #18, !srcloc !41
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = load volatile i64, ptr %i.cc, align 8
  %i.ce = and i64 %i.cd, 16
  %.not62.i = icmp eq i64 %i.ce, 0
  br i1 %.not62.i, label %xas_retry.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @xas_pause(ptr noundef nonnull %4) #14
  br label %xas_retry.exit.thread.i

xas_retry.exit.thread.i:                          ; preds = %bb.r, %bb.q, %bb.f, %bb.e
  %i.cf = load ptr, ptr %i.ap, align 8            ; 4 uses
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = and i64 %i.cg, 3
  %.not.i.i.i = icmp ne i64 %i.ch, 0
  %.not2.i.i.i = icmp eq ptr %i.cf, null
  %spec.select.i.i.i = or i1 %.not2.i.i.i, %.not.i.i.i
  br i1 %spec.select.i.i.i, label %.loopexit.sink.split.i.i, label %bb.s, !prof !22

bb.s:                                             ; preds = %xas_retry.exit.thread.i
  %i.ci = load i8, ptr %i.cf, align 8
  %.not.i.i5 = icmp eq i8 %i.ci, 0
  br i1 %.not.i.i5, label %bb.t, label %.loopexit.sink.split.i.i, !prof !21

bb.t:                                             ; preds = %bb.s
  %i.cj = load i8, ptr %i.ao, align 2             ; 3 uses
  %i.ck = zext i8 %i.cj to i64
  %i.cl = load i64, ptr %i.am, align 8            ; 4 uses
  %i.cm = and i64 %i.cl, 63
  %.not27.i.i = icmp eq i64 %i.cm, %i.ck
  br i1 %.not27.i.i, label %.preheader.i.i, label %.loopexit.sink.split.i.i, !prof !21

.preheader.i.i:                                   ; preds = %bb.t
  %i.cn = getelementptr i8, ptr %i.cf, i64 48
  %umax.i.i = call i64 @llvm.umax.i64(i64 %i.cl, i64 range(i64 -1, 4503599627370496) %i.ai)
  %exitcond.not.i.i15 = icmp uge i64 %i.cl, %i.ai
  %i.co = icmp eq i8 %i.cj, 63
  %or.cond.i.i16 = or i1 %exitcond.not.i.i15, %i.co
  br i1 %or.cond.i.i16, label %.loopexit.sink.split.i.i, label %.lr.ph, !prof !55

bb.u:                                             ; preds = %bb.v
  %exitcond.not.i.i = icmp eq i64 %i.cz, %umax.i.i
  %i.cp = icmp eq i8 %i.cy, 63
  %or.cond.i.i = or i1 %exitcond.not.i.i, %i.cp
  br i1 %or.cond.i.i, label %.loopexit.sink.split.i.i, label %.lr.ph, !prof !56, !llvm.loop !57

.lr.ph:                                           ; preds = %.preheader.i.i, %bb.u
  %i.cq = phi i64 [ %i.cz, %bb.u ], [ %i.cl, %.preheader.i.i ]
  %i.cr = phi i8 [ %i.cy, %bb.u ], [ %i.cj, %.preheader.i.i ] ; 2 uses
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr [8 x i8], ptr %i.cn, i64 %i.cs
  %i.cu = load volatile ptr, ptr %i.ct, align 8   ; 3 uses
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = and i64 %i.cv, 3
  %i.cx = icmp eq i64 %i.cw, 2
  br i1 %i.cx, label %.loopexit.sink.split.i.i, label %bb.v, !prof !22

bb.v:                                             ; preds = %.lr.ph
  %i.cy = add i8 %i.cr, 1                         ; 3 uses
  store i8 %i.cy, ptr %i.ao, align 2
  %i.cz = add i64 %i.cq, 1                        ; 3 uses
  store i64 %i.cz, ptr %i.am, align 8
  %.not26.i.i = icmp eq ptr %i.cu, null
  br i1 %.not26.i.i, label %bb.u, label %xas_next_entry.exit.i, !llvm.loop !57

.loopexit.sink.split.i.i:                         ; preds = %bb.u, %.lr.ph, %.preheader.i.i, %bb.t, %bb.s, %xas_retry.exit.thread.i
  %i.da = call ptr @xas_find(ptr noundef nonnull %4, i64 noundef range(i64 -1, 4503599627370496) %i.ai) #14
  br label %xas_next_entry.exit.i

xas_next_entry.exit.i:                            ; preds = %bb.v, %.loopexit.sink.split.i.i
  %.0.i54.i = phi ptr [ %i.da, %.loopexit.sink.split.i.i ], [ %i.cu, %bb.v ] ; 2 uses
  %.not.i6 = icmp eq ptr %.0.i54.i, null
  br i1 %.not.i6, label %filemap_cachestat.exit, label %bb.e, !llvm.loop !181

filemap_cachestat.exit:                           ; preds = %xas_next_entry.exit.i, %copy_to_user.exit.i
  call void @__rcu_read_unlock() #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.db = call i64 @_copy_to_user(ptr noundef %i.c, ptr noundef nonnull %6, i64 noundef 40) #14
  %.fr.i = freeze i64 %i.db
  %.not9.i = icmp eq i64 %.fr.i, 0
  %spec.select.i = select i1 %.not9.i, i64 0, i64 -14
  br label %bb.w

bb.w:                                             ; preds = %filemap_cachestat.exit, %can_do_cachestat.exit.thread.i, %can_do_cachestat.exit.i, %bb.b, %copy_from_user.exit.i
  %.0.i = phi i64 [ -95, %bb.b ], [ %spec.select.i, %filemap_cachestat.exit ], [ -14, %copy_from_user.exit.i ], [ -1, %can_do_cachestat.exit.i ], [ -22, %can_do_cachestat.exit.thread.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.dc = and i64 %i.d, 1
  %.not.i16.i = icmp eq i64 %i.dc, 0
  br i1 %.not.i16.i, label %__do_sys_cachestat.exit, label %bb.x, !prof !182

bb.x:                                             ; preds = %bb.w
  %i.dd = and i64 %i.d, -4
  %i.de = inttoptr i64 %i.dd to ptr
  call void @fput(ptr noundef %i.de) #14
  br label %__do_sys_cachestat.exit

__do_sys_cachestat.exit:                          ; preds = %.thread.i, %bb.w, %bb.x
  %.028.i = phi i64 [ -9, %.thread.i ], [ %.0.i, %bb.w ], [ %.0.i, %bb.x ]
  ret i64 %.028.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -95, 1) i64 @__ia32_sys_cachestat(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4294967295
  %i.d = getelementptr i8, ptr %0, i64 88
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 4294967295
  %i.g = getelementptr i8, ptr %0, i64 96
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 4294967295
  %i.j = getelementptr i8, ptr %0, i64 104
  %i.k = load i64, ptr %i.j, align 8
  %i.l = and i64 %i.k, 4294967295
  %i.m = tail call fastcc i64 @__se_sys_cachestat(i64 noundef %i.c, i64 noundef %i.f, i64 noundef %i.i, i64 noundef %i.l) #17, !srcloc !183
  ret i64 %i.m
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @trace_raw_output_mm_filemap_op_page_cache(ptr noundef %0, i32 %1, ptr noundef %2) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16512
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #14 ; 2 uses
  %.not = icmp eq i32 %i.c, 1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8320
  %i.e = getelementptr i8, ptr %i.b, i64 32
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = lshr i32 %i.f, 20
  %i.h = and i32 %i.f, 1048575
  %i.i = getelementptr i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.b, i64 16
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.b, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = shl i64 %i.n, 12
  %i.p = getelementptr i8, ptr %i.b, i64 36
  %i.q = load i8, ptr %i.p, align 4
  %i.r = zext i8 %i.q to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %i.g, i32 noundef %i.h, i64 noundef %i.j, i64 noundef %i.l, i64 noundef %i.o, i32 noundef %i.r) #14
  %i.s = tail call i32 @trace_handle_return(ptr noundef %i.d) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.s, %bb.b ], [ %i.c, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @trace_raw_output_mm_filemap_op_page_cache_range(ptr noundef %0, i32 %1, ptr noundef %2) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16512
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #14 ; 2 uses
  %.not = icmp eq i32 %i.c, 1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8320
  %i.e = getelementptr i8, ptr %i.b, i64 16
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = lshr i32 %i.f, 20
  %i.h = and i32 %i.f, 1048575
  %i.i = getelementptr i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.b, i64 24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = shl i64 %i.l, 12
  %i.n = getelementptr i8, ptr %i.b, i64 32
  %i.o = load i64, ptr %i.n, align 8
  %i.p = shl i64 %i.o, 12
  %i.q = or disjoint i64 %i.p, 4095
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %i.g, i32 noundef %i.h, i64 noundef %i.j, i64 noundef %i.m, i64 noundef %i.q) #14
  %i.r = tail call i32 @trace_handle_return(ptr noundef %i.d) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.r, %bb.b ], [ %i.c, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @trace_raw_output_mm_filemap_fault(ptr noundef %0, i32 %1, ptr noundef %2) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16512
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #14 ; 2 uses
  %.not = icmp eq i32 %i.c, 1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8320
  %i.e = getelementptr i8, ptr %i.b, i64 16
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = lshr i32 %i.f, 20
  %i.h = and i32 %i.f, 1048575
  %i.i = getelementptr i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.b, i64 24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = shl i64 %i.l, 12
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %i.g, i32 noundef %i.h, i64 noundef %i.j, i64 noundef %i.m) #14
  %i.n = tail call i32 @trace_handle_return(ptr noundef %i.d) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.n, %bb.b ], [ %i.c, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @trace_raw_output_filemap_set_wb_err(ptr noundef %0, i32 %1, ptr noundef %2) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16512
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #14 ; 2 uses
  %.not = icmp eq i32 %i.c, 1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8320
  %i.e = getelementptr i8, ptr %i.b, i64 16
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = lshr i32 %i.f, 20
  %i.h = and i32 %i.f, 1048575
  %i.i = getelementptr i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.b, i64 20
  %i.l = load i32, ptr %i.k, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %i.g, i32 noundef %i.h, i64 noundef %i.j, i32 noundef %i.l) #14
  %i.m = tail call i32 @trace_handle_return(ptr noundef %i.d) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.m, %bb.b ], [ %i.c, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @trace_raw_output_file_check_and_advance_wb_err(ptr noundef %0, i32 %1, ptr noundef %2) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16512
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #14 ; 2 uses
  %.not = icmp eq i32 %i.c, 1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8320
  %i.e = getelementptr i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.b, i64 24
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = lshr i32 %i.h, 20
  %i.j = and i32 %i.h, 1048575
  %i.k = getelementptr i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.b, i64 28
  %i.n = load i32, ptr %i.m, align 4
  %i.o = getelementptr i8, ptr %i.b, i64 32
  %i.p = load i32, ptr %i.o, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef %i.f, i32 noundef %i.i, i32 noundef %i.j, i64 noundef %i.l, i32 noundef %i.n, i32 noundef %i.p) #14
  %i.q = tail call i32 @trace_handle_return(ptr noundef %i.d) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.q, %bb.b ], [ %i.c, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress.p0(i32 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #11

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #12
end_hunk_0
begin_hunk_1_@filemap_get_read_batch:bb.a

.lr.ph.xas_retry.exit.thread_crit_edge:           ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.e, align 8
  br label %xas_retry.exit.thread

bb.b:                                             ; preds = %.lr.ph
  store ptr inttoptr (i64 3 to ptr), ptr %i.e, align 8
  br label %xas_retry.exit.thread

xas_retry.exit:                                   ; preds = %.lr.ph
  %i.i = load i64, ptr %i.b, align 8
  %i.j = icmp ugt i64 %i.i, %2
  %i.k = trunc i64 %magicptr.i to i1
  %or.cond = or i1 %i.j, %i.k
  br i1 %or.cond, label %folio_test_uptodate.exit, label %bb.c

bb.c:                                             ; preds = %xas_retry.exit
  %i.l = and i64 %magicptr.i, 2
  %i.m = icmp ne i64 %i.l, 0
  %i.n = icmp ult ptr %.029, inttoptr (i64 254 to ptr)
  %spec.select.i = and i1 %i.n, %i.m
  br i1 %spec.select.i, label %folio_test_uptodate.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %.029, i64 52      ; 5 uses
  %i.p = load volatile i32, ptr %i.o, align 4     ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i, label %folio_put.exit, label %.lr.ph.i.i.i, !prof !112

.lr.ph.i.i.i:                                     ; preds = %bb.d, %arch_atomic_try_cmpxchg.exit.i.i.i
  %.05.i.i.i = phi i32 [ %i.v, %arch_atomic_try_cmpxchg.exit.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  %i.q = add i32 %.05.i.i.i, 1
  %i.r = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.o, i32 range(i32 2, 1) %i.q, ptr elementtype(i32) %i.o, i32 %.05.i.i.i) #15, !srcloc !113 ; 2 uses
  %i.s = extractvalue { i8, i32 } %i.r, 0         ; 2 uses
  %i.t = icmp ult i8 %i.s, 2
  call void @llvm.assume(i1 %i.t)
  %i.u = trunc nuw i8 %i.s to i1
  br i1 %i.u, label %folio_try_get.exit, label %arch_atomic_try_cmpxchg.exit.i.i.i, !prof !21

arch_atomic_try_cmpxchg.exit.i.i.i:               ; preds = %.lr.ph.i.i.i
  %i.v = extractvalue { i8, i32 } %i.r, 1         ; 2 uses
  %.not8.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not8.i.i.i, label %folio_put.exit, label %.lr.ph.i.i.i, !prof !114

folio_try_get.exit:                               ; preds = %.lr.ph.i.i.i
  %i.w = load ptr, ptr %i.e, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %folio_try_get.exit
  %i.x = load ptr, ptr %4, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %i.z = load volatile ptr, ptr %i.y, align 8
  br label %xas_reload.exit

bb.f:                                             ; preds = %folio_try_get.exit
  %i.aa = load i64, ptr %i.b, align 8
  %i.ab = load i8, ptr %i.w, align 8
  %i.ac = zext nneg i8 %i.ab to i64
  %i.ad = lshr i64 %i.aa, %i.ac
  %i.ae = and i64 %i.ad, 63
  %i.af = getelementptr i8, ptr %i.w, i64 40      ; 2 uses
  %i.ag = getelementptr [8 x i8], ptr %i.af, i64 %i.ae
  %i.ah = load volatile ptr, ptr %i.ag, align 8   ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = and i64 %i.ai, 3
  %i.ak = icmp eq i64 %i.aj, 2
  %i.al = icmp ult ptr %i.ah, inttoptr (i64 254 to ptr)
  %spec.select.i.i = and i1 %i.al, %i.ak
  br i1 %spec.select.i.i, label %bb.g, label %xas_reload.exit

bb.g:                                             ; preds = %bb.f
  %i.am = lshr i64 %i.ai, 2
  %i.an = and i64 %i.am, 255
  %i.ao = getelementptr [8 x i8], ptr %i.af, i64 %i.an
  %i.ap = load volatile ptr, ptr %i.ao, align 8
  br label %xas_reload.exit

xas_reload.exit:                                  ; preds = %bb.e, %bb.f, %bb.g
  %.0.i16 = phi ptr [ %i.ap, %bb.g ], [ %i.z, %bb.e ], [ %i.ah, %bb.f ]
  %.not14 = icmp eq ptr %.029, %.0.i16
  br i1 %.not14, label %bb.h, label %bb.n, !prof !21

bb.h:                                             ; preds = %xas_reload.exit
  %i.aq = load i8, ptr %3, align 8                ; 2 uses
  %i.ar = add i8 %i.aq, 1                         ; 2 uses
  store i8 %i.ar, ptr %3, align 8
  %i.as = zext i8 %i.aq to i64
  %i.at = getelementptr [8 x i8], ptr %i.h, i64 %i.as
  store ptr %.029, ptr %i.at, align 8
  %.not15 = icmp eq i8 %i.ar, 31
  br i1 %.not15, label %folio_test_uptodate.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = load volatile i64, ptr %.029, align 8
  %i.av = and i64 %i.au, 8
  %.not26 = icmp eq i64 %i.av, 0
  br i1 %.not26, label %folio_test_uptodate.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !90
  %i.aw = load volatile i64, ptr %.029, align 8
  %i.ax = and i64 %i.aw, 65536
  %.not27 = icmp eq i64 %i.ax, 0
  br i1 %.not27, label %bb.k, label %folio_test_uptodate.exit

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr i8, ptr %.029, i64 32
  %i.az = load i64, ptr %i.ay, align 16
  %i.ba = load volatile i64, ptr %.029, align 16
  %i.bb = and i64 %i.ba, 64
  %.not.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i, label %folio_next_index.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr i8, ptr %.029, i64 64
  %.val.i.i = load i64, ptr %i.bc, align 16
  %i.bd = and i64 %.val.i.i, 255
  %i.be = shl nuw i64 1, %i.bd
  br label %folio_next_index.exit

folio_next_index.exit:                            ; preds = %bb.k, %bb.l
  %.0.i.i = phi i64 [ %i.be, %bb.l ], [ 1, %bb.k ]
  %i.bf = add i64 %i.az, -1
  %i.bg = add i64 %i.bf, %.0.i.i                  ; 2 uses
  %.val.i = load ptr, ptr %i.e, align 8           ; 4 uses
  %i.bh = ptrtoint ptr %.val.i to i64
  %i.bi = and i64 %i.bh, 3
  %.not.i.i.i17 = icmp eq i64 %i.bi, 0
  %i.bj = icmp ne ptr %.val.i, null
  %spec.select.i.i18 = and i1 %i.bj, %.not.i.i.i17
  br i1 %spec.select.i.i18, label %bb.m, label %xas_advance.exit

bb.m:                                             ; preds = %folio_next_index.exit
  %i.bk = load i8, ptr %.val.i, align 8
  %i.bl = zext i8 %i.bk to i64
  br label %xas_advance.exit

xas_advance.exit:                                 ; preds = %folio_next_index.exit, %bb.m
  %i.bm = phi i64 [ %i.bl, %bb.m ], [ 0, %folio_next_index.exit ]
  store i64 %i.bg, ptr %i.b, align 8
  %i.bn = lshr i64 %i.bg, %i.bm
  %i.bo = trunc i64 %i.bn to i8
  %i.bp = and i8 %i.bo, 63
  store i8 %i.bp, ptr %i.d, align 2
  br label %xas_retry.exit.thread

bb.n:                                             ; preds = %xas_reload.exit
  %i.bq = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.o, ptr elementtype(i32) %i.o) #15, !srcloc !67 ; 2 uses
  %i.br = icmp ult i8 %i.bq, 2
  call void @llvm.assume(i1 %i.br)
  %.not.i19 = icmp eq i8 %i.bq, 0
  br i1 %.not.i19, label %folio_put.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @__folio_put(ptr noundef nonnull %.029) #14
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i, %bb.d, %bb.o, %bb.n
  store ptr inttoptr (i64 3 to ptr), ptr %i.e, align 8
  br label %xas_retry.exit.thread

xas_retry.exit.thread:                            ; preds = %.lr.ph.xas_retry.exit.thread_crit_edge, %bb.b, %folio_put.exit, %xas_advance.exit
  %i.bs = phi ptr [ %.pre, %.lr.ph.xas_retry.exit.thread_crit_edge ], [ inttoptr (i64 3 to ptr), %bb.b ], [ inttoptr (i64 3 to ptr), %folio_put.exit ], [ %.val.i, %xas_advance.exit ] ; 4 uses
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = and i64 %i.bt, 3
  %.not.i.i20 = icmp ne i64 %i.bu, 0
  %.not2.i.i = icmp eq ptr %i.bs, null
  %spec.select.i.i21 = or i1 %.not2.i.i, %.not.i.i20
  br i1 %spec.select.i.i21, label %.critedge.i, label %bb.p, !prof !22

bb.p:                                             ; preds = %xas_retry.exit.thread
  %i.bv = load i8, ptr %i.bs, align 8
  %.not.i22 = icmp eq i8 %i.bv, 0
  br i1 %.not.i22, label %bb.q, label %.critedge.i, !prof !21

bb.q:                                             ; preds = %bb.p
  %i.bw = load i8, ptr %i.d, align 2              ; 2 uses
  %i.bx = icmp eq i8 %i.bw, 63
  br i1 %i.bx, label %.critedge.i, label %bb.r, !prof !22

.critedge.i:                                      ; preds = %bb.q, %bb.p, %xas_retry.exit.thread
  %i.by = call ptr @__xas_next(ptr noundef nonnull %4) #14
  br label %xas_next.exit

bb.r:                                             ; preds = %bb.q
  %i.bz = load i64, ptr %i.b, align 8
  %i.ca = add i64 %i.bz, 1
  store i64 %i.ca, ptr %i.b, align 8
  %i.cb = add i8 %i.bw, 1                         ; 2 uses
  store i8 %i.cb, ptr %i.d, align 2
  %i.cc = getelementptr i8, ptr %i.bs, i64 40
  %i.cd = zext i8 %i.cb to i64
  %i.ce = getelementptr [8 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = load volatile ptr, ptr %i.ce, align 8
  br label %xas_next.exit

xas_next.exit:                                    ; preds = %.critedge.i, %bb.r
  %.0.i23 = phi ptr [ %i.by, %.critedge.i ], [ %i.cf, %bb.r ] ; 2 uses
  %.not = icmp eq ptr %.0.i23, null
  br i1 %.not, label %folio_test_uptodate.exit, label %.lr.ph, !llvm.loop !184

folio_test_uptodate.exit:                         ; preds = %xas_next.exit, %xas_retry.exit, %bb.c, %bb.h, %bb.j, %bb.i, %bb.a
  call void @__rcu_read_unlock() #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @page_cache_sync_ra(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @page_cache_async_ra(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @copy_page_to_iter(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__folio_batch_release(ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @xas_pause(ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @pte_offset_map_ro_nolock(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @page_cache_ra_order(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__WARN_trap(ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @pmd_install(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @set_pte_range(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mm_trace_rss_stat(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__percpu_up_read(ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @file_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @vfs_fsync_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @filemap_dontcache_kick_writeback(ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @folio_mapping(ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @fdget(i32 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @inode_owner_or_capable(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @swap_cache_get_shadow(i64) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @workingset_test_recent(ptr noundef, i1 noundef zeroext, ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @xas_get_mark(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #13

attributes #0 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #2 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #9 = { nocallback nounwind }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { noredzone nounwind "no-builtin-wcslen" }
attributes #15 = { nounwind }
attributes #16 = { nounwind memory(read) }
attributes #17 = { noredzone "no-builtin-wcslen" }
attributes #18 = { nounwind memory(none) }
attributes #19 = { cold noredzone nounwind "no-builtin-wcslen" }

!llvm.named.register.rsp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{!"rsp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 8, !"cf-protection-branch", i32 1}
!3 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5 = !{i32 1, !"Code Model", i32 2}
!6 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!7 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!8 = !{i32 1, !"override-stack-alignment", i32 8}
!9 = !{i32 4, !"SkipRaxSetup", i32 1}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = !{i64 2150174218}
!20 = !{i64 2150204346}
!21 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!22 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!23 = !{!"auto-init"}
!24 = !{i64 2150201274}
!25 = !{i64 2150180399}
!26 = !{i64 2150201598}
!27 = !{i64 2160465302}
!28 = !{i64 2160473350}
!29 = !{i64 2160481990}
!30 = !{i64 2160489938}
!31 = !{i64 2160498630}
!32 = !{i64 2148899914, i64 2148899954, i64 2148900071, i64 2148900092, i64 2148900135, i64 2148900150, i64 2148900183, i64 2148900217, i64 2148900241}
!33 = !{i64 2159582036}
!34 = !{i64 2148692458}
!35 = !{i64 2151881974}
!36 = !{i64 2151885276}
!37 = !{i64 2151885698}
!38 = !{i64 2151897480}
!39 = !{i64 6809}
!40 = !{!"branch_weights", !"expected", i32 2145338, i32 2145338310}
!41 = !{i64 2148460782}
!42 = !{i64 2149076261, i64 2149076300, i64 2149076321, i64 2149076358, i64 2149076381, i64 2149076252}
!43 = !{i64 2160597957, i64 2160597832}
!44 = !{i64 2160598480, i64 2160599575, i64 2160599608, i64 2160599643, i64 2160599659, i64 2160600586, i64 2160600644, i64 2160600693, i64 2160600503, i64 2160599718, i64 2160599750, i64 2160599833}
!45 = !{i64 2160600985, i64 2160600861}
!46 = !{i64 2160601973, i64 2160601848}
!47 = !{i64 2160602496, i64 2160602972, i64 2160603005, i64 2160603040, i64 2160603056, i64 2160603897, i64 2160603955, i64 2160604004, i64 2160603814, i64 2160603115, i64 2160603147}
!48 = distinct !{null}
!49 = !{i64 2149078106, i64 2149078145, i64 2149078166, i64 2149078203, i64 2149078226, i64 2149078235}
!50 = !{i64 9866}
!51 = distinct !{!51, !12}
!52 = !{i64 2160606028, i64 2160605903}
!53 = !{i64 2160606551, i64 2160607614, i64 2160607647, i64 2160607682, i64 2160607698, i64 2160608625, i64 2160608683, i64 2160608732, i64 2160608542, i64 2160607757, i64 2160607789, i64 2160607872}
!54 = !{i64 2160609024, i64 2160608900}
!55 = !{!"branch_weights", i32 1, i32 4000}
!56 = !{!"branch_weights", i32 4000, i32 3996000}
!57 = distinct !{!57, !12}
!58 = distinct !{!58, !12}
!59 = distinct !{!59, !12}
!60 = !{i64 2148688475, i64 2148688514, i64 2148688535, i64 2148688572, i64 2148688595, i64 2148688604}
!61 = distinct !{!61, !12}
!62 = !{i64 2159791714}
!63 = !{i64 2148680526, i64 2148680565, i64 2148680586, i64 2148680623, i64 2148680646, i64 2148680517}
!64 = distinct !{!64, !12}
!65 = !{i64 2159756221}
!66 = !{i64 2149078592, i64 2149078631, i64 2149078652, i64 2149078689, i64 2149078712, i64 2149078583}
!67 = !{i64 2149080718, i64 2149080757, i64 2149080778, i64 2149080815, i64 2149080838, i64 2149080847}
!68 = !{i64 2149075886, i64 2149075925, i64 2149075946, i64 2149075983, i64 2149076006, i64 2149075877}
!69 = distinct !{!69, !12}
!70 = !{i64 2160670257, i64 2160670132}
!71 = !{i64 2160670780, i64 2160671256, i64 2160671289, i64 2160671324, i64 2160671340, i64 2160672181, i64 2160672239, i64 2160672288, i64 2160672098, i64 2160671399, i64 2160671431}
!72 = distinct !{!72, !12}
!73 = !{i64 2159614917}
!74 = !{i64 2148680152}
!75 = !{i64 2148681709}
!76 = !{i64 2160679142, i64 2160679017}
!77 = !{i64 2160679665, i64 2160680727, i64 2160680760, i64 2160680795, i64 2160680811, i64 2160681738, i64 2160681796, i64 2160681845, i64 2160681655, i64 2160680870, i64 2160680902, i64 2160680985}
!78 = !{i64 2160682137, i64 2160682013}
!79 = !{i64 2152704409}
!80 = !{i64 2151282669}
!81 = !{!"branch_weights", i32 1999, i32 1}
!82 = !{i64 2582538}
!83 = !{!"branch_weights", i32 1, i32 0}
!84 = distinct !{!84, !12}
!85 = !{i64 2151324202}
!86 = distinct !{!86, !12}
!87 = distinct !{!87, !12}
!88 = !{i64 2150114910, i64 2150114939, i64 2150114945, i64 2150115141, i64 2150115147, i64 2150115163, i64 2150115179, i64 2150115206, i64 2150115318, i64 2150115327, i64 2150115401, i64 2150115449, i64 2150115497, i64 2150115552, i64 2150115606, i64 2150115661, i64 2150115677, i64 2150115724, i64 2150115835, i64 2150115866, i64 2150115872, i64 2150115894, i64 2150115910, i64 2150114959, i64 2150114961, i64 2150114977, i64 2150115004, i64 2150115104, i64 2150115974, i64 2150116088, i64 2150116136, i64 2150116184, i64 2150116248, i64 2150116305, i64 2150116357, i64 2150116486, i64 2150116701, i64 2150116572, i64 2150116603, i64 2150116609, i64 2150116625, i64 2150116641, i64 2624646, i64 2624686, i64 2150117160, i64 2624724, i64 2624761, i64 2624782, i64 2624802}
!89 = !{i64 2157234373}
!90 = !{i64 2152284639}
!91 = !{i64 2148679214, i64 2148679253, i64 2148679274, i64 2148679311, i64 2148679334, i64 2148679205}
!92 = !{i64 2148685679, i64 2148685718, i64 2148685739, i64 2148685776, i64 2148685799, i64 2148685808}
!93 = !{i64 2160714031}
!94 = !{i64 2160718245}
!95 = !{i64 2160700404}
!96 = !{i64 2149869133}
!97 = !{i64 43441}
!98 = !{i64 2160706794}
!99 = !{i64 2160711008}
!100 = !{i64 43614}
!101 = !{i64 2148682083, i64 2148682122, i64 2148682143, i64 2148682180, i64 2148682203, i64 2148682074}
!102 = !{i64 2148681385}
!103 = distinct !{!103, !12}
!104 = distinct !{!104, !12}
!105 = !{i64 2150166895}
!106 = !{i64 50566}
!107 = !{i64 50733}
!108 = !{i64 2149088798, i64 2149088837, i64 2149088858, i64 2149088895, i64 2149088918, i64 2149088927}
!109 = !{i64 2150927373}
!110 = distinct !{!110, !12}
!111 = distinct !{!111, !12}
!112 = !{!"branch_weights", i32 1, i32 127}
!113 = !{i64 2149094547, i64 2149094586, i64 2149094607, i64 2149094644, i64 2149094667, i64 2149094676}
!114 = !{!"branch_weights", i32 127, i32 255873}
!115 = !{i64 2160764190, i64 2160764065}
!116 = !{i64 2160764713, i64 2160765791, i64 2160765824, i64 2160765859, i64 2160765875, i64 2160766802, i64 2160766860, i64 2160766909, i64 2160766719, i64 2160765934, i64 2160765966, i64 2160766049}
!117 = !{i64 2160767202, i64 2160767078}
!118 = !{i64 1192326}
!119 = distinct !{!119, !12}
!120 = distinct !{!120, !12}
!121 = distinct !{!121, !12}
!122 = distinct !{!122, !12}
!123 = distinct !{!123, !12}
!124 = !{i64 2154570444}
!125 = !{i64 82359}
!126 = distinct !{!126, !12, !127}
!127 = !{!"llvm.loop.peeled.count", i32 1}
!128 = distinct !{!128, !12}
!129 = distinct !{!129, !12}
!130 = !{i64 79099}
!131 = !{i64 79568}
!132 = distinct !{null, ptr @filemap_read_folio}
!133 = !{i64 44377}
!134 = distinct !{null, null}
!135 = distinct !{null, ptr @filemap_read_folio}
!136 = !{i64 2159651913}
!137 = distinct !{!137, !12, !127}
!138 = distinct !{!138, !12}
!139 = !{i64 90487}
!140 = distinct !{!140, !12}
!141 = distinct !{null}
!142 = distinct !{!142, !12}
!143 = !{i64 2159724877}
!144 = !{!"branch_weights", i32 2000, i32 2002}
!145 = !{i64 101685}
!146 = !{i64 104974}
!147 = !{i64 2155293451}
!148 = !{i64 105205}
!149 = !{i64 95980}
!150 = !{i64 107625}
!151 = !{i64 107671}
!152 = !{i64 98151}
!153 = !{i64 100239}
!154 = !{i64 2149116486, i64 2149116525, i64 2149116546, i64 2149116583, i64 2149116606, i64 2149116615}
!155 = !{i64 2154514241, i64 2154514268, i64 2154514674, i64 2154514707, i64 2154514742, i64 2154514758, i64 2154515599, i64 2154515657, i64 2154515706, i64 2154515516, i64 2154514817, i64 2154514849}
!156 = !{i64 2154512592}
!157 = !{i64 113464}
!158 = !{i64 2149078967, i64 2149079006, i64 2149079027, i64 2149079064, i64 2149079087, i64 2149078958}
!159 = distinct !{!159, !12}
!160 = !{i64 115553}
!161 = distinct !{!161, !12}
!162 = !{i64 2159688578}
!163 = distinct !{!163, !12}
!164 = !{i64 2154000967}
!165 = !{i64 2154008375}
!166 = !{i64 2154013102}
!167 = !{i64 2154013284}
!168 = !{i64 2154030201}
!169 = !{i64 2154039350}
!170 = !{i64 2154044028}
!171 = !{i64 2154044210}
!172 = !{i64 120472}
!173 = !{ptr @filemap_read_folio}
!174 = !{i64 121418}
!175 = !{i64 121683}
!176 = !{i64 2154572661}
!177 = distinct !{!177, !12}
!178 = !{i64 2160907319, i64 2160907194}
!179 = !{i64 2160907842, i64 2160908318, i64 2160908351, i64 2160908386, i64 2160908402, i64 2160909243, i64 2160909301, i64 2160909350, i64 2160909160, i64 2160908461, i64 2160908493}
!180 = !{i64 2160921657}
!181 = distinct !{!181, !12}
!182 = !{!"branch_weights", !"expected", i32 2145766520, i32 1717128}
!183 = !{i64 2160925572}
!184 = distinct !{!184, !12}
end_hunk_1
