Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/diff?download=true
inline.NumInlined: 585
inline.NumDeleted: 138
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 24
begin_hunk_0_@diff_queue_addremove:bb.a
bb.l:                                             ; preds = %bb.k
  %trunc.i.i = and i16 %.pre50, -4096             ; 3 uses
  switch i16 %trunc.i.i, label %bb.n [
    i16 -32768, label %bb.m
    i16 -24576, label %canon_mode.exit.i
    i16 16384, label %canon_mode.exit.i
  ]

bb.m:                                             ; preds = %bb.l
  %i.av = and i16 %.pre50, 64
  %.not.i.i = icmp eq i16 %i.av, 0
  %i.aw = select i1 %.not.i.i, i16 -32348, i16 -32275
  br label %canon_mode.exit.i

bb.n:                                             ; preds = %bb.l
  br label %canon_mode.exit.i

canon_mode.exit.i:                                ; preds = %bb.l, %bb.n, %bb.m, %bb.l
  %.0.i.i = phi i16 [ %i.aw, %bb.m ], [ -8192, %bb.n ], [ %trunc.i.i, %bb.l ], [ %trunc.i.i, %bb.l ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  store i16 %.0.i.i, ptr %i.ax, align 8, !tbaa !106
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull readonly align 4 dereferenceable(32) %4, i64 32, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !133
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !133
  %i.bb = trunc i32 %5 to i16
  %i.bc = load i16, ptr %i.ae, align 2
  %i.bd = and i16 %i.bb, 1
  %i.be = and i16 %i.bc, -2
  %i.bf = or disjoint i16 %i.be, %i.bd
  store i16 %i.bf, ptr %i.ae, align 2
  br label %fill_filespec.exit

fill_filespec.exit:                               ; preds = %bb.k, %canon_mode.exit.i
  %.not37 = icmp eq i32 %.031, 45
  br i1 %.not37, label %bb.r, label %alloc_filespec.exit40._crit_edge

alloc_filespec.exit40._crit_edge:                 ; preds = %alloc_filespec.exit40, %fill_filespec.exit
  %.not.i42 = icmp eq i16 %.pre50, 0
  br i1 %.not.i42, label %.fill_filespec.exit47_crit_edge, label %bb.o

.fill_filespec.exit47_crit_edge:                  ; preds = %alloc_filespec.exit40._crit_edge
  %.pre = load i16, ptr %i.as, align 2
  br label %fill_filespec.exit47

bb.o:                                             ; preds = %alloc_filespec.exit40._crit_edge
  %trunc.i.i43 = and i16 %.pre50, -4096           ; 3 uses
  switch i16 %trunc.i.i43, label %bb.q [
    i16 -32768, label %bb.p
    i16 -24576, label %canon_mode.exit.i44
    i16 16384, label %canon_mode.exit.i44
  ]

bb.p:                                             ; preds = %bb.o
  %i.bg = and i16 %.pre50, 64
  %.not.i.i46 = icmp eq i16 %i.bg, 0
  %i.bh = select i1 %.not.i.i46, i16 -32348, i16 -32275
  br label %canon_mode.exit.i44

bb.q:                                             ; preds = %bb.o
  br label %canon_mode.exit.i44

canon_mode.exit.i44:                              ; preds = %bb.o, %bb.q, %bb.p, %bb.o
  %.0.i.i45 = phi i16 [ %i.bh, %bb.p ], [ -8192, %bb.q ], [ %trunc.i.i43, %bb.o ], [ %trunc.i.i43, %bb.o ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  store i16 %.0.i.i45, ptr %i.bi, align 8, !tbaa !106
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull readonly align 4 dereferenceable(32) %4, i64 32, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !133
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !133
  %i.bm = trunc i32 %5 to i16
  %i.bn = load i16, ptr %i.as, align 2
  %i.bo = and i16 %i.bm, 1
  %i.bp = and i16 %i.bn, -2
  %i.bq = or disjoint i16 %i.bp, %i.bo
  br label %fill_filespec.exit47

fill_filespec.exit47:                             ; preds = %.fill_filespec.exit47_crit_edge, %canon_mode.exit.i44
  %i.br = phi i16 [ %.pre, %.fill_filespec.exit47_crit_edge ], [ %i.bq, %canon_mode.exit.i44 ]
  %i.bs = trunc i32 %7 to i16
  %i.bt = shl i16 %i.bs, 3
  %i.bu = and i16 %i.bt, 24
  %i.bv = and i16 %i.br, -25
  %i.bw = or disjoint i16 %i.bv, %i.bu
  store i16 %i.bw, ptr %i.as, align 2
  br label %bb.r

bb.r:                                             ; preds = %fill_filespec.exit47, %fill_filespec.exit
  %i.bx = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #33 ; 5 uses
  store ptr %i.aa, ptr %i.bx, align 8, !tbaa !258
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.ao, ptr %i.by, align 8, !tbaa !262
  %.not.i48 = icmp eq ptr %0, null
  br i1 %.not.i48, label %diff_queue.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !251 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !254 ; 2 uses
  %.not.i.i49 = icmp slt i32 %i.ca, %i.cc
  br i1 %.not.i.i49, label %._crit_edge.i.i, label %bb.t

._crit_edge.i.i:                                  ; preds = %bb.s
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !255
  br label %diff_q.exit.i

bb.t:                                             ; preds = %bb.s
  %i.cd = add nsw i32 %i.ca, 1
  %i.ce = mul i32 %i.cc, 3
  %i.cf = add i32 %i.ce, 48
  %i.cg = sdiv i32 %i.cf, 2
  %..i.i = tail call i32 @llvm.smax.i32(i32 %i.cg, i32 %i.cd) ; 3 uses
  store i32 %..i.i, ptr %i.cb, align 8, !tbaa !254
  %i.ch = sext i32 %..i.i to i64                  ; 2 uses
  %mul.ov.i.i.i = icmp slt i32 %..i.i, 0
  br i1 %mul.ov.i.i.i, label %bb.u, label %st_mult.exit.i.i

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.363, i64 noundef 8, i64 noundef %i.ch) #35
  unreachable

st_mult.exit.i.i:                                 ; preds = %bb.t
  %i.ci = load ptr, ptr %0, align 8, !tbaa !255
  %i.cj = shl nuw nsw i64 %i.ch, 3
  %i.ck = tail call ptr @xrealloc(ptr noundef %i.ci, i64 noundef %i.cj) #33 ; 2 uses
  store ptr %i.ck, ptr %0, align 8, !tbaa !255
  %.pre17.i.i = load i32, ptr %i.bz, align 4, !tbaa !251
  br label %diff_q.exit.i

diff_q.exit.i:                                    ; preds = %st_mult.exit.i.i, %._crit_edge.i.i
  %i.cl = phi i32 [ %i.ca, %._crit_edge.i.i ], [ %.pre17.i.i, %st_mult.exit.i.i ] ; 2 uses
  %i.cm = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ck, %st_mult.exit.i.i ]
  %i.cn = add nsw i32 %i.cl, 1
  store i32 %i.cn, ptr %i.bz, align 4, !tbaa !251
  %i.co = sext i32 %i.cl to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.co
  store ptr %i.bx, ptr %i.cp, align 8, !tbaa !256
  br label %diff_queue.exit

