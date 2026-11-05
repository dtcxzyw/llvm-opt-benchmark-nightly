Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/scene_points?download=true
inline.NumInlined: 410
inline.NumDeleted: 61
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6embree6PointsC2EPNS_6DeviceENS_8Geometry5GTypeE:.noexc
  store ptr %i.l, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  store float 1.000000e+00, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = zext i32 %i.y to i64                     ; 7 uses
  %i.aa = icmp eq i32 %i.y, 0
  br i1 %i.aa, label %._crit_edge83, label %bb.a

._crit_edge83:                                    ; preds = %.noexc
  store i64 0, ptr %i.m, align 16
  br label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE6resizeEm.exit

bb.a:                                             ; preds = %.noexc
  %i.ab = mul nuw nsw i64 %i.z, 56
  %i.ac = load ptr, ptr %i.l, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = invoke noundef ptr %i.ae(ptr noundef nonnull align 8 dereferenceable(1384) %i.l, i64 noundef %i.ab, i64 noundef 8, i32 noundef 3)
          to label %.noexc31 unwind label %bb.k, !inline_history !19

.noexc31:                                         ; preds = %bb.a
  store ptr %i.af, ptr %i.o, align 16
  %i.ag = load i64, ptr %i.m, align 16
  %.not = icmp eq i64 %i.ag, 0
  br i1 %.not, label %.preheader78, label %_ZN6embree13RawBufferViewD2Ev.exit52

.preheader78:                                     ; preds = %_ZN6embree13RawBufferViewD2Ev.exit52, %.noexc31
  %.lcssa79 = phi i64 [ 0, %.noexc31 ], [ %i.az, %_ZN6embree13RawBufferViewD2Ev.exit52 ] ; 6 uses
  %i.ah = icmp ult i64 %.lcssa79, %i.z
  br i1 %i.ah, label %.noexc34.preheader, label %._crit_edge

.noexc34.preheader:                               ; preds = %.preheader78
  %i.ai = sub nuw i64 %i.z, %.lcssa79
  %xtraiter = and i64 %i.ai, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.noexc34.prol.loopexit, label %.noexc34.prol

.noexc34.prol:                                    ; preds = %.noexc34.preheader
  %i.aj = load ptr, ptr %i.o, align 16
  %i.ak = getelementptr inbounds nuw [56 x i8], ptr %i.aj, i64 %.lcssa79 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ak, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store i8 1, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 44
  store i32 0, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store ptr null, ptr %i.ao, align 8
  %i.ap = add nuw nsw i64 %.lcssa79, 1
  br label %.noexc34.prol.loopexit

.noexc34.prol.loopexit:                           ; preds = %.noexc34.prol, %.noexc34.preheader
  %.0.i2981.unr = phi i64 [ %.lcssa79, %.noexc34.preheader ], [ %i.ap, %.noexc34.prol ]
  %i.aq = add nsw i64 %i.z, -1
  %i.ar = icmp eq i64 %.lcssa79, %i.aq
  br i1 %i.ar, label %._crit_edge, label %.noexc34

_ZN6embree13RawBufferViewD2Ev.exit52:             ; preds = %.noexc31, %_ZN6embree13RawBufferViewD2Ev.exit52
  %.027.i80 = phi i64 [ %i.ay, %_ZN6embree13RawBufferViewD2Ev.exit52 ], [ 0, %.noexc31 ] ; 3 uses
  %i.as = load ptr, ptr %i.o, align 16
  %i.at = getelementptr inbounds nuw [56 x i8], ptr %i.as, i64 %.027.i80 ; 2 uses
  %i.au = getelementptr inbounds nuw [56 x i8], ptr null, i64 %.027.i80 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.at, ptr noundef nonnull align 8 dereferenceable(56) %i.au, i64 48, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 48 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8
  store ptr %i.ax, ptr %i.av, align 8
  store ptr null, ptr %i.aw, align 8
  %i.ay = add nuw i64 %.027.i80, 1                ; 2 uses
  %i.az = load i64, ptr %i.m, align 16            ; 2 uses
  %i.ba = icmp ult i64 %i.ay, %i.az
  br i1 %i.ba, label %_ZN6embree13RawBufferViewD2Ev.exit52, label %.preheader78, !llvm.loop !0

._crit_edge:                                      ; preds = %.noexc34.prol.loopexit, %.noexc34, %.preheader78
  %i.bb = load ptr, ptr %i.j, align 8             ; 3 uses
  %.not.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i, label %_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3fxEEELm8EE10deallocateEPS4_m.exit.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 72
  %i.be = load ptr, ptr %i.bd, align 8
  invoke void %i.be(ptr noundef nonnull align 8 dereferenceable(1384) %i.bb, ptr noundef null)
          to label %_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3fxEEELm8EE10deallocateEPS4_m.exit.i unwind label %bb.k, !inline_history !19

_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3fxEEELm8EE10deallocateEPS4_m.exit.i: ; preds = %bb.b, %._crit_edge
  store i64 %i.z, ptr %i.m, align 16
  store i64 %i.z, ptr %i.n, align 8
  br label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE6resizeEm.exit

.noexc34:                                         ; preds = %.noexc34.prol.loopexit, %.noexc34
  %.0.i2981 = phi i64 [ %i.bs, %.noexc34 ], [ %.0.i2981.unr, %.noexc34.prol.loopexit ] ; 3 uses
  %i.bf = load ptr, ptr %i.o, align 16
  %i.bg = getelementptr inbounds nuw [56 x i8], ptr %i.bf, i64 %.0.i2981 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bg, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.bh, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  store i8 1, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 44
  store i32 0, ptr %i.bj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  store ptr null, ptr %i.bk, align 8
  %i.bl = load ptr, ptr %i.o, align 16
  %i.bm = getelementptr inbounds nuw [56 x i8], ptr %i.bl, i64 %.0.i2981 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bn, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 96
  store i8 1, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 100
  store i32 0, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 104
  store ptr null, ptr %i.br, align 8
  %i.bs = add nuw nsw i64 %.0.i2981, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bs, %i.z
  br i1 %exitcond.not.1, label %._crit_edge, label %.noexc34, !llvm.loop !1

_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE6resizeEm.exit: ; preds = %._crit_edge83, %_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3fxEEELm8EE10deallocateEPS4_m.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = and i32 %i.bu, 255
  %i.bw = icmp eq i32 %i.bv, 27
  br i1 %i.bw, label %bb.c, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE6resizeEm.exit

bb.c:                                             ; preds = %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE6resizeEm.exit
  %i.bx = load i32, ptr %i.x, align 4
  %i.by = zext i32 %i.bx to i64                   ; 17 uses
  %i.bz = load i64, ptr %i.r, align 8             ; 5 uses
  %.not.i47 = icmp ult i64 %i.bz, %i.by
  br i1 %.not.i47, label %bb.d, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.0.i4984 = phi i64 [ %i.cb, %.lr.ph ], [ %i.bz, %bb.d ]
  %i.cb = shl nuw nsw i64 %.0.i4984, 1            ; 3 uses
  %i.cc = icmp samesign ult i64 %i.cb, %i.by
  br i1 %i.cc, label %.lr.ph, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit, !llvm.loop !2

_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit: ; preds = %.lr.ph, %bb.c, %bb.d
  %.07.i48 = phi i64 [ %i.by, %bb.d ], [ %i.bz, %bb.c ], [ %i.cb, %.lr.ph ] ; 3 uses
  %i.cd = load i64, ptr %i.q, align 16            ; 3 uses
  %i.ce = icmp ugt i64 %i.cd, %i.by
  br i1 %i.ce, label %.lr.ph87, label %bb.g

._crit_edge88:                                    ; preds = %_ZN6embree13RawBufferViewD2Ev.exit55
  %.pre114.pre = load i64, ptr %i.r, align 8
  store i64 %i.by, ptr %i.q, align 16
  br label %bb.g

