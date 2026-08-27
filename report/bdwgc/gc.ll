Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bdwgc/original/gc?download=true
inline.NumInlined: 840
inline.NumDeleted: 204
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@GC_is_marked:bb.a
  %i.u = sext i8 %i.t to i32
  ret i32 %i.u
}

; Function Attrs: nounwind uwtable
define void @GC_push_all(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = add i64 %i.a, 7
  %i.c = and i64 %i.b, -8                         ; 3 uses
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = ptrtoint ptr %1 to i64
  %i.f = and i64 %i.e, -8                         ; 2 uses
  %.not = icmp ult i64 %i.c, %i.f
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store volatile ptr %i.h, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.i = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8
  %.not8 = icmp ult ptr %i.i, %i.j
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.k(ptr noundef nonnull @.str.62) #45
  tail call void @abort() #48
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = sub i64 %i.f, %i.c
  %i.m = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  store ptr %i.d, ptr %i.m, align 8
  %i.n = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.l, ptr %i.o, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define void @GC_push_conditional(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @GC_push_selected(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @GC_page_was_dirty)
  br label %GC_push_all.exit

bb.c:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %0 to i64
  %i.b = add i64 %i.a, 7
  %i.c = and i64 %i.b, -8                         ; 3 uses
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = ptrtoint ptr %1 to i64
  %i.f = and i64 %i.e, -8                         ; 2 uses
  %.not.i = icmp ult i64 %i.c, %i.f
  br i1 %.not.i, label %bb.d, label %GC_push_all.exit

bb.d:                                             ; preds = %bb.c
  %i.g = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store volatile ptr %i.h, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.i = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8
  %.not8.i = icmp ult ptr %i.i, %i.j
  br i1 %.not8.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.k(ptr noundef nonnull @.str.62) #45, !inline_history !117
  tail call void @abort() #48
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.l = sub i64 %i.f, %i.c
  %i.m = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  store ptr %i.d, ptr %i.m, align 8
  %i.n = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.l, ptr %i.o, align 8
  br label %GC_push_all.exit

GC_push_all.exit:                                 ; preds = %bb.f, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GC_push_selected(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = add i64 %i.a, 7
  %i.c = and i64 %i.b, -8                         ; 7 uses
  %i.d = ptrtoint ptr %1 to i64
  %i.e = and i64 %i.d, -8                         ; 8 uses
  %i.f = inttoptr i64 %i.e to ptr
  %.not = icmp ult i64 %i.c, %i.e
  br i1 %.not, label %bb.b, label %GC_push_all.exit

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.a, 4103
  %i.h = and i64 %i.g, -4096                      ; 4 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 4 uses
  %.not34 = icmp ugt i64 %i.e, %i.h
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -4096
  %i.k = tail call i32 %2(ptr noundef nonnull %i.j) #45
  %.not35 = icmp eq i32 %i.k, 0                   ; 2 uses
  br i1 %.not34, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not35, label %GC_push_all.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = inttoptr i64 %i.c to ptr
  %i.m = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store volatile ptr %i.n, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.o = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8
  %.not8.i = icmp ult ptr %i.o, %i.p
  br i1 %.not8.i, label %GC_push_all.exit.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.q(ptr noundef nonnull @.str.62) #45, !inline_history !117
  tail call void @abort() #48
  unreachable

bb.f:                                             ; preds = %bb.b
  br i1 %.not35, label %GC_push_all.exit46, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 144), align 8
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 4
  %i.x = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 224), align 8
  %i.y = mul i64 %i.x, 3
  %i.z = lshr i64 %i.y, 2
  %i.aa = icmp ugt i64 %i.w, %i.z
  %i.ab = inttoptr i64 %i.c to ptr                ; 2 uses
  br i1 %i.aa, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ac = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store volatile ptr %i.ad, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ae = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8
  %.not8.i42 = icmp ult ptr %i.ae, %i.af
  br i1 %.not8.i42, label %GC_push_all.exit.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.ag(ptr noundef nonnull @.str.62) #45, !inline_history !117
  tail call void @abort() #48
  unreachable

bb.j:                                             ; preds = %bb.g
  %.not.i44 = icmp ult i64 %i.c, %i.h
  br i1 %.not.i44, label %bb.k, label %GC_push_all.exit46

bb.k:                                             ; preds = %bb.j
  %i.ah = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store volatile ptr %i.ai, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.aj = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8
  %.not8.i45 = icmp ult ptr %i.aj, %i.ak
  br i1 %.not8.i45, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.al(ptr noundef nonnull @.str.62) #45, !inline_history !117
  tail call void @abort() #48
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.am = sub i64 %i.h, %i.c
  %i.an = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  store ptr %i.ab, ptr %i.an, align 8
  %i.ao = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %i.am, ptr %i.ap, align 8
  br label %GC_push_all.exit46

GC_push_all.exit46:                               ; preds = %bb.m, %bb.j, %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 4096 ; 2 uses
  %i.ar = ptrtoint ptr %i.aq to i64               ; 2 uses
  %.not3658 = icmp ult i64 %i.e, %i.ar
  br i1 %.not3658, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %GC_push_all.exit46, %GC_push_all.exit52
  %i.as = phi i64 [ %i.bz, %GC_push_all.exit52 ], [ %i.ar, %GC_push_all.exit46 ]
  %i.at = phi ptr [ %i.by, %GC_push_all.exit52 ], [ %i.aq, %GC_push_all.exit46 ] ; 3 uses
  %.059 = phi ptr [ %i.at, %GC_push_all.exit52 ], [ %i.i, %GC_push_all.exit46 ] ; 2 uses
  %i.au = tail call i32 %2(ptr noundef nonnull %.059) #45, !callees !118
  %.not39 = icmp eq i32 %i.au, 0
  br i1 %.not39, label %GC_push_all.exit52, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.av = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 144), align 8
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 4
  %i.bb = load i64, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 224), align 8
  %i.bc = mul i64 %i.bb, 3
  %i.bd = lshr i64 %i.bc, 2
  %i.be = icmp ugt i64 %i.ba, %i.bd
  %i.bf = ptrtoint ptr %.059 to i64
  %i.bg = add i64 %i.bf, 7
  %i.bh = and i64 %i.bg, -8                       ; 6 uses
  br i1 %i.be, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %.not.i47 = icmp ult i64 %i.bh, %i.e
  br i1 %.not.i47, label %bb.p, label %GC_push_all.exit

