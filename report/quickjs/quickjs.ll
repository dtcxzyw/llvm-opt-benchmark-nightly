Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 84
loop-unroll.NumUnrolled: 174
begin_hunk_0_@js_bigint_not:bb.a

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 1064
  %i.y = icmp eq ptr %i.u, %i.x
  br i1 %i.y, label %js_bigint_new.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36
  %i.ab = tail call i64 %i.aa(ptr noundef nonnull %i.u) #49, !inline_history !1455 ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.ab, 0
  %i.ac = select i1 %.not15.i.i.i, i64 8, i64 %i.ab
  br label %js_bigint_new.exit

bb.i:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds i8, ptr %i.r, i64 -6
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !35
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !38
  %i.ai = zext i16 %i.ah to i64
  br label %js_bigint_new.exit

bb.j:                                             ; preds = %._crit_edge, %bb.d, %bb.c
  %i.aj = phi ptr [ %.pre, %._crit_edge ], [ %i.h, %bb.d ], [ %i.h, %bb.c ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1256 ; 3 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !57, !range !58, !noundef !59
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %js_bigint_new.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.ak, align 8, !tbaa !57
  %i.an = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !1456 ; 0 uses
  store i8 0, ptr %i.ak, align 8, !tbaa !57
  br label %js_bigint_new.exit.thread

js_bigint_new.exit:                               ; preds = %bb.i, %bb.h, %bb.g
  %.011.i.i.i = phi i64 [ 8, %bb.g ], [ %i.ac, %bb.h ], [ %i.ai, %bb.i ]
  %i.ao = load i64, ptr %i.k, align 8, !tbaa !10
  %i.ap = add i64 %i.ao, %.011.i.i.i
  store i64 %i.ap, ptr %i.k, align 8, !tbaa !10
  %i.aq = getelementptr inbounds i8, ptr %i.r, i64 -4
  store i32 1, ptr %i.aq, align 4, !tbaa !8
  store i32 %i.a, ptr %i.r, align 8, !tbaa !8
  %i.ar = load i32, ptr %1, align 4, !tbaa !8
  %.not = icmp eq i32 %i.ar, 0
  br i1 %.not, label %js_bigint_new.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %js_bigint_new.exit
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv
  %i.av = load i32, ptr %i.au, align 4, !tbaa !8
  %i.aw = xor i32 %i.av, -1
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ay = load i32, ptr %1, align 4, !tbaa !8
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp samesign ult i64 %indvars.iv.next, %i.az
  br i1 %i.ba, label %bb.l, label %js_bigint_new.exit.thread, !llvm.loop !1510

js_bigint_new.exit.thread:                        ; preds = %bb.l, %js_bigint_new.exit, %bb.j, %bb.k, %bb.b
  %.011 = phi ptr [ null, %bb.j ], [ null, %bb.b ], [ null, %bb.k ], [ %i.r, %js_bigint_new.exit ], [ %i.r, %bb.l ]
  ret ptr %.011
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @js_bigint_shl(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, -2147483648) %2) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !8      ; 2 uses
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50   ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !10
  %i.k = add i64 %i.j, 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.m = load i64, ptr %i.l, align 8, !tbaa !14
  %i.n = add i64 %i.m, -1
  %i.o = icmp ugt i64 %i.k, %i.n
  br i1 %i.o, label %js_arena_malloc.exit.thread, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 568
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 576
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !40   ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.p
  br i1 %i.s, label %bb.e, label %bb.f, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.t = tail call fastcc ptr @arena_new(ptr noundef nonnull %i.g, i32 noundef 0) ; 2 uses
  %.not.i66 = icmp eq ptr %i.t, null
  br i1 %.not.i66, label %.js_arena_malloc.exit.thread_crit_edge, label %bb.f

.js_arena_malloc.exit.thread_crit_edge:           ; preds = %bb.e
  %.pre102 = load ptr, ptr %i.f, align 8, !tbaa !50
  br label %js_arena_malloc.exit.thread

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i64 = phi ptr [ %i.t, %bb.e ], [ %i.r, %bb.d ] ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i64, i64 38 ; 2 uses
  %i.v = load i16, ptr %i.u, align 2, !tbaa !38   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i64, i64 40
  %i.x = zext i16 %i.v to i64
  %i.y = shl nuw nsw i64 %i.x, 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y ; 9 uses
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !35
  store i16 %i.aa, ptr %i.u, align 2, !tbaa !38
  store i16 %i.v, ptr %i.z, align 8, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i64, i64 34 ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !38
  %i.ad = add i16 %i.ac, 1                        ; 2 uses
  store i16 %i.ad, ptr %i.ab, align 2, !tbaa !38
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i64, i64 36
  %i.af = load i16, ptr %i.ae, align 4, !tbaa !38
  %i.ag = icmp eq i16 %i.ad, %i.af
  br i1 %i.ag, label %bb.g, label %bb.h, !prof !9

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %.0.i64, align 8, !tbaa !41 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i64, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !40 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !40
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i64, i8 0, i64 16, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.am = load i64, ptr %i.h, align 8, !tbaa !34
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.h, align 8, !tbaa !34
  %i.ao = load i16, ptr %i.z, align 8, !tbaa !35
  %i.ap = icmp eq i16 %i.ao, -1
  br i1 %i.ap, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 1064
  %i.ar = icmp eq ptr %i.z, %i.aq
  br i1 %i.ar, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !36
  %i.au = tail call i64 %i.at(ptr noundef nonnull %i.z) #49, !inline_history !1590 ; 2 uses
  %.not15.i.i = icmp eq i64 %i.au, 0
  %i.av = select i1 %.not15.i.i, i64 8, i64 %i.au
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !35
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !38
  %i.bb = zext i16 %i.ba to i64
  br label %bb.m

js_arena_malloc.exit.thread:                      ; preds = %.js_arena_malloc.exit.thread_crit_edge, %bb.c
  %i.bc = phi ptr [ %.pre102, %.js_arena_malloc.exit.thread_crit_edge ], [ %i.g, %bb.c ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1256 ; 3 uses
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !57, !range !58, !noundef !59
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %js_bigint_new_si.exit, label %bb.l

bb.l:                                             ; preds = %js_arena_malloc.exit.thread
  store i8 1, ptr %i.bd, align 8, !tbaa !57
  %i.bg = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !1591 ; 0 uses
  store i8 0, ptr %i.bd, align 8, !tbaa !57
  br label %js_bigint_new_si.exit

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k
  %.011.i.i = phi i64 [ 8, %bb.i ], [ %i.av, %bb.j ], [ %i.bb, %bb.k ]
  %i.bh = load i64, ptr %i.i, align 8, !tbaa !10
  %i.bi = add i64 %i.bh, %.011.i.i
  store i64 %i.bi, ptr %i.i, align 8, !tbaa !10
  %i.bj = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 1, ptr %i.bj, align 4, !tbaa !8
  store i32 1, ptr %i.al, align 8, !tbaa !8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !8
  br label %js_bigint_new_si.exit

bb.n:                                             ; preds = %bb.b, %bb.a
  %i.bl = lshr i32 %2, 5                          ; 4 uses
  %i.bm = and i32 %2, 31                          ; 6 uses
  %i.bn = add i32 %i.a, %i.bl                     ; 7 uses
  %i.bo = icmp sgt i32 %i.bn, 32768
  br i1 %i.bo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bp = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.143), !inline_history !1453 ; 0 uses
  br label %js_bigint_new_si.exit

bb.p:                                             ; preds = %bb.n
  %i.bq = sext i32 %i.bn to i64                   ; 3 uses
  %i.br = shl nsw i64 %i.bq, 2
  %i.bs = add nsw i64 %i.br, 4                    ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !50 ; 8 uses
  %i.bv = icmp eq i64 %i.bs, 0
  br i1 %i.bv, label %bb.w, label %bb.q, !prof !9

bb.q:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 40 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 48 ; 3 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !10
  %i.bz = add i64 %i.by, %i.bs
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !14
  %i.cc = add i64 %i.cb, -1
  %i.cd = icmp ugt i64 %i.bz, %i.cc
  br i1 %i.cd, label %bb.w, label %bb.r, !prof !9

bb.r:                                             ; preds = %bb.q
  %i.ce = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.bu, i64 noundef %i.bs), !inline_history !1454 ; 19 uses
  %.not.i.i48 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i48, label %._crit_edge100, label %bb.s

._crit_edge100:                                   ; preds = %bb.r
  %.pre101 = load ptr, ptr %i.bt, align 8, !tbaa !50
  br label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.cf = load i64, ptr %i.bw, align 8, !tbaa !34
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %i.bw, align 8, !tbaa !34
  %i.ch = getelementptr inbounds i8, ptr %i.ce, i64 -8 ; 3 uses
  %i.ci = load i16, ptr %i.ch, align 8, !tbaa !35
  %i.cj = icmp eq i16 %i.ci, -1
  br i1 %i.cj, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bu, i64 1064
  %i.cl = icmp eq ptr %i.ch, %i.ck
  br i1 %i.cl, label %js_bigint_new.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !36
  %i.co = tail call i64 %i.cn(ptr noundef nonnull %i.ch) #49, !inline_history !1455 ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.co, 0
  %i.cp = select i1 %.not15.i.i.i, i64 8, i64 %i.co
  br label %js_bigint_new.exit

bb.v:                                             ; preds = %bb.s
  %i.cq = getelementptr inbounds i8, ptr %i.ce, i64 -6
  %i.cr = load i8, ptr %i.cq, align 2, !tbaa !35
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.cs
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !38
  %i.cv = zext i16 %i.cu to i64
  br label %js_bigint_new.exit

