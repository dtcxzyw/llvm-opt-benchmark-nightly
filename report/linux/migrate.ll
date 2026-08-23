Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/migrate?download=true
inline.NumInlined: 798
inline.NumDeleted: 281
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@alloc_migration_target:bb.a
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
  %i.j = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #12, !srcloc !83
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 1400     ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 132      ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.n, ptr elementtype(i32) %i.n) #9, !srcloc !35
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
  %i.af = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ae, i32 -1, ptr elementtype(i32) %i.ae) #9, !srcloc !98 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = icmp slt i32 %i.af, 1
  br i1 %i.ah, label %bb.n, label %put_task_struct.exit.i.i.i, !prof !18

bb.n:                                             ; preds = %bb.m
  tail call void @refcount_warn_saturate(ptr noundef %i.ae, i32 noundef 3) #10
  br label %put_task_struct.exit.i.i.i

bb.o:                                             ; preds = %bb.l
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !99
  %i.ai = getelementptr i8, ptr %i.q, i64 2880
  tail call void @call_rcu(ptr noundef %i.ai, ptr noundef nonnull @__put_task_struct_rcu_cb) #10
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
  %i.al = trunc i64 %i.ak to i32
  br label %__do_sys_move_pages.exit

bb.p:                                             ; preds = %find_mm_struct.exit.i.i
  %.not21.i.i = icmp eq i64 %3, 0
  br i1 %.not21.i.i, label %bb.bg, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store i64 %.sroa.0.2.i.i, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  store ptr %12, ptr %12, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store ptr %12, ptr %i.am, align 8
  call void @lru_cache_disable() #10
  %.not242.i.i.i = icmp eq i64 %1, 0
  br i1 %.not242.i.i.i, label %store_status.exit.thread160.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.q
  %i.an = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #12, !srcloc !83
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr i8, ptr %i.ao, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.au = ptrtoint ptr %10 to i64
  %i.av = trunc i64 %1 to i32                     ; 2 uses
  %i.aw = icmp samesign ugt i32 %i.g, 3           ; 2 uses
  %i.ax = getelementptr i8, ptr %.0.i.i.i, i64 464 ; 3 uses
  %i.ay = getelementptr i8, ptr %.0.i.i.i, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.bf = ptrtoint ptr %8 to i64
  br label %bb.r

bb.r:                                             ; preds = %store_status.exit.i.i.i, %.lr.ph.i.i.i
  %i.bg = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ga, %store_status.exit.i.i.i ] ; 3 uses
  %.078201.i.i.i = phi i32 [ -1, %.lr.ph.i.i.i ], [ %.2.i.i.i, %store_status.exit.i.i.i ] ; 11 uses
  %.079200.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %.180.i.i.i, %store_status.exit.i.i.i ] ; 9 uses
  %.083199.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.fz, %store_status.exit.i.i.i ] ; 20 uses
  %i.bh = load i32, ptr %i.ap, align 8
  %i.bi = and i32 %i.bh, 2
  %.not.i.i.not.i.i.i = icmp eq i32 %i.bi, 0
  %i.bj = call i64 @llvm.read_register.i64(metadata !0) ; 2 uses
  br i1 %.not.i.i.not.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = getelementptr [4 x i8], ptr %i.d, i64 %i.bg
  %i.bl = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %i.bk, i64 4, i64 %i.bj) #9, !srcloc !100 ; 3 uses
  %i.bm = extractvalue { ptr, i32, i64 } %i.bl, 0
  %i.bn = extractvalue { ptr, i32, i64 } %i.bl, 2
  %i.bo = ptrtoint ptr %i.bm to i64
  call void @llvm.write_register.i64(metadata !0, i64 %i.bn)
  %sext.mask102.i.i.i = and i64 %i.bo, 4294967295
  %.not101.i.i.i = icmp eq i64 %sext.mask102.i.i.i, 0
  br i1 %.not101.i.i.i, label %.thread.i.i.i, label %store_status.exit.thread160.i.i.i

.thread.i.i.i:                                    ; preds = %bb.s
  %i.bp = extractvalue { ptr, i32, i64 } %i.bl, 1
  %i.bq = zext i32 %i.bp to i64
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.br = getelementptr [8 x i8], ptr %i.d, i64 %i.bg
  %i.bs = call { ptr, i64, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %i.br, i64 8, i64 %i.bj) #9, !srcloc !101 ; 3 uses
  %i.bt = extractvalue { ptr, i64, i64 } %i.bs, 0
  %i.bu = extractvalue { ptr, i64, i64 } %i.bs, 1
  %i.bv = extractvalue { ptr, i64, i64 } %i.bs, 2
  %i.bw = ptrtoint ptr %i.bt to i64
  call void @llvm.write_register.i64(metadata !0, i64 %i.bv)
  %sext.mask.i.i.i = and i64 %i.bw, 4294967295
  %.not.i24.i.i = icmp eq i64 %sext.mask.i.i.i, 0
  br i1 %.not.i24.i.i, label %bb.u, label %store_status.exit.thread160.i.i.i

bb.u:                                             ; preds = %bb.t, %.thread.i.i.i
  %.189.in.i.i.i = phi i64 [ %i.bq, %.thread.i.i.i ], [ %i.bu, %bb.t ] ; 2 uses
  %i.bx = call i64 @llvm.read_register.i64(metadata !0)
  %i.by = getelementptr [4 x i8], ptr %i.e, i64 %i.bg
  %i.bz = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %i.by, i64 4, i64 %i.bx) #9, !srcloc !102 ; 3 uses
  %i.ca = extractvalue { ptr, i32, i64 } %i.bz, 0
  %i.cb = extractvalue { ptr, i32, i64 } %i.bz, 1 ; 8 uses
  %i.cc = extractvalue { ptr, i32, i64 } %i.bz, 2
  %i.cd = ptrtoint ptr %i.ca to i64
  call void @llvm.write_register.i64(metadata !0, i64 %i.cc)
  %i.ce = zext i32 %i.cb to i64                   ; 2 uses
  %sext.mask104.i.i.i = and i64 %i.cd, 4294967295
  %.not103.i.i.i = icmp eq i64 %sext.mask104.i.i.i, 0
  br i1 %.not103.i.i.i, label %bb.v, label %store_status.exit.thread160.i.i.i

