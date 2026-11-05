Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/glTFImporter?download=true
inline.NumInlined: 5894
inline.NumDeleted: 2006
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN5o3dgc22CompressedTriangleFans8AllocateEll:bb.a
  %i.bg = select i1 %i.be, i64 -1, i64 %i.bf
  %i.bh = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bg) #32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bj = load i64, ptr %i.bi, align 8            ; 2 uses
  %.not.i12 = icmp eq i64 %i.bj, 0
  br i1 %.not.i12, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = load ptr, ptr %i.ba, align 8            ; 3 uses
  %i.bl = shl i64 %i.bj, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bh, ptr align 8 %i.bk, i64 %i.bl, i1 false)
  %i.bm = icmp eq ptr %i.bk, null
  br i1 %i.bm, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_ZdaPv(ptr noundef nonnull %i.bk) #29
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  store ptr %i.bh, ptr %i.ba, align 8
  br label %_ZN5o3dgc6VectorIlE8AllocateEm.exit13

_ZN5o3dgc6VectorIlE8AllocateEm.exit13:            ; preds = %_ZN5o3dgc6VectorIlE8AllocateEm.exit11, %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = icmp ugt i64 %2, %i.bp
  br i1 %i.bq, label %bb.v, label %_ZN5o3dgc6VectorIlE8AllocateEm.exit15

bb.v:                                             ; preds = %_ZN5o3dgc6VectorIlE8AllocateEm.exit13
  store i64 %2, ptr %i.bo, align 8
  %i.br = icmp ugt i64 %2, 2305843009213693951
  %i.bs = shl nuw i64 %2, 3
  %i.bt = select i1 %i.br, i64 -1, i64 %i.bs
  %i.bu = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bt) #32 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bw = load i64, ptr %i.bv, align 8            ; 2 uses
  %.not.i14 = icmp eq i64 %i.bw, 0
  br i1 %.not.i14, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bx = load ptr, ptr %i.bn, align 8            ; 3 uses
  %i.by = shl i64 %i.bw, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr align 8 %i.bx, i64 %i.by, i1 false)
  %i.bz = icmp eq ptr %i.bx, null
  br i1 %i.bz, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_ZdaPv(ptr noundef nonnull %i.bx) #29
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  store ptr %i.bu, ptr %i.bn, align 8
  br label %_ZN5o3dgc6VectorIlE8AllocateEm.exit15

