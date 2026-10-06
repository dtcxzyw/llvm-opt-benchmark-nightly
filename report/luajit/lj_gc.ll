Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_gc?download=true
inline.NumInlined: 28
inline.NumDeleted: 12
begin_hunk_0_@lj_mem_newgco:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 %i.q, ptr %i.r, align 8, !tbaa !28
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define hidden ptr @lj_mem_grow(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !87     ; 2 uses
  %i.b = shl i32 %i.a, 1
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %i.b, i32 8)
  %spec.select = tail call i32 @llvm.umin.i32(i32 %spec.store.select, i32 %3) ; 2 uses
  %i.c = mul i32 %i.a, %4
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = mul i32 %spec.select, %4                 ; 2 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !36
  %i.i = inttoptr i64 %i.h to ptr                 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !85
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !86
  %i.m = tail call ptr %i.j(ptr noundef %i.l, ptr noundef %1, i64 noundef %i.d, i64 noundef %i.f) #8, !inline_history !124 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  %i.o = icmp ne i32 %i.e, 0
  %or.cond.i = and i1 %i.o, %i.n
  br i1 %or.cond.i, label %bb.b, label %lj_mem_realloc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @lj_err_mem(ptr noundef nonnull %0) #9
  unreachable

lj_mem_realloc.exit:                              ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !64
  %i.r = sub nsw i64 %i.f, %i.d
  %i.s = add i64 %i.r, %i.q
  store i64 %i.s, ptr %i.p, align 8, !tbaa !64
  store i32 %spec.select, ptr %2, align 4, !tbaa !87
  ret ptr %i.m
}

