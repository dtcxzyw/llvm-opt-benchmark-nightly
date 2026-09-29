Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 368
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@jsonObjectCompute:bb.a
sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.z, %bb.y
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.cu = call i32 %i.ct(ptr noundef nonnull %i.cm) #58, !inline_history !204
  %i.cv = sext i32 %i.cu to i64
  %i.cw = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.cx = sub nsw i64 %i.cw, %i.cv
  store i64 %i.cx, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.cy = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.cz = add nsw i64 %i.cy, -1
  store i64 %i.cz, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.da = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  call void %i.da(ptr noundef nonnull %i.cm) #58, !inline_history !1668
  %i.db = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i4.i.i, label %sqlite3RCStrUnref.exit, label %bb.aa

bb.aa:                                            ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.dc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  call void %i.dc(ptr noundef nonnull %i.db) #58, !inline_history !1669
  br label %sqlite3RCStrUnref.exit

bb.ab:                                            ; preds = %bb.x
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  call void %i.dd(ptr noundef nonnull %i.cm) #58, !inline_history !1668
  br label %sqlite3RCStrUnref.exit

bb.ac:                                            ; preds = %bb.t
  %i.de = load i8, ptr %i.z, align 1, !tbaa !1969
  %i.df = icmp eq i8 %i.de, 0
  br i1 %i.df, label %bb.ad, label %sqlite3RCStrUnref.exit

bb.ad:                                            ; preds = %bb.ac
  %i.dg = load i64, ptr %i.p, align 8, !tbaa !1936
  %i.dh = add i64 %i.dg, -1
  store i64 %i.dh, ptr %i.p, align 8, !tbaa !1936
  br label %sqlite3RCStrUnref.exit

bb.ae:                                            ; preds = %bb.s
  %.not92 = icmp eq i32 %1, 0
  %i.di = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !1925 ; 2 uses
  %i.dk = trunc i64 %i.cg to i32                  ; 2 uses
  br i1 %.not92, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dl = getelementptr inbounds nuw i8, ptr %.2, i64 32 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !1927
  %.not93 = icmp eq i8 %i.dm, 0
  %i.dn = select i1 %.not93, ptr @sqlite3RCStrUnref, ptr inttoptr (i64 -1 to ptr)
  call fastcc void @setResultStrOrError(ptr noundef %0, ptr noundef %i.dj, i32 noundef %i.dk, i8 noundef zeroext 1, ptr noundef nonnull %i.dn), !inline_history !1906
  store i8 1, ptr %i.dl, align 8, !tbaa !1927
  br label %sqlite3RCStrUnref.exit

bb.ag:                                            ; preds = %bb.ae
  call fastcc void @setResultStrOrError(ptr noundef %0, ptr noundef %i.dj, i32 noundef %i.dk, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)), !inline_history !1906
  %i.do = load i8, ptr %i.z, align 1, !tbaa !1969
  %i.dp = icmp eq i8 %i.do, 0
  br i1 %i.dp, label %bb.ah, label %sqlite3RCStrUnref.exit

bb.ah:                                            ; preds = %bb.ag
  %i.dq = load i64, ptr %i.p, align 8, !tbaa !1936
  %i.dr = add i64 %i.dq, -1
  store i64 %i.dr, ptr %i.p, align 8, !tbaa !1936
  br label %sqlite3RCStrUnref.exit

sqlite3RCStrUnref.exit:                           ; preds = %bb.ah, %bb.ag, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %sqlite3_mutex_enter.exit.i.i, %bb.w, %bb.af, %bb.u
  %.not96 = icmp eq ptr %.2, %.0.i
  br i1 %.not96, label %bb.aq, label %bb.ai

bb.ai:                                            ; preds = %sqlite3RCStrUnref.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %.2, i64 32 ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 8, !tbaa !1927
  %.not.i105 = icmp eq i8 %i.dt, 0
  br i1 %.not.i105, label %bb.aj, label %jsonStringReset.exit

