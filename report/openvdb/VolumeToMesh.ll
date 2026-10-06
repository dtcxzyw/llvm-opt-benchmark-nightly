Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/VolumeToMesh?download=true
inline.NumInlined: 48469
inline.NumDeleted: 15370
loop-unroll.NumCompletelyUnrolled: 216
loop-unroll.NumRuntimeUnrolled: 267
loop-unroll.NumUnrolled: 734
begin_hunk_0_@_ZNK7openvdb5v13_05tools23volume_to_mesh_internal14SubdivideQuadsclERKN3tbb6detail2d113blocked_rangeImEE:bb.a

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %.noexc135
  call void @_ZdaPv(ptr noundef nonnull %i.ae) #28
  br label %_ZN7openvdb5v13_05tools11PolygonPool10resetQuadsEm.exit

_ZN7openvdb5v13_05tools11PolygonPool10resetQuadsEm.exit: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i, %.noexc135
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !463
  %i.ah = shl nuw nsw i64 %i.u, 2
  %i.ai = add i64 %i.ag, %i.ah                    ; 2 uses
  store i64 %i.ai, ptr %i.h, align 8, !tbaa !3077
  %i.aj = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ai, i64 12) ; 2 uses
  %i.ak = extractvalue { i64, i1 } %i.aj, 1
  %i.al = extractvalue { i64, i1 } %i.aj, 0
  %i.am = select i1 %i.ak, i64 -1, i64 %i.al
  %i.an = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.am) #31
          to label %.noexc139 unwind label %bb.d

.noexc139:                                        ; preds = %_ZN7openvdb5v13_05tools11PolygonPool10resetQuadsEm.exit
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !472 ; 2 uses
  store ptr %i.an, ptr %i.i, align 8, !tbaa !472
  %.not.i.i.i136 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i136, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IjEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit.i, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IjEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i.i

_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IjEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i.i: ; preds = %.noexc139
  call void @_ZdaPv(ptr noundef nonnull %i.ao) #28
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IjEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit.i

_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IjEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit.i: ; preds = %_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IjEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i.i, %.noexc139
  %i.ap = load i64, ptr %i.h, align 8, !tbaa !3077
  %i.aq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ap) #31
          to label %.noexc140 unwind label %bb.d

.noexc140:                                        ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IjEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit.i
  %i.ar = load ptr, ptr %i.j, align 8, !tbaa !624 ; 2 uses
  store ptr %i.aq, ptr %i.j, align 8, !tbaa !624
  %.not.i.i1.i137 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i1.i137, label %_ZN7openvdb5v13_05tools11PolygonPool14resetTrianglesEm.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i138

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i138: ; preds = %.noexc140
  call void @_ZdaPv(ptr noundef nonnull %i.ar) #28
  br label %_ZN7openvdb5v13_05tools11PolygonPool14resetTrianglesEm.exit

_ZN7openvdb5v13_05tools11PolygonPool14resetTrianglesEm.exit: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i138, %.noexc140
  %i.as = load i64, ptr %i.q, align 8, !tbaa !463 ; 2 uses
  %.not189 = icmp eq i64 %i.as, 0
  br i1 %.not189, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_05tools11PolygonPool14resetTrianglesEm.exit
  %i.at = load ptr, ptr %i.k, align 8, !tbaa !772
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.0112185
  %i.av = load i32, ptr %i.au, align 4, !tbaa !381
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  br label %bb.e

._crit_edge:                                      ; preds = %bb.g, %_ZN7openvdb5v13_05tools11PolygonPool14resetTrianglesEm.exit
  %.0123.lcssa = phi i64 [ 0, %_ZN7openvdb5v13_05tools11PolygonPool14resetTrianglesEm.exit ], [ %.1124, %bb.g ]
  %i.az = load i64, ptr %i.af, align 8, !tbaa !463 ; 2 uses
  %.not190 = icmp eq i64 %i.az, 0
  br i1 %.not190, label %._crit_edge179, label %.lr.ph178

.lr.ph178:                                        ; preds = %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  br label %bb.h

