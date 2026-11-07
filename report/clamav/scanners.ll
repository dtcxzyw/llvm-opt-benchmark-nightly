Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/scanners?download=true
inline.NumInlined: 80
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dispatch_file_inspection_callback:bb.a

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !65
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.1 = phi i64 [ %i.ar, %bb.h ], [ %.1, %bb.g ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 264
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !90
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.al
  store ptr %i.at, ptr %i.au, align 8, !tbaa !71
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.e

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ %i.f, %.lr.ph ], [ %i.al, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.060.epil.init = phi i64 [ 0, %.lr.ph ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod66 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod66)
  %i.av = add nsw i64 %indvars.iv.epil.init, -1   ; 2 uses
  %i.aw = getelementptr inbounds nuw [104 x i8], ptr %i.x, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !40 ; 2 uses
  %i.az = icmp eq i64 %indvars.iv.epil.init, %i.z
  br i1 %i.az, label %bb.j, label %._crit_edge.loopexit.epilog-lcssa

bb.j:                                             ; preds = %.epil.preheader
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 88
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !65
  br label %._crit_edge.loopexit.epilog-lcssa

._crit_edge.loopexit.epilog-lcssa:                ; preds = %bb.j, %.epil.preheader
  %.1.epil = phi i64 [ %i.bb, %bb.j ], [ %.060.epil.init, %.epil.preheader ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 264
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !90
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.av
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !71
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.epilog-lcssa, %._crit_edge.loopexit.unr-lcssa, %fmap_need_off_once_len.exit
  %.0.lcssa = phi i64 [ 0, %fmap_need_off_once_len.exit ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ], [ %.1.epil, %._crit_edge.loopexit.epilog-lcssa ]
  %i.bf = getelementptr i8, ptr %1, i64 128       ; 2 uses
  %.val = load ptr, ptr %i.bf, align 8, !tbaa !67
  tail call void @cli_event_time_start(ptr noundef %.val, i32 noundef 1) #18
  %i.bg = load i32, ptr %i.a, align 4, !tbaa !37  ; 2 uses
  %i.bh = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.bi = zext i32 %i.bg to i64
  %i.bj = getelementptr inbounds nuw [104 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 36
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !81
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !89
  %i.bo = tail call i32 %0(i32 noundef %i.j, ptr noundef %2, ptr noundef nonnull %i.n, i64 noundef %.0.lcssa, ptr noundef %i.q, i64 noundef %storemerge.i, ptr noundef %.0.i, i32 noundef %i.bg, i32 noundef %i.bl, ptr noundef %i.bn) #18 ; 2 uses
  %.val51 = load ptr, ptr %i.bf, align 8, !tbaa !67
  tail call void @cli_event_time_stop(ptr noundef %.val51, i32 noundef 1) #18
  switch i32 %i.bo, label %bb.m [
    i32 22, label %bb.k
    i32 1, label %bb.l
    i32 0, label %bb.n
  ]

bb.k:                                             ; preds = %._crit_edge
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.439) #18
  %i.bp = tail call i32 @cli_trust_this_layer(ptr noundef nonnull %1, ptr noundef nonnull @.str.440) #18 ; 0 uses
  br label %bb.n

bb.l:                                             ; preds = %._crit_edge
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.441) #18
  %i.bq = tail call i32 @cli_append_virus(ptr noundef nonnull %1, ptr noundef nonnull @.str.442) #18 ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.443) #18
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.m, %bb.k, %bb.l
  %.042.ph = phi i32 [ 1, %bb.l ], [ 22, %bb.k ], [ 0, %bb.m ], [ %i.bo, %._crit_edge ]
  tail call void @free(ptr noundef nonnull %i.n) #18
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.b, %bb.n
  %.04256 = phi i32 [ %.042.ph, %bb.n ], [ 0, %bb.a ], [ 20, %bb.b ]
  ret i32 %.04256
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare i32 @fmap_will_need_hash_later(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @cli_hash_name(i32 noundef) local_unnamed_addr #3

declare i64 @cli_hash_len(i32 noundef) local_unnamed_addr #3

declare i32 @fmap_get_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @cli_jsonstr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @clean_cache_check(ptr noundef) local_unnamed_addr #3

declare i32 @cli_scan_fmap(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @cli_bitset_init() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @scanraw(ptr noundef %0, i32 noundef range(i32 588, 587) %1, i8 noundef zeroext range(i8 0, 2) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %4 = alloca %struct.cli_exe_info, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr null, ptr %i.a, align 8, !tbaa !149
  %.not = icmp eq i8 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.h = load i32, ptr %i.g, align 4, !tbaa !37
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [104 x i8], ptr %i.f, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %i.l = load i32, ptr %i.k, align 4, !tbaa !81
  %.fr486 = freeze i32 %i.l
  %i.m = and i32 %.fr486, 8
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %switch.early.test, label %bb.c

switch.early.test:                                ; preds = %bb.b
  switch i32 %1, label %bb.d [
    i32 551, label %bb.c
    i32 548, label %bb.c
    i32 547, label %bb.c
    i32 546, label %bb.c
    i32 534, label %bb.c
    i32 517, label %bb.c
    i32 516, label %bb.c
    i32 512, label %bb.c
    i32 511, label %bb.c
    i32 510, label %bb.c
  ]

bb.c:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.b, %bb.a
  %i.o = tail call ptr @cli_ftname(i32 noundef %1) #18
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.s = load i32, ptr %i.r, align 4, !tbaa !37
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [104 x i8], ptr %i.q, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.w = load i32, ptr %i.v, align 4, !tbaa !81
  %i.x = and i32 %i.w, 8
  %.not376 = icmp eq i32 %i.x, 0
  %i.y = select i1 %.not376, ptr @.str.446, ptr @.str.445
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.444, ptr noundef %i.o, ptr noundef nonnull %i.y) #18
  br label %bb.d

bb.d:                                             ; preds = %switch.early.test, %bb.c
  %.0334 = phi i32 [ 1, %bb.c ], [ 3, %switch.early.test ]
  %i.z = getelementptr i8, ptr %0, i64 128        ; 4 uses
  %.val = load ptr, ptr %i.z, align 8, !tbaa !67
  tail call void @cli_event_time_start(ptr noundef %.val, i32 noundef 9) #18
  %i.aa = icmp eq i32 %1, 500                     ; 2 uses
  %i.ab = select i1 %i.aa, i32 0, i32 %1
  %i.ac = call i32 @cli_scan_fmap(ptr noundef nonnull %0, i32 noundef %i.ab, i1 noundef zeroext false, ptr noundef nonnull %i.a, i32 noundef %.0334, ptr noundef null) #18 ; 3 uses
  %.val436 = load ptr, ptr %i.z, align 8, !tbaa !67
  call void @cli_event_time_stop(ptr noundef %.val436, i32 noundef 9) #18
  %i.ad = icmp ugt i32 %i.ac, 499
  br i1 %i.ad, label %bb.e, label %bb.dr

bb.e:                                             ; preds = %bb.d
  %.val437 = load ptr, ptr %i.z, align 8, !tbaa !67
  call void @cli_event_time_nested_start(ptr noundef %.val437, i32 noundef 10, i32 noundef 0) #18
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 22 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 23 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 169 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 12 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.am = icmp ne i32 %1, 536
  %i.an = icmp eq i32 %1, 506                     ; 3 uses
  %i.ao = icmp ne i32 %1, 541
  %i.ap = icmp ne i32 %1, 520
  %i.aq = icmp ne i32 %1, 523
  %i.ar = icmp ne i32 %1, 553
  %i.as = icmp ne i32 %1, 519
  br label %bb.f

bb.f:                                             ; preds = %.thread468, %bb.e
  %.0336 = phi i32 [ 0, %bb.e ], [ %.9471, %.thread468 ] ; 50 uses
  %.0335.in = phi ptr [ %i.a, %bb.e ], [ %.0335, %.thread468 ]
  %.0332 = phi i64 [ 0, %bb.e ], [ %.6472, %.thread468 ] ; 2 uses
  %.0335 = load ptr, ptr %.0335.in, align 8, !tbaa !149 ; 4 uses
  %.not377 = icmp eq ptr %.0335, null
  br i1 %.not377, label %.thread478, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %.0335, i64 8 ; 30 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !151 ; 49 uses
  %i.av = icmp sgt i64 %i.au, 0
  %i.aw = icmp ugt i64 %i.au, %.0332
  %or.cond = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond, label %bb.h, label %.thread468.a

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %.0335, i64 16 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !152
  switch i32 %i.ay, label %bb.bc [
    i32 582, label %bb.i
    i32 577, label %bb.n
    i32 578, label %bb.s
    i32 579, label %bb.x
    i32 580, label %bb.ac
    i32 574, label %bb.ah
    i32 573, label %bb.al
    i32 584, label %bb.ap
    i32 560, label %bb.at
  ]

bb.i:                                             ; preds = %bb.h
  %i.az = load ptr, ptr %i.ae, align 8, !tbaa !68
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !74
  %i.bc = and i32 %i.bb, 64
  %.not404 = icmp eq i32 %i.bc, 0
  br i1 %.not404, label %.thread450, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = load ptr, ptr %i.af, align 8, !tbaa !77
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 20
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !82
  %i.bg = and i32 %i.bf, 1
  %.not405 = icmp eq i32 %i.bg, 0
  br i1 %.not405, label %.thread450, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = load ptr, ptr %i.ag, align 8, !tbaa !36
  %i.bi = load i32, ptr %i.ah, align 4, !tbaa !37
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [104 x i8], ptr %i.bh, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !92
  %i.bm = add i32 %i.bl, -500
  %or.cond430 = icmp ult i32 %i.bm, 5
  br i1 %or.cond430, label %bb.l, label %.thread450

bb.l:                                             ; preds = %bb.k
  %i.bn = call i32 @cli_recursion_stack_change_type(ptr noundef nonnull %0, i32 noundef 582, i1 noundef zeroext true) #18 ; 2 uses
  %.not406 = icmp eq i32 %i.bn, 0
  br i1 %.not406, label %bb.m, label %.sink.split

bb.m:                                             ; preds = %bb.l
  %i.bo = load i64, ptr %i.at, align 8, !tbaa !151
  %i.bp = trunc i64 %i.bo to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.448, i32 noundef %i.bp) #18
  %i.bq = call fastcc i32 @cli_scanmail(ptr noundef nonnull %0)
  br label %bb.bb

bb.n:                                             ; preds = %bb.h
  %i.br = load ptr, ptr %i.ae, align 8, !tbaa !68
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !74
  %i.bu = and i32 %i.bt, 4
  %.not401 = icmp eq i32 %i.bu, 0
  br i1 %.not401, label %.thread450, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = load ptr, ptr %i.af, align 8, !tbaa !77
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !79
  %i.by = and i32 %i.bx, 4
  %.not402 = icmp eq i32 %i.by, 0
  br i1 %.not402, label %.thread450, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = load ptr, ptr %i.ag, align 8, !tbaa !36
  %i.ca = load i32, ptr %i.ah, align 4, !tbaa !37
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [104 x i8], ptr %i.bz, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !92
  %i.ce = add i32 %i.cd, -500
  %or.cond431 = icmp ult i32 %i.ce, 5
  br i1 %or.cond431, label %bb.q, label %.thread450

bb.q:                                             ; preds = %bb.p
  %i.cf = call i32 @cli_recursion_stack_change_type(ptr noundef nonnull %0, i32 noundef 577, i1 noundef zeroext true) #18 ; 2 uses
  %.not403 = icmp eq i32 %i.cf, 0
  br i1 %.not403, label %bb.r, label %.sink.split

bb.r:                                             ; preds = %bb.q
  %i.cg = load i64, ptr %i.at, align 8, !tbaa !151
  %i.ch = trunc i64 %i.cg to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.449, i32 noundef %i.ch) #18
  %i.ci = call i32 @cli_scanxdp(ptr noundef nonnull %0) #18
  br label %bb.bb

bb.s:                                             ; preds = %bb.h
  %i.cj = load ptr, ptr %i.ae, align 8, !tbaa !68
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !74
  %i.cm = and i32 %i.cl, 32
  %.not398 = icmp eq i32 %i.cm, 0
  br i1 %.not398, label %.thread450, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cn = load ptr, ptr %i.af, align 8, !tbaa !77
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !79
  %i.cq = and i32 %i.cp, 128
  %.not399 = icmp eq i32 %i.cq, 0
  br i1 %.not399, label %.thread450, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cr = load ptr, ptr %i.ag, align 8, !tbaa !36
  %i.cs = load i32, ptr %i.ah, align 4, !tbaa !37
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [104 x i8], ptr %i.cr, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !92
  %i.cw = add i32 %i.cv, -500
  %or.cond432 = icmp ult i32 %i.cw, 5
  br i1 %or.cond432, label %bb.v, label %.thread450

bb.v:                                             ; preds = %bb.u
  %i.cx = call i32 @cli_recursion_stack_change_type(ptr noundef nonnull %0, i32 noundef 578, i1 noundef zeroext true) #18 ; 2 uses
  %.not400 = icmp eq i32 %i.cx, 0
  br i1 %.not400, label %bb.w, label %.sink.split

bb.w:                                             ; preds = %bb.v
  %i.cy = load i64, ptr %i.at, align 8, !tbaa !151
  %i.cz = trunc i64 %i.cy to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.450, i32 noundef %i.cz) #18
  %i.da = call i32 @cli_scanmsxml(ptr noundef nonnull %0) #18
  br label %bb.bb

