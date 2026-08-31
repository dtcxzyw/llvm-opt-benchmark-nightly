Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/tcg?download=true
inline.NumInlined: 1043
inline.NumDeleted: 195
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 32
begin_hunk_0_@tcg_register_thread:bb.a
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.g, %.epil.preheader, %bb.a
  %i.am = atomicrmw add ptr @tcg_cur_ctxs, i32 1 seq_cst, align 4 ; 3 uses
  %i.an = load i32, ptr @tcg_max_ctxs, align 4
  %.not = icmp ult i32 %i.am, %i.an
  br i1 %.not, label %bb.i, label %bb.h, !prof !11

bb.h:                                             ; preds = %._crit_edge
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 1278, ptr noundef nonnull @__func__.tcg_register_thread, ptr noundef nonnull @.str.1) #27
  unreachable

bb.i:                                             ; preds = %._crit_edge
  %i.ao = load ptr, ptr @tcg_ctxs, align 8
  %i.ap = zext i32 %i.am to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap
  store atomic ptr %i.a, ptr %i.aq monotonic, align 8
  %.not26 = icmp eq i32 %i.am, 0
  br i1 %.not26, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @tcg_region_initial_alloc(ptr noundef nonnull %i.a) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ar = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  store ptr %i.a, ptr %i.ar, align 8
  ret void
}

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @tcg_region_initial_alloc(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local nonnull ptr @tcg_malloc_internal(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 32768
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %narrow = add nuw i32 %1, 16
  %i.b = zext i32 %narrow to i64
  %i.c = tail call noalias ptr @g_malloc(i64 noundef %i.b) #29 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  store ptr %i.f, ptr %i.c, align 16
  store ptr %i.c, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not39 = icmp eq ptr %i.k, null
  br i1 %.not39, label %bb.f, label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.i, align 16             ; 2 uses
  %.not40 = icmp eq ptr %i.l, null
  br i1 %.not40, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = tail call noalias dereferenceable_or_null(32784) ptr @g_malloc(i64 noundef 32784) #29 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 32768, ptr %i.n, align 8
  store ptr null, ptr %i.m, align 16
  %i.o = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not41 = icmp eq ptr %i.o, null
  br i1 %.not41, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.m, ptr %i.o, align 16
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.p, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.d, %bb.g, %bb.h
  %.0 = phi ptr [ %i.k, %bb.d ], [ %i.m, %bb.g ], [ %i.m, %bb.h ], [ %i.l, %bb.e ] ; 3 uses
  store ptr %.0, ptr %i.h, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.0, i64 16 ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.s = sext i32 %1 to i64
  %i.t = add i64 %i.r, %i.s
  store i64 %i.t, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.v = load i32, ptr %i.u, align 8
  %i.w = sext i32 %i.v to i64
  %i.x = add i64 %i.w, %i.r
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %i.y, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  %.033 = phi ptr [ %i.g, %bb.b ], [ %i.q, %bb.i ]
  ret ptr %.033
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_pool_reset(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.b, null
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.010 = phi ptr [ %i.c, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.010, align 16            ; 2 uses
  tail call void @g_free(ptr noundef nonnull %.010) #26
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !12

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  ret void
}

declare void @g_free(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_init(i64 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(30888) @tcg_init_ctx, i8 0, i64 30888, i1 false)
  tail call fastcc void @init_call_layout(ptr noundef nonnull @info_helper_ld32_mmu)
  tail call fastcc void @init_call_layout(ptr noundef nonnull @info_helper_ld64_mmu)
  tail call fastcc void @init_call_layout(ptr noundef nonnull @info_helper_ld128_mmu)
  tail call fastcc void @init_call_layout(ptr noundef nonnull @info_helper_st32_mmu)
  tail call fastcc void @init_call_layout(ptr noundef nonnull @info_helper_st64_mmu)
  tail call fastcc void @init_call_layout(ptr noundef nonnull @info_helper_st128_mmu)
  store i32 65535, ptr @tcg_target_available_regs, align 16
  store i32 65535, ptr getelementptr inbounds nuw (i8, ptr @tcg_target_available_regs, i64 4), align 4
  %i.a = load i32, ptr @cpuinfo, align 4          ; 2 uses
  %i.b = and i32 %i.a, 512
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 -65536, ptr getelementptr inbounds nuw (i8, ptr @tcg_target_available_regs, i64 12), align 4
  store i32 -65536, ptr getelementptr inbounds nuw (i8, ptr @tcg_target_available_regs, i64 16), align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = and i32 %i.a, 1024
  %.not3.i.i = icmp eq i32 %i.c, 0
  br i1 %.not3.i.i, label %tcg_target_init.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 -65536, ptr getelementptr inbounds nuw (i8, ptr @tcg_target_available_regs, i64 20), align 4
  br label %tcg_target_init.exit.i

tcg_target_init.exit.i:                           ; preds = %bb.d, %bb.c
  store i1 true, ptr @tcg_target_call_clobber_regs, align 4
  store i32 2097168, ptr getelementptr inbounds nuw (i8, ptr @tcg_init_ctx, i64 68), align 4
  br label %bb.e

bb.e:                                             ; preds = %.loopexit223.i.i, %tcg_target_init.exit.i
  %.0207229.i.i = phi i64 [ 0, %tcg_target_init.exit.i ], [ %i.ha, %.loopexit223.i.i ] ; 3 uses
  %i.d = getelementptr inbounds nuw [136 x i8], ptr @constraint_sets, i64 %.0207229.i.i ; 3 uses
  %i.e = getelementptr inbounds nuw [192 x i8], ptr @all_cts, i64 %.0207229.i.i ; 17 uses
  %i.f = load i8, ptr %i.d, align 8               ; 2 uses
  %i.g = zext i8 %i.f to i32                      ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = add nuw nsw i32 %i.j, %i.g               ; 2 uses
  %.not230.i.i = icmp eq i32 %i.k, 0
  br i1 %.not230.i.i, label %.loopexit223.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = zext i8 %i.f to i64                      ; 4 uses
  %wide.trip.count.i.i = zext nneg i32 %i.k to i64 ; 2 uses
  br label %bb.f

._crit_edge.i.i:                                  ; preds = %.loopexit.i.i
  br i1 %.2.i.i, label %.lr.ph228.i.i, label %.loopexit223.i.i

bb.f:                                             ; preds = %.loopexit.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %.loopexit.i.i ] ; 15 uses
  %.0210225.i.i = phi i1 [ false, %.lr.ph.i.i ], [ %.2.i.i, %.loopexit.i.i ] ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i.i
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %i.p = icmp samesign uge i64 %indvars.iv.i.i, %i.m ; 4 uses
  %i.q = load i8, ptr %i.o, align 1               ; 3 uses
  switch i8 %i.q, label %bb.k [
    i8 48, label %bb.g
    i8 49, label %bb.g
    i8 50, label %bb.g
    i8 51, label %bb.g
    i8 52, label %bb.g
    i8 53, label %bb.g
    i8 54, label %bb.g
    i8 55, label %bb.g
    i8 56, label %bb.g
    i8 57, label %bb.g
    i8 38, label %bb.h
    i8 112, label %bb.i
    i8 109, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.r = zext nneg i8 %i.q to i32                 ; 2 uses
  %i.s = add nsw i32 %i.r, -48                    ; 2 uses
  tail call void @llvm.assume(i1 %i.p)
  %i.t = icmp slt i32 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.t)
  %i.u = zext nneg i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %i.u ; 3 uses
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.i.i ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.w, ptr noundef nonnull align 4 dereferenceable(12) %i.v, i64 12, i1 false)
  %i.x = load i64, ptr %i.v, align 4
  %i.y = shl nuw nsw i64 %indvars.iv.i.i, 16
  %i.z = and i64 %i.y, 983040
  %i.aa = and i64 %i.x, -1074724865
  %i.ab = or disjoint i64 %i.z, %i.aa
  %i.ac = or disjoint i64 %i.ab, 1073741824
  store i64 %i.ac, ptr %i.v, align 4
  %i.ad = load i64, ptr %i.w, align 4             ; 2 uses
  %i.ae = shl nuw nsw i32 %i.r, 16
  %i.af = and i32 %i.ae, 983040
  %i.ag = and i64 %i.ad, -2148466689
  %i.ah = or disjoint i32 %i.af, -2147483648
  %i.ai = zext i32 %i.ah to i64
  %i.aj = or disjoint i64 %i.ag, %i.ai
  store i64 %i.aj, ptr %i.w, align 4
  %i.ak = and i64 %i.ad, 805306368
  %.not221.i.i = icmp ne i64 %i.ak, 0
  %spec.select.i.i = select i1 %.not221.i.i, i1 true, i1 %.0210225.i.i
  br label %.loopexit.i.i

bb.h:                                             ; preds = %bb.f
  %3 = xor i1 %i.p, true
  tail call void @llvm.assume(i1 %3)
  %i.al = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.i.i ; 2 uses
  %i.am = load i64, ptr %i.al, align 4
  %i.an = or i64 %i.am, 4294967296
  store i64 %i.an, ptr %i.al, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  %.pr.pre.i.i = load i8, ptr %i.ao, align 1
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.ap = select i1 %i.p, i64 %i.m, i64 0
  %i.aq = icmp samesign ugt i64 %indvars.iv.i.i, %i.ap
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = add nsw i64 %indvars.iv.i.i, -1         ; 2 uses
  %i.as = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %i.ar ; 3 uses
  %i.at = load i64, ptr %i.as, align 4            ; 4 uses
  %i.au = and i64 %i.at, 805306368
  %.not217.i.i = icmp eq i64 %i.au, 0
  tail call void @llvm.assume(i1 %.not217.i.i)
  %i.av = and i64 %i.at, 65535
  %.not218.i.i = icmp eq i64 %i.av, 0
  tail call void @llvm.assume(i1 %.not218.i.i)
  %i.aw = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.i.i ; 2 uses
  %i.ax = shl nsw i64 %i.ar, 24
  %i.ay = and i64 %i.ax, 251658240
  %.lobit219.i.i = and i64 %i.at, 4294967296
  %i.az = or disjoint i64 %i.ay, %.lobit219.i.i
  %i.ba = or disjoint i64 %i.az, 536870912
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = shl i32 %i.bc, 1
  store i64 %i.ba, ptr %i.aw, align 4
  %.sroa.1849.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i32 %i.bd, ptr %.sroa.1849.0..sroa_idx.i.i, align 4
  %i.be = and i64 %i.at, -1057030144
  %i.bf = shl nuw nsw i64 %indvars.iv.i.i, 24
  %i.bg = and i64 %i.bf, 251658240
  %i.bh = or disjoint i64 %i.bg, %i.be
  %i.bi = or disjoint i64 %i.bh, 268435456
  store i64 %i.bi, ptr %i.as, align 4
  br label %.loopexit.i.i

bb.j:                                             ; preds = %bb.f
  %i.bj = select i1 %i.p, i64 %i.m, i64 0
  %i.bk = icmp samesign ugt i64 %indvars.iv.i.i, %i.bj
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = add nsw i64 %indvars.iv.i.i, -1         ; 2 uses
  %i.bm = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %i.bl ; 3 uses
  %i.bn = load i64, ptr %i.bm, align 4            ; 4 uses
  %i.bo = and i64 %i.bn, 805306368
  %.not215.i.i = icmp eq i64 %i.bo, 0
  tail call void @llvm.assume(i1 %.not215.i.i)
  %i.bp = and i64 %i.bn, 65535
  %.not216.i.i = icmp eq i64 %i.bp, 0
  tail call void @llvm.assume(i1 %.not216.i.i)
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.i.i ; 2 uses
  %i.br = shl nsw i64 %i.bl, 24
  %i.bs = and i64 %i.br, 251658240
  %.lobit.i.i = and i64 %i.bn, 4294967296
  %i.bt = or disjoint i64 %i.bs, %.lobit.i.i
  %i.bu = or disjoint i64 %i.bt, 268435456
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = lshr i32 %i.bw, 1
  store i64 %i.bu, ptr %i.bq, align 4
  %.sroa.18.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i32 %i.bx, ptr %.sroa.18.0..sroa_idx.i.i, align 4
  %i.by = and i64 %i.bn, -1057030144
  %i.bz = shl nuw nsw i64 %indvars.iv.i.i, 24
  %i.ca = and i64 %i.bz, 251658240
  %i.cb = or disjoint i64 %i.ca, %i.by
  %i.cc = or disjoint i64 %i.cb, 536870912
  store i64 %i.cc, ptr %i.bm, align 4
  br label %.loopexit.i.i

bb.k:                                             ; preds = %bb.h, %bb.f
  %.pr.i.i = phi i8 [ %i.q, %bb.f ], [ %.pr.pre.i.i, %bb.h ]
  %.0208.i.i = phi ptr [ %i.o, %bb.f ], [ %i.ao, %bb.h ]
  %i.cd = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.i.i ; 15 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 22 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.af, %bb.k
  %i.cf = phi i8 [ %i.dr, %bb.af ], [ %.pr.i.i, %bb.k ]
  %.1.i.i = phi ptr [ %i.dq, %bb.af ], [ %.0208.i.i, %bb.k ]
  switch i8 %i.cf, label %bb.ae [
    i8 105, label %bb.m
    i8 97, label %bb.n
    i8 98, label %bb.o
    i8 99, label %bb.p
    i8 100, label %bb.q
    i8 83, label %bb.r
    i8 68, label %bb.s
    i8 114, label %bb.t
    i8 120, label %bb.u
    i8 113, label %bb.v
    i8 76, label %bb.w
    i8 115, label %bb.x
    i8 101, label %bb.y
    i8 73, label %bb.z
    i8 79, label %bb.aa
    i8 84, label %bb.ab
    i8 87, label %bb.ac
    i8 90, label %bb.ad
  ]

bb.m:                                             ; preds = %bb.l
  %i.cg = load i64, ptr %i.cd, align 4
  %i.ch = or i64 %i.cg, 1
  store i64 %i.ch, ptr %i.cd, align 4
  br label %bb.af

bb.n:                                             ; preds = %bb.l
  %i.ci = load i32, ptr %i.ce, align 4
  %i.cj = or i32 %i.ci, 1
  store i32 %i.cj, ptr %i.ce, align 4
  br label %bb.af

bb.o:                                             ; preds = %bb.l
  %i.ck = load i32, ptr %i.ce, align 4
  %i.cl = or i32 %i.ck, 8
  store i32 %i.cl, ptr %i.ce, align 4
  br label %bb.af

bb.p:                                             ; preds = %bb.l
  %i.cm = load i32, ptr %i.ce, align 4
  %i.cn = or i32 %i.cm, 2
  store i32 %i.cn, ptr %i.ce, align 4
  br label %bb.af

bb.q:                                             ; preds = %bb.l
  %i.co = load i32, ptr %i.ce, align 4
  %i.cp = or i32 %i.co, 4
  store i32 %i.cp, ptr %i.ce, align 4
  br label %bb.af

bb.r:                                             ; preds = %bb.l
  %i.cq = load i32, ptr %i.ce, align 4
  %i.cr = or i32 %i.cq, 64
  store i32 %i.cr, ptr %i.ce, align 4
  br label %bb.af

bb.s:                                             ; preds = %bb.l
  %i.cs = load i32, ptr %i.ce, align 4
  %i.ct = or i32 %i.cs, 128
  store i32 %i.ct, ptr %i.ce, align 4
  br label %bb.af

bb.t:                                             ; preds = %bb.l
  %i.cu = load i32, ptr %i.ce, align 4
  %i.cv = or i32 %i.cu, 65535
  store i32 %i.cv, ptr %i.ce, align 4
  br label %bb.af

bb.u:                                             ; preds = %bb.l
  %i.cw = load i32, ptr %i.ce, align 4
  %i.cx = or i32 %i.cw, -65536
  store i32 %i.cx, ptr %i.ce, align 4
  br label %bb.af

bb.v:                                             ; preds = %bb.l
  %i.cy = load i32, ptr %i.ce, align 4
  %i.cz = or i32 %i.cy, 65535
  store i32 %i.cz, ptr %i.ce, align 4
  br label %bb.af

bb.w:                                             ; preds = %bb.l
  %i.da = load i32, ptr %i.ce, align 4
  %i.db = or i32 %i.da, 65343
  store i32 %i.db, ptr %i.ce, align 4
  br label %bb.af

bb.x:                                             ; preds = %bb.l
  %i.dc = load i32, ptr %i.ce, align 4
  %i.dd = or i32 %i.dc, 65343
  store i32 %i.dd, ptr %i.ce, align 4
  br label %bb.af

bb.y:                                             ; preds = %bb.l
  %i.de = load i64, ptr %i.cd, align 4
  %i.df = or i64 %i.de, 256
  store i64 %i.df, ptr %i.cd, align 4
  br label %bb.af

bb.z:                                             ; preds = %bb.l
  %i.dg = load i64, ptr %i.cd, align 4
  %i.dh = or i64 %i.dg, 1024
  store i64 %i.dh, ptr %i.cd, align 4
  br label %bb.af

bb.aa:                                            ; preds = %bb.l
  %i.di = load i64, ptr %i.cd, align 4
  %i.dj = or i64 %i.di, 8192
  store i64 %i.dj, ptr %i.cd, align 4
  br label %bb.af

bb.ab:                                            ; preds = %bb.l
  %i.dk = load i64, ptr %i.cd, align 4
  %i.dl = or i64 %i.dk, 4096
  store i64 %i.dl, ptr %i.cd, align 4
  br label %bb.af
end_hunk_0