bb.d:                                             ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IjEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit.i, %_ZN7openvdb5v13_05tools11PolygonPool10resetQuadsEm.exit, %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec4IjEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit.i, %bb.c
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %.0120174 = phi i64 [ %i.aw, %.lr.ph ], [ %.1121, %bb.g ] ; 4 uses
  %.0122173 = phi i64 [ 0, %.lr.ph ], [ %i.eg, %bb.g ] ; 3 uses
  %.0123172 = phi i64 [ 0, %.lr.ph ], [ %.1124, %bb.g ] ; 7 uses
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !624
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.0122173
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !403 ; 5 uses
  %i.bg = and i8 %i.bf, 4
  %.not129 = icmp eq i8 %i.bg, 0
  br i1 %.not129, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = load i64, ptr %i.l, align 8, !tbaa !773
  %i.bi = add i64 %i.bh, %.0120174
  %i.bj = trunc i64 %i.bi to i32                  ; 4 uses
  %i.bk = load ptr, ptr %i.ay, align 8, !tbaa !471
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %.0122173 ; 7 uses
  %i.bm = load ptr, ptr %i.m, align 8, !tbaa !769 ; 4 uses
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !381
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 3 uses
  %i.bp = zext i32 %i.bn to i64
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %i.bp ; 2 uses
  %i.br = load i32, ptr %i.bo, align 4, !tbaa !381
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %i.bs ; 2 uses
  %.sroa.0.0.copyload4.i = load <2 x float>, ptr %i.bq, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.6.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !761
  %i.bw = fadd float %.sroa.6.0.copyload.i, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 3 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !381
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !761
  %i.cd = fadd float %i.bw, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bl, i64 12 ; 3 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !381
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %i.cg ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !761
  %i.ck = fadd float %i.cd, %i.cj
  %i.cl = load <2 x float>, ptr %i.bt, align 4, !tbaa !761
  %i.cm = fadd <2 x float> %.sroa.0.0.copyload4.i, %i.cl
  %i.cn = load <2 x float>, ptr %i.ca, align 4, !tbaa !761
  %i.co = fadd <2 x float> %i.cm, %i.cn
  %i.cp = load <2 x float>, ptr %i.ch, align 4, !tbaa !761
  %i.cq = fadd <2 x float> %i.co, %i.cp
  %i.cr = fmul <2 x float> %i.cq, splat (float 2.500000e-01)
  %i.cs = fmul float %i.ck, 2.500000e-01
  %i.ct = load ptr, ptr %i.n, align 8, !tbaa !770
  %i.cu = getelementptr inbounds nuw [12 x i8], ptr %i.ct, i64 %.0120174 ; 2 uses
  store <2 x float> %i.cr, ptr %i.cu, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store float %i.cs, ptr %.sroa.5.0..sroa_idx, align 4
  %i.cv = add i64 %.0120174, 1
  %i.cw = load ptr, ptr %i.i, align 8, !tbaa !472
  %i.cx = getelementptr inbounds nuw [12 x i8], ptr %i.cw, i64 %.0123172 ; 3 uses
  %i.cy = load i32, ptr %i.bl, align 4, !tbaa !381
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !381
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store i32 %i.bj, ptr %i.cz, align 4, !tbaa !381
  %i.da = load i32, ptr %i.ce, align 4, !tbaa !381
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i32 %i.da, ptr %i.db, align 4, !tbaa !381
  %i.dc = load ptr, ptr %i.j, align 8, !tbaa !624
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.0123172
  store i8 %i.bf, ptr %i.dd, align 1, !tbaa !403
  %i.de = add i64 %.0123172, 1                    ; 2 uses
  %i.df = load ptr, ptr %i.i, align 8, !tbaa !472
  %i.dg = getelementptr inbounds nuw [12 x i8], ptr %i.df, i64 %i.de ; 3 uses
  %i.dh = load i32, ptr %i.bl, align 4, !tbaa !381
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !381
  %i.di = load i32, ptr %i.bo, align 4, !tbaa !381
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !381
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store i32 %i.bj, ptr %i.dk, align 4, !tbaa !381
  %i.dl = load ptr, ptr %i.j, align 8, !tbaa !624
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.de
  store i8 %i.bf, ptr %i.dm, align 1, !tbaa !403
  %i.dn = add i64 %.0123172, 2                    ; 2 uses
  %i.do = load ptr, ptr %i.i, align 8, !tbaa !472
  %i.dp = getelementptr inbounds nuw [12 x i8], ptr %i.do, i64 %i.dn ; 3 uses
  %i.dq = load i32, ptr %i.bo, align 4, !tbaa !381
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !381
  %i.dr = load i32, ptr %i.bx, align 4, !tbaa !381
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !381
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store i32 %i.bj, ptr %i.dt, align 4, !tbaa !381
  %i.du = load ptr, ptr %i.j, align 8, !tbaa !624
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dn
  store i8 %i.bf, ptr %i.dv, align 1, !tbaa !403
  %i.dw = add i64 %.0123172, 3                    ; 2 uses
  %i.dx = load ptr, ptr %i.i, align 8, !tbaa !472
  %i.dy = getelementptr inbounds nuw [12 x i8], ptr %i.dx, i64 %i.dw ; 3 uses
  %i.dz = load i32, ptr %i.bx, align 4, !tbaa !381
  store i32 %i.dz, ptr %i.dy, align 4, !tbaa !381
  %i.ea = load i32, ptr %i.ce, align 4, !tbaa !381
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !381
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i32 %i.bj, ptr %i.ec, align 4, !tbaa !381
  %i.ed = load ptr, ptr %i.j, align 8, !tbaa !624
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.dw
  store i8 %i.bf, ptr %i.ee, align 1, !tbaa !403
  %i.ef = add i64 %.0123172, 4
  store i32 -1, ptr %i.bl, align 4, !tbaa !381
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.1124 = phi i64 [ %i.ef, %bb.f ], [ %.0123172, %bb.e ] ; 2 uses
  %.1121 = phi i64 [ %i.cv, %bb.f ], [ %.0120174, %bb.e ]
  %i.eg = add nuw i64 %.0122173, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.eg, %i.as
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !7827

._crit_edge179:                                   ; preds = %bb.h, %._crit_edge
  %i.eh = load i64, ptr %i.q, align 8, !tbaa !463 ; 2 uses
  %.not191 = icmp eq i64 %i.eh, 0
  br i1 %.not191, label %._crit_edge184, label %.lr.ph183

