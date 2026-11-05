Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/migrate?download=true
inline.NumInlined: 798
inline.NumDeleted: 281
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@alloc_migration_target:bb.a
  br i1 %i.t, label %hugepage_movable_supported.exit.i.i, label %htlb_modify_alloc_mask.exit

hugepage_movable_supported.exit.i.i:              ; preds = %hugepage_migration_supported.exit.i.i.i, %folio_hstate.exit, %folio_hstate.exit
  %i.u = icmp ult i32 %.val40, 11
  %i.v = load i32, ptr @movable_gigantic_pages, align 4
  %i.w = icmp ne i32 %i.v, 0
  %or.cond.not.not.i.i.i = select i1 %i.u, i1 true, i1 %i.w
  %cond.fr.i.i = freeze i1 %or.cond.not.not.i.i.i
  %spec.select.i.i = select i1 %cond.fr.i.i, i32 1322186, i32 1322178
  br label %htlb_modify_alloc_mask.exit

htlb_modify_alloc_mask.exit:                      ; preds = %hugepage_migration_supported.exit.i.i.i, %hugepage_movable_supported.exit.i.i
  %i.x = phi i32 [ 1322178, %hugepage_migration_supported.exit.i.i.i ], [ %spec.select.i.i, %hugepage_movable_supported.exit.i.i ]
  %i.y = and i32 %i.c, 2097152
  %i.z = or disjoint i32 %i.x, %i.y
  %i.aa = getelementptr i8, ptr %i.a, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr i8, ptr %i.a, i64 20
  %i.ad = load i32, ptr %i.ac, align 4
  %.off.i = add i32 %i.ad, -1
  %switch.i = icmp ult i32 %.off.i, 4
  %i.ae = tail call ptr @alloc_hugetlb_folio_nodemask(ptr noundef %i.p, i32 noundef %.037, ptr noundef %i.ab, i32 noundef %i.z, i1 noundef zeroext %switch.i) #10
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  br i1 %.not.i.i.i, label %folio_order.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = and i32 %i.c, -1846475
  %i.ag = or disjoint i32 %i.af, 1844426          ; 2 uses
  %i.ah = load volatile i64, ptr %0, align 16
  %i.ai = and i64 %i.ah, 64
  %.not.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i, label %folio_order.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr i8, ptr %0, i64 64
  %.val.i = load i64, ptr %i.aj, align 16
  %i.ak = trunc i64 %.val.i to i32
  %i.al = and i32 %i.ak, 255
  br label %folio_order.exit

folio_order.exit:                                 ; preds = %bb.h, %bb.g, %bb.f
  %.036 = phi i32 [ 0, %bb.f ], [ %i.al, %bb.h ], [ 0, %bb.g ]
  %.035 = phi i32 [ %i.c, %bb.f ], [ %i.ag, %bb.h ], [ %i.ag, %bb.g ] ; 2 uses
  %i.am = and i64 %i.k, 216172782113783808
  %i.an = icmp eq i64 %i.am, 216172782113783808
  %i.ao = or i32 %.035, 2
  %spec.select = select i1 %i.an, i32 %i.ao, i32 %.035
  %i.ap = getelementptr i8, ptr %i.a, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call ptr @__folio_alloc_noprof(i32 noundef %spec.select, i32 noundef %.036, i32 noundef %.037, ptr noundef %i.aq) #10
  br label %bb.i

