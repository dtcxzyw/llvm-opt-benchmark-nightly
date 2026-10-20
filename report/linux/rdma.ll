Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/rdma?download=true
inline.NumInlined: 95
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@rdmacg_uncharge_hierarchy:bb.a
  %i.bb = inttoptr i64 %i.az to ptr               ; 2 uses
  tail call void asm sideeffect "decq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bb, ptr elementtype(i64) %i.bb) #12, !srcloc !21
  br label %percpu_ref_put.exit.i

__ref_is_percpu.exit.i.i.i:                       ; preds = %bb.s
  %i.bc = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock subq $2, $0", "=*m,={@cce},er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bd, i64 1, ptr elementtype(i64) %i.bd) #12, !srcloc !22 ; 2 uses
  %i.bf = icmp ult i8 %i.be, 2
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = trunc nuw i8 %i.be to i1
  br i1 %i.bg, label %bb.u, label %percpu_ref_put.exit.i, !prof !17

bb.u:                                             ; preds = %__ref_is_percpu.exit.i.i.i
  %i.bh = load ptr, ptr %i.bc, align 8
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef %i.ay) #10, !inline_history !15
  br label %percpu_ref_put.exit.i

percpu_ref_put.exit.i:                            ; preds = %bb.u, %__ref_is_percpu.exit.i.i.i, %bb.t
  tail call void @__rcu_read_unlock() #10
  br label %css_put.exit