bb.p:                                             ; preds = %bb.o
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store volatile ptr %i.bk, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.bl = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8
  %.not8.i48 = icmp ult ptr %i.bl, %i.bm
  br i1 %.not8.i48, label %GC_push_all.exit.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.bn(ptr noundef nonnull @.str.62) #45, !inline_history !117
  tail call void @abort() #48
  unreachable

bb.r:                                             ; preds = %bb.n
  %i.bo = inttoptr i64 %i.bh to ptr
  %3 = and i64 %i.as, -8                          ; 2 uses
  %.not.i50 = icmp ult i64 %i.bh, %3
  br i1 %.not.i50, label %bb.s, label %GC_push_all.exit52

bb.s:                                             ; preds = %bb.r
  %i.bp = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store volatile ptr %i.bq, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.br = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8
  %.not8.i51 = icmp ult ptr %i.br, %i.bs
  br i1 %.not8.i51, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bt = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.bt(ptr noundef nonnull @.str.62) #45, !inline_history !117
  tail call void @abort() #48
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bu = sub i64 %3, %i.bh
  %i.bv = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  store ptr %i.bo, ptr %i.bv, align 8
  %i.bw = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i64 %i.bu, ptr %i.bx, align 8
  br label %GC_push_all.exit52

GC_push_all.exit52:                               ; preds = %bb.u, %bb.r, %.lr.ph
  %i.by = getelementptr inbounds nuw i8, ptr %i.at, i64 4096 ; 2 uses
  %i.bz = ptrtoint ptr %i.by to i64               ; 2 uses
  %.not36 = icmp ult i64 %i.e, %i.bz
  br i1 %.not36, label %._crit_edge, label %.lr.ph, !llvm.loop !119

._crit_edge:                                      ; preds = %GC_push_all.exit52, %GC_push_all.exit46
  %.0.lcssa = phi ptr [ %i.i, %GC_push_all.exit46 ], [ %i.at, %GC_push_all.exit52 ] ; 3 uses
  %.not37 = icmp eq ptr %.0.lcssa, %i.f
  br i1 %.not37, label %GC_push_all.exit, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  %i.ca = tail call i32 %2(ptr noundef nonnull %.0.lcssa) #45, !callees !118
  %.not38 = icmp eq i32 %i.ca, 0
  br i1 %.not38, label %GC_push_all.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cb = ptrtoint ptr %.0.lcssa to i64
  %i.cc = add i64 %i.cb, 7
  %i.cd = and i64 %i.cc, -8                       ; 3 uses
  %.not.i53 = icmp ult i64 %i.cd, %i.e
  br i1 %.not.i53, label %bb.x, label %GC_push_all.exit

bb.x:                                             ; preds = %bb.w
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store volatile ptr %i.cg, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ch = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 152), align 8
  %.not8.i54 = icmp ult ptr %i.ch, %i.ci
  br i1 %.not8.i54, label %GC_push_all.exit.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cj = load ptr, ptr @GC_on_abort, align 8
  tail call void %i.cj(ptr noundef nonnull @.str.62) #45, !inline_history !117
  tail call void @abort() #48
  unreachable

GC_push_all.exit.sink.split:                      ; preds = %bb.x, %bb.p, %bb.h, %bb.d
  %.sink81 = phi i64 [ %i.bh, %bb.p ], [ %i.c, %bb.h ], [ %i.c, %bb.d ], [ %i.cd, %bb.x ]
  %.sink79 = phi ptr [ %i.bi, %bb.p ], [ %i.ab, %bb.h ], [ %i.l, %bb.d ], [ %i.ce, %bb.x ]
  %i.ck = sub i64 %i.e, %.sink81
  %i.cl = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  store ptr %.sink79, ptr %i.cl, align 8
  %i.cm = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 160), align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i64 %i.ck, ptr %i.cn, align 8
  br label %GC_push_all.exit