diff_queue.exit:                                  ; preds = %bb.r, %diff_q.exit.i
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !182
  %.not38 = icmp eq i32 %i.cr, 0
  br i1 %.not38, label %bb.v, label %bb.w

bb.v:                                             ; preds = %diff_queue.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i32 1, ptr %i.cs, align 8, !tbaa !375
  br label %bb.w

bb.w:                                             ; preds = %diff_queue.exit, %bb.v, %bb.e, %is_submodule_ignored.exit
  %.0 = phi ptr [ null, %bb.e ], [ null, %is_submodule_ignored.exit ], [ %i.bx, %bb.v ], [ %i.bx, %diff_queue.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @diff_queue_change(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %2, 61440
  %i.b = icmp eq i32 %i.a, 57344
  %i.c = and i32 %3, 61440
  %i.d = icmp eq i32 %i.c, 57344
  %or.cond = and i1 %i.b, %i.d
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %.sroa.0.0.copyload = load <36 x i32>, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.g = load i32, ptr %i.f, align 8, !tbaa !236
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.c, label %is_submodule_ignored.exit

bb.c:                                             ; preds = %bb.b
  tail call void @set_diffopt_flags_from_submodule_config(ptr noundef nonnull %1, ptr noundef %8) #33
  br label %is_submodule_ignored.exit

is_submodule_ignored.exit:                        ; preds = %bb.b, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.i = load i32, ptr %i.h, align 8, !tbaa !429
  %.not6.i.not = icmp eq i32 %i.i, 0
  store <36 x i32> %.sroa.0.0.copyload, ptr %i.e, align 8
  br i1 %.not6.i.not, label %bb.d, label %diff_free_filespec_data.exit101

bb.d:                                             ; preds = %is_submodule_ignored.exit, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.k = load i32, ptr %i.j, align 4, !tbaa !430
  %.not75.a = icmp eq i32 %i.k, 0
  br i1 %.not75.a, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.073 = phi i32 [ %9, %bb.e ], [ %10, %bb.d ]
  %.072 = phi i32 [ %10, %bb.e ], [ %9, %bb.d ]
  %.071 = phi i32 [ %6, %bb.e ], [ %7, %bb.d ]
  %.070 = phi i32 [ %7, %bb.e ], [ %6, %bb.d ]
  %.069 = phi ptr [ %4, %bb.e ], [ %5, %bb.d ]    ; 2 uses
  %.068 = phi ptr [ %5, %bb.e ], [ %4, %bb.d ]    ; 2 uses
  %.067 = phi i32 [ %2, %bb.e ], [ %3, %bb.d ]
  %.066.a = phi i32 [ %3, %bb.e ], [ %2, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !184  ; 2 uses
  %.not76.a = icmp eq ptr %i.m, null
  br i1 %.not76.a, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.o = load i32, ptr %i.n, align 8, !tbaa !185
  %i.p = sext i32 %i.o to i64
  %i.q = tail call i32 @strncmp(ptr noundef %8, ptr noundef nonnull %i.m, i64 noundef %i.p) #34
  %.not77.a = icmp eq i32 %i.q, 0
  br i1 %.not77.a, label %bb.h, label %diff_free_filespec_data.exit101

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %8) #34 ; 3 uses
  %i.s = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.r, i64 96) ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.s, 1
  br i1 %i.t, label %bb.i, label %st_add.exit.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.327, i64 noundef 96, i64 noundef %i.r) #35
  unreachable