_ZN5o3dgc6VectorIlE8AllocateEm.exit15:            ; preds = %_ZN5o3dgc6VectorIlE8AllocateEm.exit13, %bb.y
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.ce, align 8
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5o3dgc19TriangleListDecoderItE27CompueLocalConnectivityInfoEl(ptr noundef nonnull align 8 dereferenceable(406) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !guid !1565 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 17 uses
  %i.c = icmp sgt i64 %1, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br i1 %i.c, label %bb.b, label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr [8 x i8], ptr %i.e, i64 %1
  %i.g = getelementptr i8, ptr %i.f, i64 -8
  %i.h = load i64, ptr %i.g, align 8
  br label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit

_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit:           ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 16 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 20 uses
  %i.o = load ptr, ptr %i.j, align 8
  %i.p = getelementptr inbounds [8 x i8], ptr %i.o, i64 %1
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp slt i64 %i.i, %i.q
  br i1 %i.r, label %.lr.ph117, label %.critedge

.critedge:                                        ; preds = %.loopexit62, %.lr.ph117, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit
  %i.s = load i64, ptr %i.b, align 8              ; 2 uses
  %i.t = icmp sgt i64 %i.s, 2
  br i1 %i.t, label %.lr.ph76, label %.loopexit

.lr.ph117:                                        ; preds = %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit, %.loopexit62
  %.05273116 = phi i64 [ %i.gu, %.loopexit62 ], [ %i.i, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit ] ; 2 uses
  %i.u = load ptr, ptr %i.k, align 8
  %i.v = getelementptr inbounds [8 x i8], ptr %i.u, i64 %.05273116
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp sgt i64 %i.w, -1
  br i1 %i.x, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph117
  %i.y = load i64, ptr %i.a, align 8
  %i.z = add nsw i64 %i.y, 1
  store i64 %i.z, ptr %i.a, align 8
  %.idx = mul nuw nsw i64 %i.w, 6                 ; 3 uses
  %i.aa = load ptr, ptr %i.l, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = zext i16 %i.ac to i64                   ; 5 uses
  %i.ae = icmp slt i64 %1, %i.ad
  br i1 %i.ae, label %.preheader61, label %bb.h

.preheader61:                                     ; preds = %bb.c
  %i.af = load i64, ptr %i.b, align 8             ; 11 uses
  %i.ag = icmp sgt i64 %i.af, 0
  %.pre = load ptr, ptr %i.m, align 8             ; 3 uses
  br i1 %i.ag, label %.lr.ph, label %.critedge59

.lr.ph:                                           ; preds = %.preheader61, %bb.g
  %.04969 = phi i64 [ %i.bz, %bb.g ], [ 0, %.preheader61 ] ; 9 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.04969
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = icmp eq i64 %i.ai, %i.ad
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.ak = load ptr, ptr %i.n, align 8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.04969 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8
  %i.an = add nsw i64 %i.am, 1
  store i64 %i.an, ptr %i.al, align 8
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph
  %i.ao = icmp sgt i64 %i.ai, %i.ad
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ap = add nuw nsw i64 %i.af, 1
  store i64 %i.ap, ptr %i.b, align 8
  %i.aq = icmp sgt i64 %i.af, %.04969
  br i1 %i.aq, label %.lr.ph71.preheader, label %._crit_edge

.lr.ph71.preheader:                               ; preds = %bb.f
  %i.ar = sub nsw i64 %i.af, %.04969
  %.neg = add nuw i64 %.04969, 1
  %xtraiter = and i64 %i.ar, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph71.prol.loopexit, label %.lr.ph71.prol

.lr.ph71.prol:                                    ; preds = %.lr.ph71.preheader
  %i.as = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.at = add nsw i64 %i.af, -1                   ; 3 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.af
  store i64 %i.av, ptr %i.aw, align 8
  %i.ax = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.at
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.af
  store i64 %i.az, ptr %i.ba, align 8
  br label %.lr.ph71.prol.loopexit

.lr.ph71.prol.loopexit:                           ; preds = %.lr.ph71.prol, %.lr.ph71.preheader
  %.04870.unr = phi i64 [ %i.af, %.lr.ph71.preheader ], [ %i.at, %.lr.ph71.prol ]
  %i.bb = icmp eq i64 %i.af, %.neg
  br i1 %i.bb, label %._crit_edge.loopexit, label %.lr.ph71

._crit_edge.loopexit:                             ; preds = %.lr.ph71, %.lr.ph71.prol.loopexit
  %.pre80 = load ptr, ptr %i.m, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %i.bc = phi ptr [ %.pre80, %._crit_edge.loopexit ], [ %.pre, %bb.f ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.04969
  store i64 %i.ad, ptr %i.bd, align 8
  %i.be = load ptr, ptr %i.n, align 8
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.04969
  store i64 1, ptr %i.bf, align 8
  br label %bb.h

.lr.ph71:                                         ; preds = %.lr.ph71.prol.loopexit, %.lr.ph71
  %.04870 = phi i64 [ %i.bq, %.lr.ph71 ], [ %.04870.unr, %.lr.ph71.prol.loopexit ] ; 4 uses
  %i.bg = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.bh = add nsw i64 %.04870, -1                 ; 4 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %.04870
  store i64 %i.bj, ptr %i.bk, align 8
  %i.bl = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bh
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %.04870
  store i64 %i.bn, ptr %i.bo, align 8
  %i.bp = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.bq = add nsw i64 %.04870, -2                 ; 4 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bh
  store i64 %i.bs, ptr %i.bt, align 8
  %i.bu = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bq
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bh
  store i64 %i.bw, ptr %i.bx, align 8
  %i.by = icmp sgt i64 %i.bq, %.04969
  br i1 %i.by, label %.lr.ph71, label %._crit_edge.loopexit, !llvm.loop !1560

bb.g:                                             ; preds = %bb.e
  %i.bz = add nuw nsw i64 %.04969, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bz, %i.af
  br i1 %exitcond.not, label %.critedge59, label %.lr.ph, !llvm.loop !1561

.critedge59:                                      ; preds = %bb.g, %.preheader61
  %i.ca = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.af
  store i64 %i.ad, ptr %i.ca, align 8
  %i.cb = load ptr, ptr %i.n, align 8
  %i.cc = load i64, ptr %i.b, align 8
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cc
  store i64 1, ptr %i.cd, align 8
  %i.ce = load i64, ptr %i.b, align 8
  %i.cf = add nsw i64 %i.ce, 1
  store i64 %i.cf, ptr %i.b, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %._crit_edge, %.critedge59, %bb.c
  %i.cg = load ptr, ptr %i.l, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  %i.cj = load i16, ptr %i.ci, align 2
  %i.ck = zext i16 %i.cj to i64                   ; 5 uses
  %i.cl = icmp slt i64 %1, %i.ck
  br i1 %i.cl, label %.preheader61.1, label %bb.m

.preheader61.1:                                   ; preds = %bb.h
  %i.cm = load i64, ptr %i.b, align 8             ; 11 uses
  %i.cn = icmp sgt i64 %i.cm, 0
  %.pre81 = load ptr, ptr %i.m, align 8           ; 3 uses
  br i1 %i.cn, label %.lr.ph.1, label %.critedge59.1

.lr.ph.1:                                         ; preds = %.preheader61.1, %bb.j
  %.04969.1 = phi i64 [ %i.cs, %bb.j ], [ 0, %.preheader61.1 ] ; 9 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.pre81, i64 %.04969.1
  %i.cp = load i64, ptr %i.co, align 8            ; 2 uses
  %i.cq = icmp eq i64 %i.cp, %i.ck
  br i1 %i.cq, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.lr.ph.1
  %i.cr = icmp sgt i64 %i.cp, %i.ck
  br i1 %i.cr, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cs = add nuw nsw i64 %.04969.1, 1            ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.cs, %i.cm
  br i1 %exitcond.1.not, label %.critedge59.1, label %.lr.ph.1, !llvm.loop !1561

.critedge59.1:                                    ; preds = %bb.j, %.preheader61.1
  %i.ct = getelementptr inbounds [8 x i8], ptr %.pre81, i64 %i.cm
  store i64 %i.ck, ptr %i.ct, align 8
  %i.cu = load ptr, ptr %i.n, align 8
  %i.cv = load i64, ptr %i.b, align 8
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.cv
  store i64 1, ptr %i.cw, align 8
  %i.cx = load i64, ptr %i.b, align 8
  %i.cy = add nsw i64 %i.cx, 1
  store i64 %i.cy, ptr %i.b, align 8
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.cz = add nuw nsw i64 %i.cm, 1
  store i64 %i.cz, ptr %i.b, align 8
  %i.da = icmp sgt i64 %i.cm, %.04969.1
  br i1 %i.da, label %.lr.ph71.1.preheader, label %._crit_edge.1

.lr.ph71.1.preheader:                             ; preds = %bb.k
  %i.db = sub nsw i64 %i.cm, %.04969.1
  %.neg140 = add nuw i64 %.04969.1, 1
  %xtraiter133 = and i64 %i.db, 1
  %lcmp.mod134.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod134.not, label %.lr.ph71.1.prol.loopexit, label %.lr.ph71.1.prol

.lr.ph71.1.prol:                                  ; preds = %.lr.ph71.1.preheader
  %i.dc = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.dd = add nsw i64 %i.cm, -1                   ; 3 uses
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.cm
  store i64 %i.df, ptr %i.dg, align 8
  %i.dh = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.di = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.dd
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.cm
  store i64 %i.dj, ptr %i.dk, align 8
  br label %.lr.ph71.1.prol.loopexit

.lr.ph71.1.prol.loopexit:                         ; preds = %.lr.ph71.1.prol, %.lr.ph71.1.preheader
  %.04870.1.unr = phi i64 [ %i.cm, %.lr.ph71.1.preheader ], [ %i.dd, %.lr.ph71.1.prol ]
  %i.dl = icmp eq i64 %i.cm, %.neg140
  br i1 %i.dl, label %._crit_edge.loopexit.1, label %.lr.ph71.1

.lr.ph71.1:                                       ; preds = %.lr.ph71.1.prol.loopexit, %.lr.ph71.1
  %.04870.1 = phi i64 [ %i.dw, %.lr.ph71.1 ], [ %.04870.1.unr, %.lr.ph71.1.prol.loopexit ] ; 4 uses
  %i.dm = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.dn = add nsw i64 %.04870.1, -1               ; 4 uses
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = load i64, ptr %i.do, align 8
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %.04870.1
  store i64 %i.dp, ptr %i.dq, align 8
  %i.dr = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.dn
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %.04870.1
  store i64 %i.dt, ptr %i.du, align 8
  %i.dv = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.dw = add nsw i64 %.04870.1, -2               ; 4 uses
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.dn
  store i64 %i.dy, ptr %i.dz, align 8
  %i.ea = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.dw
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.dn
  store i64 %i.ec, ptr %i.ed, align 8
  %i.ee = icmp sgt i64 %i.dw, %.04969.1
  br i1 %i.ee, label %.lr.ph71.1, label %._crit_edge.loopexit.1, !llvm.loop !1560

._crit_edge.loopexit.1:                           ; preds = %.lr.ph71.1, %.lr.ph71.1.prol.loopexit
  %.pre82 = load ptr, ptr %i.m, align 8
  br label %._crit_edge.1

._crit_edge.1:                                    ; preds = %._crit_edge.loopexit.1, %bb.k
  %i.ef = phi ptr [ %.pre82, %._crit_edge.loopexit.1 ], [ %.pre81, %bb.k ]
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %.04969.1
  store i64 %i.ck, ptr %i.eg, align 8
  %i.eh = load ptr, ptr %i.n, align 8
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.04969.1
  store i64 1, ptr %i.ei, align 8
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph.1
  %i.ej = load ptr, ptr %i.n, align 8
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %.04969.1 ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = add nsw i64 %i.el, 1
  store i64 %i.em, ptr %i.ek, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.1, %.critedge59.1, %bb.h
  %i.en = load ptr, ptr %i.l, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %.idx
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.eq = load i16, ptr %i.ep, align 2
  %i.er = zext i16 %i.eq to i64                   ; 5 uses
  %i.es = icmp slt i64 %1, %i.er
  br i1 %i.es, label %.preheader61.2, label %.loopexit62

.preheader61.2:                                   ; preds = %bb.m
  %i.et = load i64, ptr %i.b, align 8             ; 11 uses
  %i.eu = icmp sgt i64 %i.et, 0
  %.pre83 = load ptr, ptr %i.m, align 8           ; 3 uses
  br i1 %i.eu, label %.lr.ph.2, label %.critedge59.2

.lr.ph.2:                                         ; preds = %.preheader61.2, %bb.o
  %.04969.2 = phi i64 [ %i.ez, %bb.o ], [ 0, %.preheader61.2 ] ; 9 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.pre83, i64 %.04969.2
  %i.ew = load i64, ptr %i.ev, align 8            ; 2 uses
  %i.ex = icmp eq i64 %i.ew, %i.er
  br i1 %i.ex, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph.2
  %i.ey = icmp sgt i64 %i.ew, %i.er
  br i1 %i.ey, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ez = add nuw nsw i64 %.04969.2, 1            ; 2 uses
  %exitcond.2.not = icmp eq i64 %i.ez, %i.et
  br i1 %exitcond.2.not, label %.critedge59.2, label %.lr.ph.2, !llvm.loop !1561

.critedge59.2:                                    ; preds = %bb.o, %.preheader61.2
  %i.fa = getelementptr inbounds [8 x i8], ptr %.pre83, i64 %i.et
  store i64 %i.er, ptr %i.fa, align 8
  %i.fb = load ptr, ptr %i.n, align 8
  %i.fc = load i64, ptr %i.b, align 8
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.fc
  store i64 1, ptr %i.fd, align 8
  %i.fe = load i64, ptr %i.b, align 8
  %i.ff = add nsw i64 %i.fe, 1
  store i64 %i.ff, ptr %i.b, align 8
  br label %.loopexit62

bb.p:                                             ; preds = %bb.n
  %i.fg = add nuw nsw i64 %i.et, 1
  store i64 %i.fg, ptr %i.b, align 8
  %i.fh = icmp sgt i64 %i.et, %.04969.2
  br i1 %i.fh, label %.lr.ph71.2.preheader, label %._crit_edge.2

.lr.ph71.2.preheader:                             ; preds = %bb.p
  %i.fi = sub nsw i64 %i.et, %.04969.2
  %.neg141 = add nuw i64 %.04969.2, 1
  %xtraiter138 = and i64 %i.fi, 1
  %lcmp.mod139.not = icmp eq i64 %xtraiter138, 0
  br i1 %lcmp.mod139.not, label %.lr.ph71.2.prol.loopexit, label %.lr.ph71.2.prol

.lr.ph71.2.prol:                                  ; preds = %.lr.ph71.2.preheader
  %i.fj = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.fk = add nsw i64 %i.et, -1                   ; 3 uses
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.et
  store i64 %i.fm, ptr %i.fn, align 8
  %i.fo = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.fk
  %i.fq = load i64, ptr %i.fp, align 8
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.et
  store i64 %i.fq, ptr %i.fr, align 8
  br label %.lr.ph71.2.prol.loopexit

.lr.ph71.2.prol.loopexit:                         ; preds = %.lr.ph71.2.prol, %.lr.ph71.2.preheader
  %.04870.2.unr = phi i64 [ %i.et, %.lr.ph71.2.preheader ], [ %i.fk, %.lr.ph71.2.prol ]
  %i.fs = icmp eq i64 %i.et, %.neg141
  br i1 %i.fs, label %._crit_edge.loopexit.2, label %.lr.ph71.2

.lr.ph71.2:                                       ; preds = %.lr.ph71.2.prol.loopexit, %.lr.ph71.2
  %.04870.2 = phi i64 [ %i.gd, %.lr.ph71.2 ], [ %.04870.2.unr, %.lr.ph71.2.prol.loopexit ] ; 4 uses
  %i.ft = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.fu = add nsw i64 %.04870.2, -1               ; 4 uses
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.ft, i64 %i.fu
  %i.fw = load i64, ptr %i.fv, align 8
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.ft, i64 %.04870.2
  store i64 %i.fw, ptr %i.fx, align 8
  %i.fy = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.fy, i64 %i.fu
  %i.ga = load i64, ptr %i.fz, align 8
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.fy, i64 %.04870.2
  store i64 %i.ga, ptr %i.gb, align 8
  %i.gc = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.gd = add nsw i64 %.04870.2, -2               ; 4 uses
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %i.gd
  %i.gf = load i64, ptr %i.ge, align 8
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %i.fu
  store i64 %i.gf, ptr %i.gg, align 8
  %i.gh = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.gh, i64 %i.gd
  %i.gj = load i64, ptr %i.gi, align 8
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.gh, i64 %i.fu
  store i64 %i.gj, ptr %i.gk, align 8
  %i.gl = icmp sgt i64 %i.gd, %.04969.2
  br i1 %i.gl, label %.lr.ph71.2, label %._crit_edge.loopexit.2, !llvm.loop !1560

._crit_edge.loopexit.2:                           ; preds = %.lr.ph71.2, %.lr.ph71.2.prol.loopexit
  %.pre84 = load ptr, ptr %i.m, align 8
  br label %._crit_edge.2

._crit_edge.2:                                    ; preds = %._crit_edge.loopexit.2, %bb.p
  %i.gm = phi ptr [ %.pre84, %._crit_edge.loopexit.2 ], [ %.pre83, %bb.p ]
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %.04969.2
  store i64 %i.er, ptr %i.gn, align 8
  %i.go = load ptr, ptr %i.n, align 8
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %.04969.2
  store i64 1, ptr %i.gp, align 8
  br label %.loopexit62

bb.q:                                             ; preds = %.lr.ph.2
  %i.gq = load ptr, ptr %i.n, align 8
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %.04969.2 ; 2 uses
  %i.gs = load i64, ptr %i.gr, align 8
  %i.gt = add nsw i64 %i.gs, 1
  store i64 %i.gt, ptr %i.gr, align 8
  br label %.loopexit62

.loopexit62:                                      ; preds = %bb.m, %.critedge59.2, %._crit_edge.2, %bb.q
  %i.gu = add nsw i64 %.05273116, 1               ; 2 uses
  %i.gv = load ptr, ptr %i.j, align 8
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.gv, i64 %1
  %i.gx = load i64, ptr %i.gw, align 8
  %i.gy = icmp slt i64 %i.gu, %i.gx
  br i1 %i.gy, label %.lr.ph117, label %.critedge, !llvm.loop !1562

.lr.ph76:                                         ; preds = %.critedge, %.critedge2
  %i.gz = phi i64 [ %i.hq, %.critedge2 ], [ %i.s, %.critedge ]
  %.075 = phi i64 [ %i.hr, %.critedge2 ], [ 1, %.critedge ] ; 3 uses
  %i.ha = load ptr, ptr %i.n, align 8
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %.075
  %i.hc = load i64, ptr %i.hb, align 8
  %i.hd = icmp eq i64 %i.hc, 1
  br i1 %i.hd, label %.preheader, label %.critedge2

.preheader:                                       ; preds = %.lr.ph76, %bb.r
  %.04774 = phi i64 [ %i.hh, %bb.r ], [ %.075, %.lr.ph76 ] ; 3 uses
  %i.he = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %.04774 ; 2 uses
  %i.hg = load i64, ptr %i.hf, align 8            ; 2 uses
  %i.hh = add nsw i64 %.04774, -1                 ; 3 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.hh ; 2 uses
  %i.hj = load i64, ptr %i.hi, align 8            ; 2 uses
  %i.hk = icmp slt i64 %i.hg, %i.hj
  br i1 %i.hk, label %bb.r, label %.critedge2.loopexit

bb.r:                                             ; preds = %.preheader
  store i64 %i.hj, ptr %i.hf, align 8
  store i64 %i.hg, ptr %i.hi, align 8
  %i.hl = load ptr, ptr %i.m, align 8
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %i.hh ; 2 uses
  %i.hn = load <2 x i64>, ptr %i.hm, align 8
  %i.ho = shufflevector <2 x i64> %i.hn, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.ho, ptr %i.hm, align 8
  %i.hp = icmp sgt i64 %.04774, 1
  br i1 %i.hp, label %.preheader, label %.critedge2.loopexit, !llvm.loop !1563

.critedge2.loopexit:                              ; preds = %.preheader, %bb.r
  %.pre85 = load i64, ptr %i.b, align 8
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %.lr.ph76
  %i.hq = phi i64 [ %.pre85, %.critedge2.loopexit ], [ %i.gz, %.lr.ph76 ] ; 2 uses
  %i.hr = add nuw nsw i64 %.075, 1                ; 2 uses
  %i.hs = icmp slt i64 %i.hr, %i.hq
  br i1 %i.hs, label %.lr.ph76, label %.loopexit, !llvm.loop !1564

.loopexit:                                        ; preds = %.critedge2, %.critedge
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5o3dgc19TriangleListDecoderItE14DecompressTFANEl(ptr noundef nonnull align 8 dereferenceable(406) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !guid !1579 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load i64, ptr %0, align 8                ; 2 uses
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr %0, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.b
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.preheader161, label %.loopexit162

.preheader161:                                    ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 58 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 22 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 21 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 117 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 89 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 20 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 25 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 20 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.aa = trunc i64 %1 to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ac = icmp sgt i64 %1, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader161, %._crit_edge196
  %.077197 = phi i64 [ 0, %.preheader161 ], [ %i.adt, %._crit_edge196 ]
  %i.af = load i64, ptr %i.i, align 8
  %i.ag = add nsw i64 %i.af, 1                    ; 5 uses
  store i64 %i.ag, ptr %i.i, align 8
  %i.ah = load i64, ptr %i.j, align 8
  %i.ai = icmp eq i64 %i.ag, %i.ah
  %.pre214 = load ptr, ptr %i.k, align 8          ; 4 uses
  br i1 %i.ai, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.aj = shl nsw i64 %i.ag, 1                    ; 2 uses
  store i64 %i.aj, ptr %i.j, align 8
  %i.ak = icmp ugt i64 %i.aj, 2305843009213693951
  %i.al = shl i64 %i.ag, 4
  %i.am = select i1 %i.ak, i64 -1, i64 %i.al
  %i.an = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.am) #32 ; 3 uses
  store ptr %i.an, ptr %i.k, align 8
  %i.ao = load i64, ptr %i.i, align 8             ; 2 uses
  %i.ap = shl i64 %i.ao, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.an, ptr align 8 %.pre214, i64 %i.ap, i1 false)
  %i.aq = icmp eq ptr %.pre214, null
  br i1 %i.aq, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %.pre214) #29
  %.pr.i = load i64, ptr %i.i, align 8
  %.pre = load ptr, ptr %i.k, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ar = phi ptr [ %i.an, %bb.c ], [ %.pre, %bb.d ], [ %.pre214, %bb.b ] ; 2 uses
  %i.as = phi i64 [ %i.ao, %bb.c ], [ %.pr.i, %bb.d ], [ %i.ag, %bb.b ] ; 3 uses
  %i.at = icmp sgt i64 %i.as, 1
  br i1 %i.at, label %bb.f, label %_ZN5o3dgc12TriangleFans7AddTFANEv.exit

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr [8 x i8], ptr %i.ar, i64 %i.as
  %i.av = getelementptr i8, ptr %i.au, i64 -16
  %i.aw = load i64, ptr %i.av, align 8
  br label %_ZN5o3dgc12TriangleFans7AddTFANEv.exit