bb.x:                                             ; preds = %bb.h
  %i.db = load ptr, ptr %i.ae, align 8, !tbaa !68
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !74
  %i.de = and i32 %i.dd, 32
  %.not395 = icmp eq i32 %i.de, 0
  br i1 %.not395, label %.thread450, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.df = load ptr, ptr %i.af, align 8, !tbaa !77
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !79
  %i.di = and i32 %i.dh, 128
  %.not396 = icmp eq i32 %i.di, 0
  br i1 %.not396, label %.thread450, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dj = load ptr, ptr %i.ag, align 8, !tbaa !36
  %i.dk = load i32, ptr %i.ah, align 4, !tbaa !37
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [104 x i8], ptr %i.dj, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !92
  %i.do = add i32 %i.dn, -500
  %or.cond433 = icmp ult i32 %i.do, 5
  br i1 %or.cond433, label %bb.aa, label %.thread450

bb.aa:                                            ; preds = %bb.z
  %i.dp = call i32 @cli_recursion_stack_change_type(ptr noundef nonnull %0, i32 noundef 579, i1 noundef zeroext true) #18 ; 2 uses
  %.not397 = icmp eq i32 %i.dp, 0
  br i1 %.not397, label %bb.ab, label %.sink.split

bb.ab:                                            ; preds = %bb.aa
  %i.dq = load i64, ptr %i.at, align 8, !tbaa !151
  %i.dr = trunc i64 %i.dq to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.451, i32 noundef %i.dr) #18
  %i.ds = call i32 @cli_scanmsxml(ptr noundef nonnull %0) #18
  br label %bb.bb