.lr.ph183:                                        ; preds = %._crit_edge179
  %i.ei = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ej = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph178, %bb.h
  %.0111176 = phi i64 [ 0, %.lr.ph178 ], [ %i.eu, %bb.h ] ; 3 uses
  %.2125175 = phi i64 [ %.0123.lcssa, %.lr.ph178 ], [ %i.et, %bb.h ] ; 3 uses
  %i.ek = load ptr, ptr %i.ba, align 8, !tbaa !472
  %i.el = getelementptr inbounds nuw [12 x i8], ptr %i.ek, i64 %.0111176
  %i.em = load ptr, ptr %i.i, align 8, !tbaa !472
  %i.en = getelementptr inbounds nuw [12 x i8], ptr %i.em, i64 %.2125175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.en, ptr noundef nonnull align 4 dereferenceable(12) %i.el, i64 12, i1 false)
  %i.eo = load ptr, ptr %i.bb, align 8, !tbaa !624
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.0111176
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !403
  %i.er = load ptr, ptr %i.j, align 8, !tbaa !624
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %.2125175
  store i8 %i.eq, ptr %i.es, align 1, !tbaa !403
  %i.et = add i64 %.2125175, 1
  %i.eu = add nuw i64 %.0111176, 1                ; 2 uses
  %exitcond192.not = icmp eq i64 %i.eu, %i.az
  br i1 %exitcond192.not, label %._crit_edge179, label %bb.h, !llvm.loop !7828

._crit_edge184:                                   ; preds = %bb.k, %._crit_edge179
  invoke void @_ZN7openvdb5v13_05tools11PolygonPool4copyERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.l unwind label %bb.m

bb.i:                                             ; preds = %.lr.ph183, %bb.k
  %.0181 = phi i64 [ 0, %.lr.ph183 ], [ %i.ff, %bb.k ] ; 3 uses
  %.0110180.a = phi i64 [ 0, %.lr.ph183 ], [ %.1, %bb.k ] ; 4 uses
  %3 = load ptr, ptr %i.ei, align 8, !tbaa !471
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.0181 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !381
  %.not127 = icmp eq i32 %i.ew, -1
  br i1 %.not127, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ex = load ptr, ptr %i.f, align 8, !tbaa !471
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.ex, i64 %.0110180.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ey, ptr noundef nonnull align 4 dereferenceable(16) %i.ev, i64 16, i1 false)
  %i.ez = load ptr, ptr %i.ej, align 8, !tbaa !624
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.0181
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !403
  %i.fc = load ptr, ptr %i.g, align 8, !tbaa !624
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %.0110180.a
  store i8 %i.fb, ptr %i.fd, align 1, !tbaa !403
  %i.fe = add i64 %.0110180.a, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1 = phi i64 [ %i.fe, %bb.j ], [ %.0110180.a, %bb.i ]
  %i.ff = add nuw i64 %.0181, 1                   ; 2 uses
  %exitcond193.not = icmp eq i64 %i.ff, %i.eh
  br i1 %exitcond193.not, label %._crit_edge184, label %bb.i, !llvm.loop !7829

bb.l:                                             ; preds = %._crit_edge184
  %i.fg = load ptr, ptr %i.j, align 8, !tbaa !624 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.fg) #28
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i, %bb.l
  %i.fh = load ptr, ptr %i.g, align 8, !tbaa !624 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.fh, null
  br i1 %.not.i1.i, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit3.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i2.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i2.i: ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.fh) #28
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit3.i

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit3.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i2.i, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i
  %i.fi = load ptr, ptr %i.i, align 8, !tbaa !472 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.fi, null
  br i1 %.not.i4.i, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IjEESt14default_deleteIS5_EED2Ev.exit.i, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IjEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i

_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IjEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i: ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit3.i
  call void @_ZdaPv(ptr noundef nonnull %i.fi) #28
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IjEESt14default_deleteIS5_EED2Ev.exit.i

_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IjEESt14default_deleteIS5_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IjEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit3.i
  %i.fj = load ptr, ptr %i.f, align 8, !tbaa !471 ; 2 uses
  %.not.i5.i = icmp eq ptr %i.fj, null
  br i1 %.not.i5.i, label %_ZN7openvdb5v13_05tools11PolygonPoolD2Ev.exit, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec4IjEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i

_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec4IjEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IjEESt14default_deleteIS5_EED2Ev.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.fj) #28
  br label %_ZN7openvdb5v13_05tools11PolygonPoolD2Ev.exit

_ZN7openvdb5v13_05tools11PolygonPoolD2Ev.exit:    ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IjEESt14default_deleteIS5_EED2Ev.exit.i, %_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec4IjEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.o

bb.m:                                             ; preds = %._crit_edge184
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.d
  %.pn130.pn.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.d ], [ %i.fk, %bb.m ]
  call void @_ZN7openvdb5v13_05tools11PolygonPoolD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %.pn130.pn.pn.pn

bb.o:                                             ; preds = %_ZN7openvdb5v13_05tools11PolygonPoolD2Ev.exit, %bb.b
  %i.fl = add nuw i64 %.0112185, 1                ; 2 uses
  %exitcond194.not = icmp eq i64 %i.fl, %i.c
  br i1 %exitcond194.not, label %._crit_edge188, label %bb.b, !llvm.loop !7830
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools11PolygonPool4copyERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !463    ; 3 uses
  store i64 %i.a, ptr %0, align 8, !tbaa !3076
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = icmp ugt i64 %i.a, 1152921504606846975
  %i.d = shl nuw i64 %i.a, 4
  %i.e = select i1 %i.c, i64 -1, i64 %i.d
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #31
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !471  ; 2 uses
  store ptr %i.f, ptr %i.b, align 8, !tbaa !471
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec4IjEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit.i, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec4IjEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i.i

_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec4IjEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i.i: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #28
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec4IjEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit.i

