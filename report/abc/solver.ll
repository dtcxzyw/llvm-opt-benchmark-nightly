inline.NumInlined: 451
inline.NumDeleted: 108
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0
@str = private unnamed_addr constant [2 x i8] c"}\00", align 1

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @solver_clause_create(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %2, 3
  %i.b = getelementptr i8, ptr %1, i64 4          ; 5 uses
  %.val38 = load i32, ptr %i.b, align 4, !tbaa !8
  %i.c = add i32 %i.a, %.val38                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12   ; 5 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  %i.g = add i32 %i.f, %i.c                       ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !28   ; 2 uses
  %.not.i.i = icmp ult i32 %i.i, %i.g
  br i1 %.not.i.i, label %.lr.ph.i.i, label %cdb_append.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %i.j = phi i32 [ %i.p, %.lr.ph.i.i ], [ %i.i, %bb.a ] ; 3 uses
  %i.k = lshr i32 %i.j, 1
  %i.l = lshr i32 %i.j, 3
  %i.m = add nuw i32 %i.k, %i.l
  %i.n = and i32 %i.m, -2
  %i.o = add i32 %i.j, 2
  %i.p = add i32 %i.o, %i.n                       ; 4 uses
  %i.q = icmp ult i32 %i.p, %i.g
  br i1 %i.q, label %.lr.ph.i.i, label %bb.b, !llvm.loop !29

bb.b:                                             ; preds = %.lr.ph.i.i
  store i32 %i.p, ptr %i.h, align 4, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31
  %i.t = zext i32 %i.p to i64
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = tail call ptr @realloc(ptr noundef %i.s, i64 noundef %i.u) #18
  store ptr %i.v, ptr %i.r, align 8, !tbaa !31
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !26 ; 2 uses
  %.pre6.i = add i32 %.pre.i, %i.c
  br label %cdb_append.exit

cdb_append.exit:                                  ; preds = %bb.a, %bb.b
  %.pre-phi.i = phi i32 [ %i.g, %bb.a ], [ %.pre6.i, %bb.b ]
  %i.w = phi i32 [ %i.f, %bb.a ], [ %.pre.i, %bb.b ] ; 5 uses
  store i32 %.pre-phi.i, ptr %i.e, align 8, !tbaa !26
  %.not.i.i42 = icmp eq i32 %i.w, -1
  br i1 %.not.i.i42, label %clause_fetch.exit, label %bb.c

bb.c:                                             ; preds = %cdb_append.exit
  %.val39 = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %.val39, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !31
  %i.z = zext i32 %i.w to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.z
  br label %clause_fetch.exit

clause_fetch.exit:                                ; preds = %cdb_append.exit, %bb.c
  %i.ab = phi ptr [ %i.aa, %bb.c ], [ null, %cdb_append.exit ] ; 6 uses
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = and i32 %2, 1                           ; 2 uses
  %i.ae = and i32 %i.ac, -16
  %i.af = shl nuw nsw i32 %i.ad, 3
  %i.ag = or disjoint i32 %i.ae, %i.af
  %i.ah = or disjoint i32 %i.ag, %i.ad
  store i32 %i.ah, ptr %i.ab, align 4
  %.val37 = load i32, ptr %i.b, align 4, !tbaa !8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  store i32 %.val37, ptr %i.ai, align 4, !tbaa !32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ak = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %.val41 = load ptr, ptr %i.ak, align 8, !tbaa !34
  %i.al = zext i32 %.val37 to i64
  %i.am = shl nuw nsw i64 %i.al, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aj, ptr align 4 %.val41, i64 %i.am, i1 false)
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.o, label %bb.d

bb.d:                                             ; preds = %clause_fetch.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !35 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 4 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !8  ; 6 uses
  %i.ar = load i32, ptr %i.ao, align 8, !tbaa !36
  %i.as = icmp eq i32 %i.aq, %i.ar
  br i1 %i.as, label %bb.e, label %vec_uint_push_back.exit

bb.e:                                             ; preds = %bb.d
  %i.at = icmp ult i32 %i.aq, 16
  br i1 %i.at, label %vec_uint_reserve.exit.i, label %bb.f

vec_uint_reserve.exit.i:                          ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !34
  %i.aw = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef %i.av, i64 noundef 64) #18
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !34
  br label %vec_uint_reserve.exit10.sink.split.i

bb.f:                                             ; preds = %bb.e
  %.not.i9.i = icmp sgt i32 %i.aq, 0
  br i1 %.not.i9.i, label %bb.g, label %vec_uint_push_back.exit

bb.g:                                             ; preds = %bb.f
  %i.ax = shl nuw i32 %i.aq, 1                    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !34
  %i.ba = zext i32 %i.ax to i64
  %i.bb = shl nuw nsw i64 %i.ba, 2
  %i.bc = tail call ptr @realloc(ptr noundef %i.az, i64 noundef %i.bb) #18
  store ptr %i.bc, ptr %i.ay, align 8, !tbaa !34
  br label %vec_uint_reserve.exit10.sink.split.i

vec_uint_reserve.exit10.sink.split.i:             ; preds = %bb.g, %vec_uint_reserve.exit.i
  %.sink.i = phi i32 [ %i.ax, %bb.g ], [ 16, %vec_uint_reserve.exit.i ]
  store i32 %.sink.i, ptr %i.ao, align 8, !tbaa !36
  %.pre = load i32, ptr %i.ap, align 4, !tbaa !8
  br label %vec_uint_push_back.exit

vec_uint_push_back.exit:                          ; preds = %bb.d, %bb.f, %vec_uint_reserve.exit10.sink.split.i
  %i.bd = phi i32 [ %i.aq, %bb.d ], [ %i.aq, %bb.f ], [ %.pre, %vec_uint_reserve.exit10.sink.split.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !34
  %i.bg = zext i32 %i.bd to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bg
  store i32 %i.w, ptr %i.bh, align 4, !tbaa !37
  %i.bi = load i32, ptr %i.ap, align 4, !tbaa !8
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.ap, align 4, !tbaa !8
  %.val40 = load ptr, ptr %i.ak, align 8, !tbaa !34 ; 3 uses
  %.val35 = load i32, ptr %i.b, align 4, !tbaa !8 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 5 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !38
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !38
  %.not20.i = icmp eq i32 %.val35, 0
  br i1 %.not20.i, label %clause_clac_lbd.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %vec_uint_push_back.exit
  %i.bn = getelementptr i8, ptr %0, i64 88
  %.val16.i = load ptr, ptr %i.bn, align 8, !tbaa !39
  %i.bo = getelementptr i8, ptr %.val16.i, i64 8
  %.val16.val.i = load ptr, ptr %i.bo, align 8, !tbaa !34 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !40
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  %.val.i = load ptr, ptr %i.br, align 8, !tbaa !34 ; 3 uses
  %wide.trip.count.i = zext i32 %.val35 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.bs = icmp eq i32 %.val35, 1
  br i1 %i.bs, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.l ] ; 3 uses
  %.019.i = phi i32 [ 0, %.lr.ph.i.new ], [ %.1.i.1, %bb.l ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.l ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.val40, i64 %indvars.iv.i
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !37
  %i.bv = lshr i32 %i.bu, 1
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.val16.val.i, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !37
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.bz ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !37
  %i.cc = load i32, ptr %i.bk, align 4, !tbaa !38 ; 2 uses
  %.not.i = icmp eq i32 %i.cb, %i.cc
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !37
  %i.cd = add i32 %.019.i, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1.i = phi i32 [ %i.cd, %bb.i ], [ %.019.i, %bb.h ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.val40, i64 %indvars.iv.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !37
  %i.ch = lshr i32 %i.cg, 1
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.val16.val.i, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !37
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.cl ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !37
  %i.co = load i32, ptr %i.bk, align 4, !tbaa !38 ; 2 uses
  %.not.i.1 = icmp eq i32 %i.cn, %i.co
  br i1 %.not.i.1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !37
  %i.cp = add i32 %.1.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1.i.1 = phi i32 [ %i.cp, %bb.k ], [ %.1.i, %bb.j ] ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %clause_clac_lbd.exit.loopexit.unr-lcssa, label %bb.h, !llvm.loop !41

clause_clac_lbd.exit.loopexit.unr-lcssa:          ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %clause_clac_lbd.exit.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %clause_clac_lbd.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %clause_clac_lbd.exit.loopexit.unr-lcssa ]
  %.019.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %.1.i.1, %clause_clac_lbd.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod60 = trunc i32 %.val35 to i1
  tail call void @llvm.assume(i1 %lcmp.mod60)
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.val40, i64 %indvars.iv.i.epil.init
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !37
  %i.cs = lshr i32 %i.cr, 1
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.val16.val.i, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !37
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.cw ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !37
  %i.cz = load i32, ptr %i.bk, align 4, !tbaa !38 ; 2 uses
  %.not.i.epil = icmp eq i32 %i.cy, %i.cz
  br i1 %.not.i.epil, label %clause_clac_lbd.exit.loopexit, label %bb.m

bb.m:                                             ; preds = %.epil.preheader
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !37
  %i.da = add i32 %.019.i.epil.init, 1
  br label %clause_clac_lbd.exit.loopexit

clause_clac_lbd.exit.loopexit:                    ; preds = %.epil.preheader, %bb.m, %clause_clac_lbd.exit.loopexit.unr-lcssa
  %.1.i.lcssa = phi i32 [ %.1.i.1, %clause_clac_lbd.exit.loopexit.unr-lcssa ], [ %i.da, %bb.m ], [ %.019.i.epil.init, %.epil.preheader ]
  %i.db = shl i32 %.1.i.lcssa, 4
  br label %clause_clac_lbd.exit

clause_clac_lbd.exit:                             ; preds = %clause_clac_lbd.exit.loopexit, %vec_uint_push_back.exit
  %.0.lcssa.i = phi i32 [ 0, %vec_uint_push_back.exit ], [ %i.db, %clause_clac_lbd.exit.loopexit ]
  %i.dc = load i32, ptr %i.ab, align 4
  %i.dd = and i32 %i.dc, 15
  %i.de = or disjoint i32 %i.dd, %.0.lcssa.i
  store i32 %i.de, ptr %i.ab, align 4
  %i.df = load i32, ptr %i.ai, align 4, !tbaa !32
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.dg ; 3 uses
  store i32 0, ptr %i.dh, align 4, !tbaa !42
  %.val34 = load i32, ptr %i.b, align 4, !tbaa !8
  %i.di = zext i32 %.val34 to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !43
  %i.dl = add nsw i64 %i.dk, %i.di
  store i64 %i.dl, ptr %i.dj, align 8, !tbaa !43
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !44
  %i.do = load i32, ptr %i.dh, align 4, !tbaa !42
  %i.dp = add i32 %i.do, %i.dn                    ; 2 uses
  store i32 %i.dp, ptr %i.dh, align 4, !tbaa !42
  %.not.i43 = icmp sgt i32 %i.dp, -1
  br i1 %.not.i43, label %clause_act_bump.exit, label %bb.n

bb.n:                                             ; preds = %clause_clac_lbd.exit
  %i.dq = load ptr, ptr %i.an, align 8, !tbaa !35 ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dq, i64 4
  %.val12.i.i = load i32, ptr %i.dr, align 4, !tbaa !8
  %.not.i.i44 = icmp eq i32 %.val12.i.i, 0
  br i1 %.not.i.i44, label %clause_act_rescale.exit.i, label %clause_fetch.exit.i.i

clause_fetch.exit.i.i:                            ; preds = %bb.n, %clause_fetch.exit.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %clause_fetch.exit.i.i ], [ 0, %bb.n ] ; 2 uses
  %i.ds = phi ptr [ %i.eh, %clause_fetch.exit.i.i ], [ %i.dq, %bb.n ]
  %i.dt = getelementptr i8, ptr %i.ds, i64 8
  %.val11.i.i = load ptr, ptr %i.dt, align 8, !tbaa !34
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.val11.i.i, i64 %indvars.iv.i.i
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !37 ; 2 uses
  %.val10.i.i = load ptr, ptr %i.d, align 8, !tbaa !12
  %.not.i.i.i.i = icmp ne i32 %i.dv, -1
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dw = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !31
  %i.dy = zext i32 %i.dv to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.dy ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !32
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.ed ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !42
  %i.eg = lshr i32 %i.ef, 10
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !42
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.eh = load ptr, ptr %i.an, align 8, !tbaa !35 ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 4
  %.val.i.i = load i32, ptr %i.ei, align 4, !tbaa !8
  %i.ej = zext i32 %.val.i.i to i64
  %i.ek = icmp samesign ult i64 %indvars.iv.next.i.i, %i.ej
  br i1 %i.ek, label %clause_fetch.exit.i.i, label %clause_act_rescale.exit.i, !llvm.loop !45

clause_act_rescale.exit.i:                        ; preds = %clause_fetch.exit.i.i, %bb.n
  %i.el = load i32, ptr %i.dm, align 8, !tbaa !44
  %i.em = lshr i32 %i.el, 10
  %i.en = tail call range(i32 2048, 4194304) i32 @llvm.umax.i32(i32 range(i32 0, 4194304) %i.em, i32 2048)
  store i32 %i.en, ptr %i.dm, align 8, !tbaa !44
  br label %clause_act_bump.exit

bb.o:                                             ; preds = %clause_fetch.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !46 ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4 ; 4 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !8  ; 6 uses
  %i.es = load i32, ptr %i.ep, align 8, !tbaa !36
  %i.et = icmp eq i32 %i.er, %i.es
  br i1 %i.et, label %bb.p, label %vec_uint_push_back.exit49

bb.p:                                             ; preds = %bb.o
  %i.eu = icmp ult i32 %i.er, 16
  br i1 %i.eu, label %vec_uint_reserve.exit.i48, label %bb.q

vec_uint_reserve.exit.i48:                        ; preds = %bb.p
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !34
  %i.ex = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef %i.ew, i64 noundef 64) #18
  store ptr %i.ex, ptr %i.ev, align 8, !tbaa !34
  br label %vec_uint_reserve.exit10.sink.split.i46

bb.q:                                             ; preds = %bb.p
  %.not.i9.i45 = icmp sgt i32 %i.er, 0
  br i1 %.not.i9.i45, label %bb.r, label %vec_uint_push_back.exit49

bb.r:                                             ; preds = %bb.q
  %i.ey = shl nuw i32 %i.er, 1                    ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !34
  %i.fb = zext i32 %i.ey to i64
  %i.fc = shl nuw nsw i64 %i.fb, 2
  %i.fd = tail call ptr @realloc(ptr noundef %i.fa, i64 noundef %i.fc) #18
  store ptr %i.fd, ptr %i.ez, align 8, !tbaa !34
  br label %vec_uint_reserve.exit10.sink.split.i46

vec_uint_reserve.exit10.sink.split.i46:           ; preds = %bb.r, %vec_uint_reserve.exit.i48
  %.sink.i47 = phi i32 [ %i.ey, %bb.r ], [ 16, %vec_uint_reserve.exit.i48 ]
  store i32 %.sink.i47, ptr %i.ep, align 8, !tbaa !36
  %.pre50 = load i32, ptr %i.eq, align 4, !tbaa !8
  br label %vec_uint_push_back.exit49