bb.ac:                                            ; preds = %bb.h
  %i.dt = load ptr, ptr %i.ae, align 8, !tbaa !68
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !74
  %i.dw = and i32 %i.dv, 32
  %.not392 = icmp eq i32 %i.dw, 0
  br i1 %.not392, label %.thread450, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dx = load ptr, ptr %i.af, align 8, !tbaa !77
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !79
  %i.ea = and i32 %i.dz, 512
  %.not393 = icmp eq i32 %i.ea, 0
  br i1 %.not393, label %.thread450, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eb = load ptr, ptr %i.ag, align 8, !tbaa !36
  %i.ec = load i32, ptr %i.ah, align 4, !tbaa !37
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [104 x i8], ptr %i.eb, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !92
  %i.eg = add i32 %i.ef, -500
  %or.cond434 = icmp ult i32 %i.eg, 5
  br i1 %or.cond434, label %bb.af, label %.thread450

bb.af:                                            ; preds = %bb.ae
  %i.eh = call i32 @cli_recursion_stack_change_type(ptr noundef nonnull %0, i32 noundef 580, i1 noundef zeroext true) #18 ; 2 uses
  %.not394 = icmp eq i32 %i.eh, 0
  br i1 %.not394, label %bb.ag, label %.sink.split

bb.ag:                                            ; preds = %bb.af
  %i.ei = load i64, ptr %i.at, align 8, !tbaa !151
  %i.ej = trunc i64 %i.ei to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.452, i32 noundef %i.ej) #18
  %i.ek = call i32 @cli_scanhwpml(ptr noundef nonnull %0) #18
  br label %bb.bb

bb.ah:                                            ; preds = %bb.h
  %i.el = load ptr, ptr %i.ae, align 8, !tbaa !68
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %i.en = load i32, ptr %i.em, align 4, !tbaa !74
  %i.eo = and i32 %i.en, 1
  %.not389 = icmp eq i32 %i.eo, 0
  br i1 %.not389, label %.thread450, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ep = load ptr, ptr %i.af, align 8, !tbaa !77
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !80
  %i.es = and i32 %i.er, 262144
  %.not390 = icmp eq i32 %i.es, 0
  br i1 %.not390, label %.thread450, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.et = call i32 @cli_recursion_stack_change_type(ptr noundef nonnull %0, i32 noundef 574, i1 noundef zeroext true) #18 ; 2 uses
  %.not391 = icmp eq i32 %i.et, 0
  br i1 %.not391, label %bb.ak, label %.sink.split

bb.ak:                                            ; preds = %bb.aj
  %i.eu = load i64, ptr %i.at, align 8, !tbaa !151
  %i.ev = trunc i64 %i.eu to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.453, i32 noundef %i.ev) #18
  %i.ew = call i32 @cli_scandmg(ptr noundef nonnull %0) #18
  br label %bb.bb

bb.al:                                            ; preds = %bb.h
  %i.ex = load ptr, ptr %i.ae, align 8, !tbaa !68
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !74
  %i.fa = and i32 %i.ez, 1
  %.not386 = icmp eq i32 %i.fa, 0
  br i1 %.not386, label %.thread450, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fb = load ptr, ptr %i.af, align 8, !tbaa !77
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !80
  %i.fe = and i32 %i.fd, 131072
  %.not387 = icmp eq i32 %i.fe, 0
  br i1 %.not387, label %.thread450, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ff = call i32 @cli_recursion_stack_change_type(ptr noundef nonnull %0, i32 noundef 573, i1 noundef zeroext true) #18 ; 2 uses
  %.not388 = icmp eq i32 %i.ff, 0
  br i1 %.not388, label %bb.ao, label %.sink.split

bb.ao:                                            ; preds = %bb.an
  %i.fg = load i64, ptr %i.at, align 8, !tbaa !151
  %i.fh = trunc i64 %i.fg to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.454, i32 noundef %i.fh) #18
  %i.fi = load i64, ptr %i.at, align 8, !tbaa !151
  %i.fj = call i32 @cli_scaniso(ptr noundef nonnull %0, i64 noundef %i.fi) #18
  br label %bb.bb

bb.ap:                                            ; preds = %bb.h
  %i.fk = load ptr, ptr %i.ae, align 8, !tbaa !68
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !74
  %i.fn = and i32 %i.fm, 1
  %.not383 = icmp eq i32 %i.fn, 0
  br i1 %.not383, label %.thread450, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fo = load ptr, ptr %i.af, align 8, !tbaa !77
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !80
  %i.fr = and i32 %i.fq, 134217728
  %.not384 = icmp eq i32 %i.fr, 0
  br i1 %.not384, label %.thread450, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fs = call i32 @cli_recursion_stack_change_type(ptr noundef nonnull %0, i32 noundef 584, i1 noundef zeroext true) #18 ; 2 uses
  %.not385 = icmp eq i32 %i.fs, 0
  br i1 %.not385, label %bb.as, label %.sink.split

bb.as:                                            ; preds = %bb.ar
  %i.ft = load i64, ptr %i.at, align 8, !tbaa !151
  %i.fu = trunc i64 %i.ft to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.455, i32 noundef %i.fu) #18
  %i.fv = load i64, ptr %i.at, align 8, !tbaa !151
  %i.fw = call i32 @cli_scanudf(ptr noundef nonnull %0, i64 noundef %i.fv) #18
  br label %bb.bb

bb.at:                                            ; preds = %bb.h
  %i.fx = load ptr, ptr %i.ae, align 8, !tbaa !68
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 4
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !74
  %i.ga = and i32 %i.fz, 1
  %.not378 = icmp eq i32 %i.ga, 0
  br i1 %.not378, label %.thread450, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gb = call i32 @cli_mbr_check2(ptr noundef nonnull %0, i64 noundef 0) #18
  switch i32 %i.gb, label %.thread450 [
    i32 575, label %bb.av
    i32 0, label %bb.ay
  ]

bb.av:                                            ; preds = %bb.au
  %i.gc = load ptr, ptr %i.af, align 8, !tbaa !77
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !80
  %i.gf = and i32 %i.ge, 16777216
  %.not379 = icmp eq i32 %i.gf, 0
  br i1 %.not379, label %.thread450, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gg = call i32 @cli_recursion_stack_change_type(ptr noundef nonnull %0, i32 noundef 575, i1 noundef zeroext true) #18 ; 2 uses
  %.not382 = icmp eq i32 %i.gg, 0
  br i1 %.not382, label %bb.ax, label %.sink.split