bb.v:                                             ; preds = %bb.u
  %or.cond.i.i.i = icmp ugt i32 %i.cb, 63
  br i1 %or.cond.i.i.i, label %store_status.exit.thread160.i.i.i, label %.split272.i.i.i

.split272.i.i.i:                                  ; preds = %bb.v
  %i.cf = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @node_states, i64 24), i64 range(i64 0, 4294967296) %i.ce) #9, !srcloc !39 ; 2 uses
  %i.cg = icmp ult i8 %i.cf, 2
  call void @llvm.assume(i1 %i.cg)
  %i.ch = trunc nuw i8 %i.cf to i1
  br i1 %i.ch, label %arch_test_bit.exit.i.i.i, label %store_status.exit.thread160.i.i.i

arch_test_bit.exit.i.i.i:                         ; preds = %.split272.i.i.i
  %i.ci = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %11, i64 range(i64 0, 4294967296) %i.ce) #9, !srcloc !39 ; 2 uses
  %i.cj = icmp ult i8 %i.ci, 2
  call void @llvm.assume(i1 %i.cj)
  %i.ck = trunc nuw i8 %i.ci to i1
  br i1 %i.ck, label %bb.w, label %store_status.exit.thread160.i.i.i

bb.w:                                             ; preds = %arch_test_bit.exit.i.i.i
  %i.cl = icmp eq i32 %.078201.i.i.i, -1
  br i1 %i.cl, label %move_pages_and_store_status.exit.thread.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not106.i.i.i = icmp eq i32 %.078201.i.i.i, %i.cb
  br i1 %.not106.i.i.i, label %move_pages_and_store_status.exit.thread.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = load volatile ptr, ptr %12, align 8
  %.not.i.i.i.i = icmp eq ptr %i.cm, %12
  br i1 %.not.i.i.i.i, label %move_pages_and_store_status.exit.thread.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  store i32 %.078201.i.i.i, ptr %10, align 8
  store i32 0, ptr %i.aq, align 4
  store ptr null, ptr %i.ar, align 8
  store i32 3149002, ptr %i.as, align 8
  store i32 3, ptr %i.at, align 4
  %i.cn = call i32 @migrate_pages(ptr noundef nonnull %12, ptr noundef nonnull @alloc_migration_target, ptr noundef null, i64 noundef %i.au, i32 noundef 2, i32 noundef 3, ptr noundef null) #11 ; 3 uses
  %.not.i.i113.i.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i113.i.i.i, label %bb.aa, label %move_pages_and_store_status.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  %i.co = sub i32 %.083199.i.i.i, %.079200.i.i.i
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph.i.i.i.i.i, label %move_pages_and_store_status.exit.thread.i.i.i

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.cq = add i32 %.01214.i.i.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.cq, %.083199.i.i.i
  br i1 %exitcond.not.i.i.i, label %move_pages_and_store_status.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !103

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.aa, %bb.ab
  %.01214.i.i.i.i.i = phi i32 [ %i.cq, %bb.ab ], [ %.079200.i.i.i, %bb.aa ] ; 2 uses
  %i.cr = sext i32 %.01214.i.i.i.i.i to i64
  %i.cs = getelementptr [4 x i8], ptr %i.f, i64 %i.cr
  %i.ct = call i64 @llvm.read_register.i64(metadata !0)
  %i.cu = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %i.cs, i32 range(i32 -1, 64) %.078201.i.i.i, i64 4, i64 %i.ct) #9, !srcloc !104 ; 2 uses
  %i.cv = extractvalue { ptr, i64 } %i.cu, 0
  %i.cw = extractvalue { ptr, i64 } %i.cu, 1
  %i.cx = ptrtoint ptr %i.cv to i64
  call void @llvm.write_register.i64(metadata !0, i64 %i.cw)
  %sext.mask.i.i.i.i.i = and i64 %i.cx, 4294967295
  %.not.i17.i.i.i.i = icmp eq i64 %sext.mask.i.i.i.i.i, 0
  br i1 %.not.i17.i.i.i.i, label %bb.ab, label %do_pages_move.exit.i.i

move_pages_and_store_status.exit.i.i.i:           ; preds = %bb.z
  call void @putback_movable_pages(ptr noundef nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  %i.cy = icmp sgt i32 %i.cn, 0
  %i.cz = sub i32 %i.av, %.083199.i.i.i
  %i.da = select i1 %i.cy, i32 %i.cz, i32 0
  %.0.i.i.i.i = add i32 %i.da, %i.cn              ; 2 uses
  %.not107.i.i.i = icmp eq i32 %.0.i.i.i.i, 0
  br i1 %.not107.i.i.i, label %move_pages_and_store_status.exit.thread.i.i.i, label %do_pages_move.exit.i.i

move_pages_and_store_status.exit.thread.i.i.i:    ; preds = %bb.ab, %move_pages_and_store_status.exit.i.i.i, %bb.aa, %bb.y, %bb.x, %bb.w
  %.180.i.i.i = phi i32 [ %.079200.i.i.i, %bb.x ], [ %.083199.i.i.i, %bb.w ], [ %.083199.i.i.i, %move_pages_and_store_status.exit.i.i.i ], [ %.083199.i.i.i, %bb.y ], [ %.083199.i.i.i, %bb.aa ], [ %.083199.i.i.i, %bb.ab ] ; 5 uses
  %.1.i22.i.i = phi i32 [ %.078201.i.i.i, %bb.x ], [ %i.cb, %bb.w ], [ %i.cb, %move_pages_and_store_status.exit.i.i.i ], [ %i.cb, %bb.y ], [ %i.cb, %bb.aa ], [ %i.cb, %bb.ab ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 0, i64 48, i1 false), !annotation !44
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_start_locking, i64 8), i1 false) #9
          to label %__mmap_lock_trace_start_locking.exit.i.i.i.i.i [label %bb.ac], !srcloc !37

bb.ac:                                            ; preds = %move_pages_and_store_status.exit.thread.i.i.i
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %.0.i.i.i, i1 noundef zeroext false) #10
  br label %__mmap_lock_trace_start_locking.exit.i.i.i.i.i