bb.w:                                             ; preds = %._crit_edge100, %bb.q, %bb.p
  %i.cw = phi ptr [ %.pre101, %._crit_edge100 ], [ %i.bu, %bb.q ], [ %i.bu, %bb.p ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1256 ; 3 uses
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !57, !range !58, !noundef !59
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %js_bigint_new_si.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 1, ptr %i.cx, align 8, !tbaa !57
  %i.da = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !1456 ; 0 uses
  store i8 0, ptr %i.cx, align 8, !tbaa !57
  br label %js_bigint_new_si.exit

js_bigint_new.exit:                               ; preds = %bb.v, %bb.u, %bb.t
  %.011.i.i.i = phi i64 [ 8, %bb.t ], [ %i.cp, %bb.u ], [ %i.cv, %bb.v ]
  %i.db = load i64, ptr %i.bx, align 8, !tbaa !10
  %i.dc = add i64 %i.db, %.011.i.i.i
  store i64 %i.dc, ptr %i.bx, align 8, !tbaa !10
  %i.dd = getelementptr inbounds i8, ptr %i.ce, i64 -4
  store i32 1, ptr %i.dd, align 4, !tbaa !8
  store i32 %i.bn, ptr %i.ce, align 8, !tbaa !8
  %.not = icmp eq i32 %i.bl, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %js_bigint_new.exit
  %i.de = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %3 = lshr i32 %2, 3
  %4 = and i32 %3, 268435452
  %5 = zext nneg i32 %4 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.de, i8 0, i64 %5, i1 false), !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %js_bigint_new.exit
  %i.df = icmp eq i32 %i.bm, 0
  br i1 %i.df, label %.preheader, label %bb.z

.preheader:                                       ; preds = %._crit_edge
  %i.dg = load i32, ptr %1, align 4, !tbaa !8
  %.not97 = icmp eq i32 %i.dg, 0
  br i1 %.not97, label %js_bigint_new_si.exit, label %.lr.ph96

.lr.ph96:                                         ; preds = %.preheader
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.dj = zext nneg i32 %i.bl to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dj
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph96, %bb.y
  %indvars.iv = phi i64 [ 0, %.lr.ph96 ], [ %indvars.iv.next, %bb.y ] ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !8
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 %i.dl, ptr %gep, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dm = load i32, ptr %1, align 4, !tbaa !8
  %i.dn = zext i32 %i.dm to i64
  %i.do = icmp samesign ult i64 %indvars.iv.next, %i.dn
  br i1 %i.do, label %bb.y, label %js_bigint_new_si.exit, !llvm.loop !1601

bb.z:                                             ; preds = %._crit_edge
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ce, i64 4 ; 2 uses
  %i.dq = zext nneg i32 %i.bl to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.dq ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.dt = load i32, ptr %1, align 4, !tbaa !8     ; 5 uses
  %i.du = icmp sgt i32 %i.dt, 0
  br i1 %i.du, label %.lr.ph.i, label %js_mp_shl.exit

.lr.ph.i:                                         ; preds = %bb.z
  %i.dv = sub nuw nsw i32 32, %i.bm               ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.dt to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.dw = icmp eq i32 %i.dt, 1
  br i1 %i.dw, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.aa ] ; 4 uses
  %.014.i = phi i32 [ 0, %.lr.ph.i.new ], [ %i.ei, %bb.aa ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.aa ]
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv.i
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !8  ; 2 uses
  %i.dz = shl i32 %i.dy, %i.bm
  %i.ea = or i32 %i.dz, %.014.i
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv.i
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !8
  %i.ec = lshr i32 %i.dy, %i.dv
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv.next.i
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !8  ; 2 uses
  %i.ef = shl i32 %i.ee, %i.bm
  %i.eg = or disjoint i32 %i.ef, %i.ec
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv.next.i
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !8
  %i.ei = lshr i32 %i.ee, %i.dv                   ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %js_mp_shl.exit.loopexit.unr-lcssa, label %bb.aa, !llvm.loop !1592

js_mp_shl.exit.loopexit.unr-lcssa:                ; preds = %bb.aa
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %js_mp_shl.exit.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %js_mp_shl.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %js_mp_shl.exit.loopexit.unr-lcssa ] ; 2 uses
  %.014.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %i.ei, %js_mp_shl.exit.loopexit.unr-lcssa ]
  %lcmp.mod116 = trunc i32 %i.dt to i1
  tail call void @llvm.assume(i1 %lcmp.mod116)
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv.i.epil.init
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !8  ; 2 uses
  %i.el = shl i32 %i.ek, %i.bm
  %i.em = or i32 %i.el, %.014.i.epil.init
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv.i.epil.init
  store i32 %i.em, ptr %i.en, align 4, !tbaa !8
  %i.eo = lshr i32 %i.ek, %i.dv
  br label %js_mp_shl.exit.loopexit

js_mp_shl.exit.loopexit:                          ; preds = %js_mp_shl.exit.loopexit.unr-lcssa, %.epil.preheader
  %.lcssa = phi i32 [ %i.ei, %js_mp_shl.exit.loopexit.unr-lcssa ], [ %i.eo, %.epil.preheader ]
  %.pre = load i32, ptr %1, align 4, !tbaa !8
  br label %js_mp_shl.exit

js_mp_shl.exit:                                   ; preds = %js_mp_shl.exit.loopexit, %bb.z
  %i.ep = phi i32 [ %i.dt, %bb.z ], [ %.pre, %js_mp_shl.exit.loopexit ]
  %.0.lcssa.i = phi i32 [ 0, %bb.z ], [ %.lcssa, %js_mp_shl.exit.loopexit ] ; 2 uses
  %i.eq = add i32 %i.ep, -1
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !8
  %i.eu = shl nsw i32 -1, %i.bm
  %.not4185 = icmp slt i32 %i.et, 0
  %i.ev = select i1 %.not4185, i32 %i.eu, i32 0
  %.0 = or i32 %i.ev, %.0.lcssa.i                 ; 2 uses
  %i.ew = add i32 %.0, -1
  %or.cond.i = icmp ult i32 %i.ew, -2
  br i1 %or.cond.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %js_mp_shl.exit
  %i.ex = and i32 %.0.lcssa.i, 1
  %i.ey = getelementptr [4 x i8], ptr %i.ce, i64 %i.bq
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !8
  %i.fa = lshr i32 %i.ez, 31
  %.not.i44 = icmp eq i32 %i.ex, %i.fa
  br i1 %.not.i44, label %.preheader86, label %bb.ac

.preheader86:                                     ; preds = %bb.ab
  %i.fb = icmp sgt i32 %i.bn, 1
  br i1 %i.fb, label %.lr.ph89, label %js_bigint_new_si.exit

bb.ac:                                            ; preds = %bb.ab, %js_mp_shl.exit
  %i.fc = add nsw i32 %i.bn, 1                    ; 2 uses
  %i.fd = sext i32 %i.fc to i64
  %i.fe = shl nsw i64 %i.fd, 2
  %i.ff = add nsw i64 %i.fe, 4                    ; 2 uses
  %i.fg = load ptr, ptr %i.bt, align 8, !tbaa !50
  %i.fh = tail call ptr @js_realloc_rt(ptr noundef %i.fg, ptr noundef nonnull %i.ce, i64 noundef %i.ff), !inline_history !1460 ; 4 uses
  %.not.i54 = icmp eq ptr %i.fh, null             ; 2 uses
  %i.fi = icmp ne i64 %i.ff, 0
  %i.fj = and i1 %i.fi, %.not.i54
  br i1 %i.fj, label %bb.ad, label %js_realloc.exit, !prof !9

bb.ad:                                            ; preds = %bb.ac
  %i.fk = load ptr, ptr %i.bt, align 8, !tbaa !50
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 1256 ; 3 uses
  %i.fm = load i8, ptr %i.fl, align 8, !tbaa !57, !range !58, !noundef !59
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %js_realloc.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i8 1, ptr %i.fl, align 8, !tbaa !57
  %i.fo = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !1461 ; 0 uses
  store i8 0, ptr %i.fl, align 8, !tbaa !57
  br label %js_realloc.exit.thread

js_realloc.exit:                                  ; preds = %bb.ac
  br i1 %.not.i54, label %js_realloc.exit.thread, label %bb.af

js_realloc.exit.thread:                           ; preds = %bb.ad, %bb.ae, %js_realloc.exit
  %i.fp = load ptr, ptr %i.bt, align 8, !tbaa !50
  tail call void @js_free_rt(ptr noundef %i.fp, ptr noundef nonnull %i.ce)
  br label %js_bigint_new_si.exit

bb.af:                                            ; preds = %js_realloc.exit
  store i32 %i.fc, ptr %i.fh, align 4, !tbaa !8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %i.bq
  store i32 %.0, ptr %i.fr, align 4, !tbaa !8
  br label %js_bigint_new_si.exit

.lr.ph89:                                         ; preds = %.preheader86, %bb.ah
  %.0.i.i5288 = phi i32 [ %i.gb, %bb.ah ], [ %i.bn, %.preheader86 ] ; 5 uses
  %i.fs = zext nneg i32 %.0.i.i5288 to i64
  %i.ft = getelementptr [4 x i8], ptr %i.dp, i64 %i.fs ; 2 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 -4
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !8  ; 2 uses
  %i.fw = add i32 %i.fv, -1
  %or.cond.i.i = icmp ult i32 %i.fw, -2
  br i1 %or.cond.i.i, label %._crit_edge90, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph89
  %i.fx = and i32 %i.fv, 1
  %i.fy = getelementptr i8, ptr %i.ft, i64 -8
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !8
  %i.ga = lshr i32 %i.fz, 31
  %.not.i.i53 = icmp eq i32 %i.fx, %i.ga
  br i1 %.not.i.i53, label %bb.ah, label %._crit_edge90

bb.ah:                                            ; preds = %bb.ag
  %i.gb = add nsw i32 %.0.i.i5288, -1
  %i.gc = icmp sgt i32 %.0.i.i5288, 2
  br i1 %i.gc, label %.lr.ph89, label %._crit_edge90, !llvm.loop !1448