bb.ax:                                            ; preds = %bb.aw
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.456) #18
  %i.gh = load i64, ptr %i.at, align 8, !tbaa !151
  %i.gi = trunc i64 %i.gh to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.457, i32 noundef %i.gi) #18
  %i.gj = call i32 @cli_scangpt(ptr noundef nonnull %0, i64 noundef 0) #18
  br label %bb.bb

bb.ay:                                            ; preds = %bb.au
  %i.gk = load ptr, ptr %i.af, align 8, !tbaa !77
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 12
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !80
  %i.gn = and i32 %i.gm, 8388608
  %.not380 = icmp eq i32 %i.gn, 0
  br i1 %.not380, label %.thread450, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.go = call i32 @cli_recursion_stack_change_type(ptr noundef nonnull %0, i32 noundef 560, i1 noundef zeroext true) #18 ; 2 uses
  %.not381 = icmp eq i32 %i.go, 0
  br i1 %.not381, label %bb.ba, label %.sink.split

bb.ba:                                            ; preds = %bb.az
  %i.gp = load i64, ptr %i.at, align 8, !tbaa !151
  %i.gq = trunc i64 %i.gp to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.458, i32 noundef %i.gq) #18
  %i.gr = call i32 @cli_scanmbr(ptr noundef nonnull %0, i64 noundef 0) #18
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ax, %bb.ba, %bb.as, %bb.ao, %bb.ak, %bb.ag, %bb.ab, %bb.w, %bb.r, %bb.m
  %.2338 = phi i32 [ %i.gj, %bb.ax ], [ %i.ek, %bb.ag ], [ %i.bq, %bb.m ], [ %i.ds, %bb.ab ], [ %i.fw, %bb.as ], [ %i.da, %bb.w ], [ %i.ew, %bb.ak ], [ %i.fj, %bb.ao ], [ %i.ci, %bb.r ], [ %i.gr, %bb.ba ] ; 3 uses
  %i.gs = icmp eq i32 %.2338, 20
  br i1 %i.gs, label %.thread481, label %.thread443

.thread443:                                       ; preds = %bb.bb
  %i.gt = load i8, ptr %i.ai, align 1, !tbaa !93, !range !94, !noundef !95
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %.thread481, label %.thread468

.thread450:                                       ; preds = %bb.av, %bb.ay, %bb.al, %bb.am, %bb.ah, %bb.ai, %bb.ac, %bb.ad, %bb.ae, %bb.x, %bb.y, %bb.z, %bb.aq, %bb.s, %bb.t, %bb.u, %bb.ap, %bb.n, %bb.o, %bb.p, %bb.i, %bb.j, %bb.k, %bb.at, %bb.au
  %i.gv = load i8, ptr %i.ai, align 1, !tbaa !93, !range !94, !noundef !95
  %i.gw = trunc nuw i8 %i.gv to i1
  br i1 %i.gw, label %.thread481, label %.thread468

.sink.split:                                      ; preds = %bb.az, %bb.aw, %bb.ar, %bb.an, %bb.aj, %bb.af, %bb.aa, %bb.v, %bb.q, %bb.l
  %.sink511 = phi i32 [ %i.gg, %bb.aw ], [ %i.bn, %bb.l ], [ %i.ff, %bb.an ], [ %i.cf, %bb.q ], [ %i.cx, %bb.v ], [ %i.dp, %bb.aa ], [ %i.eh, %bb.af ], [ %i.et, %bb.aj ], [ %i.fs, %bb.ar ], [ %i.go, %bb.az ]
  %i.gx = call ptr @cl_strerror(i32 noundef %.sink511) #18
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.447, ptr noundef %i.gx) #18
  br label %bb.bc

bb.bc:                                            ; preds = %.sink.split, %bb.h
  %i.gy = load i8, ptr %i.ai, align 1, !tbaa !93, !range !94, !noundef !95
  %i.gz = trunc nuw i8 %i.gy to i1
  br i1 %i.gz, label %.thread481, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ha = load i32, ptr %i.ax, align 8, !tbaa !152
  %i.hb = call ptr @cli_ftname(i32 noundef %i.ha) #18
  %i.hc = load i64, ptr %i.at, align 8, !tbaa !151
  %i.hd = trunc i64 %i.hc to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.459, ptr noundef %i.hb, i32 noundef %i.hd) #18
  %i.he = load i32, ptr %i.ax, align 8, !tbaa !152 ; 2 uses
  switch i32 %i.he, label %bb.dc [
    i32 565, label %bb.be
    i32 569, label %bb.bi
    i32 564, label %bb.bl
    i32 567, label %bb.br
    i32 568, label %bb.bx
    i32 566, label %bb.cd
    i32 570, label %bb.cg
    i32 571, label %bb.ck
    i32 572, label %bb.cn
    i32 536, label %bb.cq
    i32 506, label %bb.ct
  ]

bb.be:                                            ; preds = %bb.bd
  %i.hf = load i32, ptr @have_rar, align 4, !tbaa !43
  %.not422 = icmp eq i32 %i.hf, 0
  br i1 %.not422, label %.thread468.a, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hg = load ptr, ptr %i.ae, align 8, !tbaa !68
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !74
  %i.hj = and i32 %i.hi, 1
  %.not423 = icmp eq i32 %i.hj, 0
  br i1 %.not423, label %.thread468.a, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hk = load ptr, ptr %i.af, align 8, !tbaa !77
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 12
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !80
  %i.hn = trunc i32 %i.hm to i1
  %or.cond21 = and i1 %i.as, %i.hn
  br i1 %or.cond21, label %bb.bh, label %.thread468.a

bb.bh:                                            ; preds = %bb.bg
  %i.ho = load ptr, ptr %i.aj, align 8, !tbaa !64 ; 2 uses
  %i.hp = load i64, ptr %i.at, align 8, !tbaa !151 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 88
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !65
  %i.hs = sub i64 %i.hr, %i.hp
  %i.ht = call i32 @cli_magic_scan_nested_fmap_type(ptr noundef %i.ho, i64 noundef %i.hp, i64 noundef %i.hs, ptr noundef nonnull %0, i32 noundef 519, ptr noundef null, i32 noundef 8)
  br label %bb.dd

bb.bi:                                            ; preds = %bb.bd
  %i.hu = load ptr, ptr %i.ae, align 8, !tbaa !68
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !74
  %i.hx = and i32 %i.hw, 1
  %.not421 = icmp eq i32 %i.hx, 0
  br i1 %.not421, label %.thread468.a, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hy = load ptr, ptr %i.af, align 8, !tbaa !77
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 12
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !80
  %i.ib = and i32 %i.ia, 67108864
  %i.ic = icmp ne i32 %i.ib, 0
  %or.cond23 = and i1 %i.ar, %i.ic
  br i1 %or.cond23, label %bb.bk, label %.thread468.a

bb.bk:                                            ; preds = %bb.bj
  %i.id = load ptr, ptr %i.aj, align 8, !tbaa !64 ; 2 uses
  %i.ie = load i64, ptr %i.at, align 8, !tbaa !151 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 88
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !65
  %i.ih = sub i64 %i.ig, %i.ie
  %i.ii = call i32 @cli_magic_scan_nested_fmap_type(ptr noundef %i.id, i64 noundef %i.ie, i64 noundef %i.ih, ptr noundef nonnull %0, i32 noundef 553, ptr noundef null, i32 noundef 8)
  br label %bb.dd