bb.aj:                                            ; preds = %bb.ai
  %i.du = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !1925
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -8 ; 5 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !1666 ; 2 uses
  %i.dy = icmp ugt i64 %i.dx, 1
  br i1 %i.dy, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dz = add i64 %i.dx, -1
  store i64 %i.dz, ptr %i.dw, align 8, !tbaa !1666
  br label %jsonStringReset.exit

bb.al:                                            ; preds = %bb.aj
  %i.ea = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i.i.i106 = icmp eq i32 %i.ea, 0
  br i1 %.not.i.i.i106, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eb = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i.i, label %sqlite3_mutex_enter.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ec = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  call void %i.ec(ptr noundef nonnull %i.eb) #58, !inline_history !1953
  br label %sqlite3_mutex_enter.exit.i.i.i

sqlite3_mutex_enter.exit.i.i.i:                   ; preds = %bb.an, %bb.am
  %i.ed = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.ee = call i32 %i.ed(ptr noundef nonnull %i.dw) #58, !inline_history !276
  %i.ef = sext i32 %i.ee to i64
  %i.eg = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.eh = sub nsw i64 %i.eg, %i.ef
  store i64 %i.eh, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.ei = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.ej = add nsw i64 %i.ei, -1
  store i64 %i.ej, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.ek = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  call void %i.ek(ptr noundef nonnull %i.dw) #58, !inline_history !1954
  %i.el = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i.i.i = icmp eq ptr %i.el, null
  br i1 %.not.i4.i.i.i, label %jsonStringReset.exit, label %bb.ao

bb.ao:                                            ; preds = %sqlite3_mutex_enter.exit.i.i.i
  %i.em = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  call void %i.em(ptr noundef nonnull %i.el) #58, !inline_history !1955
  br label %jsonStringReset.exit

bb.ap:                                            ; preds = %bb.al
  %i.en = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  call void %i.en(ptr noundef nonnull %i.dw) #58, !inline_history !1954
  br label %jsonStringReset.exit

jsonStringReset.exit:                             ; preds = %bb.ai, %bb.ak, %sqlite3_mutex_enter.exit.i.i.i, %bb.ao, %bb.ap
  %i.eo = getelementptr inbounds nuw i8, ptr %.2, i64 34
  %i.ep = getelementptr inbounds nuw i8, ptr %.2, i64 8
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !1925
  %i.eq = getelementptr inbounds nuw i8, ptr %.2, i64 16
  store i64 100, ptr %i.eq, align 8, !tbaa !1926
  %i.er = getelementptr inbounds nuw i8, ptr %.2, i64 24
  store i64 0, ptr %i.er, align 8, !tbaa !1936
  store i8 1, ptr %i.ds, align 8, !tbaa !1927
  br label %bb.aq

bb.aq:                                            ; preds = %sqlite3RCStrUnref.exit, %jsonStringReset.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br label %bb.au

bb.ar:                                            ; preds = %sqlite3_aggregate_context.exit
  %i.es = and i32 %i.g, 16
  %.not86 = icmp eq i32 %i.es, 0
  br i1 %.not86, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call fastcc void @setResultStrOrError(ptr noundef nonnull %0, ptr noundef nonnull @jsonObjectCompute.emptyObject, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null), !inline_history !1952
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  tail call fastcc void @setResultStrOrError(ptr noundef nonnull %0, ptr noundef nonnull @.str.1462, i32 noundef 2, i8 noundef zeroext 1, ptr noundef null), !inline_history !1906
  br label %bb.au

bb.au:                                            ; preds = %bb.aq, %bb.as, %bb.at
  %i.et = load ptr, ptr %i.b, align 8, !tbaa !735 ; 3 uses
  %.not.i107 = icmp eq ptr %i.et, null
  br i1 %.not.i107, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !1103
  %i.ew = and i32 %i.ev, 16777216
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 56
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !732
  %i.fa = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 200, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.21, ptr noundef %i.ez), !inline_history !1950 ; 0 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.fb, align 4, !tbaa !570
  %i.fc = load ptr, ptr %0, align 8, !tbaa !761
  %i.fd = call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef %i.fc, ptr noundef nonnull %i.a, i64 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)), !inline_history !1951 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %sqlite3_result_subtype.exit

