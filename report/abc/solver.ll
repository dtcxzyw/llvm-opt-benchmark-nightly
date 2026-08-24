Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/solver?download=true
inline.NumInlined: 451
inline.NumDeleted: 108
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@solver_propagate
define i32 @solver_propagate(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.c = load i32, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !49   ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %.val136215 = load i32, ptr %i.e, align 4, !tbaa !8
  %i.f = icmp ult i32 %i.c, %.val136215
  br i1 %i.f, label %.lr.ph219, label %._crit_edge220

.lr.ph219:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 272        ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 104        ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 128        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph219, %._crit_edge212
  %i.p = phi ptr [ %i.d, %.lr.ph219 ], [ %i.it, %._crit_edge212 ]
  %i.q = phi i32 [ %i.c, %.lr.ph219 ], [ %i.is, %._crit_edge212 ] ; 2 uses
  %.0119217 = phi i32 [ 0, %.lr.ph219 ], [ %i.w, %._crit_edge212 ]
  %.0120216 = phi i32 [ -1, %.lr.ph219 ], [ %.1121.lcssa, %._crit_edge212 ] ; 2 uses
  %i.r = add nuw i32 %i.q, 1
  store i32 %i.r, ptr %i.a, align 8, !tbaa !72
  %i.s = getelementptr i8, ptr %i.p, i64 8
  %.val138 = load ptr, ptr %i.s, align 8, !tbaa !34
  %i.t = zext i32 %i.q to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.val138, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !37   ; 2 uses
  %i.w = add i32 %.0119217, 1                     ; 2 uses
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !73   ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val143 = load ptr, ptr %i.y, align 8, !tbaa !74
  %i.z = zext i32 %i.v to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %.val143, i64 %i.z ; 3 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 16
  %.val148 = load ptr, ptr %i.ab, align 8, !tbaa !77 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !80 ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %.idx = shl nuw nsw i64 %i.ae, 3
  %i.af = getelementptr inbounds nuw i8, ptr %.val148, i64 %.idx
  %.not135190.not = icmp eq i32 %i.ad, 0
  br i1 %.not135190.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.j
  %i.ag = phi ptr [ %i.cd, %bb.j ], [ %i.x, %bb.b ] ; 2 uses
  %.0113191 = phi ptr [ %i.ce, %bb.j ], [ %.val148, %bb.b ] ; 4 uses
  %.val150 = load ptr, ptr %i.h, align 8, !tbaa !81 ; 2 uses
  %.not = icmp eq ptr %.val150, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0113191, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !82 ; 4 uses
  %.pre242 = lshr i32 %.pre, 1                    ; 2 uses
  br i1 %.not, label %.lr.ph._crit_edge, label %bb.c

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre243 = zext nneg i32 %.pre242 to i64
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.ah = getelementptr i8, ptr %.val150, i64 8
  %.val152.val = load ptr, ptr %i.ah, align 8, !tbaa !51
  %i.ai = zext nneg i32 %.pre242 to i64           ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val152.val, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !42
  %.not134 = icmp eq i8 %i.ak, 0
  br i1 %.not134, label %bb.j, label %bb.d

bb.d:                                             ; preds = %.lr.ph._crit_edge, %bb.c
  %.pre-phi244 = phi i64 [ %.pre243, %.lr.ph._crit_edge ], [ %i.ai, %bb.c ] ; 4 uses
  %.val153 = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.al = getelementptr i8, ptr %.val153, i64 8
  %.val153.val = load ptr, ptr %i.al, align 8, !tbaa !51
  %i.am = getelementptr inbounds nuw i8, ptr %.val153.val, i64 %.pre-phi244 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !42  ; 2 uses
  %i.ao = icmp eq i8 %i.an, 3
  br i1 %i.ao, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.ap = load i32, ptr %.0113191, align 4, !tbaa !84
  %i.aq = trunc i32 %.pre to i8
  %i.ar = and i8 %i.aq, 1                         ; 2 uses
  store i8 %i.ar, ptr %i.am, align 1, !tbaa !42
  %i.as = load ptr, ptr %i.j, align 8, !tbaa !85
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %.val16.i = load ptr, ptr %i.at, align 8, !tbaa !51
  %i.au = getelementptr inbounds nuw i8, ptr %.val16.i, i64 %.pre-phi244
  store i8 %i.ar, ptr %i.au, align 1, !tbaa !42
  %i.av = load ptr, ptr %i.k, align 8, !tbaa !39
  %.val15.i = load ptr, ptr %i.l, align 8, !tbaa !48
  %i.aw = getelementptr i8, ptr %.val15.i, i64 4
  %.val15.val.i = load i32, ptr %i.aw, align 4, !tbaa !8
  %i.ax = getelementptr i8, ptr %i.av, i64 8
  %.val14.i = load ptr, ptr %i.ax, align 8, !tbaa !34
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.val14.i, i64 %.pre-phi244
  store i32 %.val15.val.i, ptr %i.ay, align 4, !tbaa !37
  %i.az = load ptr, ptr %i.m, align 8, !tbaa !54
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %.val.i = load ptr, ptr %i.ba, align 8, !tbaa !34
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.pre-phi244
  store i32 %i.ap, ptr %i.bb, align 4, !tbaa !37
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !49  ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 4 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !8  ; 6 uses
  %i.bf = load i32, ptr %i.bc, align 8, !tbaa !36
  %i.bg = icmp eq i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.f, label %solver_enqueue.exit

bb.f:                                             ; preds = %bb.e
  %i.bh = icmp ult i32 %i.be, 16
  br i1 %i.bh, label %vec_uint_reserve.exit.i.i, label %bb.g

vec_uint_reserve.exit.i.i:                        ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !34
  %i.bk = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef %i.bj, i64 noundef 64) #18
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !34
  br label %vec_uint_reserve.exit10.sink.split.i.i