_ZN5o3dgc12TriangleFans7AddTFANEv.exit:           ; preds = %bb.e, %bb.f
  %i.ax = phi i64 [ %i.aw, %bb.f ], [ 0, %bb.e ]
  %i.ay = getelementptr [8 x i8], ptr %i.ar, i64 %i.as
  %i.az = getelementptr i8, ptr %i.ay, i64 -8
  store i64 %i.ax, ptr %i.az, align 8
  %i.ba = load i64, ptr %i.l, align 8             ; 2 uses
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %i.l, align 8
  %i.bc = load ptr, ptr %i.m, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ba
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = add i64 %i.be, 2
  %i.bg = load i64, ptr %i.n, align 8
  %i.bh = sub i64 %i.bf, %i.bg                    ; 20 uses
  %i.bi = load i64, ptr %i.o, align 8             ; 2 uses
  %i.bj = add i64 %i.bi, 1
  store i64 %i.bj, ptr %i.o, align 8
  %i.bk = load ptr, ptr %i.p, align 8
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bi
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = load i64, ptr %i.q, align 8             ; 2 uses
  %i.bo = add nsw i64 %i.bn, 1                    ; 6 uses
  store i64 %i.bo, ptr %i.q, align 8
  %i.bp = load i64, ptr %i.h, align 8
  %i.bq = icmp eq i64 %i.bo, %i.bp
  %.pre216 = load ptr, ptr %i.r, align 8          ; 4 uses
  br i1 %i.bq, label %bb.g, label %_ZN5o3dgc12TriangleFans9AddVertexEl.exit

bb.g:                                             ; preds = %_ZN5o3dgc12TriangleFans7AddTFANEv.exit
  %i.br = shl nsw i64 %i.bo, 1                    ; 2 uses
  store i64 %i.br, ptr %i.h, align 8
  %i.bs = icmp ugt i64 %i.br, 2305843009213693951
  %i.bt = shl i64 %i.bo, 4
  %i.bu = select i1 %i.bs, i64 -1, i64 %i.bt
  %i.bv = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bu) #32 ; 3 uses
  store ptr %i.bv, ptr %i.r, align 8
  %i.bw = load i64, ptr %i.q, align 8             ; 2 uses
  %i.bx = shl i64 %i.bw, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bv, ptr align 8 %.pre216, i64 %i.bx, i1 false)
  %i.by = icmp eq ptr %.pre216, null
end_hunk_0