bb.i:                                             ; preds = %folio_order.exit, %htlb_modify_alloc_mask.exit
  %.0 = phi ptr [ %i.ae, %htlb_modify_alloc_mask.exit ], [ %i.ar, %folio_order.exit ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @alloc_hugetlb_folio_nodemask(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__folio_alloc_noprof(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__x64_sys_move_pages(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 104
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %0, i64 56
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %0, i64 64
  %i.l = load i64, ptr %i.k, align 8
  %i.m = tail call fastcc i64 @__se_sys_move_pages(i64 noundef %i.b, i64 noundef %i.d, i64 noundef %i.f, i64 noundef %i.h, i64 noundef %i.j, i64 noundef %i.l) #11, !srcloc !97
  ret i64 %i.m
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i64 -2147483648, 2147483648) i64 @__se_sys_move_pages(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %6 = alloca %struct.folio_walk, align 8         ; 6 uses
  %i.a = alloca [16 x ptr], align 16              ; 6 uses
  %i.b = alloca [16 x i32], align 16              ; 5 uses
  %7 = alloca %struct.migration_target_control, align 8 ; 9 uses
  %8 = alloca %struct.migration_target_control, align 8 ; 9 uses
  %9 = alloca %struct.folio_walk, align 8         ; 6 uses
  %10 = alloca %struct.migration_target_control, align 8 ; 9 uses
  %11 = alloca %struct.nodemask_t, align 8        ; 4 uses
  %12 = alloca %struct.list_head, align 8         ; 20 uses
  %i.c = trunc i64 %0 to i32                      ; 2 uses
  %i.d = inttoptr i64 %2 to ptr                   ; 4 uses
  %i.e = inttoptr i64 %3 to ptr
  %i.f = inttoptr i64 %4 to ptr                   ; 5 uses
  %i.g = trunc i64 %5 to i32                      ; 3 uses
  %i.h = and i32 %i.g, -7
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %bb.b, label %__do_sys_move_pages.exit

bb.b:                                             ; preds = %bb.a
  %.not20.i.i = icmp samesign ult i32 %i.g, 4
  br i1 %.not20.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call zeroext i1 @capable(i32 noundef 23) #10
  br i1 %i.i, label %bb.d, label %__do_sys_move_pages.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #12, !srcloc !39
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 1400     ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 132      ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.n, ptr elementtype(i32) %i.n) #9, !srcloc !19
  %i.o = tail call i64 @cpuset_mems_allowed(ptr noundef %i.k) #10
  %i.p = load ptr, ptr %i.l, align 8
  br label %find_mm_struct.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = tail call ptr @find_get_task_by_vpid(i32 noundef %i.c) #10 ; 8 uses
  %.not19.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not19.i.i.i, label %find_mm_struct.exit.thread.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %i.q, i64 2096     ; 2 uses
  %i.s = load ptr, ptr %i.r, align 16
  %i.t = getelementptr i8, ptr %i.s, i64 1096
  %i.u = tail call i32 @down_read_killable(ptr noundef %i.t) #10
  %.not20.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not20.i.i.i, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.v = tail call zeroext i1 @ptrace_may_access(ptr noundef nonnull %i.q, i32 noundef 17) #10
  br i1 %i.v, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.w = tail call i32 @security_task_movememory(ptr noundef nonnull %i.q) #10 ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = icmp ugt i32 %i.w, -4096
  br i1 %i.z, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = tail call i64 @cpuset_mems_allowed(ptr noundef nonnull %i.q) #10
  %i.ab = tail call ptr @get_task_mm(ptr noundef nonnull %i.q) #10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.0.1.i.i = phi i64 [ 0, %bb.i ], [ %i.aa, %bb.j ], [ 0, %bb.h ]
  %.016.i.i.i = phi ptr [ %i.y, %bb.i ], [ %i.ab, %bb.j ], [ inttoptr (i64 -1 to ptr), %bb.h ]
  %i.ac = load ptr, ptr %i.r, align 16
  %i.ad = getelementptr i8, ptr %i.ac, i64 1096
  tail call void @up_read(ptr noundef %i.ad) #10
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.1.i.i, %bb.k ], [ 0, %bb.g ]
  %.1.i.i.i = phi ptr [ %.016.i.i.i, %bb.k ], [ inttoptr (i64 -4 to ptr), %bb.g ] ; 2 uses
  %i.ae = getelementptr i8, ptr %i.q, i64 40      ; 3 uses
  %i.af = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ae, i32 -1, ptr elementtype(i32) %i.ae) #9, !srcloc !102 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = icmp slt i32 %i.af, 1
  br i1 %i.ah, label %bb.n, label %put_task_struct.exit.i.i.i, !prof !13

bb.n:                                             ; preds = %bb.m
  tail call void @refcount_warn_saturate(ptr noundef %i.ae, i32 noundef 3) #10
  br label %put_task_struct.exit.i.i.i

bb.o:                                             ; preds = %bb.l
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !103
  %i.ai = getelementptr i8, ptr %i.q, i64 2880
  tail call void @call_rcu(ptr noundef %i.ai, ptr noundef @__put_task_struct_rcu_cb) #10
  br label %put_task_struct.exit.i.i.i

put_task_struct.exit.i.i.i:                       ; preds = %bb.o, %bb.n, %bb.m
  %.not21.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not21.i.i.i, label %find_mm_struct.exit.thread.i.i, label %find_mm_struct.exit.i.i

find_mm_struct.exit.i.i:                          ; preds = %put_task_struct.exit.i.i.i, %bb.e
  %.sroa.0.2.i.i = phi i64 [ %i.o, %bb.e ], [ %.sroa.0.0.i.i, %put_task_struct.exit.i.i.i ]
  %.0.i.i.i = phi ptr [ %i.p, %bb.e ], [ %.1.i.i.i, %put_task_struct.exit.i.i.i ] ; 13 uses
  %i.aj = icmp ugt ptr %.0.i.i.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.aj, label %find_mm_struct.exit.thread.i.i, label %bb.p

find_mm_struct.exit.thread.i.i:                   ; preds = %find_mm_struct.exit.i.i, %put_task_struct.exit.i.i.i, %bb.f
  %.0.i34.i.i = phi ptr [ %.0.i.i.i, %find_mm_struct.exit.i.i ], [ inttoptr (i64 -3 to ptr), %bb.f ], [ inttoptr (i64 -22 to ptr), %put_task_struct.exit.i.i.i ]
  %i.ak = ptrtoint ptr %.0.i34.i.i to i64
  br label %__do_sys_move_pages.exit

bb.p:                                             ; preds = %find_mm_struct.exit.i.i
  %.not21.i.i = icmp eq i64 %3, 0
  br i1 %.not21.i.i, label %bb.bg, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store i64 %.sroa.0.2.i.i, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  store ptr %12, ptr %12, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store ptr %12, ptr %i.al, align 8
  call void @lru_cache_disable() #10
  %.not242.i.i.i = icmp eq i64 %1, 0
  br i1 %.not242.i.i.i, label %store_status.exit.thread160.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.q
  %i.am = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #12, !srcloc !39
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.at = ptrtoint ptr %10 to i64
  %i.au = trunc i64 %1 to i32                     ; 2 uses
  %i.av = icmp samesign ugt i32 %i.g, 3           ; 2 uses
  %i.aw = getelementptr i8, ptr %.0.i.i.i, i64 464 ; 3 uses
  %i.ax = getelementptr i8, ptr %.0.i.i.i, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.be = ptrtoint ptr %8 to i64
  br label %bb.r

bb.r:                                             ; preds = %store_status.exit.i.i.i, %.lr.ph.i.i.i
  %i.bf = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ga, %store_status.exit.i.i.i ] ; 3 uses
  %.078201.i.i.i = phi i32 [ -1, %.lr.ph.i.i.i ], [ %.2.i.i.i, %store_status.exit.i.i.i ] ; 11 uses
  %.079200.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %.180.i.i.i, %store_status.exit.i.i.i ] ; 9 uses
  %.083199.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.fz, %store_status.exit.i.i.i ] ; 20 uses
  %i.bg = load i32, ptr %i.ao, align 8
  %i.bh = and i32 %i.bg, 2
  %.not.i.i.not.i.i.i = icmp eq i32 %i.bh, 0
  %i.bi = call i64 @llvm.read_register.i64(metadata !0) ; 2 uses
  br i1 %.not.i.i.not.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = getelementptr [4 x i8], ptr %i.d, i64 %i.bf
  %i.bk = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %i.bj, i64 4, i64 %i.bi) #9, !srcloc !104 ; 3 uses
  %i.bl = extractvalue { ptr, i32, i64 } %i.bk, 0
  %i.bm = extractvalue { ptr, i32, i64 } %i.bk, 2
  %i.bn = ptrtoint ptr %i.bl to i64
  call void @llvm.write_register.i64(metadata !0, i64 %i.bm)
  %.mask102.i.i.i = and i64 %i.bn, 4294967295
  %.not101.i.i.i = icmp eq i64 %.mask102.i.i.i, 0
  br i1 %.not101.i.i.i, label %.thread.i.i.i, label %store_status.exit.thread160.i.i.i