bb.g:                                             ; preds = %bb.f
  %.not.i9.i.i = icmp sgt i32 %i.be, 0
  br i1 %.not.i9.i.i, label %bb.h, label %solver_enqueue.exit

bb.h:                                             ; preds = %bb.g
  %i.bl = shl nuw i32 %i.be, 1                    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !34
  %i.bo = zext i32 %i.bl to i64
  %i.bp = shl nuw nsw i64 %i.bo, 2
  %i.bq = tail call ptr @realloc(ptr noundef %i.bn, i64 noundef %i.bp) #18
  store ptr %i.bq, ptr %i.bm, align 8, !tbaa !34
  br label %vec_uint_reserve.exit10.sink.split.i.i

vec_uint_reserve.exit10.sink.split.i.i:           ; preds = %bb.h, %vec_uint_reserve.exit.i.i
  %.sink.i.i = phi i32 [ %i.bl, %bb.h ], [ 16, %vec_uint_reserve.exit.i.i ]
  store i32 %.sink.i.i, ptr %i.bc, align 8, !tbaa !36
  %.pre.i = load i32, ptr %i.bd, align 4, !tbaa !8
  br label %solver_enqueue.exit

solver_enqueue.exit:                              ; preds = %bb.e, %bb.g, %vec_uint_reserve.exit10.sink.split.i.i
  %i.br = phi i32 [ %i.be, %bb.e ], [ %i.be, %bb.g ], [ %.pre.i, %vec_uint_reserve.exit10.sink.split.i.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !34
  %i.bu = zext i32 %i.br to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bu
  store i32 %.pre, ptr %i.bv, align 4, !tbaa !37
  %i.bw = load i32, ptr %i.bd, align 4, !tbaa !8
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bd, align 4, !tbaa !8
  %.pre235 = load ptr, ptr %i.g, align 8, !tbaa !73
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.by = trunc i32 %.pre to i8
  %i.bz = and i8 %i.by, 1
  %i.ca = xor i8 %i.an, %i.bz
  %i.cb = icmp eq i8 %i.ca, 1
  br i1 %i.cb, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.i
  %i.cc = load i32, ptr %.0113191, align 4, !tbaa !84
  br label %bb.ae

bb.j:                                             ; preds = %solver_enqueue.exit, %bb.i, %bb.c
  %i.cd = phi ptr [ %.pre235, %solver_enqueue.exit ], [ %i.ag, %bb.i ], [ %i.ag, %bb.c ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0113191, i64 8 ; 2 uses
  %i.cf = getelementptr i8, ptr %i.cd, i64 8
  %.val142 = load ptr, ptr %i.cf, align 8, !tbaa !74
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %.val142, i64 %i.z ; 3 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 16
  %.val147 = load ptr, ptr %i.ch, align 8, !tbaa !77 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !80
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.val147, i64 %i.ck ; 2 uses
  %.not135 = icmp ult ptr %i.ce, %i.cl
  br i1 %.not135, label %.lr.ph, label %._crit_edge, !llvm.loop !86

._crit_edge:                                      ; preds = %bb.j, %bb.b
  %.lcssa187 = phi ptr [ %i.aa, %bb.b ], [ %i.cg, %bb.j ] ; 2 uses
  %.val147.lcssa = phi ptr [ %.val148, %bb.b ], [ %.val147, %bb.j ] ; 3 uses
  %.lcssa = phi ptr [ %i.af, %bb.b ], [ %i.cl, %bb.j ] ; 4 uses
  %i.cm = getelementptr i8, ptr %.lcssa187, i64 16
  %i.cn = getelementptr i8, ptr %.lcssa187, i64 4 ; 2 uses
  %.val159 = load i32, ptr %i.cn, align 4, !tbaa !87
  %i.co = zext i32 %.val159 to i64                ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.val147.lcssa, i64 %i.co ; 4 uses
  %i.cq = icmp ult ptr %.lcssa, %i.cp
  br i1 %i.cq, label %.lr.ph211, label %._crit_edge212

.lr.ph211:                                        ; preds = %._crit_edge
  %i.cr = xor i32 %i.v, 1                         ; 3 uses
  %i.cs = ptrtoaddr ptr %.val147.lcssa to i64
  %i.ct = shl nuw nsw i64 %i.co, 3
  %i.cu = add nuw i64 %i.ct, %i.cs
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph211, %.loopexit
  %.0110209 = phi ptr [ %.lcssa, %.lr.ph211 ], [ %.5, %.loopexit ] ; 12 uses
  %.1114208 = phi ptr [ %.lcssa, %.lr.ph211 ], [ %.6, %.loopexit ] ; 14 uses
  %.1121207 = phi i32 [ %.0120216, %.lr.ph211 ], [ %.5125, %.loopexit ] ; 5 uses
  %.0110209285 = ptrtoaddr ptr %.0110209 to i64
  %.1114208286 = ptrtoaddr ptr %.1114208 to i64   ; 3 uses
  %.val149 = load ptr, ptr %i.h, align 8, !tbaa !81 ; 2 uses
  %.not174 = icmp eq ptr %.val149, null
  %.phi.trans.insert237 = getelementptr inbounds nuw i8, ptr %.1114208, i64 4
  %.pre238 = load i32, ptr %.phi.trans.insert237, align 4, !tbaa !82 ; 3 uses
  %.pre245 = lshr i32 %.pre238, 1                 ; 2 uses
  br i1 %.not174, label %._crit_edge236, label %bb.l

._crit_edge236:                                   ; preds = %bb.k
  %.pre247 = zext nneg i32 %.pre245 to i64
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cv = getelementptr i8, ptr %.val149, i64 8
  %.val151.val = load ptr, ptr %i.cv, align 8, !tbaa !51
  %i.cw = zext nneg i32 %.pre245 to i64           ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.val151.val, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !42
  %.not130 = icmp eq i8 %i.cy, 0
  br i1 %.not130, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cz = getelementptr inbounds nuw i8, ptr %.0110209, i64 8
  %i.da = load i64, ptr %.1114208, align 4
  store i64 %i.da, ptr %.0110209, align 4
  br label %.loopexit, !llvm.loop !88

bb.n:                                             ; preds = %._crit_edge236, %bb.l
  %.pre-phi248 = phi i64 [ %.pre247, %._crit_edge236 ], [ %i.cw, %bb.l ]
  %i.db = getelementptr inbounds nuw i8, ptr %.1114208, i64 4
  %.val157 = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.dc = getelementptr i8, ptr %.val157, i64 8
  %.val157.val = load ptr, ptr %i.dc, align 8, !tbaa !51 ; 4 uses
  %i.dd = trunc i32 %.pre238 to i8
  %i.de = and i8 %i.dd, 1
  %i.df = getelementptr inbounds nuw i8, ptr %.val157.val, i64 %.pre-phi248
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !42
  %i.dh = icmp eq i8 %i.dg, %i.de
  br i1 %i.dh, label %bb.o, label %clause_fetch.exit

bb.o:                                             ; preds = %bb.n
  %i.di = getelementptr inbounds nuw i8, ptr %.0110209, i64 8
  %i.dj = load i64, ptr %.1114208, align 4
  store i64 %i.dj, ptr %.0110209, align 4
  br label %.loopexit, !llvm.loop !88

clause_fetch.exit:                                ; preds = %bb.n
  %i.dk = load i32, ptr %.1114208, align 4, !tbaa !84 ; 3 uses
  %.val137 = load ptr, ptr %i.n, align 8, !tbaa !12
  %.not.i.i = icmp ne i32 %i.dk, -1
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.dl = getelementptr inbounds nuw i8, ptr %.val137, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !31
  %i.dn = zext i32 %i.dk to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.dn ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 5 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !37 ; 2 uses
  %i.dr = icmp eq i32 %i.dq, %i.cr
  br i1 %i.dr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %clause_fetch.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 12 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !37 ; 2 uses
  store i32 %i.dt, ptr %i.dp, align 4, !tbaa !37
  store i32 %i.cr, ptr %i.ds, align 4, !tbaa !37
  %.pre239 = load i32, ptr %.1114208, align 4, !tbaa !84
  %.pre240 = load i32, ptr %i.db, align 4, !tbaa !82
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %clause_fetch.exit
  %i.du = phi i32 [ %.pre240, %bb.p ], [ %.pre238, %clause_fetch.exit ]
  %i.dv = phi i32 [ %i.dt, %bb.p ], [ %i.dq, %clause_fetch.exit ] ; 6 uses
  %i.dw = phi i32 [ %.pre239, %bb.p ], [ %i.dk, %clause_fetch.exit ] ; 3 uses
  %.not131 = icmp eq i32 %i.dv, %i.du
  br i1 %.not131, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dx = trunc i32 %i.dv to i8
  %i.dy = and i8 %i.dx, 1
  %i.dz = lshr i32 %i.dv, 1
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %.val157.val, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !42
  %i.ed = icmp eq i8 %i.ec, %i.dy
  br i1 %i.ed, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ee = getelementptr inbounds nuw i8, ptr %.0110209, i64 8
  store i32 %i.dw, ptr %.0110209, align 4, !tbaa !37
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0110209, i64 4
  store i32 %i.dv, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !37
  br label %.loopexit

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.ef = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !32 ; 2 uses
  %i.eh = icmp ugt i32 %i.eg, 2
  br i1 %i.eh, label %.lr.ph198.preheader, label %._crit_edge199

.lr.ph198.preheader:                              ; preds = %bb.t
  %wide.trip.count = zext i32 %i.eg to i64
  br label %.lr.ph198

bb.u:                                             ; preds = %.lr.ph198
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge199, label %.lr.ph198, !llvm.loop !89

.lr.ph198:                                        ; preds = %.lr.ph198.preheader, %bb.u
  %indvars.iv = phi i64 [ 2, %.lr.ph198.preheader ], [ %indvars.iv.next, %bb.u ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !37 ; 3 uses
  %i.ek = trunc i32 %i.ej to i8
  %i.el = and i8 %i.ek, 1
  %i.em = lshr i32 %i.ej, 1
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %.val157.val, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !42
  %i.eq = xor i8 %i.el, %i.ep
  %.not132 = icmp eq i8 %i.eq, 1
  br i1 %.not132, label %bb.u, label %bb.v

bb.v:                                             ; preds = %.lr.ph198
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv
  %i.es = getelementptr inbounds nuw i8, ptr %i.do, i64 12 ; 2 uses
  store i32 %i.ej, ptr %i.es, align 4, !tbaa !37
  store i32 %i.cr, ptr %i.er, align 4, !tbaa !37
  %i.et = load ptr, ptr %i.g, align 8, !tbaa !73
  %i.eu = load i32, ptr %i.es, align 4, !tbaa !37
  %i.ev = xor i32 %i.eu, 1
  %i.ew = getelementptr i8, ptr %i.et, i64 8
  %.val139 = load ptr, ptr %i.ew, align 8, !tbaa !74
  %i.ex = zext i32 %i.ev to i64
  %i.ey = getelementptr inbounds nuw [24 x i8], ptr %.val139, i64 %i.ex ; 6 uses
  %.sroa.6.0.insert.ext = zext i32 %i.dv to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.dw to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.0.0.insert.ext
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 4 ; 3 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !87 ; 3 uses
  %i.fb = load i32, ptr %i.ey, align 8, !tbaa !90
  %i.fc = icmp eq i32 %i.fa, %i.fb
  br i1 %i.fc, label %bb.w, label %watch_list_push.exit

bb.w:                                             ; preds = %bb.v
  %i.fd = icmp ult i32 %i.fa, 4
  %i.fe = lshr i32 %i.fa, 1
  %i.ff = mul i32 %i.fe, 3
  %i.fg = select i1 %i.fd, i32 4, i32 %i.ff       ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !77
  %i.fj = zext i32 %i.fg to i64
  %i.fk = shl nuw nsw i64 %i.fj, 3
  %i.fl = tail call ptr @realloc(ptr noundef %i.fi, i64 noundef %i.fk) #18 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fn = load i32, ptr %i.ey, align 8, !tbaa !90
  %i.fo = uitofp i32 %i.fn to double
  %i.fp = fmul nnan double %i.fo, f0x3EB0000000000000
  %i.fq = uitofp i32 %i.fg to double
  %i.fr = fmul nnan double %i.fq, f0x3EB0000000000000
  %i.fs = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %i.fp, double noundef %i.fr) ; 0 uses
  %i.ft = load ptr, ptr @stdout, align 8, !tbaa !91
  %i.fu = tail call i32 @fflush(ptr noundef %i.ft) ; 0 uses
  br label %watch_list_push.exit

bb.y:                                             ; preds = %bb.w
  store ptr %i.fl, ptr %i.fh, align 8, !tbaa !77
  store i32 %i.fg, ptr %i.ey, align 8, !tbaa !90
  br label %watch_list_push.exit

watch_list_push.exit:                             ; preds = %bb.v, %bb.x, %bb.y
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !77
  %i.fx = load i32, ptr %i.ez, align 4, !tbaa !87 ; 2 uses
  %i.fy = add i32 %i.fx, 1
  store i32 %i.fy, ptr %i.ez, align 4, !tbaa !87
  %i.fz = zext i32 %i.fx to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.fz
  store i64 %.sroa.0.0.insert.insert, ptr %i.ga, align 4
  br label %.loopexit

._crit_edge199:                                   ; preds = %bb.u, %bb.t
  %i.gb = getelementptr inbounds nuw i8, ptr %.0110209, i64 8 ; 5 uses
  store i32 %i.dw, ptr %.0110209, align 4, !tbaa !37
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %.0110209, i64 4
  store i32 %i.dv, ptr %.sroa.6.0..sroa_idx7, align 4, !tbaa !37
  %i.gc = load i32, ptr %i.dp, align 4, !tbaa !37 ; 3 uses
  %i.gd = trunc i32 %i.gc to i8
  %i.ge = and i8 %i.gd, 1                         ; 3 uses
  %i.gf = lshr i32 %i.gc, 1
  %i.gg = zext nneg i32 %i.gf to i64              ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.val157.val, i64 %i.gg ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !42
  %i.gj = xor i8 %i.ge, %i.gi
  %i.gk = icmp eq i8 %i.gj, 1
  %i.gl = load i32, ptr %.1114208, align 4, !tbaa !84 ; 4 uses
  br i1 %i.gk, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge199
  %i.gm = load ptr, ptr %i.b, align 8, !tbaa !49
  %i.gn = getelementptr i8, ptr %i.gm, i64 4
  %.val = load i32, ptr %i.gn, align 4, !tbaa !8
  store i32 %.val, ptr %i.a, align 8, !tbaa !72
  %.2115200 = getelementptr inbounds nuw i8, ptr %.1114208, i64 8 ; 5 uses
  %i.go = icmp ult ptr %.2115200, %i.cp
  br i1 %i.go, label %.lr.ph204.preheader, label %.loopexit

.lr.ph204.preheader:                              ; preds = %bb.z
  %1 = add i64 %.1114208286, 16
  %2 = tail call i64 @llvm.umax.i64(i64 %i.cu, i64 %1)
  %3 = add i64 %2, -9
  %i.gp = sub i64 %3, %.1114208286                ; 2 uses
  %i.gq = lshr i64 %i.gp, 3
  %i.gr = add nuw nsw i64 %i.gq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.gp, 24
  %i.gs = sub i64 %.1114208286, %.0110209285
  %diff.check = icmp ugt i64 %i.gs, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph204.preheader290, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph204.preheader
  %n.vec = and i64 %i.gr, 4611686018427387900     ; 3 uses
  %i.gt = shl i64 %n.vec, 3                       ; 2 uses
  %i.gu = getelementptr i8, ptr %.2115200, i64 %i.gt ; 2 uses
  %i.gv = getelementptr i8, ptr %i.gb, i64 %i.gt  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.2115200, i64 %i.gw ; 2 uses
  %next.gep287 = getelementptr i8, ptr %i.gb, i64 %i.gw ; 2 uses
  %i.gx = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 4
  %wide.load288 = load <2 x i64>, ptr %i.gx, align 4
  %i.gy = getelementptr i8, ptr %next.gep287, i64 16
  store <2 x i64> %wide.load, ptr %next.gep287, align 4
  store <2 x i64> %wide.load288, ptr %i.gy, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gz = icmp eq i64 %index.next, %n.vec
  br i1 %i.gz, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gr, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph204.preheader290

.lr.ph204.preheader290:                           ; preds = %.lr.ph204.preheader, %middle.block
  %.2115202.ph = phi ptr [ %.2115200, %.lr.ph204.preheader ], [ %i.gu, %middle.block ]
  %.1111201.ph = phi ptr [ %i.gb, %.lr.ph204.preheader ], [ %i.gv, %middle.block ]
  br label %.lr.ph204

.lr.ph204:                                        ; preds = %.lr.ph204.preheader290, %.lr.ph204
  %.2115202 = phi ptr [ %.2115, %.lr.ph204 ], [ %.2115202.ph, %.lr.ph204.preheader290 ] ; 2 uses
  %.1111201 = phi ptr [ %i.ha, %.lr.ph204 ], [ %.1111201.ph, %.lr.ph204.preheader290 ] ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.1111201, i64 8 ; 2 uses
  %i.hb = load i64, ptr %.2115202, align 4
  store i64 %i.hb, ptr %.1111201, align 4
  %.2115 = getelementptr inbounds nuw i8, ptr %.2115202, i64 8 ; 3 uses
  %i.hc = icmp ult ptr %.2115, %i.cp
  br i1 %i.hc, label %.lr.ph204, label %.loopexit, !llvm.loop !96

bb.aa:                                            ; preds = %._crit_edge199
  store i8 %i.ge, ptr %i.gh, align 1, !tbaa !42
  %i.hd = load ptr, ptr %i.j, align 8, !tbaa !85
  %i.he = getelementptr i8, ptr %i.hd, i64 8
  %.val16.i161 = load ptr, ptr %i.he, align 8, !tbaa !51
  %i.hf = getelementptr inbounds nuw i8, ptr %.val16.i161, i64 %i.gg
  store i8 %i.ge, ptr %i.hf, align 1, !tbaa !42
  %i.hg = load ptr, ptr %i.k, align 8, !tbaa !39
  %.val15.i162 = load ptr, ptr %i.l, align 8, !tbaa !48
  %i.hh = getelementptr i8, ptr %.val15.i162, i64 4
  %.val15.val.i163 = load i32, ptr %i.hh, align 4, !tbaa !8
  %i.hi = getelementptr i8, ptr %i.hg, i64 8
  %.val14.i164 = load ptr, ptr %i.hi, align 8, !tbaa !34
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %.val14.i164, i64 %i.gg
  store i32 %.val15.val.i163, ptr %i.hj, align 4, !tbaa !37
  %i.hk = load ptr, ptr %i.m, align 8, !tbaa !54
  %i.hl = getelementptr i8, ptr %i.hk, i64 8
  %.val.i165 = load ptr, ptr %i.hl, align 8, !tbaa !34
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.val.i165, i64 %i.gg
  store i32 %i.gl, ptr %i.hm, align 4, !tbaa !37
  %i.hn = load ptr, ptr %i.b, align 8, !tbaa !49  ; 6 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 4 ; 4 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !8  ; 6 uses
  %i.hq = load i32, ptr %i.hn, align 8, !tbaa !36
  %i.hr = icmp eq i32 %i.hp, %i.hq
  br i1 %i.hr, label %bb.ab, label %solver_enqueue.exit171

bb.ab:                                            ; preds = %bb.aa
  %i.hs = icmp ult i32 %i.hp, 16
  br i1 %i.hs, label %vec_uint_reserve.exit.i.i170, label %bb.ac

vec_uint_reserve.exit.i.i170:                     ; preds = %bb.ab
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hn, i64 8 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !34
  %i.hv = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef %i.hu, i64 noundef 64) #18
  store ptr %i.hv, ptr %i.ht, align 8, !tbaa !34
  br label %vec_uint_reserve.exit10.sink.split.i.i167

bb.ac:                                            ; preds = %bb.ab
  %.not.i9.i.i166 = icmp sgt i32 %i.hp, 0
  br i1 %.not.i9.i.i166, label %bb.ad, label %solver_enqueue.exit171

bb.ad:                                            ; preds = %bb.ac
  %i.hw = shl nuw i32 %i.hp, 1                    ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hn, i64 8 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !34
  %i.hz = zext i32 %i.hw to i64
  %i.ia = shl nuw nsw i64 %i.hz, 2
  %i.ib = tail call ptr @realloc(ptr noundef %i.hy, i64 noundef %i.ia) #18
  store ptr %i.ib, ptr %i.hx, align 8, !tbaa !34
  br label %vec_uint_reserve.exit10.sink.split.i.i167

vec_uint_reserve.exit10.sink.split.i.i167:        ; preds = %bb.ad, %vec_uint_reserve.exit.i.i170
  %.sink.i.i168 = phi i32 [ %i.hw, %bb.ad ], [ 16, %vec_uint_reserve.exit.i.i170 ]
  store i32 %.sink.i.i168, ptr %i.hn, align 8, !tbaa !36
  %.pre.i169 = load i32, ptr %i.ho, align 4, !tbaa !8
  br label %solver_enqueue.exit171

solver_enqueue.exit171:                           ; preds = %bb.aa, %bb.ac, %vec_uint_reserve.exit10.sink.split.i.i167
  %i.ic = phi i32 [ %i.hp, %bb.aa ], [ %i.hp, %bb.ac ], [ %.pre.i169, %vec_uint_reserve.exit10.sink.split.i.i167 ]
  %i.id = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !34
  %i.if = zext i32 %i.ic to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %i.if
  store i32 %i.gc, ptr %i.ig, align 4, !tbaa !37
  %i.ih = load i32, ptr %i.ho, align 4, !tbaa !8
  %i.ii = add i32 %i.ih, 1
  store i32 %i.ii, ptr %i.ho, align 4, !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph204, %middle.block, %bb.z, %bb.s, %solver_enqueue.exit171, %watch_list_push.exit, %bb.o, %bb.m
  %.5125 = phi i32 [ %.1121207, %bb.o ], [ %.1121207, %bb.m ], [ %.1121207, %bb.s ], [ %.1121207, %watch_list_push.exit ], [ %.1121207, %solver_enqueue.exit171 ], [ %i.gl, %bb.z ], [ %i.gl, %middle.block ], [ %i.gl, %.lr.ph204 ] ; 2 uses
  %.1114.pn175 = phi ptr [ %.1114208, %bb.o ], [ %.1114208, %bb.m ], [ %.1114208, %bb.s ], [ %.1114208, %watch_list_push.exit ], [ %.1114208, %solver_enqueue.exit171 ], [ %.2115200, %bb.z ], [ %i.gu, %middle.block ], [ %.2115, %.lr.ph204 ]
  %.5 = phi ptr [ %i.di, %bb.o ], [ %i.cz, %bb.m ], [ %i.ee, %bb.s ], [ %.0110209, %watch_list_push.exit ], [ %i.gb, %solver_enqueue.exit171 ], [ %i.gb, %bb.z ], [ %i.gv, %middle.block ], [ %i.ha, %.lr.ph204 ] ; 2 uses
  %.6 = getelementptr inbounds nuw i8, ptr %.1114.pn175, i64 8 ; 2 uses
  %i.ij = icmp ult ptr %.6, %i.cp
  br i1 %i.ij, label %bb.k, label %._crit_edge212.loopexit

._crit_edge212.loopexit:                          ; preds = %.loopexit
  %.val145.pre = load ptr, ptr %i.cm, align 8, !tbaa !77
  br label %._crit_edge212

._crit_edge212:                                   ; preds = %._crit_edge212.loopexit, %._crit_edge
  %.val145 = phi ptr [ %.val147.lcssa, %._crit_edge ], [ %.val145.pre, %._crit_edge212.loopexit ]
  %.1121.lcssa = phi i32 [ %.0120216, %._crit_edge ], [ %.5125, %._crit_edge212.loopexit ] ; 2 uses
  %.0110.lcssa = phi ptr [ %.lcssa, %._crit_edge ], [ %.5, %._crit_edge212.loopexit ]
  %i.ik = ptrtoint ptr %.0110.lcssa to i64
  %i.il = ptrtoint ptr %.val145 to i64
  %i.im = sub i64 %i.ik, %i.il                    ; 2 uses
  %i.in = ashr exact i64 %i.im, 3
  %i.io = load i64, ptr %i.o, align 8, !tbaa !97
  %i.ip = add nsw i64 %i.in, %i.io
  store i64 %i.ip, ptr %i.o, align 8, !tbaa !97
  %i.iq = lshr exact i64 %i.im, 3
  %i.ir = trunc i64 %i.iq to i32
  store i32 %i.ir, ptr %i.cn, align 4, !tbaa !87
  %i.is = load i32, ptr %i.a, align 8, !tbaa !72  ; 2 uses
  %i.it = load ptr, ptr %i.b, align 8, !tbaa !49  ; 2 uses
  %i.iu = getelementptr i8, ptr %i.it, i64 4
  %.val136 = load i32, ptr %i.iu, align 4, !tbaa !8
  %i.iv = icmp ult i32 %i.is, %.val136
  br i1 %i.iv, label %bb.b, label %._crit_edge220.loopexit, !llvm.loop !98

._crit_edge220.loopexit:                          ; preds = %._crit_edge212
  %i.iw = zext i32 %i.w to i64
  br label %._crit_edge220

._crit_edge220:                                   ; preds = %._crit_edge220.loopexit, %bb.a
  %.0120.lcssa = phi i32 [ -1, %bb.a ], [ %.1121.lcssa, %._crit_edge220.loopexit ]
  %.0119.lcssa = phi i64 [ 0, %bb.a ], [ %i.iw, %._crit_edge220.loopexit ] ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.iy = load <2 x i64>, ptr %i.ix, align 8, !tbaa !69
  %i.iz = insertelement <2 x i64> poison, i64 %.0119.lcssa, i64 0
  %i.ja = shufflevector <2 x i64> %i.iz, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.jb = add nsw <2 x i64> %i.iy, %i.ja
  store <2 x i64> %i.jb, ptr %i.ix, align 8, !tbaa !69
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !99
  %i.je = sub nsw i64 %i.jd, %.0119.lcssa
  store i64 %i.je, ptr %i.jc, align 8, !tbaa !99
  br label %bb.ae

bb.ae:                                            ; preds = %.thread, %._crit_edge220
  %.2 = phi i32 [ %i.cc, %.thread ], [ %.0120.lcssa, %._crit_edge220 ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define signext range(i8 -1, 2) i8 @solver_search(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !100
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !100
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 7 uses
  %i.e = getelementptr i8, ptr %0, i64 128        ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.l = getelementptr i8, ptr %0, i64 96         ; 11 uses
  %i.m = getelementptr i8, ptr %0, i64 24         ; 20 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 11 uses
  %i.o = getelementptr i8, ptr %0, i64 104        ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 22 uses
  %i.s = getelementptr i8, ptr %0, i64 88         ; 10 uses
end_hunk_0