bb.bl:                                            ; preds = %bb.bd
  %i.ij = load ptr, ptr %i.ae, align 8, !tbaa !68
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !74
  %i.im = and i32 %i.il, 1
  %.not419 = icmp eq i32 %i.im, 0
  br i1 %.not419, label %.thread468.a, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.in = load ptr, ptr %i.af, align 8, !tbaa !77
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 12
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !80
  %.fr487 = freeze i32 %i.ip
  %i.iq = and i32 %.fr487, 2
  %.not488 = icmp eq i32 %i.iq, 0
  br i1 %.not488, label %.thread468.a, label %switch.early.test435

switch.early.test435:                             ; preds = %bb.bm
  switch i32 %1, label %bb.bn [
    i32 551, label %.thread468.a
    i32 548, label %.thread468.a
    i32 547, label %.thread468.a
    i32 546, label %.thread468.a
    i32 517, label %.thread468.a
  ]

bb.bn:                                            ; preds = %switch.early.test435
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 0, ptr %i.b, align 8, !tbaa !96
  %i.ir = load i64, ptr %i.at, align 8, !tbaa !151
  %i.is = trunc i64 %i.ir to i32
  %i.it = call i32 @cli_unzip_single_header_check(ptr noundef nonnull %0, i32 noundef %i.is, ptr noundef nonnull %i.b) #18 ; 3 uses
  %.not420 = icmp eq i32 %i.it, 0
  br i1 %.not420, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.iu = call ptr @cl_strerror(i32 noundef %i.it) #18
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.460, ptr noundef %i.iu, i32 noundef %i.it) #18
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.iv = load i64, ptr %i.b, align 8, !tbaa !96  ; 2 uses
  %i.iw = add nsw i64 %i.au, -1
  %i.ix = add i64 %i.iw, %i.iv
  %i.iy = load ptr, ptr %i.aj, align 8, !tbaa !64
  %i.iz = load i64, ptr %i.at, align 8, !tbaa !151
  %i.ja = call i32 @cli_magic_scan_nested_fmap_type(ptr noundef %i.iy, i64 noundef %i.iz, i64 noundef %i.iv, ptr noundef nonnull %0, i32 noundef 517, ptr noundef null, i32 noundef 8)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.3339 = phi i32 [ %.0336, %bb.bo ], [ %i.ja, %bb.bp ]
  %.1333 = phi i64 [ %i.au, %bb.bo ], [ %i.ix, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.dd

bb.br:                                            ; preds = %bb.bd
  %i.jb = load ptr, ptr %i.ae, align 8, !tbaa !68
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !74
  %i.je = and i32 %i.jd, 1
  %.not417 = icmp eq i32 %i.je, 0
  br i1 %.not417, label %.thread468.a, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jf = load ptr, ptr %i.af, align 8, !tbaa !77
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 12
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !80
  %i.ji = and i32 %i.jh, 32
  %i.jj = icmp ne i32 %i.ji, 0
  %or.cond35 = and i1 %i.aq, %i.jj
  br i1 %or.cond35, label %bb.bt, label %.thread468.a

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i64 0, ptr %i.c, align 8, !tbaa !96
  %i.jk = load i64, ptr %i.at, align 8, !tbaa !151
  %i.jl = call i32 @cli_mscab_header_check(ptr noundef nonnull %0, i64 noundef %i.jk, ptr noundef nonnull %i.c) #18 ; 3 uses
  %.not418 = icmp eq i32 %i.jl, 0
  br i1 %.not418, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.jm = call ptr @cl_strerror(i32 noundef %i.jl) #18
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.461, ptr noundef %i.jm, i32 noundef %i.jl) #18
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.jn = load i64, ptr %i.c, align 8, !tbaa !96  ; 2 uses
  %i.jo = add nsw i64 %i.au, -1
  %i.jp = add i64 %i.jo, %i.jn
  %i.jq = load ptr, ptr %i.aj, align 8, !tbaa !64
  %i.jr = load i64, ptr %i.at, align 8, !tbaa !151
  %i.js = call i32 @cli_magic_scan_nested_fmap_type(ptr noundef %i.jq, i64 noundef %i.jr, i64 noundef %i.jn, ptr noundef nonnull %0, i32 noundef 523, ptr noundef null, i32 noundef 8)
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.4340 = phi i32 [ %.0336, %bb.bu ], [ %i.js, %bb.bv ]
  %.2 = phi i64 [ %i.au, %bb.bu ], [ %i.jp, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %bb.dd

bb.bx:                                            ; preds = %bb.bd
  %i.jt = load ptr, ptr %i.ae, align 8, !tbaa !68
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 4
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !74
  %i.jw = and i32 %i.jv, 1
  %.not415 = icmp eq i32 %i.jw, 0
  br i1 %.not415, label %.thread468.a, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.jx = load ptr, ptr %i.af, align 8, !tbaa !77
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 12
end_hunk_0
begin_hunk_1_@scanraw:bb.a
  br i1 %or.cond39, label %bb.cf, label %.thread468.a

bb.cf:                                            ; preds = %bb.ce
  %i.kv = load ptr, ptr %i.aj, align 8, !tbaa !64 ; 2 uses
  %i.kw = load i64, ptr %i.at, align 8, !tbaa !151 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 88
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !65
  %i.kz = sub i64 %i.ky, %i.kw
  %i.la = call i32 @cli_magic_scan_nested_fmap_type(ptr noundef %i.kv, i64 noundef %i.kw, i64 noundef %i.kz, ptr noundef nonnull %0, i32 noundef 541, ptr noundef null, i32 noundef 8)
  br label %bb.dd

bb.cg:                                            ; preds = %bb.bd
  %i.lb = load ptr, ptr %i.ae, align 8, !tbaa !68
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !74
  %i.le = and i32 %i.ld, 1
  %.not413 = icmp eq i32 %i.le, 0
  br i1 %.not413, label %.thread468.a, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.lf = load ptr, ptr %i.af, align 8, !tbaa !77
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 12
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !80
  %i.li = and i32 %i.lh, 2048
  %i.lj = icmp ne i32 %i.li, 0
  %or.cond41 = and i1 %i.an, %i.lj
  br i1 %or.cond41, label %bb.ci, label %.thread468.a

bb.ci:                                            ; preds = %bb.ch
  %i.lk = load i64, ptr %i.at, align 8, !tbaa !151 ; 2 uses
  %i.ll = icmp sgt i64 %i.lk, 4
  br i1 %i.ll, label %bb.cj, label %.thread468.a

bb.cj:                                            ; preds = %bb.ci
  %i.lm = load ptr, ptr %i.aj, align 8, !tbaa !64 ; 2 uses
  %i.ln = add nsw i64 %i.lk, -4                   ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 88
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !65
  %i.lq = sub i64 %i.lp, %i.ln
  %i.lr = call i32 @cli_magic_scan_nested_fmap_type(ptr noundef %i.lm, i64 noundef %i.ln, i64 noundef %i.lq, ptr noundef nonnull %0, i32 noundef 570, ptr noundef null, i32 noundef 8)
  br label %bb.dd

bb.ck:                                            ; preds = %bb.bd
  %i.ls = load ptr, ptr %i.ae, align 8, !tbaa !68
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 4
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !74
  %i.lv = and i32 %i.lu, 1
  %.not412 = icmp eq i32 %i.lv, 0
  br i1 %.not412, label %.thread468.a, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.lw = load ptr, ptr %i.af, align 8, !tbaa !77
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 12
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !80
  %i.lz = and i32 %i.ly, 8192
  %i.ma = icmp ne i32 %i.lz, 0
  %or.cond43 = and i1 %i.an, %i.ma
  br i1 %or.cond43, label %bb.cm, label %.thread468.a

bb.cm:                                            ; preds = %bb.cl
  %i.mb = load ptr, ptr %i.aj, align 8, !tbaa !64 ; 2 uses
  %i.mc = load i64, ptr %i.at, align 8, !tbaa !151 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 88
  %i.me = load i64, ptr %i.md, align 8, !tbaa !65
  %i.mf = sub i64 %i.me, %i.mc
  %i.mg = call i32 @cli_magic_scan_nested_fmap_type(ptr noundef %i.mb, i64 noundef %i.mc, i64 noundef %i.mf, ptr noundef nonnull %0, i32 noundef 571, ptr noundef null, i32 noundef 8)
  br label %bb.dd

bb.cn:                                            ; preds = %bb.bd
  %i.mh = load ptr, ptr %i.ae, align 8, !tbaa !68
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !74
  %i.mk = and i32 %i.mj, 1
  %.not411 = icmp eq i32 %i.mk, 0
  br i1 %.not411, label %.thread468.a, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ml = load ptr, ptr %i.af, align 8, !tbaa !77
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 12
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !80
  %i.mo = and i32 %i.mn, 32768
  %i.mp = icmp ne i32 %i.mo, 0
  %or.cond45 = and i1 %i.an, %i.mp
  br i1 %or.cond45, label %bb.cp, label %.thread468.a

bb.cp:                                            ; preds = %bb.co
  %i.mq = load ptr, ptr %i.aj, align 8, !tbaa !64 ; 2 uses
  %i.mr = load i64, ptr %i.at, align 8, !tbaa !151 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mq, i64 88
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !65
  %i.mu = sub i64 %i.mt, %i.mr
  %i.mv = call i32 @cli_magic_scan_nested_fmap_type(ptr noundef %i.mq, i64 noundef %i.mr, i64 noundef %i.mu, ptr noundef nonnull %0, i32 noundef 572, ptr noundef null, i32 noundef 8)
  br label %bb.dd

bb.cq:                                            ; preds = %bb.bd
  %i.mw = load ptr, ptr %i.ae, align 8, !tbaa !68
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 4
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !74
  %i.mz = and i32 %i.my, 4
  %.not410 = icmp eq i32 %i.mz, 0
  br i1 %.not410, label %.thread468.a, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.na = load ptr, ptr %i.af, align 8, !tbaa !77
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !79
  %i.nd = and i32 %i.nc, 4
  %i.ne = icmp ne i32 %i.nd, 0
  %or.cond47 = and i1 %i.am, %i.ne
  br i1 %or.cond47, label %bb.cs, label %.thread468.a

bb.cs:                                            ; preds = %bb.cr
  %i.nf = load ptr, ptr %i.aj, align 8, !tbaa !64 ; 2 uses
  %i.ng = load i64, ptr %i.at, align 8, !tbaa !151 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nf, i64 88
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !65
  %i.nj = sub i64 %i.ni, %i.ng
  %i.nk = call i32 @cli_magic_scan_nested_fmap_type(ptr noundef %i.nf, i64 noundef %i.ng, i64 noundef %i.nj, ptr noundef nonnull %0, i32 noundef 536, ptr noundef null, i32 noundef 8)
  br label %bb.dd

bb.ct:                                            ; preds = %bb.bd
  %i.nl = load ptr, ptr %i.ae, align 8, !tbaa !68
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 4
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !74
  %i.no = and i32 %i.nn, 512
  %.not407 = icmp eq i32 %i.no, 0
  br i1 %.not407, label %.thread468.a, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.np = load ptr, ptr %i.af, align 8, !tbaa !77
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !83
  %.not408 = icmp eq i32 %i.nq, 0
  br i1 %.not408, label %.thread468.a, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  switch i32 %1, label %.thread468.a [
    i32 522, label %bb.cw
    i32 517, label %bb.cw
    i32 506, label %bb.cw
  ]

bb.cw:                                            ; preds = %bb.cv, %bb.cv, %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.nr = load ptr, ptr %i.aj, align 8, !tbaa !64
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 88
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !65
  %i.nu = load i64, ptr %i.at, align 8, !tbaa !151 ; 2 uses
  %i.nv = sub i64 %i.nt, %i.nu
  %i.nw = load ptr, ptr %i.ak, align 8, !tbaa !44
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 1088
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !153
  %i.nz = icmp ugt i64 %i.nv, %i.ny
  br i1 %i.nz, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.463) #18
  br label %bb.db

