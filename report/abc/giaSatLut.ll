Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaSatLut?download=true
inline.NumInlined: 1157
inline.NumDeleted: 108
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 62
begin_hunk_0_@Gia_ManSimpleCnf:bb.a
bb.o:                                             ; preds = %bb.n
  %i.lt = load ptr, ptr %i.d, align 8, !tbaa !250 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.lt, null
  br i1 %.not9.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.lu = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.lt, i64 noundef 16) #32
  br label %Vec_StrGrow.exit11.sink.split.i

bb.q:                                             ; preds = %bb.o
  %i.lv = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  br label %Vec_StrGrow.exit11.sink.split.i

bb.r:                                             ; preds = %bb.n
  %i.lw = icmp samesign ult i32 %i.lp, 1073741823
  %i.lx = shl nuw nsw i32 %i.lp, 1
  %spec.select.i = select i1 %i.lw, i32 %i.lx, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.lp, %spec.select.i
  %.pre395 = load ptr, ptr %i.d, align 8, !tbaa !250 ; 3 uses
  br i1 %.not.i9.i, label %bb.s, label %Vec_StrPush.exit

bb.s:                                             ; preds = %bb.r
  %.not9.i10.i = icmp eq ptr %.pre395, null
  %i.ly = zext nneg i32 %spec.select.i to i64     ; 2 uses
  br i1 %.not9.i10.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.lz = tail call ptr @realloc(ptr noundef nonnull %.pre395, i64 noundef %i.ly) #32
  br label %Vec_StrGrow.exit11.sink.split.i

bb.u:                                             ; preds = %bb.s
  %i.ma = tail call noalias ptr @malloc(i64 noundef %i.ly) #31
  br label %Vec_StrGrow.exit11.sink.split.i

Vec_StrGrow.exit11.sink.split.i:                  ; preds = %bb.t, %bb.u, %bb.p, %bb.q
  %storemerge = phi ptr [ %i.lv, %bb.q ], [ %i.lu, %bb.p ], [ %i.lz, %bb.t ], [ %i.ma, %bb.u ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.q ], [ 16, %bb.p ], [ %spec.select.i, %bb.t ], [ %spec.select.i, %bb.u ]
  store ptr %storemerge, ptr %i.d, align 8, !tbaa !250
  store i32 %spec.select.sink.i, ptr %i.a, align 8, !tbaa !249
  br label %Vec_StrPush.exit

Vec_StrPush.exit:                                 ; preds = %.critedge4.Vec_StrPush.exit_crit_edge, %bb.r, %Vec_StrGrow.exit11.sink.split.i
  %i.mb = phi ptr [ %.pre394, %.critedge4.Vec_StrPush.exit_crit_edge ], [ %.pre395, %bb.r ], [ %storemerge, %Vec_StrGrow.exit11.sink.split.i ]
  %i.mc = add nsw i32 %i.lp, 1
  store i32 %i.mc, ptr %i.b, align 4, !tbaa !247
  %i.md = sext i32 %i.lp to i64
  %i.me = getelementptr inbounds i8, ptr %i.mb, i64 %i.md
  store i8 0, ptr %i.me, align 1, !tbaa !187
  ret ptr %i.a
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @Gia_ManDeriveSimpleMapping(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %.val163 = load i32, ptr %i.a, align 8, !tbaa !114 ; 2 uses
  %i.b = shl nsw i32 %.val163, 1                  ; 5 uses
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 40 uses
  %i.d = add i32 %i.b, -1
  %or.cond.i.i = icmp ult i32 %i.d, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.b ; 3 uses
  %i.e = getelementptr i8, ptr %i.c, i64 4        ; 53 uses
  store i32 %spec.store.select.i.i, ptr %i.c, align 8, !tbaa !51
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %i.f, align 8, !tbaa !52
  store i32 %i.b, ptr %i.e, align 4, !tbaa !49
  br label %Vec_IntStart.exit

Vec_IntAlloc.exit.i:                              ; preds = %bb.a
  %i.g = sext i32 %spec.store.select.i.i to i64
  %i.h = shl nsw i64 %i.g, 2
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #31 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !52
  store i32 %i.b, ptr %i.e, align 4, !tbaa !49
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %Vec_IntStart.exit, label %bb.b

bb.b:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.k = sext i32 %i.b to i64
  %i.l = shl nsw i64 %i.k, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.i, i8 0, i64 %i.l, i1 false)
  br label %Vec_IntStart.exit