__mmap_lock_trace_start_locking.exit.i.i.i.i.i:   ; preds = %bb.ac, %move_pages_and_store_status.exit.thread.i.i.i
  call void @down_read(ptr noundef %i.ax) #10
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_acquire_returned, i64 8), i1 false) #9
          to label %mmap_read_lock.exit.i.i.i.i [label %bb.ad], !srcloc !37

bb.ad:                                            ; preds = %__mmap_lock_trace_start_locking.exit.i.i.i.i.i
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %.0.i.i.i, i1 noundef zeroext false, i1 noundef zeroext true) #10
  br label %mmap_read_lock.exit.i.i.i.i

mmap_read_lock.exit.i.i.i.i:                      ; preds = %bb.ad, %__mmap_lock_trace_start_locking.exit.i.i.i.i.i
  %i.db = load volatile i64, ptr %i.ax, align 8
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %bb.ae, label %mmap_assert_locked.exit.i.i.i.i, !prof !18

bb.ae:                                            ; preds = %mmap_read_lock.exit.i.i.i.i
  call void asm sideeffect "149: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 149b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 149) #9, !srcloc !105
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.5, i32 81, i32 2305, i64 16) #9, !srcloc !106
  call void asm sideeffect "150: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 150b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 150) #9, !srcloc !107
  br label %mmap_assert_locked.exit.i.i.i.i

mmap_assert_locked.exit.i.i.i.i:                  ; preds = %bb.ae, %mmap_read_lock.exit.i.i.i.i
  %i.dd = call ptr @mtree_load(ptr noundef %i.ay, i64 noundef %.189.in.i.i.i) #10 ; 4 uses
  %.not.i115.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i115.i.i.i, label %bb.av, label %bb.af

bb.af:                                            ; preds = %mmap_assert_locked.exit.i.i.i.i
  %i.de = call zeroext i1 @vma_migratable(ptr noundef nonnull %i.dd) #10
  br i1 %i.de, label %bb.ag, label %bb.av

bb.ag:                                            ; preds = %bb.af
  %i.df = call ptr @folio_walk_start(ptr noundef nonnull %9, ptr noundef nonnull %i.dd, i64 noundef %.189.in.i.i.i, i32 noundef 1) #10 ; 16 uses
  %.not19.i.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not19.i.i.i.i, label %bb.av, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dg = load i64, ptr @vmemmap_base, align 8
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dh, %i.dg
  %i.dj = ashr exact i64 %i.di, 6
  %i.dk = load i64, ptr @zero_page_pfn, align 8
  %i.dl = icmp eq i64 %i.dj, %i.dk
  br i1 %i.dl, label %__add_folio_for_migration.exit.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.val.i.i.i.i.i = load i64, ptr %i.df, align 16
  %i.dm = lshr i64 %.val.i.i.i.i.i, 58
  %i.dn = trunc nuw nsw i64 %i.dm to i32
  %i.do = icmp eq i32 %.1.i22.i.i, %i.dn
  br i1 %i.do, label %__add_folio_for_migration.exit.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dp = load volatile i64, ptr %i.df, align 16
  %i.dq = and i64 %i.dp, 64
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ak, label %bb.al, !prof !13

bb.ak:                                            ; preds = %bb.aj
  %i.dr = getelementptr i8, ptr %i.df, i64 48
  %i.ds = load volatile i32, ptr %i.dr, align 16  ; 2 uses
  %i.dt = add i32 %i.ds, 1
  %i.du = icmp slt i32 %i.ds, -16777216
  %spec.select.i.i.i.i.i.i.i = select i1 %i.du, i32 0, i32 %i.dt
  br label %folio_mapcount.exit.i.i.i.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.dv = getelementptr i8, ptr %i.df, i64 80
  %i.dw = load volatile i32, ptr %i.dv, align 16
  %i.dx = add i32 %i.dw, 1
  br label %folio_mapcount.exit.i.i.i.i.i.i

folio_mapcount.exit.i.i.i.i.i.i:                  ; preds = %bb.al, %bb.ak
  %.05.i.i.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i.i.i, %bb.ak ], [ %i.dx, %bb.al ]
  %i.dy = load volatile i64, ptr %i.df, align 16
  %i.dz = and i64 %i.dy, 64
  %.not.i.i.i.i.i.i = icmp eq i64 %i.dz, 0
  br i1 %.not.i.i.i.i.i.i, label %.split.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %folio_mapcount.exit.i.i.i.i.i.i
  %i.ea = getelementptr i8, ptr %i.df, i64 48
  %i.eb = load i32, ptr %i.ea, align 16           ; 2 uses
  %.mask.i.i.i.i.i.i.i = and i32 %i.eb, -16777216
  %i.ec = icmp eq i32 %.mask.i.i.i.i.i.i.i, -201326592
  br i1 %i.ec, label %.split.i.i.i.i.i, label %folio_maybe_mapped_shared.exit.i.i.i.i.i, !prof !18

.split.i.i.i.i.i:                                 ; preds = %bb.am, %folio_mapcount.exit.i.i.i.i.i.i
  %i.ed = icmp slt i32 %.05.i.i.i.i.i.i.i, 2
  %i.ee = or i1 %i.aw, %i.ed
  br i1 %i.ee, label %.split.i._crit_edge.i.i.i.i, label %__add_folio_for_migration.exit.i.i.i.i

.split.i._crit_edge.i.i.i.i:                      ; preds = %.split.i.i.i.i.i
  %.phi.trans.insert.i.i.i.i = getelementptr i8, ptr %i.df, i64 48
  %.pre.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 16
  br label %bb.an

folio_maybe_mapped_shared.exit.i.i.i.i.i:         ; preds = %bb.am
  br i1 %i.aw, label %bb.an, label %__add_folio_for_migration.exit.i.i.i.i

