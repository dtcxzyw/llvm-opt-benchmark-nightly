Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib/original/inflate?download=true
inline.NumInlined: 24
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@inflateInit2_:bb.a

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h, %bb.c, %bb.a, %bb.b
  %.0 = phi i32 [ -4, %bb.h ], [ -6, %bb.a ], [ -2, %bb.c ], [ -6, %bb.b ], [ %i.v, %bb.j ], [ 0, %bb.i ]
  ret i32 %.0
}

declare hidden ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #3

declare hidden void @zcfree(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define range(i32 -6, 1) i32 @inflateInit_(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %inflateInit2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !45
  %i.c = icmp ne i8 %i.b, 49
  %i.d = icmp ne i32 %2, 112
  %or.cond.i = or i1 %i.d, %i.c
  br i1 %or.cond.i, label %inflateInit2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %inflateInit2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.f, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr @zcalloc, ptr %i.g, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %i.j, align 8, !tbaa !44
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = phi ptr [ @zcalloc, %bb.e ], [ %i.h, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr @zcfree, ptr %i.l, align 8, !tbaa !15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !44
  %i.q = tail call ptr %i.k(ptr noundef %i.p, i32 noundef 1, i32 noundef 7160) #9, !inline_history !58 ; 5 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %inflateInit2_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7152) %i.s, i8 0, i64 7152, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.q, ptr %i.t, align 8, !tbaa !16
  store ptr %0, ptr %i.q, align 8, !tbaa !20
  store i32 16180, ptr %i.s, align 8, !tbaa !21
  %i.u = tail call i32 @inflateReset2(ptr noundef nonnull %0, i32 noundef 15) ; 2 uses
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %inflateInit2_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !44
  tail call void %i.v(ptr noundef %i.w, ptr noundef nonnull %i.q) #9, !inline_history !58
  store ptr null, ptr %i.t, align 8, !tbaa !16
  br label %inflateInit2_.exit

inflateInit2_.exit:                               ; preds = %bb.a, %bb.b, %bb.c, %bb.h, %bb.i, %bb.j
  %.0.i = phi i32 [ -4, %bb.h ], [ -6, %bb.a ], [ -2, %bb.c ], [ -6, %bb.b ], [ %i.u, %bb.j ], [ 0, %bb.i ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2, 1) i32 @inflatePrime(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %inflateStateCheck.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %inflateStateCheck.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %inflateStateCheck.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 7 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %inflateStateCheck.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.k, %0
  br i1 %.not.i, label %inflateStateCheck.exit, label %inflateStateCheck.exit.thread

inflateStateCheck.exit:                           ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !21
  %i.n = add i32 %i.m, -16180
  %or.cond.i = icmp ult i32 %i.n, 32
  br i1 %or.cond.i, label %bb.f, label %inflateStateCheck.exit.thread

bb.f:                                             ; preds = %inflateStateCheck.exit
  %i.o = icmp eq i32 %1, 0
  br i1 %i.o, label %inflateStateCheck.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = icmp slt i32 %1, 0
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store i64 0, ptr %i.q, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  store i32 0, ptr %i.r, align 8, !tbaa !33
  br label %inflateStateCheck.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.s = icmp samesign ugt i32 %1, 16
  br i1 %i.s, label %inflateStateCheck.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 88 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !33   ; 2 uses
  %i.v = add i32 %i.u, %1                         ; 2 uses
  %i.w = icmp ugt i32 %i.v, 32
  br i1 %i.w, label %inflateStateCheck.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = zext nneg i32 %1 to i64
  %notmask = shl nsw i64 -1, %i.x
  %i.y = trunc nsw i64 %notmask to i32
  %i.z = xor i32 %i.y, -1
  %i.aa = and i32 %2, %i.z
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = zext nneg i32 %i.u to i64
  %i.ad = shl i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !32
  %i.ag = add i64 %i.af, %i.ad
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !32
  store i32 %i.v, ptr %i.t, align 8, !tbaa !33
  br label %inflateStateCheck.exit.thread

inflateStateCheck.exit.thread:                    ; preds = %bb.e, %bb.b, %bb.c, %bb.a, %bb.d, %bb.i, %bb.j, %bb.f, %inflateStateCheck.exit, %bb.k, %bb.h
  %.0 = phi i32 [ 0, %bb.k ], [ -2, %inflateStateCheck.exit ], [ 0, %bb.h ], [ 0, %bb.f ], [ -2, %bb.j ], [ -2, %bb.i ], [ -2, %bb.d ], [ -2, %bb.a ], [ -2, %bb.c ], [ -2, %bb.b ], [ -2, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @inflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %inflateStateCheck.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %inflateStateCheck.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %inflateStateCheck.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16   ; 38 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %inflateStateCheck.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.l, %0
  br i1 %.not.i, label %inflateStateCheck.exit, label %inflateStateCheck.exit.thread

inflateStateCheck.exit:                           ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 59 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !21   ; 3 uses
  %i.o = add i32 %i.n, -16180
  %or.cond.i = icmp ult i32 %i.o, 32
  br i1 %or.cond.i, label %bb.f, label %inflateStateCheck.exit.thread

bb.f:                                             ; preds = %inflateStateCheck.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !77   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %inflateStateCheck.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !48
  %.not1173 = icmp eq i32 %i.v, 0
  br i1 %.not1173, label %bb.i, label %inflateStateCheck.exit.thread

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.w = icmp eq i32 %i.n, 16191
  br i1 %i.w, label %bb.j, label %.split2339

bb.j:                                             ; preds = %bb.i
  store i32 16192, ptr %i.m, align 8, !tbaa !21
  br label %.split2339

.split2339:                                       ; preds = %bb.i, %bb.j
  %i.x = phi i32 [ %i.n, %bb.i ], [ 16192, %bb.j ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !78   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !48 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 80 ; 5 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 88 ; 6 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 13 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 17 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 26 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 20 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 92 ; 23 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 132 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 136 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 128 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 140 ; 8 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 152 ; 14 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 1368 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 144 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 112 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 104 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 120 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 792 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 664
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 124 ; 3 uses
  %i.bb = icmp eq i32 %1, 6                       ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 7148 ; 11 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 100 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 7152
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 7144
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 68
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 60 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.bm = add i32 %1, -5
  %or.cond3 = icmp ult i32 %i.bm, 2
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 14 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %bb.k

bb.k:                                             ; preds = %.thread, %.split2339
  %i.bs = phi i32 [ %i.x, %.split2339 ], [ %.pre, %.thread ]
  %.01056 = phi ptr [ %i.s, %.split2339 ], [ %.631119, %.thread ] ; 68 uses
  %.01053 = phi ptr [ %i.q, %.split2339 ], [ %.21055, %.thread ] ; 46 uses
  %.0992 = phi i32 [ %i.ab, %.split2339 ], [ %.63, %.thread ] ; 62 uses
  %.0990 = phi i32 [ %i.z, %.split2339 ], [ %.1991, %.thread ] ; 80 uses
  %.0929 = phi i64 [ %i.ad, %.split2339 ], [ %.59988, %.thread ] ; 48 uses
  %.0918 = phi i32 [ %i.af, %.split2339 ], [ %.59, %.thread ] ; 59 uses
  %.0912 = phi i32 [ %i.z, %.split2339 ], [ %.4916, %.thread ] ; 74 uses
  %.0 = phi i32 [ 0, %.split2339 ], [ %.8, %.thread ] ; 49 uses
  %.010533956 = ptrtoaddr ptr %.01053 to i64
  switch i32 %i.bs, label %inflateStateCheck.exit.thread [
    i32 16180, label %bb.l
    i32 16181, label %.preheader1296
    i32 16182, label %bb.ao
    i32 16183, label %bb.ax
    i32 16184, label %bb.be
    i32 16185, label %bb.bo
    i32 16186, label %bb.ca
    i32 16187, label %bb.cn
    i32 16188, label %bb.da
    i32 16189, label %.preheader1300
    i32 16190, label %bb.dm
    i32 16191, label %bb.dp
    i32 16192, label %bb.dq
    i32 16193, label %bb.dy
    i32 16194, label %bb.ef
    i32 16195, label %bb.eg
    i32 16196, label %.preheader1314
    i32 16197, label %.split
    i32 16198, label %._crit_edge2858
    i32 16199, label %bb.fj
    i32 16200, label %bb.fk
    i32 16201, label %._crit_edge2861
    i32 16202, label %bb.fz
    i32 16203, label %._crit_edge2866
    i32 16204, label %bb.gh
    i32 16205, label %bb.gs
    i32 16206, label %bb.gu
    i32 16207, label %._crit_edge2854
    i32 16208, label %.loopexit1277.loopexit4002
    i32 16209, label %.loopexit1277
    i32 16210, label %inflateStateCheck.exit.thread.loopexit
  ]

._crit_edge2866:                                  ; preds = %bb.k
  %.pre2867 = load i32, ptr %i.bd, align 4, !tbaa !79
  br label %bb.gf

._crit_edge2861:                                  ; preds = %bb.k
  %.pre2862 = load i32, ptr %i.bd, align 4, !tbaa !79
  br label %bb.fx

._crit_edge2858:                                  ; preds = %bb.k
  %.promoted1997.pre = load i32, ptr %i.ar, align 4, !tbaa !80
  br label %bb.er

._crit_edge2854:                                  ; preds = %bb.k
  %.pre2855 = load i32, ptr %i.ag, align 8, !tbaa !25
  br label %bb.hh

.preheader1314:                                   ; preds = %bb.k
  %i.bt = icmp ult i32 %.0918, 14
  br i1 %i.bt, label %.lr.ph1772.preheader, label %._crit_edge1773

.lr.ph1772.preheader:                             ; preds = %.preheader1314
  %i.bu = zext nneg i32 %.0918 to i64             ; 4 uses
  %i.bv = icmp eq i32 %.0992, 0
  br i1 %i.bv, label %.loopexit1277.loopexit2359, label %bb.ek

.preheader1300:                                   ; preds = %bb.k
  %i.bw = icmp ult i32 %.0918, 32
  br i1 %i.bw, label %.lr.ph2116.preheader, label %._crit_edge2117

.lr.ph2116.preheader:                             ; preds = %.preheader1300
  %i.bx = zext nneg i32 %.0918 to i64             ; 5 uses
  %i.by = icmp eq i32 %.0992, 0
  br i1 %i.by, label %.loopexit1277.loopexit2350, label %bb.di

.preheader1296:                                   ; preds = %bb.k
  %i.bz = icmp ult i32 %.0918, 16
  br i1 %i.bz, label %.lr.ph2284.preheader, label %._crit_edge2285

.lr.ph2284.preheader:                             ; preds = %.preheader1296
  %i.ca = zext nneg i32 %.0918 to i64             ; 4 uses
  %i.cb = icmp eq i32 %.0992, 0
  br i1 %i.cb, label %.loopexit1277.loopexit2349, label %bb.ae

bb.l:                                             ; preds = %bb.k
  %i.cc = load i32, ptr %i.ag, align 8, !tbaa !25 ; 3 uses
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.m, label %.preheader1286

.preheader1286:                                   ; preds = %bb.l
  %i.ce = icmp ult i32 %.0918, 16
  br i1 %i.ce, label %.lr.ph2333.preheader, label %._crit_edge2334

.lr.ph2333.preheader:                             ; preds = %.preheader1286
  %i.cf = zext nneg i32 %.0918 to i64             ; 4 uses
  %i.cg = icmp eq i32 %.0992, 0
  br i1 %i.cg, label %.loopexit1277.loopexit2344, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 16192, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.n:                                             ; preds = %.lr.ph2333.preheader
  %i.ch = add i32 %.0992, -1                      ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.01056, i64 1 ; 3 uses
  %i.cj = load i8, ptr %.01056, align 1, !tbaa !45
  %i.ck = zext i8 %i.cj to i64
  %i.cl = shl nuw nsw i64 %i.ck, %i.cf
  %i.cm = add i64 %i.cl, %.0929                   ; 3 uses
  %indvars.iv.next2851 = add nuw nsw i64 %i.cf, 8 ; 3 uses
  %i.cn = icmp ult i32 %.0918, 8
  br i1 %i.cn, label %.lr.ph2333.1, label %._crit_edge2334.loopexit

.lr.ph2333.1:                                     ; preds = %bb.n
  %i.co = icmp eq i32 %i.ch, 0
  br i1 %i.co, label %.loopexit1277.loopexit2344, label %bb.o

bb.o:                                             ; preds = %.lr.ph2333.1
  %i.cp = add i32 %.0992, -2
  %i.cq = getelementptr inbounds nuw i8, ptr %.01056, i64 2
  %i.cr = load i8, ptr %i.ci, align 1, !tbaa !45
  %i.cs = zext i8 %i.cr to i64
  %i.ct = shl nuw nsw i64 %i.cs, %indvars.iv.next2851
  %i.cu = add i64 %i.ct, %i.cm
  %indvars.iv.next2851.1 = or disjoint i64 %i.cf, 16
  br label %._crit_edge2334.loopexit

._crit_edge2334.loopexit:                         ; preds = %bb.o, %bb.n
  %.lcssa4205.a = phi i32 [ %i.ch, %bb.n ], [ %i.cp, %bb.o ]
  %.lcssa4204.a = phi ptr [ %i.ci, %bb.n ], [ %i.cq, %bb.o ]
  %.lcssa4203 = phi i64 [ %i.cm, %bb.n ], [ %i.cu, %bb.o ]
  %indvars.iv.next2851.lcssa = phi i64 [ %indvars.iv.next2851, %bb.n ], [ %indvars.iv.next2851.1, %bb.o ]
  %i.cv = trunc nuw nsw i64 %indvars.iv.next2851.lcssa to i32
  br label %._crit_edge2334

._crit_edge2334:                                  ; preds = %._crit_edge2334.loopexit, %.preheader1286
  %.11057.lcssa = phi ptr [ %.01056, %.preheader1286 ], [ %.lcssa4204.a, %._crit_edge2334.loopexit ] ; 5 uses
  %.1993.lcssa = phi i32 [ %.0992, %.preheader1286 ], [ %.lcssa4205.a, %._crit_edge2334.loopexit ] ; 5 uses
  %.1930.lcssa = phi i64 [ %.0929, %.preheader1286 ], [ %.lcssa4203, %._crit_edge2334.loopexit ] ; 8 uses
  %.1919.lcssa = phi i32 [ %.0918, %.preheader1286 ], [ %i.cv, %._crit_edge2334.loopexit ] ; 3 uses
  %i.cw = and i32 %i.cc, 2
  %i.cx = icmp ne i32 %i.cw, 0
  %i.cy = icmp eq i64 %.1930.lcssa, 35615
  %or.cond = select i1 %i.cx, i1 %i.cy, i1 false
  br i1 %or.cond, label %bb.p, label %bb.s

bb.p:                                             ; preds = %._crit_edge2334
  %i.cz = load i32, ptr %i.bp, align 8, !tbaa !43
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 15, ptr %i.bp, align 8, !tbaa !43
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.db = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #9 ; 2 uses
  store i64 %i.db, ptr %i.ak, align 8, !tbaa !49
  store i8 31, ptr %i.a, align 4, !tbaa !45
  store i8 -117, ptr %i.br, align 1, !tbaa !45
  %i.dc = call i64 @crc32(i64 noundef %i.db, ptr noundef nonnull %i.a, i32 noundef 2) #9
  store i64 %i.dc, ptr %i.ak, align 8, !tbaa !49
  store i32 16181, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.s:                                             ; preds = %._crit_edge2334
  %i.dd = load ptr, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %.not1250 = icmp eq ptr %i.dd, null
  br i1 %.not1250, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 72
  store i32 -1, ptr %i.de, align 8, !tbaa !51
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.df = and i32 %i.cc, 1
  %.not1251 = icmp eq i32 %i.df, 0
  br i1 %.not1251, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dg = shl i64 %.1930.lcssa, 8
  %i.dh = and i64 %i.dg, 65280
  %i.di = lshr i64 %.1930.lcssa, 8
  %i.dj = add nuw nsw i64 %i.dh, %i.di
  %i.dk = urem i64 %i.dj, 31
  %.not1252 = icmp eq i64 %i.dk, 0
  br i1 %.not1252, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  store ptr @.str.1, ptr %i.am, align 8, !tbaa !46
  store i32 16209, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.x:                                             ; preds = %bb.v
  %i.dl = and i64 %.1930.lcssa, 15
  %.not1253 = icmp eq i64 %i.dl, 8
  br i1 %.not1253, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr @.str.2, ptr %i.am, align 8, !tbaa !46
  store i32 16209, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.z:                                             ; preds = %bb.x
  %i.dm = lshr i64 %.1930.lcssa, 4                ; 2 uses
  %i.dn = add i32 %.1919.lcssa, -4
  %i.do = trunc i64 %i.dm to i32
  %i.dp = and i32 %i.do, 15                       ; 3 uses
  %i.dq = add nuw nsw i32 %i.dp, 8                ; 3 uses
  %i.dr = load i32, ptr %i.bp, align 8, !tbaa !43 ; 2 uses
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 %i.dq, ptr %i.bp, align 8, !tbaa !43
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dt = phi i32 [ %i.dq, %bb.aa ], [ %i.dr, %bb.z ]
  %i.du = icmp samesign ugt i32 %i.dp, 7
  %i.dv = icmp ugt i32 %i.dq, %i.dt
  %or.cond3401 = select i1 %i.du, i1 true, i1 %i.dv
  br i1 %or.cond3401, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store ptr @.str.3, ptr %i.am, align 8, !tbaa !46
  store i32 16209, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.ad:                                            ; preds = %bb.ab
  %i.dw = shl nuw nsw i32 256, %i.dp
  store i32 %i.dw, ptr %i.bq, align 4, !tbaa !30
  store i32 0, ptr %i.aj, align 8, !tbaa !29
  %i.dx = call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #9 ; 2 uses
  store i64 %i.dx, ptr %i.ak, align 8, !tbaa !49
  store i64 %i.dx, ptr %i.al, align 8, !tbaa !26
  %i.dy = and i64 %.1930.lcssa, 8192
  %.not1254 = icmp eq i64 %i.dy, 0
  %i.dz = select i1 %.not1254, i32 16191, i32 16189
  store i32 %i.dz, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.ae:                                            ; preds = %.lr.ph2284.preheader
  %i.ea = add i32 %.0992, -1                      ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.01056, i64 1 ; 3 uses
  %i.ec = load i8, ptr %.01056, align 1, !tbaa !45
  %i.ed = zext i8 %i.ec to i64
  %i.ee = shl nuw nsw i64 %i.ed, %i.ca
  %i.ef = add i64 %i.ee, %.0929                   ; 3 uses
  %indvars.iv.next2830 = add nuw nsw i64 %i.ca, 8 ; 3 uses
  %i.eg = icmp ult i32 %.0918, 8
  br i1 %i.eg, label %.lr.ph2284.1, label %._crit_edge2285.loopexit

.lr.ph2284.1:                                     ; preds = %bb.ae
  %i.eh = icmp eq i32 %i.ea, 0
  br i1 %i.eh, label %.loopexit1277.loopexit2349, label %bb.af

bb.af:                                            ; preds = %.lr.ph2284.1
  %i.ei = add i32 %.0992, -2
  %i.ej = getelementptr inbounds nuw i8, ptr %.01056, i64 2
  %i.ek = load i8, ptr %i.eb, align 1, !tbaa !45
  %i.el = zext i8 %i.ek to i64
  %i.em = shl nuw nsw i64 %i.el, %indvars.iv.next2830
  %i.en = add i64 %i.em, %i.ef
  %indvars.iv.next2830.1 = or disjoint i64 %i.ca, 16
  br label %._crit_edge2285.loopexit

._crit_edge2285.loopexit:                         ; preds = %bb.af, %bb.ae
  %.lcssa4173.a = phi i32 [ %i.ea, %bb.ae ], [ %i.ei, %bb.af ]
  %.lcssa4172.a = phi ptr [ %i.eb, %bb.ae ], [ %i.ej, %bb.af ]
  %.lcssa4171 = phi i64 [ %i.ef, %bb.ae ], [ %i.en, %bb.af ]
  %indvars.iv.next2830.lcssa = phi i64 [ %indvars.iv.next2830, %bb.ae ], [ %indvars.iv.next2830.1, %bb.af ]
  %i.eo = trunc nuw nsw i64 %indvars.iv.next2830.lcssa to i32
  br label %._crit_edge2285

._crit_edge2285:                                  ; preds = %._crit_edge2285.loopexit, %.preheader1296
  %.21058.lcssa = phi ptr [ %.01056, %.preheader1296 ], [ %.lcssa4172.a, %._crit_edge2285.loopexit ] ; 3 uses
  %.2994.lcssa = phi i32 [ %.0992, %.preheader1296 ], [ %.lcssa4173.a, %._crit_edge2285.loopexit ] ; 3 uses
  %.2931.lcssa = phi i64 [ %.0929, %.preheader1296 ], [ %.lcssa4171, %._crit_edge2285.loopexit ] ; 4 uses
  %.2920.lcssa = phi i32 [ %.0918, %.preheader1296 ], [ %i.eo, %._crit_edge2285.loopexit ] ; 2 uses
  %i.ep = trunc i64 %.2931.lcssa to i32           ; 5 uses
  store i32 %i.ep, ptr %i.aj, align 8, !tbaa !29
  %i.eq = and i32 %i.ep, 255
  %.not1211 = icmp eq i32 %i.eq, 8
  br i1 %.not1211, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge2285
  store ptr @.str.2, ptr %i.am, align 8, !tbaa !46
  store i32 16209, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.ah:                                            ; preds = %._crit_edge2285
  %i.er = and i32 %i.ep, 57344
  %.not1212 = icmp eq i32 %i.er, 0
  br i1 %.not1212, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store ptr @.str.4, ptr %i.am, align 8, !tbaa !46
  store i32 16209, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.aj:                                            ; preds = %bb.ah
  %i.es = load ptr, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %.not1213 = icmp eq ptr %i.es, null
  br i1 %.not1213, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.et = lshr i32 %i.ep, 8
  %i.eu = and i32 %i.et, 1
  store i32 %i.eu, ptr %i.es, align 8, !tbaa !81
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ev = and i32 %i.ep, 512
  %.not1214 = icmp eq i32 %i.ev, 0
  br i1 %.not1214, label %.thread2936, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ew = load i32, ptr %i.ag, align 8, !tbaa !25
  %i.ex = and i32 %i.ew, 4
  %.not1215 = icmp eq i32 %i.ex, 0
  br i1 %.not1215, label %.thread2936, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ey = trunc i64 %.2931.lcssa to i16
  store i16 %i.ey, ptr %i.a, align 4
  %i.ez = load i64, ptr %i.ak, align 8, !tbaa !49
  %i.fa = call i64 @crc32(i64 noundef %i.ez, ptr noundef nonnull %i.a, i32 noundef 2) #9
  store i64 %i.fa, ptr %i.ak, align 8, !tbaa !49
  br label %.thread2936

.thread2936:                                      ; preds = %bb.an, %bb.am, %bb.al
  store i32 16182, ptr %i.m, align 8, !tbaa !21
  br label %.lr.ph2295.preheader

bb.ao:                                            ; preds = %bb.k
  %i.fb = icmp ult i32 %.0918, 32
  br i1 %i.fb, label %.lr.ph2295.preheader, label %._crit_edge2296

.lr.ph2295.preheader:                             ; preds = %.thread2936, %bb.ao
  %.39212944 = phi i32 [ 0, %.thread2936 ], [ %.0918, %bb.ao ] ; 4 uses
  %.39322943 = phi i64 [ 0, %.thread2936 ], [ %.0929, %bb.ao ] ; 2 uses
  %.39952942 = phi i32 [ %.2994.lcssa, %.thread2936 ], [ %.0992, %bb.ao ] ; 5 uses
  %.310592941 = phi ptr [ %.21058.lcssa, %.thread2936 ], [ %.01056, %bb.ao ] ; 6 uses
  %i.fc = zext nneg i32 %.39212944 to i64         ; 5 uses
  %i.fd = icmp eq i32 %.39952942, 0
  br i1 %i.fd, label %.loopexit1277.loopexit2348, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph2295.preheader
  %i.fe = add i32 %.39952942, -1                  ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.310592941, i64 1 ; 3 uses
  %i.fg = load i8, ptr %.310592941, align 1, !tbaa !45
  %i.fh = zext i8 %i.fg to i64
  %i.fi = shl nuw nsw i64 %i.fh, %i.fc
  %i.fj = add i64 %i.fi, %.39322943               ; 3 uses
  %indvars.iv.next2833 = add nuw nsw i64 %i.fc, 8 ; 2 uses
  %i.fk = icmp samesign ult i32 %.39212944, 24
  br i1 %i.fk, label %.lr.ph2295.1, label %._crit_edge2296

.lr.ph2295.1:                                     ; preds = %bb.ap
  %i.fl = icmp eq i32 %i.fe, 0
  br i1 %i.fl, label %.loopexit1277.loopexit2348, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph2295.1
  %i.fm = add i32 %.39952942, -2                  ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.310592941, i64 2 ; 3 uses
  %i.fo = load i8, ptr %i.ff, align 1, !tbaa !45
  %i.fp = zext i8 %i.fo to i64
  %i.fq = shl nuw nsw i64 %i.fp, %indvars.iv.next2833
  %i.fr = add i64 %i.fq, %i.fj                    ; 3 uses
  %indvars.iv.next2833.1 = add nuw nsw i64 %i.fc, 16 ; 2 uses
  %i.fs = icmp samesign ult i32 %.39212944, 16
  br i1 %i.fs, label %.lr.ph2295.2, label %._crit_edge2296

.lr.ph2295.2:                                     ; preds = %bb.aq
  %i.ft = icmp eq i32 %i.fm, 0
  br i1 %i.ft, label %.loopexit1277.loopexit2348, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph2295.2
  %i.fu = add i32 %.39952942, -3                  ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.310592941, i64 3 ; 3 uses
  %i.fw = load i8, ptr %i.fn, align 1, !tbaa !45
  %i.fx = zext i8 %i.fw to i64
  %i.fy = shl nuw nsw i64 %i.fx, %indvars.iv.next2833.1
  %i.fz = add i64 %i.fy, %i.fr                    ; 3 uses
  %indvars.iv.next2833.2 = add nuw nsw i64 %i.fc, 24 ; 2 uses
  %i.ga = icmp samesign ult i32 %.39212944, 8
  br i1 %i.ga, label %.lr.ph2295.3, label %._crit_edge2296

.lr.ph2295.3:                                     ; preds = %bb.ar
  %i.gb = icmp eq i32 %i.fu, 0
  br i1 %i.gb, label %.loopexit1277.loopexit2348, label %bb.as

bb.as:                                            ; preds = %.lr.ph2295.3
  %i.gc = add i32 %.39952942, -4
  %i.gd = getelementptr inbounds nuw i8, ptr %.310592941, i64 4
  %i.ge = load i8, ptr %i.fv, align 1, !tbaa !45
  %i.gf = zext i8 %i.ge to i64
  %i.gg = shl nuw nsw i64 %i.gf, %indvars.iv.next2833.2
  %i.gh = add i64 %i.gg, %i.fz
  br label %._crit_edge2296

._crit_edge2296:                                  ; preds = %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.ao
  %.41060.lcssa = phi ptr [ %.01056, %bb.ao ], [ %i.ff, %bb.ap ], [ %i.fn, %bb.aq ], [ %i.fv, %bb.ar ], [ %i.gd, %bb.as ]
  %.4996.lcssa = phi i32 [ %.0992, %bb.ao ], [ %i.fe, %bb.ap ], [ %i.fm, %bb.aq ], [ %i.fu, %bb.ar ], [ %i.gc, %bb.as ]
  %.4933.lcssa = phi i64 [ %.0929, %bb.ao ], [ %i.fj, %bb.ap ], [ %i.fr, %bb.aq ], [ %i.fz, %bb.ar ], [ %i.gh, %bb.as ] ; 2 uses
  %i.gi = load ptr, ptr %i.bo, align 8, !tbaa !31 ; 2 uses
  %.not1216 = icmp eq ptr %i.gi, null
  br i1 %.not1216, label %bb.au, label %bb.at

bb.at:                                            ; preds = %._crit_edge2296
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store i64 %.4933.lcssa, ptr %i.gj, align 8, !tbaa !82
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %._crit_edge2296
  %i.gk = load i32, ptr %i.aj, align 8, !tbaa !29
  %i.gl = and i32 %i.gk, 512
  %.not1217 = icmp eq i32 %i.gl, 0
  br i1 %.not1217, label %.thread2945, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gm = load i32, ptr %i.ag, align 8, !tbaa !25
  %i.gn = and i32 %i.gm, 4
  %.not1218 = icmp eq i32 %i.gn, 0
  br i1 %.not1218, label %.thread2945, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.go = trunc i64 %.4933.lcssa to i32
  store i32 %i.go, ptr %i.a, align 4
  %i.gp = load i64, ptr %i.ak, align 8, !tbaa !49
  %i.gq = call i64 @crc32(i64 noundef %i.gp, ptr noundef nonnull %i.a, i32 noundef 4) #9
  store i64 %i.gq, ptr %i.ak, align 8, !tbaa !49
  br label %.thread2945

.thread2945:                                      ; preds = %bb.aw, %bb.av, %bb.au
  store i32 16183, ptr %i.m, align 8, !tbaa !21
  br label %.lr.ph2305.preheader

bb.ax:                                            ; preds = %bb.k
  %i.gr = icmp ult i32 %.0918, 16
end_hunk_0
begin_hunk_1_@inflate:bb.a
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.gy, %bb.gx, %bb.gw, %bb.gv
  %.lcssa4014.a = phi i32 [ %i.ala, %bb.gv ], [ %i.ali, %bb.gw ], [ %i.alq, %bb.gx ], [ %i.aly, %bb.gy ]
  %.lcssa4013.a = phi ptr [ %i.alb, %bb.gv ], [ %i.alj, %bb.gw ], [ %i.alr, %bb.gx ], [ %i.alz, %bb.gy ]
  %.lcssa4012 = phi i64 [ %i.alf, %bb.gv ], [ %i.aln, %bb.gw ], [ %i.alv, %bb.gx ], [ %i.amd, %bb.gy ]
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next, %bb.gv ], [ %indvars.iv.next.1, %bb.gw ], [ %indvars.iv.next.2, %bb.gx ], [ %indvars.iv.next.3, %bb.gy ]
  %i.ame = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader1318
  %.571113.lcssa = phi ptr [ %.01056, %.preheader1318 ], [ %.lcssa4013.a, %._crit_edge.loopexit ] ; 3 uses
  %.571049.lcssa = phi i32 [ %.0992, %.preheader1318 ], [ %.lcssa4014.a, %._crit_edge.loopexit ] ; 3 uses
  %.53982.lcssa = phi i64 [ %.0929, %.preheader1318 ], [ %.lcssa4012, %._crit_edge.loopexit ] ; 3 uses
  %.53.lcssa = phi i32 [ %.0918, %.preheader1318 ], [ %i.ame, %._crit_edge.loopexit ]
  %i.amf = sub i32 %.0912, %.0990                 ; 3 uses
  %i.amg = zext i32 %i.amf to i64                 ; 3 uses
  %i.amh = load i64, ptr %i.ah, align 8, !tbaa !56
  %i.ami = add i64 %i.amh, %i.amg
  store i64 %i.ami, ptr %i.ah, align 8, !tbaa !56
  %i.amj = load i64, ptr %i.ai, align 8, !tbaa !22
  %i.amk = add i64 %i.amj, %i.amg
  store i64 %i.amk, ptr %i.ai, align 8, !tbaa !22
  %i.aml = and i32 %i.akw, 4                      ; 2 uses
  %i.amm = icmp ne i32 %i.aml, 0
  %i.amn = icmp ne i32 %.0912, %.0990
  %or.cond7 = select i1 %i.amm, i1 %i.amn, i1 false
  br i1 %or.cond7, label %bb.gz, label %bb.hd

bb.gz:                                            ; preds = %._crit_edge
  %i.amo = load i32, ptr %i.aj, align 8, !tbaa !29
  %.not1175 = icmp eq i32 %i.amo, 0
  %i.amp = load i64, ptr %i.ak, align 8, !tbaa !49 ; 2 uses
  %i.amq = sub nsw i64 0, %i.amg
  %i.amr = getelementptr inbounds i8, ptr %.01053, i64 %i.amq ; 2 uses
  br i1 %.not1175, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.ams = call i64 @crc32(i64 noundef %i.amp, ptr noundef %i.amr, i32 noundef %i.amf) #9
  br label %bb.hc

bb.hb:                                            ; preds = %bb.gz
  %i.amt = call i64 @adler32(i64 noundef %i.amp, ptr noundef %i.amr, i32 noundef %i.amf) #9
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  %i.amu = phi i64 [ %i.ams, %bb.ha ], [ %i.amt, %bb.hb ] ; 2 uses
  store i64 %i.amu, ptr %i.ak, align 8, !tbaa !49
  store i64 %i.amu, ptr %i.al, align 8, !tbaa !26
  %.pre2853 = load i32, ptr %i.ag, align 8, !tbaa !25 ; 2 uses
  %.pre2873 = and i32 %.pre2853, 4
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %._crit_edge
  %.pre-phi = phi i32 [ %.pre2873, %bb.hc ], [ %i.aml, %._crit_edge ]
  %i.amv = phi i32 [ %.pre2853, %bb.hc ], [ %i.akw, %._crit_edge ] ; 2 uses
  %.not1176 = icmp eq i32 %.pre-phi, 0
  br i1 %.not1176, label %bb.hg, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.amw = load i32, ptr %i.aj, align 8, !tbaa !29
  %.not1177 = icmp eq i32 %i.amw, 0
  %trunc = trunc i64 %.53982.lcssa to i32
  %rev = call i32 @llvm.bswap.i32(i32 %trunc)
  %i.amx = zext i32 %rev to i64
  %i.amy = select i1 %.not1177, i64 %i.amx, i64 %.53982.lcssa
  %i.amz = load i64, ptr %i.ak, align 8, !tbaa !49
  %.not1178 = icmp eq i64 %i.amy, %i.amz
  br i1 %.not1178, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  store ptr @.str.17, ptr %i.am, align 8, !tbaa !46
  store i32 16209, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.hg:                                            ; preds = %bb.he, %bb.hd, %bb.gu
  %i.ana = phi i32 [ 0, %bb.gu ], [ %i.amv, %bb.hd ], [ %i.amv, %bb.he ]
  %.581114 = phi ptr [ %.01056, %bb.gu ], [ %.571113.lcssa, %bb.hd ], [ %.571113.lcssa, %bb.he ]
  %.581050 = phi i32 [ %.0992, %bb.gu ], [ %.571049.lcssa, %bb.hd ], [ %.571049.lcssa, %bb.he ]
  %.54983 = phi i64 [ %.0929, %bb.gu ], [ 0, %bb.hd ], [ 0, %bb.he ]
  %.54 = phi i32 [ %.0918, %bb.gu ], [ 0, %bb.hd ], [ 0, %bb.he ]
  %.1913 = phi i32 [ %.0912, %bb.gu ], [ %.0990, %bb.hd ], [ %.0990, %bb.he ]
  store i32 16207, ptr %i.m, align 8, !tbaa !21
  br label %bb.hh

bb.hh:                                            ; preds = %._crit_edge2854, %bb.hg
  %i.anb = phi i32 [ %i.ana, %bb.hg ], [ %.pre2855, %._crit_edge2854 ] ; 2 uses
  %.591115 = phi ptr [ %.581114, %bb.hg ], [ %.01056, %._crit_edge2854 ] ; 9 uses
  %.591051 = phi i32 [ %.581050, %bb.hg ], [ %.0992, %._crit_edge2854 ] ; 8 uses
  %.55984 = phi i64 [ %.54983, %bb.hg ], [ %.0929, %._crit_edge2854 ] ; 5 uses
  %.55 = phi i32 [ %.54, %bb.hg ], [ %.0918, %._crit_edge2854 ] ; 8 uses
  %.2914 = phi i32 [ %.1913, %bb.hg ], [ %.0912, %._crit_edge2854 ] ; 3 uses
  %.not1179 = icmp eq i32 %i.anb, 0
  br i1 %.not1179, label %bb.hp, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.anc = load i32, ptr %i.aj, align 8, !tbaa !29
  %.not1180 = icmp eq i32 %i.anc, 0
  br i1 %.not1180, label %bb.hp, label %.preheader1316

.preheader1316:                                   ; preds = %bb.hi
  %i.and = icmp ult i32 %.55, 32
  br i1 %i.and, label %.lr.ph1762.preheader, label %._crit_edge1763

.lr.ph1762.preheader:                             ; preds = %.preheader1316
  %i.ane = zext nneg i32 %.55 to i64              ; 6 uses
  %i.anf = icmp eq i32 %.591051, 0
  br i1 %i.anf, label %.loopexit1277.loopexit2360, label %bb.hj

bb.hj:                                            ; preds = %.lr.ph1762.preheader
  %i.ang = add i32 %.591051, -1                   ; 2 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %.591115, i64 1 ; 3 uses
  %i.ani = load i8, ptr %.591115, align 1, !tbaa !45
  %i.anj = zext i8 %i.ani to i64
  %i.ank = shl nuw nsw i64 %i.anj, %i.ane
  %i.anl = add i64 %i.ank, %.55984                ; 3 uses
  %indvars.iv.next2781 = add nuw nsw i64 %i.ane, 8 ; 3 uses
  %i.anm = icmp ult i32 %.55, 24
  br i1 %i.anm, label %.lr.ph1762.1, label %._crit_edge1763.loopexit

.lr.ph1762.1:                                     ; preds = %bb.hj
  %i.ann = icmp eq i32 %i.ang, 0
  br i1 %i.ann, label %.loopexit1277.loopexit2360, label %bb.hk

bb.hk:                                            ; preds = %.lr.ph1762.1
  %i.ano = add i32 %.591051, -2                   ; 2 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %.591115, i64 2 ; 3 uses
  %i.anq = load i8, ptr %i.anh, align 1, !tbaa !45
  %i.anr = zext i8 %i.anq to i64
  %i.ans = shl nuw nsw i64 %i.anr, %indvars.iv.next2781
  %i.ant = add i64 %i.ans, %i.anl                 ; 3 uses
  %indvars.iv.next2781.1 = add nuw nsw i64 %i.ane, 16 ; 3 uses
  %i.anu = icmp ult i32 %.55, 16
  br i1 %i.anu, label %.lr.ph1762.2, label %._crit_edge1763.loopexit

.lr.ph1762.2:                                     ; preds = %bb.hk
  %i.anv = icmp eq i32 %i.ano, 0
  br i1 %i.anv, label %.loopexit1277.loopexit2360, label %bb.hl

bb.hl:                                            ; preds = %.lr.ph1762.2
  %i.anw = add i32 %.591051, -3                   ; 2 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %.591115, i64 3 ; 3 uses
  %i.any = load i8, ptr %i.anp, align 1, !tbaa !45
  %i.anz = zext i8 %i.any to i64
  %i.aoa = shl nuw nsw i64 %i.anz, %indvars.iv.next2781.1
  %i.aob = add i64 %i.aoa, %i.ant                 ; 3 uses
  %indvars.iv.next2781.2 = add nuw nsw i64 %i.ane, 24 ; 3 uses
  %i.aoc = icmp ult i32 %.55, 8
  br i1 %i.aoc, label %.lr.ph1762.3, label %._crit_edge1763.loopexit

.lr.ph1762.3:                                     ; preds = %bb.hl
  %i.aod = icmp eq i32 %i.anw, 0
  br i1 %i.aod, label %.loopexit1277.loopexit2360, label %bb.hm

bb.hm:                                            ; preds = %.lr.ph1762.3
  %i.aoe = add i32 %.591051, -4
  %i.aof = getelementptr inbounds nuw i8, ptr %.591115, i64 4
  %i.aog = load i8, ptr %i.anx, align 1, !tbaa !45
  %i.aoh = zext i8 %i.aog to i64
  %i.aoi = shl nuw nsw i64 %i.aoh, %indvars.iv.next2781.2
  %i.aoj = add i64 %i.aoi, %i.aob
  %indvars.iv.next2781.3 = or disjoint i64 %i.ane, 32
  br label %._crit_edge1763.loopexit

._crit_edge1763.loopexit:                         ; preds = %bb.hm, %bb.hl, %bb.hk, %bb.hj
  %.lcssa4020.a = phi i32 [ %i.ang, %bb.hj ], [ %i.ano, %bb.hk ], [ %i.anw, %bb.hl ], [ %i.aoe, %bb.hm ]
  %.lcssa4019.a = phi ptr [ %i.anh, %bb.hj ], [ %i.anp, %bb.hk ], [ %i.anx, %bb.hl ], [ %i.aof, %bb.hm ]
  %.lcssa4018 = phi i64 [ %i.anl, %bb.hj ], [ %i.ant, %bb.hk ], [ %i.aob, %bb.hl ], [ %i.aoj, %bb.hm ]
  %indvars.iv.next2781.lcssa = phi i64 [ %indvars.iv.next2781, %bb.hj ], [ %indvars.iv.next2781.1, %bb.hk ], [ %indvars.iv.next2781.2, %bb.hl ], [ %indvars.iv.next2781.3, %bb.hm ]
  %i.aok = trunc nuw nsw i64 %indvars.iv.next2781.lcssa to i32
  br label %._crit_edge1763

._crit_edge1763:                                  ; preds = %._crit_edge1763.loopexit, %.preheader1316
  %.601116.lcssa = phi ptr [ %.591115, %.preheader1316 ], [ %.lcssa4019.a, %._crit_edge1763.loopexit ] ; 3 uses
  %.601052.lcssa = phi i32 [ %.591051, %.preheader1316 ], [ %.lcssa4020.a, %._crit_edge1763.loopexit ] ; 3 uses
  %.56985.lcssa = phi i64 [ %.55984, %.preheader1316 ], [ %.lcssa4018, %._crit_edge1763.loopexit ] ; 2 uses
  %.56.lcssa = phi i32 [ %.55, %.preheader1316 ], [ %i.aok, %._crit_edge1763.loopexit ]
  %i.aol = and i32 %i.anb, 4
  %.not1181 = icmp eq i32 %i.aol, 0
  br i1 %.not1181, label %bb.hp, label %bb.hn

bb.hn:                                            ; preds = %._crit_edge1763
  %i.aom = load i64, ptr %i.ai, align 8, !tbaa !22
  %i.aon = and i64 %i.aom, 4294967295
  %.not1182 = icmp eq i64 %.56985.lcssa, %i.aon
  br i1 %.not1182, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  store ptr @.str.18, ptr %i.am, align 8, !tbaa !46
  store i32 16209, ptr %i.m, align 8, !tbaa !21
  br label %.thread

bb.hp:                                            ; preds = %bb.hn, %._crit_edge1763, %bb.hi, %bb.hh
  %.611117 = phi ptr [ %.591115, %bb.hh ], [ %.591115, %bb.hi ], [ %.601116.lcssa, %._crit_edge1763 ], [ %.601116.lcssa, %bb.hn ]
  %.61 = phi i32 [ %.591051, %bb.hh ], [ %.591051, %bb.hi ], [ %.601052.lcssa, %._crit_edge1763 ], [ %.601052.lcssa, %bb.hn ]
  %.57986 = phi i64 [ %.55984, %bb.hh ], [ %.55984, %bb.hi ], [ 0, %._crit_edge1763 ], [ 0, %bb.hn ]
  %.57 = phi i32 [ %.55, %bb.hh ], [ %.55, %bb.hi ], [ 0, %._crit_edge1763 ], [ 0, %bb.hn ]
  store i32 16208, ptr %i.m, align 8, !tbaa !21
  br label %.loopexit1277

.thread:                                          ; preds = %bb.ew, %bb.fb, %.loopexit3996, %bb.gr, %bb.fl, %bb.fm, %bb.ho, %bb.hf, %bb.gt, %bb.gl, %bb.gd, %bb.fv, %bb.ft, %bb.fr, %bb.fh, %bb.ff, %bb.fd, %bb.ep, %bb.em, %bb.ej, %bb.ei, %bb.ed, %bb.dx, %bb.dr, %bb.dh, %bb.de, %bb.ai, %bb.ag, %bb.ad, %bb.ac, %bb.y, %bb.w, %bb.r, %bb.m
  %.631119 = phi ptr [ %.01056, %bb.m ], [ %.11057.lcssa, %bb.r ], [ %.11057.lcssa, %bb.w ], [ %.11057.lcssa, %bb.y ], [ %.11057.lcssa, %bb.ac ], [ %.11057.lcssa, %bb.ad ], [ %.21058.lcssa, %bb.ag ], [ %.21058.lcssa, %bb.ai ], [ %.181074.lcssa, %bb.de ], [ %.191075, %bb.dh ], [ %.231079, %bb.dr ], [ %.241080.lcssa, %bb.dx ], [ %.251081.lcssa, %bb.ed ], [ %i.rx, %bb.ei ], [ %.271083, %bb.ej ], [ %.281084.lcssa, %bb.em ], [ %.301086.lcssa, %bb.ep ], [ %.351091.lcssa, %bb.ew ], [ %.331089.lcssa, %bb.fd ], [ %.331089.lcssa, %bb.ff ], [ %.331089.lcssa, %bb.fh ], [ %i.aai, %bb.fm ], [ %i.aai, %bb.fl ], [ %.451101, %bb.fr ], [ %.451101, %bb.ft ], [ %.451101, %bb.fv ], [ %.521108, %bb.gd ], [ %.561112, %bb.gl ], [ %.561112, %bb.gr ], [ %.561112, %.loopexit3996 ], [ %.01056, %bb.gt ], [ %.571113.lcssa, %bb.hf ], [ %.601116.lcssa, %bb.ho ], [ %.381094, %bb.fb ]
  %.21055 = phi ptr [ %.01053, %bb.m ], [ %.01053, %bb.r ], [ %.01053, %bb.w ], [ %.01053, %bb.y ], [ %.01053, %bb.ac ], [ %.01053, %bb.ad ], [ %.01053, %bb.ag ], [ %.01053, %bb.ai ], [ %.01053, %bb.de ], [ %.01053, %bb.dh ], [ %.01053, %bb.dr ], [ %.01053, %bb.dx ], [ %.01053, %bb.ed ], [ %i.rz, %bb.ei ], [ %.01053, %bb.ej ], [ %.01053, %bb.em ], [ %.01053, %bb.ep ], [ %.01053, %bb.ew ], [ %.01053, %bb.fd ], [ %.01053, %bb.ff ], [ %.01053, %bb.fh ], [ %i.aag, %bb.fm ], [ %i.aag, %bb.fl ], [ %.01053, %bb.fr ], [ %.01053, %bb.ft ], [ %.01053, %bb.fv ], [ %.01053, %bb.gd ], [ %.01053, %bb.gl ], [ %.lcssa3510, %bb.gr ], [ %.lcssa3510, %.loopexit3996 ], [ %i.aku, %bb.gt ], [ %.01053, %bb.hf ], [ %.01053, %bb.ho ], [ %.01053, %bb.fb ]
  %.63 = phi i32 [ %.0992, %bb.m ], [ %.1993.lcssa, %bb.r ], [ %.1993.lcssa, %bb.w ], [ %.1993.lcssa, %bb.y ], [ %.1993.lcssa, %bb.ac ], [ %.1993.lcssa, %bb.ad ], [ %.2994.lcssa, %bb.ag ], [ %.2994.lcssa, %bb.ai ], [ %.181010.lcssa, %bb.de ], [ %.191011, %bb.dh ], [ %.231015, %bb.dr ], [ %.241016.lcssa, %bb.dx ], [ %.251017.lcssa, %bb.ed ], [ %i.rw, %bb.ei ], [ %.271019, %bb.ej ], [ %.281020.lcssa, %bb.em ], [ %.301022.lcssa, %bb.ep ], [ %.351027.lcssa, %bb.ew ], [ %.331025.lcssa, %bb.fd ], [ %.331025.lcssa, %bb.ff ], [ %.331025.lcssa, %bb.fh ], [ %i.aaj, %bb.fm ], [ %i.aaj, %bb.fl ], [ %.451037, %bb.fr ], [ %.451037, %bb.ft ], [ %.451037, %bb.fv ], [ %.521044, %bb.gd ], [ %.561048, %bb.gl ], [ %.561048, %bb.gr ], [ %.561048, %.loopexit3996 ], [ %.0992, %bb.gt ], [ %.571049.lcssa, %bb.hf ], [ %.601052.lcssa, %bb.ho ], [ %.381030, %bb.fb ]
  %.1991 = phi i32 [ %.0990, %bb.m ], [ %.0990, %bb.r ], [ %.0990, %bb.w ], [ %.0990, %bb.y ], [ %.0990, %bb.ac ], [ %.0990, %bb.ad ], [ %.0990, %bb.ag ], [ %.0990, %bb.ai ], [ %.0990, %bb.de ], [ %.0990, %bb.dh ], [ %.0990, %bb.dr ], [ %.0990, %bb.dx ], [ %.0990, %bb.ed ], [ %i.ry, %bb.ei ], [ %.0990, %bb.ej ], [ %.0990, %bb.em ], [ %.0990, %bb.ep ], [ %.0990, %bb.ew ], [ %.0990, %bb.fd ], [ %.0990, %bb.ff ], [ %.0990, %bb.fh ], [ %i.aah, %bb.fm ], [ %i.aah, %bb.fl ], [ %.0990, %bb.fr ], [ %.0990, %bb.ft ], [ %.0990, %bb.fv ], [ %.0990, %bb.gd ], [ %.0990, %bb.gl ], [ %i.ako, %bb.gr ], [ %i.ako, %.loopexit3996 ], [ %i.akv, %bb.gt ], [ %.0990, %bb.hf ], [ %.0990, %bb.ho ], [ %.0990, %bb.fb ]
  %.59988 = phi i64 [ %.0929, %bb.m ], [ 0, %bb.r ], [ %.1930.lcssa, %bb.w ], [ %.1930.lcssa, %bb.y ], [ %i.dm, %bb.ac ], [ 0, %bb.ad ], [ %.2931.lcssa, %bb.ag ], [ %.2931.lcssa, %bb.ai ], [ %.14943.lcssa, %bb.de ], [ %.15944, %bb.dh ], [ %i.pk, %bb.dr ], [ %i.qa, %bb.dx ], [ %.21950.lcssa, %bb.ed ], [ %.23952, %bb.ei ], [ %.23952, %bb.ej ], [ %i.ta, %bb.em ], [ %.26955.lcssa, %bb.ep ], [ %i.wp, %bb.ew ], [ %.29958.lcssa, %bb.fd ], [ %.29958.lcssa, %bb.ff ], [ %.29958.lcssa, %bb.fh ], [ %i.aak, %bb.fm ], [ %i.aak, %bb.fl ], [ %i.acy, %bb.fr ], [ %i.acy, %bb.ft ], [ %i.acy, %bb.fv ], [ %i.agr, %bb.gd ], [ %.52981, %bb.gl ], [ %.52981, %bb.gr ], [ %.52981, %.loopexit3996 ], [ %.0929, %bb.gt ], [ %.53982.lcssa, %bb.hf ], [ %.56985.lcssa, %bb.ho ], [ %.34963, %bb.fb ]
  %.59 = phi i32 [ %.0918, %bb.m ], [ 0, %bb.r ], [ %.1919.lcssa, %bb.w ], [ %.1919.lcssa, %bb.y ], [ %i.dn, %bb.ac ], [ 0, %bb.ad ], [ %.2920.lcssa, %bb.ag ], [ %.2920.lcssa, %bb.ai ], [ %.14.lcssa, %bb.de ], [ %.15, %bb.dh ], [ %i.pl, %bb.dr ], [ %i.qb, %bb.dx ], [ %.21.lcssa, %bb.ed ], [ %.23, %bb.ei ], [ %.23, %bb.ej ], [ %i.tb, %bb.em ], [ %.26.lcssa, %bb.ep ], [ %i.wq, %bb.ew ], [ %.29.lcssa, %bb.fd ], [ %.29.lcssa, %bb.ff ], [ %.29.lcssa, %bb.fh ], [ %i.aal, %bb.fm ], [ %i.aal, %bb.fl ], [ %i.acz, %bb.fr ], [ %i.acz, %bb.ft ], [ %i.acz, %bb.fv ], [ %i.ags, %bb.gd ], [ %.52, %bb.gl ], [ %.52, %bb.gr ], [ %.52, %.loopexit3996 ], [ %.0918, %bb.gt ], [ %.53.lcssa, %bb.hf ], [ %.56.lcssa, %bb.ho ], [ %.34, %bb.fb ]
  %.4916 = phi i32 [ %.0912, %bb.m ], [ %.0912, %bb.r ], [ %.0912, %bb.w ], [ %.0912, %bb.y ], [ %.0912, %bb.ac ], [ %.0912, %bb.ad ], [ %.0912, %bb.ag ], [ %.0912, %bb.ai ], [ %.0912, %bb.de ], [ %.0912, %bb.dh ], [ %.0912, %bb.dr ], [ %.0912, %bb.dx ], [ %.0912, %bb.ed ], [ %.0912, %bb.ei ], [ %.0912, %bb.ej ], [ %.0912, %bb.em ], [ %.0912, %bb.ep ], [ %.0912, %bb.ew ], [ %.0912, %bb.fd ], [ %.0912, %bb.ff ], [ %.0912, %bb.fh ], [ %.0912, %bb.fm ], [ %.0912, %bb.fl ], [ %.0912, %bb.fr ], [ %.0912, %bb.ft ], [ %.0912, %bb.fv ], [ %.0912, %bb.gd ], [ %.0912, %bb.gl ], [ %.0912, %bb.gr ], [ %.0912, %.loopexit3996 ], [ %.0912, %bb.gt ], [ %.0990, %bb.hf ], [ %.2914, %bb.ho ], [ %.0912, %bb.fb ]
  %.8 = phi i32 [ %.0, %bb.m ], [ %.0, %bb.r ], [ %.0, %bb.w ], [ %.0, %bb.y ], [ %.0, %bb.ac ], [ %.0, %bb.ad ], [ %.0, %bb.ag ], [ %.0, %bb.ai ], [ %.0, %bb.de ], [ %.0, %bb.dh ], [ %.0, %bb.dr ], [ %.0, %bb.dx ], [ %.0, %bb.ed ], [ %.0, %bb.ei ], [ %.0, %bb.ej ], [ %.0, %bb.em ], [ %i.uh, %bb.ep ], [ %.1, %bb.ew ], [ %.1, %bb.fd ], [ %i.zx, %bb.ff ], [ %i.aad, %bb.fh ], [ %.3, %bb.fm ], [ %.3, %bb.fl ], [ %.3, %bb.fr ], [ %.3, %bb.ft ], [ %.3, %bb.fv ], [ %.5, %bb.gd ], [ %.7, %bb.gl ], [ %.7, %bb.gr ], [ %.7, %.loopexit3996 ], [ %.0, %bb.gt ], [ %.0, %bb.hf ], [ %.0, %bb.ho ], [ %.1, %bb.fb ]
  %.pre = load i32, ptr %i.m, align 8, !tbaa !21
  br label %bb.k

.loopexit1277.loopexit:                           ; preds = %.lr.ph1988
  %i.aoo = trunc nuw nsw i64 %indvars.iv2803 to i32
  br label %.loopexit1277

.loopexit1277.loopexit2341:                       ; preds = %.lr.ph1978
  %i.aop = trunc nuw nsw i64 %indvars.iv2800 to i32
  br label %.loopexit1277

.loopexit1277.loopexit2342:                       ; preds = %.lr.ph1968
  %i.aoq = trunc nuw nsw i64 %indvars.iv2797 to i32
  br label %.loopexit1277

.loopexit1277.loopexit2344:                       ; preds = %.lr.ph2333.1, %.lr.ph2333.preheader
  %indvars.iv2850.lcssa = phi i64 [ %i.cf, %.lr.ph2333.preheader ], [ %indvars.iv.next2851, %.lr.ph2333.1 ]
  %.19302331.lcssa = phi i64 [ %.0929, %.lr.ph2333.preheader ], [ %i.cm, %.lr.ph2333.1 ]
  %.110572329.lcssa = phi ptr [ %.01056, %.lr.ph2333.preheader ], [ %i.ci, %.lr.ph2333.1 ]
  %i.aor = trunc nuw nsw i64 %indvars.iv2850.lcssa to i32
  br label %.loopexit1277

.loopexit1277.loopexit2345:                       ; preds = %.lr.ph2323.1, %.lr.ph2323.preheader
  %indvars.iv2847.lcssa = phi i64 [ %i.mw, %.lr.ph2323.preheader ], [ %indvars.iv.next2848, %.lr.ph2323.1 ]
  %.149432321.lcssa = phi i64 [ %.13942, %.lr.ph2323.preheader ], [ %i.nd, %.lr.ph2323.1 ]
  %.1810742319.lcssa = phi ptr [ %.171073, %.lr.ph2323.preheader ], [ %i.mz, %.lr.ph2323.1 ]
  %i.aos = trunc nuw nsw i64 %indvars.iv2847.lcssa to i32
  br label %.loopexit1277

.loopexit1277.loopexit2346:                       ; preds = %.lr.ph2314.1, %.lr.ph2314.preheader
  %indvars.iv2838.lcssa = phi i64 [ %i.ic, %.lr.ph2314.preheader ], [ %indvars.iv.next2839, %.lr.ph2314.1 ]
  %.89372312.lcssa = phi i64 [ %.793629652973, %.lr.ph2314.preheader ], [ %i.ij, %.lr.ph2314.1 ]
  %.810642310.lcssa = phi ptr [ %.7106329612975, %.lr.ph2314.preheader ], [ %i.if, %.lr.ph2314.1 ]
  %i.aot = trunc nuw nsw i64 %indvars.iv2838.lcssa to i32
  br label %.loopexit1277

.loopexit1277.loopexit2347:                       ; preds = %.lr.ph2305.1, %.lr.ph2305.preheader
  %indvars.iv2835.lcssa = phi i64 [ %i.gs, %.lr.ph2305.preheader ], [ %indvars.iv.next2836, %.lr.ph2305.1 ]
  %.69352302.lcssa = phi i64 [ %.59342952, %.lr.ph2305.preheader ], [ %i.gz, %.lr.ph2305.1 ]
  %.610622300.lcssa = phi ptr [ %.510612950, %.lr.ph2305.preheader ], [ %i.gv, %.lr.ph2305.1 ]
  %i.aou = trunc nuw nsw i64 %indvars.iv2835.lcssa to i32
  br label %.loopexit1277

.loopexit1277.loopexit2348:                       ; preds = %.lr.ph2295.3, %.lr.ph2295.2, %.lr.ph2295.1, %.lr.ph2295.preheader
  %indvars.iv2832.lcssa = phi i64 [ %i.fc, %.lr.ph2295.preheader ], [ %indvars.iv.next2833, %.lr.ph2295.1 ], [ %indvars.iv.next2833.1, %.lr.ph2295.2 ], [ %indvars.iv.next2833.2, %.lr.ph2295.3 ]
  %.49332292.lcssa = phi i64 [ %.39322943, %.lr.ph2295.preheader ], [ %i.fj, %.lr.ph2295.1 ], [ %i.fr, %.lr.ph2295.2 ], [ %i.fz, %.lr.ph2295.3 ]
  %.410602290.lcssa = phi ptr [ %.310592941, %.lr.ph2295.preheader ], [ %i.ff, %.lr.ph2295.1 ], [ %i.fn, %.lr.ph2295.2 ], [ %i.fv, %.lr.ph2295.3 ]
  %i.aov = trunc nuw nsw i64 %indvars.iv2832.lcssa to i32
  br label %.loopexit1277

.loopexit1277.loopexit2349:                       ; preds = %.lr.ph2284.1, %.lr.ph2284.preheader
  %indvars.iv2829.lcssa = phi i64 [ %i.ca, %.lr.ph2284.preheader ], [ %indvars.iv.next2830, %.lr.ph2284.1 ]
  %.29312282.lcssa = phi i64 [ %.0929, %.lr.ph2284.preheader ], [ %i.ef, %.lr.ph2284.1 ]
  %.210582280.lcssa = phi ptr [ %.01056, %.lr.ph2284.preheader ], [ %i.eb, %.lr.ph2284.1 ]
  %i.aow = trunc nuw nsw i64 %indvars.iv2829.lcssa to i32
  br label %.loopexit1277

.loopexit1277.loopexit2350:                       ; preds = %.lr.ph2116.3, %.lr.ph2116.2, %.lr.ph2116.1, %.lr.ph2116.preheader
  %indvars.iv2826.lcssa = phi i64 [ %i.bx, %.lr.ph2116.preheader ], [ %indvars.iv.next2827, %.lr.ph2116.1 ], [ %indvars.iv.next2827.1, %.lr.ph2116.2 ], [ %indvars.iv.next2827.2, %.lr.ph2116.3 ]
  %.169452114.lcssa = phi i64 [ %.0929, %.lr.ph2116.preheader ], [ %i.oc, %.lr.ph2116.1 ], [ %i.ok, %.lr.ph2116.2 ], [ %i.os, %.lr.ph2116.3 ]
  %.2010762112.lcssa = phi ptr [ %.01056, %.lr.ph2116.preheader ], [ %i.ny, %.lr.ph2116.1 ], [ %i.og, %.lr.ph2116.2 ], [ %i.oo, %.lr.ph2116.3 ]
  %i.aox = trunc nuw nsw i64 %indvars.iv2826.lcssa to i32
  br label %.loopexit1277

.loopexit1277.loopexit2351:                       ; preds = %.lr.ph2106.3, %.lr.ph2106.2, %.lr.ph2106.1, %.lr.ph2106.preheader
  %indvars.iv2824.lcssa = phi i64 [ %i.qi, %.lr.ph2106.preheader ], [ %indvars.iv.next2825, %.lr.ph2106.1 ], [ %indvars.iv.next2825.1, %.lr.ph2106.2 ], [ %indvars.iv.next2825.2, %.lr.ph2106.3 ]
  %.219502103.lcssa = phi i64 [ %i.qe, %.lr.ph2106.preheader ], [ %i.qp, %.lr.ph2106.1 ], [ %i.qw, %.lr.ph2106.2 ], [ %i.re, %.lr.ph2106.3 ]
  %.2510812101.lcssa = phi ptr [ %.01056, %.lr.ph2106.preheader ], [ %i.ql, %.lr.ph2106.1 ], [ %i.qs, %.lr.ph2106.2 ], [ %i.ra, %.lr.ph2106.3 ]
  %i.aoy = trunc nuw nsw i64 %indvars.iv2824.lcssa to i32
  br label %.loopexit1277

.loopexit1277.loopexit2359:                       ; preds = %.lr.ph1772.1, %.lr.ph1772.preheader
  %indvars.iv2783.lcssa = phi i64 [ %i.bu, %.lr.ph1772.preheader ], [ %indvars.iv.next2784, %.lr.ph1772.1 ]
  %.249531770.lcssa = phi i64 [ %.0929, %.lr.ph1772.preheader ], [ %i.sh, %.lr.ph1772.1 ]
  %.2810841768.lcssa = phi ptr [ %.01056, %.lr.ph1772.preheader ], [ %i.sd, %.lr.ph1772.1 ]
  %i.aoz = trunc nuw nsw i64 %indvars.iv2783.lcssa to i32
  br label %.loopexit1277

.loopexit1277.loopexit2360:                       ; preds = %.lr.ph1762.3, %.lr.ph1762.2, %.lr.ph1762.1, %.lr.ph1762.preheader
  %indvars.iv2780.lcssa = phi i64 [ %i.ane, %.lr.ph1762.preheader ], [ %indvars.iv.next2781, %.lr.ph1762.1 ], [ %indvars.iv.next2781.1, %.lr.ph1762.2 ], [ %indvars.iv.next2781.2, %.lr.ph1762.3 ]
  %.569851760.lcssa = phi i64 [ %.55984, %.lr.ph1762.preheader ], [ %i.anl, %.lr.ph1762.1 ], [ %i.ant, %.lr.ph1762.2 ], [ %i.aob, %.lr.ph1762.3 ]
  %.6011161758.lcssa = phi ptr [ %.591115, %.lr.ph1762.preheader ], [ %i.anh, %.lr.ph1762.1 ], [ %i.anp, %.lr.ph1762.2 ], [ %i.anx, %.lr.ph1762.3 ]
  %i.apa = trunc nuw nsw i64 %indvars.iv2780.lcssa to i32
  br label %.loopexit1277

.loopexit1277.loopexit2361:                       ; preds = %.lr.ph.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph.preheader
  %indvars.iv.lcssa = phi i64 [ %i.aky, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph.1 ], [ %indvars.iv.next.1, %.lr.ph.2 ], [ %indvars.iv.next.2, %.lr.ph.3 ]
  %.539821753.lcssa = phi i64 [ %.0929, %.lr.ph.preheader ], [ %i.alf, %.lr.ph.1 ], [ %i.aln, %.lr.ph.2 ], [ %i.alv, %.lr.ph.3 ]
  %.5711131751.lcssa = phi ptr [ %.01056, %.lr.ph.preheader ], [ %i.alb, %.lr.ph.1 ], [ %i.alj, %.lr.ph.2 ], [ %i.alr, %.lr.ph.3 ]
  %i.apb = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  br label %.loopexit1277

.loopexit1277.loopexit2986:                       ; preds = %.lr.ph1954.preheader, %.lr.ph1954
  %.309591952.lcssa = phi i64 [ %i.vc, %.lr.ph1954 ], [ %.299582003, %.lr.ph1954.preheader ]
  %i.apc = zext i32 %.3310252002 to i64
  %i.apd = shl i32 %.3310252002, 3
  %i.ape = add i32 %i.apd, %.292004
  %scevgep.le = getelementptr i8, ptr %.3310892001, i64 %i.apc
  br label %.loopexit1277

.loopexit1277.loopexit2987:                       ; preds = %.lr.ph2095.preheader, %.lr.ph2095
  %.509792093.lcssa = phi i64 [ %i.ahi, %.lr.ph2095 ], [ %.49978, %.lr.ph2095.preheader ]
  %i.apf = shl i32 %.531045, 3
  %i.apg = add i32 %.49, %i.apf
  %i.aph = zext i32 %.531045 to i64
  %scevgep2823.le = getelementptr i8, ptr %.531109, i64 %i.aph
  br label %.loopexit1277

.loopexit1277.loopexit2988:                       ; preds = %.lr.ph2083.preheader, %.lr.ph2083
  %.479762081.lcssa = phi i64 [ %i.afy, %.lr.ph2083 ], [ %.46975.lcssa, %.lr.ph2083.preheader ]
  %i.api = zext i32 %.501042.lcssa to i64
  %i.apj = shl i32 %.501042.lcssa, 3
  %i.apk = add i32 %i.apj, %.46.lcssa
  %scevgep2821.le = getelementptr i8, ptr %.501106.lcssa, i64 %i.api
  br label %.loopexit1277

.loopexit1277.loopexit2989:                       ; preds = %.lr.ph2065.preheader, %.lr.ph2065
  %.469752062.lcssa = phi i64 [ %i.aev, %.lr.ph2065 ], [ %.45974, %.lr.ph2065.preheader ]
  %i.apl = zext i32 %.491041 to i64
  %i.apm = shl i32 %.491041, 3
  %i.apn = add i32 %i.apm, %.45
  %scevgep2817.le = getelementptr i8, ptr %.491105, i64 %i.apl
  br label %.loopexit1277

.loopexit1277.loopexit2990:                       ; preds = %.lr.ph2050.preheader, %.lr.ph2050
  %.439722048.lcssa = phi i64 [ %i.adr, %.lr.ph2050 ], [ %.42971, %.lr.ph2050.preheader ]
  %i.apo = shl i32 %.461038, 3
  %i.app = add i32 %.42, %i.apo
  %i.apq = zext i32 %.461038 to i64
  %scevgep2814.le = getelementptr i8, ptr %.461102, i64 %i.apq
  br label %.loopexit1277

.loopexit1277.loopexit2991:                       ; preds = %.lr.ph2038.preheader, %.lr.ph2038
  %.409692036.lcssa = phi i64 [ %i.ach, %.lr.ph2038 ], [ %.39968.lcssa, %.lr.ph2038.preheader ]
  %i.apr = zext i32 %.431035.lcssa to i64
  %i.aps = shl i32 %.431035.lcssa, 3
  %i.apt = add i32 %i.aps, %.39.lcssa
  %scevgep2812.le = getelementptr i8, ptr %.431099.lcssa, i64 %i.apr
  br label %.loopexit1277

.loopexit1277.loopexit2992:                       ; preds = %.lr.ph2020.preheader, %.lr.ph2020
  %.399682017.lcssa = phi i64 [ %i.abe, %.lr.ph2020 ], [ %.38967, %.lr.ph2020.preheader ]
  %i.apu = zext i32 %.421034 to i64
  %i.apv = shl i32 %.421034, 3
  %i.apw = add i32 %i.apv, %.38
  %scevgep2808.le = getelementptr i8, ptr %.421098, i64 %i.apu
  br label %.loopexit1277

.loopexit1277.loopexit4002:                       ; preds = %bb.k
  br label %.loopexit1277

.loopexit1277:                                    ; preds = %bb.by, %bb.cb, %bb.cj, %bb.co, %bb.cw, %bb.dp, %bb.ee, %bb.eh, %bb.fi, %bb.gh, %bb.gs, %.lr.ph2125, %.lr.ph1782, %bb.k, %.loopexit1277.loopexit4002, %.loopexit1277.loopexit2992, %.loopexit1277.loopexit2991, %.loopexit1277.loopexit2990, %.loopexit1277.loopexit2989, %.loopexit1277.loopexit2988, %.loopexit1277.loopexit2987, %.loopexit1277.loopexit2986, %.loopexit1277.loopexit2361, %.loopexit1277.loopexit2360, %.loopexit1277.loopexit2359, %.loopexit1277.loopexit2351, %.loopexit1277.loopexit2350, %.loopexit1277.loopexit2349, %.loopexit1277.loopexit2348, %.loopexit1277.loopexit2347, %.loopexit1277.loopexit2346, %.loopexit1277.loopexit2345, %.loopexit1277.loopexit2344, %.loopexit1277.loopexit2342, %.loopexit1277.loopexit2341, %.loopexit1277.loopexit, %bb.hp, %bb.du
  %.09902690 = phi i32 [ %.0990, %.loopexit1277.loopexit2342 ], [ %.0990, %.loopexit1277.loopexit2346 ], [ %.0990, %.loopexit1277.loopexit2345 ], [ %.0990, %.loopexit1277.loopexit2344 ], [ %.0990, %bb.k ], [ %.0990, %.loopexit1277.loopexit2351 ], [ %.0990, %.loopexit1277.loopexit2986 ], [ %.0990, %.loopexit1277.loopexit2987 ], [ %.0990, %.loopexit1277.loopexit2992 ], [ %.0990, %bb.hp ], [ %.0990, %.loopexit1277.loopexit2990 ], [ %.0990, %.loopexit1277.loopexit2348 ], [ %.0990, %.loopexit1277.loopexit ], [ %.0990, %.loopexit1277.loopexit2347 ], [ %.0990, %bb.du ], [ %.0990, %.loopexit1277.loopexit2350 ], [ %.0990, %.loopexit1277.loopexit2359 ], [ %.0990, %.loopexit1277.loopexit2991 ], [ %.0990, %.loopexit1277.loopexit2988 ], [ %.0990, %.loopexit1277.loopexit2341 ], [ %.0990, %.loopexit1277.loopexit2361 ], [ %.0990, %.loopexit1277.loopexit2989 ], [ %.0990, %.lr.ph1782 ], [ %.0990, %.loopexit1277.loopexit2349 ], [ %.0990, %.loopexit1277.loopexit2360 ], [ %.0990, %bb.by ], [ %.0990, %bb.cb ], [ %.0990, %bb.cj ], [ %.0990, %bb.co ], [ %.0990, %bb.cw ], [ %.0990, %bb.dp ], [ %.0990, %bb.ee ], [ %.0990, %bb.eh ], [ %.0990, %bb.fi ], [ 0, %bb.gh ], [ 0, %bb.gs ], [ %.0990, %.lr.ph2125 ], [ %.0990, %.loopexit1277.loopexit4002 ] ; 3 uses
  %.641120 = phi ptr [ %.3610921964, %.loopexit1277.loopexit2342 ], [ %.810642310.lcssa, %.loopexit1277.loopexit2346 ], [ %.1810742319.lcssa, %.loopexit1277.loopexit2345 ], [ %.110572329.lcssa, %.loopexit1277.loopexit2344 ], [ %.01056, %bb.k ], [ %.2510812101.lcssa, %.loopexit1277.loopexit2351 ], [ %scevgep.le, %.loopexit1277.loopexit2986 ], [ %scevgep2823.le, %.loopexit1277.loopexit2987 ], [ %scevgep2808.le, %.loopexit1277.loopexit2992 ], [ %.611117, %bb.hp ], [ %scevgep2814.le, %.loopexit1277.loopexit2990 ], [ %.410602290.lcssa, %.loopexit1277.loopexit2348 ], [ %.3710931984, %.loopexit1277.loopexit ], [ %.610622300.lcssa, %.loopexit1277.loopexit2347 ], [ %.241080.lcssa, %bb.du ], [ %.2010762112.lcssa, %.loopexit1277.loopexit2350 ], [ %.2810841768.lcssa, %.loopexit1277.loopexit2359 ], [ %scevgep2812.le, %.loopexit1277.loopexit2991 ], [ %scevgep2821.le, %.loopexit1277.loopexit2988 ], [ %.3510911974, %.loopexit1277.loopexit2341 ], [ %.5711131751.lcssa, %.loopexit1277.loopexit2361 ], [ %scevgep2817.le, %.loopexit1277.loopexit2989 ], [ %.3010861932, %.lr.ph1782 ], [ %.210582280.lcssa, %.loopexit1277.loopexit2349 ], [ %.6011161758.lcssa, %.loopexit1277.loopexit2360 ], [ %.111067, %bb.by ], [ %.131069, %bb.cb ], [ %i.ll, %bb.cj ], [ %.151071, %bb.co ], [ %i.mq, %bb.cw ], [ %.221078, %bb.dp ], [ %.251081.lcssa, %bb.ee ], [ %.271083, %bb.eh ], [ %.331089.lcssa, %bb.fi ], [ %.561112, %bb.gh ], [ %.01056, %bb.gs ], [ %.231079, %.lr.ph2125 ], [ %.01056, %.loopexit1277.loopexit4002 ]
  %.64 = phi i32 [ 0, %.loopexit1277.loopexit2342 ], [ 0, %.loopexit1277.loopexit2346 ], [ 0, %.loopexit1277.loopexit2345 ], [ 0, %.loopexit1277.loopexit2344 ], [ %.0992, %bb.k ], [ 0, %.loopexit1277.loopexit2351 ], [ 0, %.loopexit1277.loopexit2986 ], [ 0, %.loopexit1277.loopexit2987 ], [ 0, %.loopexit1277.loopexit2992 ], [ %.61, %bb.hp ], [ 0, %.loopexit1277.loopexit2990 ], [ 0, %.loopexit1277.loopexit2348 ], [ 0, %.loopexit1277.loopexit ], [ 0, %.loopexit1277.loopexit2347 ], [ %.241016.lcssa, %bb.du ], [ 0, %.loopexit1277.loopexit2350 ], [ 0, %.loopexit1277.loopexit2359 ], [ 0, %.loopexit1277.loopexit2991 ], [ 0, %.loopexit1277.loopexit2988 ], [ 0, %.loopexit1277.loopexit2341 ], [ 0, %.loopexit1277.loopexit2361 ], [ 0, %.loopexit1277.loopexit2989 ], [ 0, %.lr.ph1782 ], [ 0, %.loopexit1277.loopexit2349 ], [ 0, %.loopexit1277.loopexit2360 ], [ %.111003, %bb.by ], [ 0, %bb.cb ], [ %i.lk, %bb.cj ], [ 0, %bb.co ], [ %i.mp, %bb.cw ], [ %.221014, %bb.dp ], [ %.251017.lcssa, %bb.ee ], [ %.271019, %bb.eh ], [ %.331025.lcssa, %bb.fi ], [ %.561048, %bb.gh ], [ %.0992, %bb.gs ], [ 0, %.lr.ph2125 ], [ %.0992, %.loopexit1277.loopexit4002 ]
  %.60989 = phi i64 [ %.329611966, %.loopexit1277.loopexit2342 ], [ %.89372312.lcssa, %.loopexit1277.loopexit2346 ], [ %.149432321.lcssa, %.loopexit1277.loopexit2345 ], [ %.19302331.lcssa, %.loopexit1277.loopexit2344 ], [ %.0929, %bb.k ], [ %.219502103.lcssa, %.loopexit1277.loopexit2351 ], [ %.309591952.lcssa, %.loopexit1277.loopexit2986 ], [ %.509792093.lcssa, %.loopexit1277.loopexit2987 ], [ %.399682017.lcssa, %.loopexit1277.loopexit2992 ], [ %.57986, %bb.hp ], [ %.439722048.lcssa, %.loopexit1277.loopexit2990 ], [ %.49332292.lcssa, %.loopexit1277.loopexit2348 ], [ %.339621986, %.loopexit1277.loopexit ], [ %.69352302.lcssa, %.loopexit1277.loopexit2347 ], [ %i.py, %bb.du ], [ %.169452114.lcssa, %.loopexit1277.loopexit2350 ], [ %.249531770.lcssa, %.loopexit1277.loopexit2359 ], [ %.409692036.lcssa, %.loopexit1277.loopexit2991 ], [ %.479762081.lcssa, %.loopexit1277.loopexit2988 ], [ %.319601976, %.loopexit1277.loopexit2341 ], [ %.539821753.lcssa, %.loopexit1277.loopexit2361 ], [ %.469752062.lcssa, %.loopexit1277.loopexit2989 ], [ %.269551934, %.lr.ph1782 ], [ %.29312282.lcssa, %.loopexit1277.loopexit2349 ], [ %.569851760.lcssa, %.loopexit1277.loopexit2360 ], [ %.10939, %bb.by ], [ %.11940, %bb.cb ], [ %.11940, %bb.cj ], [ %.12941, %bb.co ], [ %.12941, %bb.cw ], [ %.18947, %bb.dp ], [ 0, %bb.ee ], [ %.23952, %bb.eh ], [ %.29958.lcssa, %bb.fi ], [ %.52981, %bb.gh ], [ %.0929, %bb.gs ], [ %.19948, %.lr.ph2125 ], [ %.0929, %.loopexit1277.loopexit4002 ]
  %.60 = phi i32 [ %i.aoq, %.loopexit1277.loopexit2342 ], [ %i.aot, %.loopexit1277.loopexit2346 ], [ %i.aos, %.loopexit1277.loopexit2345 ], [ %i.aor, %.loopexit1277.loopexit2344 ], [ %.0918, %bb.k ], [ %i.aoy, %.loopexit1277.loopexit2351 ], [ %i.ape, %.loopexit1277.loopexit2986 ], [ %i.apg, %.loopexit1277.loopexit2987 ], [ %i.apw, %.loopexit1277.loopexit2992 ], [ %.57, %bb.hp ], [ %i.app, %.loopexit1277.loopexit2990 ], [ %i.aov, %.loopexit1277.loopexit2348 ], [ %i.aoo, %.loopexit1277.loopexit ], [ %i.aou, %.loopexit1277.loopexit2347 ], [ %i.pz, %bb.du ], [ %i.aox, %.loopexit1277.loopexit2350 ], [ %i.aoz, %.loopexit1277.loopexit2359 ], [ %i.apt, %.loopexit1277.loopexit2991 ], [ %i.apk, %.loopexit1277.loopexit2988 ], [ %i.aop, %.loopexit1277.loopexit2341 ], [ %i.apb, %.loopexit1277.loopexit2361 ], [ %i.apn, %.loopexit1277.loopexit2989 ], [ %.261935, %.lr.ph1782 ], [ %i.aow, %.loopexit1277.loopexit2349 ], [ %i.apa, %.loopexit1277.loopexit2360 ], [ %.10928, %bb.by ], [ %.11, %bb.cb ], [ %.11, %bb.cj ], [ %.12, %bb.co ], [ %.12, %bb.cw ], [ %.18, %bb.dp ], [ 0, %bb.ee ], [ %.23, %bb.eh ], [ %.29.lcssa, %bb.fi ], [ %.52, %bb.gh ], [ %.0918, %bb.gs ], [ %.19, %.lr.ph2125 ], [ %.0918, %.loopexit1277.loopexit4002 ]
  %.5917 = phi i32 [ %.0912, %.loopexit1277.loopexit2342 ], [ %.0912, %.loopexit1277.loopexit2346 ], [ %.0912, %.loopexit1277.loopexit2345 ], [ %.0912, %.loopexit1277.loopexit2344 ], [ %.0912, %bb.k ], [ %.0912, %.loopexit1277.loopexit2351 ], [ %.0912, %.loopexit1277.loopexit2986 ], [ %.0912, %.loopexit1277.loopexit2987 ], [ %.0912, %.loopexit1277.loopexit2992 ], [ %.2914, %bb.hp ], [ %.0912, %.loopexit1277.loopexit2990 ], [ %.0912, %.loopexit1277.loopexit2348 ], [ %.0912, %.loopexit1277.loopexit ], [ %.0912, %.loopexit1277.loopexit2347 ], [ %.0912, %bb.du ], [ %.0912, %.loopexit1277.loopexit2350 ], [ %.0912, %.loopexit1277.loopexit2359 ], [ %.0912, %.loopexit1277.loopexit2991 ], [ %.0912, %.loopexit1277.loopexit2988 ], [ %.0912, %.loopexit1277.loopexit2341 ], [ %.0912, %.loopexit1277.loopexit2361 ], [ %.0912, %.loopexit1277.loopexit2989 ], [ %.0912, %.lr.ph1782 ], [ %.0912, %.loopexit1277.loopexit2349 ], [ %.2914, %.loopexit1277.loopexit2360 ], [ %.0912, %.lr.ph2125 ], [ %.0912, %bb.gs ], [ %.0912, %bb.gh ], [ %.0912, %bb.fi ], [ %.0912, %bb.eh ], [ %.0912, %bb.ee ], [ %.0912, %bb.dp ], [ %.0912, %bb.cw ], [ %.0912, %bb.co ], [ %.0912, %bb.cj ], [ %.0912, %bb.cb ], [ %.0912, %bb.by ], [ %.0912, %.loopexit1277.loopexit4002 ] ; 4 uses
  %.9 = phi i32 [ %.1, %.loopexit1277.loopexit2342 ], [ %.0, %.loopexit1277.loopexit2346 ], [ %.0, %.loopexit1277.loopexit2345 ], [ %.0, %.loopexit1277.loopexit2344 ], [ -3, %bb.k ], [ %.0, %.loopexit1277.loopexit2351 ], [ %.1, %.loopexit1277.loopexit2986 ], [ %.6, %.loopexit1277.loopexit2987 ], [ %.3, %.loopexit1277.loopexit2992 ], [ 1, %bb.hp ], [ %.4, %.loopexit1277.loopexit2990 ], [ %.0, %.loopexit1277.loopexit2348 ], [ %.1, %.loopexit1277.loopexit ], [ %.0, %.loopexit1277.loopexit2347 ], [ %.0, %bb.du ], [ %.0, %.loopexit1277.loopexit2350 ], [ %.0, %.loopexit1277.loopexit2359 ], [ %.3, %.loopexit1277.loopexit2991 ], [ %.5, %.loopexit1277.loopexit2988 ], [ %.1, %.loopexit1277.loopexit2341 ], [ %.0, %.loopexit1277.loopexit2361 ], [ %.5, %.loopexit1277.loopexit2989 ], [ %.0, %.lr.ph1782 ], [ %.0, %.loopexit1277.loopexit2349 ], [ %.0, %.loopexit1277.loopexit2360 ], [ %.0, %bb.by ], [ %.0, %bb.cb ], [ %.0, %bb.cj ], [ %.0, %bb.co ], [ %.0, %bb.cw ], [ %.0, %bb.dp ], [ %.0, %bb.ee ], [ %.0, %bb.eh ], [ 0, %bb.fi ], [ %.7, %bb.gh ], [ %.0, %bb.gs ], [ %.0, %.lr.ph2125 ], [ 1, %.loopexit1277.loopexit4002 ] ; 2 uses
  store ptr %.01053, ptr %i.p, align 8, !tbaa !77
  store i32 %.09902690, ptr %i.y, align 8, !tbaa !78
  store ptr %.641120, ptr %0, align 8, !tbaa !47
  store i32 %.64, ptr %i.aa, align 8, !tbaa !48
  store i64 %.60989, ptr %i.ac, align 8, !tbaa !32
  store i32 %.60, ptr %i.ae, align 8, !tbaa !33
  %i.apx = load i32, ptr %i.bk, align 4, !tbaa !39
  %.not1255 = icmp eq i32 %i.apx, 0
  br i1 %.not1255, label %bb.hq, label %bb.ht

bb.hq:                                            ; preds = %.loopexit1277
  %.not1256 = icmp eq i32 %.5917, %.09902690
  br i1 %.not1256, label %updatewindow.exit.thread, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.apy = load i32, ptr %i.m, align 8, !tbaa !21 ; 2 uses
  %i.apz = icmp ult i32 %i.apy, 16209
  br i1 %i.apz, label %bb.hs, label %updatewindow.exit.thread

bb.hs:                                            ; preds = %bb.hr
  %i.aqa = icmp samesign ult i32 %i.apy, 16206
  %i.aqb = icmp ne i32 %1, 4
  %or.cond9 = or i1 %i.aqb, %i.aqa
  br i1 %or.cond9, label %bb.ht, label %updatewindow.exit.thread

bb.ht:                                            ; preds = %bb.hs, %.loopexit1277
  %i.aqc = sub i32 %.5917, %.09902690             ; 5 uses
  %i.aqd = load ptr, ptr %i.i, align 8, !tbaa !16 ; 11 uses
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqd, i64 72 ; 3 uses
  %i.aqf = load ptr, ptr %i.aqe, align 8, !tbaa !42 ; 2 uses
  %i.aqg = icmp eq ptr %i.aqf, null
  br i1 %i.aqg, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  %i.aqh = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.aqi = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aqj = load ptr, ptr %i.aqi, align 8, !tbaa !44
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqd, i64 56
  %i.aql = load i32, ptr %i.aqk, align 8, !tbaa !43
  %i.aqm = shl nuw i32 1, %i.aql
  %i.aqn = call ptr %i.aqh(ptr noundef %i.aqj, i32 noundef %i.aqm, i32 noundef 1) #9, !inline_history !0 ; 3 uses
end_hunk_1
