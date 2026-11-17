Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/test_eigen?download=true
inline.NumInlined: 10301
inline.NumDeleted: 4818
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5Eigen12SparseMatrixIfLi1EiE19reserveInnerVectorsINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEENS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEEEEEEvRKT_:bb.a
._crit_edge109.loopexit:                          ; preds = %bb.d
  %i.o = mul i64 %i.e, %i.m
  br label %._crit_edge109

._crit_edge109:                                   ; preds = %._crit_edge109.loopexit, %.preheader
  %.070.lcssa = phi i64 [ 0, %.preheader ], [ %i.o, %._crit_edge109.loopexit ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  tail call void @_ZN5Eigen8internal17CompressedStorageIfiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef %.070.lcssa) #34
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !194  ; 3 uses
  %i.s = load i64, ptr %i.d, align 8, !tbaa !196  ; 4 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = icmp sgt i64 %i.s, 0
  %i.v = load i32, ptr %i.t, align 4, !tbaa !41   ; 2 uses
  br i1 %i.u, label %.lr.ph119, label %._crit_edge120._crit_edge

.lr.ph119:                                        ; preds = %._crit_edge109
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !195
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph108, %bb.d
  %.076106 = phi i64 [ 0, %.lr.ph108 ], [ %i.z, %bb.d ] ; 3 uses
  %.077105 = phi i32 [ 0, %.lr.ph108 ], [ %i.ag, %bb.d ] ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.076106
  store i32 %.077105, ptr %i.y, align 4, !tbaa !41
  %i.z = add nuw nsw i64 %.076106, 1              ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !41
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.076106
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !41
  %i.ae = add i32 %i.j, %.077105
  %i.af = add i32 %i.ae, %i.ab
  %i.ag = sub i32 %i.af, %i.ad
  %exitcond122.not = icmp eq i64 %i.z, %i.e
  br i1 %exitcond122.not, label %._crit_edge109.loopexit, label %bb.d, !llvm.loop !1099

bb.e:                                             ; preds = %.lr.ph119, %._crit_edge114
  %.074117.in = phi i64 [ %i.s, %.lr.ph119 ], [ %.074117, %._crit_edge114 ] ; 2 uses
  %.075116 = phi i32 [ %i.v, %.lr.ph119 ], [ %i.ar, %._crit_edge114 ]
  %.074117 = add nsw i64 %.074117.in, -1          ; 5 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.074117 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !41 ; 3 uses
  %i.aj = sub nsw i32 %.075116, %i.ai             ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph113, label %.._crit_edge114_crit_edge

.._crit_edge114_crit_edge:                        ; preds = %bb.e
  %.phi.trans.insert125 = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.074117
  %.pre126.a = load i32, ptr %.phi.trans.insert125, align 4, !tbaa !41
  br label %._crit_edge114

.lr.ph113:                                        ; preds = %bb.e
  %i.al = add nsw i32 %i.aj, -1
  %i.am = zext nneg i32 %i.al to i64
  %i.an = load ptr, ptr %i.w, align 8, !tbaa !206
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.074117 ; 2 uses
  %i.ap = load ptr, ptr %i.p, align 8, !tbaa !57
  %.pre124 = load i32, ptr %i.ao, align 4, !tbaa !41
  br label %bb.f

._crit_edge114:                                   ; preds = %bb.f, %.._crit_edge114_crit_edge
  %i.aq = phi i32 [ %.pre126.a, %.._crit_edge114_crit_edge ], [ %i.bh, %bb.f ]
  %i.ar = phi i32 [ %i.ai, %.._crit_edge114_crit_edge ], [ %i.bc, %bb.f ]
  store i32 %i.aq, ptr %i.ah, align 4, !tbaa !41
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.074117
  store i32 %i.aj, ptr %i.as, align 4, !tbaa !41
  %i.at = icmp samesign ugt i64 %.074117.in, 1
  br i1 %i.at, label %bb.e, label %._crit_edge120, !llvm.loop !1100