st_add.exit.i:                                    ; preds = %bb.h
  %i.u = extractvalue { i64, i1 } %i.s, 0         ; 2 uses
  %i.v = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.u, i64 1) ; 2 uses
  %i.w = extractvalue { i64, i1 } %i.v, 1
  br i1 %i.w, label %bb.j, label %alloc_filespec.exit

bb.j:                                             ; preds = %st_add.exit.i
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.327, i64 noundef %i.u, i64 noundef 1) #35
  unreachable

alloc_filespec.exit:                              ; preds = %st_add.exit.i
  %i.x = extractvalue { i64, i1 } %i.v, 0
  %i.y = tail call ptr @xcalloc(i64 noundef 1, i64 noundef %i.x) #33 ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 96 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.z, ptr nonnull readonly align 1 %8, i64 %i.r, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !107
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  store i32 1, ptr %i.ab, align 8, !tbaa !131
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 82 ; 6 uses
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = or i16 %i.ad, 384
  store i16 %i.ae, ptr %i.ac, align 2
  %i.af = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %8) #34 ; 3 uses
  %i.ag = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.af, i64 96) ; 2 uses
  %i.ah = extractvalue { i64, i1 } %i.ag, 1
  br i1 %i.ah, label %bb.k, label %st_add.exit.i83

bb.k:                                             ; preds = %alloc_filespec.exit
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.327, i64 noundef 96, i64 noundef %i.af) #35
  unreachable

st_add.exit.i83:                                  ; preds = %alloc_filespec.exit
  %i.ai = extractvalue { i64, i1 } %i.ag, 0       ; 2 uses
  %i.aj = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ai, i64 1) ; 2 uses
  %i.ak = extractvalue { i64, i1 } %i.aj, 1
  br i1 %i.ak, label %bb.l, label %alloc_filespec.exit84

bb.l:                                             ; preds = %st_add.exit.i83
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.327, i64 noundef %i.ai, i64 noundef 1) #35
  unreachable

alloc_filespec.exit84:                            ; preds = %st_add.exit.i83
  %i.al = extractvalue { i64, i1 } %i.aj, 0
  %i.am = tail call ptr @xcalloc(i64 noundef 1, i64 noundef %i.al) #33 ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 96 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.an, ptr nonnull readonly align 1 %8, i64 %i.af, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !107
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  store i32 1, ptr %i.ap, align 8, !tbaa !131
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 82 ; 6 uses
  %i.ar = load i16, ptr %i.aq, align 2
  %i.as = or i16 %i.ar, 384
  store i16 %i.as, ptr %i.aq, align 2
  %i.at = trunc i32 %.066.a to i16                ; 3 uses
  %.not.i85 = icmp eq i16 %i.at, 0
  br i1 %.not.i85, label %fill_filespec.exit, label %bb.m

