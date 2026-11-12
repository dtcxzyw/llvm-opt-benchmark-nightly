Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/glTFExporter?download=true
inline.NumInlined: 6973
inline.NumDeleted: 2254
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN5o3dgc22CompressedTriangleFans8AllocateEll:bb.a
  %i.aq = icmp ugt i64 %i.n, %i.ap
  br i1 %i.aq, label %bb.n, label %_ZN5o3dgc6VectorIlE8AllocateEm.exit11

bb.n:                                             ; preds = %_ZN5o3dgc6VectorIlE8AllocateEm.exit9
  store i64 %i.n, ptr %i.ao, align 8
  %i.ar = icmp ugt i64 %i.n, 2305843009213693951
  %i.as = shl i64 %1, 4
  %i.at = select i1 %i.ar, i64 -1, i64 %i.as
  %i.au = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.at) #33 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %.not.i10 = icmp eq i64 %i.aw, 0
  br i1 %.not.i10, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = load ptr, ptr %i.an, align 8            ; 3 uses
  %i.ay = shl i64 %i.aw, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.au, ptr align 8 %i.ax, i64 %i.ay, i1 false)
  %i.az = icmp eq ptr %i.ax, null
  br i1 %i.az, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZdaPv(ptr noundef nonnull %i.ax) #31
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  store ptr %i.au, ptr %i.an, align 8
  br label %_ZN5o3dgc6VectorIlE8AllocateEm.exit11

_ZN5o3dgc6VectorIlE8AllocateEm.exit11:            ; preds = %_ZN5o3dgc6VectorIlE8AllocateEm.exit9, %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = icmp ugt i64 %i.n, %i.bc
  br i1 %i.bd, label %bb.r, label %_ZN5o3dgc6VectorIlE8AllocateEm.exit13

