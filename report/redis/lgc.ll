Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/lgc?download=true
inline.NumInlined: 22
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@luaC_linkupval:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !61   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !47
  %i.p = icmp sgt i32 %i.o, 3
  br i1 %i.p, label %bb.d, label %luaC_barrierf.exit

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !30   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 9
  %i.s = load i8, ptr %i.r, align 1, !tbaa !30
  %i.t = and i8 %i.s, 3
  %.not20 = icmp eq i8 %i.t, 0
  br i1 %.not20, label %luaC_barrierf.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 33
  %i.w = load i8, ptr %i.v, align 1, !tbaa !56
  %i.x = icmp eq i8 %i.w, 1
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @reallymarkobject(ptr noundef nonnull %i.u, ptr noundef nonnull %i.q)
  br label %luaC_barrierf.exit

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.z = load i8, ptr %i.y, align 8, !tbaa !42
  %i.aa = and i8 %i.z, 3
  %i.ab = or disjoint i8 %i.aa, %i.f
  store i8 %i.ab, ptr %i.e, align 1, !tbaa !30
  br label %luaC_barrierf.exit

bb.h:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !42
  %i.ae = and i8 %i.ad, 3
  %i.af = or disjoint i8 %i.ae, %i.f
  store i8 %i.af, ptr %i.e, align 1, !tbaa !30
  br label %luaC_barrierf.exit

luaC_barrierf.exit:                               ; preds = %bb.g, %bb.f, %bb.h, %bb.d, %bb.c, %bb.a
  ret void
}