bb.m:                                             ; preds = %alloc_filespec.exit84
  %trunc.i.i = and i16 %i.at, -4096               ; 3 uses
  switch i16 %trunc.i.i, label %bb.o [
    i16 -32768, label %bb.n
    i16 -24576, label %canon_mode.exit.i
    i16 16384, label %canon_mode.exit.i
  ]

bb.n:                                             ; preds = %bb.m
  %i.au = and i16 %i.at, 64
  %.not.i.i = icmp eq i16 %i.au, 0
  %i.av = select i1 %.not.i.i, i16 -32348, i16 -32275
  br label %canon_mode.exit.i

bb.o:                                             ; preds = %bb.m
  br label %canon_mode.exit.i

canon_mode.exit.i:                                ; preds = %bb.m, %bb.o, %bb.n, %bb.m
  %.0.i.i = phi i16 [ %i.av, %bb.n ], [ -8192, %bb.o ], [ %trunc.i.i, %bb.m ], [ %trunc.i.i, %bb.m ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  store i16 %.0.i.i, ptr %i.aw, align 8, !tbaa !106
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull readonly align 4 dereferenceable(32) %.068, i64 32, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %.068, i64 32
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !133
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !133
  %i.ba = trunc i32 %.070 to i16
  %i.bb = load i16, ptr %i.ac, align 2
  %i.bc = and i16 %i.ba, 1
  %i.bd = and i16 %i.bb, -2
  %i.be = or disjoint i16 %i.bd, %i.bc
  store i16 %i.be, ptr %i.ac, align 2
  br label %fill_filespec.exit

fill_filespec.exit:                               ; preds = %alloc_filespec.exit84, %canon_mode.exit.i
  %i.bf = trunc i32 %.067 to i16                  ; 3 uses
  %.not.i86 = icmp eq i16 %i.bf, 0
  br i1 %.not.i86, label %fill_filespec.exit91, label %bb.p

bb.p:                                             ; preds = %fill_filespec.exit
  %trunc.i.i87 = and i16 %i.bf, -4096             ; 3 uses
  switch i16 %trunc.i.i87, label %bb.r [
    i16 -32768, label %bb.q
    i16 -24576, label %canon_mode.exit.i88
    i16 16384, label %canon_mode.exit.i88
  ]

bb.q:                                             ; preds = %bb.p
  %i.bg = and i16 %i.bf, 64
  %.not.i.i90 = icmp eq i16 %i.bg, 0
  %i.bh = select i1 %.not.i.i90, i16 -32348, i16 -32275
  br label %canon_mode.exit.i88

bb.r:                                             ; preds = %bb.p
  br label %canon_mode.exit.i88

canon_mode.exit.i88:                              ; preds = %bb.p, %bb.r, %bb.q, %bb.p
  %.0.i.i89 = phi i16 [ %i.bh, %bb.q ], [ -8192, %bb.r ], [ %trunc.i.i87, %bb.p ], [ %trunc.i.i87, %bb.p ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  store i16 %.0.i.i89, ptr %i.bi, align 8, !tbaa !106
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull readonly align 4 dereferenceable(32) %.069, i64 32, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.069, i64 32
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !133
  %i.bl = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !133
  %i.bm = trunc i32 %.071 to i16
  %i.bn = load i16, ptr %i.aq, align 2
  %i.bo = and i16 %i.bm, 1
  %i.bp = and i16 %i.bn, -2
  %i.bq = or disjoint i16 %i.bp, %i.bo
  store i16 %i.bq, ptr %i.aq, align 2
  br label %fill_filespec.exit91

fill_filespec.exit91:                             ; preds = %fill_filespec.exit, %canon_mode.exit.i88
  %i.br = trunc i32 %.072 to i16
  %i.bs = load i16, ptr %i.ac, align 2
  %i.bt = shl i16 %i.br, 3
  %i.bu = and i16 %i.bt, 24
  %i.bv = and i16 %i.bs, -25
  %i.bw = or disjoint i16 %i.bv, %i.bu
  store i16 %i.bw, ptr %i.ac, align 2
  %i.bx = trunc i32 %.073 to i16
  %i.by = load i16, ptr %i.aq, align 2
  %i.bz = shl i16 %i.bx, 3
  %i.ca = and i16 %i.bz, 24
  %i.cb = and i16 %i.by, -25
  %i.cc = or disjoint i16 %i.cb, %i.ca
  store i16 %i.cc, ptr %i.aq, align 2
  %i.cd = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #33 ; 9 uses
  store ptr %i.y, ptr %i.cd, align 8, !tbaa !258
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.ce, align 8, !tbaa !262
  %.not.i92.a = icmp eq ptr %0, null
  br i1 %.not.i92.a, label %diff_queue.exit, label %bb.s

bb.s:                                             ; preds = %fill_filespec.exit91
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !251 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !254 ; 2 uses
  %.not.i.i93.a = icmp slt i32 %i.cg, %i.ci
  br i1 %.not.i.i93.a, label %._crit_edge.i.i, label %bb.t

._crit_edge.i.i:                                  ; preds = %bb.s
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !255
  br label %diff_q.exit.i

bb.t:                                             ; preds = %bb.s
  %i.cj = add nsw i32 %i.cg, 1
  %i.ck = mul i32 %i.ci, 3
  %i.cl = add i32 %i.ck, 48
  %i.cm = sdiv i32 %i.cl, 2
  %..i.i = tail call i32 @llvm.smax.i32(i32 %i.cm, i32 %i.cj) ; 3 uses
  store i32 %..i.i, ptr %i.ch, align 8, !tbaa !254
  %i.cn = sext i32 %..i.i to i64                  ; 2 uses
  %mul.ov.i.i.i = icmp slt i32 %..i.i, 0
  br i1 %mul.ov.i.i.i, label %bb.u, label %st_mult.exit.i.i

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.363, i64 noundef 8, i64 noundef %i.cn) #35
  unreachable

st_mult.exit.i.i:                                 ; preds = %bb.t
  %i.co = load ptr, ptr %0, align 8, !tbaa !255
  %i.cp = shl nuw nsw i64 %i.cn, 3
  %i.cq = tail call ptr @xrealloc(ptr noundef %i.co, i64 noundef %i.cp) #33 ; 2 uses
  store ptr %i.cq, ptr %0, align 8, !tbaa !255
  %.pre17.i.i = load i32, ptr %i.cf, align 4, !tbaa !251
  br label %diff_q.exit.i

diff_q.exit.i:                                    ; preds = %st_mult.exit.i.i, %._crit_edge.i.i
  %i.cr = phi i32 [ %i.cg, %._crit_edge.i.i ], [ %.pre17.i.i, %st_mult.exit.i.i ] ; 2 uses
  %i.cs = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.cq, %st_mult.exit.i.i ]
  %i.ct = add nsw i32 %i.cr, 1
  store i32 %i.ct, ptr %i.cf, align 4, !tbaa !251
  %i.cu = sext i32 %i.cr to i64
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.cu
  store ptr %i.cd, ptr %i.cv, align 8, !tbaa !256
  br label %diff_queue.exit

