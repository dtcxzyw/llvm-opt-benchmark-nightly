Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/solver_api?download=true
inline.NumInlined: 299
inline.NumDeleted: 86
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@solver_rebuild_order:bb.a
  %i.e = zext i32 %spec.store.select.i to i64
  %i.f = shl nuw nsw i64 %i.e, 2
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #29
  br label %vec_uint_alloc.exit

vec_uint_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 3 uses
  %.not = icmp eq i32 %.val10, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %vec_uint_alloc.exit, %bb.g
  %.pre19 = phi ptr [ %.pre20, %bb.g ], [ %i.b, %vec_uint_alloc.exit ] ; 3 uses
  %i.i = phi ptr [ %i.ad, %bb.g ], [ %i.b, %vec_uint_alloc.exit ] ; 2 uses
  %i.j = phi ptr [ %i.ae, %bb.g ], [ %i.h, %vec_uint_alloc.exit ] ; 3 uses
  %i.k = phi ptr [ %i.af, %bb.g ], [ %i.h, %vec_uint_alloc.exit ] ; 2 uses
  %i.l = phi i32 [ %i.ag, %bb.g ], [ %spec.store.select.i, %vec_uint_alloc.exit ] ; 7 uses
  %i.m = phi i32 [ %i.ah, %bb.g ], [ 0, %vec_uint_alloc.exit ] ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %vec_uint_alloc.exit ] ; 3 uses
  %i.n = getelementptr i8, ptr %i.i, i64 8
  %.val11.val = load ptr, ptr %i.n, align 8, !tbaa !94
  %i.o = getelementptr inbounds nuw i8, ptr %.val11.val, i64 %indvars.iv
  %i.p = load i8, ptr %i.o, align 1, !tbaa !104
  %i.q = icmp eq i8 %i.p, 3
  br i1 %i.q, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.lr.ph
  %i.r = icmp eq i32 %i.m, %i.l
  br i1 %i.r, label %bb.d, label %vec_uint_push_back.exit

bb.d:                                             ; preds = %bb.c
  %i.s = icmp ult i32 %i.l, 16
  br i1 %i.s, label %vec_uint_reserve.exit10.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i9.i = icmp sgt i32 %i.l, 0
  br i1 %.not.i9.i, label %bb.f, label %vec_uint_push_back.exit

bb.f:                                             ; preds = %bb.e
  %i.t = shl nuw i32 %i.l, 1                      ; 2 uses
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  br label %vec_uint_reserve.exit10.sink.split.i

vec_uint_reserve.exit10.sink.split.i:             ; preds = %bb.d, %bb.f
  %.sink = phi i64 [ %i.v, %bb.f ], [ 64, %bb.d ]
  %.sink.i = phi i32 [ %i.t, %bb.f ], [ 16, %bb.d ]
  %i.w = tail call ptr @realloc(ptr noundef %i.k, i64 noundef %.sink) #31
  %.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !61
  br label %vec_uint_push_back.exit