bb.f:                                             ; preds = %.lr.ph113, %bb.f
  %i.au = phi i32 [ %.pre124, %.lr.ph113 ], [ %i.bh, %bb.f ]
  %i.av = phi i32 [ %i.ai, %.lr.ph113 ], [ %i.bc, %bb.f ]
  %.073111 = phi i64 [ %i.am, %.lr.ph113 ], [ %i.bk, %bb.f ] ; 4 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr [4 x i8], ptr %i.an, i64 %.073111 ; 2 uses
  %i.ay = getelementptr [4 x i8], ptr %i.ax, i64 %i.aw
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !41
  %i.ba = sext i32 %i.au to i64
  %i.bb = getelementptr [4 x i8], ptr %i.ax, i64 %i.ba
  store i32 %i.az, ptr %i.bb, align 4, !tbaa !41
  %i.bc = load i32, ptr %i.ah, align 4, !tbaa !41 ; 3 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr [4 x i8], ptr %i.ap, i64 %.073111 ; 2 uses
  %i.bf = getelementptr [4 x i8], ptr %i.be, i64 %i.bd
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !35
  %i.bh = load i32, ptr %i.ao, align 4, !tbaa !41 ; 3 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr [4 x i8], ptr %i.be, i64 %i.bi
  store float %i.bg, ptr %i.bj, align 4, !tbaa !35
  %i.bk = add nsw i64 %.073111, -1
  %.not141 = icmp eq i64 %.073111, 0
  br i1 %.not141, label %._crit_edge114, label %bb.f, !llvm.loop !1101

._crit_edge120:                                   ; preds = %._crit_edge114
  %i.bl = add nsw i64 %i.s, -1                    ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !41
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !195
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bl
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !41
  %i.br = add nsw i32 %i.bq, %i.bn
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !285
  %i.bu = add nsw i32 %i.br, %i.bt                ; 2 uses
  store i32 %i.bu, ptr %i.t, align 4, !tbaa !41
  br label %._crit_edge120._crit_edge

._crit_edge120._crit_edge:                        ; preds = %._crit_edge109, %._crit_edge120
  %i.bv = phi i32 [ %i.bu, %._crit_edge120 ], [ %i.v, %._crit_edge109 ]
  %i.bw = sext i32 %i.bv to i64
  tail call void @_ZN5Eigen8internal17CompressedStorageIfiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef %i.bw, double noundef 0.000000e+00) #34
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  %i.bx = add i64 %i.f, 4
  %i.by = tail call noalias ptr @malloc(i64 noundef %i.bx) #39 ; 5 uses
  %.not = icmp eq ptr %i.by, null
  br i1 %.not, label %bb.h, label %.preheader94

.preheader94:                                     ; preds = %bb.g
  %i.bz = icmp sgt i64 %i.e, 0
  br i1 %i.bz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader94
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !194 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !285
  %.pre = load i32, ptr %i.cb, align 4, !tbaa !41
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ce = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ce, align 8, !tbaa !54
  tail call void @__cxa_throw(ptr nonnull %i.ce, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #37
  unreachable

._crit_edge:                                      ; preds = %bb.i, %.preheader94
  %.072.lcssa = phi i32 [ 0, %.preheader94 ], [ %i.cx, %bb.i ] ; 2 uses
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.e
  store i32 %.072.lcssa, ptr %i.cf, align 4, !tbaa !41
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ch = sext i32 %.072.lcssa to i64
  tail call void @_ZN5Eigen8internal17CompressedStorageIfiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, i64 noundef %i.ch, double noundef 0.000000e+00) #34
  %i.ci = load i64, ptr %i.d, align 8, !tbaa !196 ; 2 uses
  %i.cj = icmp sgt i64 %i.ci, 0
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !208 ; 2 uses
  br i1 %i.cj, label %.lr.ph103, label %._crit_edge104

.lr.ph103:                                        ; preds = %._crit_edge
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %i.cn = phi i32 [ %.pre, %.lr.ph ], [ %i.cr, %bb.i ]
  %.07196 = phi i64 [ 0, %.lr.ph ], [ %i.cp, %bb.i ] ; 3 uses
  %.07295 = phi i32 [ 0, %.lr.ph ], [ %i.cx, %bb.i ] ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.07196
  store i32 %.07295, ptr %i.co, align 4, !tbaa !41
  %i.cp = add nuw nsw i64 %.07196, 1              ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !41 ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.07196
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !41 ; 2 uses
  %i.cu = add i32 %i.cn, %i.ct
  %i.cv = sub i32 %i.cr, %i.cu
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.cd, i32 %i.cv)
  %i.cw = add i32 %i.ct, %.07295
  %i.cx = add i32 %i.cw, %.sroa.speculated        ; 2 uses
  %exitcond.not = icmp eq i64 %i.cp, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !1102

._crit_edge104:                                   ; preds = %.loopexit, %._crit_edge
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.by, ptr %i.cy, align 8, !tbaa !208
  tail call void @free(ptr noundef %i.cl) #32
  br label %bb.m

