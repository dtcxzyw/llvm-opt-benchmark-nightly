Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lua/original/ltm?download=true
inline.NumInlined: 9
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@luaT_init:bb.a
  tail call void @luaC_fix(ptr noundef %0, ptr noundef %i.ac) #6
  %i.af = tail call ptr @luaS_new(ptr noundef %0, ptr noundef nonnull @.str.20) #6 ; 2 uses
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 352
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !23
  tail call void @luaC_fix(ptr noundef %0, ptr noundef %i.af) #6
  %i.ai = tail call ptr @luaS_new(ptr noundef %0, ptr noundef nonnull @.str.21) #6 ; 2 uses
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 360
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !23
  tail call void @luaC_fix(ptr noundef %0, ptr noundef %i.ai) #6
  %i.al = tail call ptr @luaS_new(ptr noundef %0, ptr noundef nonnull @.str.22) #6 ; 2 uses
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 368
  store ptr %i.al, ptr %i.an, align 8, !tbaa !23
  tail call void @luaC_fix(ptr noundef %0, ptr noundef %i.al) #6
  %i.ao = tail call ptr @luaS_new(ptr noundef %0, ptr noundef nonnull @.str.23) #6 ; 2 uses
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 376
  store ptr %i.ao, ptr %i.aq, align 8, !tbaa !23
  tail call void @luaC_fix(ptr noundef %0, ptr noundef %i.ao) #6
  %i.ar = tail call ptr @luaS_new(ptr noundef %0, ptr noundef nonnull @.str.24) #6 ; 2 uses
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 384
  store ptr %i.ar, ptr %i.at, align 8, !tbaa !23
  tail call void @luaC_fix(ptr noundef %0, ptr noundef %i.ar) #6
  %i.au = tail call ptr @luaS_new(ptr noundef %0, ptr noundef nonnull @.str.25) #6 ; 2 uses
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 392
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !23
  tail call void @luaC_fix(ptr noundef %0, ptr noundef %i.au) #6
  %i.ax = tail call ptr @luaS_new(ptr noundef %0, ptr noundef nonnull @.str.26) #6 ; 2 uses
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 400
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !23
  tail call void @luaC_fix(ptr noundef %0, ptr noundef %i.ax) #6
  %i.ba = tail call ptr @luaS_new(ptr noundef %0, ptr noundef nonnull @.str.27) #6 ; 2 uses
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 408
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !23
  tail call void @luaC_fix(ptr noundef %0, ptr noundef %i.ba) #6
  %i.bd = tail call ptr @luaS_new(ptr noundef %0, ptr noundef nonnull @.str.28) #6 ; 2 uses
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 416
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !23
  tail call void @luaC_fix(ptr noundef %0, ptr noundef %i.bd) #6
  %i.bg = tail call ptr @luaS_new(ptr noundef %0, ptr noundef nonnull @.str.29) #6 ; 2 uses
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 424
  store ptr %i.bg, ptr %i.bi, align 8, !tbaa !23
  tail call void @luaC_fix(ptr noundef %0, ptr noundef %i.bg) #6
  %i.bj = tail call ptr @luaS_new(ptr noundef %0, ptr noundef nonnull @.str.30) #6 ; 2 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 432
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !23
  tail call void @luaC_fix(ptr noundef %0, ptr noundef %i.bj) #6
  %i.bm = tail call ptr @luaS_new(ptr noundef %0, ptr noundef nonnull @.str.31) #6 ; 2 uses
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 440
  store ptr %i.bm, ptr %i.bo, align 8, !tbaa !23
  tail call void @luaC_fix(ptr noundef %0, ptr noundef %i.bm) #6
  %i.bp = tail call ptr @luaS_new(ptr noundef %0, ptr noundef nonnull @.str.32) #6 ; 2 uses
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 448
  store ptr %i.bp, ptr %i.br, align 8, !tbaa !23
  tail call void @luaC_fix(ptr noundef %0, ptr noundef %i.bp) #6
  %i.bs = tail call ptr @luaS_new(ptr noundef %0, ptr noundef nonnull @.str.33) #6 ; 2 uses
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 456
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !23
  tail call void @luaC_fix(ptr noundef %0, ptr noundef %i.bs) #6
  %i.bv = tail call ptr @luaS_new(ptr noundef %0, ptr noundef nonnull @.str.34) #6 ; 2 uses
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 464
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !23
  tail call void @luaC_fix(ptr noundef %0, ptr noundef %i.bv) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare hidden ptr @luaS_new(ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @luaC_fix(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden ptr @luaT_gettm(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @luaH_Hgetshortstr(ptr noundef %0, ptr noundef %2) #6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !25
  %i.d = and i8 %i.c, 15
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = shl nuw i32 1, %1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.h = load i8, ptr %i.g, align 2, !tbaa !40
  %i.i = trunc i32 %i.f to i8
  %i.j = or i8 %i.h, %i.i
  store i8 %i.j, ptr %i.g, align 2, !tbaa !40
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.0
}

declare hidden ptr @luaH_Hgetshortstr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden ptr @luaT_gettmbyobj(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !25
  %i.c = and i8 %i.b, 15                          ; 2 uses
  switch i8 %i.c, label %bb.d [
    i8 5, label %bb.b
    i8 7, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 472
  %i.k = zext nneg i8 %i.c to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0.in = phi ptr [ %i.l, %bb.d ], [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !31  ; 2 uses
  %.not = icmp eq ptr %.0, null
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21   ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 272
  %i.p = zext i32 %2 to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !23
  %i.s = tail call ptr @luaH_Hgetshortstr(ptr noundef nonnull %.0, ptr noundef %i.r) #6
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = phi ptr [ %i.s, %bb.f ], [ %i.t, %bb.g ]
  ret ptr %i.u
}

; Function Attrs: nounwind uwtable
define hidden ptr @luaT_objtypename(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !25    ; 2 uses
  switch i8 %i.b, label %.thread [
    i8 69, label %bb.b
    i8 71, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.thread, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44   ; 2 uses
  %.not16 = icmp eq ptr %i.h, null
  br i1 %.not16, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.012 = phi ptr [ %i.e, %bb.b ], [ %i.h, %bb.c ]
  %i.i = tail call ptr @luaS_new(ptr noundef %0, ptr noundef nonnull @.str.35) #6
  %i.j = tail call ptr @luaH_Hgetshortstr(ptr noundef nonnull %.012, ptr noundef %i.i) #6 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i8, ptr %i.k, align 8, !tbaa !25
  %i.m = and i8 %i.l, 15
  %.not17 = icmp eq i8 %i.m, 4                    ; 2 uses
  br i1 %.not17, label %bb.e, label %2

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !30   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 11
  %i.p = load i8, ptr %i.o, align 1, !tbaa !34
  %i.q = icmp sgt i8 %i.p, -1
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  br i1 %i.q, label %2, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !35
  br label %2

2:                                                ; preds = %bb.e, %bb.d, %bb.f
  %.013 = phi ptr [ %i.s, %bb.f ], [ undef, %bb.d ], [ %i.r, %bb.e ]
  br i1 %.not17, label %.thread18, label %._crit_edge

._crit_edge:                                      ; preds = %2
  %.pre = load i8, ptr %i.a, align 8, !tbaa !25
  br label %.thread

.thread:                                          ; preds = %._crit_edge, %bb.b, %bb.a, %bb.c
  %i.t = phi i8 [ %.pre, %._crit_edge ], [ 69, %bb.b ], [ %i.b, %bb.a ], [ 71, %bb.c ]
  %i.u = and i8 %i.t, 15
  %i.v = zext nneg i8 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @luaT_typenames_, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !45
  br label %.thread18

.thread18:                                        ; preds = %2, %.thread
  %.1 = phi ptr [ %i.y, %.thread ], [ %.013, %2 ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define hidden void @luaT_callTM(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 11 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !30
  store i64 %i.c, ptr %i.b, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i8, ptr %i.d, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.e, ptr %i.f, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %2, align 8, !tbaa !30
  store i64 %i.h, ptr %i.g, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i8, ptr %i.i, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 %i.j, ptr %i.k, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.m = load i64, ptr %3, align 8, !tbaa !30
  store i64 %i.m, ptr %i.l, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load i8, ptr %i.n, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i8 %i.o, ptr %i.p, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.r = load i64, ptr %4, align 8, !tbaa !30
  store i64 %i.r, ptr %i.q, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = load i8, ptr %i.s, align 8, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i8 %i.t, ptr %i.u, align 8, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.v, ptr %i.a, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 60
  %i.z = load i32, ptr %i.y, align 4, !tbaa !37
  %i.aa = and i32 %i.z, 1081344
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @luaD_call(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef 0) #6
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @luaD_callnoyield(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef 0) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare hidden void @luaD_call(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden void @luaD_callnoyield(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden zeroext range(i8 0, 64) i8 @luaT_callTMres(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 8 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !30
  store i64 %i.e, ptr %i.d, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i8, ptr %i.f, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 %i.g, ptr %i.h, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %2, align 8, !tbaa !30
  store i64 %i.j, ptr %i.i, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i8, ptr %i.k, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i8 %i.l, ptr %i.m, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.o = load i64, ptr %3, align 8, !tbaa !30
  store i64 %i.o, ptr %i.n, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load i8, ptr %i.p, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i8 %i.q, ptr %i.r, align 8, !tbaa !25
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store ptr %i.t, ptr %i.c, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 60
  %i.x = load i32, ptr %i.w, align 4, !tbaa !37
  %i.y = and i32 %i.x, 1081344
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @luaD_call(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i32 noundef 1) #6
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @luaD_callnoyield(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i32 noundef 1) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.z = ptrtoint ptr %4 to i64
  %i.aa = ptrtoint ptr %i.b to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.ab ; 2 uses
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !30  ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -16 ; 2 uses
  store ptr %i.af, ptr %i.c, align 8, !tbaa !30
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !30
  store i64 %i.ag, ptr %i.ad, align 8, !tbaa !30
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !25  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i8 %i.ai, ptr %i.aj, align 8, !tbaa !25
  %i.ak = and i8 %i.ai, 63
  ret i8 %i.ak
}

; Function Attrs: nounwind uwtable
define hidden void @luaT_trybinTM(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @callbinTM(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.h, !prof !38

bb.b:                                             ; preds = %bb.a
  switch i32 %4, label %bb.g [
    i32 13, label %bb.c
    i32 14, label %bb.c
    i32 15, label %bb.c
    i32 16, label %bb.c
    i32 17, label %bb.c
    i32 19, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !25
  %i.e = and i8 %i.d, 15
  %i.f = icmp eq i8 %i.e, 3
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i8, ptr %i.g, align 8, !tbaa !25
  %i.i = and i8 %i.h, 15
  %i.j = icmp eq i8 %i.i, 3
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @luaG_tointerror(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #7
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c
  tail call void @luaG_opinterror(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull @.str.36) #7
  unreachable

bb.g:                                             ; preds = %bb.b
  tail call void @luaG_opinterror(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.37) #7
  unreachable

bb.h:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 64) i32 @callbinTM(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !25
  %i.c = and i8 %i.b, 15                          ; 2 uses
  switch i8 %i.c, label %bb.d [
    i8 5, label %bb.b
    i8 7, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 472
  %i.k = zext nneg i8 %i.c to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
end_hunk_0