bb.r:                                             ; preds = %_ZN5o3dgc6VectorIlE8AllocateEm.exit11
  store i64 %i.n, ptr %i.bb, align 8
  %i.be = icmp ugt i64 %i.n, 2305843009213693951
  %i.bf = shl i64 %1, 4
  %i.bg = select i1 %i.be, i64 -1, i64 %i.bf
  %i.bh = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bg) #33 ; 2 uses
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
  tail call void @_ZdaPv(ptr noundef nonnull %i.bk) #31
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
  %i.bu = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bt) #33 ; 2 uses
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
  tail call void @_ZdaPv(ptr noundef nonnull %i.bx) #31
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
define linkonce_odr hidden noundef i32 @_ZN5o3dgc19TriangleListDecoderItE27CompueLocalConnectivityInfoEl(ptr noundef nonnull align 8 dereferenceable(406) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !guid !1025 {
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
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 21 uses
  %i.o = load ptr, ptr %i.j, align 8
  %i.p = getelementptr inbounds [8 x i8], ptr %i.o, i64 %1
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp slt i64 %i.i, %i.q
  br i1 %i.r, label %.lr.ph122, label %.critedge

.critedge:                                        ; preds = %.loopexit62, %.lr.ph122, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit
  %i.s = load i64, ptr %i.b, align 8              ; 2 uses
  %i.t = icmp sgt i64 %i.s, 2
  br i1 %i.t, label %.lr.ph76, label %.loopexit

.lr.ph76:                                         ; preds = %.critedge
  %.pre86 = load ptr, ptr %i.n, align 8
  br label %bb.r

.lr.ph122:                                        ; preds = %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit, %.loopexit62
  %.05273121 = phi i64 [ %i.gu, %.loopexit62 ], [ %i.i, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit ] ; 2 uses
  %i.u = load ptr, ptr %i.k, align 8
  %i.v = getelementptr inbounds [8 x i8], ptr %i.u, i64 %.05273121
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp sgt i64 %i.w, -1
  br i1 %i.x, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph122
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
  %i.ar = sub nuw nsw i64 %i.af, %.04969
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
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.04870
  store i64 %i.bj, ptr %i.bk, align 8
  %i.bl = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bh
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.04870
  store i64 %i.bn, ptr %i.bo, align 8
  %i.bp = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.bq = add nsw i64 %.04870, -2                 ; 4 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bh
  store i64 %i.bs, ptr %i.bt, align 8
  %i.bu = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bq
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bh
  store i64 %i.bw, ptr %i.bx, align 8
  %i.by = icmp sgt i64 %i.bq, %.04969
  br i1 %i.by, label %.lr.ph71, label %._crit_edge.loopexit, !llvm.loop !1020

bb.g:                                             ; preds = %bb.e
  %i.bz = add nuw nsw i64 %.04969, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bz, %i.af
  br i1 %exitcond.not, label %.critedge59, label %.lr.ph, !llvm.loop !1021

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
  br i1 %exitcond.1.not, label %.critedge59.1, label %.lr.ph.1, !llvm.loop !1021

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
  %i.db = sub nuw nsw i64 %i.cm, %.04969.1
  %.neg146 = add nuw i64 %.04969.1, 1
  %xtraiter139 = and i64 %i.db, 1
  %lcmp.mod140.not = icmp eq i64 %xtraiter139, 0
  br i1 %lcmp.mod140.not, label %.lr.ph71.1.prol.loopexit, label %.lr.ph71.1.prol

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
  %i.dl = icmp eq i64 %i.cm, %.neg146
  br i1 %i.dl, label %._crit_edge.loopexit.1, label %.lr.ph71.1

.lr.ph71.1:                                       ; preds = %.lr.ph71.1.prol.loopexit, %.lr.ph71.1
  %.04870.1 = phi i64 [ %i.dw, %.lr.ph71.1 ], [ %.04870.1.unr, %.lr.ph71.1.prol.loopexit ] ; 4 uses
  %i.dm = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.dn = add nsw i64 %.04870.1, -1               ; 4 uses
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = load i64, ptr %i.do, align 8
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.04870.1
  store i64 %i.dp, ptr %i.dq, align 8
  %i.dr = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.dn
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.04870.1
  store i64 %i.dt, ptr %i.du, align 8
  %i.dv = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.dw = add nsw i64 %.04870.1, -2               ; 4 uses
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dn
  store i64 %i.dy, ptr %i.dz, align 8
  %i.ea = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.dw
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.dn
  store i64 %i.ec, ptr %i.ed, align 8
  %i.ee = icmp sgt i64 %i.dw, %.04969.1
  br i1 %i.ee, label %.lr.ph71.1, label %._crit_edge.loopexit.1, !llvm.loop !1020

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
  br i1 %exitcond.2.not, label %.critedge59.2, label %.lr.ph.2, !llvm.loop !1021

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
  %i.fi = sub nuw nsw i64 %i.et, %.04969.2
  %.neg147 = add nuw i64 %.04969.2, 1
  %xtraiter144 = and i64 %i.fi, 1
  %lcmp.mod145.not = icmp eq i64 %xtraiter144, 0
  br i1 %lcmp.mod145.not, label %.lr.ph71.2.prol.loopexit, label %.lr.ph71.2.prol

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
  %i.fs = icmp eq i64 %i.et, %.neg147
  br i1 %i.fs, label %._crit_edge.loopexit.2, label %.lr.ph71.2

.lr.ph71.2:                                       ; preds = %.lr.ph71.2.prol.loopexit, %.lr.ph71.2
  %.04870.2 = phi i64 [ %i.gd, %.lr.ph71.2 ], [ %.04870.2.unr, %.lr.ph71.2.prol.loopexit ] ; 4 uses
  %i.ft = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.fu = add nsw i64 %.04870.2, -1               ; 4 uses
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.ft, i64 %i.fu
  %i.fw = load i64, ptr %i.fv, align 8
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.04870.2
  store i64 %i.fw, ptr %i.fx, align 8
  %i.fy = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.fy, i64 %i.fu
  %i.ga = load i64, ptr %i.fz, align 8
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %.04870.2
  store i64 %i.ga, ptr %i.gb, align 8
  %i.gc = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.gd = add nsw i64 %.04870.2, -2               ; 4 uses
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %i.gd
  %i.gf = load i64, ptr %i.ge, align 8
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.fu
  store i64 %i.gf, ptr %i.gg, align 8
  %i.gh = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.gh, i64 %i.gd
  %i.gj = load i64, ptr %i.gi, align 8
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.fu
  store i64 %i.gj, ptr %i.gk, align 8
  %i.gl = icmp sgt i64 %i.gd, %.04969.2
  br i1 %i.gl, label %.lr.ph71.2, label %._crit_edge.loopexit.2, !llvm.loop !1020

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
  %i.gu = add nsw i64 %.05273121, 1               ; 2 uses
  %i.gv = load ptr, ptr %i.j, align 8
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.gv, i64 %1
  %i.gx = load i64, ptr %i.gw, align 8
  %i.gy = icmp slt i64 %i.gu, %i.gx
  br i1 %i.gy, label %.lr.ph122, label %.critedge, !llvm.loop !1022

bb.r:                                             ; preds = %.lr.ph76, %.critedge2
  %i.gz = phi i64 [ %i.s, %.lr.ph76 ], [ %i.hq, %.critedge2 ]
  %i.ha = phi ptr [ %.pre86, %.lr.ph76 ], [ %i.hr, %.critedge2 ] ; 2 uses
  %.075 = phi i64 [ 1, %.lr.ph76 ], [ %i.hs, %.critedge2 ] ; 3 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %.075
  %i.hc = load i64, ptr %i.hb, align 8
  %i.hd = icmp eq i64 %i.hc, 1
  br i1 %i.hd, label %.preheader, label %.critedge2

.preheader:                                       ; preds = %bb.r, %bb.s
  %.04774 = phi i64 [ %i.hh, %bb.s ], [ %.075, %bb.r ] ; 3 uses
  %i.he = load ptr, ptr %i.n, align 8             ; 3 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %.04774 ; 2 uses
  %i.hg = load i64, ptr %i.hf, align 8            ; 2 uses
  %i.hh = add nsw i64 %.04774, -1                 ; 3 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.hh ; 2 uses
  %i.hj = load i64, ptr %i.hi, align 8            ; 2 uses
  %i.hk = icmp slt i64 %i.hg, %i.hj
  br i1 %i.hk, label %bb.s, label %.critedge2.loopexit

bb.s:                                             ; preds = %.preheader
  store i64 %i.hj, ptr %i.hf, align 8
  store i64 %i.hg, ptr %i.hi, align 8
  %i.hl = load ptr, ptr %i.m, align 8
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %i.hh ; 2 uses
  %i.hn = load <2 x i64>, ptr %i.hm, align 8
  %i.ho = shufflevector <2 x i64> %i.hn, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.ho, ptr %i.hm, align 8
  %i.hp = icmp sgt i64 %.04774, 1
  br i1 %i.hp, label %.preheader, label %..critedge2.loopexit_crit_edge, !llvm.loop !1023

..critedge2.loopexit_crit_edge:                   ; preds = %bb.s
  %.pre85.pre = load ptr, ptr %i.n, align 8
  br label %.critedge2.loopexit, !llvm.loop !1023

.critedge2.loopexit:                              ; preds = %.preheader, %..critedge2.loopexit_crit_edge
  %.pre85 = phi ptr [ %.pre85.pre, %..critedge2.loopexit_crit_edge ], [ %i.he, %.preheader ]
  %.pre88 = load i64, ptr %i.b, align 8
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %bb.r
  %i.hq = phi i64 [ %.pre88, %.critedge2.loopexit ], [ %i.gz, %bb.r ] ; 2 uses
  %i.hr = phi ptr [ %.pre85, %.critedge2.loopexit ], [ %i.ha, %bb.r ]
  %i.hs = add nuw nsw i64 %.075, 1                ; 2 uses
  %i.ht = icmp slt i64 %i.hs, %i.hq
  br i1 %i.ht, label %bb.r, label %.loopexit, !llvm.loop !1024

.loopexit:                                        ; preds = %.critedge2, %.critedge
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5o3dgc19TriangleListDecoderItE14DecompressTFANEl(ptr noundef nonnull align 8 dereferenceable(406) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !guid !1038 {
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
  %i.an = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.am) #33 ; 3 uses
  store ptr %i.an, ptr %i.k, align 8
  %i.ao = load i64, ptr %i.i, align 8             ; 2 uses
  %i.ap = shl i64 %i.ao, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.an, ptr align 8 %.pre214, i64 %i.ap, i1 false)
  %i.aq = icmp eq ptr %.pre214, null
  br i1 %i.aq, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %.pre214) #31
  %.pr.i = load i64, ptr %i.i, align 8
  %.pre = load ptr, ptr %i.k, align 8
  br label %bb.e
end_hunk_0
begin_hunk_1_@_ZN5o3dgc19TriangleListEncoderItE4InitEPKtll:bb.a
  %i.jz = load i64, ptr %i.jy, align 8
  br label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit.i59

_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit.i59:       ; preds = %bb.az, %_ZN5o3dgc13AdjacencyInfo11AddNeighborEll.exit58
  %i.ka = phi i64 [ %i.jz, %bb.az ], [ 0, %_ZN5o3dgc13AdjacencyInfo11AddNeighborEll.exit58 ] ; 2 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %i.jw
  %i.kc = load i64, ptr %i.kb, align 8            ; 2 uses
  %.not16.not.i60 = icmp slt i64 %i.ka, %i.kc
  br i1 %.not16.not.i60, label %.lr.ph.i62, label %_ZN5o3dgc13AdjacencyInfo11AddNeighborEll.exit65

.lr.ph.i62:                                       ; preds = %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit.i59
  %i.kd = load ptr, ptr %i.ho, align 8            ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bc, %.lr.ph.i62
  %.01117.i63 = phi i64 [ %i.ka, %.lr.ph.i62 ], [ %i.ki, %bb.bc ] ; 3 uses
  %i.ke = getelementptr inbounds [8 x i8], ptr %i.kd, i64 %.01117.i63
  %i.kf = load i64, ptr %i.ke, align 8
  %i.kg = icmp eq i64 %i.kf, -1
  br i1 %i.kg, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.kh = getelementptr inbounds [8 x i8], ptr %i.kd, i64 %.01117.i63
  store i64 %.03581, ptr %i.kh, align 8
  br label %_ZN5o3dgc13AdjacencyInfo11AddNeighborEll.exit65

bb.bc:                                            ; preds = %bb.ba
  %i.ki = add nsw i64 %.01117.i63, 1              ; 2 uses
  %exitcond.not.i64 = icmp eq i64 %i.ki, %i.kc
  br i1 %exitcond.not.i64, label %_ZN5o3dgc13AdjacencyInfo11AddNeighborEll.exit65, label %bb.ba, !llvm.loop !18

_ZN5o3dgc13AdjacencyInfo11AddNeighborEll.exit65:  ; preds = %bb.bc, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit.i59, %bb.bb
  %i.kj = add nuw nsw i64 %.03581, 1              ; 2 uses
  %i.kk = add nuw nsw i64 %.082, 3
  %i.kl = load i64, ptr %i.a, align 8
  %i.km = icmp slt i64 %i.kj, %i.kl
  br i1 %i.km, label %.lr.ph83, label %._crit_edge84, !llvm.loop !1794
}

