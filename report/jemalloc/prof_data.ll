Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/prof_data?download=true
inline.NumInlined: 149
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@je_prof_tdata_init_impl:bb.a
bb.a:
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @je_prof_tdata_detach(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !37     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.b) #11
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %malloc_mutex_trylock_final.exit.i, label %bb.b

malloc_mutex_trylock_final.exit.i:                ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store atomic i8 1, ptr %i.d monotonic, align 1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.a) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %malloc_mutex_trylock_final.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !28
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %.not.i.i = icmp eq ptr %i.i, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.h, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !30
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !30
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 117 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !38, !range !20, !noundef !21
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.e, label %.critedge

bb.e:                                             ; preds = %malloc_mutex_lock.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = tail call i64 @je_ckh_count(ptr noundef nonnull %i.p) #11
  %.not4.i.i = icmp eq i64 %i.q, 0
  br i1 %.not4.i.i, label %.critedge13, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.m, align 1, !tbaa !38
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr null, ptr %i.r, align 8, !tbaa !52
  %i.s = load ptr, ptr %1, align 8, !tbaa !37     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store atomic i8 0, ptr %i.t monotonic, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  br label %bb.j

.critedge13:                                      ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr null, ptr %i.v, align 8, !tbaa !52
  %i.w = load ptr, ptr %1, align 8, !tbaa !37     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store atomic i8 0, ptr %i.x monotonic, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.z = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.y) #11 ; 0 uses
  %i.aa = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 72)) #11
  %.not.i.i15 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i15, label %malloc_mutex_trylock_final.exit.i.i, label %bb.g

malloc_mutex_trylock_final.exit.i.i:              ; preds = %.critedge13
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 64) monotonic, align 8
  br label %bb.h

bb.g:                                             ; preds = %.critedge13
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @je_tdatas_mtx) #11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %malloc_mutex_trylock_final.exit.i.i
  %i.ab = load i64, ptr getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 56), align 8, !tbaa !28
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 56), align 8, !tbaa !28
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 48), align 8, !tbaa !29
  %.not.i.i.i = icmp eq ptr %i.ad, %0
  br i1 %.not.i.i.i, label %prof_tdata_destroy.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 48), align 8, !tbaa !29
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 40), align 8, !tbaa !30
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 40), align 8, !tbaa !30
  br label %prof_tdata_destroy.exit

prof_tdata_destroy.exit:                          ; preds = %bb.h, %bb.i
  tail call fastcc void @prof_tdata_destroy_locked(ptr noundef nonnull %0, ptr noundef nonnull %1)
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 64) monotonic, align 8
  br label %bb.j

.critedge:                                        ; preds = %malloc_mutex_lock.exit
  %i.ag = load ptr, ptr %1, align 8, !tbaa !37    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  store atomic i8 0, ptr %i.ah monotonic, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %.critedge, %prof_tdata_destroy.exit
  %.sink = phi ptr [ %i.u, %bb.f ], [ %i.ai, %.critedge ], [ getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 72), %prof_tdata_destroy.exit ]
  %i.aj = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %.sink) #11 ; 0 uses
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define hidden void @je_prof_reset(ptr noundef %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_prof_dump_mtx, i64 72)) #11
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %malloc_mutex_trylock_final.exit.i, label %bb.b

malloc_mutex_trylock_final.exit.i:                ; preds = %bb.a
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @je_prof_dump_mtx, i64 64) monotonic, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @je_prof_dump_mtx) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %malloc_mutex_trylock_final.exit.i
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @je_prof_dump_mtx, i64 56), align 8, !tbaa !28
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @je_prof_dump_mtx, i64 56), align 8, !tbaa !28
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @je_prof_dump_mtx, i64 48), align 8, !tbaa !29
  %.not.i.i = icmp eq ptr %i.d, %0
  br i1 %.not.i.i, label %malloc_mutex_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @je_prof_dump_mtx, i64 48), align 8, !tbaa !29
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @je_prof_dump_mtx, i64 40), align 8, !tbaa !30
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr getelementptr inbounds nuw (i8, ptr @je_prof_dump_mtx, i64 40), align 8, !tbaa !30
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.g = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 72)) #11 ; 0 uses
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @je_tdatas_mtx) #11
  unreachable
}