bb.ax:                                            ; preds = %bb.av, %bb.au
  %i.fe = load ptr, ptr %0, align 8, !tbaa !761   ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 23
  store i8 74, ptr %i.ff, align 1, !tbaa !1096
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 20 ; 2 uses
  %i.fh = load i16, ptr %i.fg, align 4, !tbaa !686
  %i.fi = or i16 %i.fh, 2048
  store i16 %i.fi, ptr %i.fg, align 4, !tbaa !686
  br label %sqlite3_result_subtype.exit

.critedge99:                                      ; preds = %.critedge, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  br label %sqlite3_result_subtype.exit

sqlite3_result_subtype.exit:                      ; preds = %bb.ax, %bb.aw, %.critedge99
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @sqlite3MemMalloc(i32 noundef %0) #0 {
bb.a:
  %i.a = add nsw i32 %0, 8
  %i.b = sext i32 %i.a to i64
  %i.c = tail call noalias ptr @malloc(i64 noundef %i.b) #62 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %0 to i64
  store i64 %i.d, ptr %i.c, align 8, !tbaa !565
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 7, ptr noundef nonnull @.str.1463, i32 noundef %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @sqlite3MemFree(ptr noundef captures(none) %0) #50 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @free(ptr noundef nonnull %i.a) #58
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @sqlite3MemRealloc(ptr noundef captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = add nsw i32 %1, 8
  %i.c = sext i32 %i.b to i64
  %i.d = tail call ptr @realloc(ptr noundef nonnull %i.a, i64 noundef %i.c) #63 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %1 to i64
  store i64 %i.e, ptr %i.d, align 8, !tbaa !565
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.a, align 8, !tbaa !565
  %i.h = trunc i64 %i.g to i32
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 7, ptr noundef nonnull @.str.1464, i32 noundef %i.h, i32 noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @sqlite3MemSize(ptr nofree noundef readonly captures(none) %0) #6 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !565
  %i.c = trunc i64 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal range(i32 0, -7) i32 @sqlite3MemRoundup(i32 noundef %0) #3 {
bb.a:
  %i.a = add nsw i32 %0, 7
  %i.b = and i32 %i.a, -8
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @sqlite3MemInit(ptr nofree readnone captures(none) %0) #3 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @sqlite3MemShutdown(ptr nofree readnone captures(none) %0) #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #51

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #52

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #53

; Function Attrs: nounwind uwtable
define internal noundef i32 @pcache1Init(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) @pcache1_g, i8 0, i64 144, i1 false)
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 312), align 8, !tbaa !727 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 4), align 4 ; 2 uses
  %i.d = icmp ne i8 %i.c, 0
  %i.e = or i1 %i.b, %i.d                         ; 2 uses
  %i.f = zext i1 %i.e to i32
  store i32 %i.f, ptr getelementptr inbounds nuw (i8, ptr @pcache1_g, i64 84), align 4, !tbaa !2518
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %sqlite3MutexAlloc.exit

sqlite3MutexAlloc.exit:                           ; preds = %bb.a
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 112), align 8, !tbaa !711
  %i.h = tail call ptr %i.g(i32 noundef 6) #58, !inline_history !7
  store ptr %i.h, ptr @pcache1_g, align 8, !tbaa !5756
  %i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 4), align 4, !tbaa !710
  %.not.i4 = icmp eq i8 %i.i, 0
  br i1 %.not.i4, label %sqlite3MutexAlloc.exit6, label %bb.b

bb.b:                                             ; preds = %sqlite3MutexAlloc.exit
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 112), align 8, !tbaa !711
  %i.k = tail call ptr %i.j(i32 noundef 7) #58, !inline_history !7
  br label %sqlite3MutexAlloc.exit6

sqlite3MutexAlloc.exit6:                          ; preds = %sqlite3MutexAlloc.exit, %bb.b
  %.0.i5 = phi ptr [ %i.k, %bb.b ], [ null, %sqlite3MutexAlloc.exit ]
  store ptr %.0.i5, ptr getelementptr inbounds nuw (i8, ptr @pcache1_g, i64 120), align 8, !tbaa !1589
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @pcache1_g, i64 84), align 4, !tbaa !2518
  %.pre7 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 312), align 8
  %i.l = icmp ne i32 %.pre, 0
  br label %bb.c