vec_uint_push_back.exit49:                        ; preds = %bb.o, %bb.q, %vec_uint_reserve.exit10.sink.split.i46
  %i.fe = phi i32 [ %i.er, %bb.o ], [ %i.er, %bb.q ], [ %.pre50, %vec_uint_reserve.exit10.sink.split.i46 ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !34
  %i.fh = zext i32 %i.fe to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.fh
  store i32 %i.w, ptr %i.fi, align 4, !tbaa !37
  %i.fj = load i32, ptr %i.eq, align 4, !tbaa !8
  %i.fk = add i32 %i.fj, 1
  store i32 %i.fk, ptr %i.eq, align 4, !tbaa !8
  %.val = load i32, ptr %i.b, align 4, !tbaa !8
  %i.fl = zext i32 %.val to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !47
  %i.fo = add nsw i64 %i.fn, %i.fl
  store i64 %i.fo, ptr %i.fm, align 8, !tbaa !47
  br label %clause_act_bump.exit

clause_act_bump.exit:                             ; preds = %clause_act_rescale.exit.i, %clause_clac_lbd.exit, %vec_uint_push_back.exit49
  ret i32 %i.w
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @solver_cancel_until(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 128        ; 2 uses
  %.val30 = load ptr, ptr %i.a, align 8, !tbaa !48 ; 3 uses
  %i.b = getelementptr i8, ptr %.val30, i64 4
  %.val30.val = load i32, ptr %i.b, align 4, !tbaa !8
  %.not = icmp ugt i32 %.val30.val, %1
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %.val = load i32, ptr %i.e, align 4, !tbaa !8   ; 2 uses
  %i.f = zext i32 %1 to i64                       ; 3 uses
  %i.g = getelementptr i8, ptr %.val30, i64 8
  %.val2839 = load ptr, ptr %i.g, align 8, !tbaa !34 ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.val2839, i64 %i.f
  %i.i = load i32, ptr %i.h, align 4, !tbaa !37   ; 2 uses
  %i.j = icmp ugt i32 %.val, %i.i
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
end_hunk_0
begin_hunk_1_@solver_search:bb.a
  %i.du = phi ptr [ %i.ds, %vec_uint_reserve.exit10.sink.split.i.i.i ], [ %i.dr, %solver_block_rst.exit.thread ]
  %i.dv = phi i64 [ %i.dt, %vec_uint_reserve.exit10.sink.split.i.i.i ], [ 0, %solver_block_rst.exit.thread ]
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.dv
  store i32 -1, ptr %i.dw, align 4, !tbaa !37
  %i.dx = load i32, ptr %i.dk, align 4, !tbaa !8
  %i.dy = add i32 %i.dx, 1
  store i32 %i.dy, ptr %i.dk, align 4, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %bb.as, %vec_uint_push_back.exit.i.i
  %.0105.i.i = phi i32 [ %i.dn, %vec_uint_push_back.exit.i.i ], [ %i.oa, %bb.as ]
  %.0104.i.i = phi i32 [ 0, %vec_uint_push_back.exit.i.i ], [ %i.om, %bb.as ] ; 2 uses
  %.0103.i.i = phi i32 [ -1, %vec_uint_push_back.exit.i.i ], [ %i.od, %bb.as ] ; 2 uses
  %.0.i.i = phi i32 [ %i.bg, %vec_uint_push_back.exit.i.i ], [ %i.ol, %bb.as ] ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.0.i.i, -1
  br i1 %.not.i.i.i.i, label %clause_fetch.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val126.i.i = load ptr, ptr %i.m, align 8, !tbaa !12
  %i.dz = getelementptr inbounds nuw i8, ptr %.val126.i.i, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !31
  %i.eb = zext i32 %.0.i.i to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.eb
  br label %clause_fetch.exit.i.i

clause_fetch.exit.i.i:                            ; preds = %bb.k, %bb.j
  %i.ed = phi ptr [ %i.ec, %bb.k ], [ null, %bb.j ] ; 10 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 7 uses
  %.not.i.i = icmp eq i32 %.0103.i.i, -1
  br i1 %.not.i.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %clause_fetch.exit.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !32
  %i.eh = icmp eq i32 %i.eg, 2
  br i1 %i.eh, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ei = load i32, ptr %i.ee, align 4, !tbaa !37 ; 3 uses
  %.val138.i.i = load ptr, ptr %i.o, align 8, !tbaa !50
  %i.ej = getelementptr i8, ptr %.val138.i.i, i64 8
  %.val138.val.i.i = load ptr, ptr %i.ej, align 8, !tbaa !51
  %i.ek = trunc i32 %i.ei to i8
  %i.el = and i8 %i.ek, 1
  %i.em = lshr i32 %i.ei, 1
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %.val138.val.i.i, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !42
  %i.eq = xor i8 %i.ep, %i.el
  %i.er = icmp eq i8 %i.eq, 1
  br i1 %i.er, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.es = getelementptr inbounds nuw i8, ptr %i.ed, i64 12 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !37
  store i32 %i.et, ptr %i.ee, align 4, !tbaa !37
  store i32 %i.ei, ptr %i.es, align 4, !tbaa !37
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %clause_fetch.exit.i.i
  %i.eu = load i32, ptr %i.ed, align 4            ; 3 uses
  %i.ev = and i32 %i.eu, 1
  %.not111.i.i = icmp eq i32 %i.ev, 0
  br i1 %.not111.i.i, label %clause_act_bump.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ew = load i32, ptr %i.p, align 8, !tbaa !44
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !32
  %i.ez = zext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.ez ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !42
  %i.fc = add i32 %i.fb, %i.ew                    ; 2 uses
  store i32 %i.fc, ptr %i.fa, align 4, !tbaa !42
  %.not.i.i.i = icmp sgt i32 %i.fc, -1
  br i1 %.not.i.i.i, label %clause_act_bump.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fd = load ptr, ptr %i.q, align 8, !tbaa !35  ; 2 uses
  %i.fe = getelementptr i8, ptr %i.fd, i64 4
  %.val12.i.i.i.i = load i32, ptr %i.fe, align 4, !tbaa !8
  %.not.i.i148.i.i = icmp eq i32 %.val12.i.i.i.i, 0
  br i1 %.not.i.i148.i.i, label %clause_act_rescale.exit.i.i.i, label %clause_fetch.exit.i.i.i.i

clause_fetch.exit.i.i.i.i:                        ; preds = %bb.q, %clause_fetch.exit.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %clause_fetch.exit.i.i.i.i ], [ 0, %bb.q ] ; 2 uses
  %i.ff = phi ptr [ %i.fu, %clause_fetch.exit.i.i.i.i ], [ %i.fd, %bb.q ]
  %i.fg = getelementptr i8, ptr %i.ff, i64 8
  %.val11.i.i.i.i = load ptr, ptr %i.fg, align 8, !tbaa !34
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.val11.i.i.i.i, i64 %indvars.iv.i.i.i.i
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !37 ; 2 uses
  %.val10.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !12
  %.not.i.i.i.i.i.i = icmp ne i32 %i.fi, -1
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.fj = getelementptr inbounds nuw i8, ptr %.val10.i.i.i.i, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !31
  %i.fl = zext i32 %i.fi to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.fl ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !32
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.fq ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !42
  %i.ft = lshr i32 %i.fs, 10
  store i32 %i.ft, ptr %i.fr, align 4, !tbaa !42
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.fu = load ptr, ptr %i.q, align 8, !tbaa !35  ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fu, i64 4
  %.val.i.i.i.i = load i32, ptr %i.fv, align 4, !tbaa !8
  %i.fw = zext i32 %.val.i.i.i.i to i64
  %i.fx = icmp samesign ult i64 %indvars.iv.next.i.i.i.i, %i.fw
  br i1 %i.fx, label %clause_fetch.exit.i.i.i.i, label %clause_act_rescale.exit.i.i.i, !llvm.loop !45

clause_act_rescale.exit.i.i.i:                    ; preds = %clause_fetch.exit.i.i.i.i, %bb.q
  %i.fy = load i32, ptr %i.p, align 8, !tbaa !44
  %i.fz = lshr i32 %i.fy, 10
  %i.ga = call range(i32 2048, 4194304) i32 @llvm.umax.i32(i32 range(i32 0, 4194304) %i.fz, i32 2048)
  store i32 %i.ga, ptr %i.p, align 8, !tbaa !44
  %.pre292.i.i = load i32, ptr %i.ed, align 4
  br label %clause_act_bump.exit.i.i

clause_act_bump.exit.i.i:                         ; preds = %clause_act_rescale.exit.i.i.i, %bb.p, %bb.o
  %i.gb = phi i32 [ %.pre292.i.i, %clause_act_rescale.exit.i.i.i ], [ %i.eu, %bb.p ], [ %i.eu, %bb.o ] ; 2 uses
  %.not112.i.i = trunc i32 %i.gb to i1
  %i.gc = icmp ugt i32 %i.gb, 47
  %or.cond.i.i = and i1 %i.gc, %.not112.i.i
  br i1 %or.cond.i.i, label %bb.r, label %bb.z

bb.r:                                             ; preds = %clause_act_bump.exit.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !32 ; 4 uses
  %i.gf = load i32, ptr %i.r, align 4, !tbaa !38
  %i.gg = add i32 %i.gf, 1
  store i32 %i.gg, ptr %i.r, align 4, !tbaa !38
  %.not20.i.i.i = icmp eq i32 %i.ge, 0
  br i1 %.not20.i.i.i, label %clause_clac_lbd.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.r
  %.val16.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !39
  %i.gh = getelementptr i8, ptr %.val16.i.i.i, i64 8
  %.val16.val.i.i.i = load ptr, ptr %i.gh, align 8, !tbaa !34 ; 3 uses
  %i.gi = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.gj = getelementptr i8, ptr %i.gi, i64 8
  %.val.i.i.i = load ptr, ptr %i.gj, align 8, !tbaa !34 ; 3 uses
  %wide.trip.count.i.i.i = zext i32 %i.ge to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.gk = icmp eq i32 %i.ge, 1
  br i1 %i.gk, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 4294967294
  br label %bb.s

bb.s:                                             ; preds = %bb.w, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.w ] ; 3 uses
  %.019.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.new ], [ %.1.i.i.i.1, %bb.w ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.w ]
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv.i.i.i
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !37
  %i.gn = lshr i32 %i.gm, 1
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.val16.val.i.i.i, i64 %i.go
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !37
  %i.gr = zext i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.gr ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !37
  %i.gu = load i32, ptr %i.r, align 4, !tbaa !38  ; 2 uses
  %.not.i149.i.i = icmp eq i32 %i.gt, %i.gu
  br i1 %.not.i149.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 %i.gu, ptr %i.gs, align 4, !tbaa !37
  %i.gv = add i32 %.019.i.i.i, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1.i.i.i = phi i32 [ %i.gv, %bb.t ], [ %.019.i.i.i, %bb.s ] ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv.i.i.i
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !37
  %i.gz = lshr i32 %i.gy, 1
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %.val16.val.i.i.i, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !37
  %i.hd = zext i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.hd ; 2 uses
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !37
  %i.hg = load i32, ptr %i.r, align 4, !tbaa !38  ; 2 uses
  %.not.i149.i.i.1 = icmp eq i32 %i.hf, %i.hg
  br i1 %.not.i149.i.i.1, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 %i.hg, ptr %i.he, align 4, !tbaa !37
  %i.hh = add i32 %.1.i.i.i, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.1.i.i.i.1 = phi i32 [ %i.hh, %bb.v ], [ %.1.i.i.i, %bb.u ] ; 3 uses
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %clause_clac_lbd.exit.i.i.loopexit.unr-lcssa, label %bb.s, !llvm.loop !41

clause_clac_lbd.exit.i.i.loopexit.unr-lcssa:      ; preds = %bb.w
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %clause_clac_lbd.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %clause_clac_lbd.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %clause_clac_lbd.exit.i.i.loopexit.unr-lcssa ]
  %.019.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.i ], [ %.1.i.i.i.1, %clause_clac_lbd.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod509 = trunc i32 %i.ge to i1
  call void @llvm.assume(i1 %lcmp.mod509)
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv.i.i.i.epil.init
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !37
  %i.hk = lshr i32 %i.hj, 1
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.val16.val.i.i.i, i64 %i.hl
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !37
  %i.ho = zext i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %i.ho ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !37
  %i.hr = load i32, ptr %i.r, align 4, !tbaa !38  ; 2 uses
  %.not.i149.i.i.epil = icmp eq i32 %i.hq, %i.hr
  br i1 %.not.i149.i.i.epil, label %clause_clac_lbd.exit.i.i, label %bb.x

bb.x:                                             ; preds = %.epil.preheader
  store i32 %i.hr, ptr %i.hp, align 4, !tbaa !37
  %i.hs = add i32 %.019.i.i.i.epil.init, 1
  br label %clause_clac_lbd.exit.i.i

clause_clac_lbd.exit.i.i:                         ; preds = %clause_clac_lbd.exit.i.i.loopexit.unr-lcssa, %bb.x, %.epil.preheader, %bb.r
  %.0.lcssa.i.i.i = phi i32 [ 0, %bb.r ], [ %.1.i.i.i.1, %clause_clac_lbd.exit.i.i.loopexit.unr-lcssa ], [ %i.hs, %bb.x ], [ %.019.i.i.i.epil.init, %.epil.preheader ] ; 2 uses
  %i.ht = add i32 %.0.lcssa.i.i.i, 1
  %i.hu = load i32, ptr %i.ed, align 4            ; 2 uses
  %i.hv = lshr i32 %i.hu, 4                       ; 2 uses
  %i.hw = icmp ult i32 %i.ht, %i.hv
  br i1 %i.hw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %clause_clac_lbd.exit.i.i
  %i.hx = load i32, ptr %i.u, align 8, !tbaa !114
  %.not113.i.i = icmp ugt i32 %i.hv, %i.hx
  %i.hy = shl i32 %.0.lcssa.i.i.i, 4
  %.v.i.i = select i1 %.not113.i.i, i32 15, i32 7
  %i.hz = and i32 %.v.i.i, %i.hu
  %i.ia = or disjoint i32 %i.hz, %i.hy
  store i32 %i.ia, ptr %i.ed, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %clause_clac_lbd.exit.i.i, %clause_act_bump.exit.i.i
  %i.ib = icmp ne i32 %.0103.i.i, -1              ; 2 uses
  %i.ic = zext i1 %i.ib to i32
  %i.id = getelementptr inbounds nuw i8, ptr %i.ed, i64 4 ; 2 uses
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !32
  %i.if = icmp ugt i32 %i.ie, %i.ic
  br i1 %i.if, label %.lr.ph.preheader.i.i, label %.preheader253.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.z
  %i.ig = zext i1 %i.ib to i64
  br label %.lr.ph.i.i

.preheader253.i.i:                                ; preds = %bb.aq, %bb.z
  %.1.lcssa.i.i = phi i32 [ %.0104.i.i, %bb.z ], [ %.2.i.i, %bb.aq ]
  %i.ih = load ptr, ptr %i.n, align 8, !tbaa !115
  %i.ii = getelementptr i8, ptr %i.ih, i64 8
  %.val136.i.i = load ptr, ptr %i.ii, align 8, !tbaa !51 ; 2 uses
  br label %bb.ar

.lr.ph.i.i:                                       ; preds = %bb.aq, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.ig, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.aq ] ; 2 uses
  %.1265.i.i = phi i32 [ %.0104.i.i, %.lr.ph.preheader.i.i ], [ %.2.i.i, %bb.aq ] ; 4 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv.i.i ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !37
  %i.il = lshr i32 %i.ik, 1                       ; 3 uses
  %i.im = load ptr, ptr %i.n, align 8, !tbaa !115
  %i.in = getelementptr i8, ptr %i.im, i64 8
  %.val137.i.i = load ptr, ptr %i.in, align 8, !tbaa !51
  %i.io = zext nneg i32 %i.il to i64              ; 6 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.val137.i.i, i64 %i.io ; 2 uses
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !42
  %.not117.i.i = icmp eq i8 %i.iq, 0
  br i1 %.not117.i.i, label %bb.aa, label %bb.aq

bb.aa:                                            ; preds = %.lr.ph.i.i
  %.val140.i.i = load ptr, ptr %i.s, align 8, !tbaa !39
  %i.ir = getelementptr i8, ptr %.val140.i.i, i64 8
  %.val140.val.i.i = load ptr, ptr %i.ir, align 8, !tbaa !34
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %.val140.val.i.i, i64 %i.io
  %i.it = load i32, ptr %i.is, align 4, !tbaa !37
  %i.iu = icmp eq i32 %i.it, 0
  br i1 %i.iu, label %bb.aq, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i8 1, ptr %i.ip, align 1, !tbaa !42
  %i.iv = load ptr, ptr %i.v, align 8, !tbaa !116 ; 2 uses
  %i.iw = getelementptr i8, ptr %i.iv, i64 8
  %.val13.i.i.i = load ptr, ptr %i.iw, align 8, !tbaa !66 ; 3 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %.val13.i.i.i, i64 %i.io ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !69 ; 2 uses
  %i.iz = load i64, ptr %i.w, align 8, !tbaa !117 ; 2 uses
  %spec.select.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.iy, i64 %i.iz) ; 2 uses
  %spec.select28.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.iy, i64 %i.iz) ; 2 uses
  %i.ja = lshr i64 %spec.select.i.i.i.i, 48       ; 2 uses
  %i.jb = and i64 %spec.select.i.i.i.i, 281474976710655
  %i.jc = and i64 %spec.select28.i.i.i.i, 281474976710655
  %i.jd = lshr i64 %spec.select28.i.i.i.i, 48
  %i.je = sub nsw i64 %i.ja, %i.jd
  %i.jf = lshr i64 %i.jc, %i.je
  %i.jg = add nuw nsw i64 %i.jf, %i.jb            ; 2 uses
  %.not.i.i150.i.i = icmp samesign ugt i64 %i.jg, 281474976710655
  %i.jh = zext i1 %.not.i.i150.i.i to i64         ; 2 uses
  %.020.i.i.i.i = add nuw nsw i64 %i.ja, %i.jh    ; 2 uses
  %.0.i.i.i.i = lshr i64 %i.jg, %i.jh
  %.not27.i.i.i.i = icmp samesign ult i64 %.020.i.i.i.i, 65536
  %i.ji = shl nuw i64 %.020.i.i.i.i, 48
  %i.jj = add i64 %i.ji, %.0.i.i.i.i
  %.023.i.i.i.i = select i1 %.not27.i.i.i.i, i64 %i.jj, i64 -1 ; 2 uses
  store i64 %.023.i.i.i.i, ptr %i.ix, align 8, !tbaa !69
  %i.jk = load i64, ptr %i.x, align 8, !tbaa !118
  %i.jl = icmp ugt i64 %.023.i.i.i.i, %i.jk
  br i1 %i.jl, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.jm = getelementptr i8, ptr %i.iv, i64 4
  %.val11.i.i152.i.i = load i32, ptr %i.jm, align 4, !tbaa !119 ; 3 uses
  %.not.i14.i.i.i = icmp eq i32 %.val11.i.i152.i.i, 0
  %.pre.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !120
  %.pre16.i.i.i.i = zext i32 %.pre.i.i.i.i to i64 ; 5 uses
  br i1 %.not.i14.i.i.i, label %var_act_rescale.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ac
  %wide.trip.count.i.i.i.i = zext i32 %.val11.i.i152.i.i to i64 ; 3 uses
  %min.iters.check446 = icmp ult i32 %.val11.i.i152.i.i, 4
  br i1 %min.iters.check446, label %scalar.ph445.preheader, label %vector.ph447

vector.ph447:                                     ; preds = %.lr.ph.i.i.i.i
  %n.vec448 = and i64 %wide.trip.count.i.i.i.i, 4294967292 ; 3 uses
  %broadcast.splatinsert449 = insertelement <2 x i64> poison, i64 %.pre16.i.i.i.i, i64 0
  %broadcast.splat450 = shufflevector <2 x i64> %broadcast.splatinsert449, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body451

vector.body451:                                   ; preds = %vector.body451, %vector.ph447
  %index452 = phi i64 [ 0, %vector.ph447 ], [ %index.next455, %vector.body451 ] ; 2 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %.val13.i.i.i, i64 %index452 ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %wide.load453 = load <2 x i64>, ptr %i.jn, align 8, !tbaa !69 ; 2 uses
  %wide.load454 = load <2 x i64>, ptr %i.jo, align 8, !tbaa !69 ; 2 uses
  %i.jp = lshr <2 x i64> %wide.load453, splat (i64 48) ; 2 uses
  %i.jq = lshr <2 x i64> %wide.load454, splat (i64 48) ; 2 uses
  %i.jr = icmp samesign ult <2 x i64> %i.jp, %broadcast.splat450
  %i.js = icmp samesign ult <2 x i64> %i.jq, %broadcast.splat450
  %i.jt = sub nsw <2 x i64> %i.jp, %broadcast.splat450
  %i.ju = sub nsw <2 x i64> %i.jq, %broadcast.splat450
  %i.jv = shl <2 x i64> %i.jt, splat (i64 48)
  %i.jw = shl <2 x i64> %i.ju, splat (i64 48)
  %i.jx = and <2 x i64> %wide.load453, splat (i64 281474976710655)
  %i.jy = and <2 x i64> %wide.load454, splat (i64 281474976710655)
  %i.jz = or disjoint <2 x i64> %i.jv, %i.jx
  %i.ka = or disjoint <2 x i64> %i.jw, %i.jy
  %i.kb = select <2 x i1> %i.jr, <2 x i64> splat (i64 140737488355328), <2 x i64> %i.jz
  %i.kc = select <2 x i1> %i.js, <2 x i64> splat (i64 140737488355328), <2 x i64> %i.ka
  store <2 x i64> %i.kb, ptr %i.jn, align 8, !tbaa !69
  store <2 x i64> %i.kc, ptr %i.jo, align 8, !tbaa !69
  %index.next455 = add nuw i64 %index452, 4       ; 2 uses
  %i.kd = icmp eq i64 %index.next455, %n.vec448
  br i1 %i.kd, label %middle.block456, label %vector.body451, !llvm.loop !121

middle.block456:                                  ; preds = %vector.body451
  %cmp.n457 = icmp eq i64 %n.vec448, %wide.trip.count.i.i.i.i
  br i1 %cmp.n457, label %var_act_rescale.exit.i.i.i, label %scalar.ph445.preheader

scalar.ph445.preheader:                           ; preds = %.lr.ph.i.i.i.i, %middle.block456
  %indvars.iv.i.i153.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %n.vec448, %middle.block456 ]
  br label %scalar.ph445