.lr.ph87:                                         ; preds = %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit, %_ZN6embree13RawBufferViewD2Ev.exit55
  %i.cf = phi i64 [ %i.cp, %_ZN6embree13RawBufferViewD2Ev.exit55 ], [ %i.cd, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit ]
  %.029.i4186 = phi i64 [ %i.cq, %_ZN6embree13RawBufferViewD2Ev.exit55 ], [ %i.by, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit ] ; 2 uses
  %i.cg = load ptr, ptr %i.s, align 16
  %i.ch = getelementptr inbounds nuw [56 x i8], ptr %i.cg, i64 %.029.i4186
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8            ; 3 uses
  %.not.i.i54 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i54, label %_ZN6embree13RawBufferViewD2Ev.exit55, label %bb.e

bb.e:                                             ; preds = %.lr.ph87
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8
  invoke void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.cj)
          to label %._ZN6embree13RawBufferViewD2Ev.exit55_crit_edge unwind label %bb.f

._ZN6embree13RawBufferViewD2Ev.exit55_crit_edge:  ; preds = %bb.e
  %.pre = load i64, ptr %i.q, align 16
  br label %_ZN6embree13RawBufferViewD2Ev.exit55

bb.f:                                             ; preds = %bb.e
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  tail call void @__clang_call_terminate(ptr %i.co) #23
  unreachable

_ZN6embree13RawBufferViewD2Ev.exit55:             ; preds = %._ZN6embree13RawBufferViewD2Ev.exit55_crit_edge, %.lr.ph87
  %i.cp = phi i64 [ %.pre, %._ZN6embree13RawBufferViewD2Ev.exit55_crit_edge ], [ %i.cf, %.lr.ph87 ] ; 2 uses
  %i.cq = add nuw i64 %.029.i4186, 1              ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.cp
  br i1 %i.cr, label %.lr.ph87, label %._crit_edge88, !llvm.loop !3

bb.g:                                             ; preds = %._crit_edge88, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit
  %i.cs = phi i64 [ %i.by, %._crit_edge88 ], [ %i.cd, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit ] ; 6 uses
  %i.ct = phi i64 [ %.pre114.pre, %._crit_edge88 ], [ %i.bz, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit ]
  %i.cu = icmp eq i64 %.07.i48, %i.ct
  br i1 %i.cu, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cv = icmp samesign ult i64 %i.cs, %i.by
  br i1 %i.cv, label %.noexc42.preheader, label %._crit_edge104

.noexc42.preheader:                               ; preds = %bb.h
  %i.cw = sub nuw nsw i64 %i.by, %i.cs
  %xtraiter159 = and i64 %i.cw, 1
  %lcmp.mod160.not = icmp eq i64 %xtraiter159, 0
  br i1 %lcmp.mod160.not, label %.noexc42.prol.loopexit, label %.noexc42.prol

.noexc42.prol:                                    ; preds = %.noexc42.preheader
  %i.cx = load ptr, ptr %i.s, align 16
  %i.cy = getelementptr inbounds nuw [56 x i8], ptr %i.cx, i64 %i.cs ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cy, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.cz, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  store i8 1, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 44
  store i32 0, ptr %i.db, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  store ptr null, ptr %i.dc, align 8
  %i.dd = add nuw nsw i64 %i.cs, 1
  br label %.noexc42.prol.loopexit

.noexc42.prol.loopexit:                           ; preds = %.noexc42.prol, %.noexc42.preheader
  %.028.i40103.unr = phi i64 [ %i.cs, %.noexc42.preheader ], [ %i.dd, %.noexc42.prol ]
  %i.de = add nsw i64 %i.by, -1
  %i.df = icmp eq i64 %i.cs, %i.de
  br i1 %i.df, label %._crit_edge104, label %.noexc42

._crit_edge104:                                   ; preds = %.noexc42.prol.loopexit, %.noexc42, %bb.h
  store i64 %i.by, ptr %i.q, align 16
  br label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE6resizeEm.exit

.noexc42:                                         ; preds = %.noexc42.prol.loopexit, %.noexc42
  %.028.i40103 = phi i64 [ %i.dt, %.noexc42 ], [ %.028.i40103.unr, %.noexc42.prol.loopexit ] ; 3 uses
  %i.dg = load ptr, ptr %i.s, align 16
  %i.dh = getelementptr inbounds nuw [56 x i8], ptr %i.dg, i64 %.028.i40103 ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dh, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.di, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  store i8 1, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 44
  store i32 0, ptr %i.dk, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  store ptr null, ptr %i.dl, align 8
  %i.dm = load ptr, ptr %i.s, align 16
  %i.dn = getelementptr inbounds nuw [56 x i8], ptr %i.dm, i64 %.028.i40103 ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 56
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.do, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.dp, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 96
  store i8 1, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 100
  store i32 0, ptr %i.dr, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 104
  store ptr null, ptr %i.ds, align 8
  %i.dt = add nuw nsw i64 %.028.i40103, 2         ; 2 uses
  %exitcond113.not.1.a = icmp eq i64 %i.dt, %i.by
  br i1 %exitcond113.not.1.a, label %._crit_edge104, label %.noexc42, !llvm.loop !4

bb.i:                                             ; preds = %bb.g
  %i.du = load ptr, ptr %i.s, align 16            ; 2 uses
  %i.dv = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.dw = mul i64 %.07.i48, 56
  %i.dx = load ptr, ptr %i.dv, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 64
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = invoke noundef ptr %i.dz(ptr noundef nonnull align 8 dereferenceable(1384) %i.dv, i64 noundef %i.dw, i64 noundef 8, i32 noundef 3)
          to label %.noexc43 unwind label %bb.k, !inline_history !20

.noexc43:                                         ; preds = %bb.i
  store ptr %i.ea, ptr %i.s, align 16
  %i.eb = load i64, ptr %i.q, align 16
  %.not105 = icmp eq i64 %i.eb, 0
  br i1 %.not105, label %.preheader, label %_ZN6embree13RawBufferViewD2Ev.exit57

.preheader:                                       ; preds = %_ZN6embree13RawBufferViewD2Ev.exit57, %.noexc43
  %.lcssa = phi i64 [ 0, %.noexc43 ], [ %i.eu, %_ZN6embree13RawBufferViewD2Ev.exit57 ] ; 6 uses
  %i.ec = icmp ult i64 %.lcssa, %i.by
  br i1 %i.ec, label %.noexc46.preheader, label %._crit_edge92

.noexc46.preheader:                               ; preds = %.preheader
  %i.ed = sub nuw i64 %i.by, %.lcssa
  %xtraiter157 = and i64 %i.ed, 1
  %lcmp.mod158.not = icmp eq i64 %xtraiter157, 0
  br i1 %lcmp.mod158.not, label %.noexc46.prol.loopexit, label %.noexc46.prol

.noexc46.prol:                                    ; preds = %.noexc46.preheader
  %i.ee = load ptr, ptr %i.s, align 16
  %i.ef = getelementptr inbounds nuw [56 x i8], ptr %i.ee, i64 %.lcssa ; 5 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ef, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.eg, align 4
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  store i8 1, ptr %i.eh, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 44
  store i32 0, ptr %i.ei, align 4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  store ptr null, ptr %i.ej, align 8
  %i.ek = add nuw nsw i64 %.lcssa, 1
  br label %.noexc46.prol.loopexit

.noexc46.prol.loopexit:                           ; preds = %.noexc46.prol, %.noexc46.preheader
  %.0.i3891.unr = phi i64 [ %.lcssa, %.noexc46.preheader ], [ %i.ek, %.noexc46.prol ]
  %i.el = add nsw i64 %i.by, -1
  %i.em = icmp eq i64 %.lcssa, %i.el
  br i1 %i.em, label %._crit_edge92, label %.noexc46

_ZN6embree13RawBufferViewD2Ev.exit57:             ; preds = %.noexc43, %_ZN6embree13RawBufferViewD2Ev.exit57
  %.027.i3789 = phi i64 [ %i.et, %_ZN6embree13RawBufferViewD2Ev.exit57 ], [ 0, %.noexc43 ] ; 3 uses
  %i.en = load ptr, ptr %i.s, align 16
  %i.eo = getelementptr inbounds nuw [56 x i8], ptr %i.en, i64 %.027.i3789 ; 2 uses
  %i.ep = getelementptr inbounds nuw [56 x i8], ptr %i.du, i64 %.027.i3789 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.eo, ptr noundef nonnull align 8 dereferenceable(56) %i.ep, i64 48, i1 false)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 48 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8
  store ptr %i.es, ptr %i.eq, align 8
  store ptr null, ptr %i.er, align 8
  %i.et = add nuw i64 %.027.i3789, 1              ; 2 uses
  %i.eu = load i64, ptr %i.q, align 16            ; 2 uses
  %i.ev = icmp ult i64 %i.et, %i.eu
  br i1 %i.ev, label %_ZN6embree13RawBufferViewD2Ev.exit57, label %.preheader, !llvm.loop !5