.thread.i.i.i:                                    ; preds = %bb.s
  %i.bo = extractvalue { ptr, i32, i64 } %i.bk, 1
  %i.bp = zext i32 %i.bo to i64
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bq = getelementptr [8 x i8], ptr %i.d, i64 %i.bf
  %i.br = call { ptr, i64, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %i.bq, i64 8, i64 %i.bi) #9, !srcloc !105 ; 3 uses
  %i.bs = extractvalue { ptr, i64, i64 } %i.br, 0
  %i.bt = extractvalue { ptr, i64, i64 } %i.br, 1
  %i.bu = extractvalue { ptr, i64, i64 } %i.br, 2
  %i.bv = ptrtoint ptr %i.bs to i64
  call void @llvm.write_register.i64(metadata !0, i64 %i.bu)
  %.mask.i.i.i = and i64 %i.bv, 4294967295
  %.not.i24.i.i = icmp eq i64 %.mask.i.i.i, 0
  br i1 %.not.i24.i.i, label %bb.u, label %store_status.exit.thread160.i.i.i

bb.u:                                             ; preds = %bb.t, %.thread.i.i.i
  %.189.in.i.i.i = phi i64 [ %i.bp, %.thread.i.i.i ], [ %i.bt, %bb.t ] ; 2 uses
  %i.bw = call i64 @llvm.read_register.i64(metadata !0)
  %i.bx = getelementptr [4 x i8], ptr %i.e, i64 %i.bf
  %i.by = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %i.bx, i64 4, i64 %i.bw) #9, !srcloc !106 ; 3 uses
  %i.bz = extractvalue { ptr, i32, i64 } %i.by, 0
  %i.ca = extractvalue { ptr, i32, i64 } %i.by, 1 ; 8 uses
  %i.cb = extractvalue { ptr, i32, i64 } %i.by, 2
  %i.cc = ptrtoint ptr %i.bz to i64
  call void @llvm.write_register.i64(metadata !0, i64 %i.cb)
  %i.cd = zext i32 %i.ca to i64                   ; 2 uses
  %.mask104.i.i.i = and i64 %i.cc, 4294967295
  %.not103.i.i.i = icmp eq i64 %.mask104.i.i.i, 0
  br i1 %.not103.i.i.i, label %bb.v, label %store_status.exit.thread160.i.i.i

bb.v:                                             ; preds = %bb.u
  %or.cond.i.i.i = icmp ugt i32 %i.ca, 63
  br i1 %or.cond.i.i.i, label %store_status.exit.thread160.i.i.i, label %.split260.i.i.i

