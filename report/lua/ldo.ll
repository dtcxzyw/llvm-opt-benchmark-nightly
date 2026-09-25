Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lua/original/ldo?download=true
inline.NumInlined: 34
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@lua_resume:bb.a
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !38
  switch i8 %i.c, label %bb.f [
    i8 0, label %bb.b
    i8 1, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.not35 = icmp eq ptr %i.e, %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30   ; 3 uses
  br i1 %.not35, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = sext i32 %2 to i64
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr inbounds [16 x i8], ptr %i.h, i64 %i.j ; 3 uses
  store ptr %i.k, ptr %i.g, align 8, !tbaa !30
  %i.l = tail call ptr @luaS_new(ptr noundef nonnull %0, ptr noundef nonnull @.str.2) #16 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i8, ptr %i.m, align 8, !tbaa !33
  %i.o = or i8 %i.n, 64
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i8 %i.o, ptr %i.p, align 8, !tbaa !34
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.r, ptr %i.g, align 8, !tbaa !30
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = ptrtoint ptr %i.h to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 4
  %i.y = sext i32 %2 to i64                       ; 2 uses
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aa = sub nsw i64 0, %i.y
  %i.ab = getelementptr inbounds [16 x i8], ptr %i.h, i64 %i.aa ; 3 uses
  store ptr %i.ab, ptr %i.g, align 8, !tbaa !30
  %i.ac = tail call ptr @luaS_new(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #16 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !30
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !33
  %i.af = or i8 %i.ae, 64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i8 %i.af, ptr %i.ag, align 8, !tbaa !34
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.ai, ptr %i.g, align 8, !tbaa !30
  br label %bb.r

bb.f:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !30
  %i.al = sext i32 %2 to i64
  %i.am = sub nsw i64 0, %i.al
  %i.an = getelementptr inbounds [16 x i8], ptr %i.ak, i64 %i.am ; 3 uses
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !30
  %i.ao = tail call ptr @luaS_new(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #16 ; 2 uses
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !30
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !33
  %i.ar = or i8 %i.aq, 64
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 %i.ar, ptr %i.as, align 8, !tbaa !34
  %i.at = load ptr, ptr %i.aj, align 8, !tbaa !30
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr %i.au, ptr %i.aj, align 8, !tbaa !30
  br label %bb.r

bb.g:                                             ; preds = %bb.a, %bb.d
  %.not36 = icmp eq ptr %1, null
  br i1 %.not36, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 176
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !40
  %i.ay = and i32 %i.ax, 65535                    ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !40
  %i.ba = icmp samesign ugt i32 %i.ay, 199
  br i1 %i.ba, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !30
  %i.bd = sext i32 %2 to i64
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.be ; 3 uses
  store ptr %i.bf, ptr %i.bb, align 8, !tbaa !30
  %i.bg = tail call ptr @luaS_new(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #16 ; 2 uses
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !30
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !33
  %i.bj = or i8 %i.bi, 64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i8 %i.bj, ptr %i.bk, align 8, !tbaa !34
  %i.bl = load ptr, ptr %i.bb, align 8, !tbaa !30
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store ptr %i.bm, ptr %i.bb, align 8, !tbaa !30
  br label %bb.r

bb.j:                                             ; preds = %.thread, %bb.h
  %i.bn = phi ptr [ %i.av, %.thread ], [ %i.az, %bb.h ]
  %i.bo = phi i32 [ 0, %.thread ], [ %i.ay, %bb.h ]
  %i.bp = add nuw nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 8, !tbaa !40
  %i.bq = call zeroext i8 @luaD_rawrunprotected(ptr noundef nonnull %0, ptr noundef nonnull @resume, ptr noundef nonnull %i.a) ; 3 uses
  %i.br = icmp ugt i8 %i.bq, 1
  br i1 %i.br, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %findpcall.exit.i, %.lr.ph.i
  %.016.i = phi i8 [ %i.bq, %.lr.ph.i ], [ %i.cc, %findpcall.exit.i ] ; 3 uses
  %i.bt = zext i8 %.016.i to i32                  ; 2 uses
  %.08.i.i = load ptr, ptr %i.bs, align 8, !tbaa !44 ; 2 uses
  %.not9.i.i = icmp eq ptr %.08.i.i, null
  br i1 %.not9.i.i, label %precover.exit.thread39, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %bb.l
  %.010.i.i = phi ptr [ %.0.i.i, %bb.l ], [ %.08.i.i, %bb.k ] ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 60
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !45 ; 2 uses
  %i.bw = and i32 %i.bv, 2097152
  %.not7.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not7.i.i, label %bb.l, label %findpcall.exit.i

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 16
  %.0.i.i = load ptr, ptr %i.bx, align 8, !tbaa !44 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %precover.exit.thread39, label %.lr.ph.i.i

findpcall.exit.i:                                 ; preds = %.lr.ph.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 60
  store ptr %.010.i.i, ptr %i.bs, align 8, !tbaa !41
  %i.bz = and i32 %i.bv, -28673
  %i.ca = shl nuw nsw i32 %i.bt, 12
  %i.cb = or i32 %i.bz, %i.ca
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !45
  %i.cc = call zeroext i8 @luaD_rawrunprotected(ptr noundef nonnull %0, ptr noundef nonnull @unroll, ptr noundef null) ; 3 uses
  %i.cd = icmp ugt i8 %i.cc, 1
  br i1 %i.cd, label %bb.k, label %.loopexit

precover.exit.thread39:                           ; preds = %bb.k, %bb.l
  store i8 %.016.i, ptr %i.b, align 1, !tbaa !38
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !30 ; 6 uses
  %i.cg = icmp eq i8 %.016.i, 4
  br i1 %i.cg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %precover.exit.thread39
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !20
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 264
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !29 ; 2 uses
  store ptr %i.ck, ptr %i.cf, align 8, !tbaa !30
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load i8, ptr %i.cl, align 8, !tbaa !33
  %i.cn = or i8 %i.cm, 64
  br label %.thread42

bb.n:                                             ; preds = %precover.exit.thread39
  %i.co = getelementptr inbounds i8, ptr %i.cf, i64 -16
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !30
  store i64 %i.cp, ptr %i.cf, align 8, !tbaa !30
  %i.cq = getelementptr inbounds i8, ptr %i.cf, i64 -8
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !34
  br label %.thread42

.thread42:                                        ; preds = %bb.n, %bb.m
  %.sink.i = phi i8 [ %i.cn, %bb.m ], [ %i.cr, %bb.n ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i8 %.sink.i, ptr %i.cs, align 8, !tbaa !34
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  store ptr %i.ct, ptr %i.ce, align 8, !tbaa !30
  %i.cu = load ptr, ptr %i.bs, align 8, !tbaa !41
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.ct, ptr %i.cv, align 8, !tbaa !30
  br label %bb.p

.loopexit:                                        ; preds = %findpcall.exit.i, %bb.j
  %.015.i.ph = phi i8 [ %i.bq, %bb.j ], [ %i.cc, %findpcall.exit.i ]
  %.not = icmp eq i8 %.015.i.ph, 0
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !41
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 56
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !30
  br label %bb.q

bb.p:                                             ; preds = %.thread42, %.loopexit
  %i.da = phi i32 [ %i.bt, %.thread42 ], [ 0, %.loopexit ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !30
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !41
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !30
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = ptrtoint ptr %i.dc to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = lshr exact i64 %i.dj, 4
  %i.dl = trunc i64 %i.dk to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dm = phi i32 [ 1, %bb.o ], [ %i.da, %bb.p ]
  %i.dn = phi i32 [ %i.cz, %bb.o ], [ %i.dl, %bb.p ]
  store i32 %i.dn, ptr %3, align 4, !tbaa !75
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.i, %bb.f, %bb.e, %bb.c
  %.0 = phi i32 [ 2, %bb.c ], [ 2, %bb.e ], [ 2, %bb.i ], [ %i.dm, %bb.q ], [ 2, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @resume(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #6 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !75     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.d = sext i32 %i.a to i64
  %i.e = sub nsw i64 0, %i.d
  %i.f = getelementptr inbounds [16 x i8], ptr %i.c, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !38
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds i8, ptr %i.f, i64 -16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.n = load i32, ptr %i.m, align 8, !tbaa !40
  %i.o = and i32 %i.n, 65528
  %i.p = icmp samesign ugt i32 %i.o, 199
  br i1 %i.p, label %bb.c, label %bb.f, !prof !43

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !30
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.c to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = icmp slt i64 %i.u, 16
  br i1 %i.v, label %bb.d, label %bb.e, !prof !43

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !30
  %i.y = ptrtoint ptr %i.l to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = tail call i32 @luaD_growstack(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !30
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.aa
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi ptr [ %i.ad, %bb.d ], [ %i.l, %bb.c ]
  tail call void @luaE_checkcstack(ptr noundef nonnull %0) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.1.i = phi ptr [ %.0.i, %bb.e ], [ %i.l, %bb.b ]
  %i.ae = tail call ptr @luaD_precall(ptr noundef nonnull %0, ptr noundef %.1.i, i32 noundef -1) ; 3 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %ccall.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 60 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !45
  %i.ah = or i32 %i.ag, 65536
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !45
  tail call void @luaV_execute(ptr noundef nonnull %0, ptr noundef nonnull %i.ae) #16
  br label %ccall.exit

bb.h:                                             ; preds = %bb.a
  store i8 0, ptr %i.i, align 1, !tbaa !38
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 60
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !45
  %i.ak = and i32 %i.aj, 32768
  %.not = icmp eq i32 %i.ak, 0
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !30 ; 3 uses
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  store ptr %i.an, ptr %i.al, align 8, !tbaa !30
  store ptr %i.f, ptr %i.b, align 8, !tbaa !30
  tail call void @luaV_execute(ptr noundef nonnull %0, ptr noundef nonnull %i.h) #16
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %.not22 = icmp eq ptr %i.am, null
  br i1 %.not22, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !30
  %i.aq = tail call i32 %i.am(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %i.ap) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0 = phi i32 [ %i.aq, %bb.k ], [ %i.a, %bb.j ]
  tail call void @luaD_poscall(ptr noundef nonnull %0, ptr noundef nonnull %i.h, i32 noundef %.0)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  tail call void @unroll(ptr noundef nonnull %0, ptr poison)
  br label %ccall.exit

ccall.exit:                                       ; preds = %bb.g, %bb.f, %bb.m
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @lua_isyieldable(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load i32, ptr %i.a, align 8, !tbaa !40
  %i.c = icmp ult i32 %i.b, 65536
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @lua_yieldk(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load i32, ptr %i.c, align 8, !tbaa !40
  %i.e = icmp ugt i32 %i.d, 65535
  br i1 %i.e, label %bb.b, label %bb.e, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1416
  %.not15 = icmp eq ptr %0, %i.h
  br i1 %.not15, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #15
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #15
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 1, ptr %i.i, align 1, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 %1, ptr %i.j, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.l = load i32, ptr %i.k, align 4, !tbaa !45
  %i.m = and i32 %i.l, 32768
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %3, ptr %i.n, align 8, !tbaa !30
  %.not14 = icmp eq ptr %3, null
  br i1 %.not14, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %2, ptr %i.o, align 8, !tbaa !30
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @luaD_throw(ptr noundef nonnull %0, i8 noundef zeroext 1) #17
  unreachable

bb.i:                                             ; preds = %bb.e
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i8 @luaD_closeprotected(ptr noundef %0, i64 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #6 {
bb.a:
  %3 = alloca %struct.CloseP, align 8             ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.d = load i8, ptr %i.c, align 2, !tbaa !47
end_hunk_0