._crit_edge92:                                    ; preds = %.noexc46.prol.loopexit, %.noexc46, %.preheader
  %i.ew = load ptr, ptr %i.p, align 8             ; 3 uses
  %.not.i.i39 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i39, label %_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3faEEELm8EE10deallocateEPS4_m.exit.i, label %bb.j

bb.j:                                             ; preds = %._crit_edge92
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 72
  %i.ez = load ptr, ptr %i.ey, align 8
  invoke void %i.ez(ptr noundef nonnull align 8 dereferenceable(1384) %i.ew, ptr noundef %i.du)
          to label %_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3faEEELm8EE10deallocateEPS4_m.exit.i unwind label %bb.k, !inline_history !20

_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3faEEELm8EE10deallocateEPS4_m.exit.i: ; preds = %bb.j, %._crit_edge92
  store i64 %i.by, ptr %i.q, align 16
  store i64 %.07.i48, ptr %i.r, align 8
  br label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE6resizeEm.exit

.noexc46:                                         ; preds = %.noexc46.prol.loopexit, %.noexc46
  %.0.i3891 = phi i64 [ %i.fn, %.noexc46 ], [ %.0.i3891.unr, %.noexc46.prol.loopexit ] ; 3 uses
  %i.fa = load ptr, ptr %i.s, align 16
  %i.fb = getelementptr inbounds nuw [56 x i8], ptr %i.fa, i64 %.0.i3891 ; 5 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fb, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.fc, align 4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  store i8 1, ptr %i.fd, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 44
  store i32 0, ptr %i.fe, align 4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 48
  store ptr null, ptr %i.ff, align 8
  %i.fg = load ptr, ptr %i.s, align 16
  %i.fh = getelementptr inbounds nuw [56 x i8], ptr %i.fg, i64 %.0.i3891 ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 56
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fi, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.fj, align 4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 96
  store i8 1, ptr %i.fk, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 100
  store i32 0, ptr %i.fl, align 4
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 104
  store ptr null, ptr %i.fm, align 8
  %i.fn = add nuw nsw i64 %.0.i3891, 2            ; 2 uses
  %exitcond112.not.1 = icmp eq i64 %i.fn, %i.by
  br i1 %exitcond112.not.1, label %._crit_edge92, label %.noexc46, !llvm.loop !6

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.b, %bb.a
  %i.fo = landingpad { ptr, i32 }
          cleanup
  %i.fp = load i64, ptr %i.u, align 16            ; 2 uses
  %.not106 = icmp eq i64 %i.fp, 0
  br i1 %.not106, label %._crit_edge96, label %.lr.ph95

._crit_edge96:                                    ; preds = %_ZN6embree13RawBufferViewD2Ev.exit59, %bb.k
  %i.fq = load ptr, ptr %i.t, align 8             ; 3 uses
  %.not.i24 = icmp eq ptr %i.fq, null
  br i1 %.not.i24, label %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge96
  %i.fr = load ptr, ptr %i.v, align 16
  %i.fs = load ptr, ptr %i.fq, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 72
  %i.fu = load ptr, ptr %i.ft, align 8
  invoke void %i.fu(ptr noundef nonnull align 8 dereferenceable(1384) %i.fq, ptr noundef %i.fr)
          to label %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEED2Ev.exit unwind label %bb.o, !inline_history !7

.lr.ph95:                                         ; preds = %bb.k, %_ZN6embree13RawBufferViewD2Ev.exit59
  %i.fv = phi i64 [ %i.gf, %_ZN6embree13RawBufferViewD2Ev.exit59 ], [ %i.fp, %bb.k ]
  %.0.i2293 = phi i64 [ %i.gg, %_ZN6embree13RawBufferViewD2Ev.exit59 ], [ 0, %bb.k ] ; 2 uses
  %i.fw = load ptr, ptr %i.v, align 16
  %i.fx = getelementptr inbounds nuw [56 x i8], ptr %i.fw, i64 %.0.i2293
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 48
  %i.fz = load ptr, ptr %i.fy, align 8            ; 3 uses
  %.not.i.i58 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i58, label %_ZN6embree13RawBufferViewD2Ev.exit59, label %bb.m

bb.m:                                             ; preds = %.lr.ph95
  %i.ga = load ptr, ptr %i.fz, align 8
end_hunk_0
begin_hunk_1_@_ZN6embree6PointsC2EPNS_6DeviceENS_8Geometry5GTypeE:.noexc

_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEED2Ev.exit: ; preds = %bb.p, %._crit_edge99
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %i.hf = load i64, ptr %i.m, align 16            ; 2 uses
  %.not108 = icmp eq i64 %i.hf, 0
  br i1 %.not108, label %._crit_edge102, label %.lr.ph101

._crit_edge102:                                   ; preds = %_ZN6embree13RawBufferViewD2Ev.exit63, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEED2Ev.exit
  %i.hg = load ptr, ptr %i.j, align 8             ; 3 uses
  %.not.i = icmp eq ptr %i.hg, null
  br i1 %.not.i, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge102
  %i.hh = load ptr, ptr %i.o, align 16
  %i.hi = load ptr, ptr %i.hg, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 72
  %i.hk = load ptr, ptr %i.hj, align 8
  invoke void %i.hk(ptr noundef nonnull align 8 dereferenceable(1384) %i.hg, ptr noundef %i.hh)
          to label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEED2Ev.exit unwind label %bb.w, !inline_history !11

.lr.ph101:                                        ; preds = %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEED2Ev.exit, %_ZN6embree13RawBufferViewD2Ev.exit63
  %i.hl = phi i64 [ %i.hv, %_ZN6embree13RawBufferViewD2Ev.exit63 ], [ %i.hf, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEED2Ev.exit ]
  %.0.i100 = phi i64 [ %i.hw, %_ZN6embree13RawBufferViewD2Ev.exit63 ], [ 0, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEED2Ev.exit ] ; 2 uses
  %i.hm = load ptr, ptr %i.o, align 16
  %i.hn = getelementptr inbounds nuw [56 x i8], ptr %i.hm, i64 %.0.i100
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 48
  %i.hp = load ptr, ptr %i.ho, align 8            ; 3 uses
  %.not.i.i62 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i62, label %_ZN6embree13RawBufferViewD2Ev.exit63, label %bb.u

bb.u:                                             ; preds = %.lr.ph101
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8
  invoke void %i.hs(ptr noundef nonnull align 8 dereferenceable(16) %i.hp)
          to label %._ZN6embree13RawBufferViewD2Ev.exit63_crit_edge unwind label %bb.v

._ZN6embree13RawBufferViewD2Ev.exit63_crit_edge:  ; preds = %bb.u
  %.pre117 = load i64, ptr %i.m, align 16
  br label %_ZN6embree13RawBufferViewD2Ev.exit63

bb.v:                                             ; preds = %bb.u
  %i.ht = landingpad { ptr, i32 }
          catch ptr null
  %i.hu = extractvalue { ptr, i32 } %i.ht, 0
  tail call void @__clang_call_terminate(ptr %i.hu) #23
  unreachable

_ZN6embree13RawBufferViewD2Ev.exit63:             ; preds = %._ZN6embree13RawBufferViewD2Ev.exit63_crit_edge, %.lr.ph101
  %i.hv = phi i64 [ %.pre117, %._ZN6embree13RawBufferViewD2Ev.exit63_crit_edge ], [ %i.hl, %.lr.ph101 ] ; 2 uses
  %i.hw = add nuw i64 %.0.i100, 1                 ; 2 uses
  %i.hx = icmp ult i64 %i.hw, %i.hv
  br i1 %i.hx, label %.lr.ph101, label %._crit_edge102, !llvm.loop !12