bb.j:                                             ; preds = %.lr.ph103, %.loopexit
  %.069101.in = phi i64 [ %i.ci, %.lr.ph103 ], [ %.069101, %.loopexit ] ; 2 uses
  %.069101 = add nsw i64 %.069101.in, -1          ; 4 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.069101
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !41 ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %.069101 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !41 ; 2 uses
  %i.dd = icmp sgt i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.de = load ptr, ptr %i.a, align 8, !tbaa !195
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.069101
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !41 ; 2 uses
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %.lr.ph99, label %.loopexit

.lr.ph99:                                         ; preds = %bb.k
  %i.di = add nsw i32 %i.dg, -1
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = load ptr, ptr %i.cm, align 8, !tbaa !206
  %i.dl = load ptr, ptr %i.cg, align 8, !tbaa !57
  %2 = sext i32 %i.da to i64                      ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph99, %bb.l
  %i.dm = phi i32 [ %i.dc, %.lr.ph99 ], [ %i.ds, %bb.l ]
  %.097 = phi i64 [ %i.dj, %.lr.ph99 ], [ %i.dy, %bb.l ] ; 4 uses
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr [4 x i8], ptr %i.dk, i64 %.097 ; 2 uses
  %i.dp = getelementptr [4 x i8], ptr %i.do, i64 %i.dn
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !41
  %i.dr = getelementptr [4 x i8], ptr %i.do, i64 %2
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !41
  %i.ds = load i32, ptr %i.db, align 4, !tbaa !41 ; 2 uses
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr [4 x i8], ptr %i.dl, i64 %.097 ; 2 uses
  %i.dv = getelementptr [4 x i8], ptr %i.du, i64 %i.dt
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !35
  %i.dx = getelementptr [4 x i8], ptr %i.du, i64 %2
  store float %i.dw, ptr %i.dx, align 4, !tbaa !35
  %i.dy = add nsw i64 %.097, -1
  %.not140 = icmp eq i64 %.097, 0
  br i1 %.not140, label %.loopexit, label %bb.l, !llvm.loop !1103

.loopexit:                                        ; preds = %bb.l, %bb.k, %bb.j
  %i.dz = icmp samesign ugt i64 %.069101.in, 1
  br i1 %i.dz, label %bb.j, label %._crit_edge104, !llvm.loop !1104

bb.m:                                             ; preds = %._crit_edge104, %._crit_edge120._crit_edge
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZN5Eigen12SparseMatrixIfLi1EiE18insertUncompressedEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 comdat align 2 {
bb.a:
  %3 = alloca %"class.Eigen::SparseMatrix<float, 1>::SingletonVector", align 4 ; 5 uses
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !194
  %i.d = getelementptr [4 x i8], ptr %i.c, i64 %1 ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !41
  %i.g = load i32, ptr %i.d, align 4, !tbaa !41   ; 2 uses
  %i.h = sub nsw i32 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !195  ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %i.j, i64 %1
  %i.l = load i32, ptr %i.k, align 4, !tbaa !41   ; 3 uses
  %.not = icmp slt i32 %i.l, %i.h
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.l, i32 2)
  %i.m = trunc i64 %1 to i32
  store i32 %i.m, ptr %3, align 4, !tbaa !287
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.sroa.speculated, ptr %i.n, align 4, !tbaa !1106
  call void @_ZN5Eigen12SparseMatrixIfLi1EiE19reserveInnerVectorsINS1_15SingletonVectorEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(8) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !194
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr %.pre, i64 %1
  %.pre29 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !41
  %.pre30 = load ptr, ptr %i.i, align 8, !tbaa !195 ; 2 uses
  %.phi.trans.insert31 = getelementptr inbounds [4 x i8], ptr %.pre30, i64 %1
  %.pre32 = load i32, ptr %.phi.trans.insert31, align 4, !tbaa !41
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = phi i32 [ %.pre32, %bb.b ], [ %i.l, %bb.a ] ; 3 uses
  %i.p = phi ptr [ %.pre30, %bb.b ], [ %i.j, %bb.a ]
  %i.q = phi i32 [ %.pre29, %bb.b ], [ %i.g, %bb.a ]
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.p, i64 %1 ; 2 uses
  %i.t = sext i32 %i.o to i64
  %i.u = add nsw i64 %i.t, %i.r                   ; 2 uses
  %i.v = icmp sgt i32 %i.o, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !206  ; 3 uses
  br i1 %i.v, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %.026 = phi i64 [ %i.u, %.lr.ph ], [ %i.z, %bb.e ] ; 4 uses
  %i.z = add nsw i64 %.026, -1                    ; 5 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !41 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, %i.a
  br i1 %i.ac, label %bb.e, label %.critedge.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.x, i64 %.026
  store i32 %i.ab, ptr %i.ad, align 4, !tbaa !41
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !57  ; 2 uses
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.z
  %i.ag = load float, ptr %i.af, align 4, !tbaa !35
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %.026
  store float %i.ag, ptr %i.ah, align 4, !tbaa !35
  %i.ai = icmp sgt i64 %i.z, %i.r
  br i1 %i.ai, label %bb.d, label %.critedge.loopexit, !llvm.loop !1105