scalar.ph445:                                     ; preds = %scalar.ph445.preheader, %scalar.ph445
  %indvars.iv.i.i153.i.i = phi i64 [ %indvars.iv.next.i.i154.i.i, %scalar.ph445 ], [ %indvars.iv.i.i153.i.i.ph, %scalar.ph445.preheader ] ; 2 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %.val13.i.i.i, i64 %indvars.iv.i.i153.i.i ; 2 uses
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !69 ; 2 uses
  %i.kg = lshr i64 %i.kf, 48                      ; 2 uses
  %.not.i.i.i.i.i = icmp samesign ult i64 %i.kg, %.pre16.i.i.i.i
  %i.kh = sub nsw i64 %i.kg, %.pre16.i.i.i.i
  %i.ki = shl i64 %i.kh, 48
  %i.kj = and i64 %i.kf, 281474976710655
  %i.kk = or disjoint i64 %i.ki, %i.kj
  %.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 140737488355328, i64 %i.kk
  store i64 %.0.i.i.i.i.i, ptr %i.ke, align 8, !tbaa !69
  %indvars.iv.next.i.i154.i.i = add nuw nsw i64 %indvars.iv.i.i153.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i154.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %var_act_rescale.exit.i.i.i, label %scalar.ph445, !llvm.loop !122

var_act_rescale.exit.i.i.i:                       ; preds = %scalar.ph445, %middle.block456, %bb.ac
  %i.kl = load i64, ptr %i.w, align 8, !tbaa !117 ; 2 uses
  %i.km = lshr i64 %i.kl, 48                      ; 2 uses
  %.not.i12.i.i.i.i = icmp samesign ult i64 %i.km, %.pre16.i.i.i.i
  %i.kn = sub nsw i64 %i.km, %.pre16.i.i.i.i
  %i.ko = shl i64 %i.kn, 48
  %i.kp = and i64 %i.kl, 281474976710655
  %i.kq = or disjoint i64 %i.ko, %i.kp
  %.0.i13.i.i.i.i = select i1 %.not.i12.i.i.i.i, i64 140737488355328, i64 %i.kq
  store i64 %.0.i13.i.i.i.i, ptr %i.w, align 8, !tbaa !117
end_hunk_1
begin_hunk_2_@solver_search:bb.a
  br i1 %i.uw, label %bb.bk, label %vec_uint_push_back.exit79.i.i.i.i

bb.bk:                                            ; preds = %vec_uint_push_back.exit74.i.i.i.i
  %i.ux = icmp ult i32 %i.uu, 16
  br i1 %i.ux, label %vec_uint_reserve.exit.i78.i.i.i.i, label %bb.bl

vec_uint_reserve.exit.i78.i.i.i.i:                ; preds = %bb.bk
  %i.uy = getelementptr inbounds nuw i8, ptr %i.us, i64 8 ; 2 uses
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !34
  %i.va = call dereferenceable_or_null(64) ptr @realloc(ptr noundef %i.uz, i64 noundef 64) #18
  store ptr %i.va, ptr %i.uy, align 8, !tbaa !34
  br label %vec_uint_reserve.exit10.sink.split.i76.i.i.i.i

bb.bl:                                            ; preds = %bb.bk
  %.not.i9.i75.i.i.i.i = icmp sgt i32 %i.uu, 0
  br i1 %.not.i9.i75.i.i.i.i, label %bb.bm, label %vec_uint_push_back.exit79.i.i.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.vb = shl nuw i32 %i.uu, 1                    ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.us, i64 8 ; 2 uses
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !34
  %i.ve = zext i32 %i.vb to i64
  %i.vf = shl nuw nsw i64 %i.ve, 2
  %i.vg = call ptr @realloc(ptr noundef %i.vd, i64 noundef %i.vf) #18
  store ptr %i.vg, ptr %i.vc, align 8, !tbaa !34
  br label %vec_uint_reserve.exit10.sink.split.i76.i.i.i.i

vec_uint_reserve.exit10.sink.split.i76.i.i.i.i:   ; preds = %bb.bm, %vec_uint_reserve.exit.i78.i.i.i.i
  %.sink.i77.i.i.i.i = phi i32 [ %i.vb, %bb.bm ], [ 16, %vec_uint_reserve.exit.i78.i.i.i.i ]
  store i32 %.sink.i77.i.i.i.i, ptr %i.us, align 8, !tbaa !36
  %.pre97.i.i.i.i = load i32, ptr %i.ut, align 4, !tbaa !8
  br label %vec_uint_push_back.exit79.i.i.i.i

vec_uint_push_back.exit79.i.i.i.i:                ; preds = %vec_uint_reserve.exit10.sink.split.i76.i.i.i.i, %bb.bl, %vec_uint_push_back.exit74.i.i.i.i
  %i.vh = phi i32 [ %i.uu, %vec_uint_push_back.exit74.i.i.i.i ], [ %i.uu, %bb.bl ], [ %.pre97.i.i.i.i, %vec_uint_reserve.exit10.sink.split.i76.i.i.i.i ]
  %i.vi = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !34
  %i.vk = zext i32 %i.vh to i64
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %i.vk
  store i32 %i.tg, ptr %i.vl, align 4, !tbaa !37
  %i.vm = load i32, ptr %i.ut, align 4, !tbaa !8
  %i.vn = add i32 %i.vm, 1
  store i32 %i.vn, ptr %i.ut, align 4, !tbaa !8
  %i.vo = load ptr, ptr %i.n, align 8, !tbaa !115
  %i.vp = getelementptr i8, ptr %i.vo, i64 8
  %.val63.i.i.i.i = load ptr, ptr %i.vp, align 8, !tbaa !51
  %i.vq = getelementptr inbounds nuw i8, ptr %.val63.i.i.i.i, i64 %i.tj
  store i8 1, ptr %i.vq, align 1, !tbaa !42
  %.pre98.i.i.i.i = load i32, ptr %i.so, align 4, !tbaa !32
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bf, %bb.be
  %i.vr = load ptr, ptr %i.aa, align 8, !tbaa !128 ; 3 uses
  %i.vs = getelementptr i8, ptr %i.vr, i64 4
  %.val87.i.i.i.i = load i32, ptr %i.vs, align 4, !tbaa !8
  %i.vt = icmp ult i32 %.val59.i.i.i.i, %.val87.i.i.i.i
  br i1 %i.vt, label %.lr.ph89.preheader.i.i.i.i, label %lit_is_removable.exit.i.i.i

.lr.ph89.preheader.i.i.i.i:                       ; preds = %bb.bn
  %i.vu = zext i32 %.val59.i.i.i.i to i64
  br label %.lr.ph89.i.i.i.i

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i, %.lr.ph89.preheader.i.i.i.i
  %indvars.iv91.i.i.i.i = phi i64 [ %i.vu, %.lr.ph89.preheader.i.i.i.i ], [ %indvars.iv.next92.i.i.i.i, %.lr.ph89.i.i.i.i ] ; 2 uses
  %i.vv = phi ptr [ %i.vr, %.lr.ph89.preheader.i.i.i.i ], [ %i.wd, %.lr.ph89.i.i.i.i ]
  %i.vw = getelementptr i8, ptr %i.vv, i64 8
  %.val61.i.i.i.i = load ptr, ptr %i.vw, align 8, !tbaa !34
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %.val61.i.i.i.i, i64 %indvars.iv91.i.i.i.i
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !37
  %i.vz = load ptr, ptr %i.n, align 8, !tbaa !115
  %i.wa = getelementptr i8, ptr %i.vz, i64 8
  %.val62.i.i.i.i = load ptr, ptr %i.wa, align 8, !tbaa !51
  %i.wb = zext i32 %i.vy to i64
  %i.wc = getelementptr inbounds nuw i8, ptr %.val62.i.i.i.i, i64 %i.wb
  store i8 0, ptr %i.wc, align 1, !tbaa !42
  %indvars.iv.next92.i.i.i.i = add nuw nsw i64 %indvars.iv91.i.i.i.i, 1 ; 2 uses
  %i.wd = load ptr, ptr %i.aa, align 8, !tbaa !128 ; 3 uses
  %i.we = getelementptr i8, ptr %i.wd, i64 4
  %.val.i.i177.i.i = load i32, ptr %i.we, align 4, !tbaa !8
  %i.wf = zext i32 %.val.i.i177.i.i to i64
  %i.wg = icmp samesign ult i64 %indvars.iv.next92.i.i.i.i, %i.wf
  br i1 %i.wg, label %.lr.ph89.i.i.i.i, label %lit_is_removable.exit.i.i.i, !llvm.loop !131

bb.bo:                                            ; preds = %vec_uint_push_back.exit79.i.i.i.i, %bb.bd, %.lr.ph.i.i174.i.i
  %i.wh = phi i32 [ %i.td, %.lr.ph.i.i174.i.i ], [ %i.td, %bb.bd ], [ %.pre98.i.i.i.i, %vec_uint_push_back.exit79.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i176.i.i = add nuw nsw i64 %indvars.iv.i.i175.i.i, 1 ; 2 uses
  %i.wi = zext i32 %i.wh to i64
  %.not55.i.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i176.i.i, %i.wi
  br i1 %.not55.i.i.i.i, label %.lr.ph.i.i174.i.i, label %.critedge57.loopexit.loopexit.i.i.i.i, !llvm.loop !132

lit_is_removable.exit.i.i.i:                      ; preds = %.lr.ph89.i.i.i.i, %bb.bn
  %.lcssa86.i.i.i.i = phi ptr [ %i.vr, %bb.bn ], [ %i.wd, %.lr.ph89.i.i.i.i ]
  %i.wj = getelementptr i8, ptr %.lcssa86.i.i.i.i, i64 4
  store i32 %.val59.i.i.i.i, ptr %i.wj, align 4, !tbaa !8
  %.pre98.i.i.i = load i32, ptr %i.qw, align 4, !tbaa !37
  br label %bb.bp

bb.bp:                                            ; preds = %lit_is_removable.exit.i.i.i, %.lr.ph85.i.i.i
  %i.wk = phi i32 [ %.pre98.i.i.i, %lit_is_removable.exit.i.i.i ], [ %i.qx, %.lr.ph85.i.i.i ]
  %i.wl = add i32 %.14282.i.i.i, 1
  %i.wm = zext i32 %.14282.i.i.i to i64
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %.val128.i.i, i64 %i.wm
  store i32 %i.wk, ptr %i.wn, align 4, !tbaa !37
  br label %lit_is_removable.exit.thread.i.i.i

lit_is_removable.exit.thread.i.i.i:               ; preds = %.critedge57.loopexit.i.i.i.i, %bb.bp, %vec_uint_push_back.exit.i.i.i.i
  %.2.i.i.i = phi i32 [ %i.wl, %bb.bp ], [ %.14282.i.i.i, %vec_uint_push_back.exit.i.i.i.i ], [ %.14282.i.i.i, %.critedge57.loopexit.i.i.i.i ] ; 2 uses
  %indvars.iv.next95.i.i.i = add nuw nsw i64 %indvars.iv94.i.i.i, 1 ; 2 uses
  %.val46.i.i.i = load i32, ptr %i.dk, align 4, !tbaa !8
  %i.wo = zext i32 %.val46.i.i.i to i64
  %i.wp = icmp samesign ult i64 %indvars.iv.next95.i.i.i, %i.wo
  br i1 %i.wp, label %.lr.ph85.i.i.i, label %.critedge._crit_edge.i.i.i, !llvm.loop !133

.critedge._crit_edge.i.i.i:                       ; preds = %lit_is_removable.exit.thread.i.i.i, %.critedge.preheader.i.i.i, %.preheader.i.i.i
  %.142.lcssa.i.i.i = phi i32 [ 1, %.critedge.preheader.i.i.i ], [ 1, %.preheader.i.i.i ], [ %.2.i.i.i, %lit_is_removable.exit.thread.i.i.i ] ; 7 uses
  store i32 %.142.lcssa.i.i.i, ptr %i.dk, align 4, !tbaa !8
  %i.wq = load i32, ptr %i.ac, align 8, !tbaa !134
  %.not.i167.i.i = icmp ugt i32 %.142.lcssa.i.i.i, %i.wq
  br i1 %.not.i167.i.i, label %.critedge._crit_edge.i.i.clause_minimize.exit.i_crit_edge.i, label %bb.bq

.critedge._crit_edge.i.i.clause_minimize.exit.i_crit_edge.i: ; preds = %.critedge._crit_edge.i.i.i
  %.val147.i.pre.i = load ptr, ptr %i.dq, align 8, !tbaa !34
  br label %clause_minimize.exit.i.i

bb.bq:                                            ; preds = %.critedge._crit_edge.i.i.i
  %i.wr = load i32, ptr %i.r, align 4, !tbaa !38  ; 2 uses
  %i.ws = add i32 %i.wr, 1
  store i32 %i.ws, ptr %i.r, align 4, !tbaa !38
  %.not20.i.i.i.i = icmp eq i32 %.142.lcssa.i.i.i, 0
  br i1 %.not20.i.i.i.i, label %clause_clac_lbd.exit.thread.thread.i.i.i, label %.lr.ph.i53.i.i.i

clause_clac_lbd.exit.thread.thread.i.i.i:         ; preds = %bb.bq
  %.val61.i58121.i.i.i = load ptr, ptr %i.dq, align 8, !tbaa !34 ; 2 uses
  %i.wt = load i32, ptr %.val61.i58121.i.i.i, align 4, !tbaa !37
  %i.wu = add i32 %i.wr, 2
  store i32 %i.wu, ptr %i.r, align 4, !tbaa !38
  br label %.critedge.i63.i.i.i

.lr.ph.i53.i.i.i:                                 ; preds = %bb.bq
  %.val16.i.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !39
  %i.wv = getelementptr i8, ptr %.val16.i.i.i.i, i64 8
  %.val16.val.i.i.i.i = load ptr, ptr %i.wv, align 8, !tbaa !34 ; 3 uses
  %i.ww = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.wx = getelementptr i8, ptr %i.ww, i64 8
  %.val.i54.i.i.i = load ptr, ptr %i.wx, align 8, !tbaa !34 ; 4 uses
  %wide.trip.count.i.i168.i.i = zext i32 %.142.lcssa.i.i.i to i64 ; 2 uses
  %xtraiter518 = and i64 %wide.trip.count.i.i168.i.i, 1
  %i.wy = icmp eq i32 %.142.lcssa.i.i.i, 1
  br i1 %i.wy, label %.epil.preheader517, label %.lr.ph.i53.i.i.i.new

.lr.ph.i53.i.i.i.new:                             ; preds = %.lr.ph.i53.i.i.i
  %unroll_iter522 = and i64 %wide.trip.count.i.i168.i.i, 4294967294
  br label %bb.br

bb.br:                                            ; preds = %bb.bv, %.lr.ph.i53.i.i.i.new
  %indvars.iv.i55.i.i.i = phi i64 [ 0, %.lr.ph.i53.i.i.i.new ], [ %indvars.iv.next.i57.i.i.i.1, %bb.bv ] ; 3 uses
  %.019.i.i.i.i = phi i32 [ 0, %.lr.ph.i53.i.i.i.new ], [ %.1.i.i.i.i.1, %bb.bv ] ; 2 uses
  %niter523 = phi i64 [ 0, %.lr.ph.i53.i.i.i.new ], [ %niter523.next.1, %bb.bv ]
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %.val128.i.i, i64 %indvars.iv.i55.i.i.i
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !37
  %i.xb = lshr i32 %i.xa, 1
  %i.xc = zext nneg i32 %i.xb to i64
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %.val16.val.i.i.i.i, i64 %i.xc
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !37
  %i.xf = zext i32 %i.xe to i64
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %.val.i54.i.i.i, i64 %i.xf ; 2 uses
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !37
  %i.xi = load i32, ptr %i.r, align 4, !tbaa !38  ; 2 uses
  %.not.i56.i.i.i = icmp eq i32 %i.xh, %i.xi
  br i1 %.not.i56.i.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  store i32 %i.xi, ptr %i.xg, align 4, !tbaa !37
  %i.xj = add i32 %.019.i.i.i.i, 1
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.1.i.i.i.i = phi i32 [ %i.xj, %bb.bs ], [ %.019.i.i.i.i, %bb.br ] ; 2 uses
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %.val128.i.i, i64 %indvars.iv.i55.i.i.i
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 4
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !37
  %i.xn = lshr i32 %i.xm, 1
  %i.xo = zext nneg i32 %i.xn to i64
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %.val16.val.i.i.i.i, i64 %i.xo
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !37
  %i.xr = zext i32 %i.xq to i64
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %.val.i54.i.i.i, i64 %i.xr ; 2 uses
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !37
  %i.xu = load i32, ptr %i.r, align 4, !tbaa !38  ; 2 uses
  %.not.i56.i.i.i.1 = icmp eq i32 %i.xt, %i.xu
  br i1 %.not.i56.i.i.i.1, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  store i32 %i.xu, ptr %i.xs, align 4, !tbaa !37
  %i.xv = add i32 %.1.i.i.i.i, 1
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.1.i.i.i.i.1 = phi i32 [ %i.xv, %bb.bu ], [ %.1.i.i.i.i, %bb.bt ] ; 3 uses
  %indvars.iv.next.i57.i.i.i.1 = add nuw nsw i64 %indvars.iv.i55.i.i.i, 2 ; 2 uses
  %niter523.next.1 = add nuw i64 %niter523, 2     ; 2 uses
  %niter523.ncmp.1 = icmp eq i64 %niter523.next.1, %unroll_iter522
  br i1 %niter523.ncmp.1, label %clause_clac_lbd.exit.i.i.i.unr-lcssa, label %bb.br, !llvm.loop !41

clause_clac_lbd.exit.i.i.i.unr-lcssa:             ; preds = %bb.bv
  %lcmp.mod519.not = icmp eq i64 %xtraiter518, 0
  br i1 %lcmp.mod519.not, label %clause_clac_lbd.exit.i.i.i, label %.epil.preheader517

.epil.preheader517:                               ; preds = %clause_clac_lbd.exit.i.i.i.unr-lcssa, %.lr.ph.i53.i.i.i
  %indvars.iv.i55.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i53.i.i.i ], [ %indvars.iv.next.i57.i.i.i.1, %clause_clac_lbd.exit.i.i.i.unr-lcssa ]
  %.019.i.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i53.i.i.i ], [ %.1.i.i.i.i.1, %clause_clac_lbd.exit.i.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod521 = trunc i32 %.142.lcssa.i.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod521)
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %.val128.i.i, i64 %indvars.iv.i55.i.i.i.epil.init
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !37
  %i.xy = lshr i32 %i.xx, 1
  %i.xz = zext nneg i32 %i.xy to i64
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %.val16.val.i.i.i.i, i64 %i.xz
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !37
  %i.yc = zext i32 %i.yb to i64
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %.val.i54.i.i.i, i64 %i.yc ; 2 uses
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !37
  %i.yf = load i32, ptr %i.r, align 4, !tbaa !38  ; 2 uses
  %.not.i56.i.i.i.epil = icmp eq i32 %i.ye, %i.yf
  br i1 %.not.i56.i.i.i.epil, label %clause_clac_lbd.exit.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %.epil.preheader517
  store i32 %i.yf, ptr %i.yd, align 4, !tbaa !37
  %i.yg = add i32 %.019.i.i.i.i.epil.init, 1
  br label %clause_clac_lbd.exit.i.i.i