bb.an:                                            ; preds = %folio_maybe_mapped_shared.exit.i.i.i.i.i, %.split.i._crit_edge.i.i.i.i
  %i.ef = phi i32 [ %.pre.i.i.i.i, %.split.i._crit_edge.i.i.i.i ], [ %i.eb, %folio_maybe_mapped_shared.exit.i.i.i.i.i ]
  %.mask.i.i.i.i.i.i = and i32 %i.ef, -16777216
  %i.eg = icmp eq i32 %.mask.i.i.i.i.i.i, -201326592
  br i1 %i.eg, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.eh = call zeroext i1 @folio_isolate_hugetlb(ptr noundef nonnull %i.df, ptr noundef nonnull %12) #10
  br i1 %i.eh, label %__add_folio_for_migration.exit.i.i.i.i, label %bb.as

bb.ap:                                            ; preds = %bb.an
  %i.ei = call zeroext i1 @folio_isolate_lru(ptr noundef nonnull %i.df) #10
  br i1 %i.ei, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.ej = getelementptr i8, ptr %i.df, i64 8      ; 3 uses
  %i.ek = load ptr, ptr %i.am, align 8            ; 2 uses
  store ptr %i.ej, ptr %i.am, align 8
  store ptr %12, ptr %i.ej, align 8
  %i.el = getelementptr i8, ptr %i.df, i64 16
  store ptr %i.ek, ptr %i.el, align 16
  store volatile ptr %i.ej, ptr %i.ek, align 8
  %i.em = load volatile i64, ptr %i.df, align 16
  %i.en = and i64 %i.em, 131072
  %.not.i19.i.i.i.i.i = icmp eq i64 %i.en, 0
  %i.eo = select i1 %.not.i19.i.i.i.i.i, i32 8, i32 7
  %i.ep = load volatile i64, ptr %i.df, align 16  ; 2 uses
  %i.eq = and i64 %i.ep, 64
  %.not.i20.i.i.i.i.i = icmp eq i64 %i.eq, 0
  br i1 %.not.i20.i.i.i.i.i, label %folio_nr_pages.exit.i.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.er = getelementptr i8, ptr %i.df, i64 64
  %.val.i.i.i.i.i.i = load i64, ptr %i.er, align 16
  %i.es = and i64 %.val.i.i.i.i.i.i, 255
  %i.et = shl nuw i64 1, %i.es
  br label %folio_nr_pages.exit.i.i.i.i.i

folio_nr_pages.exit.i.i.i.i.i:                    ; preds = %bb.ar, %bb.aq
  %.0.i21.i.i.i.i.i = phi i64 [ %i.et, %bb.ar ], [ 1, %bb.aq ]
  %i.eu = lshr i64 %i.ep, 58
  %i.ev = getelementptr [8 x i8], ptr @node_data, i64 %i.eu
  %i.ew = load ptr, ptr %i.ev, align 8
  call void @mod_node_page_state(ptr noundef %i.ew, i32 noundef range(i32 7, 9) %i.eo, i64 noundef %.0.i21.i.i.i.i.i) #10
  br label %__add_folio_for_migration.exit.i.i.i.i

bb.as:                                            ; preds = %bb.ap, %bb.ao
  br label %__add_folio_for_migration.exit.i.i.i.i

__add_folio_for_migration.exit.i.i.i.i:           ; preds = %bb.as, %folio_nr_pages.exit.i.i.i.i.i, %bb.ao, %folio_maybe_mapped_shared.exit.i.i.i.i.i, %.split.i.i.i.i.i, %bb.ai, %bb.ah
  %.0.i.i.i.i.i = phi i32 [ 1, %folio_nr_pages.exit.i.i.i.i.i ], [ 0, %bb.ai ], [ -14, %bb.ah ], [ -13, %folio_maybe_mapped_shared.exit.i.i.i.i.i ], [ -16, %bb.as ], [ 1, %bb.ao ], [ -13, %.split.i.i.i.i.i ]
  %i.ex = load ptr, ptr %i.az, align 8
  call void @_raw_spin_unlock(ptr noundef %i.ex) #10
  %i.ey = load i32, ptr %i.ba, align 8
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.at, label %bb.au, !prof !13

bb.at:                                            ; preds = %__add_folio_for_migration.exit.i.i.i.i
  call void @__rcu_read_unlock() #10
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %__add_folio_for_migration.exit.i.i.i.i
  call void @vma_pgtable_walk_end(ptr noundef nonnull %i.dd) #10
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.ag, %bb.af, %mmap_assert_locked.exit.i.i.i.i
  %.0.i116.i.i.i = phi i32 [ %.0.i.i.i.i.i, %bb.au ], [ -14, %mmap_assert_locked.exit.i.i.i.i ], [ -14, %bb.af ], [ -2, %bb.ag ] ; 3 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_released, i64 8), i1 false) #9
          to label %add_folio_for_migration.exit.i.i.i [label %bb.aw], !srcloc !37

bb.aw:                                            ; preds = %bb.av
  call void @__mmap_lock_do_trace_released(ptr noundef %.0.i.i.i, i1 noundef zeroext false) #10
  br label %add_folio_for_migration.exit.i.i.i

add_folio_for_migration.exit.i.i.i:               ; preds = %bb.aw, %bb.av
  call void @up_read(ptr noundef %i.ax) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  %i.fa = icmp sgt i32 %.0.i116.i.i.i, 0
  br i1 %i.fa, label %store_status.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %add_folio_for_migration.exit.i.i.i
  %.not108.i.i.i = icmp eq i32 %.0.i116.i.i.i, 0
  %i.fb = select i1 %.not108.i.i.i, i32 %.1.i22.i.i, i32 %.0.i116.i.i.i
  %13 = sext i32 %.083199.i.i.i to i64
  %i.fc = getelementptr [4 x i8], ptr %i.f, i64 %13
  %i.fd = call i64 @llvm.read_register.i64(metadata !0)
  %i.fe = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %i.fc, i32 range(i32 -2147483648, 64) %i.fb, i64 4, i64 %i.fd) #9, !srcloc !104 ; 2 uses
  %i.ff = extractvalue { ptr, i64 } %i.fe, 0
  %i.fg = extractvalue { ptr, i64 } %i.fe, 1
  %i.fh = ptrtoint ptr %i.ff to i64
  call void @llvm.write_register.i64(metadata !0, i64 %i.fg)
  %sext.mask.i.i.i.i = and i64 %i.fh, 4294967295
  %.not.i118.i.i.i = icmp eq i64 %sext.mask.i.i.i.i, 0
  br i1 %.not.i118.i.i.i, label %bb.ax, label %store_status.exit.thread160.i.i.i