.critedge.loopexit:                               ; preds = %bb.e, %bb.d
  %.0.lcssa.ph = phi i64 [ %.026, %bb.d ], [ %i.z, %bb.e ]
  %.pre33 = load i32, ptr %i.s, align 4, !tbaa !41
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %.critedge.loopexit
  %i.aj = phi i32 [ %.pre33, %.critedge.loopexit ], [ %i.o, %bb.c ]
  %.0.lcssa = phi i64 [ %.0.lcssa.ph, %.critedge.loopexit ], [ %i.u, %bb.c ] ; 2 uses
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.s, align 4, !tbaa !41
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = getelementptr inbounds [4 x i8], ptr %i.x, i64 %.0.lcssa
  store i32 %i.a, ptr %i.am, align 4, !tbaa !41
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !57
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.an, i64 %.0.lcssa ; 2 uses
  store float 0.000000e+00, ptr %i.ao, align 4, !tbaa !35
  ret ptr %i.ao
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden void @_ZN5Eigen12SparseMatrixIfLi1EiE19reserveInnerVectorsINS1_15SingletonVectorEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !195  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !196  ; 6 uses
  %i.f = shl i64 %i.e, 2                          ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #39 ; 5 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !195
  %.not80 = icmp eq ptr %i.g, null
  br i1 %.not80, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph108, label %._crit_edge109

.lr.ph108:                                        ; preds = %.preheader
  %i.i = load i32, ptr %1, align 4, !tbaa !287
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !194  ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !54
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #37
  unreachable

._crit_edge109:                                   ; preds = %bb.d, %.preheader
  %.070.lcssa = phi i64 [ 0, %.preheader ], [ %i.ak, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  tail call void @_ZN5Eigen8internal17CompressedStorageIfiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef %.070.lcssa) #34
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !194  ; 3 uses
  %i.s = load i64, ptr %i.d, align 8, !tbaa !196  ; 4 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = icmp sgt i64 %i.s, 0
  %i.v = load i32, ptr %i.t, align 4, !tbaa !41   ; 2 uses
  br i1 %i.u, label %.lr.ph119, label %._crit_edge120._crit_edge

.lr.ph119:                                        ; preds = %._crit_edge109
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !195
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph108, %bb.d
  %.070107 = phi i64 [ 0, %.lr.ph108 ], [ %i.ak, %bb.d ]
  %.076106 = phi i64 [ 0, %.lr.ph108 ], [ %i.ab, %bb.d ] ; 4 uses
  %.077105 = phi i32 [ 0, %.lr.ph108 ], [ %i.ai, %bb.d ] ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.076106
  store i32 %.077105, ptr %i.y, align 4, !tbaa !41
  %i.z = icmp eq i64 %.076106, %i.j
  %i.aa = select i1 %i.z, i32 %i.l, i32 0         ; 2 uses
  %i.ab = add nuw nsw i64 %.076106, 1             ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !41
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.076106
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !41
  %i.ag = add i32 %i.ad, %.077105
  %i.ah = add i32 %i.ag, %i.aa
  %i.ai = sub i32 %i.ah, %i.af
  %i.aj = sext i32 %i.aa to i64
  %i.ak = add nsw i64 %.070107, %i.aj             ; 2 uses
  %exitcond122.not = icmp eq i64 %i.ab, %i.e
  br i1 %exitcond122.not, label %._crit_edge109, label %bb.d, !llvm.loop !1107

bb.e:                                             ; preds = %.lr.ph119, %._crit_edge114
  %.074117.in = phi i64 [ %i.s, %.lr.ph119 ], [ %.074117, %._crit_edge114 ] ; 2 uses
  %.075116 = phi i32 [ %i.v, %.lr.ph119 ], [ %i.av, %._crit_edge114 ]
  %.074117 = add nsw i64 %.074117.in, -1          ; 5 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.074117 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !41 ; 3 uses
  %i.an = sub nsw i32 %.075116, %i.am             ; 3 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph113, label %.._crit_edge114_crit_edge