css_put.exit:                                     ; preds = %._crit_edge, %percpu_ref_put.exit.i
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @rdmacg_try_charge(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i32 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ugt i32 %2, 1
  br i1 %i.a, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #13, !srcloc !27
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @__rcu_read_lock() #10
  %i.d = getelementptr i8, ptr %i.c, i64 2504     ; 2 uses
  %i.e = load volatile ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 88
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 76
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 1
  %.not.i10.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i10.i.i, label %.lr.ph.i.i, label %get_current_rdmacg.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %.loopexit.i.i
  %i.k = phi ptr [ %i.aa, %.loopexit.i.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.l = getelementptr i8, ptr %i.k, i64 16
  tail call void @__rcu_read_lock() #10
  %i.m = load volatile i64, ptr %i.l, align 8     ; 2 uses
  %i.n = and i64 %i.m, 3
  %.not.i.i.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %__ref_is_percpu.exit.i.i.i.i.i, !prof !12

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.o = inttoptr i64 %i.m to ptr                 ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.o, ptr elementtype(i64) %i.o) #12, !srcloc !28
  br label %css_tryget.exit.thread4.i.i

__ref_is_percpu.exit.i.i.i.i.i:                   ; preds = %.lr.ph.i.i
  %i.p = getelementptr i8, ptr %i.k, i64 24
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.r = load volatile i64, ptr %i.q, align 8     ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i, !prof !29

.lr.ph.i.i.i.i.i:                                 ; preds = %__ref_is_percpu.exit.i.i.i.i.i, %arch_atomic64_try_cmpxchg.exit.i.i.i.i.i
  %.01620.i.i.i.i.i = phi i64 [ %i.x, %arch_atomic64_try_cmpxchg.exit.i.i.i.i.i ], [ %i.r, %__ref_is_percpu.exit.i.i.i.i.i ] ; 2 uses
  %i.s = add i64 %.01620.i.i.i.i.i, 1
  %i.t = tail call { i8, i64 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgq $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.q, i64 range(i64 2, 1) %i.s, ptr elementtype(i64) %i.q, i64 %.01620.i.i.i.i.i) #12, !srcloc !30 ; 2 uses
  %i.u = extractvalue { i8, i64 } %i.t, 0         ; 2 uses
  %i.v = icmp ult i8 %i.u, 2
  tail call void @llvm.assume(i1 %i.v)
  %i.w = trunc nuw i8 %i.u to i1
  br i1 %i.w, label %css_tryget.exit.thread4.i.i, label %arch_atomic64_try_cmpxchg.exit.i.i.i.i.i, !prof !12

arch_atomic64_try_cmpxchg.exit.i.i.i.i.i:         ; preds = %.lr.ph.i.i.i.i.i
  %i.x = extractvalue { i8, i64 } %i.t, 1         ; 2 uses
  %.not23.i.i.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not23.i.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i, !prof !31

css_tryget.exit.thread4.i.i:                      ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  tail call void @__rcu_read_unlock() #10
  br label %get_current_rdmacg.exit

.loopexit.i.i:                                    ; preds = %arch_atomic64_try_cmpxchg.exit.i.i.i.i.i, %__ref_is_percpu.exit.i.i.i.i.i
  tail call void @__rcu_read_unlock() #10
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !32
  %i.y = load volatile ptr, ptr %i.d, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 88
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 76
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = and i32 %i.ac, 1
  %.not.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i, label %get_current_rdmacg.exit

get_current_rdmacg.exit:                          ; preds = %.loopexit.i.i, %bb.b, %css_tryget.exit.thread4.i.i
  %i.ae = phi ptr [ %i.k, %css_tryget.exit.thread4.i.i ], [ %i.g, %bb.b ], [ %i.aa, %.loopexit.i.i ] ; 9 uses
  tail call void @__rcu_read_unlock() #10
  tail call void @mutex_lock(ptr noundef @rdmacg_mutex) #10
  %cond = icmp eq ptr %i.ae, null
  br i1 %cond, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %get_current_rdmacg.exit
  %i.af = getelementptr i8, ptr %1, i64 16        ; 3 uses
  %i.ag = getelementptr i8, ptr %1, i64 24        ; 6 uses
  %i.ah = zext nneg i32 %2 to i64                 ; 6 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.i
  %.04387 = phi ptr [ %i.ae, %.lr.ph ], [ %.043.val, %bb.i ] ; 7 uses
  %i.ai = getelementptr i8, ptr %.04387, i64 248  ; 5 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.pn.in.i.i = phi ptr [ %i.ai, %bb.d ], [ %.pn.i.i, %bb.f ]
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 8   ; 4 uses
  %.not.i.i = icmp eq ptr %.pn.i.i, %i.ai
  br i1 %.not.i.i, label %find_cg_rpool_locked.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.012.i.i = getelementptr i8, ptr %.pn.i.i, i64 -32
  %i.aj = load ptr, ptr %.012.i.i, align 8
  %i.ak = icmp eq ptr %i.aj, %1
  br i1 %i.ak, label %find_cg_rpool_locked.exit.i, label %bb.e, !llvm.loop !0

find_cg_rpool_locked.exit.i:                      ; preds = %bb.f
  %.012.i.i.le = getelementptr i8, ptr %.pn.i.i, i64 -32 ; 2 uses
  %.not.i = icmp eq ptr %.012.i.i.le, null
  br i1 %.not.i, label %find_cg_rpool_locked.exit.thread.i, label %get_cg_rpool_locked.exit

find_cg_rpool_locked.exit.thread.i:               ; preds = %bb.e, %find_cg_rpool_locked.exit.i
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 16), align 16
  %i.am = tail call noalias align 8 dereferenceable_or_null(144) ptr @__kmalloc_cache_noprof(ptr noundef %i.al, i32 noundef 3520, i64 noundef range(i64 4, 785) 144) #14 ; 10 uses
  %.not23.i = icmp eq ptr %i.am, null
  br i1 %.not23.i, label %get_cg_rpool_locked.exit.thread, label %bb.g

bb.g:                                             ; preds = %find_cg_rpool_locked.exit.thread.i
  store ptr %1, ptr %i.am, align 8
  %i.an = getelementptr i8, ptr %i.am, i64 8      ; 2 uses
  %i.ao = getelementptr i8, ptr %i.am, i64 72     ; 4 uses
  %i.ap = load i32, ptr %i.an, align 8
  %.not.i.i.i52 = icmp eq i32 %i.ap, 2147483647
  br i1 %.not.i.i.i52, label %set_resource_limit.exit.i.i, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.g
  %i.aq = load i32, ptr %i.ao, align 8
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ao, align 8
  br label %set_resource_limit.exit.i.i