vec_uint_push_back.exit:                          ; preds = %bb.c, %bb.e, %vec_uint_reserve.exit10.sink.split.i
  %.pre = phi ptr [ %.pre19, %bb.c ], [ %.pre19, %bb.e ], [ %.pre.pre, %vec_uint_reserve.exit10.sink.split.i ] ; 2 uses
  %i.x = phi ptr [ %i.j, %bb.c ], [ %i.j, %bb.e ], [ %i.w, %vec_uint_reserve.exit10.sink.split.i ] ; 3 uses
  %i.y = phi i32 [ %i.l, %bb.c ], [ %i.l, %bb.e ], [ %.sink.i, %vec_uint_reserve.exit10.sink.split.i ]
  %i.z = zext i32 %i.m to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.z
  %i.ab = trunc nuw i64 %indvars.iv to i32
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !10
  %i.ac = add i32 %i.m, 1
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %vec_uint_push_back.exit
  %.pre20 = phi ptr [ %.pre19, %.lr.ph ], [ %.pre, %vec_uint_push_back.exit ]
  %i.ad = phi ptr [ %i.i, %.lr.ph ], [ %.pre, %vec_uint_push_back.exit ] ; 2 uses
  %i.ae = phi ptr [ %i.j, %.lr.ph ], [ %i.x, %vec_uint_push_back.exit ] ; 2 uses
  %i.af = phi ptr [ %i.k, %.lr.ph ], [ %i.x, %vec_uint_push_back.exit ]
  %i.ag = phi i32 [ %i.l, %.lr.ph ], [ %i.y, %vec_uint_push_back.exit ]
  %i.ah = phi i32 [ %i.m, %.lr.ph ], [ %i.ac, %vec_uint_push_back.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ad, i64 4
  %.val = load i32, ptr %i.ai, align 4, !tbaa !114
  %i.aj = zext i32 %.val to i64
  %i.ak = icmp samesign ult i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %.lr.ph, label %._crit_edge, !llvm.loop !115

._crit_edge:                                      ; preds = %bb.g, %vec_uint_alloc.exit
  %i.al = phi ptr [ %i.h, %vec_uint_alloc.exit ], [ %i.ae, %bb.g ] ; 3 uses
  %.val2535.i = phi i32 [ 0, %vec_uint_alloc.exit ], [ %i.ah, %bb.g ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !58 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !57 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 4      ; 3 uses
  %.val2633.i = load i32, ptr %i.aq, align 4, !tbaa !99
  %.not.i12 = icmp eq i32 %.val2633.i, 0
  br i1 %.not.i12, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.ar = getelementptr i8, ptr %i.ap, i64 8
  %.val28.i = load ptr, ptr %i.ar, align 8, !tbaa !82
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !56
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %.val30.i = load ptr, ptr %i.at, align 8, !tbaa !92
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.val28.i, i64 %indvars.iv.i
  %i.av = load i32, ptr %i.au, align 4, !tbaa !10
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.val30.i, i64 %i.aw
  store i32 -1, ptr %i.ax, align 4, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val26.i = load i32, ptr %i.aq, align 4, !tbaa !99
  %i.ay = zext i32 %.val26.i to i64
  %i.az = icmp samesign ult i64 %indvars.iv.next.i, %i.ay
  br i1 %i.az, label %bb.h, label %.critedge.i, !llvm.loop !116

.critedge.i:                                      ; preds = %bb.h, %._crit_edge
  store i32 0, ptr %i.aq, align 4, !tbaa !99
  %.not40.i = icmp eq i32 %.val2535.i, 0
  br i1 %.not40.i, label %heap_build.exit, label %.lr.ph37.i.preheader

.lr.ph37.i.preheader:                             ; preds = %.critedge.i
  %i.ba = zext i32 %.val2535.i to i64
  br label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %.lr.ph37.i.preheader, %vec_uint_push_back.exit.i
  %indvars.iv43.i = phi i64 [ %indvars.iv.next44.i, %vec_uint_push_back.exit.i ], [ 0, %.lr.ph37.i.preheader ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv43.i
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !10 ; 2 uses
  %i.bd = load ptr, ptr %i.an, align 8, !tbaa !56
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %.val29.i = load ptr, ptr %i.be, align 8, !tbaa !92
  %i.bf = zext i32 %i.bc to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.val29.i, i64 %i.bf
  %i.bh = trunc nuw i64 %indvars.iv43.i to i32
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !10
  %i.bi = load ptr, ptr %i.ao, align 8, !tbaa !57 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 4 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !99 ; 6 uses
  %i.bl = load i32, ptr %i.bi, align 8, !tbaa !117
  %i.bm = icmp eq i32 %i.bk, %i.bl
  br i1 %i.bm, label %bb.i, label %vec_uint_push_back.exit.i

bb.i:                                             ; preds = %.lr.ph37.i
  %i.bn = icmp ult i32 %i.bk, 16
  br i1 %i.bn, label %vec_uint_reserve.exit.i.i, label %bb.j

vec_uint_reserve.exit.i.i:                        ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !82
  %i.bq = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef %i.bp, i64 noundef 64) #31
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !82
  br label %vec_uint_reserve.exit10.sink.split.i.i

bb.j:                                             ; preds = %bb.i
  %.not.i9.i.i = icmp sgt i32 %i.bk, 0
  br i1 %.not.i9.i.i, label %bb.k, label %vec_uint_push_back.exit.i

bb.k:                                             ; preds = %bb.j
  %i.br = shl nuw i32 %i.bk, 1                    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !82
  %i.bu = zext i32 %i.br to i64
  %i.bv = shl nuw nsw i64 %i.bu, 2
  %i.bw = tail call ptr @realloc(ptr noundef %i.bt, i64 noundef %i.bv) #31
  store ptr %i.bw, ptr %i.bs, align 8, !tbaa !82
  br label %vec_uint_reserve.exit10.sink.split.i.i

vec_uint_reserve.exit10.sink.split.i.i:           ; preds = %bb.k, %vec_uint_reserve.exit.i.i
  %.sink.i.i = phi i32 [ %i.br, %bb.k ], [ 16, %vec_uint_reserve.exit.i.i ]
  store i32 %.sink.i.i, ptr %i.bi, align 8, !tbaa !117
  %.pre.i = load i32, ptr %i.bj, align 4, !tbaa !99
  br label %vec_uint_push_back.exit.i

vec_uint_push_back.exit.i:                        ; preds = %vec_uint_reserve.exit10.sink.split.i.i, %bb.j, %.lr.ph37.i
  %i.bx = phi i32 [ %i.bk, %.lr.ph37.i ], [ %i.bk, %bb.j ], [ %.pre.i, %vec_uint_reserve.exit10.sink.split.i.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !82
  %i.ca = zext i32 %i.bx to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ca
  store i32 %i.bc, ptr %i.cb, align 4, !tbaa !10
  %i.cc = load i32, ptr %i.bj, align 4, !tbaa !99
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.bj, align 4, !tbaa !99
  %indvars.iv.next44.i = add nuw nsw i64 %indvars.iv43.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next44.i, %i.ba
  br i1 %exitcond.not, label %.critedge2.i, label %.lr.ph37.i, !llvm.loop !118

.critedge2.i:                                     ; preds = %vec_uint_push_back.exit.i
  %.pre48.i = load ptr, ptr %i.ao, align 8, !tbaa !57 ; 2 uses
  %.phi.trans.insert.i = getelementptr i8, ptr %.pre48.i, i64 4 ; 3 uses
  %.val.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !99 ; 2 uses
  %.not41.i = icmp ult i32 %.val.pre.i, 2
  br i1 %.not41.i, label %heap_build.exit.thread, label %.lr.ph39.i

.lr.ph39.i:                                       ; preds = %.critedge2.i
  %i.ce = getelementptr i8, ptr %.pre48.i, i64 8
  %.val40.i.i = load ptr, ptr %i.ce, align 8, !tbaa !82 ; 6 uses
  %i.cf = getelementptr i8, ptr %i.an, i64 16
  %i.cg = load ptr, ptr %i.an, align 8, !tbaa !56
  %i.ch = getelementptr i8, ptr %i.cg, i64 8
  %.val43.i.i = load ptr, ptr %i.ch, align 8, !tbaa !92 ; 2 uses
  %i.ci = lshr i32 %.val.pre.i, 1
  %i.cj = zext nneg i32 %i.ci to i64
  br label %bb.l

bb.l:                                             ; preds = %heap_percolate_down.exit.i, %.lr.ph39.i
  %indvars.iv46.i = phi i64 [ %i.cj, %.lr.ph39.i ], [ %indvars.iv.next47.i, %heap_percolate_down.exit.i ] ; 2 uses
  %indvars.iv.next47.i = add nsw i64 %indvars.iv46.i, -1 ; 6 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.val40.i.i, i64 %indvars.iv.next47.i
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !10 ; 3 uses
  %1 = shl nuw nsw i64 %indvars.iv.next47.i, 1    ; 2 uses
  %2 = or disjoint i64 %1, 1                      ; 2 uses
  %.val3450.i.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !99 ; 2 uses
  %3 = zext i32 %.val3450.i.i to i64
  %i.cm = icmp samesign ult i64 %2, %3
  br i1 %i.cm, label %.lr.ph.i.i, label %..thread_crit_edge.i.i

..thread_crit_edge.i.i:                           ; preds = %bb.l
  %.pre.i.i = zext i32 %i.cl to i64
  %4 = trunc nuw nsw i64 %indvars.iv.next47.i to i32
  br label %heap_percolate_down.exit.i

.lr.ph.i.i:                                       ; preds = %bb.l
  %.val45.i.i = load ptr, ptr %i.cf, align 8, !tbaa !53
  %i.cn = getelementptr i8, ptr %.val45.i.i, i64 8
  %.val45.val.i.i = load ptr, ptr %i.cn, align 8, !tbaa !89 ; 4 uses
  %i.co = zext i32 %i.cl to i64                   ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.val45.val.i.i, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !119
  %5 = trunc nuw i64 %2 to i32
  %6 = trunc nuw i64 %1 to i32
  %7 = trunc nuw nsw i64 %indvars.iv.next47.i to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %.lr.ph.i.i
  %.val3452.i.i = phi i32 [ %.val3450.i.i, %.lr.ph.i.i ], [ %.val34.i.i, %bb.q ]
  %i.cr = phi i32 [ %5, %.lr.ph.i.i ], [ %i.do, %bb.q ] ; 4 uses
  %i.cs = phi i32 [ %6, %.lr.ph.i.i ], [ %i.dn, %bb.q ]
  %.03251.i.i = phi i32 [ %7, %.lr.ph.i.i ], [ %i.dj, %bb.q ] ; 3 uses
  %i.ct = add nuw i32 %i.cs, 2                    ; 3 uses
  %i.cu = icmp ult i32 %i.ct, %.val3452.i.i
  br i1 %i.cu, label %bb.n, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.m
  %.pre.phi.trans.insert.i.i = zext i32 %i.cr to i64
  %.phi.trans.insert.phi.trans.insert.i.i = getelementptr inbounds nuw [4 x i8], ptr %.val40.i.i, i64 %.pre.phi.trans.insert.i.i
  %.pre55.pre.i.i = load i32, ptr %.phi.trans.insert.phi.trans.insert.i.i, align 4, !tbaa !10 ; 2 uses
  %.phi.trans.insert56.phi.trans.insert.i.i = zext i32 %.pre55.pre.i.i to i64 ; 2 uses
  %.phi.trans.insert57.phi.trans.insert.i.i = getelementptr inbounds nuw [8 x i8], ptr %.val45.val.i.i, i64 %.phi.trans.insert56.phi.trans.insert.i.i
  %.pre58.pre.i.i = load i64, ptr %.phi.trans.insert57.phi.trans.insert.i.i, align 8, !tbaa !119
  br label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.cv = zext i32 %i.ct to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.val40.i.i, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !10 ; 2 uses
  %i.cy = zext i32 %i.cr to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.val40.i.i, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !10 ; 2 uses
  %i.db = zext i32 %i.cx to i64                   ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.val45.val.i.i, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !119 ; 2 uses
  %i.de = zext i32 %i.da to i64                   ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.val45.val.i.i, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !119 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.dd, %i.dg
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i
  %.pre-phi61.i.i = phi i64 [ %i.db, %bb.n ], [ %.phi.trans.insert56.phi.trans.insert.i.i, %._crit_edge.i.i ], [ %i.de, %bb.o ]
  %i.dh = phi i64 [ %i.dd, %bb.n ], [ %.pre58.pre.i.i, %._crit_edge.i.i ], [ %i.dg, %bb.o ]
  %i.di = phi i32 [ %i.cx, %bb.n ], [ %.pre55.pre.i.i, %._crit_edge.i.i ], [ %i.da, %bb.o ]
  %i.dj = phi i32 [ %i.ct, %bb.n ], [ %i.cr, %._crit_edge.i.i ], [ %i.cr, %bb.o ] ; 3 uses
  %.not49.i.i = icmp ugt i64 %i.dh, %i.cq
  br i1 %.not49.i.i, label %bb.q, label %.thread.loopexit.i.i

bb.q:                                             ; preds = %bb.p
  %i.dk = zext i32 %.03251.i.i to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.val40.i.i, i64 %i.dk
  store i32 %i.di, ptr %i.dl, align 4, !tbaa !10
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.val43.i.i, i64 %.pre-phi61.i.i
  store i32 %.03251.i.i, ptr %i.dm, align 4, !tbaa !10
  %i.dn = shl i32 %i.dj, 1                        ; 2 uses
  %i.do = or disjoint i32 %i.dn, 1                ; 2 uses
  %.val34.i.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !99 ; 2 uses
  %i.dp = icmp ult i32 %i.do, %.val34.i.i
  br i1 %i.dp, label %bb.m, label %.thread.loopexit.i.i

.thread.loopexit.i.i:                             ; preds = %bb.q, %bb.p
  %.032.lcssa.ph.i.i = phi i32 [ %i.dj, %bb.q ], [ %.03251.i.i, %bb.p ] ; 2 uses
  %.pre62.i.i = zext i32 %.032.lcssa.ph.i.i to i64
  br label %heap_percolate_down.exit.i

heap_percolate_down.exit.i:                       ; preds = %.thread.loopexit.i.i, %..thread_crit_edge.i.i
  %.pre-phi64.i.i = phi i64 [ %.pre.i.i, %..thread_crit_edge.i.i ], [ %i.co, %.thread.loopexit.i.i ]
  %.pre-phi63.i.i = phi i64 [ %indvars.iv.next47.i, %..thread_crit_edge.i.i ], [ %.pre62.i.i, %.thread.loopexit.i.i ]
  %.032.lcssa.i.i = phi i32 [ %4, %..thread_crit_edge.i.i ], [ %.032.lcssa.ph.i.i, %.thread.loopexit.i.i ]
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.val40.i.i, i64 %.pre-phi63.i.i
  store i32 %i.cl, ptr %i.dq, align 4, !tbaa !10
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.val43.i.i, i64 %.pre-phi64.i.i
  store i32 %.032.lcssa.i.i, ptr %i.dr, align 4, !tbaa !10
  %i.ds = icmp sgt i64 %indvars.iv46.i, 1
  br i1 %i.ds, label %bb.l, label %heap_build.exit, !llvm.loop !120

heap_build.exit:                                  ; preds = %heap_percolate_down.exit.i, %.critedge.i
  %.not.i13 = icmp eq ptr %i.al, null
  br i1 %.not.i13, label %vec_uint_free.exit, label %heap_build.exit.thread

heap_build.exit.thread:                           ; preds = %.critedge2.i, %heap_build.exit
  tail call void @free(ptr noundef nonnull %i.al) #30
  br label %vec_uint_free.exit

vec_uint_free.exit:                               ; preds = %heap_build.exit, %heap_build.exit.thread
  ret void
}

; Function Attrs: nounwind uwtable
define void @satoko_setnvars(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val.i = load i32, ptr %i.c, align 4, !tbaa !114 ; 2 uses
  %i.d = icmp slt i32 %.val.i, %1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.04 = phi i32 [ %i.f, %.lr.ph ], [ %.val.i, %bb.a ]
  %i.e = tail call i32 @satoko_add_variable(ptr noundef nonnull %0, i8 noundef signext 0) ; 0 uses
  %i.f = add i32 %.04, 1                          ; 2 uses
  %exitcond.not = icmp eq i32 %i.f, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !121

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @satoko_varnum(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val = load i32, ptr %i.c, align 4, !tbaa !114
  ret i32 %.val
}

; Function Attrs: nounwind uwtable
define i32 @satoko_add_variable(ptr nofree noundef readonly captures(none) %0, i8 noundef signext %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val = load i32, ptr %i.c, align 4, !tbaa !122 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !47   ; 5 uses
  %i.h = load i32, ptr %i.e, align 8, !tbaa !44   ; 2 uses
  %i.i = icmp eq i32 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %vec_wl_push.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i32 %i.g, 4
  %i.k = shl nuw nsw i32 %i.g, 1
  %i.l = lshr i32 %i.g, 1
  %i.m = mul i32 %i.l, 3
  %i.n = select i1 %i.j, i32 %i.k, i32 %i.m       ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !48
  %i.q = zext i32 %i.n to i64
  %i.r = mul nuw nsw i64 %i.q, 24
  %i.s = tail call ptr @realloc(ptr noundef %i.p, i64 noundef %i.r) #31 ; 3 uses
  store ptr %i.s, ptr %i.o, align 8, !tbaa !48
  %i.t = load i32, ptr %i.e, align 8, !tbaa !44   ; 3 uses
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.u
  %i.w = sub i32 %i.n, %i.t
  %i.x = zext i32 %i.w to i64
  %i.y = mul nuw nsw i64 %i.x, 24
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.y, i1 false)
  %i.z = icmp eq ptr %i.s, null
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = uitofp i32 %i.t to double
  %i.ab = fmul nnan double %i.aa, f0x3EB0000000000000
  %i.ac = uitofp i32 %i.n to double
  %i.ad = fmul nnan double %i.ac, f0x3EB0000000000000
  %i.ae = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %i.ab, double noundef %i.ad) ; 0 uses
  %i.af = load ptr, ptr @stdout, align 8, !tbaa !123
  %i.ag = tail call i32 @fflush(ptr noundef %i.af) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 %i.n, ptr %i.e, align 8, !tbaa !44
  %.pre.i = load i32, ptr %i.f, align 4, !tbaa !47
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !49  ; 2 uses
  %.pre46 = load i32, ptr %.pre, align 8, !tbaa !44
  br label %vec_wl_push.exit

vec_wl_push.exit:                                 ; preds = %bb.a, %bb.d
  %i.ah = phi i32 [ %.pre46, %bb.d ], [ %i.h, %bb.a ] ; 4 uses
  %i.ai = phi ptr [ %.pre, %bb.d ], [ %i.e, %bb.a ] ; 4 uses
  %i.aj = phi i32 [ %.pre.i, %bb.d ], [ %i.g, %bb.a ]
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.f, align 4, !tbaa !47
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !47 ; 2 uses
  %i.an = icmp eq i32 %i.am, %i.ah
  br i1 %i.an, label %bb.e, label %vec_wl_push.exit16

bb.e:                                             ; preds = %vec_wl_push.exit
  %i.ao = icmp ult i32 %i.ah, 4
  %i.ap = shl nuw nsw i32 %i.ah, 1
  %i.aq = lshr i32 %i.ah, 1
  %i.ar = mul i32 %i.aq, 3
  %i.as = select i1 %i.ao, i32 %i.ap, i32 %i.ar   ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !48
  %i.av = zext i32 %i.as to i64
  %i.aw = mul nuw nsw i64 %i.av, 24
  %i.ax = tail call ptr @realloc(ptr noundef %i.au, i64 noundef %i.aw) #31 ; 3 uses
  store ptr %i.ax, ptr %i.at, align 8, !tbaa !48
  %i.ay = load i32, ptr %i.ai, align 8, !tbaa !44 ; 3 uses
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %i.az
  %i.bb = sub i32 %i.as, %i.ay
  %i.bc = zext i32 %i.bb to i64
  %i.bd = mul nuw nsw i64 %i.bc, 24
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ba, i8 0, i64 %i.bd, i1 false)
  %i.be = icmp eq ptr %i.ax, null
  br i1 %i.be, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bf = uitofp i32 %i.ay to double
  %i.bg = fmul nnan double %i.bf, f0x3EB0000000000000
  %i.bh = uitofp i32 %i.as to double
  %i.bi = fmul nnan double %i.bh, f0x3EB0000000000000
  %i.bj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %i.bg, double noundef %i.bi) ; 0 uses
  %i.bk = load ptr, ptr @stdout, align 8, !tbaa !123
  %i.bl = tail call i32 @fflush(ptr noundef %i.bk) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 %i.as, ptr %i.ai, align 8, !tbaa !44
  %.pre.i15 = load i32, ptr %i.al, align 4, !tbaa !47
  br label %vec_wl_push.exit16