declare hidden ptr @lj_tab_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @lj_dispatch_update(ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden i32 @lj_vm_pcall(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare hidden i64 @lj_vmevent_prepare(ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden void @lj_vmevent_call(ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden void @lj_str_free(ptr noundef, ptr noundef) #2

declare hidden void @lj_func_freeuv(ptr noundef, ptr noundef) #2

declare hidden void @lj_state_free(ptr noundef, ptr noundef) #2

declare hidden void @lj_func_freeproto(ptr noundef, ptr noundef) #2

declare hidden void @lj_func_free(ptr noundef, ptr noundef) #2

declare hidden void @lj_trace_free(ptr noundef, ptr noundef) #2

declare hidden void @lj_cdata_free(ptr noundef, ptr noundef) #2

declare hidden void @lj_tab_free(ptr noundef, ptr noundef) #2

declare hidden void @lj_udata_free(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 0, 137438953505) i64 @propagatemark(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !69   ; 4 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 22 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %i.e = load i8, ptr %i.d, align 1, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 8 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !28
  %i.h = or i8 %i.g, 4
  store i8 %i.h, ptr %i.f, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !28
  store i64 %i.j, ptr %i.a, align 8, !tbaa !69
  switch i8 %i.e, label %bb.ao [
    i8 11, label %bb.b
    i8 8, label %bb.aj
    i8 7, label %bb.am
    i8 6, label %bb.an
  ], !prof !128

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !40   ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr                 ; 4 uses
  %cond.i = icmp eq i64 %i.l, 0
  br i1 %cond.i, label %.thread84.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i8, ptr %i.n, align 8, !tbaa !28
  %i.p = and i8 %i.o, 3
  %.not70.i = icmp eq i8 %i.p, 0
  br i1 %.not70.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @gc_mark(ptr noundef nonnull %0, ptr noundef nonnull %i.m)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 10
  %i.r = load i8, ptr %i.q, align 2, !tbaa !30
  %i.s = and i8 %i.r, 8
  %.not71.i = icmp eq i8 %i.s, 0
  br i1 %.not71.i, label %bb.f, label %.thread84.thread.i

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.u = load i64, ptr %i.t, align 8, !tbaa !27
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = tail call ptr @lj_meta_cache(ptr noundef nonnull %i.m, i32 noundef 3, ptr noundef %i.v) #8 ; 2 uses
  %.not72.i = icmp eq ptr %i.w, null
  br i1 %.not72.i, label %.thread84.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load i64, ptr %i.w, align 8, !tbaa !28   ; 2 uses
  %.mask.i = and i64 %i.x, -140737488355328
  %i.y = icmp eq i64 %.mask.i, -703687441776640
  br i1 %i.y, label %bb.h, label %.thread84.thread.i

bb.h:                                             ; preds = %bb.g
  %i.z = and i64 %i.x, 140737488355327
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.h
  %.062.i.ph = phi i32 [ 0, %bb.h ], [ %.062.i.ph.be, %.outer.backedge ] ; 8 uses
  %.061.i.ph = phi ptr [ %i.ab, %bb.h ], [ %i.ac, %.outer.backedge ]
  br label %bb.i

bb.i:                                             ; preds = %.outer, %bb.i
  %.061.i = phi ptr [ %i.ac, %bb.i ], [ %.061.i.ph, %.outer ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.061.i, i64 1 ; 2 uses
  %i.ad = load i8, ptr %.061.i, align 1, !tbaa !28
  switch i8 %i.ad, label %bb.i [
    i8 0, label %bb.l
    i8 107, label %bb.j
    i8 118, label %bb.k
  ], !llvm.loop !125

bb.j:                                             ; preds = %bb.i
  %i.ae = or i32 %.062.i.ph, 8
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.j, %bb.k
  %.062.i.ph.be = phi i32 [ %i.af, %bb.k ], [ %i.ae, %bb.j ]
  br label %.outer, !llvm.loop !125

bb.k:                                             ; preds = %bb.i
  %i.af = or i32 %.062.i.ph, 16
  br label %.outer.backedge

bb.l:                                             ; preds = %bb.i
  %.not74.i = icmp eq i32 %.062.i.ph, 0
  br i1 %.not74.i, label %.thread84.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !27
  %i.ai = icmp eq i64 %i.b, %i.ah
  br i1 %i.ai, label %.thread84.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = load i8, ptr %i.f, align 8, !tbaa !74
  %i.ak = and i8 %i.aj, -25
  %i.al = trunc nuw nsw i32 %.062.i.ph to i8
  %i.am = or i8 %i.ak, %i.al
  store i8 %i.am, ptr %i.f, align 8, !tbaa !74
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !72
  store i64 %i.ao, ptr %i.i, align 8, !tbaa !77
  store i64 %i.b, ptr %i.an, align 8, !tbaa !72
  %i.ap = icmp eq i32 %.062.i.ph, 24
  br i1 %i.ap, label %gc_traverse_tab.exit.thread, label %.thread84.i

.thread84.i:                                      ; preds = %bb.n
  %i.aq = and i32 %.062.i.ph, 16
  %.not75.i = icmp eq i32 %i.aq, 0
  br i1 %.not75.i, label %.thread84.thread.i, label %.loopexit93.i

.thread84.thread.i:                               ; preds = %.thread84.i, %bb.m, %bb.l, %bb.g, %bb.f, %bb.e, %bb.b
  %.38690.i = phi i32 [ %.062.i.ph, %.thread84.i ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %bb.g ], [ 0, %bb.l ], [ -17, %bb.m ], [ 0, %bb.f ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !75 ; 2 uses
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %.loopexit93.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread84.thread.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %wide.trip.count.i = zext i32 %i.as to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %.lr.ph.i
  %indvars.iv.i.a = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.r ] ; 2 uses
  %1 = load i64, ptr %i.at, align 8, !tbaa !76
  %i.au = inttoptr i64 %1 to ptr
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i.a
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !28 ; 2 uses
  %i.ax = ashr i64 %i.aw, 47
  %i.ay = trunc nsw i64 %i.ax to i32
  %i.az = add nsw i32 %i.ay, 13
  %i.ba = icmp ult i32 %i.az, 9
  br i1 %i.ba, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bb = and i64 %i.aw, 140737488355327
  %i.bc = inttoptr i64 %i.bb to ptr               ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !28
  %i.bf = and i8 %i.be, 3
  %.not76.i = icmp eq i8 %i.bf, 0
  br i1 %.not76.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @gc_mark(ptr noundef %0, ptr noundef nonnull %i.bc)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i.a, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit93.i, label %bb.o, !llvm.loop !126

.loopexit93.i:                                    ; preds = %bb.r, %.thread84.thread.i, %.thread84.i
  %.not7591.i = phi i1 [ false, %.thread84.i ], [ true, %.thread84.thread.i ], [ true, %bb.r ] ; 2 uses
  %.38689.i = phi i32 [ %.062.i.ph, %.thread84.i ], [ %.38690.i, %.thread84.thread.i ], [ %.38690.i, %bb.r ]
  %.38689.fr.i = freeze i32 %.38689.i             ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !41 ; 4 uses
  %.not77.i = icmp eq i32 %i.bh, 0
  br i1 %.not77.i, label %gc_traverse_tab.exit, label %bb.s

bb.s:                                             ; preds = %.loopexit93.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !39
  %i.bk = inttoptr i64 %i.bj to ptr               ; 3 uses
  %i.bl = and i32 %.38689.fr.i, 8
  %.not79.i = icmp eq i32 %i.bl, 0
  br i1 %.not79.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.s
  br i1 %.not7591.i, label %.split.us.split.us.i, label %.split.us.split.i

.split.us.split.us.i:                             ; preds = %.split.us.i, %bb.z
  %.095.us.us.i = phi i32 [ %i.cl, %bb.z ], [ 0, %.split.us.i ] ; 2 uses
  %i.bm = zext i32 %.095.us.us.i to i64
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %i.bm ; 3 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !28 ; 3 uses
  %i.bp = icmp eq i64 %i.bo, -1
  br i1 %i.bp, label %bb.z, label %bb.t

bb.t:                                             ; preds = %.split.us.split.us.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !28 ; 2 uses
  %i.bs = ashr i64 %i.br, 47
  %i.bt = trunc nsw i64 %i.bs to i32
  %i.bu = add nsw i32 %i.bt, 13
  %i.bv = icmp ult i32 %i.bu, 9
  br i1 %i.bv, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bw = and i64 %i.br, 140737488355327
  %i.bx = inttoptr i64 %i.bw to ptr               ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !28
  %i.ca = and i8 %i.bz, 3
  %.not80.us.us.i = icmp eq i8 %i.ca, 0
  br i1 %.not80.us.us.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @gc_mark(ptr noundef %0, ptr noundef nonnull %i.bx)
  %.pre.i.a = load i64, ptr %i.bn, align 8, !tbaa !28
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.cb = phi i64 [ %.pre.i.a, %bb.v ], [ %i.bo, %bb.u ], [ %i.bo, %bb.t ] ; 2 uses
  %i.cc = ashr i64 %i.cb, 47
  %i.cd = trunc nsw i64 %i.cc to i32
  %i.ce = add nsw i32 %i.cd, 13
  %i.cf = icmp ult i32 %i.ce, 9
  br i1 %i.cf, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cg = and i64 %i.cb, 140737488355327
  %i.ch = inttoptr i64 %i.cg to ptr               ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !28
  %i.ck = and i8 %i.cj, 3
  %.not81.us.us.i = icmp eq i8 %i.ck, 0
  br i1 %.not81.us.us.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call fastcc void @gc_mark(ptr noundef %0, ptr noundef nonnull %i.ch)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %.split.us.split.us.i
  %i.cl = add i32 %.095.us.us.i, 1                ; 2 uses
  %.not78.us.us.i = icmp ugt i32 %i.cl, %i.bh
  br i1 %.not78.us.us.i, label %gc_traverse_tab.exit, label %.split.us.split.us.i, !llvm.loop !127

.split.us.split.i:                                ; preds = %.split.us.i, %bb.ad
  %.095.us.i = phi i32 [ %i.db, %bb.ad ], [ 0, %.split.us.i ] ; 2 uses
  %i.cm = zext i32 %.095.us.i to i64
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %i.cm ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !28
  %i.cp = icmp eq i64 %i.co, -1
  br i1 %i.cp, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %.split.us.split.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !28 ; 2 uses
  %i.cs = ashr i64 %i.cr, 47
  %i.ct = trunc nsw i64 %i.cs to i32
  %i.cu = add nsw i32 %i.ct, 13
  %i.cv = icmp ult i32 %i.cu, 9
  br i1 %i.cv, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.cw = and i64 %i.cr, 140737488355327
  %i.cx = inttoptr i64 %i.cw to ptr               ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !28
  %i.da = and i8 %i.cz, 3
  %.not80.us.i = icmp eq i8 %i.da, 0
  br i1 %.not80.us.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call fastcc void @gc_mark(ptr noundef %0, ptr noundef nonnull %i.cx)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %.split.us.split.i
  %i.db = add i32 %.095.us.i, 1                   ; 2 uses
  %.not78.us.i = icmp ugt i32 %i.db, %i.bh
  br i1 %.not78.us.i, label %gc_traverse_tab.exit, label %.split.us.split.i, !llvm.loop !127

.split.i:                                         ; preds = %bb.s
  br i1 %.not7591.i, label %.split.split.us.i, label %gc_traverse_tab.exit

.split.split.us.i:                                ; preds = %.split.i, %bb.ah
  %.095.us96.i = phi i32 [ %i.dp, %bb.ah ], [ 0, %.split.i ] ; 2 uses
  %i.dc = zext i32 %.095.us96.i to i64
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %i.dc
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !28 ; 3 uses
  %i.df = icmp eq i64 %i.de, -1
  br i1 %i.df, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %.split.split.us.i
  %i.dg = ashr i64 %i.de, 47
  %i.dh = trunc nsw i64 %i.dg to i32
  %i.di = add nsw i32 %i.dh, 13
  %i.dj = icmp ult i32 %i.di, 9
  br i1 %i.dj, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.dk = and i64 %i.de, 140737488355327
  %i.dl = inttoptr i64 %i.dk to ptr               ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load i8, ptr %i.dm, align 8, !tbaa !28
  %i.do = and i8 %i.dn, 3
  %.not81.us97.i = icmp eq i8 %i.do, 0
  br i1 %.not81.us97.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call fastcc void @gc_mark(ptr noundef %0, ptr noundef nonnull %i.dl)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %.split.split.us.i
  %i.dp = add i32 %.095.us96.i, 1                 ; 2 uses
  %.not78.us98.i = icmp ugt i32 %i.dp, %i.bh
  br i1 %.not78.us98.i, label %gc_traverse_tab.exit, label %.split.split.us.i, !llvm.loop !127

gc_traverse_tab.exit:                             ; preds = %bb.ah, %bb.ad, %bb.z, %.loopexit93.i, %.split.i
  %i.dq = icmp sgt i32 %.38689.fr.i, 0
  br i1 %i.dq, label %gc_traverse_tab.exit.thread, label %bb.ai

gc_traverse_tab.exit.thread:                      ; preds = %bb.n, %gc_traverse_tab.exit
  %i.dr = load i8, ptr %i.f, align 8, !tbaa !28
  %i.ds = and i8 %i.dr, -5
  store i8 %i.ds, ptr %i.f, align 8, !tbaa !28
  br label %bb.ai

bb.ai:                                            ; preds = %gc_traverse_tab.exit.thread, %gc_traverse_tab.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !75
  %i.dv = zext i32 %i.du to i64
  %i.dw = shl nuw nsw i64 %i.dv, 3
  %i.dx = add nuw nsw i64 %i.dw, 64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !41 ; 2 uses
  %.not = icmp eq i32 %i.dz, 0
  %i.ea = add i32 %i.dz, 1
  %i.eb = zext i32 %i.ea to i64
  %i.ec = mul nuw nsw i64 %i.eb, 24
  %i.ed = select i1 %.not, i64 0, i64 %i.ec
  %i.ee = add nuw nsw i64 %i.dx, %i.ed
  br label %bb.ap

bb.aj:                                            ; preds = %bb.a
  tail call fastcc void @gc_traverse_func(ptr noundef nonnull %0, ptr noundef nonnull %i.c)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.eg = load i8, ptr %i.ef, align 2, !tbaa !28
  %i.eh = icmp eq i8 %i.eg, 0
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 11
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !28
  %i.ek = zext i8 %i.ej to i64
  %i.el = shl nuw nsw i64 %i.ek, 3                ; 2 uses
  br i1 %i.eh, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.em = add nuw nsw i64 %i.el, 40
  br label %bb.ap

bb.al:                                            ; preds = %bb.aj
  %i.en = add nuw nsw i64 %i.el, 48
  br label %bb.ap

bb.am:                                            ; preds = %bb.a
  tail call fastcc void @gc_traverse_proto(ptr noundef nonnull %0, ptr noundef nonnull %i.c)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !129
  %i.eq = zext i32 %i.ep to i64
  br label %bb.ap

bb.an:                                            ; preds = %bb.a
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !73
  store i64 %i.es, ptr %i.i, align 8, !tbaa !130
  store i64 %i.b, ptr %i.er, align 8, !tbaa !73
  %i.et = load i8, ptr %i.f, align 8, !tbaa !28
  %i.eu = and i8 %i.et, -5
  store i8 %i.eu, ptr %i.f, align 8, !tbaa !28
  tail call fastcc void @gc_traverse_thread(ptr noundef nonnull %0, ptr noundef nonnull %i.c)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !88
  %i.ex = zext i32 %i.ew to i64
  %i.ey = shl nuw nsw i64 %i.ex, 3
  %i.ez = add nuw nsw i64 %i.ey, 96
  br label %bb.ap

bb.ao:                                            ; preds = %bb.a
  tail call fastcc void @gc_traverse_trace(ptr noundef nonnull %0, ptr noundef nonnull %i.c)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !131
  %i.fc = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !89
  %i.fe = sub i32 %i.fb, %i.fd
  %i.ff = zext i32 %i.fe to i64
  %i.fg = shl nuw nsw i64 %i.ff, 3
  %i.fh = add nuw nsw i64 %i.fg, 120
  %i.fi = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.fj = load i16, ptr %i.fi, align 2, !tbaa !132
  %i.fk = zext i16 %i.fj to i64
  %i.fl = mul nuw nsw i64 %i.fk, 12
  %i.fm = add nuw nsw i64 %i.fh, %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !133
  %i.fp = zext i32 %i.fo to i64
  %i.fq = shl nuw nsw i64 %i.fp, 2
  %i.fr = add nuw nsw i64 %i.fm, %i.fq
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ak, %bb.al, %bb.ao, %bb.an, %bb.am, %bb.ai
  %.0 = phi i64 [ %i.ee, %bb.ai ], [ %i.fr, %bb.ao ], [ %i.eq, %bb.am ], [ %i.ez, %bb.an ], [ %i.em, %bb.ak ], [ %i.en, %bb.al ]
  ret i64 %.0
}

declare hidden void @lj_str_resize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @gc_traverse_func(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !28
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i8, ptr %i.d, align 8, !tbaa !28
  %i.f = and i8 %i.e, 3
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @gc_mark(ptr noundef %0, ptr noundef nonnull %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.h = load i8, ptr %i.g, align 2, !tbaa !28
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 11 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !28    ; 2 uses
  %.not32 = icmp eq i8 %i.k, 0
  br i1 %.not32, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !28
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -96
  %i.q = load i8, ptr %i.p, align 8, !tbaa !28
  %i.r = and i8 %i.q, 3
  %.not26 = icmp eq i8 %i.r, 0
  br i1 %.not26, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds i8, ptr %i.o, i64 -104
  tail call fastcc void @gc_mark(ptr noundef %0, ptr noundef nonnull %i.s)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 11 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !28    ; 2 uses
  %.not33 = icmp eq i8 %i.u, 0
  br i1 %.not33, label %.loopexit, label %.lr.ph31

.lr.ph31:                                         ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph31, %bb.i
  %i.w = phi i8 [ %i.u, %.lr.ph31 ], [ %i.ad, %bb.i ]
  %indvars.iv36 = phi i64 [ 0, %.lr.ph31 ], [ %indvars.iv.next37, %bb.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv36
  %i.y = load i64, ptr %i.x, align 8, !tbaa !28
  %i.z = inttoptr i64 %i.y to ptr                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !28
  %i.ac = and i8 %i.ab, 3
  %.not27 = icmp eq i8 %i.ac, 0
  br i1 %.not27, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @gc_mark(ptr noundef %0, ptr noundef nonnull %i.z)
  %.pre39 = load i8, ptr %i.t, align 1, !tbaa !28
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ad = phi i8 [ %i.w, %bb.g ], [ %.pre39, %bb.h ] ; 2 uses
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %i.ae = zext i8 %i.ad to i64
  %i.af = icmp samesign ult i64 %indvars.iv.next37, %i.ae
  br i1 %i.af, label %bb.g, label %.loopexit, !llvm.loop !134

bb.j:                                             ; preds = %.lr.ph, %bb.m
  %i.ag = phi i8 [ %i.k, %.lr.ph ], [ %i.as, %bb.m ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !28 ; 2 uses
  %i.aj = ashr i64 %i.ai, 47
  %i.ak = trunc nsw i64 %i.aj to i32
  %i.al = add nsw i32 %i.ak, 13
  %i.am = icmp ult i32 %i.al, 9
  br i1 %i.am, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.an = and i64 %i.ai, 140737488355327
  %i.ao = inttoptr i64 %i.an to ptr               ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !28
  %i.ar = and i8 %i.aq, 3
  %.not25 = icmp eq i8 %i.ar, 0
  br i1 %.not25, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @gc_mark(ptr noundef %0, ptr noundef nonnull %i.ao)
  %.pre = load i8, ptr %i.j, align 1, !tbaa !28
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %i.as = phi i8 [ %i.ag, %bb.j ], [ %i.ag, %bb.k ], [ %.pre, %bb.l ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.at = zext i8 %i.as to i64
  %i.au = icmp samesign ult i64 %indvars.iv.next, %i.at
  br i1 %i.au, label %bb.j, label %.loopexit, !llvm.loop !135

.loopexit:                                        ; preds = %bb.m, %bb.i, %.preheader, %bb.f
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @gc_traverse_proto(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i64, ptr %i.a, align 8, !tbaa !137
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !28
  %i.f = and i8 %i.e, -4
  store i8 %i.f, ptr %i.d, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load i32, ptr %i.g, align 8, !tbaa !138  ; 2 uses
  %.not14 = icmp eq i32 %i.h, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = zext i32 %i.h to i64
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.013.a = phi i64 [ %i.j, %.lr.ph ], [ %i.s, %bb.d ] ; 2 uses
  %2 = load i64, ptr %i.k, align 8, !tbaa !139
  %i.l = inttoptr i64 %2 to ptr
  %i.m = getelementptr inbounds [8 x i8], ptr %i.l, i64 %.013.a
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i8, ptr %i.p, align 8, !tbaa !28
  %i.r = and i8 %i.q, 3
  %.not12 = icmp eq i8 %i.r, 0
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @gc_mark(ptr noundef %0, ptr noundef nonnull %i.o)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.s = add nsw i64 %.013.a, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, 0
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !136

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 62
  %i.u = load i16, ptr %i.t, align 2, !tbaa !140  ; 2 uses
  %.not = icmp eq i16 %i.u, 0
  br i1 %.not, label %gc_marktrace.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !84
  %i.x = zext i16 %i.u to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !27   ; 2 uses
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !28  ; 2 uses
  %i.ad = and i8 %i.ac, 3
  %.not.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i, label %gc_marktrace.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = and i8 %i.ac, -4
  store i8 %i.ae, ptr %i.ab, align 8, !tbaa !28
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !69
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !28
  store i64 %i.z, ptr %i.af, align 8, !tbaa !69
  br label %gc_marktrace.exit

gc_marktrace.exit:                                ; preds = %bb.f, %bb.e, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gc_traverse_thread(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !143
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.g = icmp ult ptr %i.f, %i.b
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.023 = phi ptr [ %i.r, %bb.d ], [ %i.f, %bb.a ] ; 2 uses
  %i.h = load i64, ptr %.023, align 8, !tbaa !28  ; 2 uses
  %i.i = ashr i64 %i.h, 47
  %i.j = trunc nsw i64 %i.i to i32
  %i.k = add nsw i32 %i.j, 13
  %i.l = icmp ult i32 %i.k, 9
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.m = and i64 %i.h, 140737488355327
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i8, ptr %i.o, align 8, !tbaa !28
  %i.q = and i8 %i.p, 3
  %.not22 = icmp eq i8 %i.q, 0
  br i1 %.not22, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @gc_mark(ptr noundef %0, ptr noundef nonnull %i.n)
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.b, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.023, i64 8 ; 3 uses
  %i.s = icmp ult ptr %i.r, %i.b
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !141

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %i.f, %bb.a ], [ %i.r, %bb.d ] ; 3 uses
  %.0.lcssa27 = ptrtoaddr ptr %.0.lcssa to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.u = load i8, ptr %i.t, align 1, !tbaa !66
  %i.v = icmp eq i8 %i.u, 2
  br i1 %i.v, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %._crit_edge
  %i.w = load i64, ptr %i.c, align 8, !tbaa !143  ; 2 uses
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.z = load i32, ptr %i.y, align 8, !tbaa !88
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.aa
  %i.ac = icmp ult ptr %.0.lcssa, %i.ab
  br i1 %i.ac, label %.lr.ph26.preheader, label %.loopexit

.lr.ph26.preheader:                               ; preds = %bb.e
  %i.ad = shl nuw nsw i64 %i.aa, 3
  %i.ae = add i64 %i.w, %i.ad
  %i.af = xor i64 %.0.lcssa27, -1
  %i.ag = add i64 %i.ae, %i.af
  %i.ah = and i64 %i.ag, -8
  %i.ai = add i64 %i.ah, 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.lcssa, i8 -1, i64 %i.ai, i1 false), !tbaa !28
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph26.preheader, %bb.e, %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !144
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i8, ptr %i.am, align 8, !tbaa !28
  %i.ao = and i8 %i.an, 3
  %.not = icmp eq i8 %i.ao, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.loopexit
  tail call fastcc void @gc_mark(ptr noundef nonnull %0, ptr noundef nonnull %i.al)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -8 ; 2 uses
  %i.ar = load i64, ptr %i.c, align 8, !tbaa !143 ; 2 uses
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !80
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.ax = icmp ugt ptr %i.av, %i.aw
  br i1 %i.ax, label %.lr.ph.i, label %gc_traverse_frames.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.l
  %.0242.i = phi ptr [ %spec.select.i, %bb.l ], [ %i.aq, %bb.g ] ; 2 uses
  %.0251.i = phi ptr [ %i.cc, %bb.l ], [ %i.av, %bb.g ] ; 6 uses
  %i.ay = getelementptr inbounds i8, ptr %.0251.i, i64 -8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !28
  %i.ba = and i64 %i.az, 140737488355327
  %i.bb = inttoptr i64 %i.ba to ptr               ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 10
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !28
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !28
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -93
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !82
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.0251.i, i64 %i.bk
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %.0.i = phi ptr [ %i.bl, %bb.h ], [ %.0251.i, %.lr.ph.i ] ; 2 uses
  %i.bm = icmp ugt ptr %.0.i, %.0242.i
  %spec.select.i = select i1 %i.bm, ptr %.0.i, ptr %.0242.i ; 2 uses
  %i.bn = load i64, ptr %.0251.i, align 8, !tbaa !28 ; 3 uses
  %i.bo = and i64 %i.bn, 3
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bq = inttoptr i64 %i.bn to ptr
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !87
  %i.bt = lshr i32 %i.bs, 8
  %i.bu = and i32 %i.bt, 255
  %i.bv = add nuw nsw i32 %i.bu, 2
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = sub nsw i64 0, %i.bw
  %i.by = getelementptr inbounds [8 x i8], ptr %.0251.i, i64 %i.bx
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bz = and i64 %i.bn, -8
  %i.ca = sub i64 0, %i.bz
  %i.cb = getelementptr inbounds i8, ptr %.0251.i, i64 %i.ca
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cc = phi ptr [ %i.by, %bb.j ], [ %i.cb, %bb.k ] ; 2 uses
  %i.cd = icmp ugt ptr %i.cc, %i.aw
  br i1 %i.cd, label %.lr.ph.i, label %gc_traverse_frames.exit, !llvm.loop !142

gc_traverse_frames.exit:                          ; preds = %bb.l, %bb.g
  %.024.lcssa.i = phi ptr [ %i.aq, %bb.g ], [ %spec.select.i, %bb.l ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.024.lcssa.i, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !145
  %i.ch = inttoptr i64 %i.cg to ptr               ; 2 uses
  %i.ci = icmp ugt ptr %i.ce, %i.ch
  %spec.select28.i = select i1 %i.ci, ptr %i.ch, ptr %i.ce
  %i.cj = ptrtoint ptr %spec.select28.i to i64
  %i.ck = sub i64 %i.cj, %i.ar
  %i.cl = lshr exact i64 %i.ck, 3
  %i.cm = trunc i64 %i.cl to i32
  tail call void @lj_state_shrinkstack(ptr noundef %1, i32 noundef %i.cm) #8
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @gc_traverse_trace(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = load i16, ptr %i.a, align 8, !tbaa !147
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !89   ; 2 uses
  %i.f = icmp ult i32 %i.e, 32765
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.h
  %.037 = phi i32 [ %i.e, %.lr.ph ], [ %i.aa, %bb.h ] ; 3 uses
  %2 = load ptr, ptr %i.g, align 8, !tbaa !148
  %i.h = zext nneg i32 %.037 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.h ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 5 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !28
  %i.l = icmp eq i8 %i.k, 24
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !28
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i8, ptr %i.p, align 8, !tbaa !28
  %i.r = and i8 %i.q, 3
  %.not30 = icmp eq i8 %i.r, 0
  br i1 %.not30, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @gc_mark(ptr noundef %0, ptr noundef nonnull %i.o)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.t = load i8, ptr %i.s, align 4, !tbaa !28
  %i.u = and i8 %i.t, 31
  %i.v = zext nneg i8 %i.u to i32
  %i.w = shl nuw i32 1, %i.v
  %i.x = and i32 %i.w, 6315993
  %.not31 = icmp eq i32 %i.x, 0
  br i1 %.not31, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load i8, ptr %i.j, align 1, !tbaa !28
  %.not32 = icmp ne i8 %i.y, 27
  %i.z = zext i1 %.not32 to i32
  %spec.select = add nuw nsw i32 %.037, %i.z
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi i32 [ %.037, %bb.f ], [ %spec.select, %bb.g ] ; 2 uses
  %i.aa = add nuw nsw i32 %.1, 1
  %i.ab = icmp ult i32 %.1, 32764
  br i1 %i.ab, label %bb.c, label %._crit_edge, !llvm.loop !146

._crit_edge:                                      ; preds = %bb.h, %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 106
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !149 ; 2 uses
  %.not = icmp eq i16 %i.ad, 0
  br i1 %.not, label %gc_marktrace.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !84
  %i.ag = zext i16 %i.ad to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !28  ; 2 uses
  %i.am = and i8 %i.al, 3
  %.not.i = icmp eq i8 %i.am, 0
  br i1 %.not.i, label %gc_marktrace.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = and i8 %i.al, -4
  store i8 %i.an, ptr %i.ak, align 8, !tbaa !28
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !69
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !28
  store i64 %i.ai, ptr %i.ao, align 8, !tbaa !69
  br label %gc_marktrace.exit

gc_marktrace.exit:                                ; preds = %bb.j, %bb.i, %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 110
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !150 ; 2 uses
  %.not27 = icmp eq i16 %i.as, 0
  br i1 %.not27, label %gc_marktrace.exit34, label %bb.k

bb.k:                                             ; preds = %gc_marktrace.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !84
  %i.av = zext i16 %i.as to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !27 ; 2 uses
  %i.ay = inttoptr i64 %i.ax to ptr               ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !28  ; 2 uses
  %i.bb = and i8 %i.ba, 3
  %.not.i33 = icmp eq i8 %i.bb, 0
  br i1 %.not.i33, label %gc_marktrace.exit34, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = and i8 %i.ba, -4
  store i8 %i.bc, ptr %i.az, align 8, !tbaa !28
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !69
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !28
  store i64 %i.ax, ptr %i.bd, align 8, !tbaa !69
  br label %gc_marktrace.exit34

gc_marktrace.exit34:                              ; preds = %bb.l, %bb.k, %gc_marktrace.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bh = load i16, ptr %i.bg, align 8, !tbaa !151 ; 2 uses
  %.not28 = icmp eq i16 %i.bh, 0
  br i1 %.not28, label %gc_marktrace.exit36, label %bb.m

bb.m:                                             ; preds = %gc_marktrace.exit34
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !84
  %i.bk = zext i16 %i.bh to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !27 ; 2 uses
  %i.bn = inttoptr i64 %i.bm to ptr               ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !28  ; 2 uses
  %i.bq = and i8 %i.bp, 3
  %.not.i35 = icmp eq i8 %i.bq, 0
  br i1 %.not.i35, label %gc_marktrace.exit36, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = and i8 %i.bp, -4
  store i8 %i.br, ptr %i.bo, align 8, !tbaa !28
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !69
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !28
  store i64 %i.bm, ptr %i.bs, align 8, !tbaa !69
  br label %gc_marktrace.exit36

gc_marktrace.exit36:                              ; preds = %bb.n, %bb.m, %gc_marktrace.exit34
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !152
  %i.bx = inttoptr i64 %i.bw to ptr               ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !28
  %i.ca = and i8 %i.bz, 3
  %.not29 = icmp eq i8 %i.ca, 0
  br i1 %.not29, label %bb.p, label %bb.o

bb.o:                                             ; preds = %gc_marktrace.exit36
  tail call fastcc void @gc_mark(ptr noundef %0, ptr noundef nonnull %i.bx)
  br label %bb.p

bb.p:                                             ; preds = %gc_marktrace.exit36, %bb.o, %bb.a
  ret void
}

declare hidden void @lj_state_shrinkstack(ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden void @lj_buf_shrink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !33}
!1 = distinct !{!1, !33}
!2 = distinct !{!2, !33}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"long", !8, i64 0}
!14 = !{!"GCRef", !13, i64 0}
!15 = !{!"MRef", !13, i64 0}
!16 = !{!"GCState", !13, i64 0, !13, i64 8, !8, i64 16, !8, i64 17, !8, i64 18, !8, i64 19, !9, i64 20, !14, i64 24, !15, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !13, i64 72, !13, i64 80, !9, i64 88, !9, i64 92, !15, i64 96}
!17 = !{!"GCstr", !14, i64 0, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11, !9, i64 12, !9, i64 16, !9, i64 20}
!18 = !{!"p1 _ZTS5GCRef", !12, i64 0}
!19 = !{!"StrInternState", !18, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !8, i64 20, !8, i64 21, !8, i64 22, !8, i64 23, !13, i64 24}
!20 = !{!"p1 omnipotent char", !12, i64 0}
!21 = !{!"SBuf", !20, i64 0, !20, i64 8, !20, i64 16, !15, i64 24}
!22 = !{!"Node", !8, i64 0, !8, i64 8, !15, i64 16}
!23 = !{!"GCupval", !14, i64 0, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11, !8, i64 16, !15, i64 32, !9, i64 40}
!24 = !{!"PRNGState", !8, i64 0}
!25 = !{!"global_State", !12, i64 0, !12, i64 8, !16, i64 16, !17, i64 120, !8, i64 144, !8, i64 145, !8, i64 146, !8, i64 147, !19, i64 152, !9, i64 184, !14, i64 192, !21, i64 200, !8, i64 232, !8, i64 240, !22, i64 248, !8, i64 272, !14, i64 280, !23, i64 288, !9, i64 336, !9, i64 340, !12, i64 344, !12, i64 352, !12, i64 360, !9, i64 368, !9, i64 372, !14, i64 376, !15, i64 384, !15, i64 392, !24, i64 400, !8, i64 432}
!26 = !{!25, !13, i64 192}
!27 = !{!14, !13, i64 0}
!28 = !{!8, !8, i64 0}
!29 = !{!"GCtab", !14, i64 0, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11, !15, i64 16, !14, i64 24, !14, i64 32, !15, i64 40, !9, i64 48, !9, i64 52, !15, i64 56}
!30 = !{!29, !8, i64 10}
!31 = !{!13, !13, i64 0}
!32 = !{!25, !13, i64 80}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!"p1 _ZTS6TValue", !12, i64 0}
!35 = !{!"lua_State", !14, i64 0, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11, !15, i64 16, !14, i64 24, !34, i64 32, !34, i64 40, !15, i64 48, !15, i64 56, !14, i64 64, !14, i64 72, !12, i64 80, !9, i64 88}
!36 = !{!35, !13, i64 16}
!37 = !{!25, !13, i64 40}
!38 = !{!25, !8, i64 32}
!39 = !{!29, !13, i64 40}
!40 = !{!29, !13, i64 32}
!41 = !{!29, !9, i64 52}
!42 = !{!25, !13, i64 24}
!43 = !{!25, !13, i64 280}
!44 = !{!"short", !8, i64 0}
end_hunk_0