Vec_IntStart.exit:                                ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.b
  %.val169 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i ], [ null, %Vec_IntAlloc.exit.i ], [ %i.i, %bb.b ] ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !191  ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 4        ; 2 uses
  %.val162417 = load i32, ptr %i.o, align 4, !tbaa !49 ; 2 uses
  %i.p = icmp sgt i32 %.val162417, 0
  br i1 %i.p, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_IntStart.exit
  %i.q = getelementptr i8, ptr %i.n, i64 8
  %.val177.val = load ptr, ptr %i.q, align 8, !tbaa !52
  %i.r = getelementptr i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.val162428 = phi i32 [ %.val162417, %.lr.ph ], [ %.val162, %bb.f ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.val177.val, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !40   ; 3 uses
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = mul nsw i32 %i.t, 7
  %.val.i = load ptr, ptr %i.r, align 8, !tbaa !52
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr [4 x i8], ptr %.val.i, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !40
  %.not161 = icmp eq i32 %i.y, 0
  br i1 %.not161, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = shl nsw i32 %i.t, 1
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr [4 x i8], ptr %.val169, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 4
  store i32 -1, ptr %i.ac, align 4, !tbaa !40
  %.val162.pre = load i32, ptr %i.o, align 4, !tbaa !49
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.val162 = phi i32 [ %.val162428, %bb.d ], [ %.val162.pre, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ad = sext i32 %.val162 to i64
  %i.ae = icmp slt i64 %indvars.iv.next, %i.ad
  br i1 %i.ae, label %bb.c, label %.critedge, !llvm.loop !256

.critedge:                                        ; preds = %bb.c, %bb.f, %Vec_IntStart.exit
  %i.af = getelementptr i8, ptr %0, i64 32        ; 13 uses
  %i.ag = icmp sgt i32 %.val163, 0
  br i1 %i.ag, label %.lr.ph421, label %.critedge2

.lr.ph421:                                        ; preds = %.critedge
  %i.ah = getelementptr i8, ptr %1, i64 8
  %i.ai = getelementptr i8, ptr %i.c, i64 8       ; 17 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph421, %bb.cm
  %i.aj = phi ptr [ %.val169, %.lr.ph421 ], [ %i.us, %bb.cm ] ; 10 uses
  %i.ak = phi ptr [ %.val169, %.lr.ph421 ], [ %i.ut, %bb.cm ] ; 10 uses
  %i.al = phi ptr [ %.val169, %.lr.ph421 ], [ %i.uu, %bb.cm ] ; 8 uses
  %i.am = phi ptr [ %.val169, %.lr.ph421 ], [ %i.uv, %bb.cm ] ; 8 uses
  %i.an = phi ptr [ %.val169, %.lr.ph421 ], [ %i.uw, %bb.cm ] ; 6 uses
  %i.ao = phi ptr [ %.val169, %.lr.ph421 ], [ %i.ux, %bb.cm ] ; 6 uses
  %.val167 = phi ptr [ %.val169, %.lr.ph421 ], [ %.val168431, %bb.cm ] ; 10 uses
  %indvars.iv424 = phi i64 [ 0, %.lr.ph421 ], [ %indvars.iv.next425, %bb.cm ] ; 5 uses
  %.val164 = load ptr, ptr %i.af, align 8, !tbaa !128 ; 10 uses
  %i.ap = getelementptr inbounds nuw [12 x i8], ptr %.val164, i64 %indvars.iv424 ; 21 uses
  %.not136 = icmp eq ptr %.val164, null
  br i1 %.not136, label %.critedge2, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val166 = load i64, ptr %i.ap, align 4         ; 3 uses
  %i.aq = and i64 %.val166, 2147483648
  %.not.i206 = icmp ne i64 %i.aq, 0
  %i.ar = and i64 %.val166, 536870911             ; 2 uses
  %i.as = icmp eq i64 %i.ar, 536870911
  %narrow.i.not = or i1 %.not.i206, %i.as
  br i1 %narrow.i.not, label %bb.cm, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val.i207 = load ptr, ptr %i.ah, align 8, !tbaa !52
  %.idx = mul i64 %indvars.iv424, 28
  %i.at = getelementptr i8, ptr %.val.i207, i64 %.idx ; 7 uses
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !40 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.at, i64 12     ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !40 ; 2 uses
  %i.ay = sub i32 0, %i.ax
  %i.az = icmp eq i32 %i.av, %i.ay
  br i1 %i.az, label %bb.cm, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = load i32, ptr %i.at, align 4, !tbaa !40
  %.not138 = icmp eq i32 %i.ba, 0
  br i1 %.not138, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr i8, ptr %i.at, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !40
  %.not139 = icmp eq i32 %i.bc, 0
  br i1 %.not139, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bd = getelementptr i8, ptr %i.at, i64 16
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !40
  %.not140 = icmp eq i32 %i.be, 0
  br i1 %.not140, label %._crit_edge, label %bb.m

._crit_edge:                                      ; preds = %bb.l
  %indvars.iv424.tr556 = trunc nuw i64 %indvars.iv424 to i32
  %.pre516 = shl nuw i32 %indvars.iv424.tr556, 1
  br label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %indvars.iv424.tr = trunc nuw i64 %indvars.iv424 to i32
  %i.bf = shl nuw i32 %indvars.iv424.tr, 1        ; 2 uses
  %i.bg = add nsw i32 %i.av, %i.bf
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %.val167, i64 %i.bh
  store i32 -1, ptr %i.bi, align 4, !tbaa !40
  %.pre = load i32, ptr %i.aw, align 4, !tbaa !40
  %.pre432 = load i64, ptr %i.ap, align 4         ; 2 uses
  %.pre467 = and i64 %.pre432, 536870911
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.m
  %.pre-phi517 = phi i32 [ %.pre516, %._crit_edge ], [ %i.bf, %bb.m ]
  %.pre-phi = phi i64 [ %i.ar, %._crit_edge ], [ %.pre467, %bb.m ]
  %i.bj = phi i64 [ %.val166, %._crit_edge ], [ %.pre432, %bb.m ]
  %i.bk = phi i32 [ %i.ax, %._crit_edge ], [ %.pre, %bb.m ] ; 17 uses
  %i.bl = getelementptr i8, ptr %i.at, i64 20
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !40
  %i.bn = getelementptr i8, ptr %i.at, i64 24
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !40
  %i.bp = sub nsw i64 0, %.pre-phi
  %i.bq = getelementptr inbounds [12 x i8], ptr %i.ap, i64 %i.bp ; 6 uses
  %i.br = lshr i64 %i.bj, 32
  %i.bs = and i64 %i.br, 536870911
  %i.bt = sub nsw i64 0, %i.bs
  %i.bu = getelementptr inbounds [12 x i8], ptr %i.ap, i64 %i.bt ; 6 uses
  %i.bv = add nsw i32 %i.bk, %.pre-phi517
  %.val = load i32, ptr %i.e, align 4, !tbaa !49  ; 26 uses
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %.val167, i64 %i.bw
  store i32 %.val, ptr %i.bx, align 4, !tbaa !40
  %i.by = icmp ne i32 %i.bm, 0                    ; 2 uses
  %i.bz = icmp ne i32 %i.bo, 0                    ; 2 uses
  %or.cond = select i1 %i.by, i1 %i.bz, i1 false
  %i.ca = load i32, ptr %i.c, align 8, !tbaa !51
  %i.cb = icmp eq i32 %.val, %i.ca                ; 4 uses
  br i1 %or.cond, label %bb.o, label %bb.ah

bb.o:                                             ; preds = %bb.n
  br i1 %i.cb, label %bb.p, label %Vec_IntPush.exit

bb.p:                                             ; preds = %bb.o
  %i.cc = icmp slt i32 %.val, 16
  br i1 %i.cc, label %Vec_IntGrow.exit11.sink.split.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cd = icmp samesign ult i32 %.val, 1073741823
  %i.ce = shl nuw nsw i32 %.val, 1
  %spec.select.i = select i1 %i.cd, i32 %i.ce, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %.val, %spec.select.i
  br i1 %.not.i9.i, label %bb.r, label %Vec_IntPush.exit

bb.r:                                             ; preds = %bb.q
  %i.cf = zext nneg i32 %spec.select.i to i64
  %i.cg = shl nuw nsw i64 %i.cf, 2
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.p, %bb.r
  %.sink = phi i64 [ %i.cg, %bb.r ], [ 64, %bb.p ]
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.r ], [ 16, %bb.p ]
  %i.ch = tail call ptr @realloc(ptr noundef nonnull %.val167, i64 noundef %.sink) #32 ; 3 uses
  store ptr %i.ch, ptr %i.ai, align 8, !tbaa !52
  store i32 %spec.select.sink.i, ptr %i.c, align 8, !tbaa !51
  %.pre457 = load i32, ptr %i.e, align 4, !tbaa !49
  %.val175.pre = load ptr, ptr %i.af, align 8, !tbaa !128
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.o, %bb.q, %Vec_IntGrow.exit11.sink.split.i
  %i.ci = phi ptr [ %i.aj, %bb.o ], [ %i.aj, %bb.q ], [ %i.ch, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %.val175 = phi ptr [ %.val164, %bb.o ], [ %.val164, %bb.q ], [ %.val175.pre, %Vec_IntGrow.exit11.sink.split.i ]
  %i.cj = phi i32 [ %.val, %bb.o ], [ %.val, %bb.q ], [ %.pre457, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ck = phi ptr [ %i.ak, %bb.o ], [ %i.ak, %bb.q ], [ %i.ch, %Vec_IntGrow.exit11.sink.split.i ] ; 4 uses
  %i.cl = add nsw i32 %i.cj, 1
  store i32 %i.cl, ptr %i.e, align 4, !tbaa !49
  %i.cm = sext i32 %i.cj to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.cm
  store i32 4, ptr %i.cn, align 4, !tbaa !40
  %i.co = ptrtoint ptr %i.bq to i64               ; 2 uses
  %i.cp = ptrtoint ptr %.val175 to i64            ; 3 uses
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = sdiv exact i64 %i.cq, 12
  %i.cs = trunc i64 %i.cr to i32                  ; 3 uses
  %.val3.i = load i64, ptr %i.bq, align 4         ; 2 uses
  %i.ct = trunc i64 %.val3.i to i32
  %i.cu = and i32 %i.ct, 536870911
  %i.cv = sub nsw i32 %i.cs, %i.cu
  %.val188 = load i64, ptr %i.ap, align 4
  %i.cw = xor i64 %.val188, %.val3.i
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = lshr i32 %i.cx, 29
  %i.cz = and i32 %i.cy, 1
  %.not156 = icmp eq i32 %i.cz, %i.bk
  %i.da = zext i1 %.not156 to i32
  %i.db = shl nsw i32 %i.cv, 1
  %i.dc = or disjoint i32 %i.db, %i.da
  %i.dd = load i32, ptr %i.e, align 4, !tbaa !49  ; 7 uses
  %i.de = load i32, ptr %i.c, align 8, !tbaa !51
  %i.df = icmp eq i32 %i.dd, %i.de
  br i1 %i.df, label %bb.s, label %Vec_IntPush.exit223

bb.s:                                             ; preds = %Vec_IntPush.exit
  %i.dg = icmp slt i32 %i.dd, 16
  br i1 %i.dg, label %Vec_IntGrow.exit11.sink.split.i219, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dh = icmp samesign ult i32 %i.dd, 1073741823
  %i.di = shl nuw nsw i32 %i.dd, 1
  %spec.select.i216 = select i1 %i.dh, i32 %i.di, i32 2147483647 ; 3 uses
  %.not.i9.i217 = icmp samesign ult i32 %i.dd, %spec.select.i216
  br i1 %.not.i9.i217, label %bb.u, label %Vec_IntPush.exit223

bb.u:                                             ; preds = %bb.t
  %i.dj = zext nneg i32 %spec.select.i216 to i64
  %i.dk = shl nuw nsw i64 %i.dj, 2
  br label %Vec_IntGrow.exit11.sink.split.i219

Vec_IntGrow.exit11.sink.split.i219:               ; preds = %bb.s, %bb.u
  %.sink557 = phi i64 [ %i.dk, %bb.u ], [ 64, %bb.s ]
  %spec.select.sink.i220 = phi i32 [ %spec.select.i216, %bb.u ], [ 16, %bb.s ]
  %i.dl = tail call ptr @realloc(ptr noundef nonnull %i.ck, i64 noundef %.sink557) #32 ; 3 uses
  store ptr %i.dl, ptr %i.ai, align 8, !tbaa !52
  store i32 %spec.select.sink.i220, ptr %i.c, align 8, !tbaa !51
  %.pre459 = load i32, ptr %i.e, align 4, !tbaa !49
  %.val205.pre = load ptr, ptr %i.af, align 8, !tbaa !128
  %.pre468 = ptrtoint ptr %.val205.pre to i64     ; 2 uses
  %.pre470 = sub i64 %i.co, %.pre468
  %.pre472 = sdiv exact i64 %.pre470, 12
  %.pre474 = trunc i64 %.pre472 to i32
  br label %Vec_IntPush.exit223

Vec_IntPush.exit223:                              ; preds = %Vec_IntPush.exit, %bb.t, %Vec_IntGrow.exit11.sink.split.i219
  %.pre-phi475 = phi i32 [ %i.cs, %Vec_IntPush.exit ], [ %i.cs, %bb.t ], [ %.pre474, %Vec_IntGrow.exit11.sink.split.i219 ]
  %.pre-phi469 = phi i64 [ %i.cp, %Vec_IntPush.exit ], [ %i.cp, %bb.t ], [ %.pre468, %Vec_IntGrow.exit11.sink.split.i219 ] ; 2 uses
  %i.dm = phi ptr [ %i.ci, %Vec_IntPush.exit ], [ %i.ci, %bb.t ], [ %i.dl, %Vec_IntGrow.exit11.sink.split.i219 ] ; 2 uses
  %i.dn = phi i32 [ %i.dd, %Vec_IntPush.exit ], [ %i.dd, %bb.t ], [ %.pre459, %Vec_IntGrow.exit11.sink.split.i219 ] ; 2 uses
  %i.do = phi ptr [ %i.ck, %Vec_IntPush.exit ], [ %i.ck, %bb.t ], [ %i.dl, %Vec_IntGrow.exit11.sink.split.i219 ] ; 4 uses
  %i.dp = add nsw i32 %i.dn, 1
  store i32 %i.dp, ptr %i.e, align 4, !tbaa !49
  %i.dq = sext i32 %i.dn to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.dq
  store i32 %i.dc, ptr %i.dr, align 4, !tbaa !40
  %.val3.i224 = load i64, ptr %i.bq, align 4      ; 2 uses
  %i.ds = lshr i64 %.val3.i224, 32
  %i.dt = trunc nuw i64 %i.ds to i32
  %i.du = and i32 %i.dt, 536870911
  %i.dv = sub nsw i32 %.pre-phi475, %i.du
  %.val186 = load i64, ptr %i.ap, align 4
  %i.dw = trunc i64 %.val186 to i32
  %i.dx = lshr i32 %i.dw, 29
  %i.dy = lshr i64 %.val3.i224, 61
  %i.dz = trunc nuw nsw i64 %i.dy to i32
  %i.ea = xor i32 %i.dx, %i.dz
  %i.eb = and i32 %i.ea, 1
  %.not157 = icmp eq i32 %i.eb, %i.bk
  %i.ec = zext i1 %.not157 to i32
  %i.ed = shl nsw i32 %i.dv, 1
  %i.ee = or disjoint i32 %i.ed, %i.ec
  %i.ef = load i32, ptr %i.e, align 4, !tbaa !49  ; 7 uses
  %i.eg = load i32, ptr %i.c, align 8, !tbaa !51
  %i.eh = icmp eq i32 %i.ef, %i.eg
  br i1 %i.eh, label %bb.v, label %Vec_IntPush.exit232

bb.v:                                             ; preds = %Vec_IntPush.exit223
  %i.ei = icmp slt i32 %i.ef, 16
  br i1 %i.ei, label %Vec_IntGrow.exit11.sink.split.i228, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ej = icmp samesign ult i32 %i.ef, 1073741823
  %i.ek = shl nuw nsw i32 %i.ef, 1
  %spec.select.i225 = select i1 %i.ej, i32 %i.ek, i32 2147483647 ; 3 uses
  %.not.i9.i226 = icmp samesign ult i32 %i.ef, %spec.select.i225
  br i1 %.not.i9.i226, label %bb.x, label %Vec_IntPush.exit232

bb.x:                                             ; preds = %bb.w
  %i.el = zext nneg i32 %spec.select.i225 to i64
  %i.em = shl nuw nsw i64 %i.el, 2
  br label %Vec_IntGrow.exit11.sink.split.i228

Vec_IntGrow.exit11.sink.split.i228:               ; preds = %bb.v, %bb.x
  %.sink558 = phi i64 [ %i.em, %bb.x ], [ 64, %bb.v ]
  %spec.select.sink.i229 = phi i32 [ %spec.select.i225, %bb.x ], [ 16, %bb.v ]
  %i.en = tail call ptr @realloc(ptr noundef nonnull %i.do, i64 noundef %.sink558) #32 ; 3 uses
  store ptr %i.en, ptr %i.ai, align 8, !tbaa !52
  store i32 %spec.select.sink.i229, ptr %i.c, align 8, !tbaa !51
  %.pre461 = load i32, ptr %i.e, align 4, !tbaa !49
  %.val174.pre = load ptr, ptr %i.af, align 8, !tbaa !128
  %.pre476 = ptrtoint ptr %.val174.pre to i64
  br label %Vec_IntPush.exit232

Vec_IntPush.exit232:                              ; preds = %Vec_IntPush.exit223, %bb.w, %Vec_IntGrow.exit11.sink.split.i228
  %.pre-phi477 = phi i64 [ %.pre-phi469, %Vec_IntPush.exit223 ], [ %.pre-phi469, %bb.w ], [ %.pre476, %Vec_IntGrow.exit11.sink.split.i228 ]
  %i.eo = phi ptr [ %i.dm, %Vec_IntPush.exit223 ], [ %i.dm, %bb.w ], [ %i.en, %Vec_IntGrow.exit11.sink.split.i228 ] ; 2 uses
  %i.ep = phi i32 [ %i.ef, %Vec_IntPush.exit223 ], [ %i.ef, %bb.w ], [ %.pre461, %Vec_IntGrow.exit11.sink.split.i228 ] ; 2 uses
  %i.eq = phi ptr [ %i.do, %Vec_IntPush.exit223 ], [ %i.do, %bb.w ], [ %i.en, %Vec_IntGrow.exit11.sink.split.i228 ] ; 4 uses
  %i.er = add nsw i32 %i.ep, 1
  store i32 %i.er, ptr %i.e, align 4, !tbaa !49
  %i.es = sext i32 %i.ep to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.es
  store i32 %i.ee, ptr %i.et, align 4, !tbaa !40
  %i.eu = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.ev = sub i64 %i.eu, %.pre-phi477
  %i.ew = sdiv exact i64 %i.ev, 12
end_hunk_0
begin_hunk_1_@Gia_KSatMapInit:bb.a
  br i1 %niter.ncmp.1, label %._crit_edge128.loopexit286.unr-lcssa, label %.preheader91, !llvm.loop !285

._crit_edge128.loopexit286.unr-lcssa:             ; preds = %.preheader91
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge128, label %.preheader91.epil.preheader

.preheader91.epil.preheader:                      ; preds = %._crit_edge128.loopexit286.unr-lcssa, %.preheader91.preheader
  %indvars.iv171.epil.init = phi i64 [ 0, %.preheader91.preheader ], [ %indvars.iv.next172.1, %._crit_edge128.loopexit286.unr-lcssa ] ; 2 uses
  %lcmp.mod287 = trunc i32 %smax184 to i1
  tail call void @llvm.assume(i1 %lcmp.mod287)
  %i.ez = lshr i64 %2, %indvars.iv171.epil.init
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = and i32 %i.fa, 1
  %i.fc = trunc i64 %indvars.iv171.epil.init to i32
  %i.fd = mul i32 %i.fc, 3
  %.reass.epil = add i32 %i.fd, %invariant.op221
  %i.fe = sext i32 %.reass.epil to i64
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fe
  store i32 %i.fb, ptr %i.ff, align 4, !tbaa !40
  br label %._crit_edge128

._crit_edge128:                                   ; preds = %.preheader91.epil.preheader, %._crit_edge128.loopexit286.unr-lcssa, %._crit_edge.us144, %._crit_edge124.us, %.preheader92.thread, %.preheader92
  %.5.lcssa = phi i32 [ %.us-phi, %.preheader92 ], [ %i.cq, %._crit_edge124.us ], [ 2, %.preheader92.thread ], [ 2, %._crit_edge.us144 ], [ 2, %._crit_edge128.loopexit286.unr-lcssa ], [ 2, %.preheader91.epil.preheader ]
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge128
  store i32 %.5.lcssa, ptr %3, align 4, !tbaa !40
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge128
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2147483648, 2147483647) i32 @Gia_KSatFindFan(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = mul nuw nsw i32 %1, 268
  %i.c = add nuw nsw i32 %i.b, 4
  %i.d = mul nsw i32 %2, 24
  %i.e = add nsw i32 %i.c, %i.d
  %i.f = getelementptr i8, ptr %3, i64 8
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !52
  %i.g = sext i32 %i.e to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.g
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.h = load i32, ptr %gep, align 4, !tbaa !40
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !40
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %._crit_edge.loopexit.split.loop.exit18

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !289

._crit_edge.loopexit.split.loop.exit18:           ; preds = %bb.b
  %i.l = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.loopexit.split.loop.exit18, %bb.a
  %i.m = phi i32 [ -1, %bb.a ], [ %i.l, %._crit_edge.loopexit.split.loop.exit18 ], [ -1, %bb.c ]
  ret i32 %i.m
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Gia_ManKSatGenLevels(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !187     ; 2 uses
  %.not42 = icmp eq i8 %i.a, 0
  br i1 %.not42, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ]
  %i.b = phi i8 [ %i.g, %.lr.ph ], [ %i.a, %bb.a ]
  %.03244 = phi i32 [ %i.e, %.lr.ph ], [ 0, %bb.a ]
  %i.c = sext i8 %i.b to i32
  %i.d = add i32 %.03244, -48
  %i.e = add i32 %i.d, %i.c                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  %i.g = load i8, ptr %i.f, align 1, !tbaa !187   ; 2 uses
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !290

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.032.lcssa = phi i32 [ 0, %bb.a ], [ %i.e, %.lr.ph ] ; 2 uses
  %.not40 = icmp eq i32 %.032.lcssa, %2
  br i1 %.not40, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.79, ptr noundef nonnull %0, i32 noundef %.032.lcssa, i32 noundef %2) ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %._crit_edge
  %i.i = shl nsw i32 %1, 1                        ; 6 uses
  %i.j = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 8 uses
  %i.k = add i32 %i.i, -1
  %or.cond.i.i = icmp ult i32 %i.k, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.i ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.j, align 8, !tbaa !51
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr null, ptr %i.m, align 8, !tbaa !52
  store i32 %i.i, ptr %i.l, align 4, !tbaa !49
  br label %Vec_IntStartFull.exit

Vec_IntAlloc.exit.i:                              ; preds = %bb.c
  %i.n = sext i32 %spec.store.select.i.i to i64
  %i.o = shl nsw i64 %i.n, 2
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #31 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !52
  store i32 %i.i, ptr %i.l, align 4, !tbaa !49
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %Vec_IntStartFull.exit, label %bb.d

bb.d:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.r = sext i32 %i.i to i64
  %i.s = shl nsw i64 %i.r, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.p, i8 -1, i64 %i.s, i1 false)
  br label %Vec_IntStartFull.exit

Vec_IntStartFull.exit:                            ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.d
  %.promoted5373 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i ], [ null, %Vec_IntAlloc.exit.i ], [ %i.p, %bb.d ]
  %i.t = load i8, ptr %0, align 1, !tbaa !187     ; 2 uses
  %.not4155 = icmp eq i8 %i.t, 0
  br i1 %.not4155, label %.loopexit, label %.lr.ph59