vec_wl_push.exit16:                               ; preds = %vec_wl_push.exit, %bb.g
  %i.bm = phi i32 [ %.pre.i15, %bb.g ], [ %i.am, %vec_wl_push.exit ]
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.al, align 4, !tbaa !47
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !52  ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 3 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !122 ; 6 uses
  %i.br = load i32, ptr %i.bo, align 8, !tbaa !125
  %i.bs = icmp eq i32 %i.bq, %i.br
  br i1 %i.bs, label %bb.h, label %vec_sdbl_push_back.exit

bb.h:                                             ; preds = %vec_wl_push.exit16
  %i.bt = icmp ult i32 %i.bq, 16
  br i1 %i.bt, label %vec_sdbl_reserve.exit.i, label %bb.i

vec_sdbl_reserve.exit.i:                          ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !89
  %i.bw = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef %i.bv, i64 noundef 128) #31
  store ptr %i.bw, ptr %i.bu, align 8, !tbaa !89
  br label %vec_sdbl_reserve.exit10.sink.split.i

bb.i:                                             ; preds = %bb.h
  %.not.i9.i = icmp sgt i32 %i.bq, 0
  br i1 %.not.i9.i, label %bb.j, label %vec_sdbl_push_back.exit

bb.j:                                             ; preds = %bb.i
  %i.bx = shl nuw i32 %i.bq, 1                    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !89
  %i.ca = zext i32 %i.bx to i64
  %i.cb = shl nuw nsw i64 %i.ca, 3
  %i.cc = tail call ptr @realloc(ptr noundef %i.bz, i64 noundef %i.cb) #31
  store ptr %i.cc, ptr %i.by, align 8, !tbaa !89
  br label %vec_sdbl_reserve.exit10.sink.split.i

vec_sdbl_reserve.exit10.sink.split.i:             ; preds = %bb.j, %vec_sdbl_reserve.exit.i
  %.sink.i = phi i32 [ %i.bx, %bb.j ], [ 16, %vec_sdbl_reserve.exit.i ]
  store i32 %.sink.i, ptr %i.bo, align 8, !tbaa !125
  %.pre47 = load i32, ptr %i.bp, align 4, !tbaa !122
  br label %vec_sdbl_push_back.exit

vec_sdbl_push_back.exit:                          ; preds = %vec_wl_push.exit16, %bb.i, %vec_sdbl_reserve.exit10.sink.split.i
  %i.cd = phi i32 [ %i.bq, %vec_wl_push.exit16 ], [ %i.bq, %bb.i ], [ %.pre47, %vec_sdbl_reserve.exit10.sink.split.i ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !89
  %i.cg = zext i32 %i.cd to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cg
end_hunk_0