._crit_edge90:                                    ; preds = %bb.ah, %.lr.ph89, %bb.ag
  %.0.i.i52.lcssa = phi i32 [ %.0.i.i5288, %bb.ag ], [ 1, %bb.ah ], [ %.0.i.i5288, %.lr.ph89 ] ; 3 uses
  %.not21.i.i = icmp eq i32 %.0.i.i52.lcssa, %i.bn
  br i1 %.not21.i.i, label %js_bigint_new_si.exit, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge90
  store i32 %.0.i.i52.lcssa, ptr %i.ce, align 8, !tbaa !8
  %i.gd = zext nneg i32 %.0.i.i52.lcssa to i64
  %i.ge = shl nuw nsw i64 %i.gd, 2
  %i.gf = add nuw nsw i64 %i.ge, 4
  %i.gg = load ptr, ptr %i.bt, align 8, !tbaa !50
  %i.gh = tail call ptr @js_realloc_rt(ptr noundef %i.gg, ptr noundef nonnull %i.ce, i64 noundef %i.gf), !inline_history !1462 ; 2 uses
  %.not.i59 = icmp eq ptr %i.gh, null
end_hunk_0
begin_hunk_1_@JS_WriteFunctionTag:bb.a
.lr.ph415:                                        ; preds = %bc_put_leb128.exit208
  %i.om = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  br label %bb.ci

.preheader:                                       ; preds = %bc_put_leb128.exit235, %bc_put_leb128.exit208
  %i.on = load i32, ptr %i.gm, align 4, !tbaa !182
  %i.oo = icmp sgt i32 %i.on, 0
  br i1 %i.oo, label %.lr.ph417, label %._crit_edge

.lr.ph417:                                        ; preds = %.preheader
  %i.op = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  br label %bb.dg

bb.ci:                                            ; preds = %.lr.ph415, %bc_put_leb128.exit235
  %indvars.iv442 = phi i64 [ 0, %.lr.ph415 ], [ %indvars.iv.next443, %bc_put_leb128.exit235 ] ; 2 uses
  %i.oq = load ptr, ptr %i.om, align 8, !tbaa !393
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.oq, i64 %indvars.iv442 ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 4
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !721 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #49
  %i.ou = icmp slt i32 %i.ot, 0
  br i1 %i.ou, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.ov = shl i32 %i.ot, 1
  %i.ow = or disjoint i32 %i.ov, 1
  br label %bb.cm

bb.ck:                                            ; preds = %bb.ci
  %i.ox = call fastcc i32 @bc_atom_to_idx(ptr noundef nonnull %0, ptr noundef %i.c, i32 noundef %i.ot)
  %.not.i209 = icmp eq i32 %i.ox, 0
  br i1 %.not.i209, label %bb.cl, label %bc_put_atom.exit219

bb.cl:                                            ; preds = %bb.ck
  %i.oy = load i32, ptr %i.c, align 4, !tbaa !8
  %i.oz = shl i32 %i.oy, 1
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.cj
  %storemerge.i211 = phi i32 [ %i.oz, %bb.cl ], [ %i.ow, %bb.cj ] ; 3 uses
  %i.pa = lshr i32 %storemerge.i211, 7            ; 2 uses
  %.not9.i.i.i212 = icmp eq i32 %i.pa, 0
  br i1 %.not9.i.i.i212, label %._crit_edge.i.i.i217, label %.lr.ph.i.i.i213

.lr.ph.i.i.i213:                                  ; preds = %bb.cm, %dbuf_putc.exit.i.i.i215
  %i.pb = phi i32 [ %i.pq, %dbuf_putc.exit.i.i.i215 ], [ %i.pa, %bb.cm ] ; 3 uses
  %.010.i.i.i214 = phi i32 [ %i.pb, %dbuf_putc.exit.i.i.i215 ], [ %storemerge.i211, %bb.cm ]
  %i.pc = trunc i32 %.010.i.i.i214 to i8
  %i.pd = or i8 %i.pc, -128                       ; 2 uses
  %i.pe = load i64, ptr %i.h, align 8, !tbaa !456 ; 2 uses
  %i.pf = load i64, ptr %i.j, align 8, !tbaa !457 ; 3 uses
  %i.pg = icmp eq i64 %i.pe, %i.pf
  br i1 %i.pg, label %bb.cn, label %bb.cq, !prof !9

bb.cn:                                            ; preds = %.lr.ph.i.i.i213
  %.not567 = icmp eq i64 %i.pe, -1
  br i1 %.not567, label %bb.cp, label %bb.co, !prof !195

bb.co:                                            ; preds = %bb.cn
  %i.ph = tail call fastcc i32 @dbuf_claim(ptr noundef nonnull %i.g, i64 noundef 1)
  %.not.i.i314 = icmp eq i32 %i.ph, 0
  br i1 %.not.i.i314, label %._crit_edge.i315, label %dbuf_putc.exit.i.i.i215

._crit_edge.i315:                                 ; preds = %bb.co
  %.pre.i316 = load i64, ptr %i.j, align 8, !tbaa !457
  br label %bb.cp

bb.cp:                                            ; preds = %._crit_edge.i315, %bb.cn
  %i.pi = phi i64 [ %.pre.i316, %._crit_edge.i315 ], [ -1, %bb.cn ]
  %i.pj = load ptr, ptr %i.g, align 8, !tbaa !458
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 %i.pi
  store i8 %i.pd, ptr %i.pk, align 1
  %i.pl = load i64, ptr %i.j, align 8, !tbaa !457
  %i.pm = add i64 %i.pl, 1
  store i64 %i.pm, ptr %i.j, align 8, !tbaa !457
  br label %dbuf_putc.exit.i.i.i215

bb.cq:                                            ; preds = %.lr.ph.i.i.i213
  %i.pn = load ptr, ptr %i.g, align 8, !tbaa !458
  %i.po = add i64 %i.pf, 1
  store i64 %i.po, ptr %i.j, align 8, !tbaa !457
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.pf
  store i8 %i.pd, ptr %i.pp, align 1, !tbaa !35
  br label %dbuf_putc.exit.i.i.i215

dbuf_putc.exit.i.i.i215:                          ; preds = %bb.cp, %bb.co, %bb.cq
  %i.pq = lshr i32 %i.pb, 7                       ; 2 uses
  %.not.i.i.i216 = icmp eq i32 %i.pq, 0
  br i1 %.not.i.i.i216, label %._crit_edge.i.i.i217, label %.lr.ph.i.i.i213

._crit_edge.i.i.i217:                             ; preds = %dbuf_putc.exit.i.i.i215, %bb.cm
  %.0.lcssa.i.i.i218 = phi i32 [ %storemerge.i211, %bb.cm ], [ %i.pb, %dbuf_putc.exit.i.i.i215 ]
  %i.pr = trunc nuw i32 %.0.lcssa.i.i.i218 to i8  ; 2 uses
  %i.ps = load i64, ptr %i.h, align 8, !tbaa !456
  %i.pt = load i64, ptr %i.j, align 8, !tbaa !457 ; 3 uses
  %i.pu = icmp eq i64 %i.ps, %i.pt
  br i1 %i.pu, label %bb.cr, label %bb.cs, !prof !9

bb.cr:                                            ; preds = %._crit_edge.i.i.i217
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.g, i8 noundef zeroext %i.pr)
  br label %bc_put_atom.exit219

bb.cs:                                            ; preds = %._crit_edge.i.i.i217
  %i.pv = load ptr, ptr %i.g, align 8, !tbaa !458
  %i.pw = add i64 %i.pt, 1
  store i64 %i.pw, ptr %i.j, align 8, !tbaa !457
  %i.px = getelementptr inbounds nuw i8, ptr %i.pv, i64 %i.pt
  store i8 %i.pr, ptr %i.px, align 1, !tbaa !35
  br label %bc_put_atom.exit219

bc_put_atom.exit219:                              ; preds = %bb.ck, %bb.cr, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #49
  %i.py = getelementptr inbounds nuw i8, ptr %i.or, i64 2
  %i.pz = load i16, ptr %i.py, align 2, !tbaa !1181
  %i.qa = zext i16 %i.pz to i32                   ; 3 uses
  %i.qb = lshr i32 %i.qa, 7                       ; 2 uses
  %.not9.i.i220 = icmp eq i32 %i.qb, 0
  br i1 %.not9.i.i220, label %._crit_edge.i.i225, label %.lr.ph.i.i221

.lr.ph.i.i221:                                    ; preds = %bc_put_atom.exit219, %dbuf_putc.exit.i.i223
  %i.qc = phi i32 [ %i.qr, %dbuf_putc.exit.i.i223 ], [ %i.qb, %bc_put_atom.exit219 ] ; 3 uses
  %.010.i.i222 = phi i32 [ %i.qc, %dbuf_putc.exit.i.i223 ], [ %i.qa, %bc_put_atom.exit219 ]
  %i.qd = trunc i32 %.010.i.i222 to i8
  %i.qe = or i8 %i.qd, -128                       ; 2 uses
  %i.qf = load i64, ptr %i.h, align 8, !tbaa !456 ; 2 uses
  %i.qg = load i64, ptr %i.j, align 8, !tbaa !457 ; 3 uses
  %i.qh = icmp eq i64 %i.qf, %i.qg
  br i1 %i.qh, label %bb.ct, label %bb.cw, !prof !9

bb.ct:                                            ; preds = %.lr.ph.i.i221
  %.not568 = icmp eq i64 %i.qf, -1
  br i1 %.not568, label %bb.cv, label %bb.cu, !prof !195

bb.cu:                                            ; preds = %bb.ct
  %i.qi = tail call fastcc i32 @dbuf_claim(ptr noundef nonnull %i.g, i64 noundef 1)
  %.not.i.i320 = icmp eq i32 %i.qi, 0
  br i1 %.not.i.i320, label %._crit_edge.i321, label %dbuf_putc.exit.i.i223

._crit_edge.i321:                                 ; preds = %bb.cu
  %.pre.i322 = load i64, ptr %i.j, align 8, !tbaa !457
  br label %bb.cv

bb.cv:                                            ; preds = %._crit_edge.i321, %bb.ct
  %i.qj = phi i64 [ %.pre.i322, %._crit_edge.i321 ], [ -1, %bb.ct ]
  %i.qk = load ptr, ptr %i.g, align 8, !tbaa !458
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 %i.qj
  store i8 %i.qe, ptr %i.ql, align 1
  %i.qm = load i64, ptr %i.j, align 8, !tbaa !457
  %i.qn = add i64 %i.qm, 1
  store i64 %i.qn, ptr %i.j, align 8, !tbaa !457
  br label %dbuf_putc.exit.i.i223