bb.ax:                                            ; preds = %.lr.ph.i.i.i.i
  %i.fi = load volatile ptr, ptr %12, align 8
  %.not.i120.i.i.i = icmp eq ptr %i.fi, %12
  br i1 %.not.i120.i.i.i, label %store_status.exit.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  store i32 %.1.i22.i.i, ptr %8, align 8
  store i32 0, ptr %i.bb, align 4
  store ptr null, ptr %i.bc, align 8
  store i32 3149002, ptr %i.bd, align 8
  store i32 3, ptr %i.be, align 4
  %i.fj = call i32 @migrate_pages(ptr noundef nonnull %12, ptr noundef nonnull @alloc_migration_target, ptr noundef null, i64 noundef %i.bf, i32 noundef 2, i32 noundef 3, ptr noundef null) #11 ; 3 uses
  %.not.i.i121.i.i.i = icmp eq i32 %i.fj, 0
  br i1 %.not.i.i121.i.i.i, label %bb.az, label %move_pages_and_store_status.exit129.i.i.i

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  %i.fk = sub i32 %.083199.i.i.i, %.180.i.i.i
  %i.fl = icmp sgt i32 %i.fk, 0
  br i1 %i.fl, label %.lr.ph.i.i124.i.i.i, label %store_status.exit.i.i.i

bb.ba:                                            ; preds = %.lr.ph.i.i124.i.i.i
  %i.fm = add i32 %.01214.i.i126.i.i.i, 1         ; 2 uses
  %exitcond256.not.i.i.i = icmp eq i32 %i.fm, %.083199.i.i.i
  br i1 %exitcond256.not.i.i.i, label %store_status.exit.i.i.i, label %.lr.ph.i.i124.i.i.i, !llvm.loop !103

.lr.ph.i.i124.i.i.i:                              ; preds = %bb.az, %bb.ba
  %.01214.i.i126.i.i.i = phi i32 [ %i.fm, %bb.ba ], [ %.180.i.i.i, %bb.az ] ; 2 uses
  %i.fn = sext i32 %.01214.i.i126.i.i.i to i64
  %i.fo = getelementptr [4 x i8], ptr %i.f, i64 %i.fn
  %i.fp = call i64 @llvm.read_register.i64(metadata !0)
  %i.fq = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %i.fo, i32 range(i32 -1, 64) %.1.i22.i.i, i64 4, i64 %i.fp) #9, !srcloc !104 ; 2 uses
  %i.fr = extractvalue { ptr, i64 } %i.fq, 0
  %i.fs = extractvalue { ptr, i64 } %i.fq, 1
  %i.ft = ptrtoint ptr %i.fr to i64
  call void @llvm.write_register.i64(metadata !0, i64 %i.fs)
  %sext.mask.i.i127.i.i.i = and i64 %i.ft, 4294967295
  %.not.i17.i128.i.i.i = icmp eq i64 %sext.mask.i.i127.i.i.i, 0
  br i1 %.not.i17.i128.i.i.i, label %bb.ba, label %do_pages_move.exit.i.i