diff_queue.exit:                                  ; preds = %fill_filespec.exit91, %diff_q.exit.i
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !182
  %.not78 = icmp eq i32 %i.cx, 0
  br i1 %.not78, label %bb.v, label %diff_free_filespec_data.exit101

bb.v:                                             ; preds = %diff_queue.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !188
  %.not79 = icmp eq i32 %i.cz, 0
  br i1 %.not79, label %bb.al, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.db = load i32, ptr %i.da, align 8, !tbaa !382
  %.not80 = icmp eq i32 %i.db, 0
  br i1 %.not80, label %bb.al, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !148
  %i.de = tail call fastcc i32 @diff_filespec_check_stat_unmatch(ptr noundef %i.dd, ptr noundef nonnull %i.cd)
  %.not81 = icmp eq i32 %i.de, 0
  br i1 %.not81, label %bb.y, label %bb.al

bb.y:                                             ; preds = %bb.x
  %i.df = load ptr, ptr %i.cd, align 8, !tbaa !258 ; 7 uses
  %.not.i94 = icmp eq ptr %i.df, null
  br i1 %.not.i94, label %diff_free_filespec_data.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 82 ; 3 uses
  %i.dh = load i16, ptr %i.dg, align 2            ; 2 uses
  %i.di = and i16 %i.dh, 2
  %.not.i.i95 = icmp eq i16 %i.di, 0
  br i1 %.not.i.i95, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !113
  tail call void @free(ptr noundef %i.dk) #33
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %i.dl = and i16 %i.dh, 4
  %.not10.i.i = icmp eq i16 %i.dl, 0
  br i1 %.not10.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !113
  %i.do = getelementptr inbounds nuw i8, ptr %i.df, i64 64
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !114
  %i.dq = tail call i32 @munmap(ptr noundef %i.dn, i64 noundef %i.dp) #33 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.dr = load i16, ptr %i.dg, align 2            ; 2 uses
  %i.ds = and i16 %i.dr, 6
  %or.cond.i.i = icmp eq i16 %i.ds, 0
  br i1 %or.cond.i.i, label %diff_free_filespec_blob.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dt = and i16 %i.dr, -7
  store i16 %i.dt, ptr %i.dg, align 2
  %i.du = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  store ptr null, ptr %i.du, align 8, !tbaa !113
  br label %diff_free_filespec_blob.exit.i