.lr.ph59:                                         ; preds = %Vec_IntStartFull.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph59, %bb.r
  %.promoted53 = phi ptr [ %.promoted5373, %.lr.ph59 ], [ %.promoted5372, %bb.r ] ; 2 uses
  %.promoted49 = phi i32 [ %spec.store.select.i.i, %.lr.ph59 ], [ %.promoted4970, %bb.r ] ; 2 uses
  %.promoted = phi i32 [ %i.i, %.lr.ph59 ], [ %.promoted68, %bb.r ] ; 2 uses
  %indvars.iv65 = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next66, %bb.r ]
  %i.v = phi i8 [ %i.t, %.lr.ph59 ], [ %i.bf, %bb.r ]
  %.058 = phi i32 [ %1, %.lr.ph59 ], [ %i.y, %bb.r ] ; 5 uses
  %.03157 = phi i32 [ 0, %.lr.ph59 ], [ %.058, %bb.r ]
  %i.w = sext i8 %i.v to i32
  %i.x = add i32 %.058, -48
  %i.y = add i32 %i.x, %i.w                       ; 3 uses
  %i.z = icmp slt i32 %.058, %i.y
  br i1 %i.z, label %.lr.ph47, label %bb.r

.lr.ph47:                                         ; preds = %bb.e
  %i.aa = sext i32 %.promoted to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph47, %Vec_IntPushTwo.exit
  %indvars.iv62 = phi i64 [ %i.aa, %.lr.ph47 ], [ %indvars.iv.next63, %Vec_IntPushTwo.exit ] ; 10 uses
  %i.ab = phi ptr [ %.promoted53, %.lr.ph47 ], [ %i.ba, %Vec_IntPushTwo.exit ] ; 6 uses
  %spec.select.sink.i.i50 = phi i32 [ %.promoted49, %.lr.ph47 ], [ %spec.select.sink.i.i51, %Vec_IntPushTwo.exit ] ; 3 uses
  %.03345 = phi i32 [ %.058, %.lr.ph47 ], [ %i.bc, %Vec_IntPushTwo.exit ]
  %i.ac = trunc nsw i64 %indvars.iv62 to i32
  %i.ad = icmp eq i32 %spec.select.sink.i.i50, %i.ac
  br i1 %i.ad, label %bb.g, label %Vec_IntPush.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ae = icmp slt i64 %indvars.iv62, 16
  br i1 %i.ae, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.not9.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not9.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ab, i64 noundef 64) #32
  br label %Vec_IntPush.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ag = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntPush.exit.i