move_pages_and_store_status.exit129.i.i.i:        ; preds = %bb.ay
  call void @putback_movable_pages(ptr noundef nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  %i.fu = icmp sgt i32 %i.fj, 0
  %i.fv = sub i32 %i.av, %.083199.i.i.i
  %i.fw = select i1 %i.fu, i32 %i.fv, i32 0
  %.0.i122.i.i.i = add i32 %i.fw, %i.fj
  %.0.i122.fr.i.i.i = freeze i32 %.0.i122.i.i.i   ; 3 uses
  %.not110.i.i.i = icmp eq i32 %.0.i122.fr.i.i.i, 0
  br i1 %.not110.i.i.i, label %store_status.exit.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %move_pages_and_store_status.exit129.i.i.i
  %i.fx = icmp sgt i32 %.0.i122.fr.i.i.i, 0
  %i.fy = sext i1 %i.fx to i32
  %spec.select.i23.i.i = add nsw i32 %.0.i122.fr.i.i.i, %i.fy
  br label %do_pages_move.exit.i.i

store_status.exit.i.i.i:                          ; preds = %bb.ba, %move_pages_and_store_status.exit129.i.i.i, %bb.az, %bb.ax, %add_folio_for_migration.exit.i.i.i
  %.286.i.i.i = phi i32 [ 1, %add_folio_for_migration.exit.i.i.i ], [ 0, %move_pages_and_store_status.exit129.i.i.i ], [ 0, %bb.ax ], [ 0, %bb.az ], [ 0, %bb.ba ]
  %.2.i.i.i = phi i32 [ %.1.i22.i.i, %add_folio_for_migration.exit.i.i.i ], [ -1, %move_pages_and_store_status.exit129.i.i.i ], [ -1, %bb.ax ], [ -1, %bb.az ], [ -1, %bb.ba ] ; 2 uses
  %i.fz = add i32 %.083199.i.i.i, 1               ; 3 uses
  %i.ga = sext i32 %i.fz to i64                   ; 2 uses
  %i.gb = icmp ugt i64 %1, %i.ga
  br i1 %i.gb, label %bb.r, label %store_status.exit.thread160.i.i.i, !llvm.loop !108

store_status.exit.thread160.i.i.i:                ; preds = %store_status.exit.i.i.i, %.lr.ph.i.i.i.i, %arch_test_bit.exit.i.i.i, %.split272.i.i.i, %bb.v, %bb.u, %bb.t, %bb.s, %bb.q
  %.083194.i.i.i = phi i32 [ 0, %bb.q ], [ %i.fz, %store_status.exit.i.i.i ], [ %.083199.i.i.i, %bb.s ], [ %.083199.i.i.i, %arch_test_bit.exit.i.i.i ], [ %.083199.i.i.i, %bb.v ], [ %.083199.i.i.i, %.split272.i.i.i ], [ %.083199.i.i.i, %.lr.ph.i.i.i.i ], [ %.083199.i.i.i, %bb.u ], [ %.083199.i.i.i, %bb.t ] ; 2 uses
  %.387.i.i.i = phi i32 [ 0, %bb.q ], [ %.286.i.i.i, %store_status.exit.i.i.i ], [ -14, %bb.s ], [ -13, %arch_test_bit.exit.i.i.i ], [ -19, %bb.v ], [ -19, %.split272.i.i.i ], [ -14, %.lr.ph.i.i.i.i ], [ -14, %bb.u ], [ -14, %bb.t ] ; 2 uses
  %.382.i.i.i = phi i32 [ 0, %bb.q ], [ %.180.i.i.i, %store_status.exit.i.i.i ], [ %.079200.i.i.i, %bb.s ], [ %.079200.i.i.i, %arch_test_bit.exit.i.i.i ], [ %.079200.i.i.i, %bb.v ], [ %.079200.i.i.i, %.split272.i.i.i ], [ %.180.i.i.i, %.lr.ph.i.i.i.i ], [ %.079200.i.i.i, %bb.u ], [ %.079200.i.i.i, %bb.t ] ; 2 uses
  %.3.i.i.i = phi i32 [ -1, %bb.q ], [ %.2.i.i.i, %store_status.exit.i.i.i ], [ %.078201.i.i.i, %bb.s ], [ %.078201.i.i.i, %arch_test_bit.exit.i.i.i ], [ %.078201.i.i.i, %bb.v ], [ %.078201.i.i.i, %.split272.i.i.i ], [ %.1.i22.i.i, %.lr.ph.i.i.i.i ], [ %.078201.i.i.i, %bb.u ], [ %.078201.i.i.i, %bb.t ] ; 2 uses
  %i.gc = load volatile ptr, ptr %12, align 8
  %.not.i130.i.i.i = icmp eq ptr %i.gc, %12
  br i1 %.not.i130.i.i.i, label %move_pages_and_store_status.exit139.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %store_status.exit.thread160.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  store i32 %.3.i.i.i, ptr %7, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.gd, align 4
  %i.ge = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.ge, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 3149002, ptr %i.gf, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 3, ptr %i.gg, align 4
  %i.gh = ptrtoint ptr %7 to i64
  %i.gi = call i32 @migrate_pages(ptr noundef nonnull %12, ptr noundef nonnull @alloc_migration_target, ptr noundef null, i64 noundef %i.gh, i32 noundef 2, i32 noundef 3, ptr noundef null) #11 ; 3 uses
  %.not.i.i131.i.i.i = icmp eq i32 %i.gi, 0
  br i1 %.not.i.i131.i.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @putback_movable_pages(ptr noundef nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %i.gj = icmp sgt i32 %i.gi, 0
  %i.gk = trunc i64 %1 to i32
  %i.gl = sub i32 %i.gk, %.083194.i.i.i
  %i.gm = select i1 %i.gj, i32 %i.gl, i32 0
  %.0.i132.i.i.i = add i32 %i.gm, %i.gi
  br label %move_pages_and_store_status.exit139.i.i.i

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %i.gn = sub i32 %.083194.i.i.i, %.382.i.i.i     ; 2 uses
  %i.go = icmp sgt i32 %i.gn, 0
  br i1 %i.go, label %.lr.ph.i.i134.i.i.i, label %move_pages_and_store_status.exit139.i.i.i

bb.bf:                                            ; preds = %.lr.ph.i.i134.i.i.i
  %14 = add i32 %.01214.i.i136.i.i.i, 1
  %i.gp = add nsw i32 %.in.i.i135.i.i.i, -1
  %15 = icmp sgt i32 %.in.i.i135.i.i.i, 1
  br i1 %15, label %.lr.ph.i.i134.i.i.i, label %move_pages_and_store_status.exit139.i.i.i, !llvm.loop !103

.lr.ph.i.i134.i.i.i:                              ; preds = %bb.be, %bb.bf
  %.in.i.i135.i.i.i = phi i32 [ %i.gp, %bb.bf ], [ %i.gn, %bb.be ] ; 2 uses
  %.01214.i.i136.i.i.i = phi i32 [ %14, %bb.bf ], [ %.382.i.i.i, %bb.be ] ; 2 uses
  %i.gq = sext i32 %.01214.i.i136.i.i.i to i64
  %i.gr = getelementptr [4 x i8], ptr %i.f, i64 %i.gq
  %i.gs = call i64 @llvm.read_register.i64(metadata !0)
  %i.gt = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %i.gr, i32 range(i32 -1, 64) %.3.i.i.i, i64 4, i64 %i.gs) #9, !srcloc !104 ; 2 uses
  %i.gu = extractvalue { ptr, i64 } %i.gt, 0
  %i.gv = extractvalue { ptr, i64 } %i.gt, 1
  %i.gw = ptrtoint ptr %i.gu to i64
  call void @llvm.write_register.i64(metadata !0, i64 %i.gv)
  %sext.mask.i.i137.i.i.i = and i64 %i.gw, 4294967295
  %.not.i17.i138.i.i.i = icmp eq i64 %sext.mask.i.i137.i.i.i, 0
  br i1 %.not.i17.i138.i.i.i, label %bb.bf, label %move_pages_and_store_status.exit139.i.i.i

move_pages_and_store_status.exit139.i.i.i:        ; preds = %.lr.ph.i.i134.i.i.i, %bb.bf, %bb.be, %bb.bd, %store_status.exit.thread160.i.i.i
  %.014.i133.i.i.i = phi i32 [ 0, %store_status.exit.thread160.i.i.i ], [ %.0.i132.i.i.i, %bb.bd ], [ 0, %bb.be ], [ -14, %.lr.ph.i.i134.i.i.i ], [ 0, %bb.bf ]
  %i.gx = icmp slt i32 %.387.i.i.i, 0
  %spec.select111.i.i.i = select i1 %i.gx, i32 %.387.i.i.i, i32 %.014.i133.i.i.i
  br label %do_pages_move.exit.i.i

do_pages_move.exit.i.i:                           ; preds = %move_pages_and_store_status.exit.i.i.i, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i124.i.i.i, %move_pages_and_store_status.exit139.i.i.i, %bb.bb
  %.4.i.i.i = phi i32 [ %spec.select111.i.i.i, %move_pages_and_store_status.exit139.i.i.i ], [ -14, %.lr.ph.i.i124.i.i.i ], [ -14, %.lr.ph.i.i.i.i.i ], [ %spec.select.i23.i.i, %bb.bb ], [ %.0.i.i.i.i, %move_pages_and_store_status.exit.i.i.i ]
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @lru_disable_count, ptr nonnull elementtype(i32) @lru_disable_count) #9, !srcloc !109
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %bb.bw