bb.cy:                                            ; preds = %bb.cw
  %i.oa = trunc i64 %i.nu to i32
  call void @cli_exe_info_init(ptr noundef nonnull %4, i32 noundef %i.oa) #18
  %i.ob = call i32 @cli_peheader(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 0) #18
  call void @cli_exe_info_destroy(ptr noundef nonnull %4) #18
  %.not409 = icmp eq i32 %i.ob, 0
  br i1 %.not409, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.464) #18
  br label %bb.db

bb.da:                                            ; preds = %bb.cy
  %i.oc = load i64, ptr %i.at, align 8, !tbaa !151
  %i.od = trunc i64 %i.oc to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.465, i32 noundef %i.od) #18
  %i.oe = load i32, ptr %i.al, align 4, !tbaa !84
  store i32 1, ptr %i.al, align 4, !tbaa !84
  %i.of = load ptr, ptr %i.aj, align 8, !tbaa !64 ; 2 uses
  %i.og = load i64, ptr %i.at, align 8, !tbaa !151 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 88
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !65
  %i.oj = sub i64 %i.oi, %i.og
  %i.ok = call i32 @cli_magic_scan_nested_fmap_type(ptr noundef %i.of, i64 noundef %i.og, i64 noundef %i.oj, ptr noundef nonnull %0, i32 noundef 506, ptr noundef null, i32 noundef 8)
  store i32 %i.oe, ptr %i.al, align 4, !tbaa !84
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %bb.cx
  %.6342 = phi i32 [ %.0336, %bb.cx ], [ %.0336, %bb.cz ], [ %i.ok, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.dd

bb.dc:                                            ; preds = %bb.bd
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.466, i32 noundef %i.he) #18
  br label %.thread468.a

bb.dd:                                            ; preds = %bb.db, %bb.cc, %bb.bw, %bb.bq, %bb.bh, %bb.bk, %bb.cf, %bb.cj, %bb.cm, %bb.cp, %bb.cs
  %.8.ph = phi i32 [ %i.ii, %bb.bk ], [ %.5341, %bb.cc ], [ %i.nk, %bb.cs ], [ %i.lr, %bb.cj ], [ %i.ht, %bb.bh ], [ %i.mv, %bb.cp ], [ %.3339, %bb.bq ], [ %i.la, %bb.cf ], [ %i.mg, %bb.cm ], [ %.4340, %bb.bw ], [ %.6342, %bb.db ] ; 2 uses
  %.5.ph = phi i64 [ %i.au, %bb.bk ], [ %.3, %bb.cc ], [ %i.au, %bb.cs ], [ %i.au, %bb.cj ], [ %i.au, %bb.bh ], [ %i.au, %bb.cp ], [ %.1333, %bb.bq ], [ %i.au, %bb.cf ], [ %i.au, %bb.cm ], [ %.2, %bb.bw ], [ %i.au, %bb.db ]
  %i.ol = icmp eq i32 %.8.ph, 20
  br i1 %i.ol, label %.thread481, label %.thread468.a