clause_clac_lbd.exit.i.i.i:                       ; preds = %.epil.preheader517, %bb.bw, %clause_clac_lbd.exit.i.i.i.unr-lcssa
  %.1.i.i.i.i.lcssa = phi i32 [ %.1.i.i.i.i.1, %clause_clac_lbd.exit.i.i.i.unr-lcssa ], [ %i.yg, %bb.bw ], [ %.019.i.i.i.i.epil.init, %.epil.preheader517 ]
  %i.yh = load i32, ptr %i.ad, align 4, !tbaa !135
  %.not44.i.i.i = icmp ugt i32 %.1.i.i.i.i.lcssa, %i.yh
  %.val146.pr.pre297.i.i = load i32, ptr %i.dk, align 4, !tbaa !8 ; 2 uses
  %.val147.i.pre51.i = load ptr, ptr %i.dq, align 8, !tbaa !34 ; 5 uses
  br i1 %.not44.i.i.i, label %clause_minimize.exit.i.i, label %clause_clac_lbd.exit.thread.i.i.i

clause_clac_lbd.exit.thread.i.i.i:                ; preds = %clause_clac_lbd.exit.i.i.i
  %.pre99.i.i.i = load i32, ptr %i.r, align 4, !tbaa !38
  %i.yi = icmp eq i32 %.val146.pr.pre297.i.i, 0
  %i.yj = load i32, ptr %.val147.i.pre51.i, align 4, !tbaa !37 ; 2 uses
  %i.yk = add i32 %.pre99.i.i.i, 1                ; 2 uses
  store i32 %i.yk, ptr %i.r, align 4, !tbaa !38
  br i1 %i.yi, label %.critedge.i63.i.i.i, label %.lr.ph.i59.i.i.i

.lr.ph.i59.i.i.i:                                 ; preds = %clause_clac_lbd.exit.thread.i.i.i, %.lr.ph.i59.i.i.i
  %indvars.iv.i60.i.i.i = phi i64 [ %indvars.iv.next.i61.i.i.i, %.lr.ph.i59.i.i.i ], [ 0, %clause_clac_lbd.exit.thread.i.i.i ] ; 2 uses
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %.val147.i.pre51.i, i64 %indvars.iv.i60.i.i.i
  %i.ym = load i32, ptr %i.yl, align 4, !tbaa !37
  %i.yn = lshr i32 %i.ym, 1
  %i.yo = zext nneg i32 %i.yn to i64
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %.val.i54.i.i.i, i64 %i.yo
  store i32 %i.yk, ptr %i.yp, align 4, !tbaa !37
  %indvars.iv.next.i61.i.i.i = add nuw nsw i64 %indvars.iv.i60.i.i.i, 1 ; 2 uses
  %.val60.i62.i.i.i = load i32, ptr %i.dk, align 4, !tbaa !8 ; 2 uses
  %i.yq = zext i32 %.val60.i62.i.i.i to i64
  %i.yr = icmp samesign ult i64 %indvars.iv.next.i61.i.i.i, %i.yq
  br i1 %i.yr, label %.lr.ph.i59.i.i.i, label %.critedge.i63.i.i.i, !llvm.loop !136

.critedge.i63.i.i.i:                              ; preds = %.lr.ph.i59.i.i.i, %clause_clac_lbd.exit.thread.i.i.i, %clause_clac_lbd.exit.thread.thread.i.i.i
  %.val122.i55.i = phi i32 [ 0, %clause_clac_lbd.exit.thread.thread.i.i.i ], [ 0, %clause_clac_lbd.exit.thread.i.i.i ], [ %.val60.i62.i.i.i, %.lr.ph.i59.i.i.i ]
  %.in.i.i.i = phi i32 [ %i.wt, %clause_clac_lbd.exit.thread.thread.i.i.i ], [ %i.yj, %clause_clac_lbd.exit.thread.i.i.i ], [ %i.yj, %.lr.ph.i59.i.i.i ]
  %.val61.i58122.i.i.i = phi ptr [ %.val61.i58121.i.i.i, %clause_clac_lbd.exit.thread.thread.i.i.i ], [ %.val147.i.pre51.i, %clause_clac_lbd.exit.thread.i.i.i ], [ %.val147.i.pre51.i, %.lr.ph.i59.i.i.i ] ; 5 uses
  %i.ys = xor i32 %.in.i.i.i, 1
  %i.yt = load ptr, ptr %i.ae, align 8, !tbaa !73
  %i.yu = getelementptr i8, ptr %i.yt, i64 8
  %.val69.i64.i.i.i = load ptr, ptr %i.yu, align 8, !tbaa !74
  %i.yv = zext i32 %i.ys to i64
  %i.yw = getelementptr inbounds nuw [24 x i8], ptr %.val69.i64.i.i.i, i64 %i.yv ; 2 uses
  %i.yx = getelementptr i8, ptr %i.yw, i64 16
  %.val71.i.i.i.i = load ptr, ptr %i.yx, align 8, !tbaa !77 ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yw, i64 8 ; 2 uses
  %i.yz = load i32, ptr %i.yy, align 8, !tbaa !80 ; 2 uses
  %.not87.i.i.i.i = icmp eq i32 %i.yz, 0
  br i1 %.not87.i.i.i.i, label %clause_minimize.exit.i.i, label %.lr.ph78.i.i.i.i

.lr.ph78.i.i.i.i:                                 ; preds = %.critedge.i63.i.i.i
  %i.za = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.zb = getelementptr i8, ptr %i.za, i64 8
  %.val63.i65.i.i.i = load ptr, ptr %i.zb, align 8, !tbaa !34 ; 2 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.ca, %.lr.ph78.i.i.i.i
  %i.zc = phi i32 [ %i.yz, %.lr.ph78.i.i.i.i ], [ %i.zt, %bb.ca ] ; 2 uses
  %.077.i.i.i.i = phi ptr [ %.val71.i.i.i.i, %.lr.ph78.i.i.i.i ], [ %i.zu, %bb.ca ] ; 2 uses
  %.05576.i.i.i.i = phi i32 [ 0, %.lr.ph78.i.i.i.i ], [ %.156.i.i.i.i, %bb.ca ] ; 3 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %.077.i.i.i.i, i64 4
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !82 ; 2 uses
  %i.zf = lshr i32 %i.ze, 1
  %i.zg = zext nneg i32 %i.zf to i64              ; 2 uses
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %.val63.i65.i.i.i, i64 %i.zg ; 2 uses
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !37 ; 2 uses
  %i.zj = load i32, ptr %i.r, align 4, !tbaa !38
  %i.zk = icmp eq i32 %i.zi, %i.zj
  br i1 %i.zk, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %.val72.i.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !50
  %i.zl = getelementptr i8, ptr %.val72.i.i.i.i, i64 8
  %.val72.val.i.i.i.i = load ptr, ptr %i.zl, align 8, !tbaa !51
  %i.zm = trunc i32 %i.ze to i8
  %i.zn = and i8 %i.zm, 1
  %i.zo = getelementptr inbounds nuw i8, ptr %.val72.val.i.i.i.i, i64 %i.zg
  %i.zp = load i8, ptr %i.zo, align 1, !tbaa !42
  %i.zq = icmp eq i8 %i.zp, %i.zn
  br i1 %i.zq, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.zr = add i32 %.05576.i.i.i.i, 1
  %i.zs = add i32 %i.zi, -1
  store i32 %i.zs, ptr %i.zh, align 4, !tbaa !37
  %.pre.i.i170.i.i = load i32, ptr %i.yy, align 8, !tbaa !80
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %bb.bx
  %i.zt = phi i32 [ %.pre.i.i170.i.i, %bb.bz ], [ %i.zc, %bb.by ], [ %i.zc, %bb.bx ] ; 2 uses
  %.156.i.i.i.i = phi i32 [ %i.zr, %bb.bz ], [ %.05576.i.i.i.i, %bb.by ], [ %.05576.i.i.i.i, %bb.bx ] ; 4 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %.077.i.i.i.i, i64 8 ; 2 uses
  %i.zv = zext i32 %i.zt to i64
  %i.zw = getelementptr inbounds nuw [8 x i8], ptr %.val71.i.i.i.i, i64 %i.zv
  %i.zx = icmp ult ptr %i.zu, %i.zw
  br i1 %i.zx, label %bb.bx, label %._crit_edge.i.i.i.i, !llvm.loop !137

._crit_edge.i.i.i.i:                              ; preds = %bb.ca
  %.not.i66.i.i.i = icmp eq i32 %.156.i.i.i.i, 0
  %.val146.pr.pre.i.i = load i32, ptr %i.dk, align 4, !tbaa !8 ; 4 uses
  br i1 %.not.i66.i.i.i, label %clause_minimize.exit.i.i, label %bb.cb

bb.cb:                                            ; preds = %._crit_edge.i.i.i.i
  %i.zy = sub i32 %.val146.pr.pre.i.i, %.156.i.i.i.i ; 2 uses
  %i.zz = icmp ugt i32 %i.zy, 1
  br i1 %i.zz, label %.lr.ph83.i.i.i.i, label %._crit_edge84.i.i.i.i

.lr.ph83.i.i.i.i:                                 ; preds = %bb.cb
  %i.aaa = add i32 %.val146.pr.pre.i.i, -1
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ce, %.lr.ph83.i.i.i.i
  %.val5890.i.i.i.i = phi i32 [ %.val146.pr.pre.i.i, %.lr.ph83.i.i.i.i ], [ %.val58.i68.i.i.i, %bb.ce ]
  %.181.i.i.i.i = phi i32 [ 1, %.lr.ph83.i.i.i.i ], [ %i.aao, %bb.ce ] ; 3 uses
  %.05380.i.i.i.i = phi i32 [ %i.aaa, %.lr.ph83.i.i.i.i ], [ %.154.i.i.i.i, %bb.ce ] ; 3 uses
  %i.aab = zext i32 %.181.i.i.i.i to i64
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %.val61.i58122.i.i.i, i64 %i.aab ; 2 uses
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !37 ; 2 uses
  %i.aae = lshr i32 %i.aad, 1
  %i.aaf = zext nneg i32 %i.aae to i64
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %.val63.i65.i.i.i, i64 %i.aaf
  %i.aah = load i32, ptr %i.aag, align 4, !tbaa !37
  %i.aai = load i32, ptr %i.r, align 4, !tbaa !38
  %.not57.i.i.i.i = icmp eq i32 %i.aah, %i.aai
  br i1 %.not57.i.i.i.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.aaj = zext i32 %.05380.i.i.i.i to i64
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %.val61.i58122.i.i.i, i64 %i.aaj ; 2 uses
  %i.aal = load i32, ptr %i.aak, align 4, !tbaa !37
  store i32 %i.aal, ptr %i.aac, align 4, !tbaa !37
  store i32 %i.aad, ptr %i.aak, align 4, !tbaa !37
  %i.aam = add i32 %.181.i.i.i.i, -1
  %i.aan = add i32 %.05380.i.i.i.i, -1
  %.val58.pre.i.i.i.i = load i32, ptr %i.dk, align 4, !tbaa !8
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.val58.i68.i.i.i = phi i32 [ %.val58.pre.i.i.i.i, %bb.cd ], [ %.val5890.i.i.i.i, %bb.cc ] ; 2 uses
  %.154.i.i.i.i = phi i32 [ %i.aan, %bb.cd ], [ %.05380.i.i.i.i, %bb.cc ]
  %.2.i69.i.i.i = phi i32 [ %i.aam, %bb.cd ], [ %.181.i.i.i.i, %bb.cc ]
  %i.aao = add i32 %.2.i69.i.i.i, 1               ; 2 uses
  %i.aap = sub i32 %.val58.i68.i.i.i, %.156.i.i.i.i ; 2 uses
  %i.aaq = icmp ult i32 %i.aao, %i.aap
  br i1 %i.aaq, label %bb.cc, label %._crit_edge84.i.i.i.i, !llvm.loop !138

._crit_edge84.i.i.i.i:                            ; preds = %bb.ce, %bb.cb
  %.lcssa.i.i.i.i = phi i32 [ %i.zy, %bb.cb ], [ %i.aap, %bb.ce ] ; 2 uses
  store i32 %.lcssa.i.i.i.i, ptr %i.dk, align 4, !tbaa !8
  br label %clause_minimize.exit.i.i

clause_minimize.exit.i.i:                         ; preds = %._crit_edge84.i.i.i.i, %._crit_edge.i.i.i.i, %.critedge.i63.i.i.i, %clause_clac_lbd.exit.i.i.i, %.critedge._crit_edge.i.i.clause_minimize.exit.i_crit_edge.i
  %.val122.i54.i = phi i32 [ %.lcssa.i.i.i.i, %._crit_edge84.i.i.i.i ], [ %.142.lcssa.i.i.i, %.critedge._crit_edge.i.i.clause_minimize.exit.i_crit_edge.i ], [ %.val146.pr.pre.i.i, %._crit_edge.i.i.i.i ], [ %.val122.i55.i, %.critedge.i63.i.i.i ], [ %.val146.pr.pre297.i.i, %clause_clac_lbd.exit.i.i.i ] ; 5 uses
  %.val147.i.i = phi ptr [ %.val61.i58122.i.i.i, %._crit_edge84.i.i.i.i ], [ %.val147.i.pre.i, %.critedge._crit_edge.i.i.clause_minimize.exit.i_crit_edge.i ], [ %.val61.i58122.i.i.i, %._crit_edge.i.i.i.i ], [ %.val61.i58122.i.i.i, %.critedge.i63.i.i.i ], [ %.val147.i.pre51.i, %clause_clac_lbd.exit.i.i.i ] ; 8 uses
  %.val145.i.i = load ptr, ptr %i.s, align 8, !tbaa !39
  %i.aar = getelementptr i8, ptr %.val145.i.i, i64 8
  %.val145.val.i.i = load ptr, ptr %i.aar, align 8, !tbaa !34 ; 8 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %.val147.i.i, i64 4 ; 3 uses
  %i.aat = load i32, ptr %i.aas, align 4, !tbaa !37 ; 2 uses
  %i.aau = icmp eq i32 %.val122.i54.i, 1
  br i1 %i.aau, label %solver_calc_bt_level.exit.i.thread.i, label %.preheader.i184.i.i

solver_calc_bt_level.exit.i.thread.i:             ; preds = %clause_minimize.exit.i.i
  %i.aav = load i32, ptr %i.r, align 4, !tbaa !38
  %i.aaw = add i32 %i.aav, 1
  store i32 %i.aaw, ptr %i.r, align 4, !tbaa !38
  br label %.lr.ph.i191.i.i

.preheader.i184.i.i:                              ; preds = %clause_minimize.exit.i.i
  %i.aax = icmp ugt i32 %.val122.i54.i, 2
  br i1 %i.aax, label %.lr.ph.preheader.i.i.i, label %solver_calc_bt_level.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i184.i.i
  %i.aay = lshr i32 %i.aat, 1
  %i.aaz = zext nneg i32 %i.aay to i64
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %.val145.val.i.i, i64 %i.aaz
  %i.abb = load i32, ptr %i.aba, align 4, !tbaa !37 ; 2 uses
  %wide.trip.count.i185.i.i = zext i32 %.val122.i54.i to i64 ; 2 uses
  %xtraiter524 = and i64 %wide.trip.count.i185.i.i, 1
  %i.abc = icmp eq i32 %.val122.i54.i, 3
  br i1 %i.abc, label %.lr.ph.i186.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %i.abd = and i64 %wide.trip.count.i185.i.i, 4294967294
  %i.abe = add nsw i64 %i.abd, -4
  br label %.lr.ph.i186.i.i

.lr.ph.i186.i.i:                                  ; preds = %.lr.ph.i186.i.i, %.lr.ph.preheader.i.i.i.new
  %indvars.iv.i187.i.i = phi i64 [ 2, %.lr.ph.preheader.i.i.i.new ], [ %indvars.iv.next.i188.i.i.1, %.lr.ph.i186.i.i ] ; 4 uses
  %.04.i.i.i = phi i32 [ %i.abb, %.lr.ph.preheader.i.i.i.new ], [ %spec.select1.i.i.i.1, %.lr.ph.i186.i.i ] ; 2 uses
  %.0243.i.i.i = phi i32 [ 1, %.lr.ph.preheader.i.i.i.new ], [ %spec.select.i.i.i.1, %.lr.ph.i186.i.i ]
  %niter529 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter529.next.1, %.lr.ph.i186.i.i ] ; 2 uses
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %.val147.i.i, i64 %indvars.iv.i187.i.i
  %i.abg = load i32, ptr %i.abf, align 4, !tbaa !37
  %i.abh = lshr i32 %i.abg, 1
  %i.abi = zext nneg i32 %i.abh to i64
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %.val145.val.i.i, i64 %i.abi
  %i.abk = load i32, ptr %i.abj, align 4, !tbaa !37 ; 2 uses
  %i.abl = icmp ugt i32 %i.abk, %.04.i.i.i
  %i.abm = trunc nuw i64 %indvars.iv.i187.i.i to i32
  %spec.select.i.i.i = select i1 %i.abl, i32 %i.abm, i32 %.0243.i.i.i
  %spec.select1.i.i.i = call i32 @llvm.umax.i32(i32 %i.abk, i32 %.04.i.i.i) ; 2 uses
  %indvars.iv.next.i188.i.i = or disjoint i64 %indvars.iv.i187.i.i, 1 ; 2 uses
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %.val147.i.i, i64 %indvars.iv.next.i188.i.i
  %i.abo = load i32, ptr %i.abn, align 4, !tbaa !37
  %i.abp = lshr i32 %i.abo, 1
  %i.abq = zext nneg i32 %i.abp to i64
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %.val145.val.i.i, i64 %i.abq
  %i.abs = load i32, ptr %i.abr, align 4, !tbaa !37 ; 2 uses
  %i.abt = icmp ugt i32 %i.abs, %spec.select1.i.i.i
  %i.abu = trunc nuw i64 %indvars.iv.next.i188.i.i to i32
  %spec.select.i.i.i.1 = select i1 %i.abt, i32 %i.abu, i32 %spec.select.i.i.i ; 3 uses
  %spec.select1.i.i.i.1 = call i32 @llvm.umax.i32(i32 %i.abs, i32 %spec.select1.i.i.i) ; 2 uses
  %indvars.iv.next.i188.i.i.1 = add nuw nsw i64 %indvars.iv.i187.i.i, 2 ; 2 uses
  %niter529.next.1 = add nuw i64 %niter529, 2
  %niter529.ncmp.1 = icmp eq i64 %niter529, %i.abe
  br i1 %niter529.ncmp.1, label %._crit_edge.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i186.i.i, !llvm.loop !139

._crit_edge.loopexit.i.i.i.unr-lcssa:             ; preds = %.lr.ph.i186.i.i
  %lcmp.mod525.not = icmp eq i64 %xtraiter524, 0
  br i1 %lcmp.mod525.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i186.i.i.epil.preheader