declare hidden void @luaD_call(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare hidden void @luaF_freeproto(ptr noundef, ptr noundef) local_unnamed_addr #1

declare hidden void @luaF_freeclosure(ptr noundef, ptr noundef) local_unnamed_addr #1

declare hidden void @luaF_freeupval(ptr noundef, ptr noundef) local_unnamed_addr #1

declare hidden void @luaH_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare hidden void @luaE_freethread(ptr noundef, ptr noundef) local_unnamed_addr #1

declare hidden ptr @luaM_realloc_(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -120259084216, 120259084417) i64 @propagatemark(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 46 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 9 ; 8 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !30
  %i.e = or i8 %i.d, 4
  store i8 %i.e, ptr %i.c, align 1, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i8, ptr %i.f, align 8, !tbaa !30
  switch i8 %i.g, label %bb.ca [
    i8 5, label %bb.b
    i8 6, label %bb.al
    i8 8, label %bb.ay
    i8 9, label %bb.bj
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !76
  store ptr %i.i, ptr %i.a, align 8, !tbaa !60
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !86   ; 4 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %.thread78.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 9
  %i.m = load i8, ptr %i.l, align 1, !tbaa !30
  %i.n = and i8 %i.m, 3
  %.not61.i = icmp eq i8 %i.n, 0
  br i1 %.not61.i, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @reallymarkobject(ptr noundef nonnull %0, ptr noundef nonnull %i.k)
  %.pr.pre.i = load ptr, ptr %i.j, align 8, !tbaa !86 ; 2 uses
  %i.o = icmp eq ptr %.pr.pre.i, null
  br i1 %i.o, label %.thread78.i, label %.thread.i

.thread.i:                                        ; preds = %bb.d, %bb.c
  %.pr112.i = phi ptr [ %.pr.pre.i, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.pr112.i, i64 10
  %i.q = load i8, ptr %i.p, align 2, !tbaa !31
  %i.r = and i8 %i.q, 8
  %.not62.i = icmp eq i8 %i.r, 0
  br i1 %.not62.i, label %bb.e, label %.thread78.i

bb.e:                                             ; preds = %.thread.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !35
  %i.u = tail call ptr @luaT_gettm(ptr noundef nonnull %.pr112.i, i32 noundef 3, ptr noundef %i.t) #6 ; 3 uses
  %.not63.i = icmp eq ptr %i.u, null
  br i1 %.not63.i, label %.thread78.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !47
  %i.x = icmp eq i32 %i.w, 4
  br i1 %i.x, label %bb.g, label %.thread78.i

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !30
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  %i.aa = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.z, i32 noundef 107) #7
  %.fr.i = freeze ptr %i.aa
  %i.ab = icmp ne ptr %.fr.i, null                ; 5 uses
  %i.ac = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.z, i32 noundef 118) #7
  %i.ad = icmp ne ptr %i.ac, null                 ; 4 uses
  %or.cond.i = select i1 %i.ab, i1 true, i1 %i.ad
  br i1 %or.cond.i, label %bb.h, label %.thread78.i

bb.h:                                             ; preds = %bb.g
  %i.ae = load i8, ptr %i.c, align 1, !tbaa !67
  %i.af = and i8 %i.ae, -25
  %i.ag = select i1 %i.ab, i8 8, i8 0
  %i.ah = select i1 %i.ad, i8 16, i8 0
  %i.ai = or disjoint i8 %i.ah, %i.ag
  %i.aj = or disjoint i8 %i.ai, %i.af
  store i8 %i.aj, ptr %i.c, align 1, !tbaa !67
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !64
  store ptr %i.al, ptr %i.h, align 8, !tbaa !76
  store ptr %i.b, ptr %i.ak, align 8, !tbaa !64
  %or.cond3.i = select i1 %i.ab, i1 %i.ad, i1 false
  br i1 %or.cond3.i, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.ad, label %.loopexit.thread.i, label %.thread78.i

.thread78.i:                                      ; preds = %bb.i, %bb.g, %bb.f, %bb.e, %.thread.i, %bb.d, %bb.b
  %.055.shrunk7683.i = phi i1 [ %i.ab, %bb.i ], [ false, %bb.b ], [ false, %.thread.i ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.g ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.an = load i32, ptr %i.am, align 8, !tbaa !68 ; 2 uses
  %.not6485.i = icmp eq i32 %i.an, 0
  br i1 %.not6485.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread78.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ap = sext i32 %i.an to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ap, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.m ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !69
  %i.ar = getelementptr inbounds [16 x i8], ptr %i.aq, i64 %indvars.iv.next.i ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !47
  %i.au = icmp sgt i32 %i.at, 3
  br i1 %i.au, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !30 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 9
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !30
  %i.ay = and i8 %i.ax, 3
  %.not65.i = icmp eq i8 %i.ay, 0
  br i1 %.not65.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @reallymarkobject(ptr noundef %0, ptr noundef nonnull %i.av)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.not64.i = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %.not64.i, label %.loopexit.i, label %bb.j, !llvm.loop !87

.loopexit.i:                                      ; preds = %bb.m, %.thread78.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !71
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %notmask.i = shl nsw i32 -1, %i.bb
  %i.bd = xor i32 %notmask.i, -1
  %i.be = zext nneg i32 %i.bd to i64              ; 2 uses
  br i1 %.055.shrunk7683.i, label %.split.us.split.i, label %.split.split.i

.loopexit.thread.i:                               ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !71  ; 2 uses
  %i.bh = zext nneg i8 %i.bg to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  %notmask119.i = shl nsw i32 -1, %i.bh           ; 2 uses
  %i.bj = xor i32 %notmask119.i, -1
  %i.bk = zext nneg i32 %i.bj to i64              ; 4 uses
  br i1 %i.ab, label %.split.us.split.us.i.preheader, label %.split.split.us.i

.split.us.split.us.i.preheader:                   ; preds = %.loopexit.thread.i
  %1 = and i32 %notmask119.i, 1
  %lcmp.mod.not = icmp eq i32 %1, 0
  br i1 %lcmp.mod.not, label %.split.us.split.us.i.prol.loopexit, label %.split.us.split.us.i.prol

.split.us.split.us.i.prol:                        ; preds = %.split.us.split.us.i.preheader
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !72
  %i.bm = getelementptr inbounds nuw [40 x i8], ptr %i.bl, i64 %i.bk ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !73
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.n, label %removeentry.exit.us.us.i.prol

bb.n:                                             ; preds = %.split.us.split.us.i.prol
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !30
  %i.bs = icmp sgt i32 %i.br, 3
  br i1 %i.bs, label %bb.o, label %removeentry.exit.us.us.i.prol

bb.o:                                             ; preds = %bb.n
  store i32 11, ptr %i.bq, align 8, !tbaa !30
  br label %removeentry.exit.us.us.i.prol

removeentry.exit.us.us.i.prol:                    ; preds = %bb.o, %bb.n, %.split.us.split.us.i.prol
  %indvars.iv.next104.i.prol = add nsw i64 %i.bk, -1
  br label %.split.us.split.us.i.prol.loopexit

.split.us.split.us.i.prol.loopexit:               ; preds = %removeentry.exit.us.us.i.prol, %.split.us.split.us.i.preheader
  %indvars.iv103.i.unr = phi i64 [ %i.bk, %.split.us.split.us.i.preheader ], [ %indvars.iv.next104.i.prol, %removeentry.exit.us.us.i.prol ]
  %i.bt = icmp eq i8 %i.bg, 0
  br i1 %i.bt, label %.loopexit, label %.split.us.split.us.i

.split.us.split.us.i:                             ; preds = %.split.us.split.us.i.prol.loopexit, %removeentry.exit.us.us.i.1
  %indvars.iv103.i = phi i64 [ %indvars.iv.next104.i.1, %removeentry.exit.us.us.i.1 ], [ %indvars.iv103.i.unr, %.split.us.split.us.i.prol.loopexit ] ; 3 uses
  %i.bu = load ptr, ptr %i.bi, align 8, !tbaa !72
  %i.bv = getelementptr inbounds [40 x i8], ptr %i.bu, i64 %indvars.iv103.i ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !73
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.p, label %removeentry.exit.us.us.i

bb.p:                                             ; preds = %.split.us.split.us.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 24 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !30
  %i.cb = icmp sgt i32 %i.ca, 3
  br i1 %i.cb, label %bb.q, label %removeentry.exit.us.us.i

bb.q:                                             ; preds = %bb.p
  store i32 11, ptr %i.bz, align 8, !tbaa !30
  br label %removeentry.exit.us.us.i

removeentry.exit.us.us.i:                         ; preds = %bb.q, %bb.p, %.split.us.split.us.i
  %indvars.iv.next104.i = add nsw i64 %indvars.iv103.i, -1 ; 2 uses
  %i.cc = load ptr, ptr %i.bi, align 8, !tbaa !72
  %i.cd = getelementptr inbounds [40 x i8], ptr %i.cc, i64 %indvars.iv.next104.i ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !73
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.r, label %removeentry.exit.us.us.i.1

bb.r:                                             ; preds = %removeentry.exit.us.us.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 24 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !30
  %i.cj = icmp sgt i32 %i.ci, 3
  br i1 %i.cj, label %bb.s, label %removeentry.exit.us.us.i.1

bb.s:                                             ; preds = %bb.r
  store i32 11, ptr %i.ch, align 8, !tbaa !30
  br label %removeentry.exit.us.us.i.1

removeentry.exit.us.us.i.1:                       ; preds = %bb.s, %bb.r, %removeentry.exit.us.us.i
  %indvars.iv.next104.i.1 = add nsw i64 %indvars.iv103.i, -2
  %i.ck = icmp eq i64 %indvars.iv.next104.i, 0
  br i1 %i.ck, label %.loopexit, label %.split.us.split.us.i, !llvm.loop !88

.split.us.split.i:                                ; preds = %.loopexit.i, %removeentry.exit.us.i
  %indvars.iv100.i = phi i64 [ %indvars.iv.next101.i, %removeentry.exit.us.i ], [ %i.be, %.loopexit.i ] ; 3 uses
  %i.cl = load ptr, ptr %i.bc, align 8, !tbaa !72
  %i.cm = getelementptr inbounds [40 x i8], ptr %i.cl, i64 %indvars.iv100.i ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !73 ; 2 uses
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.w, label %bb.t

bb.t:                                             ; preds = %.split.us.split.i
  %i.cq = icmp sgt i32 %i.co, 3
  br i1 %i.cq, label %bb.u, label %removeentry.exit.us.i

bb.u:                                             ; preds = %bb.t
  %i.cr = load ptr, ptr %i.cm, align 8, !tbaa !30 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 9
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !30
  %i.cu = and i8 %i.ct, 3
  %.not68.us.i = icmp eq i8 %i.cu, 0
  br i1 %.not68.us.i, label %removeentry.exit.us.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @reallymarkobject(ptr noundef %0, ptr noundef nonnull %i.cr)
  br label %removeentry.exit.us.i

bb.w:                                             ; preds = %.split.us.split.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cm, i64 24 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !30
  %i.cx = icmp sgt i32 %i.cw, 3
  br i1 %i.cx, label %bb.x, label %removeentry.exit.us.i

bb.x:                                             ; preds = %bb.w
  store i32 11, ptr %i.cv, align 8, !tbaa !30
  br label %removeentry.exit.us.i

removeentry.exit.us.i:                            ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  %indvars.iv.next101.i = add nsw i64 %indvars.iv100.i, -1
  %i.cy = icmp eq i64 %indvars.iv100.i, 0
  br i1 %i.cy, label %.loopexit, label %.split.us.split.i, !llvm.loop !88

.split.split.us.i:                                ; preds = %.loopexit.thread.i, %removeentry.exit.us88.i
  %indvars.iv97.i = phi i64 [ %indvars.iv.next98.i, %removeentry.exit.us88.i ], [ %i.bk, %.loopexit.thread.i ] ; 3 uses
  %i.cz = load ptr, ptr %i.bi, align 8, !tbaa !72
  %i.da = getelementptr inbounds [40 x i8], ptr %i.cz, i64 %indvars.iv97.i ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !73
  %i.dd = icmp eq i32 %i.dc, 0
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 24 ; 2 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !30
  %i.dg = icmp sgt i32 %i.df, 3                   ; 2 uses
  br i1 %i.dd, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %.split.split.us.i
  br i1 %i.dg, label %bb.z, label %removeentry.exit.us88.i

bb.z:                                             ; preds = %bb.y
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !30 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 9
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !30
  %i.dl = and i8 %i.dk, 3
  %.not67.us.i = icmp eq i8 %i.dl, 0
  br i1 %.not67.us.i, label %removeentry.exit.us88.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call fastcc void @reallymarkobject(ptr noundef %0, ptr noundef nonnull %i.di)
  br label %removeentry.exit.us88.i

bb.ab:                                            ; preds = %.split.split.us.i
  br i1 %i.dg, label %bb.ac, label %removeentry.exit.us88.i

bb.ac:                                            ; preds = %bb.ab
  store i32 11, ptr %i.de, align 8, !tbaa !30
  br label %removeentry.exit.us88.i

removeentry.exit.us88.i:                          ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y
  %indvars.iv.next98.i = add nsw i64 %indvars.iv97.i, -1
  %i.dm = icmp eq i64 %indvars.iv97.i, 0
  br i1 %i.dm, label %.loopexit, label %.split.split.us.i, !llvm.loop !88

.split.split.i:                                   ; preds = %.loopexit.i, %removeentry.exit.i
  %indvars.iv94.i = phi i64 [ %indvars.iv.next95.i, %removeentry.exit.i ], [ %i.be, %.loopexit.i ] ; 3 uses
  %i.dn = load ptr, ptr %i.bc, align 8, !tbaa !72
  %i.do = getelementptr inbounds [40 x i8], ptr %i.dn, i64 %indvars.iv94.i ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !73 ; 3 uses
  %i.dr = icmp eq i32 %i.dq, 0
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 24 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !30
  %i.du = icmp sgt i32 %i.dt, 3                   ; 2 uses
  br i1 %i.dr, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %.split.split.i
  br i1 %i.du, label %bb.ae, label %removeentry.exit.i

bb.ae:                                            ; preds = %bb.ad
  store i32 11, ptr %i.ds, align 8, !tbaa !30
  br label %removeentry.exit.i

bb.af:                                            ; preds = %.split.split.i
  br i1 %i.du, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !30 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 9
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !30
  %i.dz = and i8 %i.dy, 3
  %.not67.i = icmp eq i8 %i.dz, 0
  br i1 %.not67.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call fastcc void @reallymarkobject(ptr noundef %0, ptr noundef nonnull %i.dw)
  %.pre.i = load i32, ptr %i.dp, align 8, !tbaa !73
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.ea = phi i32 [ %i.dq, %bb.af ], [ %i.dq, %bb.ag ], [ %.pre.i, %bb.ah ]
  %i.eb = icmp sgt i32 %i.ea, 3
  br i1 %i.eb, label %bb.aj, label %removeentry.exit.i

bb.aj:                                            ; preds = %bb.ai
  %i.ec = load ptr, ptr %i.do, align 8, !tbaa !30 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 9
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !30
  %i.ef = and i8 %i.ee, 3
  %.not68.i = icmp eq i8 %i.ef, 0
  br i1 %.not68.i, label %removeentry.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call fastcc void @reallymarkobject(ptr noundef %0, ptr noundef nonnull %i.ec)
  br label %removeentry.exit.i

removeentry.exit.i:                               ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ae, %bb.ad
  %indvars.iv.next95.i = add nsw i64 %indvars.iv94.i, -1
  %i.eg = icmp eq i64 %indvars.iv94.i, 0
  br i1 %i.eg, label %traversetable.exit, label %.split.split.i, !llvm.loop !88

.loopexit:                                        ; preds = %removeentry.exit.us88.i, %.split.us.split.us.i.prol.loopexit, %removeentry.exit.us.us.i.1, %removeentry.exit.us.i, %bb.h
  %i.eh = load i8, ptr %i.c, align 1, !tbaa !30
  %i.ei = and i8 %i.eh, -5
  store i8 %i.ei, ptr %i.c, align 1, !tbaa !30
  br label %traversetable.exit

traversetable.exit:                               ; preds = %removeentry.exit.i, %.loopexit
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !68
  %i.el = sext i32 %i.ek to i64
  %i.em = shl nsw i64 %i.el, 4
  %i.en = add nsw i64 %i.em, 72
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ep = load i8, ptr %i.eo, align 8, !tbaa !71
  %i.eq = zext nneg i8 %i.ep to i32
  %i.er = shl nuw i32 1, %i.eq
end_hunk_0