.._crit_edge114_crit_edge:                        ; preds = %bb.e
  %.phi.trans.insert125 = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.074117
  %.pre126.a = load i32, ptr %.phi.trans.insert125, align 4, !tbaa !41
  br label %._crit_edge114

.lr.ph113:                                        ; preds = %bb.e
  %i.ap = add nsw i32 %i.an, -1
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = load ptr, ptr %i.w, align 8, !tbaa !206
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.074117 ; 2 uses
  %i.at = load ptr, ptr %i.p, align 8, !tbaa !57
  %.pre124 = load i32, ptr %i.as, align 4, !tbaa !41
  br label %bb.f

._crit_edge114:                                   ; preds = %bb.f, %.._crit_edge114_crit_edge
  %i.au = phi i32 [ %.pre126.a, %.._crit_edge114_crit_edge ], [ %i.bl, %bb.f ]
  %i.av = phi i32 [ %i.am, %.._crit_edge114_crit_edge ], [ %i.bg, %bb.f ]
  store i32 %i.au, ptr %i.al, align 4, !tbaa !41
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.074117
  store i32 %i.an, ptr %i.aw, align 4, !tbaa !41
  %i.ax = icmp samesign ugt i64 %.074117.in, 1
  br i1 %i.ax, label %bb.e, label %._crit_edge120, !llvm.loop !1108

bb.f:                                             ; preds = %.lr.ph113, %bb.f
  %i.ay = phi i32 [ %.pre124, %.lr.ph113 ], [ %i.bl, %bb.f ]
  %i.az = phi i32 [ %i.am, %.lr.ph113 ], [ %i.bg, %bb.f ]
  %.073111 = phi i64 [ %i.aq, %.lr.ph113 ], [ %i.bo, %bb.f ] ; 4 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr [4 x i8], ptr %i.ar, i64 %.073111 ; 2 uses
  %i.bc = getelementptr [4 x i8], ptr %i.bb, i64 %i.ba
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !41
  %i.be = sext i32 %i.ay to i64
  %i.bf = getelementptr [4 x i8], ptr %i.bb, i64 %i.be
  store i32 %i.bd, ptr %i.bf, align 4, !tbaa !41
  %i.bg = load i32, ptr %i.al, align 4, !tbaa !41 ; 3 uses
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr [4 x i8], ptr %i.at, i64 %.073111 ; 2 uses
  %i.bj = getelementptr [4 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !35
  %i.bl = load i32, ptr %i.as, align 4, !tbaa !41 ; 3 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr [4 x i8], ptr %i.bi, i64 %i.bm
  store float %i.bk, ptr %i.bn, align 4, !tbaa !35
  %i.bo = add nsw i64 %.073111, -1
  %.not142 = icmp eq i64 %.073111, 0
  br i1 %.not142, label %._crit_edge114, label %bb.f, !llvm.loop !1109

._crit_edge120:                                   ; preds = %._crit_edge114
  %i.bp = add nsw i64 %i.s, -1                    ; 3 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !41
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !195
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bp
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !41
  %i.bv = add nsw i32 %i.bu, %i.br
  %i.bw = load i32, ptr %1, align 4, !tbaa !287
  %i.bx = sext i32 %i.bw to i64
  %i.by = icmp eq i64 %i.bp, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = select i1 %i.by, i32 %i.ca, i32 0
  %i.cc = add nsw i32 %i.bv, %i.cb                ; 2 uses
  store i32 %i.cc, ptr %i.t, align 4, !tbaa !41
  br label %._crit_edge120._crit_edge

._crit_edge120._crit_edge:                        ; preds = %._crit_edge109, %._crit_edge120
  %i.cd = phi i32 [ %i.cc, %._crit_edge120 ], [ %i.v, %._crit_edge109 ]
  %i.ce = sext i32 %i.cd to i64
  tail call void @_ZN5Eigen8internal17CompressedStorageIfiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef %i.ce, double noundef 0.000000e+00) #34
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  %i.cf = add i64 %i.f, 4
  %i.cg = tail call noalias ptr @malloc(i64 noundef %i.cf) #39 ; 5 uses
  %.not = icmp eq ptr %i.cg, null
  br i1 %.not, label %bb.h, label %.preheader94