; Function Attrs: nounwind uwtable
define internal fastcc void @prof_tdata_destroy_locked(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %3 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %4 = alloca [128 x %struct.tdata_tree_path_entry_t], align 16 ; 14 uses
  %5 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %6 = alloca %struct.rtree_contents_s, align 8   ; 6 uses
  %7 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %8 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.a = load ptr, ptr @tdatas, align 8, !tbaa !15 ; 3 uses
  store ptr %i.a, ptr %4, align 16, !tbaa !57
  %.not55.i = icmp eq ptr %i.a, null
  br i1 %.not55.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !58   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.056.i = phi ptr [ %4, %.lr.ph.i ], [ %i.ag, %bb.g ] ; 8 uses
  %i.e = phi ptr [ %i.a, %.lr.ph.i ], [ %.pr.i, %bb.g ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !58   ; 2 uses
  %i.h = tail call i32 @llvm.ucmp.i32.i64(i64 %i.c, i64 %i.g)
  %i.i = icmp eq i64 %i.c, %i.g
  br i1 %i.i, label %bb.c, label %prof_tdata_comp.exit.i

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.d, align 8, !tbaa !59
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !59
  %i.m = tail call i32 @llvm.ucmp.i32.i64(i64 %i.j, i64 %i.l)
  br label %prof_tdata_comp.exit.i

prof_tdata_comp.exit.i:                           ; preds = %bb.c, %bb.b
  %.0.i.i10 = phi i32 [ %i.m, %bb.c ], [ %i.h, %bb.b ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.056.i, i64 8
  store i32 %.0.i.i10, ptr %i.n, align 8, !tbaa !60
  %i.o = icmp slt i32 %.0.i.i10, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %prof_tdata_comp.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !39   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.056.i, i64 16
  store ptr %i.q, ptr %i.r, align 8, !tbaa !57
  br label %bb.g

bb.e:                                             ; preds = %prof_tdata_comp.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, -2                         ; 2 uses
  %i.w = inttoptr i64 %i.v to ptr                 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.056.i, i64 16
  store ptr %i.w, ptr %i.x, align 8, !tbaa !57
  %i.y = icmp eq i32 %.0.i.i10, 0
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.056.i, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.056.i, i64 16 ; 2 uses
  store i32 1, ptr %i.z, align 8, !tbaa !60
  %.not29857.i = icmp eq i64 %i.v, 0
  br i1 %.not29857.i, label %.loopexit.i, label %.lr.ph59.i

.lr.ph59.i:                                       ; preds = %bb.f, %.lr.ph59.i
  %.158.i = phi ptr [ %i.af, %.lr.ph59.i ], [ %i.aa, %bb.f ] ; 2 uses
  %i.ab = phi ptr [ %i.ae, %.lr.ph59.i ], [ %i.w, %bb.f ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.158.i, i64 8
  store i32 -1, ptr %i.ac, align 8, !tbaa !60
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !39 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.158.i, i64 16 ; 3 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !57
  %.not298.i = icmp eq ptr %i.ae, null
  br i1 %.not298.i, label %.loopexit.i, label %.lr.ph59.i, !llvm.loop !53

bb.g:                                             ; preds = %bb.e, %bb.d
  %.pr.i = phi ptr [ %i.w, %bb.e ], [ %i.q, %bb.d ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.056.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i, label %.loopexit.i, label %bb.b, !llvm.loop !54

.loopexit.i:                                      ; preds = %bb.g, %.lr.ph59.i, %bb.f, %bb.a
  %.2274.i = phi ptr [ %.056.i, %bb.f ], [ null, %bb.a ], [ %.056.i, %.lr.ph59.i ], [ null, %bb.g ] ; 6 uses
  %.3.i = phi ptr [ %i.aa, %bb.f ], [ %4, %bb.a ], [ %i.af, %.lr.ph59.i ], [ %i.ag, %bb.g ] ; 5 uses
  %i.ah = getelementptr inbounds i8, ptr %.3.i, i64 -16 ; 5 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !57 ; 5 uses
  %.not299.i = icmp eq ptr %i.ai, %1
  br i1 %.not299.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %.loopexit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !40
  %i.al = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.am = and i64 %i.al, -2
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !40
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = and i64 %i.aq, 1                        ; 2 uses
  %i.as = or disjoint i64 %i.ar, %i.am
  %i.at = inttoptr i64 %i.as to ptr
  store ptr %i.at, ptr %i.aj, align 8, !tbaa !40
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !39
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.au, ptr %i.av, align 8, !tbaa !39
  %i.aw = load ptr, ptr %i.ao, align 8, !tbaa !40
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = and i64 %i.ax, -2
  %i.az = or disjoint i64 %i.ay, %i.ar
  %i.ba = inttoptr i64 %i.az to ptr
  store ptr %i.ba, ptr %i.aj, align 8, !tbaa !40
  %i.bb = load ptr, ptr %i.ao, align 8, !tbaa !40
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = and i64 %i.bc, -2
  %i.be = and i64 %i.al, 1
  %i.bf = or disjoint i64 %i.bd, %i.be
  %i.bg = inttoptr i64 %i.bf to ptr
  store ptr %i.bg, ptr %i.ao, align 8, !tbaa !40
  store ptr %i.ai, ptr %.2274.i, align 8, !tbaa !57
  store ptr %1, ptr %i.ah, align 8, !tbaa !57
  %i.bh = icmp eq ptr %.2274.i, %4
  br i1 %i.bh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bi = load ptr, ptr %.2274.i, align 8, !tbaa !57
  store ptr %i.bi, ptr @tdatas, align 8, !tbaa !15
  br label %bb.u

bb.j:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds i8, ptr %.2274.i, i64 -16 ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %.2274.i, i64 -8
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !60
  %i.bm = icmp slt i32 %i.bl, 0
  %i.bn = load ptr, ptr %.2274.i, align 8, !tbaa !57 ; 2 uses
  br i1 %i.bm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !57
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store ptr %i.bn, ptr %i.bp, align 8, !tbaa !39
  br label %bb.u

bb.l:                                             ; preds = %bb.j
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = load ptr, ptr %i.bj, align 8, !tbaa !57
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !40
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = and i64 %i.bu, 1
  %i.bw = or i64 %i.bv, %i.bq
  %i.bx = inttoptr i64 %i.bw to ptr
  store ptr %i.bx, ptr %i.bs, align 8, !tbaa !40
  br label %bb.u

bb.m:                                             ; preds = %.loopexit.i
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !39 ; 5 uses
  %.not300.i = icmp eq ptr %i.bz, null
  br i1 %.not300.i, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !40
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = and i64 %i.cc, -2
  %i.ce = inttoptr i64 %i.cd to ptr
  store ptr %i.ce, ptr %i.ca, align 8, !tbaa !40
  %i.cf = icmp eq ptr %i.ah, %4
  br i1 %i.cf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr %i.bz, ptr @tdatas, align 8, !tbaa !15
  br label %tdata_tree_remove.exit

bb.p:                                             ; preds = %bb.n
  %i.cg = getelementptr inbounds i8, ptr %.3.i, i64 -32 ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %.3.i, i64 -24
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !60
  %i.cj = icmp slt i32 %i.ci, 0
  br i1 %i.cj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !57
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store ptr %i.bz, ptr %i.cl, align 8, !tbaa !39
  br label %tdata_tree_remove.exit

bb.r:                                             ; preds = %bb.p
  %i.cm = ptrtoint ptr %i.bz to i64
  %i.cn = load ptr, ptr %i.cg, align 8, !tbaa !57
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !40
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = and i64 %i.cq, 1
  %i.cs = or i64 %i.cr, %i.cm
  %i.ct = inttoptr i64 %i.cs to ptr
  store ptr %i.ct, ptr %i.co, align 8, !tbaa !40
  br label %tdata_tree_remove.exit

bb.s:                                             ; preds = %bb.m
  %i.cu = icmp eq ptr %i.ah, %4
  br i1 %i.cu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store ptr null, ptr @tdatas, align 8, !tbaa !15
  br label %tdata_tree_remove.exit

bb.u:                                             ; preds = %bb.s, %bb.l, %bb.k, %bb.i
  %i.cv = phi ptr [ %i.ai, %bb.s ], [ %1, %bb.i ], [ %1, %bb.l ], [ %1, %bb.k ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !40
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = and i64 %i.cy, 1
  %.not301.i = icmp eq i64 %i.cz, 0
  br i1 %.not301.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.da = getelementptr inbounds i8, ptr %.3.i, i64 -32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !57
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store ptr null, ptr %i.dc, align 8, !tbaa !39
  br label %tdata_tree_remove.exit

bb.w:                                             ; preds = %bb.u
  store ptr null, ptr %i.ah, align 8, !tbaa !57
  %i.dd = getelementptr inbounds i8, ptr %.3.i, i64 -32 ; 2 uses
  %.not30268.i = icmp ult ptr %i.dd, %4
  br i1 %.not30268.i, label %._crit_edge.i, label %.lr.ph71.i

.lr.ph71.i:                                       ; preds = %bb.w, %bb.bl
  %.469.i = phi ptr [ %i.mm, %bb.bl ], [ %i.dd, %bb.w ] ; 19 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.469.i, i64 8
  %i.df = load i32, ptr %i.de, align 8, !tbaa !60
  %i.dg = icmp slt i32 %i.df, 0
  %i.dh = getelementptr inbounds nuw i8, ptr %.469.i, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !57 ; 2 uses
  br i1 %i.dg, label %bb.x, label %bb.am

bb.x:                                             ; preds = %.lr.ph71.i
  %i.dj = load ptr, ptr %.469.i, align 8, !tbaa !57 ; 6 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  store ptr %i.di, ptr %i.dk, align 8, !tbaa !39
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 32 ; 8 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !40 ; 4 uses
  %i.dn = ptrtoint ptr %i.dm to i64               ; 2 uses
  %i.do = and i64 %i.dn, 1
  %.not311.i = icmp eq i64 %i.do, 0
  br i1 %.not311.i, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dp = and i64 %i.dn, -2                       ; 2 uses
  %i.dq = inttoptr i64 %i.dp to ptr               ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24 ; 3 uses
end_hunk_0
begin_hunk_1_@prof_tdata_destroy_locked:bb.a
  br label %arena_dalloc_no_tcache.exit

emap_alloc_ctx_usize_get.exit.i:                  ; preds = %tsdn_rtree_ctx.exit.i.i
  call fastcc void @arena_dalloc_large_no_tcache(ptr noundef %0, ptr noundef nonnull %1)
  br label %arena_dalloc_no_tcache.exit

arena_dalloc_no_tcache.exit:                      ; preds = %bb.bw, %emap_alloc_ctx_usize_get.exit.i
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @je_prof_tctx_try_destroy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %3 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %4 = alloca [128 x %struct.tctx_tree_path_entry_t], align 16 ; 16 uses
  %5 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %6 = alloca %struct.rtree_contents_s, align 8   ; 6 uses
  %7 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %8 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %i.a = load i8, ptr @je_opt_prof_accum, align 1, !tbaa !19, !range !20, !noundef !21
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %prof_tctx_should_destroy.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !68
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.c, label %prof_tctx_should_destroy.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.f = load i8, ptr %i.e, align 8, !tbaa !69, !range !20, !noundef !21
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %prof_tctx_should_destroy.exit.thread, label %prof_tctx_should_destroy.exit

prof_tctx_should_destroy.exit:                    ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !70
  %.not6.i = icmp eq i64 %i.i, 0
  br i1 %.not6.i, label %bb.d, label %prof_tctx_should_destroy.exit.thread

bb.d:                                             ; preds = %prof_tctx_should_destroy.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !71   ; 7 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !72     ; 5 uses
  store ptr null, ptr %1, align 8, !tbaa !72
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.o = tail call zeroext i1 @je_ckh_remove(ptr noundef %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef null, ptr noundef null) #11 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 117
  %i.q = load i8, ptr %i.p, align 1, !tbaa !38, !range !20, !noundef !21
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %prof_tdata_should_destroy.exit.thread.i, label %prof_tdata_should_destroy.exit.i

prof_tdata_should_destroy.exit.thread.i:          ; preds = %bb.d
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !37   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store atomic i8 0, ptr %i.t monotonic, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  br label %.sink.split.i

prof_tdata_should_destroy.exit.i:                 ; preds = %bb.d
  %i.v = tail call i64 @je_ckh_count(ptr noundef nonnull %i.m) #11
  %.not4.i.i.i = icmp eq i64 %i.v, 0
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !37   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store atomic i8 0, ptr %i.x monotonic, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.z = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.y) #11 ; 0 uses
  br i1 %.not4.i.i.i, label %bb.e, label %bb.i

bb.e:                                             ; preds = %prof_tdata_should_destroy.exit.i
  %i.aa = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 72)) #11
  %.not.i.i35.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i35.i, label %malloc_mutex_trylock_final.exit.i.i.i, label %bb.f

malloc_mutex_trylock_final.exit.i.i.i:            ; preds = %bb.e
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 64) monotonic, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull @je_tdatas_mtx) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %malloc_mutex_trylock_final.exit.i.i.i
  %i.ab = load i64, ptr getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 56), align 8, !tbaa !28
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 56), align 8, !tbaa !28
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 48), align 8, !tbaa !29
  %.not.i.i.i.i = icmp eq ptr %i.ad, %0
  br i1 %.not.i.i.i.i, label %prof_tdata_destroy.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 48), align 8, !tbaa !29
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 40), align 8, !tbaa !30
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 40), align 8, !tbaa !30
  br label %prof_tdata_destroy.exit.i