bb.bg:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %.not58.i.i.i = icmp eq i64 %1, 0
  br i1 %.not58.i.i.i, label %do_pages_stat.exit.i.i, label %.lr.ph.i25.i.i

.lr.ph.i25.i.i:                                   ; preds = %bb.bg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false), !annotation !44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false), !annotation !44
  %i.gy = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #12, !srcloc !83
  %i.gz = inttoptr i64 %i.gy to ptr
  %i.ha = getelementptr i8, ptr %i.gz, i64 16
  %i.hb = getelementptr i8, ptr %.0.i.i.i, i64 464 ; 2 uses
  %i.hc = getelementptr i8, ptr %.0.i.i.i, i64 64
  %i.hd = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.he = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.bh

bb.bh:                                            ; preds = %get_compat_pages_array.exit.i.i.i, %.lr.ph.i25.i.i
  %.02360.i.i.i = phi i64 [ %1, %.lr.ph.i25.i.i ], [ %i.is, %get_compat_pages_array.exit.i.i.i ] ; 2 uses
  %.02459.i.i.i = phi i64 [ 0, %.lr.ph.i25.i.i ], [ %i.ir, %get_compat_pages_array.exit.i.i.i ] ; 4 uses
  %i.hf = call i64 @llvm.umin.i64(i64 %.02360.i.i.i, i64 16) ; 6 uses
  %i.hg = load i32, ptr %i.ha, align 8
  %i.hh = and i32 %i.hg, 2
  %.not.i.i.not.i26.i.i = icmp eq i32 %i.hh, 0
  br i1 %.not.i.i.not.i26.i.i, label %copy_from_user.exit.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hi = getelementptr [4 x i8], ptr %i.d, i64 %.02459.i.i.i
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bk, %bb.bi
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.bk ], [ 0, %bb.bi ] ; 3 uses
  %i.hj = call i64 @llvm.read_register.i64(metadata !0)
  %i.hk = getelementptr [4 x i8], ptr %i.hi, i64 %indvars.iv.i.i
  %i.hl = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %i.hk, i64 4, i64 %i.hj) #9, !srcloc !110 ; 3 uses
  %i.hm = extractvalue { ptr, i32, i64 } %i.hl, 0
  %i.hn = extractvalue { ptr, i32, i64 } %i.hl, 2
  %i.ho = ptrtoint ptr %i.hm to i64
  call void @llvm.write_register.i64(metadata !0, i64 %i.hn)
  %sext.mask.i.i27.i.i = and i64 %i.ho, 4294967295
  %.not.i.i28.i.i = icmp eq i64 %sext.mask.i.i27.i.i, 0
  br i1 %.not.i.i28.i.i, label %bb.bk, label %do_pages_stat.exit.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.hp = extractvalue { ptr, i32, i64 } %i.hl, 1
  %i.hq = zext i32 %i.hp to i64
  %i.hr = inttoptr i64 %i.hq to ptr
  %i.hs = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv.i.i
  store ptr %i.hr, ptr %i.hs, align 8
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i.i, %i.hf
  br i1 %exitcond.not.i, label %get_compat_pages_array.exit.thread.i.i.i, label %bb.bj, !llvm.loop !111

copy_from_user.exit.i.i.i:                        ; preds = %bb.bh
  %i.ht = shl nuw nsw i64 %i.hf, 3
  %i.hu = getelementptr [8 x i8], ptr %i.d, i64 %.02459.i.i.i
  %i.hv = call i64 @_copy_from_user(ptr noundef nonnull %i.a, ptr noundef %i.hu, i64 noundef %i.ht) #10
  %.not26.i.i.i = icmp eq i64 %i.hv, 0
  br i1 %.not26.i.i.i, label %get_compat_pages_array.exit.thread.i.i.i, label %do_pages_stat.exit.i.i

get_compat_pages_array.exit.thread.i.i.i:         ; preds = %bb.bk, %copy_from_user.exit.i.i.i
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_start_locking, i64 8), i1 false) #9
          to label %__mmap_lock_trace_start_locking.exit.i.i.i29.i.i [label %bb.bl], !srcloc !37

bb.bl:                                            ; preds = %get_compat_pages_array.exit.thread.i.i.i
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %.0.i.i.i, i1 noundef zeroext false) #10
  br label %__mmap_lock_trace_start_locking.exit.i.i.i29.i.i

__mmap_lock_trace_start_locking.exit.i.i.i29.i.i: ; preds = %bb.bl, %get_compat_pages_array.exit.thread.i.i.i
  call void @down_read(ptr noundef %i.hb) #10
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_acquire_returned, i64 8), i1 false) #9
          to label %mmap_read_lock.exit.i.i30.i.i.preheader [label %bb.bm], !srcloc !37

bb.bm:                                            ; preds = %__mmap_lock_trace_start_locking.exit.i.i.i29.i.i
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %.0.i.i.i, i1 noundef zeroext false, i1 noundef zeroext true) #10
  br label %mmap_read_lock.exit.i.i30.i.i.preheader

mmap_read_lock.exit.i.i30.i.i.preheader:          ; preds = %bb.bm, %__mmap_lock_trace_start_locking.exit.i.i.i29.i.i
  br label %mmap_read_lock.exit.i.i30.i.i