bb.k:                                             ; preds = %bb.g
  %i.ah = icmp samesign ult i64 %indvars.iv62, 1073741823
  %indvars.iv62.tr = trunc i64 %indvars.iv62 to i32
  %i.ai = shl nsw i32 %indvars.iv62.tr, 1
  %spec.select.i.i = select i1 %i.ah, i32 %i.ai, i32 2147483647 ; 4 uses
  %i.aj = sext i32 %spec.select.i.i to i64
  %.not.i9.i.i = icmp samesign ult i64 %indvars.iv62, %i.aj
  br i1 %.not.i9.i.i, label %bb.l, label %Vec_IntPush.exit.i

bb.l:                                             ; preds = %bb.k
  %.not9.i10.i.i = icmp eq ptr %i.ab, null
  %i.ak = zext nneg i32 %spec.select.i.i to i64
  %i.al = shl nuw nsw i64 %i.ak, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = tail call ptr @realloc(ptr noundef nonnull %i.ab, i64 noundef %i.al) #32
  br label %Vec_IntPush.exit.i

bb.n:                                             ; preds = %bb.l
  %i.an = tail call noalias ptr @malloc(i64 noundef %i.al) #31
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %bb.j, %bb.i, %bb.n, %bb.m, %bb.k, %bb.f
  %i.ao = phi ptr [ %i.ab, %bb.f ], [ %i.ab, %bb.k ], [ %i.ag, %bb.j ], [ %i.af, %bb.i ], [ %i.am, %bb.m ], [ %i.an, %bb.n ] ; 4 uses
  %spec.select.sink.i.i52 = phi i32 [ %spec.select.sink.i.i50, %bb.f ], [ %spec.select.sink.i.i50, %bb.k ], [ 16, %bb.j ], [ 16, %bb.i ], [ %spec.select.i.i, %bb.m ], [ %spec.select.i.i, %bb.n ] ; 3 uses
  %i.ap = add nsw i64 %indvars.iv62, 1            ; 4 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %indvars.iv62
  store i32 %.03157, ptr %i.aq, align 4, !tbaa !40
  %i.ar = trunc nsw i64 %i.ap to i32
  %i.as = icmp eq i32 %spec.select.sink.i.i52, %i.ar
  br i1 %i.as, label %bb.o, label %Vec_IntPushTwo.exit

bb.o:                                             ; preds = %Vec_IntPush.exit.i
  %i.at = icmp slt i64 %indvars.iv62, 15
  br i1 %i.at, label %Vec_IntGrow.exit11.sink.split.i6.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = icmp samesign ult i64 %indvars.iv62, 1073741822
  %.tr = trunc i64 %i.ap to i32
  %i.av = shl nsw i32 %.tr, 1
  %spec.select.i3.i = select i1 %i.au, i32 %i.av, i32 2147483647 ; 3 uses
  %i.aw = sext i32 %spec.select.i3.i to i64
  %.not.i9.i4.i = icmp samesign ult i64 %i.ap, %i.aw
  br i1 %.not.i9.i4.i, label %bb.q, label %Vec_IntPushTwo.exit