.lr.ph.i186.i.i.epil.preheader:                   ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.preheader.i.i.i
  %indvars.iv.i187.i.i.epil.init = phi i64 [ 2, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i188.i.i.1, %._crit_edge.loopexit.i.i.i.unr-lcssa ] ; 2 uses
  %.04.i.i.i.epil.init = phi i32 [ %i.abb, %.lr.ph.preheader.i.i.i ], [ %spec.select1.i.i.i.1, %._crit_edge.loopexit.i.i.i.unr-lcssa ]
  %.0243.i.i.i.epil.init = phi i32 [ 1, %.lr.ph.preheader.i.i.i ], [ %spec.select.i.i.i.1, %._crit_edge.loopexit.i.i.i.unr-lcssa ]
  %lcmp.mod527 = trunc i32 %.val122.i54.i to i1
  call void @llvm.assume(i1 %lcmp.mod527)
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr %.val147.i.i, i64 %indvars.iv.i187.i.i.epil.init
  %i.abw = load i32, ptr %i.abv, align 4, !tbaa !37
  %i.abx = lshr i32 %i.abw, 1
  %i.aby = zext nneg i32 %i.abx to i64
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %.val145.val.i.i, i64 %i.aby
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !37
  %i.acb = icmp ugt i32 %i.aca, %.04.i.i.i.epil.init
  %i.acc = trunc nuw i64 %indvars.iv.i187.i.i.epil.init to i32
  %spec.select.i.i.i.epil = select i1 %i.acb, i32 %i.acc, i32 %.0243.i.i.i.epil.init
  br label %._crit_edge.loopexit.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.i186.i.i.epil.preheader
  %spec.select.i.i.i.lcssa = phi i32 [ %spec.select.i.i.i.1, %._crit_edge.loopexit.i.i.i.unr-lcssa ], [ %spec.select.i.i.i.epil, %.lr.ph.i186.i.i.epil.preheader ]
  %i.acd = zext i32 %spec.select.i.i.i.lcssa to i64
  br label %solver_calc_bt_level.exit.i.i

solver_calc_bt_level.exit.i.i:                    ; preds = %._crit_edge.loopexit.i.i.i, %.preheader.i184.i.i
  %.024.lcssa.i.i.i = phi i64 [ 1, %.preheader.i184.i.i ], [ %i.acd, %._crit_edge.loopexit.i.i.i ]
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %.val147.i.i, i64 %.024.lcssa.i.i.i ; 2 uses
  %i.acf = load i32, ptr %i.ace, align 4, !tbaa !37
  store i32 %i.acf, ptr %i.aas, align 4, !tbaa !37
  store i32 %i.aat, ptr %i.ace, align 4, !tbaa !37
  %i.acg = load i32, ptr %i.aas, align 4, !tbaa !37
  %i.ach = lshr i32 %i.acg, 1
  %i.aci = zext nneg i32 %i.ach to i64
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr %.val145.val.i.i, i64 %i.aci
  %i.ack = load i32, ptr %i.acj, align 4, !tbaa !37 ; 2 uses
  %.val122.i.pre.i = load i32, ptr %i.dk, align 4, !tbaa !8 ; 2 uses
  %i.acl = load i32, ptr %i.r, align 4, !tbaa !38
  %i.acm = add i32 %i.acl, 1
  store i32 %i.acm, ptr %i.r, align 4, !tbaa !38
  %.not20.i190.i.i = icmp eq i32 %.val122.i.pre.i, 0
  br i1 %.not20.i190.i.i, label %clause_clac_lbd.exit204.i.i, label %.lr.ph.i191.i.i

.lr.ph.i191.i.i:                                  ; preds = %solver_calc_bt_level.exit.i.i, %solver_calc_bt_level.exit.i.thread.i
  %.027.i.i97.i = phi i32 [ 0, %solver_calc_bt_level.exit.i.thread.i ], [ %i.ack, %solver_calc_bt_level.exit.i.i ] ; 3 uses
  %.val122.i96.i = phi i32 [ 1, %solver_calc_bt_level.exit.i.thread.i ], [ %.val122.i.pre.i, %solver_calc_bt_level.exit.i.i ] ; 3 uses
  %i.acn = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.aco = getelementptr i8, ptr %i.acn, i64 8
  %.val.i194.i.i = load ptr, ptr %i.aco, align 8, !tbaa !34 ; 3 uses
  %wide.trip.count.i195.i.i = zext i32 %.val122.i96.i to i64 ; 2 uses
  %xtraiter531 = and i64 %wide.trip.count.i195.i.i, 1
  %i.acp = icmp eq i32 %.val122.i96.i, 1
  br i1 %i.acp, label %.epil.preheader530, label %.lr.ph.i191.i.i.new

.lr.ph.i191.i.i.new:                              ; preds = %.lr.ph.i191.i.i
  %unroll_iter535 = and i64 %wide.trip.count.i195.i.i, 4294967294
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cj, %.lr.ph.i191.i.i.new
  %indvars.iv.i196.i.i = phi i64 [ 0, %.lr.ph.i191.i.i.new ], [ %indvars.iv.next.i200.i.i.1, %bb.cj ] ; 3 uses
  %.019.i197.i.i = phi i32 [ 0, %.lr.ph.i191.i.i.new ], [ %.1.i199.i.i.1, %bb.cj ] ; 2 uses
  %niter536 = phi i64 [ 0, %.lr.ph.i191.i.i.new ], [ %niter536.next.1, %bb.cj ]
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %.val147.i.i, i64 %indvars.iv.i196.i.i
  %i.acr = load i32, ptr %i.acq, align 4, !tbaa !37
  %i.acs = lshr i32 %i.acr, 1
  %i.act = zext nneg i32 %i.acs to i64
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %.val145.val.i.i, i64 %i.act
  %i.acv = load i32, ptr %i.acu, align 4, !tbaa !37
  %i.acw = zext i32 %i.acv to i64
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %.val.i194.i.i, i64 %i.acw ; 2 uses
  %i.acy = load i32, ptr %i.acx, align 4, !tbaa !37
  %i.acz = load i32, ptr %i.r, align 4, !tbaa !38 ; 2 uses
  %.not.i198.i.i = icmp eq i32 %i.acy, %i.acz
  br i1 %.not.i198.i.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  store i32 %i.acz, ptr %i.acx, align 4, !tbaa !37
  %i.ada = add i32 %.019.i197.i.i, 1
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.1.i199.i.i = phi i32 [ %i.ada, %bb.cg ], [ %.019.i197.i.i, %bb.cf ] ; 2 uses
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %.val147.i.i, i64 %indvars.iv.i196.i.i
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 4
  %i.add = load i32, ptr %i.adc, align 4, !tbaa !37
  %i.ade = lshr i32 %i.add, 1
  %i.adf = zext nneg i32 %i.ade to i64
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %.val145.val.i.i, i64 %i.adf
  %i.adh = load i32, ptr %i.adg, align 4, !tbaa !37
  %i.adi = zext i32 %i.adh to i64
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %.val.i194.i.i, i64 %i.adi ; 2 uses
  %i.adk = load i32, ptr %i.adj, align 4, !tbaa !37
  %i.adl = load i32, ptr %i.r, align 4, !tbaa !38 ; 2 uses
  %.not.i198.i.i.1 = icmp eq i32 %i.adk, %i.adl
  br i1 %.not.i198.i.i.1, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  store i32 %i.adl, ptr %i.adj, align 4, !tbaa !37
  %i.adm = add i32 %.1.i199.i.i, 1
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.1.i199.i.i.1 = phi i32 [ %i.adm, %bb.ci ], [ %.1.i199.i.i, %bb.ch ] ; 3 uses
  %indvars.iv.next.i200.i.i.1 = add nuw nsw i64 %indvars.iv.i196.i.i, 2 ; 2 uses
  %niter536.next.1 = add nuw i64 %niter536, 2     ; 2 uses
  %niter536.ncmp.1 = icmp eq i64 %niter536.next.1, %unroll_iter535
  br i1 %niter536.ncmp.1, label %clause_clac_lbd.exit204.i.i.loopexit.unr-lcssa, label %bb.cf, !llvm.loop !41

clause_clac_lbd.exit204.i.i.loopexit.unr-lcssa:   ; preds = %bb.cj
  %lcmp.mod532.not = icmp eq i64 %xtraiter531, 0
  br i1 %lcmp.mod532.not, label %clause_clac_lbd.exit204.i.i, label %.epil.preheader530