prof_tdata_destroy.exit.i:                        ; preds = %bb.h, %bb.g
  tail call fastcc void @prof_tdata_destroy_locked(ptr noundef %0, ptr noundef nonnull %i.l)
  store atomic i8 0, ptr getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 64) monotonic, align 8
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %prof_tdata_destroy.exit.i, %prof_tdata_should_destroy.exit.thread.i
  %.sink.i = phi ptr [ %i.u, %prof_tdata_should_destroy.exit.thread.i ], [ getelementptr inbounds nuw (i8, ptr @je_tdatas_mtx, i64 72), %prof_tdata_destroy.exit.i ]
  %i.ag = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %.sink.i) #11 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.sink.split.i, %prof_tdata_should_destroy.exit.i
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !77  ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.aj = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.ai) #11
  %.not.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i, label %malloc_mutex_trylock_final.exit.i.i, label %bb.j

malloc_mutex_trylock_final.exit.i.i:              ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  store atomic i8 1, ptr %i.ak monotonic, align 1
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @je_malloc_mutex_lock_slow(ptr noundef nonnull %i.ah) #11
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %malloc_mutex_trylock_final.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 56 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !28
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.al, align 8, !tbaa !28
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !29
  %.not.i.i36.i = icmp eq ptr %i.ap, %0
  br i1 %.not.i.i36.i, label %malloc_mutex_lock.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %0, ptr %i.ao, align 8, !tbaa !29
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 40 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !30
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !30
  br label %malloc_mutex_lock.exit.i