.preheader94:                                     ; preds = %bb.g
  %i.ch = icmp sgt i64 %i.e, 0
  br i1 %i.ch, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader94
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !194 ; 2 uses
  %i.ck = load i32, ptr %1, align 4, !tbaa !287
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cn = load i32, ptr %i.cm, align 4
  %.pre = load i32, ptr %i.cj, align 4, !tbaa !41
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.co = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.co, align 8, !tbaa !54
  tail call void @__cxa_throw(ptr nonnull %i.co, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #37
  unreachable

._crit_edge:                                      ; preds = %bb.i, %.preheader94
  %.072.lcssa = phi i32 [ 0, %.preheader94 ], [ %i.dj, %bb.i ] ; 2 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.e
  store i32 %.072.lcssa, ptr %i.cp, align 4, !tbaa !41
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cr = sext i32 %.072.lcssa to i64
  tail call void @_ZN5Eigen8internal17CompressedStorageIfiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, i64 noundef %i.cr, double noundef 0.000000e+00) #34
  %i.cs = load i64, ptr %i.d, align 8, !tbaa !196 ; 2 uses
  %i.ct = icmp sgt i64 %i.cs, 0
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !208 ; 2 uses
  br i1 %i.ct, label %.lr.ph103, label %._crit_edge104

.lr.ph103:                                        ; preds = %._crit_edge
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %i.cx = phi i32 [ %.pre, %.lr.ph ], [ %i.db, %bb.i ]
  %.07196 = phi i64 [ 0, %.lr.ph ], [ %i.cz, %bb.i ] ; 4 uses
  %.07295 = phi i32 [ 0, %.lr.ph ], [ %i.dj, %bb.i ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %.07196
  store i32 %.07295, ptr %i.cy, align 4, !tbaa !41
  %i.cz = add nuw nsw i64 %.07196, 1              ; 3 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !41 ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.07196
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !41 ; 2 uses
  %i.de = add i32 %i.cx, %i.dd
  %i.df = sub i32 %i.db, %i.de
  %i.dg = icmp eq i64 %.07196, %i.cl
  %i.dh = select i1 %i.dg, i32 %i.cn, i32 0
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.dh, i32 %i.df)
  %i.di = add i32 %i.dd, %.07295
  %i.dj = add i32 %i.di, %.sroa.speculated        ; 2 uses
  %exitcond.not = icmp eq i64 %i.cz, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !1110

._crit_edge104:                                   ; preds = %.loopexit, %._crit_edge
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.cg, ptr %i.dk, align 8, !tbaa !208
  tail call void @free(ptr noundef %i.cv) #32
  br label %bb.m

bb.j:                                             ; preds = %.lr.ph103, %.loopexit
  %.069101.in = phi i64 [ %i.cs, %.lr.ph103 ], [ %.069101, %.loopexit ] ; 2 uses
  %.069101 = add nsw i64 %.069101.in, -1          ; 4 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %.069101
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !41 ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.069101 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !41 ; 2 uses
  %i.dp = icmp sgt i32 %i.dm, %i.do
  br i1 %i.dp, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.dq = load ptr, ptr %i.a, align 8, !tbaa !195
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %.069101
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !41 ; 2 uses
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %.lr.ph99, label %.loopexit

.lr.ph99:                                         ; preds = %bb.k
  %i.du = add nsw i32 %i.ds, -1
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = load ptr, ptr %i.cw, align 8, !tbaa !206
  %i.dx = load ptr, ptr %i.cq, align 8, !tbaa !57
  %2 = sext i32 %i.dm to i64                      ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph99, %bb.l
  %i.dy = phi i32 [ %i.do, %.lr.ph99 ], [ %i.ee, %bb.l ]
  %.097 = phi i64 [ %i.dv, %.lr.ph99 ], [ %i.ek, %bb.l ] ; 4 uses
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr [4 x i8], ptr %i.dw, i64 %.097 ; 2 uses
  %i.eb = getelementptr [4 x i8], ptr %i.ea, i64 %i.dz
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !41
  %i.ed = getelementptr [4 x i8], ptr %i.ea, i64 %2
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !41
  %i.ee = load i32, ptr %i.dn, align 4, !tbaa !41 ; 2 uses
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr [4 x i8], ptr %i.dx, i64 %.097 ; 2 uses
  %i.eh = getelementptr [4 x i8], ptr %i.eg, i64 %i.ef
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !35
  %i.ej = getelementptr [4 x i8], ptr %i.eg, i64 %2
  store float %i.ei, ptr %i.ej, align 4, !tbaa !35
  %i.ek = add nsw i64 %.097, -1
  %.not141 = icmp eq i64 %.097, 0
  br i1 %.not141, label %.loopexit, label %bb.l, !llvm.loop !1111

