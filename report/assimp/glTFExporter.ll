Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/glTFExporter?download=true
inline.NumInlined: 6973
inline.NumDeleted: 2254
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN5o3dgc19TriangleListEncoderItE4InitEPKtll:bb.a

bb.ar:                                            ; preds = %.lr.ph83
  %i.ir = getelementptr [8 x i8], ptr %i.iq, i64 %i.ip
  %i.is = getelementptr i8, ptr %i.ir, i64 -8
  %i.it = load i64, ptr %i.is, align 8
  br label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit.i

_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit.i:         ; preds = %bb.ar, %.lr.ph83
  %i.iu = phi i64 [ %i.it, %bb.ar ], [ 0, %.lr.ph83 ] ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %i.ip
  %i.iw = load i64, ptr %i.iv, align 8            ; 2 uses
  %.not16.not.i = icmp slt i64 %i.iu, %i.iw
  br i1 %.not16.not.i, label %.lr.ph.i51, label %_ZN5o3dgc13AdjacencyInfo11AddNeighborEll.exit

.lr.ph.i51:                                       ; preds = %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit.i
  %i.ix = load ptr, ptr %i.ho, align 8            ; 2 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.au, %.lr.ph.i51
  %.01117.i = phi i64 [ %i.iu, %.lr.ph.i51 ], [ %i.jc, %bb.au ] ; 3 uses
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.ix, i64 %.01117.i
  %i.iz = load i64, ptr %i.iy, align 8
  %i.ja = icmp eq i64 %i.iz, -1
  br i1 %i.ja, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.ix, i64 %.01117.i
  store i64 %.03581, ptr %i.jb, align 8
  %.pre93 = load ptr, ptr %i.fe, align 8
  br label %_ZN5o3dgc13AdjacencyInfo11AddNeighborEll.exit

bb.au:                                            ; preds = %bb.as
  %i.jc = add i64 %.01117.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.jc, %i.iw
  br i1 %exitcond.not.i, label %_ZN5o3dgc13AdjacencyInfo11AddNeighborEll.exit, label %bb.as, !llvm.loop !18

_ZN5o3dgc13AdjacencyInfo11AddNeighborEll.exit:    ; preds = %bb.au, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit.i, %bb.at
  %i.jd = phi ptr [ %.pre93, %bb.at ], [ %i.iq, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit.i ], [ %i.iq, %bb.au ] ; 4 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.in, i64 2
  %i.jf = load i16, ptr %i.je, align 2            ; 2 uses
  %i.jg = zext i16 %i.jf to i64                   ; 2 uses
  %.not67 = icmp eq i16 %i.jf, 0
  br i1 %.not67, label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit.i52, label %bb.av

bb.av:                                            ; preds = %_ZN5o3dgc13AdjacencyInfo11AddNeighborEll.exit
  %i.jh = getelementptr [8 x i8], ptr %i.jd, i64 %i.jg
  %i.ji = getelementptr i8, ptr %i.jh, i64 -8
  %i.jj = load i64, ptr %i.ji, align 8
  br label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit.i52

_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit.i52:       ; preds = %bb.av, %_ZN5o3dgc13AdjacencyInfo11AddNeighborEll.exit
  %i.jk = phi i64 [ %i.jj, %bb.av ], [ 0, %_ZN5o3dgc13AdjacencyInfo11AddNeighborEll.exit ] ; 2 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.jg
  %i.jm = load i64, ptr %i.jl, align 8            ; 2 uses
  %.not16.not.i53 = icmp slt i64 %i.jk, %i.jm
  br i1 %.not16.not.i53, label %.lr.ph.i55, label %_ZN5o3dgc13AdjacencyInfo11AddNeighborEll.exit58

.lr.ph.i55:                                       ; preds = %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit.i52
  %i.jn = load ptr, ptr %i.ho, align 8            ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ay, %.lr.ph.i55
  %.01117.i56 = phi i64 [ %i.jk, %.lr.ph.i55 ], [ %i.js, %bb.ay ] ; 3 uses
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.jn, i64 %.01117.i56
  %i.jp = load i64, ptr %i.jo, align 8
  %i.jq = icmp eq i64 %i.jp, -1
  br i1 %i.jq, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jr = getelementptr inbounds [8 x i8], ptr %i.jn, i64 %.01117.i56
  store i64 %.03581, ptr %i.jr, align 8
  %.pre94 = load ptr, ptr %i.fe, align 8
  br label %_ZN5o3dgc13AdjacencyInfo11AddNeighborEll.exit58