bb.q:                                             ; preds = %bb.p
  %i.ax = zext nneg i32 %spec.select.i3.i to i64
  %i.ay = shl nuw nsw i64 %i.ax, 2
  br label %Vec_IntGrow.exit11.sink.split.i6.i

Vec_IntGrow.exit11.sink.split.i6.i:               ; preds = %bb.q, %bb.o
  %.sink.i = phi i64 [ %i.ay, %bb.q ], [ 64, %bb.o ]
  %spec.select.sink.i7.i = phi i32 [ %spec.select.i3.i, %bb.q ], [ 16, %bb.o ]
  %i.az = tail call ptr @realloc(ptr noundef nonnull %i.ao, i64 noundef %.sink.i) #32
  br label %Vec_IntPushTwo.exit

Vec_IntPushTwo.exit:                              ; preds = %Vec_IntPush.exit.i, %bb.p, %Vec_IntGrow.exit11.sink.split.i6.i
  %i.ba = phi ptr [ %i.ao, %Vec_IntPush.exit.i ], [ %i.ao, %bb.p ], [ %i.az, %Vec_IntGrow.exit11.sink.split.i6.i ] ; 4 uses
  %spec.select.sink.i.i51 = phi i32 [ %spec.select.sink.i.i52, %Vec_IntPush.exit.i ], [ %spec.select.sink.i.i52, %bb.p ], [ %spec.select.sink.i7.i, %Vec_IntGrow.exit11.sink.split.i6.i ] ; 3 uses
  %indvars.iv.next63 = add nsw i64 %indvars.iv62, 2 ; 2 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.ap
  store i32 %.058, ptr %i.bb, align 4, !tbaa !40
  %i.bc = add nsw i32 %.03345, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.bc, %i.y
  br i1 %exitcond.not, label %._crit_edge48, label %bb.f, !llvm.loop !291

._crit_edge48:                                    ; preds = %Vec_IntPushTwo.exit
  %i.bd = trunc nsw i64 %indvars.iv.next63 to i32 ; 2 uses
  store i32 %i.bd, ptr %i.l, align 4, !tbaa !49
  store i32 %spec.select.sink.i.i51, ptr %i.j, align 8
  store ptr %i.ba, ptr %i.u, align 8
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge48, %bb.e
  %.promoted5372 = phi ptr [ %i.ba, %._crit_edge48 ], [ %.promoted53, %bb.e ]
  %.promoted4970 = phi i32 [ %spec.select.sink.i.i51, %._crit_edge48 ], [ %.promoted49, %bb.e ]
  %.promoted68 = phi i32 [ %i.bd, %._crit_edge48 ], [ %.promoted, %bb.e ]
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next66
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !187 ; 2 uses
  %.not41 = icmp eq i8 %i.bf, 0
  br i1 %.not41, label %.loopexit, label %bb.e, !llvm.loop !292

.loopexit:                                        ; preds = %bb.r, %Vec_IntStartFull.exit, %bb.b
  %.035 = phi ptr [ null, %bb.b ], [ %i.j, %Vec_IntStartFull.exit ], [ %i.j, %bb.r ]
  ret ptr %.035
}

; Function Attrs: nounwind uwtable
define noundef ptr @Gia_ManKSatCnf(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i32], align 16             ; 34 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 123 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  store i32 0, ptr %i.c, align 4, !tbaa !247
  store i32 10000, ptr %i.b, align 8, !tbaa !249
  %i.d = tail call noalias dereferenceable_or_null(10000) ptr @malloc(i64 noundef 10000) #31
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !250
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @Gia_ManKSatGenLevels(ptr noundef nonnull %5, i32 noundef %1, i32 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.48, i32 noundef -1)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.49)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.48, i32 noundef 2)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.49)
  %.not324 = icmp eq ptr %i.g, null               ; 2 uses
  br i1 %.not324, label %.loopexit469, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = shl nsw i32 %1, 1                        ; 2 uses
  %i.i = getelementptr i8, ptr %i.g, i64 4        ; 2 uses
  %i.j = or disjoint i32 %i.h, 1                  ; 2 uses
  %.val475 = load i32, ptr %i.i, align 4, !tbaa !49
  %i.k = icmp slt i32 %i.j, %.val475
  br i1 %i.k, label %.critedge.lr.ph, label %.loopexit469

.critedge.lr.ph:                                  ; preds = %bb.d
  %i.l = getelementptr i8, ptr %i.g, i64 8
  %i.m = sext i32 %1 to i64
  %i.n = sext i32 %i.h to i64
  %i.o = sext i32 %i.j to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %.split
  %indvars.iv556 = phi i64 [ %i.n, %.critedge.lr.ph ], [ %indvars.iv.next557, %.split ] ; 2 uses
  %indvars.iv554 = phi i64 [ %i.m, %.critedge.lr.ph ], [ %indvars.iv.next555, %.split ] ; 5 uses
  %i.p = phi i64 [ %i.o, %.critedge.lr.ph ], [ %i.an, %.split ]
  %.val330 = load ptr, ptr %i.l, align 8, !tbaa !52 ; 2 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %.val330, i64 %indvars.iv556
  %i.r = load i32, ptr %i.q, align 4, !tbaa !40   ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %.val330, i64 %i.p
  %i.t = load i32, ptr %i.s, align 4, !tbaa !40
  %i.u = icmp sgt i32 %i.r, 0
  %i.v = mul nsw i64 %indvars.iv554, 268          ; 3 uses
  br i1 %i.u, label %.lr.ph, label %.preheader468

.lr.ph:                                           ; preds = %.critedge
  %wide.trip.count = zext nneg i32 %i.r to i64
  %i.w = getelementptr [4 x i8], ptr %0, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 112
  br label %bb.e

.preheader468:                                    ; preds = %bb.e, %.critedge
  %i.y = sext i32 %i.t to i64                     ; 3 uses
  %i.z = icmp sgt i64 %indvars.iv554, %i.y
  br i1 %i.z, label %.preheader467.preheader, label %.split

.preheader467.preheader:                          ; preds = %.preheader468
  %i.aa = getelementptr [4 x i8], ptr %0, i64 %i.v
  %i.ab = getelementptr i8, ptr %i.aa, i64 16
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.ac = getelementptr [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !40
  %i.ae = xor i32 %i.ad, -1
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.48, i32 noundef %i.ae)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.49)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader468, label %bb.e, !llvm.loop !293

bb.f:                                             ; preds = %.preheader467.preheader, %bb.f
  %indvars.iv546 = phi i64 [ %i.y, %.preheader467.preheader ], [ %indvars.iv.next547, %bb.f ] ; 2 uses
  %i.af = getelementptr [4 x i8], ptr %i.ab, i64 %indvars.iv546
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !40
  %i.ah = xor i32 %i.ag, -1
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.48, i32 noundef %i.ah)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.49)
  %indvars.iv.next547 = add nsw i64 %indvars.iv546, 1 ; 2 uses
  %exitcond550.not = icmp eq i64 %indvars.iv.next547, %indvars.iv554
  br i1 %exitcond550.not, label %._crit_edge, label %bb.f, !llvm.loop !294

._crit_edge:                                      ; preds = %bb.f
  %i.ai = getelementptr [4 x i8], ptr %0, i64 %i.v
  %i.aj = getelementptr i8, ptr %i.ai, i64 112
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %._crit_edge
  %indvars.iv546.1 = phi i64 [ %i.y, %._crit_edge ], [ %indvars.iv.next547.1, %bb.g ] ; 2 uses
  %i.ak = getelementptr [4 x i8], ptr %i.aj, i64 %indvars.iv546.1
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !40
  %i.am = xor i32 %i.al, -1
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.48, i32 noundef %i.am)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.49)
  %indvars.iv.next547.1 = add nsw i64 %indvars.iv546.1, 1 ; 2 uses
  %exitcond550.1.not = icmp eq i64 %indvars.iv.next547.1, %indvars.iv554
  br i1 %exitcond550.1.not, label %.split, label %bb.g, !llvm.loop !294