.loopexit:                                        ; preds = %bb.l, %bb.k, %bb.j
  %i.el = icmp samesign ugt i64 %.069101.in, 1
  br i1 %i.el, label %bb.j, label %._crit_edge104, !llvm.loop !1112

bb.m:                                             ; preds = %._crit_edge104, %._crit_edge120._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define internal noundef ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL33nanobind_test_eigen_ext_exec_implNS_7module_EE4$_43N5Eigen12SparseMatrixISt7complexIdELi0EiEEJS8_EJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSC_jPNS0_12cleanup_listEE_8__invokeESQ_SR_jST_"(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.1598", align 8 ; 13 uses
  %5 = alloca %"class.Eigen::SparseMatrix.1600", align 8 ; 8 uses
  %6 = alloca %"class.Eigen::SparseMatrix.1600", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @_ZN8nanobind6detail5tupleIJNS0_11type_casterIN5Eigen12SparseMatrixISt7complexIdELi0EiEEiEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(240) %4) #34
  %i.a = load ptr, ptr %1, align 8, !tbaa !22
  %i.b = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterIN5Eigen12SparseMatrixISt7complexIdELi0EiEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(240) %4, ptr %i.a, i32 noundef %2, ptr noundef %3) #32
  br i1 %i.b, label %bb.b, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL33nanobind_test_eigen_ext_exec_implNS_7module_EE4$_43N5Eigen12SparseMatrixISt7complexIdELi0EiEEJS8_EJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSC_jPNS0_12cleanup_listEE_clESQ_SR_jST_.exit"

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  invoke void @_ZN5Eigen12SparseMatrixISt7complexIdELi0EiEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %4) #34
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5Eigen12SparseMatrixISt7complexIdELi0EiEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %6) #34
          to label %"_ZZL33nanobind_test_eigen_ext_exec_implN8nanobind7module_EENK4$_43clEN5Eigen12SparseMatrixISt7complexIdELi0EiEE.exit" unwind label %bb.e

"_ZZL33nanobind_test_eigen_ext_exec_implN8nanobind7module_EENK4$_43clEN5Eigen12SparseMatrixISt7complexIdELi0EiEE.exit": ; preds = %bb.c
  %i.c = call ptr @_ZN8nanobind6detail11type_casterIN5Eigen12SparseMatrixISt7complexIdELi0EiEEiE17from_cpp_internalERKS6_NS_9rv_policyEPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(72) %5, i8 4, ptr noundef %3) #32
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !293
  call void @free(ptr noundef %i.e) #32
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !294
  call void @free(ptr noundef %i.g) #32
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageISt7complexIdEiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.h) #32
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !293
  call void @free(ptr noundef %i.j) #32
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !294
  call void @free(ptr noundef %i.l) #32
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageISt7complexIdEiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.m) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL33nanobind_test_eigen_ext_exec_implNS_7module_EE4$_43N5Eigen12SparseMatrixISt7complexIdELi0EiEEJS8_EJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSC_jPNS0_12cleanup_listEE_clESQ_SR_jST_.exit"

bb.d:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5Eigen12SparseMatrixISt7complexIdELi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %6) #32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.n, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @_ZN8nanobind6detail5tupleIJNS0_11type_casterIN5Eigen12SparseMatrixISt7complexIdELi0EiEEiEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  resume { ptr, i32 } %.pn.i

"_ZZN8nanobind6detail11func_createILb0ELb1EZL33nanobind_test_eigen_ext_exec_implNS_7module_EE4$_43N5Eigen12SparseMatrixISt7complexIdELi0EiEEJS8_EJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSC_jPNS0_12cleanup_listEE_clESQ_SR_jST_.exit": ; preds = %bb.a, %"_ZZL33nanobind_test_eigen_ext_exec_implN8nanobind7module_EENK4$_43clEN5Eigen12SparseMatrixISt7complexIdELi0EiEE.exit"
  %.010.i = phi ptr [ %i.c, %"_ZZL33nanobind_test_eigen_ext_exec_implN8nanobind7module_EENK4$_43clEN5Eigen12SparseMatrixISt7complexIdELi0EiEE.exit" ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 184
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !205
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.q) #32
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !205
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.s) #32
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !296
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.u) #32
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !293
  call void @free(ptr noundef %i.w) #32
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !294
  call void @free(ptr noundef %i.y) #32
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageISt7complexIdEiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.z) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret ptr %.010.i
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail5tupleIJNS0_11type_casterIN5Eigen12SparseMatrixISt7complexIdELi0EiEEiEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !297
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.a, align 8, !tbaa !298
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  invoke void @_ZN5Eigen12SparseMatrixISt7complexIdELi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(240) %0, i64 noundef 0, i64 noundef 0) #34
          to label %_ZN8nanobind6detail11type_casterIN5Eigen12SparseMatrixISt7complexIdELi0EiEEiEC2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN5Eigen8internal17CompressedStorageISt7complexIdEiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.d) #32
  resume { ptr, i32 } %i.c