bb.w:                                             ; preds = %bb.t
  %i.hy = landingpad { ptr, i32 }
          catch ptr null
  %i.hz = extractvalue { ptr, i32 } %i.hy, 0
  tail call void @__clang_call_terminate(ptr %i.hz) #23
  unreachable

_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEED2Ev.exit: ; preds = %bb.t, %._crit_edge102
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.ia = load ptr, ptr %i.i, align 16            ; 3 uses
  %.not.i.i64 = icmp eq ptr %i.ia, null
  br i1 %.not.i.i64, label %_ZN6embree13RawBufferViewD2Ev.exit65, label %bb.x

bb.x:                                             ; preds = %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEED2Ev.exit
  %i.ib = load ptr, ptr %i.ia, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 24
  %i.id = load ptr, ptr %i.ic, align 8
  invoke void %i.id(ptr noundef nonnull align 8 dereferenceable(16) %i.ia)
          to label %_ZN6embree13RawBufferViewD2Ev.exit65 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ie = landingpad { ptr, i32 }
          catch ptr null
  %i.if = extractvalue { ptr, i32 } %i.ie, 0
  tail call void @__clang_call_terminate(ptr %i.if) #23
  unreachable

_ZN6embree13RawBufferViewD2Ev.exit65:             ; preds = %bb.x, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEED2Ev.exit
  %i.ig = load ptr, ptr %i.e, align 8             ; 3 uses
  %.not.i.i66 = icmp eq ptr %i.ig, null
  br i1 %.not.i.i66, label %_ZN6embree13RawBufferViewD2Ev.exit67, label %bb.z

bb.z:                                             ; preds = %_ZN6embree13RawBufferViewD2Ev.exit65
  %i.ih = load ptr, ptr %i.ig, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 24
  %i.ij = load ptr, ptr %i.ii, align 8
  invoke void %i.ij(ptr noundef nonnull align 8 dereferenceable(16) %i.ig)
          to label %_ZN6embree13RawBufferViewD2Ev.exit67 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ik = landingpad { ptr, i32 }
          catch ptr null
  %i.il = extractvalue { ptr, i32 } %i.ik, 0
  tail call void @__clang_call_terminate(ptr %i.il) #23
  unreachable

_ZN6embree13RawBufferViewD2Ev.exit67:             ; preds = %bb.z, %_ZN6embree13RawBufferViewD2Ev.exit65
  tail call void @_ZN6embree8GeometryD2Ev(ptr noundef nonnull align 16 dead_on_return(88) dereferenceable(88) %0) #24
  resume { ptr, i32 } %i.fo
}