.split260.i.i.i:                                  ; preds = %bb.v
  %i.ce = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @node_states, i64 24), i64 range(i64 0, 4294967296) %i.cd) #9, !srcloc !21 ; 2 uses
  %i.cf = icmp ult i8 %i.ce, 2
  call void @llvm.assume(i1 %i.cf)
  %i.cg = trunc nuw i8 %i.ce to i1
  br i1 %i.cg, label %arch_test_bit.exit.i.i.i, label %store_status.exit.thread160.i.i.i

arch_test_bit.exit.i.i.i:                         ; preds = %.split260.i.i.i
  %i.ch = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %11, i64 range(i64 0, 4294967296) %i.cd) #9, !srcloc !21 ; 2 uses
  %i.ci = icmp ult i8 %i.ch, 2
  call void @llvm.assume(i1 %i.ci)
  %i.cj = trunc nuw i8 %i.ch to i1
  br i1 %i.cj, label %bb.w, label %store_status.exit.thread160.i.i.i

bb.w:                                             ; preds = %arch_test_bit.exit.i.i.i
  %i.ck = icmp eq i32 %.078201.i.i.i, -1
  br i1 %i.ck, label %move_pages_and_store_status.exit.thread.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not106.i.i.i = icmp eq i32 %.078201.i.i.i, %i.ca
  br i1 %.not106.i.i.i, label %move_pages_and_store_status.exit.thread.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = load volatile ptr, ptr %12, align 8
  %.not.i.i.i.i = icmp eq ptr %i.cl, %12
  br i1 %.not.i.i.i.i, label %move_pages_and_store_status.exit.thread.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  store i32 %.078201.i.i.i, ptr %10, align 8
  store i32 0, ptr %i.ap, align 4
  store ptr null, ptr %i.aq, align 8
  store i32 3149002, ptr %i.ar, align 8
  store i32 3, ptr %i.as, align 4
  %i.cm = call i32 @migrate_pages(ptr noundef nonnull %12, ptr noundef @alloc_migration_target, ptr noundef null, i64 noundef %i.at, i32 noundef 2, i32 noundef 3, ptr noundef null) #11 ; 3 uses
  %.not.i.i113.i.i.i = icmp eq i32 %i.cm, 0
  br i1 %.not.i.i113.i.i.i, label %bb.aa, label %move_pages_and_store_status.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  %i.cn = sub i32 %.083199.i.i.i, %.079200.i.i.i
  %i.co = icmp sgt i32 %i.cn, 0
  br i1 %i.co, label %.lr.ph.i.i.i.i.i, label %move_pages_and_store_status.exit.thread.i.i.i

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.cp = add i32 %.01214.i.i.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.cp, %.083199.i.i.i
  br i1 %exitcond.not.i.i.i, label %move_pages_and_store_status.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !98

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.aa, %bb.ab
  %.01214.i.i.i.i.i = phi i32 [ %i.cp, %bb.ab ], [ %.079200.i.i.i, %bb.aa ] ; 2 uses
  %i.cq = sext i32 %.01214.i.i.i.i.i to i64
  %i.cr = getelementptr [4 x i8], ptr %i.f, i64 %i.cq
  %i.cs = call i64 @llvm.read_register.i64(metadata !0)
  %i.ct = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %i.cr, i32 range(i32 -1, 64) %.078201.i.i.i, i64 4, i64 %i.cs) #9, !srcloc !107 ; 2 uses
  %i.cu = extractvalue { ptr, i64 } %i.ct, 0
  %i.cv = extractvalue { ptr, i64 } %i.ct, 1
  %i.cw = ptrtoint ptr %i.cu to i64
  call void @llvm.write_register.i64(metadata !0, i64 %i.cv)
  %.mask.i.i.i.i.i = and i64 %i.cw, 4294967295
  %.not.i17.i.i.i.i = icmp eq i64 %.mask.i.i.i.i.i, 0
  br i1 %.not.i17.i.i.i.i, label %bb.ab, label %do_pages_move.exit.i.i

move_pages_and_store_status.exit.i.i.i:           ; preds = %bb.z
  call void @putback_movable_pages(ptr noundef nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  %i.cx = icmp sgt i32 %i.cm, 0
  %i.cy = sub i32 %i.au, %.083199.i.i.i
  %i.cz = select i1 %i.cx, i32 %i.cy, i32 0
  %.0.i.i.i.i = add i32 %i.cz, %i.cm              ; 2 uses
  %.not107.i.i.i = icmp eq i32 %.0.i.i.i.i, 0
  br i1 %.not107.i.i.i, label %move_pages_and_store_status.exit.thread.i.i.i, label %do_pages_move.exit.i.i

move_pages_and_store_status.exit.thread.i.i.i:    ; preds = %bb.ab, %move_pages_and_store_status.exit.i.i.i, %bb.aa, %bb.y, %bb.x, %bb.w
  %.180.i.i.i = phi i32 [ %.079200.i.i.i, %bb.x ], [ %.083199.i.i.i, %bb.w ], [ %.083199.i.i.i, %move_pages_and_store_status.exit.i.i.i ], [ %.083199.i.i.i, %bb.y ], [ %.083199.i.i.i, %bb.aa ], [ %.083199.i.i.i, %bb.ab ] ; 5 uses
  %.1.i22.i.i = phi i32 [ %.078201.i.i.i, %bb.x ], [ %i.ca, %bb.w ], [ %i.ca, %move_pages_and_store_status.exit.i.i.i ], [ %i.ca, %bb.y ], [ %i.ca, %bb.aa ], [ %i.ca, %bb.ab ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 0, i64 48, i1 false), !annotation !26
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_start_locking, i64 8), i1 false) #9
          to label %__mmap_lock_trace_start_locking.exit.i.i.i.i.i [label %bb.ac], !srcloc !20