_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec4IjEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit.i: ; preds = %_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec4IjEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i.i, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.i = load i64, ptr %0, align 8, !tbaa !3076
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #31
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !624  ; 2 uses
  store ptr %i.j, ptr %i.h, align 8, !tbaa !624
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZN7openvdb5v13_05tools11PolygonPool10resetQuadsEm.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec4IjEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #28
  br label %_ZN7openvdb5v13_05tools11PolygonPool10resetQuadsEm.exit

_ZN7openvdb5v13_05tools11PolygonPool10resetQuadsEm.exit: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec4IjEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit.i, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !463  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 %i.m, ptr %i.n, align 8, !tbaa !3077
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.p = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.m, i64 12) ; 2 uses
  %i.q = extractvalue { i64, i1 } %i.p, 1
  %i.r = extractvalue { i64, i1 } %i.p, 0
  %i.s = select i1 %i.q, i64 -1, i64 %i.r
  %i.t = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.s) #31
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !472  ; 2 uses
  store ptr %i.t, ptr %i.o, align 8, !tbaa !472
  %.not.i.i.i19 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i19, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IjEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit.i, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IjEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i.i

_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IjEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i.i: ; preds = %_ZN7openvdb5v13_05tools11PolygonPool10resetQuadsEm.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #28
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IjEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit.i

_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IjEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit.i: ; preds = %_ZNKSt14default_deleteIA_N7openvdb5v13_04math4Vec3IjEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i.i.i, %_ZN7openvdb5v13_05tools11PolygonPool10resetQuadsEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.w = load i64, ptr %i.n, align 8, !tbaa !3077
  %i.x = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.w) #31
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !624  ; 2 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !624
  %.not.i.i1.i20 = icmp eq ptr %i.y, null
  br i1 %.not.i.i1.i20, label %_ZN7openvdb5v13_05tools11PolygonPool14resetTrianglesEm.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i21

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i21: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IjEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.y) #28
  br label %_ZN7openvdb5v13_05tools11PolygonPool14resetTrianglesEm.exit

_ZN7openvdb5v13_05tools11PolygonPool14resetTrianglesEm.exit: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math4Vec3IjEESt14default_deleteIS5_EE5resetIPS4_vEEvT_.exit.i, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i21
  %i.z = load i64, ptr %0, align 8, !tbaa !3076
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7openvdb5v13_05tools11PolygonPool14resetTrianglesEm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.b

.preheader:                                       ; preds = %bb.b, %_ZN7openvdb5v13_05tools11PolygonPool14resetTrianglesEm.exit
  %i.ac = load i64, ptr %i.n, align 8, !tbaa !3077
  %.not25 = icmp eq i64 %i.ac, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph24

.lr.ph24:                                         ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.01822 = phi i64 [ 0, %.lr.ph ], [ %i.ao, %bb.b ] ; 5 uses
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !471
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %.01822
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !471
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %.01822
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ai, ptr noundef nonnull align 4 dereferenceable(16) %i.ag, i64 16, i1 false)
  %i.aj = load ptr, ptr %i.ab, align 8, !tbaa !624
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.01822
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !403
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !624
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.01822
  store i8 %i.al, ptr %i.an, align 1, !tbaa !403
  %i.ao = add nuw i64 %.01822, 1                  ; 2 uses
  %i.ap = load i64, ptr %0, align 8, !tbaa !3076
  %i.aq = icmp ult i64 %i.ao, %i.ap
  br i1 %i.aq, label %bb.b, label %.preheader, !llvm.loop !7831

._crit_edge:                                      ; preds = %bb.c, %.preheader
  ret void

bb.c:                                             ; preds = %.lr.ph24, %bb.c
  %.023 = phi i64 [ 0, %.lr.ph24 ], [ %i.ba, %bb.c ] ; 5 uses
  %i.ar = load ptr, ptr %i.ad, align 8, !tbaa !472
  %i.as = getelementptr inbounds nuw [12 x i8], ptr %i.ar, i64 %.023
  %i.at = load ptr, ptr %i.o, align 8, !tbaa !472
  %i.au = getelementptr inbounds nuw [12 x i8], ptr %i.at, i64 %.023
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.au, ptr noundef nonnull align 4 dereferenceable(12) %i.as, i64 12, i1 false)
  %i.av = load ptr, ptr %i.ae, align 8, !tbaa !624
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %.023
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !403
  %i.ay = load ptr, ptr %i.v, align 8, !tbaa !624
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.023
  store i8 %i.ax, ptr %i.az, align 1, !tbaa !403
  %i.ba = add nuw i64 %.023, 1                    ; 2 uses
  %i.bb = load i64, ptr %i.n, align 8, !tbaa !3077
  %i.bc = icmp ult i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.c, label %._crit_edge, !llvm.loop !7832
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23volume_to_mesh_internal9CopyArrayINS6_4math4Vec3IfEEEEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !603
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !604
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !403
end_hunk_0
begin_hunk_1_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23volume_to_mesh_internal19ReviseSeamLineFlagsEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  store i64 %i.ar, ptr %i.ae, align 8, !tbaa !458
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !459
  store i64 %i.at, ptr %i.ab, align 8, !tbaa !459
  %i.au = load i8, ptr %i.y, align 1, !tbaa !403
  %i.av = add i8 %i.au, 1                         ; 3 uses
  store i8 %i.av, ptr %i.y, align 1, !tbaa !403
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ak
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !403
  %i.ax = add nuw nsw i8 %i.v, 1                  ; 3 uses
  store i8 %i.ax, ptr %i.l, align 2, !tbaa !1021
  %exitcond.not.i = icmp eq i8 %i.ax, 8
  br i1 %exitcond.not.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread, label %bb.f, !llvm.loop !44

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i, %bb.f, %bb.e
  %.pr = phi i8 [ %.promoted.i, %bb.e ], [ %i.v, %bb.f ], [ %i.v, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i ] ; 2 uses
  %i.ay = load ptr, ptr %i.o, align 8, !tbaa !3112
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load atomic i8, ptr %i.az monotonic, align 1, !range !494, !noundef !495
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.h, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread: ; preds = %bb.g
  %i.bc = load ptr, ptr %i.o, align 8, !tbaa !3112
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load atomic i8, ptr %i.bd monotonic, align 1, !range !494, !noundef !495
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %.thread, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge

.thread:                                          ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread
  %i.bg = add i8 %i.s, 1
  store i8 %i.bg, ptr %i.h, align 4, !tbaa !852
  br label %.noexc

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit
  %.pre23 = load i8, ptr %5, align 8, !tbaa !1022
  %.pre25 = zext i8 %.pre23 to i64
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

bb.h:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit
  %i.bh = add i8 %i.s, 1                          ; 2 uses
  store i8 %i.bh, ptr %i.h, align 4, !tbaa !852
  %i.bi = icmp ugt i8 %.pr, 1
  br i1 %i.bi, label %.noexc, label %bb.i

.noexc:                                           ; preds = %.thread, %bb.h
  %i.bj = load i8, ptr %i.k, align 1, !tbaa !1023
  %i.bk = zext i8 %i.bj to i64                    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !403
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !839
  %i.bn = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !7842 ; 10 uses
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.bk
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bp, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools23volume_to_mesh_internal19ReviseSeamLineFlagsEKNS1_16auto_partitionerEEE, i64 16), ptr %i.bn, align 64, !tbaa !383
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false), !tbaa.struct !1010
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !3110
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 104 ; 2 uses
  store ptr null, ptr %i.bs, align 8, !tbaa !3112
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 112
  %i.bu = load i64, ptr %i.q, align 16, !tbaa !853
  %i.bv = lshr i64 %i.bu, 1                       ; 2 uses
  store i64 %i.bv, ptr %i.q, align 16, !tbaa !853
  store i64 %i.bv, ptr %i.bt, align 16, !tbaa !853
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 120
  store i32 2, ptr %i.bw, align 8, !tbaa !851
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 124
  %i.by = load i8, ptr %i.r, align 4, !tbaa !852
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bn, i64 128
  %i.ca = load i64, ptr %4, align 8, !tbaa !854
  store i64 %i.ca, ptr %i.bz, align 64, !tbaa !854
  %i.cb = sub i8 %i.by, %i.bm
  store i8 %i.cb, ptr %i.bx, align 4, !tbaa !852
  %i.cc = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !7842 ; 6 uses
  %i.cd = load ptr, ptr %i.o, align 8, !tbaa !866
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !858
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i32 2, ptr %i.ce, align 8, !tbaa !859
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cg = load i64, ptr %4, align 8, !tbaa !854
  store i64 %i.cg, ptr %i.cf, align 8, !tbaa !854
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store i8 0, ptr %i.ch, align 8, !tbaa !868
  store ptr %i.cc, ptr %i.o, align 8, !tbaa !3112
  store ptr %i.cc, ptr %i.bs, align 8, !tbaa !3112
  %i.ci = load ptr, ptr %3, align 8, !tbaa !869
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(136) %i.bn, ptr noundef nonnull align 8 dereferenceable(128) %i.ci), !inline_history !7842
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cj = load i8, ptr %i.l, align 2, !tbaa !1021
  %i.ck = add i8 %i.cj, -1                        ; 2 uses
  store i8 %i.ck, ptr %i.l, align 2, !tbaa !1021
  %i.cl = load i8, ptr %i.k, align 1, !tbaa !1023
  %i.cm = add i8 %i.cl, 1
  %i.cn = and i8 %i.cm, 7
  store i8 %i.cn, ptr %i.k, align 1, !tbaa !1023
  br label %thread-pre-split22

bb.i:                                             ; preds = %bb.h
  %i.co = load i8, ptr %5, align 8, !tbaa !1022
  %i.cp = zext i8 %i.co to i64                    ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !403
  %i.cs = icmp ult i8 %i.cr, %i.bh
  br i1 %i.cs, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit: ; preds = %bb.i
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.cp ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !459
  %i.cw = load i64, ptr %i.ct, align 8, !tbaa !457
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !458
  %i.cz = sub i64 %i.cw, %i.cy
  %i.da = icmp ult i64 %i.cv, %i.cz
  br i1 %i.da, label %thread-pre-split22, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre25, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.cp, %bb.i ], [ %i.cp, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.pre-phi
  call void @_ZNK7openvdb5v13_05tools23volume_to_mesh_internal19ReviseSeamLineFlagsclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.db)
  %i.dc = load i8, ptr %i.l, align 2, !tbaa !1021
  %i.dd = add i8 %i.dc, -1                        ; 2 uses
  store i8 %i.dd, ptr %i.l, align 2, !tbaa !1021
  %i.de = load i8, ptr %5, align 8, !tbaa !1022
  %i.df = add i8 %i.de, 7
  %i.dg = and i8 %i.df, 7
  store i8 %i.dg, ptr %5, align 8, !tbaa !1022
  br label %thread-pre-split22