.epil.preheader530:                               ; preds = %clause_clac_lbd.exit204.i.i.loopexit.unr-lcssa, %.lr.ph.i191.i.i
  %indvars.iv.i196.i.i.epil.init = phi i64 [ 0, %.lr.ph.i191.i.i ], [ %indvars.iv.next.i200.i.i.1, %clause_clac_lbd.exit204.i.i.loopexit.unr-lcssa ]
  %.019.i197.i.i.epil.init = phi i32 [ 0, %.lr.ph.i191.i.i ], [ %.1.i199.i.i.1, %clause_clac_lbd.exit204.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod534 = trunc i32 %.val122.i96.i to i1
  call void @llvm.assume(i1 %lcmp.mod534)
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %.val147.i.i, i64 %indvars.iv.i196.i.i.epil.init
  %i.ado = load i32, ptr %i.adn, align 4, !tbaa !37
  %i.adp = lshr i32 %i.ado, 1
  %i.adq = zext nneg i32 %i.adp to i64
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %.val145.val.i.i, i64 %i.adq
  %i.ads = load i32, ptr %i.adr, align 4, !tbaa !37
  %i.adt = zext i32 %i.ads to i64
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %.val.i194.i.i, i64 %i.adt ; 2 uses
  %i.adv = load i32, ptr %i.adu, align 4, !tbaa !37
  %i.adw = load i32, ptr %i.r, align 4, !tbaa !38 ; 2 uses
  %.not.i198.i.i.epil = icmp eq i32 %i.adv, %i.adw
  br i1 %.not.i198.i.i.epil, label %clause_clac_lbd.exit204.i.i, label %bb.ck

bb.ck:                                            ; preds = %.epil.preheader530
  store i32 %i.adw, ptr %i.adu, align 4, !tbaa !37
  %i.adx = add i32 %.019.i197.i.i.epil.init, 1
  br label %clause_clac_lbd.exit204.i.i

clause_clac_lbd.exit204.i.i:                      ; preds = %clause_clac_lbd.exit204.i.i.loopexit.unr-lcssa, %bb.ck, %.epil.preheader530, %solver_calc_bt_level.exit.i.i
  %.027.i.i98.i = phi i32 [ %i.ack, %solver_calc_bt_level.exit.i.i ], [ %.027.i.i97.i, %.epil.preheader530 ], [ %.027.i.i97.i, %bb.ck ], [ %.027.i.i97.i, %clause_clac_lbd.exit204.i.i.loopexit.unr-lcssa ]
  %.0.lcssa.i203.i.i = phi i32 [ 0, %solver_calc_bt_level.exit.i.i ], [ %.1.i199.i.i.1, %clause_clac_lbd.exit204.i.i.loopexit.unr-lcssa ], [ %i.adx, %bb.ck ], [ %.019.i197.i.i.epil.init, %.epil.preheader530 ] ; 4 uses
  %i.ady = load ptr, ptr %i.z, align 8, !tbaa !123 ; 2 uses
  %i.adz = getelementptr i8, ptr %i.ady, i64 4    ; 3 uses
  %.val121.i.i = load i32, ptr %i.adz, align 4, !tbaa !8 ; 2 uses
  %.not116.i.i = icmp eq i32 %.val121.i.i, 0
  br i1 %.not116.i.i, label %bb.cr, label %clause_fetch.exit206.lr.ph.i.i

clause_fetch.exit206.lr.ph.i.i:                   ; preds = %clause_clac_lbd.exit204.i.i
  %i.aea = getelementptr i8, ptr %i.ady, i64 8
  %.val131.i.i = load ptr, ptr %i.aea, align 8, !tbaa !34
  %.val141.i.i = load ptr, ptr %i.l, align 8, !tbaa !54
  %i.aeb = getelementptr i8, ptr %.val141.i.i, i64 8
  %.val141.val.i.i = load ptr, ptr %i.aeb, align 8, !tbaa !34
  %.val124.i.i = load ptr, ptr %i.m, align 8, !tbaa !12
  %i.aec = getelementptr inbounds nuw i8, ptr %.val124.i.i, i64 16
  %i.aed = load ptr, ptr %i.aec, align 8, !tbaa !31
  br label %clause_fetch.exit206.i.i

clause_fetch.exit206.i.i:                         ; preds = %var_act_bump.exit252.i.i, %clause_fetch.exit206.lr.ph.i.i
  %.val120300.i.i = phi i32 [ %.val121.i.i, %clause_fetch.exit206.lr.ph.i.i ], [ %.val120.i.i, %var_act_bump.exit252.i.i ] ; 3 uses
  %indvars.iv286.i.i = phi i64 [ 0, %clause_fetch.exit206.lr.ph.i.i ], [ %indvars.iv.next287.i.i, %var_act_bump.exit252.i.i ] ; 2 uses
  %i.aee = getelementptr inbounds nuw [4 x i8], ptr %.val131.i.i, i64 %indvars.iv286.i.i
  %i.aef = load i32, ptr %i.aee, align 4, !tbaa !37 ; 2 uses
  %i.aeg = zext i32 %i.aef to i64                 ; 3 uses
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %.val141.val.i.i, i64 %i.aeg
  %i.aei = load i32, ptr %i.aeh, align 4, !tbaa !37 ; 2 uses
  %.not.i.i205.i.i = icmp ne i32 %i.aei, -1
  call void @llvm.assume(i1 %.not.i.i205.i.i)
  %i.aej = zext i32 %i.aei to i64
  %i.aek = getelementptr inbounds nuw [4 x i8], ptr %i.aed, i64 %i.aej
  %i.ael = load i32, ptr %i.aek, align 4
  %i.aem = lshr i32 %i.ael, 4
  %i.aen = icmp ult i32 %i.aem, %.0.lcssa.i203.i.i
  br i1 %i.aen, label %bb.cl, label %var_act_bump.exit252.i.i

bb.cl:                                            ; preds = %clause_fetch.exit206.i.i
  %i.aeo = load ptr, ptr %i.v, align 8, !tbaa !116 ; 2 uses
  %i.aep = getelementptr i8, ptr %i.aeo, i64 8
  %.val13.i207.i.i = load ptr, ptr %i.aep, align 8, !tbaa !66 ; 3 uses
  %i.aeq = getelementptr inbounds nuw [8 x i8], ptr %.val13.i207.i.i, i64 %i.aeg ; 2 uses
  %i.aer = load i64, ptr %i.aeq, align 8, !tbaa !69 ; 2 uses
  %i.aes = load i64, ptr %i.w, align 8, !tbaa !117 ; 2 uses
  %spec.select.i.i208.i.i = call i64 @llvm.umax.i64(i64 %i.aer, i64 %i.aes) ; 2 uses
  %spec.select28.i.i209.i.i = call i64 @llvm.umin.i64(i64 %i.aer, i64 %i.aes) ; 2 uses
  %i.aet = lshr i64 %spec.select.i.i208.i.i, 48   ; 2 uses
  %i.aeu = and i64 %spec.select.i.i208.i.i, 281474976710655
  %i.aev = and i64 %spec.select28.i.i209.i.i, 281474976710655
  %i.aew = lshr i64 %spec.select28.i.i209.i.i, 48
  %i.aex = sub nsw i64 %i.aet, %i.aew
  %i.aey = lshr i64 %i.aev, %i.aex
  %i.aez = add nuw nsw i64 %i.aey, %i.aeu         ; 2 uses
  %.not.i.i210.i.i = icmp samesign ugt i64 %i.aez, 281474976710655
  %i.afa = zext i1 %.not.i.i210.i.i to i64        ; 2 uses
  %.020.i.i211.i.i = add nuw nsw i64 %i.aet, %i.afa ; 2 uses
  %.0.i.i212.i.i = lshr i64 %i.aez, %i.afa
  %.not27.i.i213.i.i = icmp samesign ult i64 %.020.i.i211.i.i, 65536
  %i.afb = shl nuw i64 %.020.i.i211.i.i, 48
  %i.afc = add i64 %i.afb, %.0.i.i212.i.i
  %.023.i.i214.i.i = select i1 %.not27.i.i213.i.i, i64 %i.afc, i64 -1 ; 2 uses
  store i64 %.023.i.i214.i.i, ptr %i.aeq, align 8, !tbaa !69
  %i.afd = load i64, ptr %i.x, align 8, !tbaa !118
  %i.afe = icmp ugt i64 %.023.i.i214.i.i, %i.afd
  br i1 %i.afe, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.aff = getelementptr i8, ptr %i.aeo, i64 4
  %.val11.i.i237.i.i = load i32, ptr %i.aff, align 4, !tbaa !119 ; 3 uses
  %.not.i14.i238.i.i = icmp eq i32 %.val11.i.i237.i.i, 0
  %.pre.i.i240.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !120
  %.pre16.i.i241.i.i = zext i32 %.pre.i.i240.i.i to i64 ; 5 uses
  br i1 %.not.i14.i238.i.i, label %var_act_rescale.exit.i249.i.i, label %.lr.ph.i.i242.i.i

.lr.ph.i.i242.i.i:                                ; preds = %bb.cm
  %wide.trip.count.i.i243.i.i = zext i32 %.val11.i.i237.i.i to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.val11.i.i237.i.i, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i242.i.i
  %n.vec = and i64 %wide.trip.count.i.i243.i.i, 4294967292 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.pre16.i.i241.i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.afg = getelementptr inbounds nuw [8 x i8], ptr %.val13.i207.i.i, i64 %index ; 3 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.afg, align 8, !tbaa !69 ; 2 uses
  %wide.load444 = load <2 x i64>, ptr %i.afh, align 8, !tbaa !69 ; 2 uses
  %i.afi = lshr <2 x i64> %wide.load, splat (i64 48) ; 2 uses
  %i.afj = lshr <2 x i64> %wide.load444, splat (i64 48) ; 2 uses
  %i.afk = icmp samesign ult <2 x i64> %i.afi, %broadcast.splat
  %i.afl = icmp samesign ult <2 x i64> %i.afj, %broadcast.splat
  %i.afm = sub nsw <2 x i64> %i.afi, %broadcast.splat
  %i.afn = sub nsw <2 x i64> %i.afj, %broadcast.splat
  %i.afo = shl <2 x i64> %i.afm, splat (i64 48)
  %i.afp = shl <2 x i64> %i.afn, splat (i64 48)
  %i.afq = and <2 x i64> %wide.load, splat (i64 281474976710655)
  %i.afr = and <2 x i64> %wide.load444, splat (i64 281474976710655)
  %i.afs = or disjoint <2 x i64> %i.afo, %i.afq
  %i.aft = or disjoint <2 x i64> %i.afp, %i.afr
  %i.afu = select <2 x i1> %i.afk, <2 x i64> splat (i64 140737488355328), <2 x i64> %i.afs
  %i.afv = select <2 x i1> %i.afl, <2 x i64> splat (i64 140737488355328), <2 x i64> %i.aft
  store <2 x i64> %i.afu, ptr %i.afg, align 8, !tbaa !69
  store <2 x i64> %i.afv, ptr %i.afh, align 8, !tbaa !69
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.afw = icmp eq i64 %index.next, %n.vec
  br i1 %i.afw, label %middle.block, label %vector.body, !llvm.loop !140

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i243.i.i
  br i1 %cmp.n, label %var_act_rescale.exit.i249.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i242.i.i, %middle.block
  %indvars.iv.i.i244.i.i.ph = phi i64 [ 0, %.lr.ph.i.i242.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i244.i.i = phi i64 [ %indvars.iv.next.i.i247.i.i, %scalar.ph ], [ %indvars.iv.i.i244.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.afx = getelementptr inbounds nuw [8 x i8], ptr %.val13.i207.i.i, i64 %indvars.iv.i.i244.i.i ; 2 uses
  %i.afy = load i64, ptr %i.afx, align 8, !tbaa !69 ; 2 uses
  %i.afz = lshr i64 %i.afy, 48                    ; 2 uses
  %.not.i.i.i245.i.i = icmp samesign ult i64 %i.afz, %.pre16.i.i241.i.i
  %i.aga = sub nsw i64 %i.afz, %.pre16.i.i241.i.i
  %i.agb = shl i64 %i.aga, 48
  %i.agc = and i64 %i.afy, 281474976710655
  %i.agd = or disjoint i64 %i.agb, %i.agc
  %.0.i.i.i246.i.i = select i1 %.not.i.i.i245.i.i, i64 140737488355328, i64 %i.agd
  store i64 %.0.i.i.i246.i.i, ptr %i.afx, align 8, !tbaa !69
  %indvars.iv.next.i.i247.i.i = add nuw nsw i64 %indvars.iv.i.i244.i.i, 1 ; 2 uses
  %exitcond.not.i.i248.i.i = icmp eq i64 %indvars.iv.next.i.i247.i.i, %wide.trip.count.i.i243.i.i
  br i1 %exitcond.not.i.i248.i.i, label %var_act_rescale.exit.i249.i.i, label %scalar.ph, !llvm.loop !141

var_act_rescale.exit.i249.i.i:                    ; preds = %scalar.ph, %middle.block, %bb.cm
  %i.age = load i64, ptr %i.w, align 8, !tbaa !117 ; 2 uses
  %i.agf = lshr i64 %i.age, 48                    ; 2 uses
  %.not.i12.i.i250.i.i = icmp samesign ult i64 %i.agf, %.pre16.i.i241.i.i
  %i.agg = sub nsw i64 %i.agf, %.pre16.i.i241.i.i
  %i.agh = shl i64 %i.agg, 48
  %i.agi = and i64 %i.age, 281474976710655
  %i.agj = or disjoint i64 %i.agh, %i.agi
  %.0.i13.i.i251.i.i = select i1 %.not.i12.i.i250.i.i, i64 140737488355328, i64 %i.agj
  store i64 %.0.i13.i.i251.i.i, ptr %i.w, align 8, !tbaa !117
  br label %bb.cn

bb.cn:                                            ; preds = %var_act_rescale.exit.i249.i.i, %bb.cl
  %i.agk = load ptr, ptr %i.y, align 8, !tbaa !55 ; 3 uses
  %.val.i215.i.i = load ptr, ptr %i.agk, align 8, !tbaa !56 ; 2 uses
  %i.agl = getelementptr i8, ptr %.val.i215.i.i, i64 4
  %.val.i15.i216.i.i = load i32, ptr %i.agl, align 4, !tbaa !59
  %i.agm = icmp ult i32 %i.aef, %.val.i15.i216.i.i
  br i1 %i.agm, label %heap_in_heap.exit.i217.i.i, label %var_act_bump.exit252.i.i

heap_in_heap.exit.i217.i.i:                       ; preds = %bb.cn
  %i.agn = getelementptr i8, ptr %.val.i215.i.i, i64 8
  %.val3.i.i218.i.i = load ptr, ptr %i.agn, align 8, !tbaa !61 ; 3 uses
  %i.ago = getelementptr inbounds nuw [4 x i8], ptr %.val3.i.i218.i.i, i64 %i.aeg
  %i.agp = load i32, ptr %i.ago, align 4, !tbaa !37 ; 4 uses
  %i.agq = icmp slt i32 %i.agp, 0
  br i1 %i.agq, label %var_act_bump.exit252.i.i, label %bb.co

bb.co:                                            ; preds = %heap_in_heap.exit.i217.i.i
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agk, i64 8
  %i.ags = load ptr, ptr %i.agr, align 8, !tbaa !64
  %i.agt = getelementptr i8, ptr %i.ags, i64 8
  %.val28.i.i.i219.i.i = load ptr, ptr %i.agt, align 8, !tbaa !34 ; 4 uses
  %i.agu = zext nneg i32 %i.agp to i64
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %.val28.i.i.i219.i.i, i64 %i.agu
end_hunk_2
begin_hunk_3_@solver_search:bb.a
  %.pre6.i.i100.i.i = add i32 %.pre.i.i99.i.i, %i.blp
  %.pre149.i = load i32, ptr %i.blg, align 4
  %.pre150.i = load i32, ptr %i.bln, align 4, !tbaa !32
  %.pre151.i = and i32 %.pre149.i, 1
  %.pre152.i = add nuw nsw i32 %.pre151.i, 3
  %.pre154.i = add i32 %.pre152.i, %.pre150.i
  br label %cdb_append.exit.i94.i.i

cdb_append.exit.i94.i.i:                          ; preds = %bb.fn, %bb.fm
  %.pre-phi155.i = phi i32 [ %.pre154.i, %bb.fn ], [ %i.blp, %bb.fm ]
  %i.bmc = phi ptr [ %i.bmb, %bb.fn ], [ %i.bkw, %bb.fm ] ; 3 uses
  %i.bmd = phi ptr [ %i.bmb, %bb.fn ], [ %i.bkx, %bb.fm ]
  %i.bme = phi i32 [ %i.blx, %bb.fn ], [ %i.bky, %bb.fm ]
  %.pre-phi.i.i95.i.i = phi i32 [ %.pre6.i.i100.i.i, %bb.fn ], [ %i.blq, %bb.fm ] ; 2 uses
  %i.bmf = phi i32 [ %.pre.i.i99.i.i, %bb.fn ], [ %i.bkz, %bb.fm ] ; 4 uses
  store i32 %.pre-phi.i.i95.i.i, ptr %i.bca, align 8, !tbaa !26
  %.not.i18.i96.i.i = icmp eq i32 %i.bmf, -1      ; 2 uses
  %i.bmg = zext i32 %i.bmf to i64
  %i.bmh = getelementptr inbounds nuw [4 x i8], ptr %i.bmc, i64 %i.bmg
  %i.bmi = select i1 %.not.i18.i96.i.i, ptr %i.bmd, ptr %i.bmc
  %i.bmj = select i1 %.not.i18.i96.i.i, ptr null, ptr %i.bmh
  %i.bmk = shl i32 %.pre-phi155.i, 2
  %i.bml = zext i32 %i.bmk to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bmj, ptr nonnull align 4 %i.blg, i64 %i.bml, i1 false)
  %i.bmm = load i32, ptr %i.blg, align 4
  %i.bmn = or i32 %i.bmm, 4
  store i32 %i.bmn, ptr %i.blg, align 4
  store i32 %i.bmf, ptr %i.bln, align 4, !tbaa !32
  %.pre150.i.i = load ptr, ptr %i.ba, align 8, !tbaa !46
  br label %clause_realloc.exit101.i.i

clause_realloc.exit101.i.i:                       ; preds = %cdb_append.exit.i94.i.i, %bb.fl
  %i.bmo = phi ptr [ %.pre150.i.i, %cdb_append.exit.i94.i.i ], [ %i.bkv, %bb.fl ] ; 2 uses
  %i.bmp = phi ptr [ %i.bmc, %cdb_append.exit.i94.i.i ], [ %i.bkw, %bb.fl ]
  %i.bmq = phi ptr [ %i.bmi, %cdb_append.exit.i94.i.i ], [ %i.bkx, %bb.fl ]
  %i.bmr = phi i32 [ %i.bme, %cdb_append.exit.i94.i.i ], [ %i.bky, %bb.fl ]
  %i.bms = phi i32 [ %.pre-phi.i.i95.i.i, %cdb_append.exit.i94.i.i ], [ %i.bkz, %bb.fl ]
  %storemerge.i92.i.i = phi i32 [ %i.bmf, %cdb_append.exit.i94.i.i ], [ %i.blk, %bb.fl ]
  store i32 %storemerge.i92.i.i, ptr %i.blb, align 4, !tbaa !37
  %indvars.iv.next144.i.i = add nuw nsw i64 %indvars.iv143.i.i, 1 ; 2 uses
  %i.bmt = getelementptr i8, ptr %i.bmo, i64 4
  %.val.i82.i = load i32, ptr %i.bmt, align 4, !tbaa !8
  %i.bmu = zext i32 %.val.i82.i to i64
  %i.bmv = icmp samesign ult i64 %indvars.iv.next144.i.i, %i.bmu
  br i1 %i.bmv, label %.lr.ph126.i.i, label %solver_garbage_collect.exit.i, !llvm.loop !177

solver_garbage_collect.exit.i:                    ; preds = %clause_realloc.exit101.i.i, %._crit_edge122.i.i
  %i.bmw = load ptr, ptr %i.m, align 8, !tbaa !12 ; 2 uses
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.bmw, i64 16
  %i.bmy = load ptr, ptr %i.bmx, align 8, !tbaa !31
  call void @free(ptr noundef %i.bmy) #19
  call void @free(ptr noundef %i.bmw) #19
  store ptr %i.bca, ptr %i.m, align 8, !tbaa !12
  br label %solver_reduce_cdb.exit

solver_reduce_cdb.exit:                           ; preds = %bb.ev, %solver_garbage_collect.exit.i
  %i.bmz = load i32, ptr %i.bb, align 8, !tbaa !178
  %i.bna = zext i32 %i.bmz to i64
  %i.bnb = load i64, ptr %i.as, align 8, !tbaa !158
  %i.bnc = add nsw i64 %i.bnb, %i.bna             ; 2 uses
  store i64 %i.bnc, ptr %i.as, align 8, !tbaa !158
  %i.bnd = load i64, ptr %i.at, align 8, !tbaa !159
  %i.bne = mul nsw i64 %i.bnd, %i.bnc
  store i64 %i.bne, ptr %i.ar, align 8, !tbaa !157
  br label %bb.fo

bb.fo:                                            ; preds = %solver_reduce_cdb.exit, %bb.dv, %bb.du, %bb.dt
  %.val79210 = load ptr, ptr %i.e, align 8, !tbaa !48 ; 2 uses
  %i.bnf = getelementptr i8, ptr %.val79210, i64 4 ; 2 uses
  %.val79.val211 = load i32, ptr %i.bnf, align 4, !tbaa !8 ; 2 uses
  %i.bng = load ptr, ptr %i.bc, align 8, !tbaa !179 ; 2 uses
  %i.bnh = getelementptr i8, ptr %i.bng, i64 4
  %.val74212 = load i32, ptr %i.bnh, align 4, !tbaa !8
  %i.bni = icmp ult i32 %.val79.val211, %.val74212
  br i1 %i.bni, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.fo, %solver_analyze_final.exit
  %i.bnj = phi ptr [ %i.bsh, %solver_analyze_final.exit ], [ %i.bng, %bb.fo ] ; 3 uses
  %.val79254 = phi ptr [ %.val79, %solver_analyze_final.exit ], [ %.val79210, %bb.fo ] ; 8 uses
  %.val79.val214 = phi i32 [ %.val79.val, %solver_analyze_final.exit ], [ %.val79.val211, %bb.fo ] ; 5 uses
  %i.bnk = phi ptr [ %i.bsn, %solver_analyze_final.exit ], [ %i.bnf, %bb.fo ] ; 3 uses
  %i.bnl = getelementptr i8, ptr %i.bnj, i64 8
  %.val77 = load ptr, ptr %i.bnl, align 8, !tbaa !34
  %i.bnm = zext i32 %.val79.val214 to i64         ; 3 uses
  %i.bnn = getelementptr inbounds nuw [4 x i8], ptr %.val77, i64 %i.bnm
  %i.bno = load i32, ptr %i.bnn, align 4, !tbaa !37 ; 5 uses
  %.val83 = load ptr, ptr %i.o, align 8, !tbaa !50
  %i.bnp = getelementptr i8, ptr %.val83, i64 8
  %.val83.val = load ptr, ptr %i.bnp, align 8, !tbaa !51
  %i.bnq = trunc i32 %i.bno to i8
  %i.bnr = and i8 %i.bnq, 1
  %i.bns = lshr i32 %i.bno, 1
  %i.bnt = zext nneg i32 %i.bns to i64            ; 3 uses
  %i.bnu = getelementptr inbounds nuw i8, ptr %.val83.val, i64 %i.bnt
  %i.bnv = load i8, ptr %i.bnu, align 1, !tbaa !42
  %i.bnw = xor i8 %i.bnv, %i.bnr
  switch i8 %i.bnw, label %bb.ge [
    i8 0, label %bb.fp
    i8 1, label %bb.ft
  ]

bb.fp:                                            ; preds = %.lr.ph
  %i.bnx = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.bny = getelementptr i8, ptr %i.bnx, i64 4
  %.val = load i32, ptr %i.bny, align 4, !tbaa !8
  %i.bnz = load i32, ptr %.val79254, align 8, !tbaa !36
  %i.boa = icmp eq i32 %.val79.val214, %i.bnz
  br i1 %i.boa, label %bb.fq, label %solver_analyze_final.exit

bb.fq:                                            ; preds = %bb.fp
  %i.bob = icmp ult i32 %.val79.val214, 16
  br i1 %i.bob, label %vec_uint_reserve.exit.i, label %bb.fr

vec_uint_reserve.exit.i:                          ; preds = %bb.fq
  %i.boc = getelementptr inbounds nuw i8, ptr %.val79254, i64 8 ; 2 uses
  %i.bod = load ptr, ptr %i.boc, align 8, !tbaa !34
  %i.boe = call dereferenceable_or_null(64) ptr @realloc(ptr noundef %i.bod, i64 noundef 64) #18
  store ptr %i.boe, ptr %i.boc, align 8, !tbaa !34
  br label %vec_uint_reserve.exit10.sink.split.i

bb.fr:                                            ; preds = %bb.fq
  %.not.i9.i = icmp sgt i32 %.val79.val214, 0
  br i1 %.not.i9.i, label %bb.fs, label %solver_analyze_final.exit

bb.fs:                                            ; preds = %bb.fr
  %i.bof = shl nuw i32 %.val79.val214, 1          ; 2 uses
  %i.bog = getelementptr inbounds nuw i8, ptr %.val79254, i64 8 ; 2 uses
  %i.boh = load ptr, ptr %i.bog, align 8, !tbaa !34
  %i.boi = zext i32 %i.bof to i64
  %i.boj = shl nuw nsw i64 %i.boi, 2
  %i.bok = call ptr @realloc(ptr noundef %i.boh, i64 noundef %i.boj) #18
  store ptr %i.bok, ptr %i.bog, align 8, !tbaa !34
  br label %vec_uint_reserve.exit10.sink.split.i

vec_uint_reserve.exit10.sink.split.i:             ; preds = %bb.fs, %vec_uint_reserve.exit.i
  %.sink.i = phi i32 [ %i.bof, %bb.fs ], [ 16, %vec_uint_reserve.exit.i ]
  store i32 %.sink.i, ptr %.val79254, align 8, !tbaa !36
  %.pre253 = load i32, ptr %i.bnk, align 4, !tbaa !8
  %.val79.pre = load ptr, ptr %i.e, align 8, !tbaa !48
  %.pre256 = load ptr, ptr %i.bc, align 8, !tbaa !179
  %.pre257 = zext i32 %.pre253 to i64
  br label %solver_analyze_final.exit

bb.ft:                                            ; preds = %.lr.ph
  %i.bol = xor i32 %i.bno, 1
  %i.bom = load ptr, ptr %i.bd, align 8, !tbaa !180 ; 4 uses
  %i.bon = getelementptr inbounds nuw i8, ptr %i.bom, i64 4 ; 4 uses
  store i32 0, ptr %i.bon, align 4, !tbaa !8
  %i.boo = load i32, ptr %i.bom, align 8, !tbaa !36
  %i.bop = icmp eq i32 %i.boo, 0
  %i.boq = getelementptr inbounds nuw i8, ptr %i.bom, i64 8 ; 2 uses
  %i.bor = load ptr, ptr %i.boq, align 8, !tbaa !34 ; 2 uses
  br i1 %i.bop, label %vec_uint_reserve.exit10.sink.split.i.i120, label %vec_uint_push_back.exit.i112

vec_uint_reserve.exit10.sink.split.i.i120:        ; preds = %bb.ft
  %i.bos = call dereferenceable_or_null(64) ptr @realloc(ptr noundef %i.bor, i64 noundef 64) #18 ; 2 uses
  store ptr %i.bos, ptr %i.boq, align 8, !tbaa !34
  store i32 16, ptr %i.bom, align 8, !tbaa !36
  %.pre58.i = load i32, ptr %i.bon, align 4, !tbaa !8
  %i.bot = zext i32 %.pre58.i to i64
  %.val42.i.pre = load ptr, ptr %i.e, align 8, !tbaa !48
  br label %vec_uint_push_back.exit.i112

vec_uint_push_back.exit.i112:                     ; preds = %vec_uint_reserve.exit10.sink.split.i.i120, %bb.ft
  %.val42.i = phi ptr [ %.val42.i.pre, %vec_uint_reserve.exit10.sink.split.i.i120 ], [ %.val79254, %bb.ft ]
  %i.bou = phi i64 [ %i.bot, %vec_uint_reserve.exit10.sink.split.i.i120 ], [ 0, %bb.ft ]
  %i.bov = phi ptr [ %i.bos, %vec_uint_reserve.exit10.sink.split.i.i120 ], [ %i.bor, %bb.ft ]
  %i.bow = getelementptr inbounds nuw [4 x i8], ptr %i.bov, i64 %i.bou
  store i32 %i.bol, ptr %i.bow, align 4, !tbaa !37
  %i.box = load i32, ptr %i.bon, align 4, !tbaa !8
  %i.boy = add i32 %i.box, 1
  store i32 %i.boy, ptr %i.bon, align 4, !tbaa !8
  %i.boz = getelementptr i8, ptr %.val42.i, i64 4
  %.val42.val.i = load i32, ptr %i.boz, align 4, !tbaa !8
  %i.bpa = icmp eq i32 %.val42.val.i, 0
  br i1 %i.bpa, label %.thread161, label %bb.fu

bb.fu:                                            ; preds = %vec_uint_push_back.exit.i112
  %i.bpb = load ptr, ptr %i.n, align 8, !tbaa !115
  %i.bpc = getelementptr i8, ptr %i.bpb, i64 8
  %.val46.i = load ptr, ptr %i.bpc, align 8, !tbaa !51
  %i.bpd = getelementptr inbounds nuw i8, ptr %.val46.i, i64 %i.bnt
  store i8 1, ptr %i.bpd, align 1, !tbaa !42
  %i.bpe = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.bpf = getelementptr i8, ptr %i.bpe, i64 4
  %.val.i113 = load i32, ptr %i.bpf, align 4, !tbaa !8 ; 2 uses
  %i.bpg = load ptr, ptr %i.e, align 8, !tbaa !48 ; 2 uses
  %i.bph = getelementptr i8, ptr %i.bpg, i64 8
  %.val4055.i = load ptr, ptr %i.bph, align 8, !tbaa !34
  %i.bpi = load i32, ptr %.val4055.i, align 4, !tbaa !37
  %i.bpj = icmp ugt i32 %.val.i113, %i.bpi
  br i1 %i.bpj, label %.lr.ph56.i.preheader, label %._crit_edge.i114

.lr.ph56.i.preheader:                             ; preds = %bb.fu
  %i.bpk = zext i32 %.val.i113 to i64
  br label %.lr.ph56.i

.lr.ph56.i:                                       ; preds = %.lr.ph56.i.preheader, %bb.gd
  %indvars.iv = phi i64 [ %i.bpk, %.lr.ph56.i.preheader ], [ %i.bpm, %bb.gd ]
  %i.bpl = phi ptr [ %i.bpg, %.lr.ph56.i.preheader ], [ %i.bsa, %bb.gd ]
  %i.bpm = add nsw i64 %indvars.iv, -1            ; 3 uses
  %i.bpn = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.bpo = getelementptr i8, ptr %i.bpn, i64 8
  %.val39.i = load ptr, ptr %i.bpo, align 8, !tbaa !34
  %i.bpp = getelementptr inbounds nuw [4 x i8], ptr %.val39.i, i64 %i.bpm
  %i.bpq = load i32, ptr %i.bpp, align 4, !tbaa !37 ; 2 uses
  %i.bpr = lshr i32 %i.bpq, 1
  %i.bps = load ptr, ptr %i.n, align 8, !tbaa !115
  %i.bpt = getelementptr i8, ptr %i.bps, i64 8
  %.val47.i = load ptr, ptr %i.bpt, align 8, !tbaa !51
  %i.bpu = zext nneg i32 %i.bpr to i64            ; 3 uses
  %i.bpv = getelementptr inbounds nuw i8, ptr %.val47.i, i64 %i.bpu
  %i.bpw = load i8, ptr %i.bpv, align 1, !tbaa !42
  %.not.i115 = icmp eq i8 %i.bpw, 0
  br i1 %.not.i115, label %bb.gd, label %bb.fv

bb.fv:                                            ; preds = %.lr.ph56.i
  %.val48.i = load ptr, ptr %i.l, align 8, !tbaa !54
  %i.bpx = getelementptr i8, ptr %.val48.i, i64 8
  %.val48.val.i = load ptr, ptr %i.bpx, align 8, !tbaa !34
  %i.bpy = getelementptr inbounds nuw [4 x i8], ptr %.val48.val.i, i64 %i.bpu
  %i.bpz = load i32, ptr %i.bpy, align 4, !tbaa !37 ; 2 uses
  %i.bqa = icmp eq i32 %i.bpz, -1
  br i1 %i.bqa, label %bb.fw, label %clause_fetch.exit.i116

bb.fw:                                            ; preds = %bb.fv
  %i.bqb = load ptr, ptr %i.bd, align 8, !tbaa !180 ; 6 uses
  %i.bqc = xor i32 %i.bpq, 1
  %i.bqd = getelementptr inbounds nuw i8, ptr %i.bqb, i64 4 ; 4 uses
  %i.bqe = load i32, ptr %i.bqd, align 4, !tbaa !8 ; 6 uses
  %i.bqf = load i32, ptr %i.bqb, align 8, !tbaa !36
  %i.bqg = icmp eq i32 %i.bqe, %i.bqf
  br i1 %i.bqg, label %bb.fx, label %vec_uint_push_back.exit53.i

bb.fx:                                            ; preds = %bb.fw
  %i.bqh = icmp ult i32 %i.bqe, 16
  br i1 %i.bqh, label %vec_uint_reserve.exit.i52.i, label %bb.fy

vec_uint_reserve.exit.i52.i:                      ; preds = %bb.fx
  %i.bqi = getelementptr inbounds nuw i8, ptr %i.bqb, i64 8 ; 2 uses
  %i.bqj = load ptr, ptr %i.bqi, align 8, !tbaa !34
  %i.bqk = call dereferenceable_or_null(64) ptr @realloc(ptr noundef %i.bqj, i64 noundef 64) #18
  store ptr %i.bqk, ptr %i.bqi, align 8, !tbaa !34
  br label %vec_uint_reserve.exit10.sink.split.i50.i

bb.fy:                                            ; preds = %bb.fx
  %.not.i9.i49.i = icmp sgt i32 %i.bqe, 0
  br i1 %.not.i9.i49.i, label %bb.fz, label %vec_uint_push_back.exit53.i

bb.fz:                                            ; preds = %bb.fy
  %i.bql = shl nuw i32 %i.bqe, 1                  ; 2 uses
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bqb, i64 8 ; 2 uses
  %i.bqn = load ptr, ptr %i.bqm, align 8, !tbaa !34
  %i.bqo = zext i32 %i.bql to i64
  %i.bqp = shl nuw nsw i64 %i.bqo, 2
  %i.bqq = call ptr @realloc(ptr noundef %i.bqn, i64 noundef %i.bqp) #18
  store ptr %i.bqq, ptr %i.bqm, align 8, !tbaa !34
  br label %vec_uint_reserve.exit10.sink.split.i50.i

vec_uint_reserve.exit10.sink.split.i50.i:         ; preds = %bb.fz, %vec_uint_reserve.exit.i52.i
  %.sink.i51.i = phi i32 [ %i.bql, %bb.fz ], [ 16, %vec_uint_reserve.exit.i52.i ]
  store i32 %.sink.i51.i, ptr %i.bqb, align 8, !tbaa !36
  %.pre60.i = load i32, ptr %i.bqd, align 4, !tbaa !8
  br label %vec_uint_push_back.exit53.i

vec_uint_push_back.exit53.i:                      ; preds = %vec_uint_reserve.exit10.sink.split.i50.i, %bb.fy, %bb.fw
  %i.bqr = phi i32 [ %i.bqe, %bb.fw ], [ %i.bqe, %bb.fy ], [ %.pre60.i, %vec_uint_reserve.exit10.sink.split.i50.i ]
  %i.bqs = getelementptr inbounds nuw i8, ptr %i.bqb, i64 8
  %i.bqt = load ptr, ptr %i.bqs, align 8, !tbaa !34
  %i.bqu = zext i32 %i.bqr to i64
  %i.bqv = getelementptr inbounds nuw [4 x i8], ptr %i.bqt, i64 %i.bqu
  store i32 %i.bqc, ptr %i.bqv, align 4, !tbaa !37
  %i.bqw = load i32, ptr %i.bqd, align 4, !tbaa !8
  %i.bqx = add i32 %i.bqw, 1
  store i32 %i.bqx, ptr %i.bqd, align 4, !tbaa !8
  br label %.loopexit.i

clause_fetch.exit.i116:                           ; preds = %bb.fv
  %.val37.i = load ptr, ptr %i.m, align 8, !tbaa !12
  %i.bqy = getelementptr inbounds nuw i8, ptr %.val37.i, i64 16
  %i.bqz = load ptr, ptr %i.bqy, align 8, !tbaa !31
  %i.bra = zext i32 %i.bpz to i64
  %i.brb = getelementptr inbounds nuw [4 x i8], ptr %i.bqz, i64 %i.bra ; 2 uses
  %i.brc = getelementptr inbounds nuw i8, ptr %i.brb, i64 4 ; 2 uses
  %i.brd = load i32, ptr %i.brc, align 4, !tbaa !32 ; 3 uses
  %i.bre = icmp ne i32 %i.brd, 2                  ; 2 uses
  %i.brf = zext i1 %i.bre to i32
  %i.brg = icmp ugt i32 %i.brd, %i.brf
  br i1 %i.brg, label %.lr.ph.i117, label %.loopexit.i

.lr.ph.i117:                                      ; preds = %clause_fetch.exit.i116
  %i.brh = getelementptr inbounds nuw i8, ptr %i.brb, i64 8
  %i.bri = zext i1 %i.bre to i64
  br label %bb.ga

bb.ga:                                            ; preds = %bb.gc, %.lr.ph.i117
  %i.brj = phi i32 [ %i.brd, %.lr.ph.i117 ], [ %i.bru, %bb.gc ]
  %indvars.iv.i118 = phi i64 [ %i.bri, %.lr.ph.i117 ], [ %indvars.iv.next.i119, %bb.gc ] ; 2 uses
  %i.brk = getelementptr inbounds nuw [4 x i8], ptr %i.brh, i64 %indvars.iv.i118
  %i.brl = load i32, ptr %i.brk, align 4, !tbaa !42
  %.val41.i = load ptr, ptr %i.s, align 8, !tbaa !39
  %i.brm = getelementptr i8, ptr %.val41.i, i64 8
  %.val41.val.i = load ptr, ptr %i.brm, align 8, !tbaa !34
  %i.brn = lshr i32 %i.brl, 1
  %i.bro = zext nneg i32 %i.brn to i64            ; 2 uses
  %i.brp = getelementptr inbounds nuw [4 x i8], ptr %.val41.val.i, i64 %i.bro
  %i.brq = load i32, ptr %i.brp, align 4, !tbaa !37
  %.not36.i = icmp eq i32 %i.brq, 0
  br i1 %.not36.i, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.brr = load ptr, ptr %i.n, align 8, !tbaa !115
  %i.brs = getelementptr i8, ptr %i.brr, i64 8
  %.val45.i = load ptr, ptr %i.brs, align 8, !tbaa !51
  %i.brt = getelementptr inbounds nuw i8, ptr %.val45.i, i64 %i.bro
  store i8 1, ptr %i.brt, align 1, !tbaa !42
  %.pre59.i = load i32, ptr %i.brc, align 4, !tbaa !32
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %i.bru = phi i32 [ %i.brj, %bb.ga ], [ %.pre59.i, %bb.gb ] ; 2 uses
  %indvars.iv.next.i119 = add nuw nsw i64 %indvars.iv.i118, 1 ; 2 uses
  %i.brv = zext i32 %i.bru to i64
  %i.brw = icmp samesign ult i64 %indvars.iv.next.i119, %i.brv
  br i1 %i.brw, label %bb.ga, label %.loopexit.i, !llvm.loop !181

.loopexit.i:                                      ; preds = %bb.gc, %clause_fetch.exit.i116, %vec_uint_push_back.exit53.i
  %i.brx = load ptr, ptr %i.n, align 8, !tbaa !115
  %i.bry = getelementptr i8, ptr %i.brx, i64 8
  %.val44.i = load ptr, ptr %i.bry, align 8, !tbaa !51
  %i.brz = getelementptr inbounds nuw i8, ptr %.val44.i, i64 %i.bpu
  store i8 0, ptr %i.brz, align 1, !tbaa !42
  %.pre61.i = load ptr, ptr %i.e, align 8, !tbaa !48
  br label %bb.gd

bb.gd:                                            ; preds = %.loopexit.i, %.lr.ph56.i
  %i.bsa = phi ptr [ %.pre61.i, %.loopexit.i ], [ %i.bpl, %.lr.ph56.i ] ; 2 uses
  %i.bsb = getelementptr i8, ptr %i.bsa, i64 8
  %.val40.i = load ptr, ptr %i.bsb, align 8, !tbaa !34
  %i.bsc = load i32, ptr %.val40.i, align 4, !tbaa !37
  %i.bsd = zext i32 %i.bsc to i64
  %.wide = icmp ugt i64 %i.bpm, %i.bsd
  br i1 %.wide, label %.lr.ph56.i, label %._crit_edge.i114, !llvm.loop !182

._crit_edge.i114:                                 ; preds = %bb.gd, %bb.fu
  %i.bse = load ptr, ptr %i.n, align 8, !tbaa !115
  %i.bsf = getelementptr i8, ptr %i.bse, i64 8
  %.val43.i = load ptr, ptr %i.bsf, align 8, !tbaa !51
  %i.bsg = getelementptr inbounds nuw i8, ptr %.val43.i, i64 %i.bnt
  store i8 0, ptr %i.bsg, align 1, !tbaa !42
  br label %.thread161

solver_analyze_final.exit:                        ; preds = %vec_uint_reserve.exit10.sink.split.i, %bb.fr, %bb.fp
  %.pre-phi = phi i64 [ %.pre257, %vec_uint_reserve.exit10.sink.split.i ], [ %i.bnm, %bb.fr ], [ %i.bnm, %bb.fp ]
  %i.bsh = phi ptr [ %.pre256, %vec_uint_reserve.exit10.sink.split.i ], [ %i.bnj, %bb.fr ], [ %i.bnj, %bb.fp ] ; 2 uses
  %.val79 = phi ptr [ %.val79.pre, %vec_uint_reserve.exit10.sink.split.i ], [ %.val79254, %bb.fr ], [ %.val79254, %bb.fp ] ; 2 uses
  %i.bsi = getelementptr inbounds nuw i8, ptr %.val79254, i64 8
  %i.bsj = load ptr, ptr %i.bsi, align 8, !tbaa !34
  %i.bsk = getelementptr inbounds nuw [4 x i8], ptr %i.bsj, i64 %.pre-phi
  store i32 %.val, ptr %i.bsk, align 4, !tbaa !37
  %i.bsl = load i32, ptr %i.bnk, align 4, !tbaa !8
  %i.bsm = add i32 %i.bsl, 1
  store i32 %i.bsm, ptr %i.bnk, align 4, !tbaa !8
  %i.bsn = getelementptr i8, ptr %.val79, i64 4   ; 2 uses
  %.val79.val = load i32, ptr %i.bsn, align 4, !tbaa !8 ; 2 uses
  %i.bso = getelementptr i8, ptr %i.bsh, i64 4
  %.val74 = load i32, ptr %i.bso, align 4, !tbaa !8
  %i.bsp = icmp ult i32 %.val79.val, %.val74
  br i1 %i.bsp, label %.lr.ph, label %.thread

bb.ge:                                            ; preds = %.lr.ph
  %i.bsq = icmp eq i32 %i.bno, -1
  br i1 %i.bsq, label %.thread, label %bb.go

.thread:                                          ; preds = %solver_analyze_final.exit, %bb.fo, %bb.ge
  %i.bsr = load i64, ptr %i.be, align 8, !tbaa !183
  %i.bss = add nsw i64 %i.bsr, 1
  store i64 %i.bss, ptr %i.be, align 8, !tbaa !183
  br label %bb.gf

bb.gf:                                            ; preds = %.backedge, %.thread
  %.0.i121 = phi i32 [ -1, %.thread ], [ %.0.i121.be, %.backedge ] ; 4 uses
  %i.bst = icmp eq i32 %.0.i121, -1
  br i1 %i.bst, label %.critedge.i123, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %.val15.i = load ptr, ptr %i.o, align 8, !tbaa !50
  %i.bsu = getelementptr i8, ptr %.val15.i, i64 8
  %.val15.val.i = load ptr, ptr %i.bsu, align 8, !tbaa !51
  %i.bsv = zext i32 %.0.i121 to i64
  %i.bsw = getelementptr inbounds nuw i8, ptr %.val15.val.i, i64 %i.bsv
  %i.bsx = load i8, ptr %i.bsw, align 1, !tbaa !42
  %.not.i122 = icmp eq i8 %i.bsx, 3
  br i1 %.not.i122, label %solver_decide.exit, label %.critedge.i123

.critedge.i123:                                   ; preds = %bb.gg, %bb.gf
  %i.bsy = load ptr, ptr %i.y, align 8, !tbaa !55 ; 3 uses
  %i.bsz = getelementptr i8, ptr %i.bsy, i64 8
  %.val16.i124 = load ptr, ptr %i.bsz, align 8, !tbaa !64 ; 2 uses
  %i.bta = getelementptr i8, ptr %.val16.i124, i64 4 ; 4 uses
  %.val16.val.i = load i32, ptr %i.bta, align 4, !tbaa !8 ; 2 uses
end_hunk_3
begin_hunk_4_@solver_debug_check_clauses:bb.a
  %i.aw = icmp samesign ult i64 %indvars.iv.next.i25, %i.av
  br i1 %i.aw, label %bb.d, label %vec_uint_print.exit, !llvm.loop !187

vec_uint_print.exit:                              ; preds = %bb.d, %vec_uint_find.exit.thread.thread
  %i.ax = load ptr, ptr @stdout, align 8, !tbaa !91
  %i.ay = tail call i64 @fwrite(ptr nonnull @.str.13, i64 3, i64 1, ptr %i.ax) ; 0 uses
  %i.az = load ptr, ptr @stdout, align 8, !tbaa !91
  %i.ba = trunc nuw i64 %indvars.iv50 to i32
  %i.bb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.az, ptr noundef nonnull @.str.5, i32 noundef %i.ba) #19 ; 0 uses
  %i.bc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14) ; 0 uses
  %i.bd = load i32, ptr %i.r, align 4, !tbaa !32
  %.not.i26 = icmp eq i32 %i.bd, 0
  br i1 %.not.i26, label %clause_print.exit, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %vec_uint_print.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i27
  %indvars.iv.i28 = phi i64 [ 0, %.lr.ph.i27 ], [ %indvars.iv.next.i29, %bb.e ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i28
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !42
  %i.bh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %i.bg) ; 0 uses
  %indvars.iv.next.i29 = add nuw nsw i64 %indvars.iv.i28, 1 ; 2 uses
  %i.bi = load i32, ptr %i.r, align 4, !tbaa !32
  %i.bj = zext i32 %i.bi to i64
  %i.bk = icmp samesign ult i64 %indvars.iv.next.i29, %i.bj
  br i1 %i.bk, label %bb.e, label %clause_print.exit, !llvm.loop !190