malloc_mutex_lock.exit.i:                         ; preds = %bb.l, %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 132 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !78
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %bb.m, label %bb.bv

bb.m:                                             ; preds = %malloc_mutex_lock.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !79 ; 8 uses
  store ptr %i.ax, ptr %4, align 16, !tbaa !81
  %.not374.i.i = icmp eq ptr %i.ax, null
  br i1 %.not374.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !82 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 104
  br label %bb.n

bb.n:                                             ; preds = %bb.t, %.lr.ph.i.i
  %.0375.i.i = phi ptr [ %4, %.lr.ph.i.i ], [ %i.cj, %bb.t ] ; 8 uses
  %i.bc = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.pr.i.i, %bb.t ] ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !82 ; 2 uses
  %i.bf = tail call i32 @llvm.ucmp.i32.i64(i64 %i.az, i64 %i.be)
  %i.bg = icmp eq i64 %i.az, %i.be
  br i1 %i.bg, label %bb.o, label %prof_tctx_comp.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.bh = load i64, ptr %i.ba, align 8, !tbaa !83 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !83 ; 2 uses
  %i.bk = tail call i32 @llvm.ucmp.i32.i64(i64 %i.bh, i64 %i.bj)
  %i.bl = icmp eq i64 %i.bh, %i.bj
  br i1 %i.bl, label %bb.p, label %prof_tctx_comp.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.bm = load i64, ptr %i.bb, align 8, !tbaa !84
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 104
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !84
  %i.bp = tail call i32 @llvm.ucmp.i32.i64(i64 %i.bm, i64 %i.bo)
  br label %prof_tctx_comp.exit.i.i