_ZN8nanobind6detail11type_casterIN5Eigen12SparseMatrixISt7complexIdELi0EiEEiEC2Ev.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.e, i8 0, i64 168, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN8nanobind6detail11type_casterIN5Eigen12SparseMatrixISt7complexIdELi0EiEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.nanobind::handle", align 8  ; 4 uses
  %i.a = alloca [2 x ptr], align 16               ; 4 uses
  %5 = alloca %"class.nanobind::object", align 8  ; 5 uses
  %6 = alloca %"class.nanobind::object", align 8  ; 5 uses
  %7 = alloca %"class.nanobind::detail::accessor", align 8 ; 9 uses
  %8 = alloca %"class.nanobind::object", align 8  ; 2 uses
  %9 = alloca %"class.nanobind::detail::accessor", align 8 ; 10 uses
  %10 = alloca %"class.nanobind::object", align 8 ; 6 uses
  %11 = alloca %"class.nanobind::detail::accessor", align 8 ; 9 uses
  %12 = alloca %"class.nanobind::object", align 8 ; 6 uses
  %13 = alloca %"class.nanobind::detail::accessor", align 8 ; 9 uses
  %14 = alloca %"class.nanobind::object", align 8 ; 6 uses
  %15 = alloca %"class.nanobind::detail::accessor", align 8 ; 9 uses
  %16 = alloca %"class.nanobind::object", align 8 ; 8 uses
  %17 = alloca %"class.nanobind::detail::accessor", align 8 ; 9 uses
  %18 = alloca %"class.nanobind::detail::accessor.1533", align 8 ; 7 uses
  %19 = alloca %"class.nanobind::detail::accessor.1533", align 8 ; 8 uses
  %20 = alloca %"class.nanobind::detail::accessor", align 8 ; 9 uses
  %21 = alloca %"class.Eigen::Map.1608", align 8  ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store ptr %1, ptr %5, align 8
  %.not.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i, label %_ZN8nanobind6objectC2ENS_6handleENS_6detail8borrow_tE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 8, !tbaa !25
  %i.c = add i32 %i.b, 1                          ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN8nanobind6objectC2ENS_6handleENS_6detail8borrow_tE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.c, ptr %1, align 8, !tbaa !25
  br label %_ZN8nanobind6objectC2ENS_6handleENS_6detail8borrow_tE.exit

_ZN8nanobind6objectC2ENS_6handleENS_6detail8borrow_tE.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.e = invoke ptr @_ZN8nanobind6detail12import_cache3getEv(ptr noundef nonnull align 8 dereferenceable(24) @_ZN8nanobind6detail9scipy_cscE) #34
          to label %bb.d unwind label %bb.f       ; 2 uses

bb.d:                                             ; preds = %_ZN8nanobind6objectC2ENS_6handleENS_6detail8borrow_tE.exit
  %i.f = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.f, align 8, !tbaa !239
  %i.g = icmp eq ptr %.val, %i.e
  br i1 %i.g, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = and i32 %2, 1
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.as, label %bb.g

bb.f:                                             ; preds = %_ZN8nanobind6objectC2ENS_6handleENS_6detail8borrow_tE.exit
  %i.i = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.aq

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33, !noalias !1141
  store ptr null, ptr %i.a, align 16, !tbaa !22, !noalias !1141
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %1, ptr %i.j, align 8, !tbaa !22, !noalias !1141
  %i.k = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !24, !noalias !1141
  %i.l = invoke noundef ptr @_ZN8nanobind6detail14obj_vectorcallEPNS0_12nb_internalsEP7_objectPKS4_mmj(ptr noundef %i.k, ptr noundef %i.e, ptr noundef nonnull %i.j, i64 noundef -9223372036854775807, i64 noundef 0, i32 noundef 0) #34
          to label %bb.h unwind label %bb.i       ; 2 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33, !noalias !1141
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store ptr %1, ptr %4, align 8, !tbaa !44
  store ptr %i.l, ptr %5, align 8, !tbaa !44
  store ptr null, ptr %6, align 8, !tbaa !44
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
end_hunk_0