mmap_read_lock.exit.i.i30.i.i:                    ; preds = %mmap_read_lock.exit.i.i30.i.i.preheader, %bb.bt
  %.02029.i.i.i.i = phi i64 [ %i.in, %bb.bt ], [ 0, %mmap_read_lock.exit.i.i30.i.i.preheader ]
  %.02128.i.i.i.i = phi ptr [ %i.im, %bb.bt ], [ %i.b, %mmap_read_lock.exit.i.i30.i.i.preheader ] ; 2 uses
  %.02227.i.i.i.i = phi ptr [ %i.il, %bb.bt ], [ %i.a, %mmap_read_lock.exit.i.i30.i.i.preheader ] ; 2 uses
  %i.hw = load ptr, ptr %.02227.i.i.i.i, align 8
  %i.hx = ptrtoint ptr %i.hw to i64               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 48, i1 false), !annotation !44
  %i.hy = call ptr @mtree_load(ptr noundef %i.hc, i64 noundef %i.hx) #10 ; 3 uses
  %.not.i37.i.i.i = icmp eq ptr %i.hy, null
  br i1 %.not.i37.i.i.i, label %bb.bt, label %bb.bn

bb.bn:                                            ; preds = %mmap_read_lock.exit.i.i30.i.i
  %i.hz = call ptr @folio_walk_start(ptr noundef nonnull %6, ptr noundef nonnull %i.hy, i64 noundef %i.hx, i32 noundef 1) #10 ; 3 uses
  %.not25.i.i.i.i = icmp eq ptr %i.hz, null
  br i1 %.not25.i.i.i.i, label %bb.bt, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ia = load i64, ptr @vmemmap_base, align 8
  %i.ib = ptrtoint ptr %i.hz to i64
  %i.ic = sub i64 %i.ib, %i.ia
  %i.id = ashr exact i64 %i.ic, 6
  %i.ie = load i64, ptr @zero_page_pfn, align 8
  %i.if = icmp eq i64 %i.id, %i.ie
  br i1 %i.if, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.val.i.i.i.i = load i64, ptr %i.hz, align 16
  %i.ig = lshr i64 %.val.i.i.i.i, 58
  %i.ih = trunc nuw nsw i64 %i.ig to i32
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.0.i38.i.i.i = phi i32 [ %i.ih, %bb.bp ], [ -14, %bb.bo ]
  %i.ii = load ptr, ptr %i.hd, align 8
  call void @_raw_spin_unlock(ptr noundef %i.ii) #10
  %i.ij = load i32, ptr %i.he, align 8
  %i.ik = icmp eq i32 %i.ij, 0
  br i1 %i.ik, label %bb.br, label %bb.bs, !prof !13

bb.br:                                            ; preds = %bb.bq
  call void @__rcu_read_unlock() #10
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  call void @vma_pgtable_walk_end(ptr noundef nonnull %i.hy) #10
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.bn, %mmap_read_lock.exit.i.i30.i.i
  %.1.i.i.i.i = phi i32 [ %.0.i38.i.i.i, %bb.bs ], [ -14, %mmap_read_lock.exit.i.i30.i.i ], [ -2, %bb.bn ]
  store i32 %.1.i.i.i.i, ptr %.02128.i.i.i.i, align 4
  %i.il = getelementptr i8, ptr %.02227.i.i.i.i, i64 8
  %i.im = getelementptr i8, ptr %.02128.i.i.i.i, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %i.in = add nuw i64 %.02029.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.in, %i.hf
  br i1 %exitcond.not.i.i.i.i, label %bb.bu, label %mmap_read_lock.exit.i.i30.i.i, !llvm.loop !112

bb.bu:                                            ; preds = %bb.bt
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_released, i64 8), i1 false) #9
          to label %do_pages_stat_array.exit.i.i.i [label %bb.bv], !srcloc !37

bb.bv:                                            ; preds = %bb.bu
  call void @__mmap_lock_do_trace_released(ptr noundef %.0.i.i.i, i1 noundef zeroext false) #10
  br label %do_pages_stat_array.exit.i.i.i

do_pages_stat_array.exit.i.i.i:                   ; preds = %bb.bv, %bb.bu
  call void @up_read(ptr noundef %i.hb) #10
  %i.io = getelementptr [4 x i8], ptr %i.f, i64 %.02459.i.i.i
  %i.ip = shl nuw nsw i64 %i.hf, 2
  %i.iq = call i64 @_copy_to_user(ptr noundef %i.io, ptr noundef nonnull %i.b, i64 noundef %i.ip) #10
  %.not28.i.i.i = icmp eq i64 %i.iq, 0
  br i1 %.not28.i.i.i, label %get_compat_pages_array.exit.i.i.i, label %do_pages_stat.exit.i.i

get_compat_pages_array.exit.i.i.i:                ; preds = %do_pages_stat_array.exit.i.i.i
  %i.ir = add i64 %i.hf, %.02459.i.i.i
  %i.is = sub i64 %.02360.i.i.i, %i.hf            ; 2 uses
  %.not.i31.i.i = icmp eq i64 %i.is, 0
  br i1 %.not.i31.i.i, label %do_pages_stat.exit.i.i, label %bb.bh

do_pages_stat.exit.i.i:                           ; preds = %get_compat_pages_array.exit.i.i.i, %do_pages_stat_array.exit.i.i.i, %copy_from_user.exit.i.i.i, %bb.bj, %bb.bg
  %i.it = phi i32 [ 0, %bb.bg ], [ -14, %bb.bj ], [ -14, %do_pages_stat_array.exit.i.i.i ], [ -14, %copy_from_user.exit.i.i.i ], [ 0, %get_compat_pages_array.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.bw

bb.bw:                                            ; preds = %do_pages_stat.exit.i.i, %do_pages_move.exit.i.i
  %.0.i.i = phi i32 [ %.4.i.i.i, %do_pages_move.exit.i.i ], [ %i.it, %do_pages_stat.exit.i.i ]
  call void @mmput(ptr noundef %.0.i.i.i) #10
  br label %__do_sys_move_pages.exit

__do_sys_move_pages.exit:                         ; preds = %bb.a, %bb.c, %find_mm_struct.exit.thread.i.i, %bb.bw
  %.018.i.i = phi i32 [ -22, %bb.a ], [ %i.al, %find_mm_struct.exit.thread.i.i ], [ %.0.i.i, %bb.bw ], [ -1, %bb.c ]
  %i.iu = sext i32 %.018.i.i to i64
end_hunk_0