set_resource_limit.exit.i.i:                      ; preds = %.sink.split.i.i.i, %bb.g
  store i32 2147483647, ptr %i.an, align 8
  %i.as = getelementptr i8, ptr %i.am, i64 20     ; 2 uses
  %i.at = load i32, ptr %i.as, align 4
  %.not.i.1.i.i = icmp eq i32 %i.at, 2147483647
  br i1 %.not.i.1.i.i, label %set_all_resource_max_limit.exit.i, label %.sink.split.i.1.i.i

.sink.split.i.1.i.i:                              ; preds = %set_resource_limit.exit.i.i
  %i.au = load i32, ptr %i.ao, align 8
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.ao, align 8
  br label %set_all_resource_max_limit.exit.i

set_all_resource_max_limit.exit.i:                ; preds = %.sink.split.i.1.i.i, %set_resource_limit.exit.i.i
  store i32 2147483647, ptr %i.as, align 4
  %i.aw = getelementptr i8, ptr %i.am, i64 32     ; 6 uses
  store volatile ptr %i.aw, ptr %i.aw, align 8
  %i.ax = getelementptr i8, ptr %i.am, i64 40     ; 2 uses
  store volatile ptr %i.aw, ptr %i.ax, align 8
  %i.ay = getelementptr i8, ptr %i.am, i64 48     ; 6 uses
  store volatile ptr %i.ay, ptr %i.ay, align 8
  %i.az = getelementptr i8, ptr %i.am, i64 56     ; 2 uses
  store volatile ptr %i.ay, ptr %i.az, align 8
  %i.ba = getelementptr i8, ptr %.04387, i64 256  ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  store ptr %i.aw, ptr %i.ba, align 8
  store ptr %i.ai, ptr %i.aw, align 8
  store ptr %i.bb, ptr %i.ax, align 8
  store volatile ptr %i.aw, ptr %i.bb, align 8
  %i.bc = load ptr, ptr %i.ag, align 8            ; 2 uses
  store ptr %i.ay, ptr %i.ag, align 8
  store ptr %i.af, ptr %i.ay, align 8
  store ptr %i.bc, ptr %i.az, align 8
  store volatile ptr %i.ay, ptr %i.bc, align 8
  br label %get_cg_rpool_locked.exit

get_cg_rpool_locked.exit:                         ; preds = %find_cg_rpool_locked.exit.i, %set_all_resource_max_limit.exit.i
  %.0.i = phi ptr [ %.012.i.i.le, %find_cg_rpool_locked.exit.i ], [ %i.am, %set_all_resource_max_limit.exit.i ] ; 4 uses
  %i.bd = icmp ugt ptr %.0.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.bd, label %get_cg_rpool_locked.exit.thread, label %bb.h

bb.h:                                             ; preds = %get_cg_rpool_locked.exit
  %i.be = getelementptr i8, ptr %.0.i, i64 8
  %i.bf = getelementptr [12 x i8], ptr %i.be, i64 %i.ah ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 4      ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4            ; 2 uses
  %i.bi = load i32, ptr %i.bf, align 4
  %.not51 = icmp slt i32 %i.bh, %i.bi
  br i1 %.not51, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %3 = add nsw i32 %i.bh, 1
  store i32 %3, ptr %i.bg, align 4
  %i.bj = getelementptr i8, ptr %.0.i, i64 64     ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.bj, align 8
  %i.bm = getelementptr i8, ptr %.04387, i64 184
  %.043.val = load ptr, ptr %i.bm, align 8        ; 2 uses
  %.not = icmp eq ptr %.043.val, null
  br i1 %.not, label %.lr.ph90, label %bb.d, !llvm.loop !23

.lr.ph90:                                         ; preds = %bb.i, %find_cg_rpool_locked.exit.thread
  %.189 = phi ptr [ %.1.val, %find_cg_rpool_locked.exit.thread ], [ %i.ae, %bb.i ] ; 2 uses
  %i.bn = getelementptr i8, ptr %.189, i64 248    ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph90
  %.pn.in.i = phi ptr [ %i.bn, %.lr.ph90 ], [ %.pn.i, %bb.k ]
  %.pn.i = load ptr, ptr %.pn.in.i, align 8       ; 5 uses
  %.not.i53 = icmp eq ptr %.pn.i, %i.bn
  br i1 %.not.i53, label %find_cg_rpool_locked.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.012.i = getelementptr i8, ptr %.pn.i, i64 -32
  %i.bo = load ptr, ptr %.012.i, align 8
  %i.bp = icmp eq ptr %i.bo, %1
  br i1 %i.bp, label %find_cg_rpool_locked.exit, label %bb.j, !llvm.loop !0