.thread468.a:                                     ; preds = %bb.dd, %bb.g, %switch.early.test435, %switch.early.test435, %switch.early.test435, %switch.early.test435, %switch.early.test435, %bb.bm, %bb.ct, %bb.cu, %bb.cv, %bb.cq, %bb.cr, %bb.cn, %bb.co, %bb.ck, %bb.cl, %bb.cg, %bb.ch, %bb.ci, %bb.cd, %bb.ce, %bb.bx, %bb.by, %bb.br, %bb.bs, %bb.bl, %bb.bi, %bb.bj, %bb.be, %bb.bf, %bb.bg, %bb.dc
  %.6472.ph = phi i64 [ %i.au, %bb.bg ], [ %i.au, %bb.bf ], [ %i.au, %bb.be ], [ %i.au, %bb.bj ], [ %i.au, %bb.bi ], [ %i.au, %bb.bl ], [ %i.au, %bb.bs ], [ %i.au, %bb.br ], [ %i.au, %bb.by ], [ %i.au, %bb.bx ], [ %i.au, %bb.ce ], [ %i.au, %bb.cd ], [ %i.au, %bb.ci ], [ %i.au, %bb.ch ], [ %i.au, %bb.cg ], [ %i.au, %bb.cl ], [ %i.au, %bb.ck ], [ %i.au, %bb.co ], [ %i.au, %bb.cn ], [ %i.au, %bb.cr ], [ %i.au, %bb.cq ], [ %i.au, %bb.cv ], [ %i.au, %bb.cu ], [ %i.au, %bb.ct ], [ %i.au, %bb.bm ], [ %i.au, %switch.early.test435 ], [ %i.au, %switch.early.test435 ], [ %i.au, %switch.early.test435 ], [ %i.au, %switch.early.test435 ], [ %i.au, %switch.early.test435 ], [ %.0332, %bb.g ], [ %.5.ph, %bb.dd ], [ %i.au, %bb.dc ]
  %.9471.ph = phi i32 [ %.0336, %bb.bg ], [ %.0336, %bb.bf ], [ %.0336, %bb.be ], [ %.0336, %bb.bj ], [ %.0336, %bb.bi ], [ %.0336, %bb.bl ], [ %.0336, %bb.bs ], [ %.0336, %bb.br ], [ %.0336, %bb.by ], [ %.0336, %bb.bx ], [ %.0336, %bb.ce ], [ %.0336, %bb.cd ], [ %.0336, %bb.ci ], [ %.0336, %bb.ch ], [ %.0336, %bb.cg ], [ %.0336, %bb.cl ], [ %.0336, %bb.ck ], [ %.0336, %bb.co ], [ %.0336, %bb.cn ], [ %.0336, %bb.cr ], [ %.0336, %bb.cq ], [ %.0336, %bb.cv ], [ %.0336, %bb.cu ], [ %.0336, %bb.ct ], [ %.0336, %bb.bm ], [ %.0336, %switch.early.test435 ], [ %.0336, %switch.early.test435 ], [ %.0336, %switch.early.test435 ], [ %.0336, %switch.early.test435 ], [ %.0336, %switch.early.test435 ], [ %.0336, %bb.g ], [ %.8.ph, %bb.dd ], [ %.0336, %bb.dc ]
  %i.om = load i8, ptr %i.ai, align 1, !tbaa !93
  %i.on = trunc nuw i8 %i.om to i1
  br label %.thread468

.thread468:                                       ; preds = %.thread468.a, %.thread443, %.thread450
  %5 = phi i1 [ %i.on, %.thread468.a ], [ false, %.thread443 ], [ false, %.thread450 ]
  %.6472 = phi i64 [ %.6472.ph, %.thread468.a ], [ %i.au, %.thread443 ], [ %i.au, %.thread450 ]
  %.9471 = phi i32 [ %.9471.ph, %.thread468.a ], [ %.2338, %.thread443 ], [ %.0336, %.thread450 ] ; 2 uses
  br i1 %5, label %.thread481, label %bb.f

.thread478:                                       ; preds = %bb.f
  %.pre = load i8, ptr %i.ai, align 1, !tbaa !93, !range !94
  %i.oo = trunc nuw i8 %.pre to i1
  br i1 %i.oo, label %.thread481, label %bb.de

bb.de:                                            ; preds = %.thread478
  switch i32 %i.ac, label %.thread481 [
    i32 561, label %bb.df
    i32 562, label %bb.dm
  ]

bb.df:                                            ; preds = %bb.de
  %i.op = call i32 @cli_recursion_stack_get_type(ptr noundef nonnull %0, i32 noundef -2) #18
  %i.oq = icmp eq i32 %i.op, 571
  br i1 %i.oq, label %.thread481, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.or = load ptr, ptr %i.ae, align 8, !tbaa !68
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 4
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !74
  %i.ou = and i32 %i.ot, 256
  %.not426 = icmp eq i32 %i.ou, 0
  br i1 %.not426, label %.thread481, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  switch i32 %1, label %.thread481 [
    i32 528, label %bb.di
    i32 500, label %bb.di
  ]

bb.di:                                            ; preds = %bb.dh, %bb.dh
  %i.ov = load ptr, ptr %i.af, align 8, !tbaa !77
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !79
  %i.oy = and i32 %i.ox, 1
  %.not427 = icmp eq i32 %i.oy, 0
  br i1 %.not427, label %.thread481, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  store i32 561, ptr %3, align 4, !tbaa !43
  %i.oz = call i32 @cli_recursion_stack_change_type(ptr noundef nonnull %0, i32 noundef 561, i1 noundef zeroext true) #18 ; 2 uses
  %.not428 = icmp eq i32 %i.oz, 0
  br i1 %.not428, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.pa = call ptr @cl_strerror(i32 noundef %i.oz) #18
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.447, ptr noundef %i.pa) #18
  br label %.thread481

bb.dl:                                            ; preds = %bb.dj
  %i.pb = call fastcc i32 @cli_scanhtml(ptr noundef nonnull %0)
  br label %.thread481

bb.dm:                                            ; preds = %bb.de
  %i.pc = load ptr, ptr %i.ae, align 8, !tbaa !68
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 4
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !74
  %i.pf = and i32 %i.pe, 64
  %i.pg = icmp ne i32 %i.pf, 0
  %or.cond55 = and i1 %i.aa, %i.pg
  br i1 %or.cond55, label %bb.dn, label %.thread481

bb.dn:                                            ; preds = %bb.dm
  %i.ph = load ptr, ptr %i.af, align 8, !tbaa !77
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 20
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !82
  %i.pk = and i32 %i.pj, 1
  %.not424 = icmp eq i32 %i.pk, 0
  br i1 %.not424, label %.thread481, label %bb.do