.split:                                           ; preds = %bb.g, %.preheader468
  %indvars.iv.next555 = add nsw i64 %indvars.iv554, 1
  %indvars.iv.next557 = add nsw i64 %indvars.iv556, 2 ; 2 uses
  %i.an = or disjoint i64 %indvars.iv.next557, 1  ; 2 uses
  %.val = load i32, ptr %i.i, align 4, !tbaa !49
  %i.ao = sext i32 %.val to i64
  %i.ap = icmp slt i64 %i.an, %i.ao
  br i1 %i.ap, label %.critedge, label %.loopexit469, !llvm.loop !295

.loopexit469:                                     ; preds = %.split, %bb.d, %bb.c
  %i.aq = add i32 %2, %1                          ; 10 uses
  %i.ar = icmp sgt i32 %2, 0                      ; 3 uses
  br i1 %i.ar, label %.preheader466, label %.preheader459

.preheader466:                                    ; preds = %.loopexit469, %Gia_SatDumpClause.exit338.1
  %.1300486 = phi i32 [ %i.ed, %Gia_SatDumpClause.exit338.1 ], [ %1, %.loopexit469 ] ; 11 uses
  %i.as = icmp sgt i32 %.1300486, 0               ; 2 uses
  %i.at = mul nsw i32 %.1300486, 268
  %i.au = add nsw i32 %i.at, 4
  %i.av = add nsw i32 %.1300486, -1               ; 3 uses
  %wide.trip.count.i332 = zext i32 %.1300486 to i64 ; 14 uses
  %i.aw = zext i32 %i.au to i64                   ; 4 uses
  br i1 %i.as, label %.lr.ph480, label %._crit_edge481.1.thread.critedge

.preheader463.lr.ph:                              ; preds = %Gia_SatDumpClause.exit338.1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.az = sext i32 %1 to i64
  %i.ba = sext i32 %i.aq to i64
  %.promoted751 = load i32, ptr %i.ay, align 8
  br label %.preheader463

.lr.ph480:                                        ; preds = %.preheader466
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aw ; 2 uses
  %min.iters.check825 = icmp ult i32 %.1300486, 8
  br i1 %min.iters.check825, label %scalar.ph824.preheader, label %vector.ph826

vector.ph826:                                     ; preds = %.lr.ph480
  %n.vec827 = and i64 %wide.trip.count.i332, 2147483640 ; 3 uses
  br label %vector.body828

end_hunk_1
begin_hunk_2_@Gia_ManKSatCnf:bb.a
bb.y:                                             ; preds = %Vec_StrPush.exit
  %i.st = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !52 ; 2 uses
  %.not.i439 = icmp eq ptr %i.su, null
  br i1 %.not.i439, label %bb.z, label %.thread.i

.thread.i:                                        ; preds = %bb.y
  tail call void @free(ptr noundef nonnull %i.su) #30
  br label %bb.z

bb.z:                                             ; preds = %.thread.i, %bb.y
  tail call void @free(ptr noundef nonnull %i.g) #30
  br label %Vec_IntFreeP.exit

Vec_IntFreeP.exit:                                ; preds = %Vec_StrPush.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret ptr %i.b
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @Gia_ManDeriveKSatMappingArray(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %.val204 = load i32, ptr %i.a, align 8, !tbaa !114 ; 2 uses
  %i.b = shl nsw i32 %.val204, 1                  ; 5 uses
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 49 uses
  %i.d = add i32 %i.b, -1
  %or.cond.i.i = icmp ult i32 %i.d, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.b ; 3 uses
  %i.e = getelementptr i8, ptr %i.c, i64 4        ; 65 uses
  store i32 %spec.store.select.i.i, ptr %i.c, align 8, !tbaa !51
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %i.f, align 8, !tbaa !52
  store i32 %i.b, ptr %i.e, align 4, !tbaa !49
  br label %Vec_IntStart.exit

Vec_IntAlloc.exit.i:                              ; preds = %bb.a
  %i.g = sext i32 %spec.store.select.i.i to i64
  %i.h = shl nsw i64 %i.g, 2
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #31 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !52
  store i32 %i.b, ptr %i.e, align 4, !tbaa !49
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %Vec_IntStart.exit, label %bb.b

bb.b:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.k = sext i32 %i.b to i64
  %i.l = shl nsw i64 %i.k, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.i, i8 0, i64 %i.l, i1 false)
  br label %Vec_IntStart.exit