bb.ac:                                            ; preds = %move_pages_and_store_status.exit.thread.i.i.i
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %.0.i.i.i, i1 noundef zeroext false) #10
  br label %__mmap_lock_trace_start_locking.exit.i.i.i.i.i

__mmap_lock_trace_start_locking.exit.i.i.i.i.i:   ; preds = %bb.ac, %move_pages_and_store_status.exit.thread.i.i.i
  call void @down_read(ptr noundef %i.aw) #10
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_acquire_returned, i64 8), i1 false) #9
          to label %mmap_read_lock.exit.i.i.i.i [label %bb.ad], !srcloc !20

bb.ad:                                            ; preds = %__mmap_lock_trace_start_locking.exit.i.i.i.i.i
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %.0.i.i.i, i1 noundef zeroext false, i1 noundef zeroext true) #10
  br label %mmap_read_lock.exit.i.i.i.i

mmap_read_lock.exit.i.i.i.i:                      ; preds = %bb.ad, %__mmap_lock_trace_start_locking.exit.i.i.i.i.i
  %i.da = load volatile i64, ptr %i.aw, align 8
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.ae, label %mmap_assert_locked.exit.i.i.i.i, !prof !13

bb.ae:                                            ; preds = %mmap_read_lock.exit.i.i.i.i
  call void asm sideeffect "149: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 149b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 149) #9, !srcloc !108
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.5, i32 81, i32 2305, i64 16) #9, !srcloc !109
  call void asm sideeffect "150: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 150b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 150) #9, !srcloc !110
end_hunk_0
begin_hunk_1_@__se_sys_move_pages:bb.a
  br i1 %i.gr, label %.lr.ph.i.i134.i.i.i, label %move_pages_and_store_status.exit139.i.i.i, !llvm.loop !98

.lr.ph.i.i134.i.i.i:                              ; preds = %bb.be, %bb.bf
  %.in.i.i135.i.i.i = phi i32 [ %i.gq, %bb.bf ], [ %i.gn, %bb.be ] ; 2 uses
  %.01214.i.i136.i.i.i = phi i32 [ %i.gp, %bb.bf ], [ %.382.i.i.i, %bb.be ] ; 2 uses
  %i.gs = sext i32 %.01214.i.i136.i.i.i to i64
  %i.gt = getelementptr [4 x i8], ptr %i.f, i64 %i.gs
  %i.gu = call i64 @llvm.read_register.i64(metadata !0)
  %i.gv = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %i.gt, i32 range(i32 -1, 64) %.3.i.i.i, i64 4, i64 %i.gu) #9, !srcloc !107 ; 2 uses
  %i.gw = extractvalue { ptr, i64 } %i.gv, 0
  %i.gx = extractvalue { ptr, i64 } %i.gv, 1
  %i.gy = ptrtoint ptr %i.gw to i64
  call void @llvm.write_register.i64(metadata !0, i64 %i.gx)
  %.mask.i.i137.i.i.i = and i64 %i.gy, 4294967295
  %.not.i17.i138.i.i.i = icmp eq i64 %.mask.i.i137.i.i.i, 0
  br i1 %.not.i17.i138.i.i.i, label %bb.bf, label %move_pages_and_store_status.exit139.i.i.i

move_pages_and_store_status.exit139.i.i.i:        ; preds = %.lr.ph.i.i134.i.i.i, %bb.bf, %bb.be, %bb.bd, %store_status.exit.thread160.i.i.i
  %.014.i133.i.i.i = phi i32 [ 0, %store_status.exit.thread160.i.i.i ], [ %.0.i132.i.i.i, %bb.bd ], [ 0, %bb.be ], [ -14, %.lr.ph.i.i134.i.i.i ], [ 0, %bb.bf ]
  %i.gz = icmp slt i32 %.387.i.i.i, 0
  %spec.select111.i.i.i = select i1 %i.gz, i32 %.387.i.i.i, i32 %.014.i133.i.i.i
  br label %do_pages_move.exit.i.i

do_pages_move.exit.i.i:                           ; preds = %move_pages_and_store_status.exit.i.i.i, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i124.i.i.i, %move_pages_and_store_status.exit139.i.i.i, %bb.bb
  %.4.i.i.i = phi i32 [ %spec.select111.i.i.i, %move_pages_and_store_status.exit139.i.i.i ], [ -14, %.lr.ph.i.i124.i.i.i ], [ -14, %.lr.ph.i.i.i.i.i ], [ %spec.select.i23.i.i, %bb.bb ], [ %.0.i.i.i.i, %move_pages_and_store_status.exit.i.i.i ]
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @lru_disable_count, ptr elementtype(i32) @lru_disable_count) #9, !srcloc !111
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.bw