bb.ay:                                            ; preds = %bb.aw
  %i.js = add i64 %.01117.i56, 1                  ; 2 uses
  %exitcond.not.i57 = icmp eq i64 %i.js, %i.jm
  br i1 %exitcond.not.i57, label %_ZN5o3dgc13AdjacencyInfo11AddNeighborEll.exit58, label %bb.aw, !llvm.loop !18

_ZN5o3dgc13AdjacencyInfo11AddNeighborEll.exit58:  ; preds = %bb.ay, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit.i52, %bb.ax
  %i.jt = phi ptr [ %.pre94, %bb.ax ], [ %i.jd, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit.i52 ], [ %i.jd, %bb.ay ] ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  %i.jv = load i16, ptr %i.ju, align 2            ; 2 uses
  %i.jw = zext i16 %i.jv to i64                   ; 2 uses
  %.not68 = icmp eq i16 %i.jv, 0
  br i1 %.not68, label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit.i59, label %bb.az

bb.az:                                            ; preds = %_ZN5o3dgc13AdjacencyInfo11AddNeighborEll.exit58
  %i.jx = getelementptr [8 x i8], ptr %i.jt, i64 %i.jw
  %i.jy = getelementptr i8, ptr %i.jx, i64 -8
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
  %i.ki = add i64 %.01117.i63, 1                  ; 2 uses
  %exitcond.not.i64 = icmp eq i64 %i.ki, %i.kc
  br i1 %exitcond.not.i64, label %_ZN5o3dgc13AdjacencyInfo11AddNeighborEll.exit65, label %bb.ba, !llvm.loop !18

_ZN5o3dgc13AdjacencyInfo11AddNeighborEll.exit65:  ; preds = %bb.bc, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit.i59, %bb.bb
  %i.kj = add nuw nsw i64 %.03581, 1              ; 2 uses
  %i.kk = add nuw nsw i64 %.082, 3
  %i.kl = load i64, ptr %i.a, align 8
  %i.km = icmp slt i64 %i.kj, %i.kl
  br i1 %i.km, label %.lr.ph83, label %._crit_edge84, !llvm.loop !1005
}

declare noundef i32 @_ZN5o3dgc22CompressedTriangleFans4SaveERNS_12BinaryStreamEbNS_15O3DGCStreamTypeE(ptr noundef nonnull align 8 dereferenceable(164), ptr noundef nonnull align 8 dereferenceable(28), i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5o3dgc19TriangleListEncoderItE27CompueLocalConnectivityInfoEl(ptr noundef nonnull align 8 dereferenceable(556) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
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
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 160
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
  %i.an = getelementptr i8, ptr %i.al, i64 %.idx131 ; 3 uses
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
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sink = phi i64 [ %i.az, %bb.g ], [ %i.aq, %bb.f ]
  %.sink17.in.i.ph = phi ptr [ %i.ak, %bb.g ], [ %i.as, %bb.f ]
  store i64 %.sink, ptr %i.an, align 8
  br label %_ZN5o3dgc18CompueOppositeEdgeItEEvlPKT_RlS4_.exit

_ZN5o3dgc18CompueOppositeEdgeItEEvlPKT_RlS4_.exit: ; preds = %bb.h, %bb.e
  %.sink17.in.i = phi ptr [ %i.av, %bb.e ], [ %.sink17.in.i.ph, %bb.h ]
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
  %i.cb = sub nsw i64 %i.bp, %.086154
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
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %.085155
  store i64 %i.cw, ptr %i.cx, align 8
  %i.cy = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.cu
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %.085155
  store i64 %i.da, ptr %i.db, align 8
  %i.dc = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.dd = add nsw i64 %.085155, -2                ; 4 uses
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.cu
  store i64 %i.df, ptr %i.dg, align 8
  %i.dh = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.di = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.dd
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.cu
  store i64 %i.dj, ptr %i.dk, align 8
  %i.dl = icmp sgt i64 %i.dd, %.086154
  br i1 %i.dl, label %.lr.ph156, label %._crit_edge.loopexit, !llvm.loop !1006

bb.m:                                             ; preds = %bb.k
  %i.dm = add nuw nsw i64 %.086154, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.dm, %i.bp
  br i1 %exitcond.not, label %.critedge96, label %.lr.ph, !llvm.loop !1007

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
  br i1 %exitcond.1.not, label %.critedge96.1, label %.lr.ph.1, !llvm.loop !1007

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
  %i.et = sub nsw i64 %i.ee, %.086154.1
  %.neg329 = add nuw i64 %.086154.1, 1
end_hunk_0