thread-pre-split22:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread, %.noexc
  %i.dh = phi i8 [ %i.ck, %.noexc ], [ %i.dd, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread ], [ %.pr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.di = icmp eq i8 %i.dh, 0
  br i1 %i.di, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit21, label %bb.j

bb.j:                                             ; preds = %thread-pre-split22
  %i.dj = load ptr, ptr %3, align 8, !tbaa !869   ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 15
  %i.dl = load atomic i8, ptr %i.dk monotonic, align 1
  %i.dm = icmp eq i8 %i.dl, -1
  br i1 %i.dm, label %bb.k, label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

bb.k:                                             ; preds = %bb.j
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !403
  br label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i: ; preds = %bb.k, %bb.j
  %.0.i.i = phi ptr [ %i.do, %bb.k ], [ %i.dj, %bb.j ]
  %i.dp = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.dp, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit21, label %thread-pre-split, !llvm.loop !7843

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit21: ; preds = %thread-pre-split22, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.l

bb.l:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit21, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_05tools23volume_to_mesh_internal19ReviseSeamLineFlagsclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !458  ; 2 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !457    ; 2 uses
  %i.d = icmp ult i64 %i.b, %i.c
  br i1 %i.d, label %.lr.ph54, label %._crit_edge55

.lr.ph54:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

._crit_edge55:                                    ; preds = %._crit_edge51, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph54, %._crit_edge51
  %.03652 = phi i64 [ %i.b, %.lr.ph54 ], [ %i.ar, %._crit_edge51 ] ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !621
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !462
  %i.h = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %.03652 ; 6 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !463  ; 2 uses
  %.not56 = icmp eq i64 %i.i, 0
  br i1 %.not56, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %bb.c

._crit_edge:                                      ; preds = %.critedge, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !463  ; 2 uses
  %.not57 = icmp eq i64 %i.m, 0
  br i1 %.not57, label %._crit_edge51, label %.lr.ph50

.lr.ph50:                                         ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  br label %bb.i

bb.c:                                             ; preds = %.lr.ph, %.critedge
  %.03547 = phi i64 [ 0, %.lr.ph ], [ %i.aq, %.critedge ] ; 3 uses
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !624
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.03547 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !403   ; 2 uses
  %i.s = and i8 %i.r, 2
  %.not39 = icmp eq i8 %i.s, 0
  br i1 %.not39, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !471
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.03547 ; 4 uses
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !622  ; 4 uses
  %i.w = load i32, ptr %i.u, align 4, !tbaa !381
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !403
  %.not40 = icmp eq i8 %i.z, 0
  br i1 %.not40, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !381
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !403
  %.not41 = icmp eq i8 %i.ae, 0
  br i1 %.not41, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !381
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !403
  %.not42 = icmp eq i8 %i.aj, 0
  br i1 %.not42, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !381
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !403
  %.not46 = icmp eq i8 %i.ao, 0
  br i1 %.not46, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.ap = and i8 %i.r, -3
  store i8 %i.ap, ptr %i.q, align 1, !tbaa !403
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.h, %bb.d, %bb.e, %bb.f, %bb.c
  %i.aq = add nuw i64 %.03547, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.aq, %i.i
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !7844

._crit_edge51:                                    ; preds = %.critedge44, %._crit_edge
  %i.ar = add nuw i64 %.03652, 1                  ; 2 uses
  %exitcond59.not = icmp eq i64 %i.ar, %i.c
  br i1 %exitcond59.not, label %._crit_edge55, label %bb.b, !llvm.loop !7845

bb.i:                                             ; preds = %.lr.ph50, %.critedge44
  %.048 = phi i64 [ 0, %.lr.ph50 ], [ %i.bn, %.critedge44 ] ; 3 uses
  %2 = load ptr, ptr %i.n, align 8, !tbaa !624
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 %.048 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !403 ; 2 uses
  %i.au = and i8 %i.at, 2
  %.not = icmp eq i8 %i.au, 0
  br i1 %.not, label %.critedge44, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %i.o, align 8, !tbaa !472
  %i.aw = getelementptr inbounds nuw [12 x i8], ptr %i.av, i64 %.048 ; 3 uses
  %i.ax = load ptr, ptr %i.e, align 8, !tbaa !622 ; 3 uses
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !381
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !403
  %.not37 = icmp eq i8 %i.bb, 0
  br i1 %.not37, label %bb.k, label %.critedge44

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !381
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !403
  %.not38 = icmp eq i8 %i.bg, 0
  br i1 %.not38, label %bb.l, label %.critedge44

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !381
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !403
  %.not45 = icmp eq i8 %i.bl, 0
  br i1 %.not45, label %bb.m, label %.critedge44

bb.m:                                             ; preds = %bb.l
  %i.bm = and i8 %i.at, -3
  store i8 %i.bm, ptr %i.as, align 1, !tbaa !403
  br label %.critedge44

.critedge44:                                      ; preds = %bb.l, %bb.m, %bb.j, %bb.k, %bb.i
  %i.bn = add nuw i64 %.048, 1                    ; 2 uses
  %exitcond58.not = icmp eq i64 %i.bn, %i.m
  br i1 %exitcond58.not, label %._crit_edge51, label %bb.i, !llvm.loop !7846
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeIjLj3EEELj4EEELj5EEEEEE19releaseAllAccessorsEv(ptr noundef nonnull align 8 dereferenceable(1232) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr null, ptr %i.a, align 8, !tbaa !2918
  %i.d = call noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISH_EENSI_13tbb_allocatorISt4pairIKSH_bEEEE14internal_eraseISH_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load atomic ptr, ptr %i.f monotonic, align 8, !noalias !7853 ; 2 uses
  %i.h = icmp ugt ptr %i.g, inttoptr (i64 63 to ptr)
  br i1 %i.h, label %.lr.ph, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %bb.e
  %i.k = phi ptr [ %storemerge.i.i.i, %bb.e ], [ %i.e, %.preheader.i.i.preheader ]
  %.010.in.i.i.i = phi i64 [ %.010.i.i.i, %bb.e ], [ 0, %.preheader.i.i.preheader ] ; 2 uses
  %.010.i.i.i = add i64 %.010.in.i.i.i, 1         ; 6 uses
  %i.l = load atomic i64, ptr %i.i monotonic, align 8, !noalias !7853
  %.not.i.i.i = icmp ugt i64 %.010.i.i.i, %i.l
  br i1 %.not.i.i.i, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.preheader.i.i
  %i.m = add i64 %.010.in.i.i.i, -1
  %i.n = and i64 %.010.i.i.i, %i.m
  %.not11.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not11.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.p = or i64 %.010.i.i.i, 1
  %i.q = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true) ; 2 uses
  %i.r = xor i64 %i.q, 63
  %i.s = lshr exact i64 -9223372036854775808, %i.q
  %i.t = and i64 %i.s, -2
  %i.u = sub i64 %.010.i.i.i, %i.t
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.r
  %i.w = load atomic ptr, ptr %i.v acquire, align 8, !noalias !7853
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.u
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge.i.i.i = phi ptr [ %i.o, %bb.c ], [ %i.x, %bb.d ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 8
  %i.z = load atomic ptr, ptr %i.y monotonic, align 8, !noalias !7853 ; 2 uses
  %i.aa = icmp ugt ptr %i.z, inttoptr (i64 63 to ptr)
  br i1 %i.aa, label %.lr.ph, label %.preheader.i.i

.lr.ph:                                           ; preds = %bb.e, %bb.a
  %.sroa.636.1 = phi i64 [ 0, %bb.a ], [ %.010.i.i.i, %bb.e ]
  %.sroa.1638.2 = phi ptr [ %i.g, %bb.a ], [ %i.z, %bb.e ]
  %.sroa.1037.2 = phi ptr [ %i.e, %bb.a ], [ %storemerge.i.i.i, %bb.e ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %_ZN3tbb6detail2d217hash_map_iteratorINS1_19concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS6_4TreeINS6_8RootNodeINS6_12InternalNodeINSA_INS6_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEEESP_EppEv.exit.outer

._crit_edge:                                      ; preds = %.preheader.i.i, %.preheader41
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ae = load atomic i64, ptr %i.ad monotonic, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96
  store atomic i64 0, ptr %i.af monotonic, align 8
  %i.ag = or i64 %i.ae, 1
  %i.ah = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ag, i1 true)
  %i.ai = xor i64 %i.ah, 63
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.f

bb.f:                                             ; preds = %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseINS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE14delete_segmentEm.exit.i, %._crit_edge
  %.019.i = phi i64 [ %i.ai, %._crit_edge ], [ %i.aq, %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseINS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE14delete_segmentEm.exit.i ] ; 6 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.019.i ; 3 uses
  %i.al = load atomic ptr, ptr %i.ak monotonic, align 8
  %i.am = call i64 @llvm.umax.i64(i64 %.019.i, i64 1)
  br label %bb.j

bb.g:                                             ; preds = %._crit_edge.i
  %i.an = load atomic ptr, ptr %i.ak monotonic, align 8
  %i.ao = icmp ult i64 %.019.i, 8
  %i.ap = icmp ne i64 %.019.i, 1
  %.not.i.i = and i1 %i.ao, %i.ap
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef %i.an)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not18.i.i = icmp eq i64 %.019.i, 0
  br i1 %.not18.i.i, label %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISH_EENSI_13tbb_allocatorISt4pairIKSH_bEEEE5clearEv.exit, label %_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseINS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE14delete_segmentEm.exit.i

_ZN3tbb6detail2d213hash_map_baseINS0_2d113tbb_allocatorISt4pairIKPN7openvdb5v13_04tree17ValueAccessorBaseINS8_4TreeINS8_8RootNodeINS8_12InternalNodeINSC_INS8_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EEEbEEENS3_13spin_rw_mutexEE14delete_segmentEm.exit.i: ; preds = %bb.i
  store atomic ptr null, ptr %i.ak monotonic, align 8
  %i.aq = add nsw i64 %.019.i, -1
  br label %bb.f, !llvm.loop !21

bb.j:                                             ; preds = %._crit_edge.i, %bb.f
  %.01821.i = phi i64 [ 0, %bb.f ], [ %i.av, %._crit_edge.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %.01821.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  %i.at = load atomic ptr, ptr %i.as monotonic, align 8 ; 2 uses
  %i.au = icmp ugt ptr %i.at, inttoptr (i64 63 to ptr)
  br i1 %i.au, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.j
  %i.av = add i64 %.01821.i, 1                    ; 2 uses
  %.018.highbits.i = lshr i64 %i.av, %i.am
  %i.aw = icmp eq i64 %.018.highbits.i, 0
  br i1 %i.aw, label %bb.j, label %bb.g, !llvm.loop !22

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.020.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %i.at, %bb.j ] ; 2 uses
  %i.ax = load ptr, ptr %.020.i, align 8, !tbaa !719
  store atomic ptr %i.ax, ptr %i.as monotonic, align 8
  call void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef nonnull %.020.i)
  %i.ay = load atomic ptr, ptr %i.as monotonic, align 8 ; 2 uses
  %i.az = icmp ugt ptr %i.ay, inttoptr (i64 63 to ptr)
  br i1 %i.az, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !23