find_cg_rpool_locked.exit:                        ; preds = %bb.k
  %.012.i.le = getelementptr i8, ptr %.pn.i, i64 -32
  %.not50 = icmp eq ptr %.012.i.le, null
  br i1 %.not50, label %find_cg_rpool_locked.exit.thread, label %bb.l

bb.l:                                             ; preds = %find_cg_rpool_locked.exit
  %i.bq = getelementptr i8, ptr %.pn.i, i64 -24
  %i.br = getelementptr [12 x i8], ptr %i.bq, i64 %i.ah ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 4
  %i.bt = load i32, ptr %i.bs, align 4            ; 2 uses
  %i.bu = getelementptr i8, ptr %i.br, i64 8      ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = icmp sgt i32 %i.bt, %i.bv
  br i1 %i.bw, label %bb.m, label %find_cg_rpool_locked.exit.thread

bb.m:                                             ; preds = %bb.l
  store i32 %i.bt, ptr %i.bu, align 4
  br label %find_cg_rpool_locked.exit.thread

find_cg_rpool_locked.exit.thread:                 ; preds = %bb.j, %find_cg_rpool_locked.exit, %bb.l, %bb.m
  %i.bx = getelementptr i8, ptr %.189, i64 184
  %.1.val = load ptr, ptr %i.bx, align 8          ; 2 uses
  %.not49 = icmp eq ptr %.1.val, null
  br i1 %.not49, label %._crit_edge, label %.lr.ph90, !llvm.loop !24

._crit_edge:                                      ; preds = %find_cg_rpool_locked.exit.thread, %get_current_rdmacg.exit
  tail call void @mutex_unlock(ptr noundef @rdmacg_mutex) #10
  store ptr %i.ae, ptr %0, align 8
  br label %bb.aa

get_cg_rpool_locked.exit.thread:                  ; preds = %find_cg_rpool_locked.exit.thread.i, %get_cg_rpool_locked.exit
  %.0.i65 = phi ptr [ %.0.i, %get_cg_rpool_locked.exit ], [ inttoptr (i64 -12 to ptr), %find_cg_rpool_locked.exit.thread.i ]
  %i.by = ptrtoint ptr %.0.i65 to i64
  %i.bz = trunc i64 %i.by to i32                  ; 2 uses
  %i.ca = icmp eq i32 %i.bz, -11
  br i1 %i.ca, label %.thread, label %rdmacg_event_locked.exit

.thread:                                          ; preds = %bb.h, %get_cg_rpool_locked.exit.thread
  %i.cb = getelementptr i8, ptr %i.ae, i64 248    ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.thread
  %.pn.in.i.i55 = phi ptr [ %i.cb, %.thread ], [ %.pn.i.i56, %bb.o ]
  %.pn.i.i56 = load ptr, ptr %.pn.in.i.i55, align 8 ; 5 uses
  %.not.i.i57 = icmp eq ptr %.pn.i.i56, %i.cb
  br i1 %.not.i.i57, label %find_cg_rpool_locked.exit.thread.i62.preheader, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.012.i.i58 = getelementptr i8, ptr %.pn.i.i56, i64 -32
  %i.cc = load ptr, ptr %.012.i.i58, align 8
  %i.cd = icmp eq ptr %i.cc, %1
  br i1 %i.cd, label %find_cg_rpool_locked.exit.i59, label %bb.n, !llvm.loop !0

find_cg_rpool_locked.exit.i59:                    ; preds = %bb.o
  %.012.i.i58.le = getelementptr i8, ptr %.pn.i.i56, i64 -32
  %.not.i61 = icmp eq ptr %.012.i.i58.le, null
  br i1 %.not.i61, label %find_cg_rpool_locked.exit.thread.i62.preheader, label %bb.p