bb.bg:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %.not58.i.i.i = icmp eq i64 %1, 0
  br i1 %.not58.i.i.i, label %do_pages_stat.exit.i.i, label %.lr.ph.i25.i.i

.lr.ph.i25.i.i:                                   ; preds = %bb.bg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false), !annotation !26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false), !annotation !26
  %i.ha = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #12, !srcloc !39
  %i.hb = inttoptr i64 %i.ha to ptr
  %i.hc = getelementptr i8, ptr %i.hb, i64 16
  %i.hd = getelementptr i8, ptr %.0.i.i.i, i64 464 ; 2 uses
  %i.he = getelementptr i8, ptr %.0.i.i.i, i64 64
  %i.hf = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.hg = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.bh

bb.bh:                                            ; preds = %get_compat_pages_array.exit.i.i.i, %.lr.ph.i25.i.i
  %.02360.i.i.i = phi i64 [ %1, %.lr.ph.i25.i.i ], [ %i.iu, %get_compat_pages_array.exit.i.i.i ] ; 2 uses
  %.02459.i.i.i = phi i64 [ 0, %.lr.ph.i25.i.i ], [ %i.it, %get_compat_pages_array.exit.i.i.i ] ; 4 uses
  %i.hh = call i64 @llvm.umin.i64(i64 %.02360.i.i.i, i64 16) ; 6 uses
  %i.hi = load i32, ptr %i.hc, align 8
  %i.hj = and i32 %i.hi, 2
  %.not.i.i.not.i26.i.i = icmp eq i32 %i.hj, 0
  br i1 %.not.i.i.not.i26.i.i, label %copy_from_user.exit.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hk = getelementptr [4 x i8], ptr %i.d, i64 %.02459.i.i.i
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bk, %bb.bi
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.bk ], [ 0, %bb.bi ] ; 3 uses
  %i.hl = call i64 @llvm.read_register.i64(metadata !0)
  %i.hm = getelementptr [4 x i8], ptr %i.hk, i64 %indvars.iv.i.i
  %i.hn = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %i.hm, i64 4, i64 %i.hl) #9, !srcloc !112 ; 3 uses
  %i.ho = extractvalue { ptr, i32, i64 } %i.hn, 0
  %i.hp = extractvalue { ptr, i32, i64 } %i.hn, 2
  %i.hq = ptrtoint ptr %i.ho to i64
  call void @llvm.write_register.i64(metadata !0, i64 %i.hp)
  %.mask.i.i27.i.i = and i64 %i.hq, 4294967295
  %.not.i.i28.i.i = icmp eq i64 %.mask.i.i27.i.i, 0
  br i1 %.not.i.i28.i.i, label %bb.bk, label %do_pages_stat.exit.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.hr = extractvalue { ptr, i32, i64 } %i.hn, 1
  %i.hs = zext i32 %i.hr to i64
  %i.ht = inttoptr i64 %i.hs to ptr
  %i.hu = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv.i.i
  store ptr %i.ht, ptr %i.hu, align 8
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i.i, %i.hh
  br i1 %exitcond.not.i, label %get_compat_pages_array.exit.thread.i.i.i, label %bb.bj, !llvm.loop !100

copy_from_user.exit.i.i.i:                        ; preds = %bb.bh
  %i.hv = shl nuw nsw i64 %i.hh, 3
  %i.hw = getelementptr [8 x i8], ptr %i.d, i64 %.02459.i.i.i
  %i.hx = call i64 @_copy_from_user(ptr noundef nonnull %i.a, ptr noundef %i.hw, i64 noundef %i.hv) #10
  %.not26.i.i.i = icmp eq i64 %i.hx, 0
  br i1 %.not26.i.i.i, label %get_compat_pages_array.exit.thread.i.i.i, label %do_pages_stat.exit.i.i

get_compat_pages_array.exit.thread.i.i.i:         ; preds = %bb.bk, %copy_from_user.exit.i.i.i
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_start_locking, i64 8), i1 false) #9
          to label %__mmap_lock_trace_start_locking.exit.i.i.i29.i.i [label %bb.bl], !srcloc !20

bb.bl:                                            ; preds = %get_compat_pages_array.exit.thread.i.i.i
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %.0.i.i.i, i1 noundef zeroext false) #10
  br label %__mmap_lock_trace_start_locking.exit.i.i.i29.i.i

__mmap_lock_trace_start_locking.exit.i.i.i29.i.i: ; preds = %bb.bl, %get_compat_pages_array.exit.thread.i.i.i
  call void @down_read(ptr noundef %i.hd) #10
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_acquire_returned, i64 8), i1 false) #9
          to label %mmap_read_lock.exit.i.i30.i.i.preheader [label %bb.bm], !srcloc !20

bb.bm:                                            ; preds = %__mmap_lock_trace_start_locking.exit.i.i.i29.i.i
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %.0.i.i.i, i1 noundef zeroext false, i1 noundef zeroext true) #10
  br label %mmap_read_lock.exit.i.i30.i.i.preheader