bb.do:                                            ; preds = %bb.dn
  store i32 562, ptr %3, align 4, !tbaa !43
  %i.pl = call i32 @cli_recursion_stack_change_type(ptr noundef nonnull %0, i32 noundef 562, i1 noundef zeroext true) #18 ; 2 uses
  %.not425 = icmp eq i32 %i.pl, 0
  br i1 %.not425, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.pm = call ptr @cl_strerror(i32 noundef %i.pl) #18
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.447, ptr noundef %i.pm) #18
  br label %.thread481

bb.dq:                                            ; preds = %bb.do
  %i.pn = call fastcc i32 @cli_scanmail(ptr noundef nonnull %0)
  br label %.thread481

.thread481:                                       ; preds = %bb.bc, %.thread450, %.thread443, %.thread468, %bb.dd, %bb.bb, %bb.dh, %bb.df, %bb.dg, %bb.di, %bb.dl, %bb.dk, %bb.dp, %bb.dq, %bb.dn, %bb.dm, %bb.de, %.thread478
  %.11 = phi i32 [ %.0336, %bb.df ], [ %.0336, %.thread478 ], [ %.0336, %bb.de ], [ %.0336, %bb.dm ], [ %.0336, %bb.dk ], [ %i.pb, %bb.dl ], [ %.0336, %bb.di ], [ %.0336, %bb.dh ], [ %.0336, %bb.dg ], [ %.0336, %bb.dp ], [ %i.pn, %bb.dq ], [ %.0336, %bb.dn ], [ %.0336, %bb.bc ], [ %.2338, %.thread443 ], [ %.0336, %.thread450 ], [ %.9471, %.thread468 ], [ 20, %bb.bb ], [ 20, %bb.dd ]
  %.val438 = load ptr, ptr %i.z, align 8, !tbaa !67
  call void @cli_event_time_nested_stop(ptr noundef %.val438, i32 noundef 10, i32 noundef 0) #18
  br label %bb.dr

bb.dr:                                            ; preds = %.thread481, %bb.d
  %.0 = phi i32 [ %.11, %.thread481 ], [ %i.ac, %bb.d ]
  %i.po = load ptr, ptr %i.a, align 8, !tbaa !149 ; 2 uses
  %.not429489 = icmp eq ptr %i.po, null
  br i1 %.not429489, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.dr, %.lr.ph
  %i.pp = phi ptr [ %i.pr, %.lr.ph ], [ %i.po, %bb.dr ] ; 2 uses
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !154
  store ptr %i.pq, ptr %i.a, align 8, !tbaa !149
  call void @free(ptr noundef nonnull %i.pp) #18
  %i.pr = load ptr, ptr %i.a, align 8, !tbaa !149 ; 2 uses
  %.not429 = icmp eq ptr %i.pr, null
  br i1 %.not429, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i1 @result_should_goto_done(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.467) #18
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  switch i32 %1, label %bb.f [
    i32 1, label %bb.d
    i32 10, label %bb.d
    i32 11, label %bb.d
    i32 13, label %bb.d
    i32 14, label %bb.d
    i32 15, label %bb.d
    i32 17, label %bb.d
    i32 18, label %bb.d
    i32 20, label %bb.d
    i32 21, label %bb.e
    i32 33, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.d = tail call i32 @fmap_fd(ptr noundef %i.c) #18
  %i.e = tail call ptr @cl_strerror(i32 noundef %1) #18
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.468, i32 noundef %i.d, ptr noundef %i.e) #18
  store i32 %1, ptr %2, align 4, !tbaa !43
  br label %bb.g

bb.e:                                             ; preds = %bb.c, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.h = tail call i32 @fmap_fd(ptr noundef %i.g) #18
  %i.i = tail call ptr @cl_strerror(i32 noundef %1) #18
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.468, i32 noundef %i.h, ptr noundef %i.i) #18
  store i32 0, ptr %2, align 4, !tbaa !43
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 169
  %i.k = load i8, ptr %i.j, align 1, !tbaa !93, !range !94, !noundef !95
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !64
  %i.o = tail call i32 @fmap_fd(ptr noundef %i.n) #18
  %i.p = tail call ptr @cl_strerror(i32 noundef %1) #18
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.469, i32 noundef %i.o, ptr noundef %i.p) #18
  store i32 0, ptr %2, align 4, !tbaa !43
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.b
  %.1 = phi i1 [ true, %bb.b ], [ %i.l, %bb.f ], [ true, %bb.d ], [ true, %bb.e ]
  ret i1 %.1
}

declare i32 @cli_scanhwp3(ptr noundef) local_unnamed_addr #3

declare i32 @cli_scanhwpole2(ptr noundef) local_unnamed_addr #3

declare i32 @cli_scanmsxml(ptr noundef) local_unnamed_addr #3

declare i32 @cli_scanhwpml(ptr noundef) local_unnamed_addr #3

declare i32 @cli_scanxdp(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cli_scanrar(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr null, ptr %i.a, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 -1, ptr %i.b, align 4, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !70
  %i.f = and i32 %i.e, 16
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 272
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !97   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i32 @access(ptr noundef nonnull %i.j, i32 noundef 4) #18
  %.not32 = icmp eq i32 %i.l, 0
  br i1 %.not32, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !64   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.o = load i64, ptr %i.n, align 8, !tbaa !155
  %.not33 = icmp eq i64 %i.o, 0
  br i1 %.not33, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.q = load i64, ptr %i.p, align 8, !tbaa !65
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.s = load i64, ptr %i.r, align 8, !tbaa !98
  %i.t = icmp ult i64 %i.q, %i.s
  br i1 %i.t, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !64   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 272
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !97
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !99
  %i.aa = call i32 @fmap_dump_to_file(ptr noundef %i.v, ptr noundef %i.x, ptr noundef %i.z, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef 0, i64 noundef -1) #18 ; 2 uses
  %.not34 = icmp eq i32 %i.aa, 0
  br i1 %.not34, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.470) #18
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !71
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 272
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !97
  %i.ae = tail call i32 @fmap_fd(ptr noundef nonnull %i.m) #18 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.025 = phi ptr [ %i.ab, %bb.h ], [ %i.ad, %bb.i ]
  %i.af = call fastcc i32 @cli_scanrar_file(ptr noundef %.025, ptr noundef nonnull %0) ; 2 uses
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.ah = icmp eq ptr %i.ag, null
  %i.ai = icmp eq i32 %i.af, 8
  %or.cond = and i1 %i.ai, %i.ah
  br i1 %or.cond, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !64 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 272
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !97
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !99
  %i.ap = call i32 @fmap_dump_to_file(ptr noundef %i.ak, ptr noundef %i.am, ptr noundef %i.ao, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef 0, i64 noundef -1) #18 ; 2 uses
  %.not35 = icmp eq i32 %i.ap, 0
  br i1 %.not35, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.470) #18
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.ar = call fastcc i32 @cli_scanrar_file(ptr noundef %i.aq, ptr noundef nonnull %0)
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.m, %bb.l, %bb.g
  %.026 = phi i32 [ %i.aa, %bb.g ], [ %i.ap, %bb.l ], [ %i.ar, %bb.m ], [ %i.af, %bb.j ] ; 3 uses
  %i.as = load i32, ptr %i.b, align 4, !tbaa !43  ; 2 uses
  %.not36 = icmp eq i32 %i.as, -1
  br i1 %.not36, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = call i32 @close(i32 noundef %i.as) #18  ; 0 uses
end_hunk_1