bb.p:                                             ; preds = %find_cg_rpool_locked.exit.i59
  %i.ce = getelementptr i8, ptr %.pn.i.i56, i64 96
  %i.cf = getelementptr [8 x i8], ptr %i.ce, i64 %i.ah ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = add i64 %i.cg, 1
  store i64 %i.ch, ptr %i.cf, align 8
  %i.ci = getelementptr i8, ptr %i.ae, i64 328
  tail call void @cgroup_file_notify(ptr noundef %i.ci) #10
  br label %find_cg_rpool_locked.exit.thread.i62.preheader

find_cg_rpool_locked.exit.thread.i62.preheader:   ; preds = %bb.n, %bb.p, %find_cg_rpool_locked.exit.i59
  br label %find_cg_rpool_locked.exit.thread.i62

find_cg_rpool_locked.exit.thread.i62:             ; preds = %find_cg_rpool_locked.exit.thread.i62.preheader, %bb.q
  %.pn.in.i36.i = phi ptr [ %.pn.i37.i, %bb.q ], [ %i.ai, %find_cg_rpool_locked.exit.thread.i62.preheader ]
  %.pn.i37.i = load ptr, ptr %.pn.in.i36.i, align 8 ; 5 uses
  %.not.i38.i = icmp eq ptr %.pn.i37.i, %i.ai
  br i1 %.not.i38.i, label %find_cg_rpool_locked.exit43.thread.i, label %bb.q

bb.q:                                             ; preds = %find_cg_rpool_locked.exit.thread.i62
  %.012.i39.i = getelementptr i8, ptr %.pn.i37.i, i64 -32
  %i.cj = load ptr, ptr %.012.i39.i, align 8
  %i.ck = icmp eq ptr %i.cj, %1
  br i1 %i.ck, label %find_cg_rpool_locked.exit43.i, label %find_cg_rpool_locked.exit.thread.i62, !llvm.loop !0

find_cg_rpool_locked.exit43.i:                    ; preds = %bb.q
  %.012.i39.i.le = getelementptr i8, ptr %.pn.i37.i, i64 -32
  %.not31.i = icmp eq ptr %.012.i39.i.le, null
  br i1 %.not31.i, label %find_cg_rpool_locked.exit43.thread.i, label %bb.r

bb.r:                                             ; preds = %find_cg_rpool_locked.exit43.i
  %i.cl = getelementptr i8, ptr %.pn.i37.i, i64 80
  %i.cm = getelementptr [8 x i8], ptr %i.cl, i64 %i.ah ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8
  %i.co = add i64 %i.cn, 1
  store i64 %i.co, ptr %i.cm, align 8
  %i.cp = getelementptr i8, ptr %.04387, i64 328
  tail call void @cgroup_file_notify(ptr noundef %i.cp) #10
  br label %find_cg_rpool_locked.exit43.thread.i

find_cg_rpool_locked.exit43.thread.i:             ; preds = %find_cg_rpool_locked.exit.thread.i62, %bb.r, %find_cg_rpool_locked.exit43.i
  %i.cq = getelementptr i8, ptr %.04387, i64 184  ; 2 uses
  %.0.val3571.i = load ptr, ptr %i.cq, align 8
  %.not3272.i = icmp eq ptr %.0.val3571.i, null
  br i1 %.not3272.i, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %get_cg_rpool_locked.exit.thread.i, %find_cg_rpool_locked.exit43.thread.i
  %i.cr = getelementptr i8, ptr %i.ae, i64 184    ; 2 uses
  %.1.val3474.i = load ptr, ptr %i.cr, align 8
  %.not3375.i = icmp eq ptr %.1.val3474.i, null
  br i1 %.not3375.i, label %rdmacg_event_locked.exit, label %.lr.ph77.i