clause_print.exit:                                ; preds = %bb.e, %vec_uint_print.exit
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !46
  br label %.critedge56

.critedge56:                                      ; preds = %.lr.ph, %clause_print.exit, %vec_uint_find.exit.thread.loopexit
  %i.bl = phi ptr [ %.pre, %clause_print.exit ], [ %i.j, %vec_uint_find.exit.thread.loopexit ], [ %i.j, %.lr.ph ] ; 2 uses
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 4
  %.val = load i32, ptr %i.bm, align 4, !tbaa !8
  %i.bn = zext i32 %.val to i64
  %i.bo = icmp samesign ult i64 %indvars.iv.next51, %i.bn
  br i1 %i.bo, label %clause_fetch.exit, label %.critedge, !llvm.loop !191

.critedge:                                        ; preds = %.critedge56, %bb.a
  %i.bp = load ptr, ptr @stdout, align 8, !tbaa !91
  %i.bq = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %i.bp) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define void @solver_debug_check(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  tail call void @solver_debug_check_trail(ptr noundef %0)
  %i.a = load ptr, ptr @stdout, align 8, !tbaa !91
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.d = getelementptr i8, ptr %i.c, i64 4
  %.val20 = load i32, ptr %i.d, align 4, !tbaa !8
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.7, i32 noundef %.val20) #19 ; 0 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %.val38 = load i32, ptr %i.g, align 4, !tbaa !8
  %.not = icmp eq i32 %.val38, 0
  br i1 %.not, label %.critedge, label %.lr.ph40