Vec_IntStart.exit:                                ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.b
  %.val212 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i ], [ null, %Vec_IntAlloc.exit.i ], [ %i.i, %bb.b ] ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !191  ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 4        ; 2 uses
  %.val197534 = load i32, ptr %i.o, align 4, !tbaa !49 ; 2 uses
  %i.p = icmp sgt i32 %.val197534, 0
  br i1 %i.p, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_IntStart.exit
  %i.q = getelementptr i8, ptr %i.n, i64 8
  %.val223.val = load ptr, ptr %i.q, align 8, !tbaa !52
  %i.r = getelementptr i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.val197545 = phi i32 [ %.val197534, %.lr.ph ], [ %.val197, %bb.f ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.val223.val, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !40   ; 3 uses
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val203 = load ptr, ptr %i.r, align 8, !tbaa !52
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %.val203, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !40
  %.not196 = icmp eq i32 %i.w, 0
  br i1 %.not196, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = shl nsw i32 %i.t, 1
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr [4 x i8], ptr %.val212, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 4
  store i32 -1, ptr %i.aa, align 4, !tbaa !40
  %.val197.pre = load i32, ptr %i.o, align 4, !tbaa !49
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.val197 = phi i32 [ %.val197545, %bb.d ], [ %.val197.pre, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = sext i32 %.val197 to i64
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %bb.c, label %.critedge, !llvm.loop !324

.critedge:                                        ; preds = %bb.c, %bb.f, %Vec_IntStart.exit
  %i.ad = getelementptr i8, ptr %0, i64 32        ; 16 uses
  %i.ae = icmp sgt i32 %.val204, 0
  br i1 %i.ae, label %.lr.ph538, label %.critedge2

.lr.ph538:                                        ; preds = %.critedge
  %i.af = getelementptr i8, ptr %1, i64 8
  %i.ag = getelementptr i8, ptr %i.c, i64 8       ; 20 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph538, %bb.dw
  %i.ah = phi ptr [ %.val212, %.lr.ph538 ], [ %i.abl, %bb.dw ] ; 10 uses
  %i.ai = phi ptr [ %.val212, %.lr.ph538 ], [ %i.abm, %bb.dw ] ; 10 uses
  %i.aj = phi ptr [ %.val212, %.lr.ph538 ], [ %i.abn, %bb.dw ] ; 10 uses
  %i.ak = phi ptr [ %.val212, %.lr.ph538 ], [ %i.abo, %bb.dw ] ; 10 uses
  %i.al = phi ptr [ %.val212, %.lr.ph538 ], [ %i.abp, %bb.dw ] ; 8 uses
  %i.am = phi ptr [ %.val212, %.lr.ph538 ], [ %i.abq, %bb.dw ] ; 8 uses
  %i.an = phi ptr [ %.val212, %.lr.ph538 ], [ %i.abr, %bb.dw ] ; 6 uses
  %i.ao = phi ptr [ %.val212, %.lr.ph538 ], [ %i.abs, %bb.dw ] ; 6 uses
  %.val210 = phi ptr [ %.val212, %.lr.ph538 ], [ %.val211548, %bb.dw ] ; 10 uses
  %indvars.iv541 = phi i64 [ 0, %.lr.ph538 ], [ %indvars.iv.next542, %bb.dw ] ; 6 uses
  %.val205 = load ptr, ptr %i.ad, align 8, !tbaa !128 ; 8 uses
  %i.ap = getelementptr inbounds nuw [12 x i8], ptr %.val205, i64 %indvars.iv541 ; 24 uses
  %.not167 = icmp eq ptr %.val205, null
  br i1 %.not167, label %.critedge2, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val209 = load i64, ptr %i.ap, align 4         ; 4 uses
  %i.aq = and i64 %.val209, 2147483648
  %.not.i269 = icmp ne i64 %i.aq, 0
  %i.ar = and i64 %.val209, 536870911             ; 2 uses
  %i.as = icmp eq i64 %i.ar, 536870911
  %narrow.i.not = or i1 %.not.i269, %i.as
  br i1 %narrow.i.not, label %bb.dw, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val202 = load ptr, ptr %i.af, align 8, !tbaa !52 ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.val202, i64 %indvars.iv541
  %i.au = load i32, ptr %i.at, align 4, !tbaa !40 ; 3 uses
  %i.av = and i32 %i.au, 2
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.dw, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = sub nsw i64 0, %i.ar
  %i.ay = getelementptr inbounds [12 x i8], ptr %i.ap, i64 %i.ax ; 10 uses
  %i.az = lshr i64 %.val209, 32                   ; 2 uses
  %i.ba = and i64 %i.az, 536870911
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = getelementptr inbounds [12 x i8], ptr %i.ap, i64 %i.bb ; 10 uses
  %i.bd = and i32 %i.au, 4                        ; 2 uses
  %.not169 = icmp eq i32 %i.bd, 0                 ; 8 uses
  %.lobit = lshr exact i32 %i.bd, 2               ; 17 uses
  %i.be = and i64 %.val209, 536870911
  %i.bf = sub nsw i64 %indvars.iv541, %i.be
  %sext = shl i64 %i.bf, 32
  %i.bg = ashr exact i64 %sext, 30
  %i.bh = getelementptr inbounds i8, ptr %.val202, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !40
  %i.bj = and i32 %i.bi, 2
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.val208 = load i64, ptr %i.ay, align 4         ; 2 uses
  %i.bl = and i64 %.val208, 2147483648
  %.not.i270 = icmp eq i64 %i.bl, 0
  %i.bm = and i64 %.val208, 536870911
  %i.bn = icmp ne i64 %i.bm, 536870911
  %narrow.i271 = and i1 %.not.i270, %i.bn
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bo = phi i1 [ false, %bb.j ], [ %narrow.i271, %bb.k ] ; 2 uses
  %i.bp = and i64 %i.az, 536870911
  %i.bq = sub nsw i64 %indvars.iv541, %i.bp
  %sext714 = shl i64 %i.bq, 32
  %i.br = ashr exact i64 %sext714, 30
  %i.bs = getelementptr inbounds i8, ptr %.val202, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !40
  %i.bu = and i32 %i.bt, 2
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.val207 = load i64, ptr %i.bc, align 4         ; 2 uses
  %i.bw = and i64 %.val207, 2147483648
  %.not.i272 = icmp eq i64 %i.bw, 0
  %i.bx = and i64 %.val207, 536870911
  %i.by = icmp ne i64 %i.bx, 536870911
  %narrow.i273 = and i1 %.not.i272, %i.by
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bz = phi i1 [ false, %bb.l ], [ %narrow.i273, %bb.m ] ; 2 uses
  %i.ca = and i32 %i.au, 1
  %.not170 = icmp eq i32 %i.ca, 0
  %indvars.iv541.tr715 = trunc nuw i64 %indvars.iv541 to i32
  %.pre655 = shl nuw i32 %indvars.iv541.tr715, 1
  %.pre657 = or disjoint i32 %.lobit, %.pre655    ; 2 uses
  br i1 %.not170, label %._crit_edge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = xor i32 %.pre657, 1
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.val210, i64 %i.cc
  store i32 -1, ptr %i.cd, align 4, !tbaa !40
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.n, %bb.o
  %.val = load i32, ptr %i.e, align 4, !tbaa !49  ; 26 uses
  %i.ce = zext nneg i32 %.pre657 to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.val210, i64 %i.ce
  store i32 %.val, ptr %i.cf, align 4, !tbaa !40
  %or.cond = select i1 %i.bo, i1 %i.bz, i1 false
  %i.cg = load i32, ptr %i.c, align 8, !tbaa !51
  %i.ch = icmp eq i32 %.val, %i.cg                ; 4 uses
  br i1 %or.cond, label %bb.p, label %bb.br

bb.p:                                             ; preds = %._crit_edge
  br i1 %i.ch, label %bb.q, label %Vec_IntPush.exit

bb.q:                                             ; preds = %bb.p
  %i.ci = icmp slt i32 %.val, 16
  br i1 %i.ci, label %Vec_IntGrow.exit11.sink.split.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = icmp samesign ult i32 %.val, 1073741823
  %i.ck = shl nuw nsw i32 %.val, 1
  %spec.select.i = select i1 %i.cj, i32 %i.ck, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %.val, %spec.select.i
  br i1 %.not.i9.i, label %bb.s, label %Vec_IntPush.exit

bb.s:                                             ; preds = %bb.r
  %i.cl = zext nneg i32 %spec.select.i to i64
  %i.cm = shl nuw nsw i64 %i.cl, 2
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.q, %bb.s
  %.sink = phi i64 [ %i.cm, %bb.s ], [ 64, %bb.q ]
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.s ], [ 16, %bb.q ]
  %i.cn = tail call ptr @realloc(ptr noundef nonnull %.val210, i64 noundef %.sink) #32 ; 5 uses
  store ptr %i.cn, ptr %i.ag, align 8, !tbaa !52
  store i32 %spec.select.sink.i, ptr %i.c, align 8, !tbaa !51
  %.pre572 = load i32, ptr %i.e, align 4, !tbaa !49
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.p, %bb.r, %Vec_IntGrow.exit11.sink.split.i
  %i.co = phi ptr [ %i.ah, %bb.p ], [ %i.ah, %bb.r ], [ %i.cn, %Vec_IntGrow.exit11.sink.split.i ] ; 4 uses
  %i.cp = phi ptr [ %i.ai, %bb.p ], [ %i.ai, %bb.r ], [ %i.cn, %Vec_IntGrow.exit11.sink.split.i ] ; 4 uses
  %i.cq = phi ptr [ %i.aj, %bb.p ], [ %i.aj, %bb.r ], [ %i.cn, %Vec_IntGrow.exit11.sink.split.i ] ; 4 uses
  %i.cr = phi i32 [ %.val, %bb.p ], [ %.val, %bb.r ], [ %.pre572, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.cs = phi ptr [ %i.ak, %bb.p ], [ %i.ak, %bb.r ], [ %i.cn, %Vec_IntGrow.exit11.sink.split.i ] ; 7 uses
  %i.ct = add nsw i32 %i.cr, 1
  store i32 %i.ct, ptr %i.e, align 4, !tbaa !49
  %i.cu = sext i32 %i.cr to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.cu
  store i32 4, ptr %i.cv, align 4, !tbaa !40
  %.val241 = load i64, ptr %i.ap, align 4         ; 2 uses
  %i.cw = and i64 %.val241, 2305843009750564864
  %or.cond533.not = icmp eq i64 %i.cw, 2305843009213693952
  %.val221 = load ptr, ptr %i.ad, align 8, !tbaa !128
  %i.cx = ptrtoint ptr %.val221 to i64            ; 6 uses
  br i1 %or.cond533.not, label %bb.t, label %bb.ag

bb.t:                                             ; preds = %Vec_IntPush.exit
  %i.cy = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.cz = sub i64 %i.cy, %i.cx
  %i.da = sdiv exact i64 %i.cz, 12
  %i.db = trunc i64 %i.da to i32                  ; 3 uses
  %.val3.i = load i64, ptr %i.bc, align 4
  %i.dc = trunc i64 %.val3.i to i32               ; 2 uses
  %i.dd = and i32 %i.dc, 536870911
  %i.de = sub nsw i32 %i.db, %i.dd
  %i.df = lshr i32 %i.dc, 29
  %i.dg = and i32 %i.df, 1
  %.not184 = icmp ne i32 %i.dg, %.lobit
  %i.dh = zext i1 %.not184 to i32
  %i.di = shl nsw i32 %i.de, 1
  %i.dj = or disjoint i32 %i.di, %i.dh
  %i.dk = load i32, ptr %i.e, align 4, !tbaa !49  ; 7 uses
  %i.dl = load i32, ptr %i.c, align 8, !tbaa !51
  %i.dm = icmp eq i32 %i.dk, %i.dl
  br i1 %i.dm, label %bb.u, label %Vec_IntPush.exit281

bb.u:                                             ; preds = %bb.t
  %i.dn = icmp slt i32 %i.dk, 16
  br i1 %i.dn, label %Vec_IntGrow.exit11.sink.split.i277, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.do = icmp samesign ult i32 %i.dk, 1073741823
  %i.dp = shl nuw nsw i32 %i.dk, 1
  %spec.select.i274 = select i1 %i.do, i32 %i.dp, i32 2147483647 ; 3 uses
  %.not.i9.i275 = icmp samesign ult i32 %i.dk, %spec.select.i274
  br i1 %.not.i9.i275, label %bb.w, label %Vec_IntPush.exit281

bb.w:                                             ; preds = %bb.v
  %i.dq = zext nneg i32 %spec.select.i274 to i64
  %i.dr = shl nuw nsw i64 %i.dq, 2
  br label %Vec_IntGrow.exit11.sink.split.i277

Vec_IntGrow.exit11.sink.split.i277:               ; preds = %bb.u, %bb.w
  %.sink716 = phi i64 [ %i.dr, %bb.w ], [ 64, %bb.u ]
  %spec.select.sink.i278 = phi i32 [ %spec.select.i274, %bb.w ], [ 16, %bb.u ]
  %i.ds = tail call ptr @realloc(ptr noundef nonnull %i.cs, i64 noundef %.sink716) #32 ; 5 uses
  store ptr %i.ds, ptr %i.ag, align 8, !tbaa !52
  store i32 %spec.select.sink.i278, ptr %i.c, align 8, !tbaa !51
  %.pre580 = load i32, ptr %i.e, align 4, !tbaa !49
  %.val268.pre = load ptr, ptr %i.ad, align 8, !tbaa !128
  %.pre590 = ptrtoint ptr %.val268.pre to i64     ; 2 uses
  %.pre591 = sub i64 %i.cy, %.pre590
  %.pre593 = sdiv exact i64 %.pre591, 12
  %.pre595 = trunc i64 %.pre593 to i32
  br label %Vec_IntPush.exit281

Vec_IntPush.exit281:                              ; preds = %bb.t, %bb.v, %Vec_IntGrow.exit11.sink.split.i277
  %.pre-phi596 = phi i32 [ %i.db, %bb.t ], [ %i.db, %bb.v ], [ %.pre595, %Vec_IntGrow.exit11.sink.split.i277 ]
  %.pre-phi = phi i64 [ %i.cx, %bb.t ], [ %i.cx, %bb.v ], [ %.pre590, %Vec_IntGrow.exit11.sink.split.i277 ] ; 2 uses
  %i.dt = phi ptr [ %i.co, %bb.t ], [ %i.co, %bb.v ], [ %i.ds, %Vec_IntGrow.exit11.sink.split.i277 ] ; 2 uses
  %i.du = phi ptr [ %i.cp, %bb.t ], [ %i.cp, %bb.v ], [ %i.ds, %Vec_IntGrow.exit11.sink.split.i277 ] ; 2 uses
  %i.dv = phi ptr [ %i.cq, %bb.t ], [ %i.cq, %bb.v ], [ %i.ds, %Vec_IntGrow.exit11.sink.split.i277 ] ; 2 uses
  %i.dw = phi i32 [ %i.dk, %bb.t ], [ %i.dk, %bb.v ], [ %.pre580, %Vec_IntGrow.exit11.sink.split.i277 ] ; 2 uses
  %i.dx = phi ptr [ %i.cs, %bb.t ], [ %i.cs, %bb.v ], [ %i.ds, %Vec_IntGrow.exit11.sink.split.i277 ] ; 4 uses
  %i.dy = add nsw i32 %i.dw, 1
  store i32 %i.dy, ptr %i.e, align 4, !tbaa !49
  %i.dz = sext i32 %i.dw to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.dz
  store i32 %i.dj, ptr %i.ea, align 4, !tbaa !40
  %.val3.i282 = load i64, ptr %i.bc, align 4      ; 2 uses
  %i.eb = lshr i64 %.val3.i282, 32
  %i.ec = trunc nuw i64 %i.eb to i32
  %i.ed = and i32 %i.ec, 536870911
  %i.ee = sub nsw i32 %.pre-phi596, %i.ed
  %.val257 = load i64, ptr %i.ap, align 4
  %i.ef = xor i64 %.val257, %.val3.i282
  %i.eg = lshr i64 %i.ef, 61
  %i.eh = trunc nuw nsw i64 %i.eg to i32
  %i.ei = and i32 %i.eh, 1
  %.not185 = icmp eq i32 %i.ei, %.lobit
  %i.ej = zext i1 %.not185 to i32
  %i.ek = shl nsw i32 %i.ee, 1
  %i.el = or disjoint i32 %i.ek, %i.ej
  %i.em = load i32, ptr %i.e, align 4, !tbaa !49  ; 7 uses
  %i.en = load i32, ptr %i.c, align 8, !tbaa !51
  %i.eo = icmp eq i32 %i.em, %i.en
  br i1 %i.eo, label %bb.x, label %Vec_IntPush.exit290

bb.x:                                             ; preds = %Vec_IntPush.exit281
  %i.ep = icmp slt i32 %i.em, 16
  br i1 %i.ep, label %Vec_IntGrow.exit11.sink.split.i286, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eq = icmp samesign ult i32 %i.em, 1073741823
  %i.er = shl nuw nsw i32 %i.em, 1
  %spec.select.i283 = select i1 %i.eq, i32 %i.er, i32 2147483647 ; 3 uses
  %.not.i9.i284 = icmp samesign ult i32 %i.em, %spec.select.i283
  br i1 %.not.i9.i284, label %bb.z, label %Vec_IntPush.exit290

bb.z:                                             ; preds = %bb.y
  %i.es = zext nneg i32 %spec.select.i283 to i64
  %i.et = shl nuw nsw i64 %i.es, 2
  br label %Vec_IntGrow.exit11.sink.split.i286

Vec_IntGrow.exit11.sink.split.i286:               ; preds = %bb.x, %bb.z
  %.sink717 = phi i64 [ %i.et, %bb.z ], [ 64, %bb.x ]
  %spec.select.sink.i287 = phi i32 [ %spec.select.i283, %bb.z ], [ 16, %bb.x ]
  %i.eu = tail call ptr @realloc(ptr noundef nonnull %i.dx, i64 noundef %.sink717) #32 ; 5 uses
  store ptr %i.eu, ptr %i.ag, align 8, !tbaa !52
  store i32 %spec.select.sink.i287, ptr %i.c, align 8, !tbaa !51
  %.pre582 = load i32, ptr %i.e, align 4, !tbaa !49
  %.val220.pre = load ptr, ptr %i.ad, align 8, !tbaa !128
  %.pre597 = ptrtoint ptr %.val220.pre to i64
  br label %Vec_IntPush.exit290

Vec_IntPush.exit290:                              ; preds = %Vec_IntPush.exit281, %bb.y, %Vec_IntGrow.exit11.sink.split.i286
  %.pre-phi598 = phi i64 [ %.pre-phi, %Vec_IntPush.exit281 ], [ %.pre-phi, %bb.y ], [ %.pre597, %Vec_IntGrow.exit11.sink.split.i286 ]
  %i.ev = phi ptr [ %i.dt, %Vec_IntPush.exit281 ], [ %i.dt, %bb.y ], [ %i.eu, %Vec_IntGrow.exit11.sink.split.i286 ] ; 2 uses
  %i.ew = phi ptr [ %i.du, %Vec_IntPush.exit281 ], [ %i.du, %bb.y ], [ %i.eu, %Vec_IntGrow.exit11.sink.split.i286 ] ; 2 uses
  %i.ex = phi ptr [ %i.dv, %Vec_IntPush.exit281 ], [ %i.dv, %bb.y ], [ %i.eu, %Vec_IntGrow.exit11.sink.split.i286 ] ; 2 uses
  %i.ey = phi i32 [ %i.em, %Vec_IntPush.exit281 ], [ %i.em, %bb.y ], [ %.pre582, %Vec_IntGrow.exit11.sink.split.i286 ] ; 2 uses
  %i.ez = phi ptr [ %i.dx, %Vec_IntPush.exit281 ], [ %i.dx, %bb.y ], [ %i.eu, %Vec_IntGrow.exit11.sink.split.i286 ] ; 4 uses
  %i.fa = add nsw i32 %i.ey, 1
  store i32 %i.fa, ptr %i.e, align 4, !tbaa !49
  %i.fb = sext i32 %i.ey to i64
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.fb
  store i32 %i.el, ptr %i.fc, align 4, !tbaa !40
  %i.fd = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.fe = sub i64 %i.fd, %.pre-phi598
  %i.ff = sdiv exact i64 %i.fe, 12
  %i.fg = trunc i64 %i.ff to i32                  ; 3 uses
  %.val3.i291 = load i64, ptr %i.ay, align 4      ; 2 uses
  %i.fh = trunc i64 %.val3.i291 to i32
  %i.fi = and i32 %i.fh, 536870911
  %i.fj = sub nsw i32 %i.fg, %i.fi
  %.val239 = load i64, ptr %i.ap, align 4
  %i.fk = xor i64 %.val239, %.val3.i291
  %i.fl = trunc i64 %i.fk to i32
  %i.fm = lshr i32 %i.fl, 29
  %i.fn = and i32 %i.fm, 1
end_hunk_2