.lr.ph.i:                                         ; preds = %find_cg_rpool_locked.exit43.thread.i, %get_cg_rpool_locked.exit.thread.i
  %i.cs = phi ptr [ %i.du, %get_cg_rpool_locked.exit.thread.i ], [ %i.cq, %find_cg_rpool_locked.exit43.thread.i ]
  %.073.i = phi ptr [ %.0.val.i, %get_cg_rpool_locked.exit.thread.i ], [ %.04387, %find_cg_rpool_locked.exit43.thread.i ] ; 3 uses
  %i.ct = getelementptr i8, ptr %.073.i, i64 248  ; 3 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %.lr.ph.i
  %.pn.in.i.i.i = phi ptr [ %i.ct, %.lr.ph.i ], [ %.pn.i.i.i, %bb.t ]
  %.pn.i.i.i = load ptr, ptr %.pn.in.i.i.i, align 8 ; 4 uses
  %.not.i.i.i63 = icmp eq ptr %.pn.i.i.i, %i.ct
  br i1 %.not.i.i.i63, label %find_cg_rpool_locked.exit.thread.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.012.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i64 -32
  %i.cu = load ptr, ptr %.012.i.i.i, align 8
  %i.cv = icmp eq ptr %i.cu, %1
  br i1 %i.cv, label %find_cg_rpool_locked.exit.i.i, label %bb.s, !llvm.loop !0

find_cg_rpool_locked.exit.i.i:                    ; preds = %bb.t
  %.012.i.i.i.le = getelementptr i8, ptr %.pn.i.i.i, i64 -32 ; 2 uses
  %.not.i44.i = icmp eq ptr %.012.i.i.i.le, null
  br i1 %.not.i44.i, label %find_cg_rpool_locked.exit.thread.i.i, label %get_cg_rpool_locked.exit.i

find_cg_rpool_locked.exit.thread.i.i:             ; preds = %bb.s, %find_cg_rpool_locked.exit.i.i
  %i.cw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 16), align 16
  %i.cx = tail call noalias align 8 dereferenceable_or_null(144) ptr @__kmalloc_cache_noprof(ptr noundef %i.cw, i32 noundef 3520, i64 noundef range(i64 4, 785) 144) #14 ; 10 uses
  %.not23.i.i = icmp eq ptr %i.cx, null
  br i1 %.not23.i.i, label %get_cg_rpool_locked.exit.thread.i, label %bb.u

bb.u:                                             ; preds = %find_cg_rpool_locked.exit.thread.i.i
  store ptr %1, ptr %i.cx, align 8
  %i.cy = getelementptr i8, ptr %i.cx, i64 8      ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cx, i64 72     ; 4 uses
  %i.da = load i32, ptr %i.cy, align 8
  %.not.i.i.i.i = icmp eq i32 %i.da, 2147483647
  br i1 %.not.i.i.i.i, label %set_resource_limit.exit.i.i.i, label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.u
  %i.db = load i32, ptr %i.cz, align 8
  %i.dc = add i32 %i.db, 1
  store i32 %i.dc, ptr %i.cz, align 8
  br label %set_resource_limit.exit.i.i.i

set_resource_limit.exit.i.i.i:                    ; preds = %.sink.split.i.i.i.i, %bb.u
  store i32 2147483647, ptr %i.cy, align 8
  %i.dd = getelementptr i8, ptr %i.cx, i64 20     ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4
  %.not.i.1.i.i.i = icmp eq i32 %i.de, 2147483647
  br i1 %.not.i.1.i.i.i, label %set_all_resource_max_limit.exit.i.i, label %.sink.split.i.1.i.i.i

.sink.split.i.1.i.i.i:                            ; preds = %set_resource_limit.exit.i.i.i
  %i.df = load i32, ptr %i.cz, align 8
  %i.dg = add i32 %i.df, 1
  store i32 %i.dg, ptr %i.cz, align 8
  br label %set_all_resource_max_limit.exit.i.i

set_all_resource_max_limit.exit.i.i:              ; preds = %.sink.split.i.1.i.i.i, %set_resource_limit.exit.i.i.i
  store i32 2147483647, ptr %i.dd, align 4
  %i.dh = getelementptr i8, ptr %i.cx, i64 32     ; 6 uses
  store volatile ptr %i.dh, ptr %i.dh, align 8
  %i.di = getelementptr i8, ptr %i.cx, i64 40     ; 2 uses
  store volatile ptr %i.dh, ptr %i.di, align 8
  %i.dj = getelementptr i8, ptr %i.cx, i64 48     ; 6 uses
  store volatile ptr %i.dj, ptr %i.dj, align 8
end_hunk_0