bb.c:                                             ; preds = %sqlite3MutexAlloc.exit6, %bb.a
  %i.m = phi ptr [ %.pre7, %sqlite3MutexAlloc.exit6 ], [ %i.a, %bb.a ]
  %i.n = phi i1 [ %i.l, %sqlite3MutexAlloc.exit6 ], [ %i.e, %bb.a ]
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 324), align 4 ; 2 uses
  %i.p = icmp ne i32 %i.o, 0
  %or.cond = select i1 %i.n, i1 %i.p, i1 false
  %i.q = icmp eq ptr %i.m, null
  %or.cond3 = select i1 %or.cond, i1 %i.q, i1 false
  %. = select i1 %or.cond3, i32 %i.o, i32 0
  store i32 %., ptr getelementptr inbounds nuw (i8, ptr @pcache1_g, i64 88), align 8, !tbaa !2519
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @pcache1_g, i64 16), align 8, !tbaa !5757
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @pcache1_g, i64 80), align 8, !tbaa !1298
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @pcache1Shutdown(ptr nofree readnone captures(none) %0) #15 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) @pcache1_g, i8 0, i64 144, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @pcache1Create(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @pcache1_g, i64 84), align 4, !tbaa !2518
  %i.b = sext i32 %i.a to i64
  %i.c = mul nsw i64 %i.b, 80
  %i.d = add nsw i64 %i.c, 88                     ; 2 uses
  %i.e = tail call fastcc ptr @sqlite3Malloc(i64 noundef range(i64 -180388626400, 180388626381) %i.d) ; 16 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %sqlite3MallocZero.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.e, i8 0, i64 range(i64 -180388626400, 180388626381) %i.d, i1 false)
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @pcache1_g, i64 84), align 4, !tbaa !2518
  %.not36 = icmp eq i32 %i.f, 0
  br i1 %.not36, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i32 10, ptr %i.h, align 8, !tbaa !2520
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %i.g, %bb.c ], [ @pcache1_g, %bb.b ] ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0, i64 46 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !5758
  %i.k = icmp eq i16 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.0, i64 24 ; 2 uses
  store i16 1, ptr %i.i, align 2, !tbaa !5758
  %i.m = getelementptr inbounds nuw i8, ptr %.0, i64 64
  store ptr %i.l, ptr %i.m, align 8, !tbaa !5759
  %i.n = getelementptr inbounds nuw i8, ptr %.0, i64 72
  store ptr %i.l, ptr %i.n, align 8, !tbaa !2521
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %.0, ptr %i.e, align 8, !tbaa !2525
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 %0, ptr %i.o, align 8, !tbaa !2526
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i32 %1, ptr %i.p, align 4, !tbaa !2527
  %i.q = add i32 %0, 56
  %i.r = add i32 %i.q, %1
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 %i.r, ptr %i.s, align 8, !tbaa !2528
  %.not37 = icmp ne i32 %2, 0                     ; 2 uses
  %i.t = zext i1 %.not37 to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  store i32 %i.t, ptr %i.u, align 4, !tbaa !2529
  tail call fastcc void @pcache1ResizeHash(ptr noundef nonnull %i.e)
  br i1 %.not37, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i32 10, ptr %i.v, align 8, !tbaa !2530
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 12 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !2531 ; 2 uses
  %i.y = add i32 %i.x, 10
  store i32 %i.y, ptr %i.w, align 4, !tbaa !2531
  %i.z = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !2532
  %i.ab = sub i32 %i.aa, %i.x
  %i.ac = getelementptr inbounds nuw i8, ptr %.0, i64 16
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !2520
  %i.ad = getelementptr inbounds nuw i8, ptr %.0, i64 20
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink = phi ptr [ %i.ad, %bb.g ], [ %i.ae, %bb.h ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sink, ptr %i.af, align 8, !tbaa !2533
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 60
end_hunk_0
