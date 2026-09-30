Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lua/original/ltm?download=true
inline.NumInlined: 9
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@luaT_adjustvarargs:bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !30
  %i.dd = getelementptr inbounds [16 x i8], ptr %i.dc, i64 %i.cz
  store ptr %i.dd, ptr %i.db, align 8, !tbaa !30
  %i.de = zext i8 %i.j to i64
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %i.de
  br label %bb.g

bb.g:                                             ; preds = %buildhiddenargs.exit, %createvarargtab.exit
  %.sink32 = phi ptr [ %i.df, %buildhiddenargs.exit ], [ %i.an, %createvarargtab.exit ]
  %.sink = phi i8 [ 0, %buildhiddenargs.exit ], [ %i.at, %createvarargtab.exit ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.sink32, i64 24
  store i8 %.sink, ptr %i.dg, align 8, !tbaa !30
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaT_getvararg(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((8, 9)) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !30   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !25
  %i.f = icmp eq i8 %i.e, 3
  br i1 %i.f, label %bb.b, label %bb.c, !prof !39

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %2, align 8, !tbaa !30     ; 2 uses
  store i64 %i.g, ptr %i.a, align 8, !tbaa !65
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = call i32 @luaV_tointegerns(ptr noundef nonnull %2, ptr noundef nonnull %i.a, i32 noundef 0) #6
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i64, ptr %i.a, align 8, !tbaa !65
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %i.i = phi i64 [ %.pre, %._crit_edge ], [ %i.g, %bb.b ] ; 2 uses
  %i.j = add i64 %i.i, -1
  %i.k = zext i32 %i.c to i64
  %i.l = icmp ult i64 %i.j, %i.k
  br i1 %i.l, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %0, align 8, !tbaa !30
  %i.n = sext i32 %i.c to i64
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [16 x i8], ptr %i.m, i64 %i.o
  %sext = shl nuw i64 %i.i, 32
  %i.q = ashr exact i64 %sext, 28
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !30
  store i64 %i.t, ptr %1, align 8, !tbaa !30
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.v = load i8, ptr %i.u, align 8, !tbaa !25
  br label %bb.l

bb.f:                                             ; preds = %bb.c
  %i.w = load i8, ptr %i.d, align 8, !tbaa !25
  %i.x = and i8 %i.w, 15
  %i.y = icmp eq i8 %i.x, 4
  br i1 %i.y, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %2, align 8, !tbaa !30     ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 11
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !34  ; 2 uses
  %i.ac = icmp sgt i8 %i.ab, -1
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = zext nneg i8 %i.ab to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !30
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !35
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi i64 [ %i.ad, %bb.h ], [ %i.ag, %bb.i ]
  %i.aj = phi ptr [ %i.ae, %bb.h ], [ %i.ai, %bb.i ]
  %i.ak = icmp eq i64 %.0, 1
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = load i8, ptr %i.aj, align 1, !tbaa !30
  %i.am = icmp eq i8 %i.al, 110
  br i1 %i.am, label %.critedge, label %bb.l

.critedge:                                        ; preds = %bb.k
  %i.an = sext i32 %i.c to i64
  store i64 %i.an, ptr %1, align 8, !tbaa !30
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %bb.f, %bb.j, %bb.k, %.critedge, %bb.e
  %.sink = phi i8 [ 3, %.critedge ], [ %i.v, %bb.e ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.f ], [ 0, %bb.d ]
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %.sink, ptr %i.ao, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

declare hidden i32 @luaV_tointegerns(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @luaT_getvarargs(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.TValue, align 8             ; 4 uses
  %i.a = icmp slt i32 %4, 0
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !30
  %i.c = zext nneg i32 %4 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30   ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.i = load i32, ptr %i.h, align 4, !tbaa !30
  br label %getnumargs.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.j = tail call ptr @luaS_new(ptr noundef %0, ptr noundef nonnull @.str.38) #6
  %i.k = call zeroext i8 @luaH_getshortstr(ptr noundef nonnull %i.f, ptr noundef %i.j, ptr noundef nonnull %5) #6
  %i.l = icmp ne i8 %i.k, 3
  %i.m = load i64, ptr %5, align 8                ; 2 uses
  %i.n = icmp ugt i64 %i.m, 1073741823
  %or.cond.i = select i1 %i.l, i1 true, i1 %i.n
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void (ptr, ptr, ...) @luaG_runerror(ptr noundef %0, ptr noundef nonnull @.str.39) #7
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = trunc nuw nsw i64 %i.m to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %getnumargs.exit

getnumargs.exit:                                  ; preds = %.thread, %bb.e
  %i.p = phi i1 [ true, %.thread ], [ false, %bb.e ]
  %i.q = phi ptr [ null, %.thread ], [ %i.f, %bb.e ]
  %.0.i = phi i32 [ %i.i, %.thread ], [ %i.o, %bb.e ] ; 6 uses
  %i.r = icmp slt i32 %3, 0
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %getnumargs.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 4
  %i.aa = sext i32 %.0.i to i64                   ; 2 uses
  %.not = icmp sgt i64 %i.z, %i.aa
  br i1 %.not, label %bb.h, label %bb.g, !prof !39

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !30
  %i.ad = ptrtoint ptr %2 to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = call i32 @luaD_growstack(ptr noundef nonnull %0, i32 noundef %.0.i, i32 noundef 1) #6 ; 0 uses
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !30
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.af
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.0 = phi ptr [ %i.ai, %bb.g ], [ %2, %bb.f ]   ; 2 uses
  %i.aj = getelementptr inbounds [16 x i8], ptr %.0, i64 %i.aa
  store ptr %i.aj, ptr %i.u, align 8, !tbaa !30
  br label %bb.j

bb.i:                                             ; preds = %getnumargs.exit
  %i.ak = call i32 @llvm.smin.i32(i32 %.0.i, i32 %3)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.052 = phi i32 [ %.0.i, %bb.h ], [ %i.ak, %bb.i ] ; 8 uses
  %.051 = phi i32 [ %.0.i, %bb.h ], [ %3, %bb.i ] ; 4 uses
  %.1 = phi ptr [ %.0, %bb.h ], [ %2, %bb.i ]     ; 13 uses
  %i.al = icmp sgt i32 %.052, 0
  br i1 %i.al, label %.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %.052 to i64
  br label %.lr.ph

.preheader:                                       ; preds = %bb.j
  br i1 %i.p, label %.lr.ph62, label %.lr.ph.preheader

.lr.ph62:                                         ; preds = %.preheader
  %i.am = sext i32 %.0.i to i64
  %i.an = sub nsw i64 0, %i.am                    ; 3 uses
  %wide.trip.count72 = zext nneg i32 %.052 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count72, 1
  %i.ao = icmp eq i32 %.052, 1
  br i1 %i.ao, label %.epil.preheader, label %.lr.ph62.new

.lr.ph62.new:                                     ; preds = %.lr.ph62
  %unroll_iter = and i64 %wide.trip.count72, 2147483646
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph62.new
  %indvars.iv69 = phi i64 [ 0, %.lr.ph62.new ], [ %indvars.iv.next70.1, %bb.k ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph62.new ], [ %niter.next.1, %bb.k ]
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %.1, i64 %indvars.iv69 ; 2 uses
  %i.aq = load ptr, ptr %1, align 8, !tbaa !30
  %i.ar = getelementptr inbounds [16 x i8], ptr %i.aq, i64 %i.an
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %indvars.iv69 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !30
  store i64 %i.at, ptr %i.ap, align 8, !tbaa !30
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = load i8, ptr %i.au, align 8, !tbaa !25
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i8 %i.av, ptr %i.aw, align 8, !tbaa !25
  %indvars.iv.next70 = or disjoint i64 %indvars.iv69, 1 ; 2 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %.1, i64 %indvars.iv.next70 ; 2 uses
  %i.ay = load ptr, ptr %1, align 8, !tbaa !30
  %i.az = getelementptr inbounds [16 x i8], ptr %i.ay, i64 %i.an
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %indvars.iv.next70 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !30
  store i64 %i.bb, ptr %i.ax, align 8, !tbaa !30
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !25
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i8 %i.bd, ptr %i.be, align 8, !tbaa !25
  %indvars.iv.next70.1 = add nuw nsw i64 %indvars.iv69, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.k

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %.1, i64 %indvars.iv ; 2 uses
  %i.bg = call zeroext i8 @luaH_getint(ptr noundef nonnull %i.q, i64 noundef %indvars.iv.next, ptr noundef %i.bf) #6
  %i.bh = and i8 %i.bg, 15
  %i.bi = icmp eq i8 %i.bh, 0
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i8 0, ptr %i.bj, align 8, !tbaa !30
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph62
  %indvars.iv69.epil.init = phi i64 [ 0, %.lr.ph62 ], [ %indvars.iv.next70.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod84 = trunc i32 %.052 to i1
  call void @llvm.assume(i1 %lcmp.mod84)
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %.1, i64 %indvars.iv69.epil.init ; 2 uses
  %i.bl = load ptr, ptr %1, align 8, !tbaa !30
  %i.bm = getelementptr inbounds [16 x i8], ptr %i.bl, i64 %i.an
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %indvars.iv69.epil.init ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !30
  store i64 %i.bo, ptr %i.bk, align 8, !tbaa !30
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !25
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i8 %i.bq, ptr %i.br, align 8, !tbaa !25
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.j
  %.2 = phi i32 [ %.052, %.epil.preheader ], [ 0, %bb.j ], [ %.052, %.loopexit.loopexit.unr-lcssa ], [ %.052, %bb.m ] ; 4 uses
  %i.bs = icmp slt i32 %.2, %.051
  br i1 %i.bs, label %.lr.ph65.preheader, label %._crit_edge

.lr.ph65.preheader:                               ; preds = %.loopexit
  %i.bt = zext nneg i32 %.2 to i64                ; 2 uses
  %i.bu = sub i32 %.051, %.2
  %xtraiter85 = and i32 %i.bu, 7                  ; 2 uses
  %lcmp.mod86.not = icmp eq i32 %xtraiter85, 0
  br i1 %lcmp.mod86.not, label %.lr.ph65.prol.loopexit, label %.lr.ph65.prol

.lr.ph65.prol:                                    ; preds = %.lr.ph65.preheader, %.lr.ph65.prol
  %indvars.iv74.prol = phi i64 [ %indvars.iv.next75.prol, %.lr.ph65.prol ], [ %i.bt, %.lr.ph65.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph65.prol ], [ 0, %.lr.ph65.preheader ]
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %.1, i64 %indvars.iv74.prol
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i8 0, ptr %i.bw, align 8, !tbaa !30
  %indvars.iv.next75.prol = add nuw nsw i64 %indvars.iv74.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter85
  br i1 %prol.iter.cmp.not, label %.lr.ph65.prol.loopexit, label %.lr.ph65.prol, !llvm.loop !66

.lr.ph65.prol.loopexit:                           ; preds = %.lr.ph65.prol, %.lr.ph65.preheader
  %indvars.iv74.unr = phi i64 [ %i.bt, %.lr.ph65.preheader ], [ %indvars.iv.next75.prol, %.lr.ph65.prol ]
  %i.bx = sub i32 %.2, %.051
  %i.by = icmp ugt i32 %i.bx, -8
  br i1 %i.by, label %._crit_edge, label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.prol.loopexit, %.lr.ph65
  %indvars.iv74 = phi i64 [ %indvars.iv.next75.7, %.lr.ph65 ], [ %indvars.iv74.unr, %.lr.ph65.prol.loopexit ] ; 9 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %.1, i64 %indvars.iv74
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i8 0, ptr %i.ca, align 8, !tbaa !30
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %.1, i64 %indvars.iv74
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  store i8 0, ptr %i.cc, align 8, !tbaa !30
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %.1, i64 %indvars.iv74
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  store i8 0, ptr %i.ce, align 8, !tbaa !30
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %.1, i64 %indvars.iv74
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  store i8 0, ptr %i.cg, align 8, !tbaa !30
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %.1, i64 %indvars.iv74
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 72
  store i8 0, ptr %i.ci, align 8, !tbaa !30
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %.1, i64 %indvars.iv74
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 88
  store i8 0, ptr %i.ck, align 8, !tbaa !30
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %.1, i64 %indvars.iv74
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 104
  store i8 0, ptr %i.cm, align 8, !tbaa !30
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %.1, i64 %indvars.iv74
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 120
  store i8 0, ptr %i.co, align 8, !tbaa !30
  %indvars.iv.next75.7 = add nuw nsw i64 %indvars.iv74, 8 ; 2 uses
  %i.cp = trunc nuw i64 %indvars.iv.next75.7 to i32
  %i.cq = icmp sgt i32 %.051, %i.cp
  br i1 %i.cq, label %.lr.ph65, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph65.prol.loopexit, %.lr.ph65, %.loopexit
  ret void
}

declare hidden i32 @luaD_growstack(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare hidden zeroext i8 @luaH_getint(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare hidden ptr @luaH_new(ptr noundef) local_unnamed_addr #2

declare hidden void @luaH_resize(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare hidden void @luaH_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @luaH_setint(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @luaC_step(ptr noundef) local_unnamed_addr #2

declare hidden zeroext i8 @luaH_getshortstr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare hidden void @luaG_runerror(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 1, !"long-double-type", !"x86_fp80"}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS8GCObject", !10, i64 0}
!12 = !{!"p1 _ZTS12global_State", !10, i64 0}
!13 = !{!"p1 _ZTS8CallInfo", !10, i64 0}
!14 = !{!"p1 _ZTS5UpVal", !10, i64 0}
!15 = !{!"p1 _ZTS9lua_State", !10, i64 0}
!16 = !{!"p1 _ZTS11lua_longjmp", !10, i64 0}
!17 = !{!"CallInfo", !6, i64 0, !6, i64 8, !13, i64 16, !13, i64 24, !6, i64 32, !6, i64 56, !7, i64 60}
!18 = !{!"long", !6, i64 0}
!19 = !{!"", !7, i64 0, !7, i64 4}
!20 = !{!"lua_State", !11, i64 0, !6, i64 8, !6, i64 9, !6, i64 10, !6, i64 11, !6, i64 16, !12, i64 24, !13, i64 32, !6, i64 40, !6, i64 48, !14, i64 56, !6, i64 64, !11, i64 72, !15, i64 80, !16, i64 88, !17, i64 96, !10, i64 160, !18, i64 168, !7, i64 176, !7, i64 180, !7, i64 184, !7, i64 188, !7, i64 192, !7, i64 196, !19, i64 200}
!21 = !{!20, !12, i64 24}
!22 = !{!"p1 _ZTS7TString", !10, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"TValue", !6, i64 0, !6, i64 8}
!25 = !{!24, !6, i64 8}
!26 = !{!"p1 _ZTS5Value", !10, i64 0}
!27 = !{!"p1 _ZTS4Node", !10, i64 0}
!28 = !{!"p1 _ZTS5Table", !10, i64 0}
!29 = !{!"Table", !11, i64 0, !6, i64 8, !6, i64 9, !6, i64 10, !6, i64 11, !7, i64 12, !26, i64 16, !27, i64 24, !28, i64 32, !11, i64 40}
!30 = !{!6, !6, i64 0}
!31 = !{!28, !28, i64 0}
!32 = !{!"p1 omnipotent char", !10, i64 0}
!33 = !{!"TString", !11, i64 0, !6, i64 8, !6, i64 9, !6, i64 10, !6, i64 11, !7, i64 12, !6, i64 16, !32, i64 24, !10, i64 32, !10, i64 40}
!34 = !{!33, !6, i64 11}
!35 = !{!33, !32, i64 24}
!36 = !{!20, !13, i64 32}
!37 = !{!17, !7, i64 60}
!38 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!39 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!40 = !{!29, !6, i64 10}
!41 = !{!29, !28, i64 32}
!42 = !{!"short", !6, i64 0}
!43 = !{!"Udata", !11, i64 0, !6, i64 8, !6, i64 9, !42, i64 10, !18, i64 16, !28, i64 24, !11, i64 32, !6, i64 48}
!44 = !{!43, !28, i64 24}
!45 = !{!32, !32, i64 0}
!46 = !{!"p1 _ZTS6TValue", !10, i64 0}
!47 = !{!"p1 int", !10, i64 0}
!48 = !{!"any p2 pointer", !10, i64 0}
!49 = !{!"p2 _ZTS5Proto", !48, i64 0}
!50 = !{!"p1 _ZTS9Upvaldesc", !10, i64 0}
!51 = !{!"p1 _ZTS11AbsLineInfo", !10, i64 0}
!52 = !{!"p1 _ZTS6LocVar", !10, i64 0}
!53 = !{!"Proto", !11, i64 0, !6, i64 8, !6, i64 9, !6, i64 10, !6, i64 11, !6, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !46, i64 56, !47, i64 64, !49, i64 72, !50, i64 80, !32, i64 88, !51, i64 96, !52, i64 104, !22, i64 112, !11, i64 120}
!54 = !{!53, !6, i64 10}
!55 = !{!53, !6, i64 11}
!56 = !{!33, !6, i64 8}
!57 = !{!"p2 _ZTS7TString", !48, i64 0}
!58 = !{!"stringtable", !57, i64 0, !7, i64 8, !7, i64 12}
!59 = !{!"p2 _ZTS8GCObject", !48, i64 0}
!60 = !{!"LX", !6, i64 0, !20, i64 8}
!61 = !{!"global_State", !10, i64 0, !10, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !58, i64 48, !24, i64 64, !24, i64 80, !7, i64 96, !6, i64 100, !6, i64 106, !6, i64 107, !6, i64 108, !6, i64 109, !6, i64 110, !6, i64 111, !11, i64 112, !59, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !15, i64 248, !10, i64 256, !22, i64 264, !6, i64 272, !6, i64 472, !6, i64 544, !10, i64 1392, !10, i64 1400, !60, i64 1408}
!62 = !{!61, !18, i64 24}
!63 = !{!53, !6, i64 12}
!64 = !{!"long long", !6, i64 0}
!65 = !{!64, !64, i64 0}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