mmap_read_lock.exit.i.i30.i.i.preheader:          ; preds = %bb.bm, %__mmap_lock_trace_start_locking.exit.i.i.i29.i.i
  br label %mmap_read_lock.exit.i.i30.i.i

mmap_read_lock.exit.i.i30.i.i:                    ; preds = %mmap_read_lock.exit.i.i30.i.i.preheader, %bb.bt
  %.02029.i.i.i.i = phi i64 [ %i.ip, %bb.bt ], [ 0, %mmap_read_lock.exit.i.i30.i.i.preheader ]
  %.02128.i.i.i.i = phi ptr [ %i.io, %bb.bt ], [ %i.b, %mmap_read_lock.exit.i.i30.i.i.preheader ] ; 2 uses
  %.02227.i.i.i.i = phi ptr [ %i.in, %bb.bt ], [ %i.a, %mmap_read_lock.exit.i.i30.i.i.preheader ] ; 2 uses
  %i.hy = load ptr, ptr %.02227.i.i.i.i, align 8
  %i.hz = ptrtoint ptr %i.hy to i64               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 48, i1 false), !annotation !26
  %i.ia = call ptr @mtree_load(ptr noundef %i.he, i64 noundef %i.hz) #10 ; 3 uses
  %.not.i37.i.i.i = icmp eq ptr %i.ia, null
  br i1 %.not.i37.i.i.i, label %bb.bt, label %bb.bn

bb.bn:                                            ; preds = %mmap_read_lock.exit.i.i30.i.i
  %i.ib = call ptr @folio_walk_start(ptr noundef nonnull %6, ptr noundef nonnull %i.ia, i64 noundef %i.hz, i32 noundef 1) #10 ; 3 uses
  %.not25.i.i.i.i = icmp eq ptr %i.ib, null
  br i1 %.not25.i.i.i.i, label %bb.bt, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ic = load i64, ptr @vmemmap_base, align 8
  %i.id = ptrtoint ptr %i.ib to i64
  %i.ie = sub i64 %i.id, %i.ic
  %i.if = ashr exact i64 %i.ie, 6
  %i.ig = load i64, ptr @zero_page_pfn, align 8
  %i.ih = icmp eq i64 %i.if, %i.ig
  br i1 %i.ih, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.val.i.i.i.i = load i64, ptr %i.ib, align 16
  %i.ii = lshr i64 %.val.i.i.i.i, 58
  %i.ij = trunc nuw nsw i64 %i.ii to i32
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.0.i38.i.i.i = phi i32 [ %i.ij, %bb.bp ], [ -14, %bb.bo ]
  %i.ik = load ptr, ptr %i.hf, align 8
  call void @_raw_spin_unlock(ptr noundef %i.ik) #10
  %i.il = load i32, ptr %i.hg, align 8
  %i.im = icmp eq i32 %i.il, 0
  br i1 %i.im, label %bb.br, label %bb.bs, !prof !11

bb.br:                                            ; preds = %bb.bq
  call void @__rcu_read_unlock() #10
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  call void @vma_pgtable_walk_end(ptr noundef nonnull %i.ia) #10
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.bn, %mmap_read_lock.exit.i.i30.i.i
  %.1.i.i.i.i = phi i32 [ %.0.i38.i.i.i, %bb.bs ], [ -14, %mmap_read_lock.exit.i.i30.i.i ], [ -2, %bb.bn ]
  store i32 %.1.i.i.i.i, ptr %.02128.i.i.i.i, align 4
  %i.in = getelementptr i8, ptr %.02227.i.i.i.i, i64 8
  %i.io = getelementptr i8, ptr %.02128.i.i.i.i, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %i.ip = add nuw i64 %.02029.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ip, %i.hh
  br i1 %exitcond.not.i.i.i.i, label %bb.bu, label %mmap_read_lock.exit.i.i30.i.i, !llvm.loop !101

bb.bu:                                            ; preds = %bb.bt
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_released, i64 8), i1 false) #9
          to label %do_pages_stat_array.exit.i.i.i [label %bb.bv], !srcloc !20

bb.bv:                                            ; preds = %bb.bu
  call void @__mmap_lock_do_trace_released(ptr noundef %.0.i.i.i, i1 noundef zeroext false) #10
  br label %do_pages_stat_array.exit.i.i.i

do_pages_stat_array.exit.i.i.i:                   ; preds = %bb.bv, %bb.bu
  call void @up_read(ptr noundef %i.hd) #10
  %i.iq = getelementptr [4 x i8], ptr %i.f, i64 %.02459.i.i.i
  %i.ir = shl nuw nsw i64 %i.hh, 2
  %i.is = call i64 @_copy_to_user(ptr noundef %i.iq, ptr noundef nonnull %i.b, i64 noundef %i.ir) #10
  %.not28.i.i.i = icmp eq i64 %i.is, 0
  br i1 %.not28.i.i.i, label %get_compat_pages_array.exit.i.i.i, label %do_pages_stat.exit.i.i