declare void @_ZN6embree8GeometryC2EPNS_6DeviceENS0_5GTypeEjj(ptr noundef nonnull align 16 dereferenceable(88), ptr noundef, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN6embree8GeometryD2Ev(ptr noundef nonnull align 16 dead_on_return(88) dereferenceable(88)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6embree6Points7setMaskEj(ptr noundef nonnull align 16 dereferenceable(300) initializes((52, 56)) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %1, ptr %i.a, align 4
  tail call void @_ZN6embree8Geometry6updateEv(ptr noundef nonnull align 16 dereferenceable(88) %0)
  ret void
}

declare void @_ZN6embree8Geometry6updateEv(ptr noundef nonnull align 16 dereferenceable(88)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6embree6Points15setNumTimeStepsEj(ptr noundef nonnull align 16 dereferenceable(300) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.b = zext i32 %1 to i64                       ; 34 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 5 uses
  %.not.i = icmp ult i64 %i.d, %i.b
  br i1 %.not.i, label %bb.b, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.0.i334 = phi i64 [ %i.f, %.lr.ph ], [ %i.d, %bb.b ]
  %i.f = shl nuw nsw i64 %.0.i334, 1              ; 3 uses
  %i.g = icmp samesign ult i64 %i.f, %i.b
  br i1 %i.g, label %.lr.ph, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit, !llvm.loop !21

_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit: ; preds = %.lr.ph, %bb.a, %bb.b
  %.07.i = phi i64 [ %i.b, %bb.b ], [ %i.d, %bb.a ], [ %i.f, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 7 uses
  %i.i = load i64, ptr %i.h, align 16             ; 3 uses
  %i.j = icmp ugt i64 %i.i, %i.b
  br i1 %i.j, label %.lr.ph36, label %bb.f

.lr.ph36:                                         ; preds = %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN6embree13RawBufferViewD2Ev.exit
  %.pre67.pre = load i64, ptr %i.c, align 8
  store i64 %i.b, ptr %i.h, align 16
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph36, %_ZN6embree13RawBufferViewD2Ev.exit
  %i.l = phi i64 [ %i.i, %.lr.ph36 ], [ %i.v, %_ZN6embree13RawBufferViewD2Ev.exit ]
  %.029.i35 = phi i64 [ %i.b, %.lr.ph36 ], [ %i.w, %_ZN6embree13RawBufferViewD2Ev.exit ] ; 2 uses
  %i.m = load ptr, ptr %i.k, align 16
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %i.m, i64 %.029.i35
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %.not.i.i12 = icmp eq ptr %i.p, null
  br i1 %.not.i.i12, label %_ZN6embree13RawBufferViewD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %._ZN6embree13RawBufferViewD2Ev.exit_crit_edge unwind label %bb.e

._ZN6embree13RawBufferViewD2Ev.exit_crit_edge:    ; preds = %bb.d
  %.pre = load i64, ptr %i.h, align 16
  br label %_ZN6embree13RawBufferViewD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #23
  unreachable

_ZN6embree13RawBufferViewD2Ev.exit:               ; preds = %._ZN6embree13RawBufferViewD2Ev.exit_crit_edge, %bb.c
  %i.v = phi i64 [ %.pre, %._ZN6embree13RawBufferViewD2Ev.exit_crit_edge ], [ %i.l, %bb.c ] ; 2 uses
  %i.w = add nuw i64 %.029.i35, 1                 ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  br i1 %i.x, label %bb.c, label %._crit_edge, !llvm.loop !22

bb.f:                                             ; preds = %._crit_edge, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit
  %i.y = phi i64 [ %i.b, %._crit_edge ], [ %i.i, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit ] ; 6 uses
  %i.z = phi i64 [ %.pre67.pre, %._crit_edge ], [ %i.d, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit ]
  %i.aa = icmp eq i64 %.07.i, %i.z
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp samesign ult i64 %i.y, %i.b
  br i1 %i.ab, label %.lr.ph44, label %._crit_edge45

.lr.ph44:                                         ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.ad = sub nuw nsw i64 %i.b, %i.y
  %xtraiter100 = and i64 %i.ad, 1
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph44
  %i.ae = load ptr, ptr %i.ac, align 16
  %i.af = getelementptr inbounds nuw [56 x i8], ptr %i.ae, i64 %i.y ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store i8 1, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 44
  store i32 0, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  store ptr null, ptr %i.aj, align 8
  %i.ak = add nuw nsw i64 %i.y, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph44
  %.028.i42.unr = phi i64 [ %i.y, %.lr.ph44 ], [ %i.ak, %.prol.loopexit.unr-lcssa ]
  %i.al = add nsw i64 %i.b, -1
  %i.am = icmp eq i64 %i.y, %i.al
  br i1 %i.am, label %._crit_edge45, label %.lr.ph44.new

._crit_edge45:                                    ; preds = %.prol.loopexit, %.lr.ph44.new, %bb.g
  store i64 %i.b, ptr %i.h, align 16
  br label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE15internal_resizeEmm.exit

.lr.ph44.new:                                     ; preds = %.prol.loopexit, %.lr.ph44.new
  %.028.i42 = phi i64 [ %i.ba, %.lr.ph44.new ], [ %.028.i42.unr, %.prol.loopexit ] ; 3 uses
  %i.an = load ptr, ptr %i.ac, align 16
  %i.ao = getelementptr inbounds nuw [56 x i8], ptr %i.an, i64 %.028.i42 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ao, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store i8 1, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 44
  store i32 0, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  store ptr null, ptr %i.as, align 8
  %i.at = load ptr, ptr %i.ac, align 16
  %i.au = getelementptr inbounds nuw [56 x i8], ptr %i.at, i64 %.028.i42 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.av, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  store i8 1, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 100
  store i32 0, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 104
  store ptr null, ptr %i.az, align 8
  %i.ba = add nuw nsw i64 %.028.i42, 2            ; 2 uses
  %exitcond64.not.1 = icmp eq i64 %i.ba, %i.b
  br i1 %exitcond64.not.1, label %._crit_edge45, label %.lr.ph44.new, !llvm.loop !23

bb.h:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 6 uses
  %i.bc = load ptr, ptr %i.bb, align 16           ; 2 uses
  %i.bd = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.be = mul i64 %.07.i, 56
  %i.bf = load ptr, ptr %i.bd, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = tail call noundef ptr %i.bh(ptr noundef nonnull align 8 dereferenceable(1384) %i.bd, i64 noundef %i.be, i64 noundef 8, i32 noundef 3), !inline_history !24
  store ptr %i.bi, ptr %i.bb, align 16
  %i.bj = load i64, ptr %i.h, align 16
  %.not = icmp eq i64 %i.bj, 0
  br i1 %.not, label %.preheader30, label %_ZN6embree13RawBufferViewD2Ev.exit14

.preheader30:                                     ; preds = %_ZN6embree13RawBufferViewD2Ev.exit14, %bb.h
  %.lcssa33 = phi i64 [ 0, %bb.h ], [ %i.cc, %_ZN6embree13RawBufferViewD2Ev.exit14 ] ; 6 uses
  %i.bk = icmp ult i64 %.lcssa33, %i.b
  br i1 %i.bk, label %.lr.ph40.preheader, label %._crit_edge41

.lr.ph40.preheader:                               ; preds = %.preheader30
  %i.bl = sub nuw i64 %i.b, %.lcssa33
  %xtraiter = and i64 %i.bl, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph40.prol.loopexit, label %.lr.ph40.prol

.lr.ph40.prol:                                    ; preds = %.lr.ph40.preheader
  %i.bm = load ptr, ptr %i.bb, align 16
  %i.bn = getelementptr inbounds nuw [56 x i8], ptr %i.bm, i64 %.lcssa33 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bn, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  store i8 1, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 44
  store i32 0, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  store ptr null, ptr %i.br, align 8
  %i.bs = add nuw nsw i64 %.lcssa33, 1
  br label %.lr.ph40.prol.loopexit

.lr.ph40.prol.loopexit:                           ; preds = %.lr.ph40.prol, %.lr.ph40.preheader
  %.0.i39.unr = phi i64 [ %.lcssa33, %.lr.ph40.preheader ], [ %i.bs, %.lr.ph40.prol ]
  %i.bt = add nsw i64 %i.b, -1
  %i.bu = icmp eq i64 %.lcssa33, %i.bt
  br i1 %i.bu, label %._crit_edge41, label %.lr.ph40

_ZN6embree13RawBufferViewD2Ev.exit14:             ; preds = %bb.h, %_ZN6embree13RawBufferViewD2Ev.exit14
  %.027.i37 = phi i64 [ %i.cb, %_ZN6embree13RawBufferViewD2Ev.exit14 ], [ 0, %bb.h ] ; 3 uses
  %i.bv = load ptr, ptr %i.bb, align 16
  %i.bw = getelementptr inbounds nuw [56 x i8], ptr %i.bv, i64 %.027.i37 ; 2 uses
  %i.bx = getelementptr inbounds nuw [56 x i8], ptr %i.bc, i64 %.027.i37 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bw, ptr noundef nonnull align 8 dereferenceable(56) %i.bx, i64 48, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 48 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8
  store ptr %i.ca, ptr %i.by, align 8
  store ptr null, ptr %i.bz, align 8
  %i.cb = add nuw i64 %.027.i37, 1                ; 2 uses
  %i.cc = load i64, ptr %i.h, align 16            ; 2 uses
  %i.cd = icmp ult i64 %i.cb, %i.cc
  br i1 %i.cd, label %_ZN6embree13RawBufferViewD2Ev.exit14, label %.preheader30, !llvm.loop !0

._crit_edge41:                                    ; preds = %.lr.ph40.prol.loopexit, %.lr.ph40, %.preheader30
  %i.ce = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i, label %_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3fxEEELm8EE10deallocateEPS4_m.exit.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge41
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 72
  %i.ch = load ptr, ptr %i.cg, align 8
  tail call void %i.ch(ptr noundef nonnull align 8 dereferenceable(1384) %i.ce, ptr noundef %i.bc), !inline_history !25
  br label %_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3fxEEELm8EE10deallocateEPS4_m.exit.i

_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3fxEEELm8EE10deallocateEPS4_m.exit.i: ; preds = %bb.i, %._crit_edge41
  store i64 %i.b, ptr %i.h, align 16
  store i64 %.07.i, ptr %i.c, align 8
  br label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE15internal_resizeEmm.exit

.lr.ph40:                                         ; preds = %.lr.ph40.prol.loopexit, %.lr.ph40
  %.0.i39 = phi i64 [ %i.cv, %.lr.ph40 ], [ %.0.i39.unr, %.lr.ph40.prol.loopexit ] ; 3 uses
  %i.ci = load ptr, ptr %i.bb, align 16
  %i.cj = getelementptr inbounds nuw [56 x i8], ptr %i.ci, i64 %.0.i39 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cj, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.ck, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  store i8 1, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 44
  store i32 0, ptr %i.cm, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  store ptr null, ptr %i.cn, align 8
  %i.co = load ptr, ptr %i.bb, align 16
  %i.cp = getelementptr inbounds nuw [56 x i8], ptr %i.co, i64 %.0.i39 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cq, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.cr, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 96
  store i8 1, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 100
  store i32 0, ptr %i.ct, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 104
  store ptr null, ptr %i.cu, align 8
  %i.cv = add nuw nsw i64 %.0.i39, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cv, %i.b
  br i1 %exitcond.not.1, label %._crit_edge41, label %.lr.ph40, !llvm.loop !1

_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE15internal_resizeEmm.exit: ; preds = %._crit_edge45, %_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3fxEEELm8EE10deallocateEPS4_m.exit.i
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = and i32 %i.cx, 255
  %i.cz = icmp eq i32 %i.cy, 27
  br i1 %i.cz, label %bb.j, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE15internal_resizeEmm.exit

bb.j:                                             ; preds = %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE15internal_resizeEmm.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.dc = load i64, ptr %i.db, align 8            ; 5 uses
  %.not.i9 = icmp ult i64 %i.dc, %i.b
  br i1 %.not.i9, label %bb.k, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit

bb.k:                                             ; preds = %bb.j
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit, label %.lr.ph47

.lr.ph47:                                         ; preds = %bb.k, %.lr.ph47
  %.0.i1146 = phi i64 [ %i.de, %.lr.ph47 ], [ %i.dc, %bb.k ]
  %i.de = shl nuw nsw i64 %.0.i1146, 1            ; 3 uses
  %i.df = icmp samesign ult i64 %i.de, %i.b
  br i1 %i.df, label %.lr.ph47, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit, !llvm.loop !2

_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit: ; preds = %.lr.ph47, %bb.j, %bb.k
  %.07.i10 = phi i64 [ %i.b, %bb.k ], [ %i.dc, %bb.j ], [ %i.de, %.lr.ph47 ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 7 uses
  %i.dh = load i64, ptr %i.dg, align 16           ; 3 uses
  %i.di = icmp ugt i64 %i.dh, %i.b
  br i1 %i.di, label %.lr.ph50, label %bb.o

.lr.ph50:                                         ; preds = %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.l

._crit_edge51:                                    ; preds = %_ZN6embree13RawBufferViewD2Ev.exit17
  %.pre69.pre = load i64, ptr %i.db, align 8
  store i64 %i.b, ptr %i.dg, align 16
  br label %bb.o

bb.l:                                             ; preds = %.lr.ph50, %_ZN6embree13RawBufferViewD2Ev.exit17
  %i.dk = phi i64 [ %i.dh, %.lr.ph50 ], [ %i.du, %_ZN6embree13RawBufferViewD2Ev.exit17 ]
  %.029.i849 = phi i64 [ %i.b, %.lr.ph50 ], [ %i.dv, %_ZN6embree13RawBufferViewD2Ev.exit17 ] ; 2 uses
  %i.dl = load ptr, ptr %i.dj, align 16
  %i.dm = getelementptr inbounds nuw [56 x i8], ptr %i.dl, i64 %.029.i849
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  %i.do = load ptr, ptr %i.dn, align 8            ; 3 uses
  %.not.i.i16 = icmp eq ptr %i.do, null
  br i1 %.not.i.i16, label %_ZN6embree13RawBufferViewD2Ev.exit17, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8
  invoke void %i.dr(ptr noundef nonnull align 8 dereferenceable(16) %i.do)
          to label %._ZN6embree13RawBufferViewD2Ev.exit17_crit_edge unwind label %bb.n

._ZN6embree13RawBufferViewD2Ev.exit17_crit_edge:  ; preds = %bb.m
  %.pre68 = load i64, ptr %i.dg, align 16
  br label %_ZN6embree13RawBufferViewD2Ev.exit17

bb.n:                                             ; preds = %bb.m
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  tail call void @__clang_call_terminate(ptr %i.dt) #23
  unreachable

_ZN6embree13RawBufferViewD2Ev.exit17:             ; preds = %._ZN6embree13RawBufferViewD2Ev.exit17_crit_edge, %bb.l
  %i.du = phi i64 [ %.pre68, %._ZN6embree13RawBufferViewD2Ev.exit17_crit_edge ], [ %i.dk, %bb.l ] ; 2 uses
  %i.dv = add nuw i64 %.029.i849, 1               ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.du
  br i1 %i.dw, label %bb.l, label %._crit_edge51, !llvm.loop !3

bb.o:                                             ; preds = %._crit_edge51, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit
  %i.dx = phi i64 [ %i.b, %._crit_edge51 ], [ %i.dh, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit ] ; 6 uses
  %i.dy = phi i64 [ %.pre69.pre, %._crit_edge51 ], [ %i.dc, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit ]
  %i.dz = icmp eq i64 %.07.i10, %i.dy
  br i1 %i.dz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ea = icmp samesign ult i64 %i.dx, %i.b
  br i1 %i.ea, label %.lr.ph59, label %._crit_edge60

.lr.ph59:                                         ; preds = %bb.p
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.ec = sub nuw nsw i64 %i.b, %i.dx
  %xtraiter106 = and i64 %i.ec, 1
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %.prol.loopexit105, label %.prol.loopexit105.unr-lcssa

.prol.loopexit105.unr-lcssa:                      ; preds = %.lr.ph59
  %i.ed = load ptr, ptr %i.eb, align 16
  %i.ee = getelementptr inbounds nuw [56 x i8], ptr %i.ed, i64 %i.dx ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ee, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.ef, align 4
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
  store i8 1, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 44
  store i32 0, ptr %i.eh, align 4
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  store ptr null, ptr %i.ei, align 8
  %i.ej = add nuw nsw i64 %i.dx, 1
  br label %.prol.loopexit105

.prol.loopexit105:                                ; preds = %.prol.loopexit105.unr-lcssa, %.lr.ph59
  %.028.i757.unr = phi i64 [ %i.dx, %.lr.ph59 ], [ %i.ej, %.prol.loopexit105.unr-lcssa ]
  %i.ek = add nsw i64 %i.b, -1
  %i.el = icmp eq i64 %i.dx, %i.ek
  br i1 %i.el, label %._crit_edge60, label %.lr.ph59.new

._crit_edge60:                                    ; preds = %.prol.loopexit105, %.lr.ph59.new, %bb.p
  store i64 %i.b, ptr %i.dg, align 16
  br label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE15internal_resizeEmm.exit

.lr.ph59.new:                                     ; preds = %.prol.loopexit105, %.lr.ph59.new
  %.028.i757 = phi i64 [ %i.ez, %.lr.ph59.new ], [ %.028.i757.unr, %.prol.loopexit105 ] ; 3 uses
  %i.em = load ptr, ptr %i.eb, align 16
  %i.en = getelementptr inbounds nuw [56 x i8], ptr %i.em, i64 %.028.i757 ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.en, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.eo, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  store i8 1, ptr %i.ep, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 44
  store i32 0, ptr %i.eq, align 4
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 48
  store ptr null, ptr %i.er, align 8
  %i.es = load ptr, ptr %i.eb, align 16
  %i.et = getelementptr inbounds nuw [56 x i8], ptr %i.es, i64 %.028.i757 ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 56
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.eu, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.ev, align 4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 96
  store i8 1, ptr %i.ew, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 100
  store i32 0, ptr %i.ex, align 4
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 104
  store ptr null, ptr %i.ey, align 8
  %i.ez = add nuw nsw i64 %.028.i757, 2           ; 2 uses
  %exitcond66.not.1 = icmp eq i64 %i.ez, %i.b
  br i1 %exitcond66.not.1, label %._crit_edge60, label %.lr.ph59.new, !llvm.loop !4

bb.q:                                             ; preds = %bb.o
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 6 uses
  %i.fb = load ptr, ptr %i.fa, align 16           ; 2 uses
  %i.fc = load ptr, ptr %i.da, align 8            ; 2 uses
  %i.fd = mul i64 %.07.i10, 56
  %i.fe = load ptr, ptr %i.fc, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 64
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = tail call noundef ptr %i.fg(ptr noundef nonnull align 8 dereferenceable(1384) %i.fc, i64 noundef %i.fd, i64 noundef 8, i32 noundef 3), !inline_history !26
  store ptr %i.fh, ptr %i.fa, align 16
  %i.fi = load i64, ptr %i.dg, align 16
  %.not61 = icmp eq i64 %i.fi, 0
  br i1 %.not61, label %.preheader, label %_ZN6embree13RawBufferViewD2Ev.exit19

.preheader:                                       ; preds = %_ZN6embree13RawBufferViewD2Ev.exit19, %bb.q
  %.lcssa = phi i64 [ 0, %bb.q ], [ %i.gb, %_ZN6embree13RawBufferViewD2Ev.exit19 ] ; 6 uses
  %i.fj = icmp ult i64 %.lcssa, %i.b
  br i1 %i.fj, label %.lr.ph55.preheader, label %._crit_edge56

.lr.ph55.preheader:                               ; preds = %.preheader
  %i.fk = sub nuw i64 %i.b, %.lcssa
  %xtraiter102 = and i64 %i.fk, 1
  %lcmp.mod103.not = icmp eq i64 %xtraiter102, 0
  br i1 %lcmp.mod103.not, label %.lr.ph55.prol.loopexit, label %.lr.ph55.prol

.lr.ph55.prol:                                    ; preds = %.lr.ph55.preheader
  %i.fl = load ptr, ptr %i.fa, align 16
  %i.fm = getelementptr inbounds nuw [56 x i8], ptr %i.fl, i64 %.lcssa ; 5 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fm, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.fn, align 4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 40
  store i8 1, ptr %i.fo, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 44
  store i32 0, ptr %i.fp, align 4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 48
  store ptr null, ptr %i.fq, align 8
  %i.fr = add nuw nsw i64 %.lcssa, 1
  br label %.lr.ph55.prol.loopexit

.lr.ph55.prol.loopexit:                           ; preds = %.lr.ph55.prol, %.lr.ph55.preheader
  %.0.i554.unr = phi i64 [ %.lcssa, %.lr.ph55.preheader ], [ %i.fr, %.lr.ph55.prol ]
  %i.fs = add nsw i64 %i.b, -1
  %i.ft = icmp eq i64 %.lcssa, %i.fs
  br i1 %i.ft, label %._crit_edge56, label %.lr.ph55

_ZN6embree13RawBufferViewD2Ev.exit19:             ; preds = %bb.q, %_ZN6embree13RawBufferViewD2Ev.exit19
  %.027.i452 = phi i64 [ %i.ga, %_ZN6embree13RawBufferViewD2Ev.exit19 ], [ 0, %bb.q ] ; 3 uses
  %i.fu = load ptr, ptr %i.fa, align 16
  %i.fv = getelementptr inbounds nuw [56 x i8], ptr %i.fu, i64 %.027.i452 ; 2 uses
  %i.fw = getelementptr inbounds nuw [56 x i8], ptr %i.fb, i64 %.027.i452 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fv, ptr noundef nonnull align 8 dereferenceable(56) %i.fw, i64 48, i1 false)
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 48
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 48 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8
  store ptr %i.fz, ptr %i.fx, align 8
  store ptr null, ptr %i.fy, align 8
  %i.ga = add nuw i64 %.027.i452, 1               ; 2 uses
  %i.gb = load i64, ptr %i.dg, align 16           ; 2 uses
  %i.gc = icmp ult i64 %i.ga, %i.gb
  br i1 %i.gc, label %_ZN6embree13RawBufferViewD2Ev.exit19, label %.preheader, !llvm.loop !5

._crit_edge56:                                    ; preds = %.lr.ph55.prol.loopexit, %.lr.ph55, %.preheader
  %i.gd = load ptr, ptr %i.da, align 8            ; 3 uses
  %.not.i.i6 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i6, label %_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3faEEELm8EE10deallocateEPS4_m.exit.i, label %bb.r

bb.r:                                             ; preds = %._crit_edge56
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 72
  %i.gg = load ptr, ptr %i.gf, align 8
  tail call void %i.gg(ptr noundef nonnull align 8 dereferenceable(1384) %i.gd, ptr noundef %i.fb), !inline_history !27
  br label %_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3faEEELm8EE10deallocateEPS4_m.exit.i

_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3faEEELm8EE10deallocateEPS4_m.exit.i: ; preds = %bb.r, %._crit_edge56
  store i64 %i.b, ptr %i.dg, align 16
  store i64 %.07.i10, ptr %i.db, align 8
  br label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE15internal_resizeEmm.exit

.lr.ph55:                                         ; preds = %.lr.ph55.prol.loopexit, %.lr.ph55
  %.0.i554 = phi i64 [ %i.gu, %.lr.ph55 ], [ %.0.i554.unr, %.lr.ph55.prol.loopexit ] ; 3 uses
  %i.gh = load ptr, ptr %i.fa, align 16
  %i.gi = getelementptr inbounds nuw [56 x i8], ptr %i.gh, i64 %.0.i554 ; 5 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gi, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.gj, align 4
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 40
  store i8 1, ptr %i.gk, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 44
  store i32 0, ptr %i.gl, align 4
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 48
  store ptr null, ptr %i.gm, align 8
  %i.gn = load ptr, ptr %i.fa, align 16
  %i.go = getelementptr inbounds nuw [56 x i8], ptr %i.gn, i64 %.0.i554 ; 5 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 56
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gp, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.gq, align 4
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 96
  store i8 1, ptr %i.gr, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 100
  store i32 0, ptr %i.gs, align 4
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 104
  store ptr null, ptr %i.gt, align 8
  %i.gu = add nuw nsw i64 %.0.i554, 2             ; 2 uses
  %exitcond65.not.1 = icmp eq i64 %i.gu, %i.b
  br i1 %exitcond65.not.1, label %._crit_edge56, label %.lr.ph55, !llvm.loop !6

_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEE15internal_resizeEmm.exit: ; preds = %_ZN6embree6Device9allocatorINS_10BufferViewINS_6Vec3faEEELm8EE10deallocateEPS4_m.exit.i, %._crit_edge60, %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3fxEEENS_6Device9allocatorIS3_Lm8EEEE15internal_resizeEmm.exit
  tail call void @_ZN6embree8Geometry15setNumTimeStepsEj(ptr noundef nonnull align 16 dereferenceable(88) %0, i32 noundef %1)
  ret void
}

declare void @_ZN6embree8Geometry15setNumTimeStepsEj(ptr noundef nonnull align 16 dereferenceable(88), i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6embree6Points23setVertexAttributeCountEj(ptr noundef nonnull align 16 dereferenceable(300) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.b = zext i32 %1 to i64                       ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 5 uses
  %.not.i = icmp ult i64 %i.d, %i.b
  br i1 %.not.i, label %bb.b, label %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE18internal_grow_sizeEm.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE18internal_grow_sizeEm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.0.i110 = phi i64 [ %i.f, %.lr.ph ], [ %i.d, %bb.b ]
  %i.f = shl nuw nsw i64 %.0.i110, 1              ; 3 uses
  %i.g = icmp samesign ult i64 %i.f, %i.b
  br i1 %i.g, label %.lr.ph, label %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE18internal_grow_sizeEm.exit, !llvm.loop !28

_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE18internal_grow_sizeEm.exit: ; preds = %.lr.ph, %bb.a, %bb.b
  %.07.i = phi i64 [ %i.b, %bb.b ], [ %i.d, %bb.a ], [ %i.f, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 7 uses
  %i.i = load i64, ptr %i.h, align 16             ; 3 uses
  %i.j = icmp ugt i64 %i.i, %i.b
  br i1 %i.j, label %.lr.ph12, label %bb.f

.lr.ph12:                                         ; preds = %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE18internal_grow_sizeEm.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN6embree13RawBufferViewD2Ev.exit
  %.pre24.pre = load i64, ptr %i.c, align 8
  store i64 %i.b, ptr %i.h, align 16
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph12, %_ZN6embree13RawBufferViewD2Ev.exit
  %i.l = phi i64 [ %i.i, %.lr.ph12 ], [ %i.v, %_ZN6embree13RawBufferViewD2Ev.exit ]
  %.029.i11 = phi i64 [ %i.b, %.lr.ph12 ], [ %i.w, %_ZN6embree13RawBufferViewD2Ev.exit ] ; 2 uses
  %i.m = load ptr, ptr %i.k, align 16
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %i.m, i64 %.029.i11
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.p, null
  br i1 %.not.i.i2, label %_ZN6embree13RawBufferViewD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %._ZN6embree13RawBufferViewD2Ev.exit_crit_edge unwind label %bb.e

._ZN6embree13RawBufferViewD2Ev.exit_crit_edge:    ; preds = %bb.d
  %.pre = load i64, ptr %i.h, align 16
  br label %_ZN6embree13RawBufferViewD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #23
  unreachable

_ZN6embree13RawBufferViewD2Ev.exit:               ; preds = %._ZN6embree13RawBufferViewD2Ev.exit_crit_edge, %bb.c
  %i.v = phi i64 [ %.pre, %._ZN6embree13RawBufferViewD2Ev.exit_crit_edge ], [ %i.l, %bb.c ] ; 2 uses
  %i.w = add nuw i64 %.029.i11, 1                 ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  br i1 %i.x, label %bb.c, label %._crit_edge, !llvm.loop !29

bb.f:                                             ; preds = %._crit_edge, %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE18internal_grow_sizeEm.exit
  %i.y = phi i64 [ %i.b, %._crit_edge ], [ %i.i, %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE18internal_grow_sizeEm.exit ] ; 6 uses
  %i.z = phi i64 [ %.pre24.pre, %._crit_edge ], [ %i.d, %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE18internal_grow_sizeEm.exit ]
  %i.aa = icmp eq i64 %.07.i, %i.z
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp samesign ult i64 %i.y, %i.b
  br i1 %i.ab, label %.lr.ph20, label %._crit_edge21

.lr.ph20:                                         ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.ad = sub nuw nsw i64 %i.b, %i.y
  %xtraiter41 = and i64 %i.ad, 1
  %lcmp.mod42.not = icmp eq i64 %xtraiter41, 0
  br i1 %lcmp.mod42.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph20
  %i.ae = load ptr, ptr %i.ac, align 16
  %i.af = getelementptr inbounds nuw [56 x i8], ptr %i.ae, i64 %i.y ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store i8 1, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 44
  store i32 0, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  store ptr null, ptr %i.aj, align 8
  %i.ak = add nuw nsw i64 %i.y, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph20
  %.028.i18.unr = phi i64 [ %i.y, %.lr.ph20 ], [ %i.ak, %.prol.loopexit.unr-lcssa ]
  %i.al = add nsw i64 %i.b, -1
  %i.am = icmp eq i64 %i.y, %i.al
  br i1 %i.am, label %._crit_edge21, label %.lr.ph20.new

._crit_edge21:                                    ; preds = %.prol.loopexit, %.lr.ph20.new, %bb.g
  store i64 %i.b, ptr %i.h, align 16
  br label %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE15internal_resizeEmm.exit

.lr.ph20.new:                                     ; preds = %.prol.loopexit, %.lr.ph20.new
  %.028.i18 = phi i64 [ %i.ba, %.lr.ph20.new ], [ %.028.i18.unr, %.prol.loopexit ] ; 3 uses
  %i.an = load ptr, ptr %i.ac, align 16
  %i.ao = getelementptr inbounds nuw [56 x i8], ptr %i.an, i64 %.028.i18 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ao, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store i8 1, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 44
  store i32 0, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  store ptr null, ptr %i.as, align 8
  %i.at = load ptr, ptr %i.ac, align 16
  %i.au = getelementptr inbounds nuw [56 x i8], ptr %i.at, i64 %.028.i18 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.av, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  store i8 1, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 100
  store i32 0, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 104
  store ptr null, ptr %i.az, align 8
  %i.ba = add nuw nsw i64 %.028.i18, 2            ; 2 uses
  %exitcond23.not.1 = icmp eq i64 %i.ba, %i.b
  br i1 %exitcond23.not.1, label %._crit_edge21, label %.lr.ph20.new, !llvm.loop !30

bb.h:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 6 uses
  %i.bc = load ptr, ptr %i.bb, align 16           ; 2 uses
  %i.bd = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.be = mul i64 %.07.i, 56
  %i.bf = load ptr, ptr %i.bd, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = tail call noundef ptr %i.bh(ptr noundef nonnull align 8 dereferenceable(1384) %i.bd, i64 noundef %i.be, i64 noundef 8, i32 noundef 3), !inline_history !31
  store ptr %i.bi, ptr %i.bb, align 16
  %i.bj = load i64, ptr %i.h, align 16
  %.not = icmp eq i64 %i.bj, 0
  br i1 %.not, label %.preheader, label %_ZN6embree13RawBufferViewD2Ev.exit4

.preheader:                                       ; preds = %_ZN6embree13RawBufferViewD2Ev.exit4, %bb.h
  %.lcssa = phi i64 [ 0, %bb.h ], [ %i.cc, %_ZN6embree13RawBufferViewD2Ev.exit4 ] ; 6 uses
  %i.bk = icmp ult i64 %.lcssa, %i.b
  br i1 %i.bk, label %.lr.ph16.preheader, label %._crit_edge17

.lr.ph16.preheader:                               ; preds = %.preheader
  %i.bl = sub nuw i64 %i.b, %.lcssa
  %xtraiter = and i64 %i.bl, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph16.prol.loopexit, label %.lr.ph16.prol

.lr.ph16.prol:                                    ; preds = %.lr.ph16.preheader
  %i.bm = load ptr, ptr %i.bb, align 16
  %i.bn = getelementptr inbounds nuw [56 x i8], ptr %i.bm, i64 %.lcssa ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bn, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  store i8 1, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 44
  store i32 0, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  store ptr null, ptr %i.br, align 8
  %i.bs = add nuw nsw i64 %.lcssa, 1
  br label %.lr.ph16.prol.loopexit

.lr.ph16.prol.loopexit:                           ; preds = %.lr.ph16.prol, %.lr.ph16.preheader
  %.0.i15.unr = phi i64 [ %.lcssa, %.lr.ph16.preheader ], [ %i.bs, %.lr.ph16.prol ]
  %i.bt = add nsw i64 %i.b, -1
  %i.bu = icmp eq i64 %.lcssa, %i.bt
  br i1 %i.bu, label %._crit_edge17, label %.lr.ph16

_ZN6embree13RawBufferViewD2Ev.exit4:              ; preds = %bb.h, %_ZN6embree13RawBufferViewD2Ev.exit4
  %.027.i13 = phi i64 [ %i.cb, %_ZN6embree13RawBufferViewD2Ev.exit4 ], [ 0, %bb.h ] ; 3 uses
  %i.bv = load ptr, ptr %i.bb, align 16
  %i.bw = getelementptr inbounds nuw [56 x i8], ptr %i.bv, i64 %.027.i13 ; 2 uses
  %i.bx = getelementptr inbounds nuw [56 x i8], ptr %i.bc, i64 %.027.i13 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bw, ptr noundef nonnull align 8 dereferenceable(56) %i.bx, i64 48, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 48 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8
  store ptr %i.ca, ptr %i.by, align 8
  store ptr null, ptr %i.bz, align 8
  %i.cb = add nuw i64 %.027.i13, 1                ; 2 uses
  %i.cc = load i64, ptr %i.h, align 16            ; 2 uses
  %i.cd = icmp ult i64 %i.cb, %i.cc
  br i1 %i.cd, label %_ZN6embree13RawBufferViewD2Ev.exit4, label %.preheader, !llvm.loop !32

._crit_edge17:                                    ; preds = %.lr.ph16.prol.loopexit, %.lr.ph16, %.preheader
  %i.ce = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i, label %_ZN6embree6Device9allocatorINS_10BufferViewIcEELm8EE10deallocateEPS3_m.exit.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge17
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 72
  %i.ch = load ptr, ptr %i.cg, align 8
  tail call void %i.ch(ptr noundef nonnull align 8 dereferenceable(1384) %i.ce, ptr noundef %i.bc), !inline_history !33
  br label %_ZN6embree6Device9allocatorINS_10BufferViewIcEELm8EE10deallocateEPS3_m.exit.i

_ZN6embree6Device9allocatorINS_10BufferViewIcEELm8EE10deallocateEPS3_m.exit.i: ; preds = %bb.i, %._crit_edge17
  store i64 %i.b, ptr %i.h, align 16
  store i64 %.07.i, ptr %i.c, align 8
  br label %_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE15internal_resizeEmm.exit

.lr.ph16:                                         ; preds = %.lr.ph16.prol.loopexit, %.lr.ph16
  %.0.i15 = phi i64 [ %i.cv, %.lr.ph16 ], [ %.0.i15.unr, %.lr.ph16.prol.loopexit ] ; 3 uses
  %i.ci = load ptr, ptr %i.bb, align 16
  %i.cj = getelementptr inbounds nuw [56 x i8], ptr %i.ci, i64 %.0.i15 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cj, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.ck, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  store i8 1, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 44
  store i32 0, ptr %i.cm, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  store ptr null, ptr %i.cn, align 8
  %i.co = load ptr, ptr %i.bb, align 16
  %i.cp = getelementptr inbounds nuw [56 x i8], ptr %i.co, i64 %.0.i15 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cq, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.cr, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 96
  store i8 1, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 100
  store i32 0, ptr %i.ct, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 104
  store ptr null, ptr %i.cu, align 8
  %i.cv = add nuw nsw i64 %.0.i15, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cv, %i.b
  br i1 %exitcond.not.1, label %._crit_edge17, label %.lr.ph16, !llvm.loop !34

_ZN6embree8vector_tINS_10BufferViewIcEENS_6Device9allocatorIS2_Lm8EEEE15internal_resizeEmm.exit: ; preds = %._crit_edge21, %_ZN6embree6Device9allocatorINS_10BufferViewIcEELm8EE10deallocateEPS3_m.exit.i
  tail call void @_ZN6embree8Geometry6updateEv(ptr noundef nonnull align 16 dereferenceable(88) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6embree6Points9setBufferE13RTCBufferTypej9RTCFormatRKNS_3RefINS_6BufferEEEmmj(ptr noundef nonnull align 16 dereferenceable(300) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %5, i64 noundef %6, i32 noundef %7) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::allocator", align 1   ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::allocator", align 1   ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::allocator", align 1   ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::allocator", align 1   ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::allocator", align 1   ; 5 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::allocator", align 1   ; 5 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.std::allocator", align 1   ; 5 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %25 = alloca %"class.std::allocator", align 1   ; 5 uses
  %cond = icmp eq i32 %1, 32
  br i1 %cond, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %4, align 8                ; 2 uses
end_hunk_1