declare noundef i32 @_ZN5o3dgc22CompressedTriangleFans4SaveERNS_12BinaryStreamEbNS_15O3DGCStreamTypeE(ptr noundef nonnull align 8 dereferenceable(164), ptr noundef nonnull align 8 dereferenceable(28), i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5o3dgc19TriangleListEncoderItE27CompueLocalConnectivityInfoEl(ptr noundef nonnull align 8 dereferenceable(556) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !guid !1805 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 17 uses
  %i.d = icmp sgt i64 %1, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  br i1 %i.d, label %bb.b, label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %1
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = load i64, ptr %i.h, align 8
  br label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit

_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit:           ; preds = %bb.a, %bb.b
  %i.j = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.l = getelementptr inbounds [8 x i8], ptr %i.f, i64 %1
  %i.m = load i64, ptr %i.l, align 8
  %i.n = icmp slt i64 %i.j, %i.m
  br i1 %i.n, label %.lr.ph159, label %.loopexit135

.lr.ph159:                                        ; preds = %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 15 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 18 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 152
  br label %bb.c

._crit_edge160:                                   ; preds = %.loopexit137
  %.pre192 = load i64, ptr %i.c, align 8          ; 2 uses
  %i.w = icmp sgt i64 %.pre192, 2
  br i1 %i.w, label %.lr.ph163, label %.loopexit135

.lr.ph163:                                        ; preds = %._crit_edge160
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.pre194 = load ptr, ptr %i.x, align 8
  br label %bb.x

bb.c:                                             ; preds = %.lr.ph159, %.loopexit137
  %.089158 = phi i64 [ %i.j, %.lr.ph159 ], [ %i.ix, %.loopexit137 ] ; 2 uses
  %i.z = load ptr, ptr %i.o, align 8
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.089158
  %i.ab = load i64, ptr %i.aa, align 8            ; 4 uses
  %i.ac = load ptr, ptr %i.p, align 8
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ab
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %i.u, align 8
  %i.ah = load i64, ptr %i.a, align 8
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ah
  store i64 %i.ab, ptr %i.ai, align 8
  %i.aj = load ptr, ptr %i.q, align 8
  %.idx94 = mul nsw i64 %i.ab, 6
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %.idx94 ; 5 uses
  %i.al = load ptr, ptr %i.v, align 8
  %i.am = load i64, ptr %i.a, align 8
  %.idx131 = shl i64 %i.am, 4
  %i.an = getelementptr i8, ptr %i.al, i64 %.idx131 ; 4 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  %i.ap = load i16, ptr %i.ak, align 2
  %i.aq = zext i16 %i.ap to i64                   ; 2 uses
  %i.ar = icmp eq i64 %1, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 2 ; 2 uses
  %i.at = load i16, ptr %i.as, align 2
  %i.au = zext i16 %i.at to i64                   ; 2 uses
  br i1 %i.ar, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 %i.au, ptr %i.an, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  br label %_ZN5o3dgc18CompueOppositeEdgeItEEvlPKT_RlS4_.exit

bb.f:                                             ; preds = %bb.d
  %i.aw = icmp eq i64 %1, %i.au
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = zext i16 %i.ay to i64
  store i64 %i.az, ptr %i.an, align 8
  br label %_ZN5o3dgc18CompueOppositeEdgeItEEvlPKT_RlS4_.exit

bb.h:                                             ; preds = %bb.f
  store i64 %i.aq, ptr %i.an, align 8
  br label %_ZN5o3dgc18CompueOppositeEdgeItEEvlPKT_RlS4_.exit

_ZN5o3dgc18CompueOppositeEdgeItEEvlPKT_RlS4_.exit: ; preds = %bb.e, %bb.g, %bb.h
  %.sink17.in.i = phi ptr [ %i.ak, %bb.g ], [ %i.as, %bb.h ], [ %i.av, %bb.e ]
  %.sink17.i = load i16, ptr %.sink17.in.i, align 2
  %i.ba = zext i16 %.sink17.i to i64
  store i64 %i.ba, ptr %i.ao, align 8
  %i.bb = load i64, ptr %i.a, align 8
  %i.bc = add nsw i64 %i.bb, 1
  store i64 %i.bc, ptr %i.a, align 8
  br label %.loopexit137

bb.i:                                             ; preds = %bb.c
  %i.bd = load i64, ptr %i.b, align 8
  %i.be = add nsw i64 %i.bd, 1
  store i64 %i.be, ptr %i.b, align 8
  %.idx = mul i64 %i.ab, 6                        ; 3 uses
  %i.bf = load ptr, ptr %i.q, align 8
  %i.bg = getelementptr i8, ptr %i.bf, i64 %.idx
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = zext i16 %i.bh to i64                   ; 2 uses
  %i.bj = load ptr, ptr %i.r, align 8             ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bi
  %i.bl = load i64, ptr %i.bk, align 8            ; 4 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %1
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = icmp sgt i64 %i.bl, %i.bn
  br i1 %i.bo, label %.preheader136, label %bb.n

.preheader136:                                    ; preds = %bb.i
  %i.bp = load i64, ptr %i.c, align 8             ; 11 uses
  %i.bq = icmp sgt i64 %i.bp, 0
  %.pre183 = load ptr, ptr %i.s, align 8          ; 3 uses
  br i1 %i.bq, label %.lr.ph, label %.critedge96

.lr.ph:                                           ; preds = %.preheader136, %bb.m
  %.086154 = phi i64 [ %i.dm, %bb.m ], [ 0, %.preheader136 ] ; 9 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.pre183, i64 %.086154
  %i.bs = load i64, ptr %i.br, align 8            ; 2 uses
  %i.bt = icmp eq i64 %i.bl, %i.bs
  br i1 %i.bt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.bu = load ptr, ptr %i.t, align 8
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.086154 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = add nsw i64 %i.bw, 1
  store i64 %i.bx, ptr %i.bv, align 8
  br label %bb.n

bb.k:                                             ; preds = %.lr.ph
  %i.by = icmp slt i64 %i.bl, %i.bs
  br i1 %i.by, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bz = add nuw nsw i64 %i.bp, 1
  store i64 %i.bz, ptr %i.c, align 8
  %i.ca = icmp sgt i64 %i.bp, %.086154
  br i1 %i.ca, label %.lr.ph156.preheader, label %._crit_edge

.lr.ph156.preheader:                              ; preds = %bb.l
  %i.cb = sub nuw nsw i64 %i.bp, %.086154
  %.neg = add nuw i64 %.086154, 1
  %xtraiter = and i64 %i.cb, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph156.prol.loopexit, label %.lr.ph156.prol

.lr.ph156.prol:                                   ; preds = %.lr.ph156.preheader
  %i.cc = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.cd = add nsw i64 %i.bp, -1                   ; 3 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.bp
  store i64 %i.cf, ptr %i.cg, align 8
  %i.ch = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.cd
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.bp
  store i64 %i.cj, ptr %i.ck, align 8
  br label %.lr.ph156.prol.loopexit

.lr.ph156.prol.loopexit:                          ; preds = %.lr.ph156.prol, %.lr.ph156.preheader
  %.085155.unr = phi i64 [ %i.bp, %.lr.ph156.preheader ], [ %i.cd, %.lr.ph156.prol ]
  %i.cl = icmp eq i64 %i.bp, %.neg
  br i1 %i.cl, label %._crit_edge.loopexit, label %.lr.ph156

._crit_edge.loopexit:                             ; preds = %.lr.ph156, %.lr.ph156.prol.loopexit
  %.pre184 = load ptr, ptr %i.r, align 8
  %.pre185 = load ptr, ptr %i.s, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.l
  %i.cm = phi ptr [ %.pre185, %._crit_edge.loopexit ], [ %.pre183, %bb.l ]
  %i.cn = phi ptr [ %.pre184, %._crit_edge.loopexit ], [ %i.bj, %bb.l ]
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.bi
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %.086154
  store i64 %i.cp, ptr %i.cq, align 8
  %i.cr = load ptr, ptr %i.t, align 8
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.086154
  store i64 1, ptr %i.cs, align 8
  br label %bb.n

.lr.ph156:                                        ; preds = %.lr.ph156.prol.loopexit, %.lr.ph156
  %.085155 = phi i64 [ %i.dd, %.lr.ph156 ], [ %.085155.unr, %.lr.ph156.prol.loopexit ] ; 4 uses
  %i.ct = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.cu = add nsw i64 %.085155, -1                ; 4 uses
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.085155
  store i64 %i.cw, ptr %i.cx, align 8
  %i.cy = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.cu
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.085155
  store i64 %i.da, ptr %i.db, align 8
  %i.dc = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.dd = add nsw i64 %.085155, -2                ; 4 uses
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.cu
  store i64 %i.df, ptr %i.dg, align 8
  %i.dh = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.di = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.dd
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.cu
  store i64 %i.dj, ptr %i.dk, align 8
  %i.dl = icmp sgt i64 %i.dd, %.086154
  br i1 %i.dl, label %.lr.ph156, label %._crit_edge.loopexit, !llvm.loop !1796

bb.m:                                             ; preds = %bb.k
  %i.dm = add nuw nsw i64 %.086154, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.dm, %i.bp
  br i1 %exitcond.not, label %.critedge96, label %.lr.ph, !llvm.loop !1797

.critedge96:                                      ; preds = %bb.m, %.preheader136
  %i.dn = getelementptr inbounds [8 x i8], ptr %.pre183, i64 %i.bp
  store i64 %i.bl, ptr %i.dn, align 8
  %i.do = load ptr, ptr %i.t, align 8
  %i.dp = load i64, ptr %i.c, align 8
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.dp
  store i64 1, ptr %i.dq, align 8
  %i.dr = load i64, ptr %i.c, align 8
  %i.ds = add nsw i64 %i.dr, 1
  store i64 %i.ds, ptr %i.c, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %._crit_edge, %.critedge96, %bb.i
  %i.dt = load ptr, ptr %i.q, align 8
  %i.du = getelementptr i8, ptr %i.dt, i64 %.idx
  %i.dv = getelementptr i8, ptr %i.du, i64 2
  %i.dw = load i16, ptr %i.dv, align 2
  %i.dx = zext i16 %i.dw to i64                   ; 2 uses
  %i.dy = load ptr, ptr %i.r, align 8             ; 3 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dx
  %i.ea = load i64, ptr %i.dz, align 8            ; 4 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %1
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = icmp sgt i64 %i.ea, %i.ec
  br i1 %i.ed, label %.preheader136.1, label %bb.s

.preheader136.1:                                  ; preds = %bb.n
  %i.ee = load i64, ptr %i.c, align 8             ; 11 uses
  %i.ef = icmp sgt i64 %i.ee, 0
  %.pre186 = load ptr, ptr %i.s, align 8          ; 3 uses
  br i1 %i.ef, label %.lr.ph.1, label %.critedge96.1

.lr.ph.1:                                         ; preds = %.preheader136.1, %bb.p
  %.086154.1 = phi i64 [ %i.ek, %bb.p ], [ 0, %.preheader136.1 ] ; 9 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.pre186, i64 %.086154.1
  %i.eh = load i64, ptr %i.eg, align 8            ; 2 uses
  %i.ei = icmp eq i64 %i.ea, %i.eh
  br i1 %i.ei, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.lr.ph.1
  %i.ej = icmp slt i64 %i.ea, %i.eh
  br i1 %i.ej, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ek = add nuw nsw i64 %.086154.1, 1           ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.ek, %i.ee
  br i1 %exitcond.1.not, label %.critedge96.1, label %.lr.ph.1, !llvm.loop !1797

.critedge96.1:                                    ; preds = %bb.p, %.preheader136.1
  %i.el = getelementptr inbounds [8 x i8], ptr %.pre186, i64 %i.ee
  store i64 %i.ea, ptr %i.el, align 8
  %i.em = load ptr, ptr %i.t, align 8
  %i.en = load i64, ptr %i.c, align 8
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.em, i64 %i.en
  store i64 1, ptr %i.eo, align 8
  %i.ep = load i64, ptr %i.c, align 8
  %i.eq = add nsw i64 %i.ep, 1
  store i64 %i.eq, ptr %i.c, align 8
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.er = add nuw nsw i64 %i.ee, 1
  store i64 %i.er, ptr %i.c, align 8
  %i.es = icmp sgt i64 %i.ee, %.086154.1
  br i1 %i.es, label %.lr.ph156.1.preheader, label %._crit_edge.1

.lr.ph156.1.preheader:                            ; preds = %bb.q
  %i.et = sub nuw nsw i64 %i.ee, %.086154.1
  %.neg338 = add nuw i64 %.086154.1, 1
  %xtraiter331 = and i64 %i.et, 1
  %lcmp.mod332.not = icmp eq i64 %xtraiter331, 0
  br i1 %lcmp.mod332.not, label %.lr.ph156.1.prol.loopexit, label %.lr.ph156.1.prol

.lr.ph156.1.prol:                                 ; preds = %.lr.ph156.1.preheader
  %i.eu = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.ev = add nsw i64 %i.ee, -1                   ; 3 uses
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %i.ev
  %i.ex = load i64, ptr %i.ew, align 8
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.ee
  store i64 %i.ex, ptr %i.ey, align 8
  %i.ez = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %i.ev
  %i.fb = load i64, ptr %i.fa, align 8
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.ee
  store i64 %i.fb, ptr %i.fc, align 8
  br label %.lr.ph156.1.prol.loopexit

.lr.ph156.1.prol.loopexit:                        ; preds = %.lr.ph156.1.prol, %.lr.ph156.1.preheader
  %.085155.1.unr = phi i64 [ %i.ee, %.lr.ph156.1.preheader ], [ %i.ev, %.lr.ph156.1.prol ]
  %i.fd = icmp eq i64 %i.ee, %.neg338
  br i1 %i.fd, label %._crit_edge.loopexit.1, label %.lr.ph156.1

.lr.ph156.1:                                      ; preds = %.lr.ph156.1.prol.loopexit, %.lr.ph156.1
  %.085155.1 = phi i64 [ %i.fo, %.lr.ph156.1 ], [ %.085155.1.unr, %.lr.ph156.1.prol.loopexit ] ; 4 uses
  %i.fe = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.ff = add nsw i64 %.085155.1, -1              ; 4 uses
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %i.ff
  %i.fh = load i64, ptr %i.fg, align 8
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %.085155.1
  store i64 %i.fh, ptr %i.fi, align 8
  %i.fj = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %i.ff
  %i.fl = load i64, ptr %i.fk, align 8
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %.085155.1
  store i64 %i.fl, ptr %i.fm, align 8
  %i.fn = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.fo = add nsw i64 %.085155.1, -2              ; 4 uses
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %i.fo
  %i.fq = load i64, ptr %i.fp, align 8
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.ff
  store i64 %i.fq, ptr %i.fr, align 8
  %i.fs = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %i.fo
  %i.fu = load i64, ptr %i.ft, align 8
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.ff
  store i64 %i.fu, ptr %i.fv, align 8
  %i.fw = icmp sgt i64 %i.fo, %.086154.1
  br i1 %i.fw, label %.lr.ph156.1, label %._crit_edge.loopexit.1, !llvm.loop !1796

._crit_edge.loopexit.1:                           ; preds = %.lr.ph156.1, %.lr.ph156.1.prol.loopexit
  %.pre187 = load ptr, ptr %i.r, align 8
  %.pre188 = load ptr, ptr %i.s, align 8
  br label %._crit_edge.1

._crit_edge.1:                                    ; preds = %._crit_edge.loopexit.1, %bb.q
  %i.fx = phi ptr [ %.pre188, %._crit_edge.loopexit.1 ], [ %.pre186, %bb.q ]
  %i.fy = phi ptr [ %.pre187, %._crit_edge.loopexit.1 ], [ %i.dy, %bb.q ]
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.dx
  %i.ga = load i64, ptr %i.fz, align 8
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.086154.1
  store i64 %i.ga, ptr %i.gb, align 8
  %i.gc = load ptr, ptr %i.t, align 8
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %.086154.1
  store i64 1, ptr %i.gd, align 8
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph.1
  %i.ge = load ptr, ptr %i.t, align 8
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %.086154.1 ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8
  %i.gh = add nsw i64 %i.gg, 1
  store i64 %i.gh, ptr %i.gf, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.1, %.critedge96.1, %bb.n
  %i.gi = load ptr, ptr %i.q, align 8
  %i.gj = getelementptr i8, ptr %i.gi, i64 %.idx
  %i.gk = getelementptr i8, ptr %i.gj, i64 4
  %i.gl = load i16, ptr %i.gk, align 2
  %i.gm = zext i16 %i.gl to i64                   ; 2 uses
  %i.gn = load ptr, ptr %i.r, align 8             ; 3 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.gm
  %i.gp = load i64, ptr %i.go, align 8            ; 4 uses
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.gn, i64 %1
  %i.gr = load i64, ptr %i.gq, align 8
  %i.gs = icmp sgt i64 %i.gp, %i.gr
  br i1 %i.gs, label %.preheader136.2, label %.loopexit137

.preheader136.2:                                  ; preds = %bb.s
  %i.gt = load i64, ptr %i.c, align 8             ; 11 uses
  %i.gu = icmp sgt i64 %i.gt, 0
  %.pre189 = load ptr, ptr %i.s, align 8          ; 3 uses
  br i1 %i.gu, label %.lr.ph.2, label %.critedge96.2

.lr.ph.2:                                         ; preds = %.preheader136.2, %bb.u
  %.086154.2 = phi i64 [ %i.gz, %bb.u ], [ 0, %.preheader136.2 ] ; 9 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.pre189, i64 %.086154.2
  %i.gw = load i64, ptr %i.gv, align 8            ; 2 uses
  %i.gx = icmp eq i64 %i.gp, %i.gw
  br i1 %i.gx, label %bb.w, label %bb.t

bb.t:                                             ; preds = %.lr.ph.2
  %i.gy = icmp slt i64 %i.gp, %i.gw
  br i1 %i.gy, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gz = add nuw nsw i64 %.086154.2, 1           ; 2 uses
  %exitcond.2.not = icmp eq i64 %i.gz, %i.gt
  br i1 %exitcond.2.not, label %.critedge96.2, label %.lr.ph.2, !llvm.loop !1797

.critedge96.2:                                    ; preds = %bb.u, %.preheader136.2
  %i.ha = getelementptr inbounds [8 x i8], ptr %.pre189, i64 %i.gt
  store i64 %i.gp, ptr %i.ha, align 8
  %i.hb = load ptr, ptr %i.t, align 8
  %i.hc = load i64, ptr %i.c, align 8
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.hc
  store i64 1, ptr %i.hd, align 8
  %i.he = load i64, ptr %i.c, align 8
  %i.hf = add nsw i64 %i.he, 1
  store i64 %i.hf, ptr %i.c, align 8
  br label %.loopexit137

bb.v:                                             ; preds = %bb.t
  %i.hg = add nuw nsw i64 %i.gt, 1
  store i64 %i.hg, ptr %i.c, align 8
  %i.hh = icmp sgt i64 %i.gt, %.086154.2
  br i1 %i.hh, label %.lr.ph156.2.preheader, label %._crit_edge.2

.lr.ph156.2.preheader:                            ; preds = %bb.v
  %i.hi = sub nuw nsw i64 %i.gt, %.086154.2
  %.neg339 = add nuw i64 %.086154.2, 1
  %xtraiter336 = and i64 %i.hi, 1
  %lcmp.mod337.not = icmp eq i64 %xtraiter336, 0
  br i1 %lcmp.mod337.not, label %.lr.ph156.2.prol.loopexit, label %.lr.ph156.2.prol

.lr.ph156.2.prol:                                 ; preds = %.lr.ph156.2.preheader
  %i.hj = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.hk = add nsw i64 %i.gt, -1                   ; 3 uses
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.hj, i64 %i.hk
  %i.hm = load i64, ptr %i.hl, align 8
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %i.gt
  store i64 %i.hm, ptr %i.hn, align 8
  %i.ho = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.ho, i64 %i.hk
  %i.hq = load i64, ptr %i.hp, align 8
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.gt
  store i64 %i.hq, ptr %i.hr, align 8
  br label %.lr.ph156.2.prol.loopexit

.lr.ph156.2.prol.loopexit:                        ; preds = %.lr.ph156.2.prol, %.lr.ph156.2.preheader
  %.085155.2.unr = phi i64 [ %i.gt, %.lr.ph156.2.preheader ], [ %i.hk, %.lr.ph156.2.prol ]
  %i.hs = icmp eq i64 %i.gt, %.neg339
  br i1 %i.hs, label %._crit_edge.loopexit.2, label %.lr.ph156.2

.lr.ph156.2:                                      ; preds = %.lr.ph156.2.prol.loopexit, %.lr.ph156.2
  %.085155.2 = phi i64 [ %i.id, %.lr.ph156.2 ], [ %.085155.2.unr, %.lr.ph156.2.prol.loopexit ] ; 4 uses
  %i.ht = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.hu = add nsw i64 %.085155.2, -1              ; 4 uses
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.ht, i64 %i.hu
  %i.hw = load i64, ptr %i.hv, align 8
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %.085155.2
  store i64 %i.hw, ptr %i.hx, align 8
  %i.hy = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %i.hu
  %i.ia = load i64, ptr %i.hz, align 8
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %.085155.2
  store i64 %i.ia, ptr %i.ib, align 8
  %i.ic = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.id = add nsw i64 %.085155.2, -2              ; 4 uses
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.ic, i64 %i.id
  %i.if = load i64, ptr %i.ie, align 8
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.hu
  store i64 %i.if, ptr %i.ig, align 8
  %i.ih = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.id
  %i.ij = load i64, ptr %i.ii, align 8
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %i.hu
  store i64 %i.ij, ptr %i.ik, align 8
  %i.il = icmp sgt i64 %i.id, %.086154.2
  br i1 %i.il, label %.lr.ph156.2, label %._crit_edge.loopexit.2, !llvm.loop !1796

._crit_edge.loopexit.2:                           ; preds = %.lr.ph156.2, %.lr.ph156.2.prol.loopexit
  %.pre190 = load ptr, ptr %i.r, align 8
  %.pre191 = load ptr, ptr %i.s, align 8
  br label %._crit_edge.2

._crit_edge.2:                                    ; preds = %._crit_edge.loopexit.2, %bb.v
  %i.im = phi ptr [ %.pre191, %._crit_edge.loopexit.2 ], [ %.pre189, %bb.v ]
  %i.in = phi ptr [ %.pre190, %._crit_edge.loopexit.2 ], [ %i.gn, %bb.v ]
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %i.gm
  %i.ip = load i64, ptr %i.io, align 8
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %.086154.2
  store i64 %i.ip, ptr %i.iq, align 8
  %i.ir = load ptr, ptr %i.t, align 8
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %.086154.2
  store i64 1, ptr %i.is, align 8
  br label %.loopexit137

bb.w:                                             ; preds = %.lr.ph.2
  %i.it = load ptr, ptr %i.t, align 8
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %.086154.2 ; 2 uses
  %i.iv = load i64, ptr %i.iu, align 8
  %i.iw = add nsw i64 %i.iv, 1
  store i64 %i.iw, ptr %i.iu, align 8
  br label %.loopexit137

.loopexit137:                                     ; preds = %bb.s, %.critedge96.2, %._crit_edge.2, %bb.w, %_ZN5o3dgc18CompueOppositeEdgeItEEvlPKT_RlS4_.exit
  %i.ix = add nsw i64 %.089158, 1                 ; 2 uses
  %i.iy = load ptr, ptr %i.k, align 8
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.iy, i64 %1
  %i.ja = load i64, ptr %i.iz, align 8
  %i.jb = icmp slt i64 %i.ix, %i.ja
  br i1 %i.jb, label %bb.c, label %._crit_edge160, !llvm.loop !1798

bb.x:                                             ; preds = %.lr.ph163, %.critedge
  %i.jc = phi i64 [ %.pre192, %.lr.ph163 ], [ %i.jt, %.critedge ]
  %i.jd = phi ptr [ %.pre194, %.lr.ph163 ], [ %i.ju, %.critedge ] ; 2 uses
  %.083162 = phi i64 [ 1, %.lr.ph163 ], [ %i.jv, %.critedge ] ; 3 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %.083162
  %i.jf = load i64, ptr %i.je, align 8
  %i.jg = icmp eq i64 %i.jf, 1
  br i1 %i.jg, label %.preheader133, label %.critedge

.preheader133:                                    ; preds = %bb.x, %bb.y
  %.084161 = phi i64 [ %i.jk, %bb.y ], [ %.083162, %bb.x ] ; 3 uses
  %i.jh = load ptr, ptr %i.x, align 8             ; 3 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %.084161 ; 2 uses
  %i.jj = load i64, ptr %i.ji, align 8            ; 2 uses
  %i.jk = add nsw i64 %.084161, -1                ; 3 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %i.jk ; 2 uses
  %i.jm = load i64, ptr %i.jl, align 8            ; 2 uses
  %i.jn = icmp slt i64 %i.jj, %i.jm
  br i1 %i.jn, label %bb.y, label %.critedge.loopexit

bb.y:                                             ; preds = %.preheader133
  store i64 %i.jm, ptr %i.ji, align 8
  store i64 %i.jj, ptr %i.jl, align 8
  %i.jo = load ptr, ptr %i.y, align 8
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %i.jk ; 2 uses
  %i.jq = load <2 x i64>, ptr %i.jp, align 8
  %i.jr = shufflevector <2 x i64> %i.jq, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.jr, ptr %i.jp, align 8
  %i.js = icmp sgt i64 %.084161, 1
  br i1 %i.js, label %.preheader133, label %..critedge.loopexit_crit_edge, !llvm.loop !1799

..critedge.loopexit_crit_edge:                    ; preds = %bb.y
  %.pre193.pre = load ptr, ptr %i.x, align 8
  br label %.critedge.loopexit, !llvm.loop !1799

.critedge.loopexit:                               ; preds = %.preheader133, %..critedge.loopexit_crit_edge
  %.pre193 = phi ptr [ %.pre193.pre, %..critedge.loopexit_crit_edge ], [ %i.jh, %.preheader133 ]
  %.pre196 = load i64, ptr %i.c, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.x
  %i.jt = phi i64 [ %.pre196, %.critedge.loopexit ], [ %i.jc, %bb.x ] ; 2 uses
  %i.ju = phi ptr [ %.pre193, %.critedge.loopexit ], [ %i.jd, %bb.x ]
  %i.jv = add nuw nsw i64 %.083162, 1             ; 2 uses
  %i.jw = icmp slt i64 %i.jv, %i.jt
  br i1 %i.jw, label %bb.x, label %.loopexit135, !llvm.loop !1800

.loopexit135:                                     ; preds = %.critedge, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit, %._crit_edge160
  %i.jx = load i64, ptr %i.a, align 8             ; 7 uses
  %i.jy = icmp sgt i64 %i.jx, 0
  br i1 %i.jy, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %.loopexit135
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.kb = load i64, ptr %i.ka, align 8
  %i.kc = icmp sgt i64 %i.jx, %i.kb
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8            ; 3 uses
  br i1 %i.kc, label %bb.aa, label %._ZN5o3dgc13AdjacencyInfo25AllocateNumNeighborsArrayEl.exit_crit_edge

._ZN5o3dgc13AdjacencyInfo25AllocateNumNeighborsArrayEl.exit_crit_edge: ; preds = %bb.z
  %.pre210 = shl i64 %i.jx, 3
  br label %_ZN5o3dgc13AdjacencyInfo25AllocateNumNeighborsArrayEl.exit

bb.aa:                                            ; preds = %bb.z
  %i.kf = icmp eq ptr %i.ke, null
  br i1 %i.kf, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZdaPv(ptr noundef nonnull %i.ke) #31
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  store i64 %i.jx, ptr %i.ka, align 8
  %i.kg = icmp samesign ugt i64 %i.jx, 2305843009213693951
  %i.kh = shl i64 %i.jx, 3                        ; 2 uses
  %i.ki = select i1 %i.kg, i64 -1, i64 %i.kh
  %i.kj = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ki) #33 ; 2 uses
  store ptr %i.kj, ptr %i.kd, align 8
  br label %_ZN5o3dgc13AdjacencyInfo25AllocateNumNeighborsArrayEl.exit

_ZN5o3dgc13AdjacencyInfo25AllocateNumNeighborsArrayEl.exit: ; preds = %._ZN5o3dgc13AdjacencyInfo25AllocateNumNeighborsArrayEl.exit_crit_edge, %bb.ac
  %.pre-phi = phi i64 [ %.pre210, %._ZN5o3dgc13AdjacencyInfo25AllocateNumNeighborsArrayEl.exit_crit_edge ], [ %i.kh, %bb.ac ]
  %i.kk = phi ptr [ %i.ke, %._ZN5o3dgc13AdjacencyInfo25AllocateNumNeighborsArrayEl.exit_crit_edge ], [ %i.kj, %bb.ac ]
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  store i64 %i.jx, ptr %i.kl, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.kk, i8 0, i64 %.pre-phi, i1 false)
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.ko = load i64, ptr %i.a, align 8             ; 6 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.kq = load i64, ptr %i.kp, align 8
  %i.kr = icmp sgt i64 %i.ko, %i.kq
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.kt = load ptr, ptr %i.ks, align 8            ; 3 uses
  br i1 %i.kr, label %bb.ad, label %_ZN5o3dgc13AdjacencyInfo25AllocateNumNeighborsArrayEl.exit._ZN5o3dgc13AdjacencyInfo25AllocateNumNeighborsArrayEl.exit97_crit_edge

_ZN5o3dgc13AdjacencyInfo25AllocateNumNeighborsArrayEl.exit._ZN5o3dgc13AdjacencyInfo25AllocateNumNeighborsArrayEl.exit97_crit_edge: ; preds = %_ZN5o3dgc13AdjacencyInfo25AllocateNumNeighborsArrayEl.exit
  %.pre211 = shl i64 %i.ko, 3
  br label %_ZN5o3dgc13AdjacencyInfo25AllocateNumNeighborsArrayEl.exit97

bb.ad:                                            ; preds = %_ZN5o3dgc13AdjacencyInfo25AllocateNumNeighborsArrayEl.exit
  %i.ku = icmp eq ptr %i.kt, null
  br i1 %i.ku, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZdaPv(ptr noundef nonnull %i.kt) #31
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  store i64 %i.ko, ptr %i.kp, align 8
  %i.kv = icmp ugt i64 %i.ko, 2305843009213693951
  %i.kw = shl i64 %i.ko, 3                        ; 2 uses
  %i.kx = select i1 %i.kv, i64 -1, i64 %i.kw
  %i.ky = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.kx) #33 ; 2 uses
end_hunk_1