_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISH_EENSI_13tbb_allocatorISt4pairIKSH_bEEEE5clearEv.exit: ; preds = %bb.i
  store atomic i64 1, ptr %i.ad monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store ptr null, ptr %i.b, align 8, !tbaa !2918
  %i.ba = call noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISH_EENSI_13tbb_allocatorISt4pairIKSH_bEEEE14internal_eraseISH_EEbRKT_(ptr noundef nonnull align 8 dereferenceable(570) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.bd = load atomic ptr, ptr %i.bc monotonic, align 8, !noalias !7854 ; 2 uses
  %i.be = icmp ugt ptr %i.bd, inttoptr (i64 63 to ptr)
  br i1 %i.be, label %.lr.ph50, label %.preheader.i.i1.preheader

.preheader.i.i1.preheader:                        ; preds = %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISH_EENSI_13tbb_allocatorISt4pairIKSH_bEEEE5clearEv.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 712
  br label %.preheader.i.i1

.preheader.i.i1:                                  ; preds = %.preheader.i.i1.preheader, %bb.n
  %i.bh = phi ptr [ %storemerge.i.i.i6, %bb.n ], [ %i.bb, %.preheader.i.i1.preheader ]
  %.010.in.i.i.i2 = phi i64 [ %.010.i.i.i3, %bb.n ], [ 0, %.preheader.i.i1.preheader ] ; 2 uses
  %.010.i.i.i3 = add i64 %.010.in.i.i.i2, 1       ; 6 uses
  %i.bi = load atomic i64, ptr %i.bf monotonic, align 8, !noalias !7854
  %.not.i.i.i4 = icmp ugt i64 %.010.i.i.i3, %i.bi
  br i1 %.not.i.i.i4, label %._crit_edge51, label %bb.k

bb.k:                                             ; preds = %.preheader.i.i1
  %i.bj = add i64 %.010.in.i.i.i2, -1
  %i.bk = and i64 %.010.i.i.i3, %i.bj
  %.not11.i.i.i5 = icmp eq i64 %i.bk, 0
  br i1 %.not11.i.i.i5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bm = or i64 %.010.i.i.i3, 1
  %i.bn = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bm, i1 true) ; 2 uses
  %i.bo = xor i64 %i.bn, 63
  %i.bp = lshr exact i64 -9223372036854775808, %i.bn
  %i.bq = and i64 %i.bp, -2
  %i.br = sub i64 %.010.i.i.i3, %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bo
  %i.bt = load atomic ptr, ptr %i.bs acquire, align 8, !noalias !7854
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.br
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %storemerge.i.i.i6 = phi ptr [ %i.bl, %bb.l ], [ %i.bu, %bb.m ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i6, i64 8
  %i.bw = load atomic ptr, ptr %i.bv monotonic, align 8, !noalias !7854 ; 2 uses
  %i.bx = icmp ugt ptr %i.bw, inttoptr (i64 63 to ptr)
  br i1 %i.bx, label %.lr.ph50, label %.preheader.i.i1

.lr.ph50:                                         ; preds = %bb.n, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISH_EENSI_13tbb_allocatorISt4pairIKSH_bEEEE5clearEv.exit
  %.sroa.10.2 = phi ptr [ %i.bb, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISH_EENSI_13tbb_allocatorISt4pairIKSH_bEEEE5clearEv.exit ], [ %storemerge.i.i.i6, %bb.n ]
  %.sroa.16.2 = phi ptr [ %i.bd, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISH_EENSI_13tbb_allocatorISt4pairIKSH_bEEEE5clearEv.exit ], [ %i.bw, %bb.n ]
  %.sroa.6.1 = phi i64 [ 0, %_ZN3tbb6detail2d219concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS5_4TreeINS5_8RootNodeINS5_12InternalNodeINS9_INS5_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISH_EENSI_13tbb_allocatorISt4pairIKSH_bEEEE5clearEv.exit ], [ %.010.i.i.i3, %bb.n ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 712
  br label %_ZN3tbb6detail2d217hash_map_iteratorINS1_19concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseIKNS6_4TreeINS6_8RootNodeINS6_12InternalNodeINSA_INS6_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISJ_EENSK_13tbb_allocatorISt4pairIKSJ_bEEEEESQ_EppEv.exit.outer

_ZN3tbb6detail2d217hash_map_iteratorINS1_19concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS6_4TreeINS6_8RootNodeINS6_12InternalNodeINSA_INS6_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEEESP_EppEv.exit.outer: ; preds = %bb.r, %.lr.ph
  %.sroa.1037.045.ph = phi ptr [ %.sroa.1037.2, %.lr.ph ], [ %storemerge.i.i, %bb.r ]
  %.sroa.1638.044.ph = phi ptr [ %.sroa.1638.2, %.lr.ph ], [ %i.cu, %bb.r ]
  %.sroa.636.043.ph = phi i64 [ %.sroa.636.1, %.lr.ph ], [ %.010.i.i, %bb.r ]
  br label %_ZN3tbb6detail2d217hash_map_iteratorINS1_19concurrent_hash_mapIPN7openvdb5v13_04tree17ValueAccessorBaseINS6_4TreeINS6_8RootNodeINS6_12InternalNodeINSA_INS6_8LeafNodeIjLj3EEELj4EEELj5EEEEEEELb1EEEbNS0_2d116tbb_hash_compareISI_EENSJ_13tbb_allocatorISt4pairIKSI_bEEEEESP_EppEv.exit

end_hunk_1