get_compat_pages_array.exit.i.i.i:                ; preds = %do_pages_stat_array.exit.i.i.i
  %i.it = add i64 %i.hh, %.02459.i.i.i
  %i.iu = sub nuw i64 %.02360.i.i.i, %i.hh        ; 2 uses
  %.not.i31.i.i = icmp eq i64 %i.iu, 0
  br i1 %.not.i31.i.i, label %do_pages_stat.exit.i.i, label %bb.bh

do_pages_stat.exit.i.i:                           ; preds = %get_compat_pages_array.exit.i.i.i, %do_pages_stat_array.exit.i.i.i, %copy_from_user.exit.i.i.i, %bb.bj, %bb.bg
  %i.iv = phi i32 [ 0, %bb.bg ], [ -14, %bb.bj ], [ -14, %do_pages_stat_array.exit.i.i.i ], [ -14, %copy_from_user.exit.i.i.i ], [ 0, %get_compat_pages_array.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.bw

bb.bw:                                            ; preds = %do_pages_stat.exit.i.i, %do_pages_move.exit.i.i
  %.0.i.i = phi i32 [ %.4.i.i.i, %do_pages_move.exit.i.i ], [ %i.iv, %do_pages_stat.exit.i.i ]
  call void @mmput(ptr noundef %.0.i.i.i) #10
  %13 = sext i32 %.0.i.i to i64
  br label %__do_sys_move_pages.exit

__do_sys_move_pages.exit:                         ; preds = %bb.a, %bb.c, %find_mm_struct.exit.thread.i.i, %bb.bw
  %.018.i.i = phi i64 [ -22, %bb.a ], [ %i.ak, %find_mm_struct.exit.thread.i.i ], [ %13, %bb.bw ], [ -1, %bb.c ]
  ret i64 %.018.i.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__ia32_sys_move_pages(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
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
  %i.m = getelementptr i8, ptr %0, i64 112
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, 4294967295
  %i.p = getelementptr i8, ptr %0, i64 32
  %i.q = load i64, ptr %i.p, align 8
  %i.r = and i64 %i.q, 4294967295
  %i.s = tail call fastcc i64 @__se_sys_move_pages(i64 noundef %i.c, i64 noundef %i.f, i64 noundef %i.i, i64 noundef %i.l, i64 noundef %i.o, i64 noundef %i.r) #11, !srcloc !113
  ret i64 %i.s
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__folio_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mod_node_page_state(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @page_vma_mapped_walk(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @pte_mkwrite(i64, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @hugetlb_add_anon_rmap(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @folio_add_anon_rmap_ptes(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @folio_add_file_rmap_ptes(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mlock_drain_local() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @memcmp_pages(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mm_trace_rss_stat(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_remove_migration_pte(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_unlock() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__swap_cache_replace_folio(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__mod_zone_page_state(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_lock() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @inode_to_bdi(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @invalidate_bh_lrus() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @folio_set_bh(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_mm_migrate_pages_start(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @folio_mapping(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @folio_get_anon_vma(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @hugetlb_folio_mapping_lock_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @try_to_migrate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @move_to_new_folio(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @folio_mapping(ptr noundef %1) #10 ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %mapping_inaccessible.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load volatile i64, ptr %1, align 8
  %i.c = and i64 %i.b, 2
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %migrate_folio.exit, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "747: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 747b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 747) #9, !srcloc !36
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 898, i32 0, i64 16) #9, !srcloc !37
  unreachable

migrate_folio.exit:                               ; preds = %bb.b
  %i.d = tail call fastcc i32 @__migrate_folio(ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef null) #11
  br label %fallback_migrate_folio.exit

mapping_inaccessible.exit:                        ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.a, i64 104
  %i.f = load volatile i64, ptr %i.e, align 8
  %.in.in.i = and i64 %i.f, 256
  %.in.i.not = icmp eq i64 %.in.in.i, 0
  br i1 %.in.i.not, label %bb.d, label %fallback_migrate_folio.exit.thread

bb.d:                                             ; preds = %mapping_inaccessible.exit
  %i.g = getelementptr i8, ptr %i.a, i64 96       ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 88
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not24 = icmp eq ptr %i.j, null
  br i1 %.not24, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 %i.j(ptr noundef nonnull %i.a, ptr noundef %0, ptr noundef %1, i32 noundef %2) #10
  br label %fallback_migrate_folio.exit

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %i.h, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %.not.i26 = icmp eq ptr %i.m, null
  br i1 %.not.i26, label %bb.h, label %bb.g, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.n = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, ptr @.str.1, i32 1067, i32 2323, i64 16) #9, !srcloc !40
  %i.o = load ptr, ptr %i.g, align 8
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.n, ptr noundef %i.o) #10
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !41
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = load volatile i64, ptr %1, align 8
  %i.q = and i64 %i.p, 16
  %.not16.i = icmp eq i64 %i.q, 0
  br i1 %.not16.i, label %bb.i, label %fallback_migrate_folio.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.r = tail call zeroext i1 @filemap_release_folio(ptr noundef %1, i32 noundef 3264) #10
  br i1 %i.r, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = icmp eq i32 %2, 2
  %i.t = select i1 %i.s, i32 -11, i32 -16
  br label %fallback_migrate_folio.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.u = load volatile i64, ptr %1, align 8
end_hunk_1