bb.cw:                                            ; preds = %.lr.ph.i.i221
  %i.qo = load ptr, ptr %i.g, align 8, !tbaa !458
  %i.qp = add i64 %i.qg, 1
  store i64 %i.qp, ptr %i.j, align 8, !tbaa !457
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qo, i64 %i.qg
  store i8 %i.qe, ptr %i.qq, align 1, !tbaa !35
  br label %dbuf_putc.exit.i.i223

dbuf_putc.exit.i.i223:                            ; preds = %bb.cv, %bb.cu, %bb.cw
  %i.qr = lshr i32 %i.qc, 7                       ; 2 uses
  %.not.i.i224 = icmp eq i32 %i.qr, 0
  br i1 %.not.i.i224, label %._crit_edge.i.i225, label %.lr.ph.i.i221

._crit_edge.i.i225:                               ; preds = %dbuf_putc.exit.i.i223, %bc_put_atom.exit219
  %.0.lcssa.i.i226 = phi i32 [ %i.qa, %bc_put_atom.exit219 ], [ %i.qc, %dbuf_putc.exit.i.i223 ]
  %i.qs = trunc nuw i32 %.0.lcssa.i.i226 to i8    ; 2 uses
  %i.qt = load i64, ptr %i.h, align 8, !tbaa !456
  %i.qu = load i64, ptr %i.j, align 8, !tbaa !457 ; 3 uses
  %i.qv = icmp eq i64 %i.qt, %i.qu
  br i1 %i.qv, label %bb.cx, label %bb.cy, !prof !9

bb.cx:                                            ; preds = %._crit_edge.i.i225
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.g, i8 noundef zeroext %i.qs)
  br label %bc_put_leb128.exit227

bb.cy:                                            ; preds = %._crit_edge.i.i225
  %i.qw = load ptr, ptr %i.g, align 8, !tbaa !458
  %i.qx = add i64 %i.qu, 1
  store i64 %i.qx, ptr %i.j, align 8, !tbaa !457
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qw, i64 %i.qu
  store i8 %i.qs, ptr %i.qy, align 1, !tbaa !35
  br label %bc_put_leb128.exit227

bc_put_leb128.exit227:                            ; preds = %bb.cx, %bb.cy
  %i.qz = load i16, ptr %i.or, align 4            ; 4 uses
  %i.ra = and i16 %i.qz, 7
  %i.rb = lshr i16 %i.qz, 1
  %i.rc = and i16 %i.rb, 8
  %i.rd = or disjoint i16 %i.rc, %i.ra
  %i.re = shl i16 %i.qz, 1
  %i.rf = and i16 %i.re, 16
  %i.rg = or disjoint i16 %i.rd, %i.rf
  %i.rh = lshr i16 %i.qz, 3
  %i.ri = and i16 %i.rh, 480
  %i.rj = or disjoint i16 %i.rg, %i.ri            ; 2 uses
  %i.rk = zext nneg i16 %i.rj to i32              ; 2 uses
  %i.rl = lshr i32 %i.rk, 7                       ; 4 uses
  %.not9.i.i228 = icmp eq i32 %i.rl, 0
  br i1 %.not9.i.i228, label %._crit_edge.i.i233, label %.lr.ph.i.i229

.lr.ph.i.i229:                                    ; preds = %bc_put_leb128.exit227
  %i.rm = trunc i16 %i.rj to i8
  %i.rn = or i8 %i.rm, -128                       ; 2 uses
  %i.ro = load i64, ptr %i.h, align 8, !tbaa !456 ; 2 uses
  %2 = load i64, ptr %i.j, align 8, !tbaa !457    ; 3 uses
  %i.rp = icmp eq i64 %i.ro, %2
  br i1 %i.rp, label %bb.cz, label %bb.dc, !prof !9

bb.cz:                                            ; preds = %.lr.ph.i.i229
  %.not569 = icmp eq i64 %i.ro, -1
  br i1 %.not569, label %bb.db, label %bb.da, !prof !195

bb.da:                                            ; preds = %bb.cz
  %i.rq = tail call fastcc i32 @dbuf_claim(ptr noundef nonnull %i.g, i64 noundef 1)
  %.not.i.i326 = icmp eq i32 %i.rq, 0
  br i1 %.not.i.i326, label %._crit_edge.i327, label %._crit_edge.i.i233

._crit_edge.i327:                                 ; preds = %bb.da
  %.pre.i328 = load i64, ptr %i.j, align 8, !tbaa !457
  br label %bb.db

bb.db:                                            ; preds = %._crit_edge.i327, %bb.cz
  %i.rr = phi i64 [ %.pre.i328, %._crit_edge.i327 ], [ -1, %bb.cz ]
  %i.rs = load ptr, ptr %i.g, align 8, !tbaa !458
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 %i.rr
  store i8 %i.rn, ptr %i.rt, align 1
  %i.ru = load i64, ptr %i.j, align 8, !tbaa !457
  %i.rv = add i64 %i.ru, 1
  store i64 %i.rv, ptr %i.j, align 8, !tbaa !457
  br label %._crit_edge.i.i233

bb.dc:                                            ; preds = %.lr.ph.i.i229
  %i.rw = load ptr, ptr %i.g, align 8, !tbaa !458
  %i.rx = add i64 %2, 1
  store i64 %i.rx, ptr %i.j, align 8, !tbaa !457
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rw, i64 %2
  store i8 %i.rn, ptr %i.ry, align 1, !tbaa !35
  br label %._crit_edge.i.i233

._crit_edge.i.i233:                               ; preds = %bb.db, %bb.da, %bb.dc, %bc_put_leb128.exit227
  %.0.lcssa.i.i234 = phi i32 [ %i.rk, %bc_put_leb128.exit227 ], [ %i.rl, %bb.dc ], [ %i.rl, %bb.da ], [ %i.rl, %bb.db ]
  %i.rz = trunc nuw i32 %.0.lcssa.i.i234 to i8    ; 2 uses
  %i.sa = load i64, ptr %i.h, align 8, !tbaa !456
  %3 = load i64, ptr %i.j, align 8, !tbaa !457    ; 3 uses
  %i.sb = icmp eq i64 %i.sa, %3
  br i1 %i.sb, label %bb.dd, label %bb.de, !prof !9

bb.dd:                                            ; preds = %._crit_edge.i.i233
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.g, i8 noundef zeroext %i.rz)
  br label %bc_put_leb128.exit235

bb.de:                                            ; preds = %._crit_edge.i.i233
  %i.sc = load ptr, ptr %i.g, align 8, !tbaa !458
  %i.sd = add i64 %3, 1
  store i64 %i.sd, ptr %i.j, align 8, !tbaa !457
  %i.se = getelementptr inbounds nuw i8, ptr %i.sc, i64 %3
  store i8 %i.rz, ptr %i.se, align 1, !tbaa !35
  br label %bc_put_leb128.exit235

bc_put_leb128.exit235:                            ; preds = %bb.dd, %bb.de
  %indvars.iv.next443 = add nuw nsw i64 %indvars.iv442, 1 ; 2 uses
  %i.sf = load i16, ptr %i.fr, align 2, !tbaa !394
  %i.sg = zext i16 %i.sf to i64
  %i.sh = icmp samesign ult i64 %indvars.iv.next443, %i.sg
  br i1 %i.sh, label %bb.ci, label %.preheader, !llvm.loop !1665

bb.df:                                            ; preds = %bb.dg
  %indvars.iv.next446 = add nuw nsw i64 %indvars.iv445, 1 ; 2 uses
  %i.si = load i32, ptr %i.gm, align 4, !tbaa !182
  %i.sj = sext i32 %i.si to i64
  %i.sk = icmp slt i64 %indvars.iv.next446, %i.sj
  br i1 %i.sk, label %bb.dg, label %._crit_edge, !llvm.loop !1666

bb.dg:                                            ; preds = %.lr.ph417, %bb.df
  %indvars.iv445 = phi i64 [ 0, %.lr.ph417 ], [ %indvars.iv.next446, %bb.df ] ; 2 uses
  %i.sl = load ptr, ptr %i.op, align 8, !tbaa !203
  %i.sm = getelementptr inbounds nuw [16 x i8], ptr %i.sl, i64 %indvars.iv445 ; 2 uses
  %i.sn = load i64, ptr %i.sm, align 8
  %i.so = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  %i.sp = load i64, ptr %i.so, align 8
  %i.sq = tail call fastcc i32 @JS_WriteObjectRec(ptr noundef %0, i64 %i.sn, i64 %i.sp)
  %.not103 = icmp eq i32 %i.sq, 0
  br i1 %.not103, label %bb.df, label %dbuf_put.exit286

._crit_edge:                                      ; preds = %bb.df, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #49
  %i.sr = load i32, ptr %i.hg, align 8, !tbaa !396 ; 4 uses
  %i.ss = load ptr, ptr %0, align 8, !tbaa !921   ; 2 uses
  %i.st = sext i32 %i.sr to i64                   ; 7 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.ss, i64 16 ; 2 uses
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !50 ; 8 uses
  %i.sw = icmp eq i32 %i.sr, 0
  br i1 %i.sw, label %bb.dn, label %bb.dh, !prof !9

bb.dh:                                            ; preds = %._crit_edge
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sv, i64 40 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sv, i64 48 ; 3 uses
  %i.sz = load i64, ptr %i.sy, align 8, !tbaa !10
  %i.ta = add i64 %i.sz, %i.st
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sv, i64 56
  %i.tc = load i64, ptr %i.tb, align 8, !tbaa !14
  %i.td = add i64 %i.tc, -1
  %i.te = icmp ugt i64 %i.ta, %i.td
  br i1 %i.te, label %bb.dn, label %bb.di, !prof !9

bb.di:                                            ; preds = %bb.dh
  %i.tf = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.sv, i64 noundef %i.st), !inline_history !63 ; 8 uses
  %.not.i.i.i236 = icmp eq ptr %i.tf, null
  br i1 %.not.i.i.i236, label %._crit_edge.i.i237, label %bb.dj

._crit_edge.i.i237:                               ; preds = %bb.di
  %.pre.i.i = load ptr, ptr %i.su, align 8, !tbaa !50
  br label %bb.dn