GC_push_all.exit:                                 ; preds = %GC_push_all.exit.sink.split, %bb.w, %bb.o, %._crit_edge, %bb.v, %bb.c, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @GC_page_was_dirty(ptr noundef %0) #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = lshr i64 %i.a, 22                        ; 2 uses
  %i.c = and i64 %i.b, 2047
  %i.d = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.in.i = phi ptr [ %i.d, %bb.a ], [ %i.k, %bb.b ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ne i64 %i.g, %i.b
  %i.i = icmp ne ptr %.0.i, %i.e
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.j, label %bb.b, label %GC_find_header.exit, !llvm.loop !13

GC_find_header.exit:                              ; preds = %bb.b
  %i.l = lshr i64 %i.a, 12                        ; 2 uses
  %i.m = and i64 %i.l, 1023
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %GC_find_header.exit
  %i.q = lshr i64 %i.a, 18
  %i.r = and i64 %i.q, 4095
  %i.s = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 27128), i64 %i.r
  %i.t = load i64, ptr %i.s, align 8
  %i.u = and i64 %i.l, 63
  %i.v = lshr i64 %i.t, %i.u
  %i.w = trunc i64 %i.v to i32
  %i.x = and i32 %i.w, 1
  br label %bb.d

bb.d:                                             ; preds = %GC_find_header.exit, %bb.c
  %.0 = phi i32 [ %i.x, %bb.c ], [ 1, %GC_find_header.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define noundef ptr @GC_mark_and_push(ptr noundef %0, ptr nofree noundef writeonly captures(address, ret: address, provenance) %1, ptr nofree noundef readnone captures(address) %2, ptr nofree readnone captures(none) %3) local_unnamed_addr #2 {
bb.a:
  tail call void @llvm.prefetch.p0(ptr %0, i32 0, i32 0, i32 1)
  %i.a = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.b = lshr i64 %i.a, 22                        ; 2 uses
  %i.c = and i64 %i.b, 2047
  %i.d = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 192), align 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.in = phi ptr [ %i.d, %bb.a ], [ %i.k, %bb.b ]
  %.0 = load ptr, ptr %.0.in, align 8             ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0, i64 8208
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ne i64 %i.g, %i.b
  %i.i = icmp ne ptr %.0, %i.e
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  %i.k = getelementptr inbounds nuw i8, ptr %.0, i64 8216
  br i1 %i.j, label %bb.b, label %bb.c, !llvm.loop !120

bb.c:                                             ; preds = %bb.b
  %i.l = lshr i64 %i.a, 12
  %i.m = and i64 %i.l, 1023
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp ult ptr %i.o, inttoptr (i64 4096 to ptr)
  br i1 %i.p, label %bb.d, label %bb.g, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr @GC_all_interior_pointers, align 4
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = tail call ptr @GC_base(ptr noundef %0)
  %i.s = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.t = lshr i64 %i.s, 22                        ; 2 uses
  %i.u = and i64 %i.t, 2047
  %i.v = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @GC_arrays, i64 166400), i64 %i.u
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.0.in.i = phi ptr [ %i.v, %bb.e ], [ %i.ab, %bb.f ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 8208
  %i.x = load i64, ptr %i.w, align 8
  %i.y = icmp ne i64 %i.x, %i.t
  %i.z = icmp ne ptr %.0.i, %i.e
  %i.aa = select i1 %i.y, i1 %i.z, i1 false
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i, i64 8216
  br i1 %i.aa, label %bb.f, label %GC_find_header.exit, !llvm.loop !13

GC_find_header.exit:                              ; preds = %bb.f
  %i.ac = lshr i64 %i.s, 12
  %i.ad = and i64 %i.ac, 1023
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %.thread32, label %bb.g

bb.g:                                             ; preds = %GC_find_header.exit, %bb.c
  %.022 = phi ptr [ %i.af, %GC_find_header.exit ], [ %i.o, %bb.c ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.022, i64 25
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = and i8 %i.ai, 4
  %.not25 = icmp eq i8 %i.aj, 0
  br i1 %.not25, label %bb.i, label %bb.h, !prof !6

bb.h:                                             ; preds = %bb.g
  %.pr.pre = load i32, ptr @GC_all_interior_pointers, align 4
  %i.ak = icmp eq i32 %.pr.pre, 0
  br i1 %i.ak, label %.thread, label %.thread32

.thread32:                                        ; preds = %GC_find_header.exit, %bb.h
  tail call fastcc void @GC_add_to_black_list_stack(i64 noundef %i.a)
  br label %bb.j

.thread:                                          ; preds = %bb.d, %bb.h
  tail call fastcc void @GC_add_to_black_list_normal(i64 noundef %i.a)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.al = tail call fastcc ptr @GC_push_contents_hdr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %.022, i32 noundef 1)
  br label %bb.j

bb.j:                                             ; preds = %.thread32, %.thread, %bb.i
  %.023 = phi ptr [ %i.al, %bb.i ], [ %1, %.thread ], [ %1, %.thread32 ]
  ret ptr %.023
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #24
end_hunk_0