.lr.ph40:                                         ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = icmp eq i32 %1, 1
  br i1 %i.j, label %.lr.ph40.split, label %.critedge

.lr.ph40.split:                                   ; preds = %.lr.ph40, %bb.e
  %i.k = phi ptr [ %i.at, %bb.e ], [ %i.f, %.lr.ph40 ] ; 2 uses
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %bb.e ], [ 0, %.lr.ph40 ] ; 3 uses
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %.val22 = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.val22, i64 %indvars.iv60
  %i.n = load i32, ptr %i.m, align 4, !tbaa !37   ; 2 uses
  %.not.i.i = icmp ne i32 %i.n, -1
  tail call void @llvm.assume(i1 %.not.i.i)
  %.val21 = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %.val21, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31
  %i.q = zext i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !32   ; 3 uses
  %.not46 = icmp eq i32 %i.t, 0
  br i1 %.not46, label %vec_uint_find.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph40.split
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !49   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !8    ; 2 uses
  %.not.i = icmp eq i32 %i.x, 0
  %wide.trip.count.i = zext i32 %i.x to i64
  br i1 %.not.i, label %vec_uint_find.exit.thread, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !34
  %wide.trip.count = zext i32 %i.t to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.split, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !42
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.c, !llvm.loop !188

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !37
  %i.ae = icmp eq i32 %i.ad, %i.ab
  br i1 %i.ae, label %vec_uint_find.exit.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %vec_uint_find.exit.thread, label %.lr.ph.i, !llvm.loop !192

vec_uint_find.exit.loopexit:                      ; preds = %bb.c
  %i.af = trunc nuw i64 %indvars.iv to i32
  %i.ag = icmp eq i32 %i.t, %i.af
  br i1 %i.ag, label %vec_uint_find.exit.thread, label %bb.e

vec_uint_find.exit.thread:                        ; preds = %.loopexit, %.lr.ph40.split, %.lr.ph, %vec_uint_find.exit.loopexit
  %i.ah = load ptr, ptr @stdout, align 8, !tbaa !91
  %i.ai = trunc nuw i64 %indvars.iv60 to i32
  %i.aj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ah, ptr noundef nonnull @.str.8, i32 noundef %i.ai) #19 ; 0 uses
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14) ; 0 uses
  %i.al = load i32, ptr %i.s, align 4, !tbaa !32
  %.not.i23 = icmp eq i32 %i.al, 0
  br i1 %.not.i23, label %clause_print.exit, label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %vec_uint_find.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i24
  %indvars.iv.i25 = phi i64 [ 0, %.lr.ph.i24 ], [ %indvars.iv.next.i26, %bb.d ] ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.i25
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !42
  %i.ap = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %i.ao) ; 0 uses
  %indvars.iv.next.i26 = add nuw nsw i64 %indvars.iv.i25, 1 ; 2 uses
  %i.aq = load i32, ptr %i.s, align 4, !tbaa !32
  %i.ar = zext i32 %i.aq to i64
  %i.as = icmp samesign ult i64 %indvars.iv.next.i26, %i.ar
  br i1 %i.as, label %bb.d, label %clause_print.exit, !llvm.loop !190

clause_print.exit:                                ; preds = %bb.d, %vec_uint_find.exit.thread
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !46
  br label %bb.e

bb.e:                                             ; preds = %clause_print.exit, %vec_uint_find.exit.loopexit
  %i.at = phi ptr [ %.pre, %clause_print.exit ], [ %i.k, %vec_uint_find.exit.loopexit ] ; 2 uses
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 4
  %.val = load i32, ptr %i.au, align 4, !tbaa !8
  %i.av = zext i32 %.val to i64
  %i.aw = icmp samesign ult i64 %indvars.iv.next61, %i.av
  br i1 %i.aw, label %.lr.ph40.split, label %.critedge, !llvm.loop !193

.critedge:                                        ; preds = %bb.e, %.lr.ph40, %bb.a
  %i.ax = load ptr, ptr @stdout, align 8, !tbaa !91
  %i.ay = tail call i64 @fwrite(ptr nonnull @.str.6, i64 22, i64 1, ptr %i.ax) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @satoko_sort(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #9 {
bb.a:
  %i.a = icmp ult i32 %1, 16
  br i1 %i.a, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %.us-phi26, %tailrecurse ] ; 4 uses
  %.tr3.lcssa = phi i32 [ %1, %bb.a ], [ %i.eo, %tailrecurse ] ; 2 uses
  %i.b = add nsw i32 %.tr3.lcssa, -1              ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %select_sort.exit, label %.lr.ph14.preheader.i

.lr.ph14.preheader.i:                             ; preds = %tailrecurse._crit_edge
  %i.c = zext nneg i32 %.tr3.lcssa to i64         ; 2 uses
  %wide.trip.count.i = zext i32 %i.b to i64
  br label %.lr.ph14.i

.lr.ph14.i:                                       ; preds = %._crit_edge.i, %.lr.ph14.preheader.i
  %indvars.iv19.i = phi i64 [ 0, %.lr.ph14.preheader.i ], [ %indvars.iv.next20.i, %._crit_edge.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ 1, %.lr.ph14.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1 ; 3 uses
  %i.d = icmp samesign ult i64 %indvars.iv.next20.i, %i.c
  br i1 %i.d, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph14.i
  %i.e = trunc nuw i64 %indvars.iv19.i to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %clause_compare.exit.thread5.i, %.lr.ph.preheader.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.i, %.lr.ph.preheader.i ], [ %indvars.iv.next17.i, %clause_compare.exit.thread5.i ] ; 3 uses
  %.011.i = phi i32 [ %i.e, %.lr.ph.preheader.i ], [ %i.al, %clause_compare.exit.thread5.i ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %.tr.lcssa, i64 %indvars.iv16.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !194  ; 3 uses
  %i.h = zext i32 %.011.i to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.tr.lcssa, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !194  ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !32   ; 3 uses
  %i.m = icmp ugt i32 %i.l, 2
  %i.n = trunc nuw i64 %indvars.iv16.i to i32     ; 3 uses
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !32
  %i.q = icmp eq i32 %i.p, 2
  br i1 %i.q, label %clause_compare.exit.thread5.i, label %.thread19.i.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.r = icmp eq i32 %i.l, 2
  br i1 %i.r, label %bb.d, label %.thread19.i.i

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !32
  %or.cond.i.i = icmp ugt i32 %i.t, 1
  br i1 %or.cond.i.i, label %clause_compare.exit.thread.i, label %.thread19.i.i

.thread19.i.i:                                    ; preds = %bb.d, %bb.c, %bb.b
  %i.u = load i32, ptr %i.g, align 4
  %i.v = lshr i32 %i.u, 4                         ; 2 uses
  %i.w = load i32, ptr %i.j, align 4
  %i.x = lshr i32 %i.w, 4                         ; 2 uses
  %i.y = icmp samesign ugt i32 %i.v, %i.x
  br i1 %i.y, label %clause_compare.exit.thread5.i, label %bb.e

bb.e:                                             ; preds = %.thread19.i.i
  %i.z = icmp samesign ult i32 %i.v, %i.x
  br i1 %i.z, label %clause_compare.exit.thread.i, label %clause_compare.exit.i

clause_compare.exit.i:                            ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ab = zext i32 %i.l to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !42
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !32
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !42
  %i.ak = icmp uge i32 %i.ad, %i.aj
  %cond.fr.i = freeze i1 %i.ak
  br i1 %cond.fr.i, label %clause_compare.exit.thread.i, label %clause_compare.exit.thread5.i

clause_compare.exit.thread.i:                     ; preds = %clause_compare.exit.i, %bb.e, %bb.d
  br label %clause_compare.exit.thread5.i

clause_compare.exit.thread5.i:                    ; preds = %clause_compare.exit.thread.i, %clause_compare.exit.i, %.thread19.i.i, %bb.b
  %i.al = phi i32 [ %.011.i, %clause_compare.exit.thread.i ], [ %i.n, %clause_compare.exit.i ], [ %i.n, %bb.b ], [ %i.n, %.thread19.i.i ] ; 2 uses
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next17.i, %i.c
  br i1 %exitcond, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !195

._crit_edge.loopexit.i:                           ; preds = %clause_compare.exit.thread5.i
  %i.am = zext i32 %i.al to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.lr.ph14.i
  %.0.lcssa.i = phi i64 [ %indvars.iv19.i, %.lr.ph14.i ], [ %i.am, %._crit_edge.loopexit.i ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.tr.lcssa, i64 %indvars.iv19.i ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !194
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.tr.lcssa, i64 %.0.lcssa.i ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !194
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !194
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !194
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond22.not.i = icmp eq i64 %indvars.iv.next20.i, %wide.trip.count.i
  br i1 %exitcond22.not.i, label %select_sort.exit, label %.lr.ph14.i, !llvm.loop !196

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.tr328 = phi i32 [ %i.eo, %tailrecurse ], [ %1, %bb.a ] ; 4 uses
  %.tr27 = phi ptr [ %.us-phi26, %tailrecurse ], [ %0, %bb.a ] ; 11 uses
  %i.ar = lshr i32 %.tr328, 1
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.tr27, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !194 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !32 ; 8 uses
  %i.ay = icmp ugt i32 %i.ax, 2
  %i.az = icmp eq i32 %i.ax, 2
  %i.ba = zext i32 %i.ax to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ba ; 4 uses
  br i1 %i.ay, label %.split.us, label %.split

.split.us:                                        ; preds = %.lr.ph, %bb.g
  %.035.us = phi i32 [ %i.cc, %bb.g ], [ %.tr328, %.lr.ph ]
  %.0.us = phi i64 [ %indvars.iv.next59.lcssa, %bb.g ], [ -1, %.lr.ph ]
  %indvars.iv.next59128 = add nsw i64 %.0.us, 1   ; 3 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %.tr27, i64 %indvars.iv.next59128
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !194 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !32 ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 2
  br i1 %i.bg, label %.preheader.us, label %.thread19.i.us.preheader

.thread19.i.us.preheader:                         ; preds = %.split.us
  %i.bh = load i32, ptr %i.au, align 4
  %i.bi = lshr i32 %i.bh, 4                       ; 2 uses
  br label %.thread19.i.us

.thread19.i.us:                                   ; preds = %.thread19.i.us.preheader, %.backedge6.us
  %i.bj = phi i32 [ %i.ca, %.backedge6.us ], [ %i.bf, %.thread19.i.us.preheader ]
  %i.bk = phi ptr [ %i.by, %.backedge6.us ], [ %i.bd, %.thread19.i.us.preheader ] ; 4 uses
  %indvars.iv.next59129 = phi i64 [ %indvars.iv.next59, %.backedge6.us ], [ %indvars.iv.next59128, %.thread19.i.us.preheader ] ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = lshr i32 %i.bl, 4                       ; 2 uses
  %i.bn = icmp samesign ugt i32 %i.bm, %i.bi
  br i1 %i.bn, label %.backedge6.us, label %bb.f

bb.f:                                             ; preds = %.thread19.i.us
  %i.bo = icmp samesign ult i32 %i.bm, %i.bi
  br i1 %i.bo, label %.preheader.us, label %clause_compare.exit.us

clause_compare.exit.us:                           ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bq = zext i32 %i.bj to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !42
  %i.bt = load i32, ptr %i.bb, align 4, !tbaa !42
  %.not31 = icmp ult i32 %i.bs, %i.bt
  br i1 %.not31, label %.backedge6.us, label %.preheader.us

bb.g:                                             ; preds = %clause_compare.exit47.thread.split.us.us
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.tr27, i64 %i.cd
  store ptr %i.cf, ptr %i.bv, align 8, !tbaa !194
  store ptr %.lcssa121, ptr %i.bu, align 8, !tbaa !194
  br label %.split.us

.preheader.us:                                    ; preds = %bb.f, %clause_compare.exit.us, %.backedge6.us, %.split.us
  %indvars.iv.next59.lcssa = phi i64 [ %indvars.iv.next59128, %.split.us ], [ %indvars.iv.next59129, %bb.f ], [ %indvars.iv.next59129, %clause_compare.exit.us ], [ %indvars.iv.next59, %.backedge6.us ] ; 3 uses
  %.lcssa121 = phi ptr [ %i.bd, %.split.us ], [ %i.bk, %bb.f ], [ %i.bk, %clause_compare.exit.us ], [ %i.by, %.backedge6.us ]
  %i.bv = getelementptr inbounds [8 x i8], ptr %.tr27, i64 %indvars.iv.next59.lcssa ; 2 uses
  %i.bw = trunc nsw i64 %indvars.iv.next59.lcssa to i32 ; 2 uses
  br label %.backedge.us.us

.backedge6.us:                                    ; preds = %.thread19.i.us, %clause_compare.exit.us
  %indvars.iv.next59 = add nsw i64 %indvars.iv.next59129, 1 ; 3 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %.tr27, i64 %indvars.iv.next59
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !194 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !32 ; 2 uses
  %i.cb = icmp eq i32 %i.ca, 2
  br i1 %i.cb, label %.preheader.us, label %.thread19.i.us, !llvm.loop !197

.backedge.us.us:                                  ; preds = %.backedge.us.us.backedge, %.preheader.us
  %.136.us.us = phi i32 [ %.035.us, %.preheader.us ], [ %i.cc, %.backedge.us.us.backedge ]
  %i.cc = add i32 %.136.us.us, -1                 ; 4 uses
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.tr27, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !194 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !32 ; 2 uses
  %i.ci = icmp eq i32 %i.ch, 2
  br i1 %i.ci, label %.backedge.us.us.backedge, label %.thread19.i44.us.us

.backedge.us.us.backedge:                         ; preds = %.backedge.us.us, %.thread19.i44.us.us, %clause_compare.exit47.us.us
  br label %.backedge.us.us, !llvm.loop !198

.thread19.i44.us.us:                              ; preds = %.backedge.us.us
  %i.cj = load i32, ptr %i.au, align 4
  %i.ck = lshr i32 %i.cj, 4                       ; 2 uses
  %i.cl = load i32, ptr %i.cf, align 4
  %i.cm = lshr i32 %i.cl, 4                       ; 2 uses
  %i.cn = icmp samesign ugt i32 %i.ck, %i.cm
  br i1 %i.cn, label %.backedge.us.us.backedge, label %bb.h

bb.h:                                             ; preds = %.thread19.i44.us.us
  %i.co = icmp samesign ult i32 %i.ck, %i.cm
  br i1 %i.co, label %clause_compare.exit47.thread.split.us.us, label %clause_compare.exit47.us.us

clause_compare.exit47.us.us:                      ; preds = %bb.h
  %i.cp = load i32, ptr %i.bb, align 4, !tbaa !42
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cr = zext i32 %i.ch to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !42
  %.not32 = icmp ult i32 %i.cp, %i.ct
  br i1 %.not32, label %.backedge.us.us.backedge, label %clause_compare.exit47.thread.split.us.us

clause_compare.exit47.thread.split.us.us:         ; preds = %clause_compare.exit47.us.us, %bb.h
  %.not43.us = icmp ugt i32 %i.cc, %i.bw
  br i1 %.not43.us, label %bb.g, label %tailrecurse

.split:                                           ; preds = %.lr.ph, %bb.n
  %i.cu = phi i32 [ %i.dq, %bb.n ], [ %i.ax, %.lr.ph ]
  %i.cv = phi i32 [ %i.dr, %bb.n ], [ %i.ax, %.lr.ph ]
  %.035 = phi i32 [ %i.du, %bb.n ], [ %.tr328, %.lr.ph ]
  %.0 = phi i64 [ %indvars.iv.next, %bb.n ], [ -1, %.lr.ph ]
  br label %.backedge6.outer

.backedge6.outer:                                 ; preds = %.backedge6.outer.backedge, %.split
  %.ph = phi i32 [ %i.cu, %.split ], [ %.ph136.be, %.backedge6.outer.backedge ] ; 4 uses
  %.ph136 = phi i32 [ %i.cv, %.split ], [ %.ph136.be, %.backedge6.outer.backedge ]
  %indvars.iv.ph = phi i64 [ %.0, %.split ], [ %indvars.iv.next, %.backedge6.outer.backedge ]
  %i.cw = icmp eq i32 %.ph, 2
  br label %.backedge6

.backedge6:                                       ; preds = %.backedge6.outer, %.thread19.i
  %i.cx = phi i32 [ %i.de, %.thread19.i ], [ %.ph136, %.backedge6.outer ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.thread19.i ], [ %indvars.iv.ph, %.backedge6.outer ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 6 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %.tr27, i64 %indvars.iv.next
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !194 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !32 ; 3 uses
  %i.dc = icmp ugt i32 %i.db, 2
  br i1 %i.dc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.backedge6
  br i1 %i.cw, label %.backedge6.outer.backedge, label %.thread19.i, !llvm.loop !197

bb.j:                                             ; preds = %.backedge6
  %i.dd = icmp eq i32 %i.db, 2
  %or.cond.i = icmp ugt i32 %i.cx, 1
  %or.cond93 = select i1 %i.dd, i1 %or.cond.i, i1 false
  br i1 %or.cond93, label %.preheader, label %.thread19.i

.thread19.i:                                      ; preds = %bb.j, %bb.i
  %i.de = phi i32 [ %.ph, %bb.i ], [ %i.cx, %bb.j ] ; 2 uses
  %i.df = load i32, ptr %i.cz, align 4
  %i.dg = lshr i32 %i.df, 4                       ; 2 uses
  %i.dh = load i32, ptr %i.au, align 4
  %i.di = lshr i32 %i.dh, 4                       ; 2 uses
  %i.dj = icmp samesign ugt i32 %i.dg, %i.di
  br i1 %i.dj, label %.backedge6, label %bb.k, !llvm.loop !197

bb.k:                                             ; preds = %.thread19.i
  %i.dk = icmp samesign ult i32 %i.dg, %i.di
  br i1 %i.dk, label %.preheader, label %clause_compare.exit

clause_compare.exit:                              ; preds = %bb.k
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dm = zext i32 %i.db to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !42
  %i.dp = load i32, ptr %i.bb, align 4, !tbaa !42
  %.not = icmp ult i32 %i.do, %i.dp
  br i1 %.not, label %.backedge6.outer.backedge, label %.preheader

.backedge6.outer.backedge:                        ; preds = %bb.i, %clause_compare.exit
  %.ph136.be = phi i32 [ %i.ax, %clause_compare.exit ], [ 2, %bb.i ] ; 2 uses
  br label %.backedge6.outer, !llvm.loop !197

.preheader:                                       ; preds = %clause_compare.exit, %bb.k, %bb.j
  %i.dq = phi i32 [ %.ph, %bb.j ], [ %i.ax, %clause_compare.exit ], [ %.ph, %bb.k ]
  %i.dr = phi i32 [ 2, %bb.j ], [ %i.ax, %clause_compare.exit ], [ %i.de, %bb.k ]
  %i.ds = getelementptr inbounds [8 x i8], ptr %.tr27, i64 %indvars.iv.next ; 2 uses
  %i.dt = trunc nsw i64 %indvars.iv.next to i32   ; 2 uses
  br label %.backedge

end_hunk_4