bb.dj:                                            ; preds = %bb.di
  %i.tg = load i64, ptr %i.sx, align 8, !tbaa !34
  %i.th = add i64 %i.tg, 1
  store i64 %i.th, ptr %i.sx, align 8, !tbaa !34
  %i.ti = getelementptr inbounds i8, ptr %i.tf, i64 -8 ; 3 uses
  %i.tj = load i16, ptr %i.ti, align 8, !tbaa !35
  %i.tk = icmp eq i16 %i.tj, -1
  br i1 %i.tk, label %bb.dk, label %bb.dm

bb.dk:                                            ; preds = %bb.dj
  %i.tl = getelementptr inbounds nuw i8, ptr %i.sv, i64 1064
  %i.tm = icmp eq ptr %i.ti, %i.tl
  br i1 %i.tm, label %bb.dp, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.tn = getelementptr inbounds nuw i8, ptr %i.sv, i64 32
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !36
  %i.tp = tail call i64 %i.to(ptr noundef nonnull %i.ti) #49, !inline_history !1667 ; 2 uses
  %.not15.i.i.i.i = icmp eq i64 %i.tp, 0
  %i.tq = select i1 %.not15.i.i.i.i, i64 8, i64 %i.tp
  br label %bb.dp

bb.dm:                                            ; preds = %bb.dj
  %i.tr = getelementptr inbounds i8, ptr %i.tf, i64 -6
  %i.ts = load i8, ptr %i.tr, align 2, !tbaa !35
  %i.tt = zext i8 %i.ts to i64
  %i.tu = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.tt
  %i.tv = load i16, ptr %i.tu, align 2, !tbaa !38
  %i.tw = zext i16 %i.tv to i64
  br label %bb.dp

bb.dn:                                            ; preds = %._crit_edge.i.i237, %bb.dh, %._crit_edge
  %i.tx = phi ptr [ %.pre.i.i, %._crit_edge.i.i237 ], [ %i.sv, %bb.dh ], [ %i.sv, %._crit_edge ]
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 1256 ; 3 uses
  %i.tz = load i8, ptr %i.ty, align 8, !tbaa !57, !range !58, !noundef !59
  %i.ua = trunc nuw i8 %i.tz to i1
  br i1 %i.ua, label %JS_WriteFunctionBytecode.exit.thread, label %bb.do

bb.do:                                            ; preds = %bb.dn
  store i8 1, ptr %i.ty, align 8, !tbaa !57
  %i.ub = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %i.ss, ptr noundef nonnull @.str.46) #51, !inline_history !65 ; 0 uses
  store i8 0, ptr %i.ty, align 8, !tbaa !57
  br label %JS_WriteFunctionBytecode.exit.thread

bb.dp:                                            ; preds = %bb.dm, %bb.dl, %bb.dk
  %.011.i.i.i.i = phi i64 [ 8, %bb.dk ], [ %i.tq, %bb.dl ], [ %i.tw, %bb.dm ]
  %i.uc = load i64, ptr %i.sy, align 8, !tbaa !10
  %i.ud = add i64 %i.uc, %.011.i.i.i.i
  store i64 %i.ud, ptr %i.sy, align 8, !tbaa !10
  %i.ue = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !395
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.tf, ptr align 1 %i.uf, i64 %i.st, i1 false)
  %i.ug = icmp sgt i32 %i.sr, 0
  br i1 %i.ug, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.dp, %bb.ds
  %.038.i = phi i32 [ %i.ux, %bb.ds ], [ 0, %bb.dp ] ; 2 uses
  %i.uh = zext nneg i32 %.038.i to i64
  %i.ui = getelementptr inbounds nuw i8, ptr %i.tf, i64 %i.uh ; 2 uses
  %i.uj = load i8, ptr %i.ui, align 1, !tbaa !35  ; 2 uses
  %i.uk = zext i8 %i.uj to i32                    ; 2 uses
  %i.ul = icmp ugt i8 %i.uj, -72
  %i.um = add nuw nsw i32 %i.uk, 19
  %i.un = select i1 %i.ul, i32 %i.um, i32 %i.uk
  %i.uo = zext nneg i32 %i.un to i64
  %i.up = getelementptr inbounds nuw [4 x i8], ptr @opcode_info, i64 %i.uo ; 2 uses
  %i.uq = load i8, ptr %i.up, align 4, !tbaa !1357
  %i.ur = zext i8 %i.uq to i32
  %i.us = getelementptr inbounds nuw i8, ptr %i.up, i64 3
  %i.ut = load i8, ptr %i.us, align 1, !tbaa !1359
  %.off.i = add i8 %i.ut, -24
  %switch.i = icmp ult i8 %.off.i, 5
  br i1 %switch.i, label %bb.dq, label %bb.ds

bb.dq:                                            ; preds = %.lr.ph.i
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ui, i64 1 ; 2 uses
  %.val.i = load i32, ptr %i.uu, align 1
  %i.uv = call fastcc i32 @bc_atom_to_idx(ptr noundef nonnull %0, ptr noundef %i.b, i32 noundef %.val.i)
  %.not34.i = icmp eq i32 %i.uv, 0
  br i1 %.not34.i, label %bb.dr, label %bb.dv

bb.dr:                                            ; preds = %bb.dq
  %i.uw = load i32, ptr %i.b, align 4, !tbaa !8
  store i32 %i.uw, ptr %i.uu, align 1
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %.lr.ph.i
  %i.ux = add nuw nsw i32 %.038.i, %i.ur          ; 2 uses
  %i.uy = icmp slt i32 %i.ux, %i.sr
  br i1 %i.uy, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1668

._crit_edge.i:                                    ; preds = %bb.ds, %bb.dp
  %i.uz = load i64, ptr %i.j, align 8, !tbaa !457 ; 2 uses
  %i.va = add i64 %i.uz, %i.st
  %i.vb = load i64, ptr %i.h, align 8, !tbaa !456
  %i.vc = icmp ugt i64 %i.va, %i.vb
  br i1 %i.vc, label %bb.dt, label %bb.du, !prof !9

bb.dt:                                            ; preds = %._crit_edge.i
  %i.vd = tail call fastcc i32 @dbuf_claim(ptr noundef nonnull %i.g, i64 noundef range(i64 -2147483648, 2147483648) %i.st)
  %.not.i.not.i = icmp eq i32 %i.vd, 0
  br i1 %.not.i.not.i, label %._crit_edge39.i, label %bb.dw

._crit_edge39.i:                                  ; preds = %bb.dt
  %.pre.i = load i64, ptr %i.j, align 8, !tbaa !457
  br label %bb.du

bb.du:                                            ; preds = %._crit_edge39.i, %._crit_edge.i
  %i.ve = phi i64 [ %.pre.i, %._crit_edge39.i ], [ %i.uz, %._crit_edge.i ]
  %i.vf = load ptr, ptr %i.g, align 8, !tbaa !458
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 %i.ve
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vg, ptr nonnull readonly align 8 %i.tf, i64 range(i64 -2147483648, 2147483648) %i.st, i1 false)
  %i.vh = load i64, ptr %i.j, align 8, !tbaa !457
  %i.vi = add i64 %i.vh, %i.st
  store i64 %i.vi, ptr %i.j, align 8, !tbaa !457
  br label %bb.dw

bb.dv:                                            ; preds = %bb.dq
  %i.vj = load ptr, ptr %0, align 8, !tbaa !921
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 16
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !50
  tail call void @js_free_rt(ptr noundef %i.vl, ptr noundef nonnull %i.tf)
  br label %JS_WriteFunctionBytecode.exit.thread

JS_WriteFunctionBytecode.exit.thread:             ; preds = %bb.dv, %bb.dn, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  br label %dbuf_put.exit286