diff_free_filespec_blob.exit.i:                   ; preds = %bb.ae, %bb.ad
  %i.dv = getelementptr inbounds nuw i8, ptr %i.df, i64 56 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !132
  tail call void @free(ptr noundef %i.dw) #33
  store ptr null, ptr %i.dv, align 8, !tbaa !132
  br label %diff_free_filespec_data.exit

diff_free_filespec_data.exit:                     ; preds = %bb.y, %diff_free_filespec_blob.exit.i
  %i.dx = load ptr, ptr %i.ce, align 8, !tbaa !262 ; 7 uses
  %.not.i96 = icmp eq ptr %i.dx, null
  br i1 %.not.i96, label %diff_free_filespec_data.exit101, label %bb.af

bb.af:                                            ; preds = %diff_free_filespec_data.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 82 ; 3 uses
  %i.dz = load i16, ptr %i.dy, align 2            ; 2 uses
  %i.ea = and i16 %i.dz, 2
  %.not.i.i97 = icmp eq i16 %i.ea, 0
  br i1 %.not.i.i97, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 48
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !113
  tail call void @free(ptr noundef %i.ec) #33
  br label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %i.ed = and i16 %i.dz, 4
  %.not10.i.i100 = icmp eq i16 %i.ed, 0
  br i1 %.not10.i.i100, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !113
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dx, i64 64
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !114
  %i.ei = tail call i32 @munmap(ptr noundef %i.ef, i64 noundef %i.eh) #33 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.ej = load i16, ptr %i.dy, align 2            ; 2 uses
  %i.ek = and i16 %i.ej, 6
  %or.cond.i.i98 = icmp eq i16 %i.ek, 0
  br i1 %or.cond.i.i98, label %diff_free_filespec_blob.exit.i99, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.el = and i16 %i.ej, -7
  store i16 %i.el, ptr %i.dy, align 2
  %i.em = getelementptr inbounds nuw i8, ptr %i.dx, i64 48
  store ptr null, ptr %i.em, align 8, !tbaa !113
  br label %diff_free_filespec_blob.exit.i99

diff_free_filespec_blob.exit.i99:                 ; preds = %bb.ak, %bb.aj
  %i.en = getelementptr inbounds nuw i8, ptr %i.dx, i64 56 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !132
  tail call void @free(ptr noundef %i.eo) #33
  store ptr null, ptr %i.en, align 8, !tbaa !132
  br label %diff_free_filespec_data.exit101

bb.al:                                            ; preds = %bb.x, %bb.w, %bb.v
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i32 1, ptr %i.ep, align 8, !tbaa !375
  br label %diff_free_filespec_data.exit101

diff_free_filespec_data.exit101:                  ; preds = %diff_free_filespec_blob.exit.i99, %diff_free_filespec_data.exit, %diff_queue.exit, %bb.g, %is_submodule_ignored.exit, %bb.al
  %.0 = phi ptr [ %i.cd, %diff_queue.exit ], [ null, %is_submodule_ignored.exit ], [ null, %bb.g ], [ %i.cd, %bb.al ], [ %i.cd, %diff_free_filespec_data.exit ], [ %i.cd, %diff_free_filespec_blob.exit.i99 ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @diff_filespec_check_stat_unmatch(ptr noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.diff_populate_filespec_options, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
end_hunk_0