prof_tctx_comp.exit.i.i:                          ; preds = %bb.p, %bb.o, %bb.n
  %.1.i.i.i = phi i32 [ %i.bf, %bb.n ], [ %i.bp, %bb.p ], [ %i.bk, %bb.o ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0375.i.i, i64 8
  store i32 %.1.i.i.i, ptr %i.bq, align 8, !tbaa !85
  %i.br = icmp slt i32 %.1.i.i.i, 0
  br i1 %i.br, label %bb.q, label %bb.r

bb.q:                                             ; preds = %prof_tctx_comp.exit.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 112
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !86 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0375.i.i, i64 16
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !81
  br label %bb.t

bb.r:                                             ; preds = %prof_tctx_comp.exit.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bc, i64 120
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !87
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = and i64 %i.bx, -2                       ; 2 uses
  %i.bz = inttoptr i64 %i.by to ptr               ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0375.i.i, i64 16
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !81
  %i.cb = icmp eq i32 %.1.i.i.i, 0
  br i1 %i.cb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %.0375.i.i, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.0375.i.i, i64 16 ; 2 uses
  store i32 1, ptr %i.cc, align 8, !tbaa !85
  %.not298376.i.i = icmp eq i64 %i.by, 0
  br i1 %.not298376.i.i, label %.loopexit.i.i, label %.lr.ph378.i.i

.lr.ph378.i.i:                                    ; preds = %bb.s, %.lr.ph378.i.i
  %.1377.i.i = phi ptr [ %i.ci, %.lr.ph378.i.i ], [ %i.cd, %bb.s ] ; 2 uses
  %i.ce = phi ptr [ %i.ch, %.lr.ph378.i.i ], [ %i.bz, %bb.s ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.1377.i.i, i64 8
  store i32 -1, ptr %i.cf, align 8, !tbaa !85
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 112
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !86 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.1377.i.i, i64 16 ; 3 uses
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !81
  %.not298.i.i = icmp eq ptr %i.ch, null
  br i1 %.not298.i.i, label %.loopexit.i.i, label %.lr.ph378.i.i, !llvm.loop !61

bb.t:                                             ; preds = %bb.r, %bb.q
  %.pr.i.i = phi ptr [ %i.bz, %bb.r ], [ %i.bt, %bb.q ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0375.i.i, i64 16 ; 2 uses
  %.not.i37.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i37.i, label %.loopexit.i.i, label %bb.n, !llvm.loop !62

.loopexit.i.i:                                    ; preds = %bb.t, %.lr.ph378.i.i, %bb.s, %bb.m
  %.2274.i.i = phi ptr [ %.0375.i.i, %bb.s ], [ null, %bb.m ], [ %.0375.i.i, %.lr.ph378.i.i ], [ null, %bb.t ] ; 6 uses
  %.3.i.i = phi ptr [ %i.cd, %bb.s ], [ %4, %bb.m ], [ %i.ci, %.lr.ph378.i.i ], [ %i.cj, %bb.t ] ; 5 uses
  %i.ck = getelementptr inbounds i8, ptr %.3.i.i, i64 -16 ; 5 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !81 ; 5 uses
  %.not299.i.i = icmp eq ptr %i.cl, %1
  br i1 %.not299.i.i, label %bb.z, label %bb.u

bb.u:                                             ; preds = %.loopexit.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 120 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !87
  %i.co = ptrtoint ptr %i.cn to i64               ; 2 uses
  %i.cp = and i64 %i.co, -2
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !87
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = and i64 %i.ct, 1                        ; 2 uses
  %i.cv = or disjoint i64 %i.cu, %i.cp
  %i.cw = inttoptr i64 %i.cv to ptr
  store ptr %i.cw, ptr %i.cm, align 8, !tbaa !87
  %i.cx = load ptr, ptr %i.cq, align 8, !tbaa !86
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cl, i64 112
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !86
  %i.cz = load ptr, ptr %i.cr, align 8, !tbaa !87
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = and i64 %i.da, -2
  %i.dc = or disjoint i64 %i.db, %i.cu
  %i.dd = inttoptr i64 %i.dc to ptr
  store ptr %i.dd, ptr %i.cm, align 8, !tbaa !87
  %i.de = load ptr, ptr %i.cr, align 8, !tbaa !87
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = and i64 %i.df, -2
  %i.dh = and i64 %i.co, 1
  %i.di = or disjoint i64 %i.dg, %i.dh
  %i.dj = inttoptr i64 %i.di to ptr
  store ptr %i.dj, ptr %i.cr, align 8, !tbaa !87
  store ptr %i.cl, ptr %.2274.i.i, align 8, !tbaa !81
  store ptr %1, ptr %i.ck, align 8, !tbaa !81
  %i.dk = icmp eq ptr %.2274.i.i, %4
  br i1 %i.dk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dl = load ptr, ptr %.2274.i.i, align 8, !tbaa !81 ; 2 uses
  store ptr %i.dl, ptr %i.aw, align 8, !tbaa !79
  br label %bb.af

bb.w:                                             ; preds = %bb.u
  %i.dm = getelementptr inbounds i8, ptr %.2274.i.i, i64 -16 ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %.2274.i.i, i64 -8
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !85
  %i.dp = icmp slt i32 %i.do, 0
  %i.dq = load ptr, ptr %.2274.i.i, align 8, !tbaa !81 ; 2 uses
  br i1 %i.dp, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dr = load ptr, ptr %i.dm, align 8, !tbaa !81
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 112
  store ptr %i.dq, ptr %i.ds, align 8, !tbaa !86
  br label %bb.af

bb.y:                                             ; preds = %bb.w
  %i.dt = ptrtoint ptr %i.dq to i64
  %i.du = load ptr, ptr %i.dm, align 8, !tbaa !81
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 120 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !87
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = and i64 %i.dx, 1
  %i.dz = or i64 %i.dy, %i.dt
  %i.ea = inttoptr i64 %i.dz to ptr
  store ptr %i.ea, ptr %i.dv, align 8, !tbaa !87
  br label %bb.af

bb.z:                                             ; preds = %.loopexit.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !86 ; 5 uses
  %.not300.i.i = icmp eq ptr %i.ec, null
  br i1 %.not300.i.i, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 120 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !87
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = and i64 %i.ef, -2
  %i.eh = inttoptr i64 %i.eg to ptr
  store ptr %i.eh, ptr %i.ed, align 8, !tbaa !87
  %i.ei = icmp eq ptr %i.ck, %4
  br i1 %i.ei, label %tctx_tree_remove.exit.i.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ej = getelementptr inbounds i8, ptr %.3.i.i, i64 -32 ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %.3.i.i, i64 -24
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !85
  %i.em = icmp slt i32 %i.el, 0
  br i1 %i.em, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.en = load ptr, ptr %i.ej, align 8, !tbaa !81
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 112
  store ptr %i.ec, ptr %i.eo, align 8, !tbaa !86
  br label %tctx_tree_remove.exit.i

bb.ad:                                            ; preds = %bb.ab
  %i.ep = ptrtoint ptr %i.ec to i64
  %i.eq = load ptr, ptr %i.ej, align 8, !tbaa !81
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 120 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !87
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = and i64 %i.et, 1
  %i.ev = or i64 %i.eu, %i.ep
  %i.ew = inttoptr i64 %i.ev to ptr
  store ptr %i.ew, ptr %i.er, align 8, !tbaa !87
  br label %tctx_tree_remove.exit.i

bb.ae:                                            ; preds = %bb.z
  %i.ex = icmp eq ptr %i.ck, %4
  br i1 %i.ex, label %tctx_tree_remove.exit.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.y, %bb.x, %bb.v
  %.val.i152.i = phi ptr [ %i.ax, %bb.ae ], [ %i.dl, %bb.v ], [ %i.ax, %bb.y ], [ %i.ax, %bb.x ] ; 12 uses
  %i.ey = phi ptr [ %i.cl, %bb.ae ], [ %1, %bb.v ], [ %1, %bb.y ], [ %1, %bb.x ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 120
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !87
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = and i64 %i.fb, 1
  %.not301.i.i = icmp eq i64 %i.fc, 0
  br i1 %.not301.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fd = getelementptr inbounds i8, ptr %.3.i.i, i64 -32
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !81
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 112
  store ptr null, ptr %i.ff, align 8, !tbaa !86
  br label %tctx_tree_remove.exit.i

bb.ah:                                            ; preds = %bb.af
  store ptr null, ptr %i.ck, align 8, !tbaa !81
  %i.fg = getelementptr inbounds i8, ptr %.3.i.i, i64 -32 ; 2 uses
  %.not302387.i.i = icmp ult ptr %i.fg, %4
  br i1 %.not302387.i.i, label %._crit_edge.i.i, label %.lr.ph390.i.i

.lr.ph390.i.i:                                    ; preds = %bb.ah, %bb.bt
  %.4388.i.i = phi ptr [ %i.op, %bb.bt ], [ %i.fg, %bb.ah ] ; 19 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.4388.i.i, i64 8
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !85
  %i.fj = icmp slt i32 %i.fi, 0
  %i.fk = getelementptr inbounds nuw i8, ptr %.4388.i.i, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !81 ; 2 uses
  br i1 %i.fj, label %bb.ai, label %bb.aw

bb.ai:                                            ; preds = %.lr.ph390.i.i
  %i.fm = load ptr, ptr %.4388.i.i, align 8, !tbaa !81 ; 6 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 112
  store ptr %i.fl, ptr %i.fn, align 8, !tbaa !86
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 120 ; 8 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !87 ; 4 uses
  %i.fq = ptrtoint ptr %i.fp to i64               ; 2 uses
  %i.fr = and i64 %i.fq, 1
  %.not311.i.i = icmp eq i64 %i.fr, 0
  br i1 %.not311.i.i, label %bb.aq, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fs = and i64 %i.fq, -2                       ; 2 uses
  %i.ft = inttoptr i64 %i.fs to ptr               ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 112 ; 3 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !86 ; 6 uses
  %.not314.i.i = icmp eq ptr %i.fv, null
  br i1 %.not314.i.i, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 120 ; 3 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !87
end_hunk_1