bb.dw:                                            ; preds = %bb.du, %bb.dt
  %i.vm = load ptr, ptr %0, align 8, !tbaa !921
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !50
  tail call void @js_free_rt(ptr noundef %i.vo, ptr noundef nonnull %i.tf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  %i.vp = load i8, ptr %i.t, align 4, !tbaa !929, !range !58, !noundef !59
  %i.vq = trunc nuw i8 %i.vp to i1
  br i1 %i.vq, label %bb.dx, label %dbuf_put.exit286

bb.dx:                                            ; preds = %bb.dw
  %i.vr = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.vs = load i32, ptr %i.vr, align 8, !tbaa !466 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
end_hunk_1
begin_hunk_2_@js_array_toSpliced:bb.a
  %i.di = icmp ugt i32 %i.dh, -10
  br i1 %i.di, label %bb.aa, label %js_dup.exit.1

bb.aa:                                            ; preds = %js_dup.exit
  %i.dj = inttoptr i64 %i.de to ptr
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -4 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !8
  %i.dm = add nsw i32 %i.dl, 1
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !8
  br label %js_dup.exit.1

js_dup.exit.1:                                    ; preds = %bb.aa, %js_dup.exit
  store i64 %i.de, ptr %i.db, align 8, !tbaa !35
  %.sroa.47.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.0205, i64 24
  store i64 %i.dg, ptr %.sroa.47.0..sroa_idx.1, align 8, !tbaa !72
  %i.dn = add nuw nsw i64 %.098204, 2             ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0205, i64 32 ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader194.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !2153

.lr.ph209:                                        ; preds = %js_dup.exit129.1, %.lr.ph209.preheader.new
  %.1208 = phi ptr [ %.0.lcssa, %.lr.ph209.preheader.new ], [ %i.en, %js_dup.exit129.1 ] ; 5 uses
  %.0102207 = phi i64 [ 0, %.lr.ph209.preheader.new ], [ %i.em, %js_dup.exit129.1 ] ; 3 uses
  %niter296 = phi i64 [ 0, %.lr.ph209.preheader.new ], [ %niter296.next.1, %js_dup.exit129.1 ]
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.0102207 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.dr = load i64, ptr %i.dq, align 8            ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  %i.dt = load i64, ptr %i.ds, align 8            ; 2 uses
  %i.du = trunc i64 %i.dt to i32
  %i.dv = icmp ugt i32 %i.du, -10
  br i1 %i.dv, label %bb.ab, label %js_dup.exit129

bb.ab:                                            ; preds = %.lr.ph209
  %i.dw = inttoptr i64 %i.dr to ptr
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -4 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !8
  %i.dz = add nsw i32 %i.dy, 1
  store i32 %i.dz, ptr %i.dx, align 4, !tbaa !8
  br label %js_dup.exit129

js_dup.exit129:                                   ; preds = %.lr.ph209, %bb.ab
  store i64 %i.dr, ptr %.1208, align 8, !tbaa !35
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1208, i64 8
  store i64 %i.dt, ptr %.sroa.45.0..sroa_idx, align 8, !tbaa !72
  %i.ea = getelementptr inbounds nuw i8, ptr %.1208, i64 16
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.0102207 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %i.ed = load i64, ptr %i.ec, align 8            ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 56
  %i.ef = load i64, ptr %i.ee, align 8            ; 2 uses
  %i.eg = trunc i64 %i.ef to i32
  %i.eh = icmp ugt i32 %i.eg, -10
  br i1 %i.eh, label %bb.ac, label %js_dup.exit129.1

bb.ac:                                            ; preds = %js_dup.exit129
  %i.ei = inttoptr i64 %i.ed to ptr
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 -4 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !8
  %i.el = add nsw i32 %i.ek, 1
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !8
  br label %js_dup.exit129.1

js_dup.exit129.1:                                 ; preds = %bb.ac, %js_dup.exit129
  store i64 %i.ed, ptr %i.ea, align 8, !tbaa !35
  %.sroa.45.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.1208, i64 24
  store i64 %i.ef, ptr %.sroa.45.0..sroa_idx.1, align 8, !tbaa !72
  %i.em = add nuw nsw i64 %.0102207, 2            ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.1208, i64 32 ; 3 uses
  %niter296.next.1 = add i64 %niter296, 2         ; 2 uses
  %niter296.ncmp.1 = icmp eq i64 %niter296.next.1, %unroll_iter295
  br i1 %niter296.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph209, !llvm.loop !2154

._crit_edge.loopexit.unr-lcssa:                   ; preds = %js_dup.exit129.1
  %lcmp.mod292.not = icmp eq i64 %xtraiter291, 0
  br i1 %lcmp.mod292.not, label %._crit_edge, label %.lr.ph209.epil.preheader

.lr.ph209.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph209.preheader
  %.1208.epil.init = phi ptr [ %.0.lcssa, %.lr.ph209.preheader ], [ %i.en, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.0102207.epil.init = phi i64 [ 0, %.lr.ph209.preheader ], [ %i.em, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod294 = trunc i32 %i.ba to i1
  tail call void @llvm.assume(i1 %lcmp.mod294)
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.0102207.epil.init ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.eq = load i64, ptr %i.ep, align 8            ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.es = load i64, ptr %i.er, align 8            ; 2 uses
  %i.et = trunc i64 %i.es to i32
  %i.eu = icmp ugt i32 %i.et, -10
  br i1 %i.eu, label %bb.ad, label %js_dup.exit129.epil

bb.ad:                                            ; preds = %.lr.ph209.epil.preheader
  %i.ev = inttoptr i64 %i.eq to ptr
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 -4 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !8
  %i.ey = add nsw i32 %i.ex, 1
  store i32 %i.ey, ptr %i.ew, align 4, !tbaa !8
  br label %js_dup.exit129.epil

js_dup.exit129.epil:                              ; preds = %bb.ad, %.lr.ph209.epil.preheader
  store i64 %i.eq, ptr %.1208.epil.init, align 8, !tbaa !35
  %.sroa.45.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %.1208.epil.init, i64 8
  store i64 %i.es, ptr %.sroa.45.0..sroa_idx.epil, align 8, !tbaa !72
  %i.ez = getelementptr inbounds nuw i8, ptr %.1208.epil.init, i64 16
  br label %._crit_edge

._crit_edge:                                      ; preds = %js_dup.exit129.epil, %._crit_edge.loopexit.unr-lcssa, %.preheader194
  %.1.lcssa = phi ptr [ %.0.lcssa, %.preheader194 ], [ %i.en, %._crit_edge.loopexit.unr-lcssa ], [ %i.ez, %js_dup.exit129.epil ] ; 4 uses
  %i.fa = add nsw i64 %.098.lcssa, %.1154         ; 4 uses
  %i.fb = icmp slt i64 %i.fa, %.pre
  br i1 %i.fb, label %.lr.ph214.preheader, label %JS_ToInt64Clamp.exit.thread184

.lr.ph214.preheader:                              ; preds = %._crit_edge
  %i.fc = add i64 %.1154, %.098.lcssa
  %i.fd = sub i64 %.pre, %i.fc
  %i.fe = xor i64 %.1154, -1
  %i.ff = add i64 %.pre, %i.fe
  %xtraiter297 = and i64 %i.fd, 1
  %lcmp.mod298.not = icmp eq i64 %xtraiter297, 0
  br i1 %lcmp.mod298.not, label %.lr.ph214.prol.loopexit, label %.lr.ph214.prol

.lr.ph214.prol:                                   ; preds = %.lr.ph214.preheader
  %i.fg = getelementptr inbounds [16 x i8], ptr %i.ca, i64 %i.fa ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8            ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fj = load i64, ptr %i.fi, align 8            ; 2 uses
  %i.fk = trunc i64 %i.fj to i32
  %i.fl = icmp ugt i32 %i.fk, -10
  br i1 %i.fl, label %bb.ae, label %js_dup.exit132.prol

bb.ae:                                            ; preds = %.lr.ph214.prol
  %i.fm = inttoptr i64 %i.fh to ptr
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 -4 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !8
  %i.fp = add nsw i32 %i.fo, 1
  store i32 %i.fp, ptr %i.fn, align 4, !tbaa !8
  br label %js_dup.exit132.prol

js_dup.exit132.prol:                              ; preds = %bb.ae, %.lr.ph214.prol
  store i64 %i.fh, ptr %.1.lcssa, align 8, !tbaa !35
  %.sroa.43.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 8
  store i64 %i.fj, ptr %.sroa.43.0..sroa_idx.prol, align 8, !tbaa !72
  %i.fq = add nsw i64 %i.fa, 1
  %i.fr = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 16
  br label %.lr.ph214.prol.loopexit

.lr.ph214.prol.loopexit:                          ; preds = %js_dup.exit132.prol, %.lr.ph214.preheader
  %.2212.unr = phi ptr [ %.1.lcssa, %.lr.ph214.preheader ], [ %i.fr, %js_dup.exit132.prol ]
  %.199211.unr = phi i64 [ %i.fa, %.lr.ph214.preheader ], [ %i.fq, %js_dup.exit132.prol ]
  %i.fs = icmp eq i64 %i.ff, %.098.lcssa
  br i1 %i.fs, label %JS_ToInt64Clamp.exit.thread184, label %.lr.ph214

.lr.ph214:                                        ; preds = %.lr.ph214.prol.loopexit, %js_dup.exit132.1
  %.2212 = phi ptr [ %i.gq, %js_dup.exit132.1 ], [ %.2212.unr, %.lr.ph214.prol.loopexit ] ; 5 uses
  %.199211 = phi i64 [ %i.gp, %js_dup.exit132.1 ], [ %.199211.unr, %.lr.ph214.prol.loopexit ] ; 3 uses
  %i.ft = getelementptr inbounds [16 x i8], ptr %i.ca, i64 %.199211 ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8            ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fw = load i64, ptr %i.fv, align 8            ; 2 uses
  %i.fx = trunc i64 %i.fw to i32
  %i.fy = icmp ugt i32 %i.fx, -10
  br i1 %i.fy, label %bb.af, label %js_dup.exit132

bb.af:                                            ; preds = %.lr.ph214
  %i.fz = inttoptr i64 %i.fu to ptr
  %i.ga = getelementptr inbounds i8, ptr %i.fz, i64 -4 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !8
  %i.gc = add nsw i32 %i.gb, 1
  store i32 %i.gc, ptr %i.ga, align 4, !tbaa !8
  br label %js_dup.exit132

js_dup.exit132:                                   ; preds = %.lr.ph214, %bb.af
  store i64 %i.fu, ptr %.2212, align 8, !tbaa !35
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.2212, i64 8
  store i64 %i.fw, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !72
  %i.gd = getelementptr inbounds nuw i8, ptr %.2212, i64 16
  %i.ge = getelementptr [16 x i8], ptr %i.ca, i64 %.199211 ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 16
  %i.gg = load i64, ptr %i.gf, align 8            ; 2 uses
  %i.gh = getelementptr i8, ptr %i.ge, i64 24
  %i.gi = load i64, ptr %i.gh, align 8            ; 2 uses
  %i.gj = trunc i64 %i.gi to i32
  %i.gk = icmp ugt i32 %i.gj, -10
  br i1 %i.gk, label %bb.ag, label %js_dup.exit132.1

bb.ag:                                            ; preds = %js_dup.exit132
  %i.gl = inttoptr i64 %i.gg to ptr
  %i.gm = getelementptr inbounds i8, ptr %i.gl, i64 -4 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !8
  %i.go = add nsw i32 %i.gn, 1
  store i32 %i.go, ptr %i.gm, align 4, !tbaa !8
  br label %js_dup.exit132.1

js_dup.exit132.1:                                 ; preds = %bb.ag, %js_dup.exit132
  store i64 %i.gg, ptr %i.gd, align 8, !tbaa !35
  %.sroa.43.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.2212, i64 24
  store i64 %i.gi, ptr %.sroa.43.0..sroa_idx.1, align 8, !tbaa !72
  %i.gp = add nsw i64 %.199211, 2                 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.2212, i64 32
  %5 = icmp slt i64 %i.gp, %.pre
  br i1 %5, label %.lr.ph214, label %JS_ToInt64Clamp.exit.thread184, !llvm.loop !2155

js_get_fast_array.exit.thread:                    ; preds = %bb.v, %bb.w, %bb.u, %bb.x
  %i.gr = icmp sgt i64 %.0157170, 0
  br i1 %i.gr, label %.lr.ph217, label %.preheader

.preheader:                                       ; preds = %bb.ah, %js_get_fast_array.exit.thread
  %.2100.lcssa = phi i64 [ 0, %js_get_fast_array.exit.thread ], [ %.0157170, %bb.ah ]
  %.3.lcssa = phi ptr [ %i.bn, %js_get_fast_array.exit.thread ], [ %i.gw, %bb.ah ] ; 3 uses
  %.not230 = icmp eq i32 %narrow, 0
  br i1 %.not230, label %._crit_edge223, label %.lr.ph222.preheader

.lr.ph222.preheader:                              ; preds = %.preheader
  %xtraiter299 = and i64 %.0104, 1
  %i.gs = icmp eq i32 %3, 3
  br i1 %i.gs, label %.lr.ph222.epil.preheader, label %.lr.ph222.preheader.new

.lr.ph222.preheader.new:                          ; preds = %.lr.ph222.preheader
  %unroll_iter303 = and i64 %.0104, 2147483646
  br label %.lr.ph222

.lr.ph217:                                        ; preds = %js_get_fast_array.exit.thread, %bb.ah
  %.3216 = phi ptr [ %i.gw, %bb.ah ], [ %i.bn, %js_get_fast_array.exit.thread ] ; 2 uses
  %.2100215 = phi i64 [ %i.gv, %bb.ah ], [ 0, %js_get_fast_array.exit.thread ] ; 2 uses
  %i.gt = tail call fastcc i32 @JS_TryGetPropertyInt64(ptr noundef %0, i64 %i.c, i64 %i.d, i64 noundef %.2100215, ptr noundef %.3216)
  %i.gu = icmp eq i32 %i.gt, -1
  br i1 %i.gu, label %JS_ToInt64Clamp.exit, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph217
  %i.gv = add nuw nsw i64 %.2100215, 1            ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.3216, i64 16 ; 2 uses
  %exitcond245.not = icmp eq i64 %i.gv, %.0157170
  br i1 %exitcond245.not, label %.preheader, label %.lr.ph217, !llvm.loop !2156

.lr.ph222:                                        ; preds = %js_dup.exit135.1, %.lr.ph222.preheader.new
  %.4221 = phi ptr [ %.3.lcssa, %.lr.ph222.preheader.new ], [ %i.hv, %js_dup.exit135.1 ] ; 5 uses
  %.1103220 = phi i64 [ 0, %.lr.ph222.preheader.new ], [ %i.hu, %js_dup.exit135.1 ] ; 3 uses
  %niter304 = phi i64 [ 0, %.lr.ph222.preheader.new ], [ %niter304.next.1, %js_dup.exit135.1 ]
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.1103220 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  %i.gz = load i64, ptr %i.gy, align 8            ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 40
  %i.hb = load i64, ptr %i.ha, align 8            ; 2 uses
  %i.hc = trunc i64 %i.hb to i32
  %i.hd = icmp ugt i32 %i.hc, -10
  br i1 %i.hd, label %bb.ai, label %js_dup.exit135

bb.ai:                                            ; preds = %.lr.ph222
  %i.he = inttoptr i64 %i.gz to ptr
  %i.hf = getelementptr inbounds i8, ptr %i.he, i64 -4 ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !8
  %i.hh = add nsw i32 %i.hg, 1
  store i32 %i.hh, ptr %i.hf, align 4, !tbaa !8
  br label %js_dup.exit135

js_dup.exit135:                                   ; preds = %.lr.ph222, %bb.ai
  store i64 %i.gz, ptr %.4221, align 8, !tbaa !35
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.4221, i64 8
  store i64 %i.hb, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !72
  %i.hi = getelementptr inbounds nuw i8, ptr %.4221, i64 16
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.1103220 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 48
  %i.hl = load i64, ptr %i.hk, align 8            ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 56
  %i.hn = load i64, ptr %i.hm, align 8            ; 2 uses
  %i.ho = trunc i64 %i.hn to i32
  %i.hp = icmp ugt i32 %i.ho, -10
  br i1 %i.hp, label %bb.aj, label %js_dup.exit135.1

bb.aj:                                            ; preds = %js_dup.exit135
  %i.hq = inttoptr i64 %i.hl to ptr
  %i.hr = getelementptr inbounds i8, ptr %i.hq, i64 -4 ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !8
  %i.ht = add nsw i32 %i.hs, 1
  store i32 %i.ht, ptr %i.hr, align 4, !tbaa !8
  br label %js_dup.exit135.1

js_dup.exit135.1:                                 ; preds = %bb.aj, %js_dup.exit135
  store i64 %i.hl, ptr %i.hi, align 8, !tbaa !35
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.4221, i64 24
  store i64 %i.hn, ptr %.sroa.4.0..sroa_idx.1, align 8, !tbaa !72
  %i.hu = add nuw nsw i64 %.1103220, 2            ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.4221, i64 32 ; 3 uses
  %niter304.next.1 = add i64 %niter304, 2         ; 2 uses
  %niter304.ncmp.1 = icmp eq i64 %niter304.next.1, %unroll_iter303
  br i1 %niter304.ncmp.1, label %._crit_edge223.loopexit.unr-lcssa, label %.lr.ph222, !llvm.loop !2157

._crit_edge223.loopexit.unr-lcssa:                ; preds = %js_dup.exit135.1
  %lcmp.mod300.not = icmp eq i64 %xtraiter299, 0
  br i1 %lcmp.mod300.not, label %._crit_edge223, label %.lr.ph222.epil.preheader

.lr.ph222.epil.preheader:                         ; preds = %._crit_edge223.loopexit.unr-lcssa, %.lr.ph222.preheader
  %.4221.epil.init = phi ptr [ %.3.lcssa, %.lr.ph222.preheader ], [ %i.hv, %._crit_edge223.loopexit.unr-lcssa ] ; 3 uses
  %.1103220.epil.init = phi i64 [ 0, %.lr.ph222.preheader ], [ %i.hu, %._crit_edge223.loopexit.unr-lcssa ]
  %lcmp.mod302 = trunc i32 %i.ba to i1
  tail call void @llvm.assume(i1 %lcmp.mod302)
  %i.hw = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.1103220.epil.init ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 32
  %i.hy = load i64, ptr %i.hx, align 8            ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 40
  %i.ia = load i64, ptr %i.hz, align 8            ; 2 uses
  %i.ib = trunc i64 %i.ia to i32
  %i.ic = icmp ugt i32 %i.ib, -10
  br i1 %i.ic, label %bb.ak, label %js_dup.exit135.epil

bb.ak:                                            ; preds = %.lr.ph222.epil.preheader
  %i.id = inttoptr i64 %i.hy to ptr
  %i.ie = getelementptr inbounds i8, ptr %i.id, i64 -4 ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !8
  %i.ig = add nsw i32 %i.if, 1
  store i32 %i.ig, ptr %i.ie, align 4, !tbaa !8
  br label %js_dup.exit135.epil

js_dup.exit135.epil:                              ; preds = %bb.ak, %.lr.ph222.epil.preheader
  store i64 %i.hy, ptr %.4221.epil.init, align 8, !tbaa !35
  %.sroa.4.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %.4221.epil.init, i64 8
  store i64 %i.ia, ptr %.sroa.4.0..sroa_idx.epil, align 8, !tbaa !72
  %i.ih = getelementptr inbounds nuw i8, ptr %.4221.epil.init, i64 16
  br label %._crit_edge223

._crit_edge223:                                   ; preds = %js_dup.exit135.epil, %._crit_edge223.loopexit.unr-lcssa, %.preheader
  %.4.lcssa = phi ptr [ %.3.lcssa, %.preheader ], [ %i.hv, %._crit_edge223.loopexit.unr-lcssa ], [ %i.ih, %js_dup.exit135.epil ]
  %i.ii = add nsw i64 %.2100.lcssa, %.1154        ; 2 uses
  %i.ij = icmp slt i64 %i.ii, %.pre
  br i1 %i.ij, label %.lr.ph228, label %JS_ToInt64Clamp.exit.thread184

.lr.ph228:                                        ; preds = %._crit_edge223, %bb.al
  %.5226 = phi ptr [ %i.in, %bb.al ], [ %.4.lcssa, %._crit_edge223 ] ; 2 uses
  %.3101225 = phi i64 [ %i.im, %bb.al ], [ %i.ii, %._crit_edge223 ] ; 2 uses
  %i.ik = tail call fastcc i32 @JS_TryGetPropertyInt64(ptr noundef %0, i64 %i.c, i64 %i.d, i64 noundef %.3101225, ptr noundef %.5226)
  %i.il = icmp eq i32 %i.ik, -1
  br i1 %i.il, label %JS_ToInt64Clamp.exit, label %bb.al

bb.al:                                            ; preds = %.lr.ph228
  %i.im = add nsw i64 %.3101225, 1                ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.5226, i64 16
  %6 = icmp slt i64 %i.im, %.pre
  br i1 %6, label %.lr.ph228, label %JS_ToInt64Clamp.exit.thread184, !llvm.loop !2158

JS_ToInt64Clamp.exit.thread184:                   ; preds = %bb.i, %js_dup.exit.i, %js_dup.exit.i111, %bb.q, %.lr.ph214.prol.loopexit, %js_dup.exit132.1, %bb.al, %._crit_edge, %._crit_edge223, %bb.t, %bb.a, %bb.r
  %.ph183 = phi i64 [ %i.bg, %bb.t ], [ %i.bg, %._crit_edge223 ], [ %i.bg, %bb.al ], [ 0, %bb.a ], [ 0, %bb.r ], [ %i.bg, %._crit_edge ], [ 0, %js_dup.exit.i111 ], [ %i.bg, %.lr.ph214.prol.loopexit ], [ %i.bg, %js_dup.exit132.1 ], [ 0, %bb.q ], [ 0, %js_dup.exit.i ], [ 0, %bb.i ]
  %.sroa.497.0.ph = phi i64 [ %i.bh, %bb.t ], [ %i.bh, %._crit_edge223 ], [ %i.bh, %bb.al ], [ 6, %bb.a ], [ 6, %bb.r ], [ %i.bh, %._crit_edge ], [ 6, %js_dup.exit.i111 ], [ %i.bh, %.lr.ph214.prol.loopexit ], [ %i.bh, %js_dup.exit132.1 ], [ 6, %bb.q ], [ 6, %js_dup.exit.i ], [ 6, %bb.i ]
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %JS_FreeValue.exit

JS_ToInt64Clamp.exit:                             ; preds = %.lr.ph217, %.lr.ph228, %bb.s
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !50
  %i.ir = trunc i64 %i.bh to i32
  %i.is = icmp ugt i32 %i.ir, -10
  br i1 %i.is, label %bb.am, label %JS_FreeValue.exit

bb.am:                                            ; preds = %JS_ToInt64Clamp.exit
  %i.it = inttoptr i64 %i.bg to ptr
  %i.iu = getelementptr inbounds i8, ptr %i.it, i64 -4 ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !8  ; 2 uses
  %i.iw = add nsw i32 %i.iv, -1
  store i32 %i.iw, ptr %i.iu, align 4, !tbaa !8
  %i.ix = icmp slt i32 %i.iv, 2
  br i1 %i.ix, label %bb.an, label %JS_FreeValue.exit

bb.an:                                            ; preds = %bb.am
  tail call fastcc void @js_free_value_rt(ptr noundef %i.iq, i64 %i.bg, i64 %i.bh), !inline_history !143
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %JS_ToInt64Clamp.exit.thread184, %JS_ToInt64Clamp.exit, %bb.am, %bb.an
  %i.iy = phi ptr [ %i.io, %JS_ToInt64Clamp.exit.thread184 ], [ %i.ip, %JS_ToInt64Clamp.exit ], [ %i.ip, %bb.am ], [ %i.ip, %bb.an ]
  %.sroa.497.0188 = phi i64 [ %.sroa.497.0.ph, %JS_ToInt64Clamp.exit.thread184 ], [ 6, %JS_ToInt64Clamp.exit ], [ 6, %bb.am ], [ 6, %bb.an ]
  %i.iz = phi i64 [ %.ph183, %JS_ToInt64Clamp.exit.thread184 ], [ 0, %JS_ToInt64Clamp.exit ], [ 0, %bb.am ], [ 0, %bb.an ]
  %i.ja = load ptr, ptr %i.iy, align 8, !tbaa !50
  %i.jb = trunc i64 %i.d to i32
  %i.jc = icmp ugt i32 %i.jb, -10
  br i1 %i.jc, label %bb.ao, label %JS_FreeValue.exit136

bb.ao:                                            ; preds = %JS_FreeValue.exit
  %i.jd = inttoptr i64 %i.c to ptr
  %i.je = getelementptr inbounds i8, ptr %i.jd, i64 -4 ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !8  ; 2 uses
  %i.jg = add nsw i32 %i.jf, -1
  store i32 %i.jg, ptr %i.je, align 4, !tbaa !8
  %i.jh = icmp slt i32 %i.jf, 2
  br i1 %i.jh, label %bb.ap, label %JS_FreeValue.exit136

bb.ap:                                            ; preds = %bb.ao
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ja, i64 %i.c, i64 %i.d), !inline_history !143
  br label %JS_FreeValue.exit136

JS_FreeValue.exit136:                             ; preds = %JS_FreeValue.exit, %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.iz, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.497.0188, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_array_copyWithin(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #49
  %i.c = tail call { i64, i64 } @JS_ToObject(ptr noundef %0, i64 %1, i64 %2) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0        ; 5 uses
  %i.e = extractvalue { i64, i64 } %i.c, 1        ; 5 uses
  %i.f = call fastcc i32 @js_get_length64(ptr noundef %0, ptr noundef nonnull %i.a, i64 %i.d, i64 %i.e)
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %JS_ToInt64Clamp.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.a, align 8, !tbaa !72   ; 10 uses
  %i.h = load i64, ptr %4, align 8                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = trunc i64 %i.j to i32
  %i.l = icmp ugt i32 %i.k, -10
  br i1 %i.l, label %bb.c, label %js_dup.exit.i.preheader

bb.c:                                             ; preds = %bb.b
  %i.m = inttoptr i64 %i.h to ptr
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !8
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !8
  br label %js_dup.exit.i.preheader

js_dup.exit.i.preheader:                          ; preds = %bb.c, %bb.b
  br label %js_dup.exit.i

js_dup.exit.i:                                    ; preds = %js_dup.exit.i.preheader, %bb.h
  %.sroa.012.0.in.i.i = phi i64 [ %i.x, %bb.h ], [ %i.h, %js_dup.exit.i.preheader ] ; 3 uses
  %.sroa.6.0.i.i = phi i64 [ %i.y, %bb.h ], [ %i.j, %js_dup.exit.i.preheader ] ; 2 uses
  %i.q = trunc i64 %.sroa.6.0.i.i to i32
  switch i32 %i.q, label %bb.h [
    i32 0, label %bb.d
    i32 1, label %bb.d
    i32 2, label %bb.d
    i32 3, label %bb.d
    i32 6, label %JS_ToInt64Clamp.exit
    i32 8, label %bb.e
  ]

bb.d:                                             ; preds = %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i
  %sext.i.i = shl i64 %.sroa.012.0.in.i.i, 32
  %i.r = ashr exact i64 %sext.i.i, 32
  br label %select.unfold.i

bb.e:                                             ; preds = %js_dup.exit.i
  %.sroa.012.0.le.i.i = bitcast i64 %.sroa.012.0.in.i.i to double ; 4 uses
  %i.s = fcmp uno double %.sroa.012.0.le.i.i, 0.000000e+00
  br i1 %i.s, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = fcmp olt double %.sroa.012.0.le.i.i, f0xC3E0000000000000
  br i1 %i.t, label %.sink.split.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = fcmp ult double %.sroa.012.0.le.i.i, f0x43E0000000000000
  %i.v = fptosi double %.sroa.012.0.le.i.i to i64
  br i1 %i.u, label %select.unfold.i, label %bb.i

bb.h:                                             ; preds = %js_dup.exit.i
  %i.w = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.012.0.in.i.i, i64 %.sroa.6.0.i.i, i32 noundef 0), !inline_history !1101 ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 0
  %i.y = extractvalue { i64, i64 } %i.w, 1        ; 2 uses
  %i.z = and i64 %i.y, 4294967295
  %i.aa = icmp eq i64 %i.z, 6
  br i1 %i.aa, label %JS_ToInt64Clamp.exit, label %js_dup.exit.i

select.unfold.i:                                  ; preds = %bb.g, %bb.d
  %.sink.i.ph.i = phi i64 [ %i.r, %bb.d ], [ %i.v, %bb.g ] ; 3 uses
  %i.ab = icmp slt i64 %.sink.i.ph.i, 0
  br i1 %i.ab, label %.sink.split.i, label %bb.i

.sink.split.i:                                    ; preds = %bb.f, %select.unfold.i
  %.sink.i.ph27.i = phi i64 [ %.sink.i.ph.i, %select.unfold.i ], [ -9223372036854775808, %bb.f ]
  %i.ac = add nsw i64 %.sink.i.ph27.i, %i.g
  %spec.select = tail call i64 @llvm.smax.i64(i64 %i.ac, i64 0)
  br label %.thread

bb.i:                                             ; preds = %select.unfold.i, %bb.e, %bb.g
  %.0.ph = phi i64 [ 9223372036854775807, %bb.g ], [ 0, %bb.e ], [ %.sink.i.ph.i, %select.unfold.i ]
  %spec.select63 = tail call i64 @llvm.smin.i64(i64 %.0.ph, i64 %i.g)
  br label %.thread

.thread:                                          ; preds = %bb.i, %.sink.split.i
  %.1.ph = phi i64 [ %spec.select63, %bb.i ], [ %spec.select, %.sink.split.i ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = icmp ugt i32 %i.ah, -10
  br i1 %i.ai, label %bb.j, label %js_dup.exit.i26.preheader

bb.j:                                             ; preds = %.thread
  %i.aj = inttoptr i64 %i.ae to ptr
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !8
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !8
  br label %js_dup.exit.i26.preheader

js_dup.exit.i26.preheader:                        ; preds = %bb.j, %.thread
  br label %js_dup.exit.i26

js_dup.exit.i26:                                  ; preds = %js_dup.exit.i26.preheader, %bb.o
  %.sroa.012.0.in.i.i27 = phi i64 [ %i.au, %bb.o ], [ %i.ae, %js_dup.exit.i26.preheader ] ; 3 uses
  %.sroa.6.0.i.i28 = phi i64 [ %i.av, %bb.o ], [ %i.ag, %js_dup.exit.i26.preheader ] ; 2 uses
  %i.an = trunc i64 %.sroa.6.0.i.i28 to i32
  switch i32 %i.an, label %bb.o [
    i32 0, label %bb.k
    i32 1, label %bb.k
    i32 2, label %bb.k
    i32 3, label %bb.k
    i32 6, label %JS_ToInt64Clamp.exit
    i32 8, label %bb.l
  ]

bb.k:                                             ; preds = %js_dup.exit.i26, %js_dup.exit.i26, %js_dup.exit.i26, %js_dup.exit.i26
  %sext.i.i40 = shl i64 %.sroa.012.0.in.i.i27, 32
  %i.ao = ashr exact i64 %sext.i.i40, 32
  br label %select.unfold.i36

bb.l:                                             ; preds = %js_dup.exit.i26
  %.sroa.012.0.le.i.i29 = bitcast i64 %.sroa.012.0.in.i.i27 to double ; 4 uses
  %i.ap = fcmp uno double %.sroa.012.0.le.i.i29, 0.000000e+00
  br i1 %i.ap, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = fcmp olt double %.sroa.012.0.le.i.i29, f0xC3E0000000000000
  br i1 %i.aq, label %.sink.split.i30, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = fcmp ult double %.sroa.012.0.le.i.i29, f0x43E0000000000000
  %i.as = fptosi double %.sroa.012.0.le.i.i29 to i64
  br i1 %i.ar, label %select.unfold.i36, label %bb.p

bb.o:                                             ; preds = %js_dup.exit.i26
end_hunk_2
