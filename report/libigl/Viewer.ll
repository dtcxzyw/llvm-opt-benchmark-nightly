Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/Viewer?download=true
inline.NumInlined: 3838
inline.NumDeleted: 1144
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_ZN3igl6opengl4glfw6Viewer11launch_initEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii:bb.a
  %i.cp = sitofp <2 x i32> %i.ce to <2 x double>
  %i.cq = fmul <2 x double> %i.cm, %i.cp
  %i.cr = fptosi <2 x double> %i.cq to <2 x i32>  ; 5 uses
  %i.cs = load ptr, ptr @_ZL8__viewer, align 8, !tbaa !70 ; 9 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !66
  %i.cw = load ptr, ptr %i.ct, align 8, !tbaa !67 ; 2 uses
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = icmp eq i64 %i.cz, 544
  br i1 %i.da, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.db = sitofp <2 x i32> %i.cr to <2 x float>
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 80
  %i.dd = load i64, ptr %i.dc, align 16, !tbaa !68
  %sext.i.i.i = shl i64 %i.dd, 32
  %i.de = ashr exact i64 %sext.i.i.i, 32
  %i.df = getelementptr inbounds nuw [544 x i8], ptr %i.cw, i64 %i.de ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 208
  store <2 x float> zeroinitializer, ptr %i.dg, align 16
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.df, i64 216
  store <2 x float> %i.db, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cs, i64 96 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cs, i64 104 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !14
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !18 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dj, %i.dk
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.s
  %i.dl = extractelement <2 x i32> %i.cr, i64 0
  %i.dm = extractelement <2 x i32> %i.cr, i64 1
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.s
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cs, i64 456
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !74
  %.not.i.i.not.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i.not.i.i, label %_ZL16glfw_window_sizeP10GLFWwindowii.exit, label %_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEiiEEclES4_ii.exit.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.dp = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %i.dk, %.lr.ph.i.i.preheader ]
  %i.dq = phi i64 [ %i.dx, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ]
  %.014.i.i = phi i32 [ %i.dw, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ]
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !19 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !21
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 88
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(48) %i.ds, i32 noundef %i.dl, i32 noundef %i.dm), !inline_history !75
  %i.dw = add i32 %.014.i.i, 1                    ; 2 uses
  %i.dx = zext i32 %i.dw to i64                   ; 2 uses
  %i.dy = load ptr, ptr %i.di, align 8, !tbaa !14
  %i.dz = load ptr, ptr %i.dh, align 8, !tbaa !18 ; 2 uses
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = ashr exact i64 %i.ec, 3
  %i.ee = icmp ugt i64 %i.ed, %i.dx
  br i1 %i.ee, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !76

_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEiiEEclES4_ii.exit.i.i: ; preds = %._crit_edge.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cs, i64 440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.eg = extractelement <2 x i32> %i.cr, i64 0
  store i32 %i.eg, ptr %i.a, align 4, !tbaa !65
  %i.eh = extractelement <2 x i32> %i.cr, i64 1
  store i32 %i.eh, ptr %i.b, align 4, !tbaa !65
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cs, i64 464
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !77
  %i.ek = call noundef zeroext i1 %i.ej(ptr noundef nonnull align 8 dereferenceable(32) %i.ef, ptr noundef nonnull align 16 dereferenceable(616) %i.cs, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !inline_history !78 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZL16glfw_window_sizeP10GLFWwindowii.exit

_ZL16glfw_window_sizeP10GLFWwindowii.exit:        ; preds = %._crit_edge.i.i, %_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEiiEEclES4_ii.exit.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !12 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.eo = load ptr, ptr %i.en, align 16, !tbaa !12 ; 2 uses
  %.not8.i = icmp eq ptr %i.em, %i.eo
  br i1 %.not8.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_ZL16glfw_window_sizeP10GLFWwindowii.exit
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !74
  %.not.i.i.not.i = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.not.i, label %bb.t, label %_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEEEclES4_.exit.i

.lr.ph.i:                                         ; preds = %_ZL16glfw_window_sizeP10GLFWwindowii.exit, %.lr.ph.i
  %.sroa.05.09.i = phi ptr [ %i.er, %.lr.ph.i ], [ %i.em, %_ZL16glfw_window_sizeP10GLFWwindowii.exit ] ; 2 uses
  call void @_ZN3igl6opengl10ViewerCore4initEv(ptr noundef nonnull align 16 dereferenceable(544) %.sroa.05.09.i)
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 544 ; 2 uses
  %.not.i = icmp eq ptr %i.er, %i.eo
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEEEclES4_.exit.i: ; preds = %._crit_edge.i
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.eu = load ptr, ptr %i.et, align 16, !tbaa !79
  %i.ev = call noundef zeroext i1 %i.eu(ptr noundef nonnull align 8 dereferenceable(32) %i.es, ptr noundef nonnull align 16 dereferenceable(616) %0), !inline_history !80
  br i1 %i.ev, label %_ZN3igl6opengl4glfw6Viewer4initEv.exit, label %bb.t

bb.t:                                             ; preds = %_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEEEclES4_.exit.i, %._crit_edge.i
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !14
  %i.ez = load ptr, ptr %i.ew, align 16, !tbaa !18 ; 2 uses
  %.not.i.i51 = icmp eq ptr %i.ey, %i.ez
  br i1 %.not.i.i51, label %_ZN3igl6opengl4glfw6Viewer4initEv.exit, label %.lr.ph.i.i52

.lr.ph.i.i52:                                     ; preds = %bb.t, %.lr.ph.i.i52
  %i.fa = phi ptr [ %i.fk, %.lr.ph.i.i52 ], [ %i.ez, %bb.t ]
  %i.fb = phi i64 [ %i.fi, %.lr.ph.i.i52 ], [ 0, %bb.t ]
  %.04.i.i = phi i32 [ %i.fh, %.lr.ph.i.i52 ], [ 0, %bb.t ]
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fb
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !19 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !21
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(48) %i.fd, ptr noundef nonnull align 16 dereferenceable(616) %0), !inline_history !81
  %i.fh = add i32 %.04.i.i, 1                     ; 2 uses
  %i.fi = zext i32 %i.fh to i64                   ; 2 uses
  %i.fj = load ptr, ptr %i.ex, align 8, !tbaa !14
  %i.fk = load ptr, ptr %i.ew, align 16, !tbaa !18 ; 2 uses
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = ashr exact i64 %i.fn, 3
  %i.fp = icmp ugt i64 %i.fo, %i.fi
  br i1 %i.fp, label %.lr.ph.i.i52, label %_ZN3igl6opengl4glfw6Viewer4initEv.exit, !llvm.loop !82

_ZN3igl6opengl4glfw6Viewer4initEv.exit:           ; preds = %.lr.ph.i.i52, %_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEEEclES4_.exit.i, %bb.t
  %i.fq = load ptr, ptr %i.el, align 8, !tbaa !12 ; 2 uses
  %i.fr = load ptr, ptr %i.en, align 16, !tbaa !12 ; 2 uses
  %.not6569 = icmp eq ptr %i.fq, %i.fr
  br i1 %.not6569, label %._crit_edge72, label %.lr.ph71

.lr.ph71:                                         ; preds = %_ZN3igl6opengl4glfw6Viewer4initEv.exit
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fv = load ptr, ptr %i.fs, align 8, !tbaa !9
  %i.fw = load ptr, ptr %i.ft, align 16, !tbaa !9
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %._crit_edge72, label %.lr.ph71.split

._crit_edge72:                                    ; preds = %._crit_edge, %.lr.ph71, %_ZN3igl6opengl4glfw6Viewer4initEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %bb.z

.lr.ph71.split:                                   ; preds = %.lr.ph71, %._crit_edge
  %.sroa.062.070 = phi ptr [ %i.ga, %._crit_edge ], [ %i.fq, %.lr.ph71 ] ; 2 uses
  %i.fy = load ptr, ptr %i.fs, align 8, !tbaa !9  ; 2 uses
  %i.fz = load ptr, ptr %i.ft, align 16, !tbaa !9 ; 2 uses
  %.not6667 = icmp eq ptr %i.fy, %i.fz
  br i1 %.not6667, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.y, %.lr.ph71.split
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.062.070, i64 544 ; 2 uses
  %.not65 = icmp eq ptr %i.ga, %i.fr
  br i1 %.not65, label %._crit_edge72, label %.lr.ph71.split, !llvm.loop !83

.lr.ph:                                           ; preds = %.lr.ph71.split, %bb.y
  %.sroa.058.068 = phi ptr [ %i.gt, %bb.y ], [ %i.fy, %.lr.ph71.split ] ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.058.068, i64 584
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !85
  %i.gd = load i32, ptr %.sroa.062.070, align 16, !tbaa !119 ; 3 uses
  %i.ge = and i32 %i.gd, %i.gc
  %.not41 = icmp eq i32 %i.ge, 0
  br i1 %.not41, label %bb.y, label %bb.u

bb.u:                                             ; preds = %.lr.ph
  %i.gf = icmp eq i32 %i.gd, 0
  %.pre.i57 = load ptr, ptr %i.el, align 8, !tbaa !67 ; 4 uses
  br i1 %i.gf, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gg = load i64, ptr %i.fu, align 16, !tbaa !68
  br label %_ZN3igl6opengl4glfw6Viewer4coreEj.exit

bb.w:                                             ; preds = %bb.u
  %i.gh = load ptr, ptr %i.en, align 16, !tbaa !66 ; 2 uses
  %.not.i.i53 = icmp eq ptr %i.gh, %.pre.i57
  br i1 %.not.i.i53, label %_ZN3igl6opengl4glfw6Viewer4coreEj.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.w
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = ptrtoint ptr %.pre.i57 to i64
  %i.gk = sub i64 %i.gi, %i.gj
  %i.gl = sdiv exact i64 %i.gk, 544
  br label %.lr.ph.i.i54

.lr.ph.i.i54:                                     ; preds = %bb.x, %.lr.ph.preheader.i.i
  %.0710.i.i = phi i64 [ %i.gp, %bb.x ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.gm = getelementptr inbounds nuw [544 x i8], ptr %.pre.i57, i64 %.0710.i.i
  %i.gn = load i32, ptr %i.gm, align 16, !tbaa !119
  %i.go = icmp eq i32 %i.gn, %i.gd
  br i1 %i.go, label %_ZN3igl6opengl4glfw6Viewer4coreEj.exit, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i54
  %i.gp = add nuw i64 %.0710.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.gp, %i.gl
  br i1 %exitcond.not.i.i, label %_ZN3igl6opengl4glfw6Viewer4coreEj.exit, label %.lr.ph.i.i54, !llvm.loop !126

_ZN3igl6opengl4glfw6Viewer4coreEj.exit:           ; preds = %.lr.ph.i.i54, %bb.x, %bb.v, %bb.w
  %.0.in.i = phi i64 [ %i.gg, %bb.v ], [ 0, %bb.w ], [ 0, %bb.x ], [ %.0710.i.i, %.lr.ph.i.i54 ]
  %sext.i55 = shl i64 %.0.in.i, 32
  %i.gq = ashr exact i64 %sext.i55, 32
  %i.gr = getelementptr inbounds nuw [544 x i8], ptr %.pre.i57, i64 %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.058.068, i64 24
  call void @_ZN3igl6opengl10ViewerCore19align_camera_centerERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS3_IiLin1ELin1ELi0ELin1ELin1EEE(ptr noundef nonnull align 16 dereferenceable(544) %i.gr, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.058.068, ptr noundef nonnull align 8 dereferenceable(24) %i.gs)
  br label %bb.y

bb.y:                                             ; preds = %_ZN3igl6opengl4glfw6Viewer4coreEj.exit, %.lr.ph
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.058.068, i64 1488 ; 2 uses
  %.not66 = icmp eq ptr %i.gt, %i.fz
  br i1 %.not66, label %._crit_edge, label %.lr.ph

bb.z:                                             ; preds = %bb.a, %._crit_edge72, %bb.p, %bb.n
  %.0 = phi i32 [ 0, %._crit_edge72 ], [ -1, %bb.p ], [ 1, %bb.n ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN3igl6opengl4glfw6Viewer16launch_renderingEb(ptr noundef nonnull align 16 dereferenceable(616) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit, %bb.a
  %.09 = phi i32 [ 0, %bb.a ], [ %.2, %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit ] ; 3 uses
  %i.d = load ptr, ptr %i.a, align 16, !tbaa !26
  %i.e = call i32 @glfwWindowShouldClose(ptr noundef %i.d)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.f = call noundef double @_ZN3igl11get_secondsEv()
  call void @_ZN3igl6opengl4glfw6Viewer4drawEv(ptr noundef nonnull align 16 dereferenceable(616) %0)
  %i.g = load ptr, ptr %i.a, align 16, !tbaa !26
  call void @glfwSwapBuffers(ptr noundef %i.g)
  %i.h = load i64, ptr %i.b, align 16, !tbaa !68
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !67
  %sext.i = shl i64 %i.h, 32
  %i.i = ashr exact i64 %sext.i, 32
  %i.j = getelementptr inbounds nuw [544 x i8], ptr %.pre.i, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 181
  %i.l = load i8, ptr %i.k, align 1, !tbaa !127, !range !128, !noundef !129
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = add nsw i32 %.09, 1
  %i.o = icmp slt i32 %.09, 5
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %.09, %bb.c ], [ %i.n, %bb.d ]
  call void @glfwPollEvents()
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @glfwWaitEvents()
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2 = phi i32 [ %.1, %bb.e ], [ 0, %bb.f ]
  %i.p = call noundef double @_ZN3igl11get_secondsEv()
  %i.q = fsub double %i.p, %i.f
  %i.r = fmul double %i.q, 1.000000e+06           ; 2 uses
  %i.s = load i64, ptr %i.b, align 16, !tbaa !68
  %.pre.i17 = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !67
  %sext.i18 = shl i64 %i.s, 32
  %i.t = ashr exact i64 %sext.i18, 32
  %i.u = getelementptr inbounds nuw [544 x i8], ptr %.pre.i17, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 184
  %i.w = load double, ptr %i.v, align 8, !tbaa !130
  %i.x = fdiv double 1.000000e+06, %i.w           ; 2 uses
  %i.y = fcmp olt double %i.r, %i.x
  br i1 %i.y, label %bb.h, label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit

bb.h:                                             ; preds = %bb.g
  %i.z = fsub double %i.x, %i.r
  %i.aa = fptosi double %i.z to i32               ; 3 uses
  %i.ab = icmp slt i32 %i.aa, 1
  br i1 %i.ab, label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = zext nneg i32 %i.aa to i64
  %i.ad = udiv i32 %i.aa, 1000000
  %.zext = zext nneg i32 %i.ad to i64             ; 2 uses
  %.neg.i.i = mul nsw i64 %.zext, -1000000
  %i.ae = add nsw i64 %.neg.i.i, %i.ac
  %i.af = mul nsw i64 %i.ae, 1000
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store i64 %.zext, ptr %2, align 8, !tbaa !131
  store i64 %i.af, ptr %i.c, align 8, !tbaa !133
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ag = call i32 @nanosleep(ptr noundef nonnull %2, ptr noundef nonnull %2)
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %bb.j
  %i.ai = tail call ptr @__errno_location() #31
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !65
  %i.ak = icmp eq i32 %i.aj, 4
  br i1 %i.ak, label %bb.j, label %.critedge.i, !llvm.loop !134

.critedge.i:                                      ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit

_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit: ; preds = %.critedge.i, %bb.h, %bb.g
  br i1 %1, label %bb.b, label %.thread

.thread:                                          ; preds = %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit
  %i.al = load ptr, ptr %i.a, align 16, !tbaa !26
  %i.am = call i32 @glfwWindowShouldClose(ptr noundef %i.al)
  %.not15 = icmp eq i32 %i.am, 0
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.thread
  %.212 = phi i1 [ %.not15, %.thread ], [ false, %bb.b ]
  ret i1 %.212
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl6opengl4glfw6Viewer11launch_shutEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(616) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !9   ; 2 uses
  %.not15 = icmp eq ptr %i.b, %i.d
  br i1 %.not15, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !12  ; 2 uses
  %.not1417 = icmp eq ptr %i.f, %i.h
  br i1 %.not1417, label %._crit_edge21, label %.lr.ph20

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.011.016 = phi ptr [ %i.j, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.011.016, i64 680
  tail call void @_ZN3igl6opengl6MeshGL4freeEv(ptr noundef nonnull align 8 dereferenceable(804) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.011.016, i64 1488 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge21:                                    ; preds = %.lr.ph20, %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.n = load ptr, ptr %i.k, align 16, !tbaa !18  ; 2 uses
  %.not.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i, label %_ZN3igl6opengl4glfw6Viewer16shutdown_pluginsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge21, %.lr.ph.i
  %i.o = phi ptr [ %i.y, %.lr.ph.i ], [ %i.n, %._crit_edge21 ]
  %i.p = phi i64 [ %i.w, %.lr.ph.i ], [ 0, %._crit_edge21 ]
  %.04.i = phi i32 [ %i.v, %.lr.ph.i ], [ 0, %._crit_edge21 ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !19   ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(48) %i.r), !inline_history !135
  %i.v = add i32 %.04.i, 1                        ; 2 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.y = load ptr, ptr %i.k, align 16, !tbaa !18  ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 3
  %i.ad = icmp ugt i64 %i.ac, %i.w
  br i1 %i.ad, label %.lr.ph.i, label %_ZN3igl6opengl4glfw6Viewer16shutdown_pluginsEv.exit, !llvm.loop !24

_ZN3igl6opengl4glfw6Viewer16shutdown_pluginsEv.exit: ; preds = %.lr.ph.i, %._crit_edge21
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load ptr, ptr %i.ae, align 16, !tbaa !26
  tail call void @glfwDestroyWindow(ptr noundef %i.af)
  tail call void @glfwTerminate()
  ret void

.lr.ph20:                                         ; preds = %._crit_edge, %.lr.ph20
  %.sroa.07.018 = phi ptr [ %i.ag, %.lr.ph20 ], [ %i.f, %._crit_edge ] ; 2 uses
  tail call void @_ZN3igl6opengl10ViewerCore4shutEv(ptr noundef nonnull align 16 dereferenceable(544) %.sroa.07.018)
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.07.018, i64 544 ; 2 uses
  %.not14 = icmp eq ptr %i.ag, %i.h
  br i1 %.not14, label %._crit_edge21, label %.lr.ph20
}

declare ptr @glfwSetErrorCallback(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree nounwind uwtable
define internal void @_ZL19glfw_error_callbackiPKc(i32 %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !136
  %i.b = tail call i32 @fputs(ptr noundef %1, ptr noundef %i.a) #32 ; 0 uses
  ret void
}

declare i32 @glfwInit() local_unnamed_addr #1

declare void @glfwWindowHint(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare ptr @glfwGetPrimaryMonitor() local_unnamed_addr #1

declare ptr @glfwGetVideoMode(ptr noundef) local_unnamed_addr #1

declare ptr @glfwCreateWindow(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull align 16 dereferenceable(544) ptr @_ZN3igl6opengl4glfw6Viewer4coreEj(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(616) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load i64, ptr %i.b, align 16, !tbaa !68
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !67
  br label %_ZNK3igl6opengl4glfw6Viewer10core_indexEi.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !66  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !67   ; 6 uses
  %.not.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i, label %_ZNK3igl6opengl4glfw6Viewer10core_indexEi.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 544
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %.0710.i = phi i64 [ %i.o, %bb.d ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw [544 x i8], ptr %i.g, i64 %.0710.i
  %i.m = load i32, ptr %i.l, align 16, !tbaa !119
  %i.n = icmp eq i32 %i.m, %1
  br i1 %i.n, label %_ZNK3igl6opengl4glfw6Viewer10core_indexEi.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.o = add nuw i64 %.0710.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.o, %i.k
  br i1 %exitcond.not.i, label %_ZNK3igl6opengl4glfw6Viewer10core_indexEi.exit, label %.lr.ph.i, !llvm.loop !126

_ZNK3igl6opengl4glfw6Viewer10core_indexEi.exit:   ; preds = %bb.d, %.lr.ph.i, %bb.c, %bb.b
  %i.p = phi ptr [ %.pre, %bb.b ], [ %i.g, %bb.c ], [ %i.g, %.lr.ph.i ], [ %i.g, %bb.d ]
  %.0.in = phi i64 [ %i.c, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ %.0710.i, %.lr.ph.i ]
  %sext = shl i64 %.0.in, 32
  %i.q = ashr exact i64 %sext, 32
  %i.r = getelementptr inbounds nuw [544 x i8], ptr %i.p, i64 %i.q
  ret ptr %i.r
}

declare void @glfwTerminate() local_unnamed_addr #1

declare void @glfwMakeContextCurrent(ptr noundef) local_unnamed_addr #1

declare i32 @gladLoadGLLoader(ptr noundef) local_unnamed_addr #1

declare ptr @glfwGetProcAddress(ptr noundef) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare void @glfwSetInputMode(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @glfwSetKeyCallback(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal void @_ZL17glfw_key_callbackP10GLFWwindowiiii(ptr noundef %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = icmp eq i32 %1, 256
  %i.f = icmp eq i32 %3, 1                        ; 2 uses
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  tail call void @glfwSetWindowShouldClose(ptr noundef %0, i32 noundef 1)
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.thread, %bb.b
  %i.g = load ptr, ptr @_ZL8__viewer, align 8, !tbaa !70 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 96 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 104 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp eq ptr %i.j, %i.k
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.l = add i32 %.0914.i, 1                      ; 2 uses
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !18   ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 3
  %i.t = icmp ugt i64 %i.s, %i.m
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !138

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %i.u = phi ptr [ %i.o, %bb.d ], [ %i.k, %bb.c ]
  %i.v = phi i64 [ %i.m, %bb.d ], [ 0, %bb.c ]
  %.0914.i = phi i32 [ %i.l, %bb.d ], [ 0, %bb.c ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19   ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 136
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(48) %i.x, i32 noundef %1, i32 noundef %4), !inline_history !139
  br i1 %i.ab, label %_ZN3igl6opengl4glfw6Viewer8key_downEii.exit, label %bb.d

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !74
  %.not.i.i.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.not.i, label %_ZN3igl6opengl4glfw6Viewer8key_downEii.exit, label %_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEjiEEclES4_ji.exit.i

_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEjiEEclES4_ji.exit.i: ; preds = %._crit_edge.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %1, ptr %i.c, align 4, !tbaa !65
  store i32 %4, ptr %i.d, align 4, !tbaa !65
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 496
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !140
  %i.ah = call noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 16 dereferenceable(616) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d), !inline_history !141 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_ZN3igl6opengl4glfw6Viewer8key_downEii.exit

bb.e:                                             ; preds = %bb.b
  %i.ai = icmp eq i32 %3, 0
  br i1 %i.ai, label %bb.f, label %_ZN3igl6opengl4glfw6Viewer8key_downEii.exit

bb.f:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr @_ZL8__viewer, align 8, !tbaa !70 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 96 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 104 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !14
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !18 ; 2 uses
  %.not.i9 = icmp eq ptr %i.am, %i.an
  br i1 %.not.i9, label %._crit_edge.i12, label %.lr.ph.i10

bb.g:                                             ; preds = %.lr.ph.i10
  %i.ao = add i32 %.0914.i11, 1                   ; 2 uses
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !14
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !18 ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 3
  %i.aw = icmp ugt i64 %i.av, %i.ap
  br i1 %i.aw, label %.lr.ph.i10, label %._crit_edge.i12, !llvm.loop !142

.lr.ph.i10:                                       ; preds = %bb.f, %bb.g
  %i.ax = phi ptr [ %i.ar, %bb.g ], [ %i.an, %bb.f ]
  %i.ay = phi i64 [ %i.ap, %bb.g ], [ 0, %bb.f ]
  %.0914.i11 = phi i32 [ %i.ao, %bb.g ], [ 0, %bb.f ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !19 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !21
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 144
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call noundef zeroext i1 %i.bd(ptr noundef nonnull align 8 dereferenceable(48) %i.ba, i32 noundef %1, i32 noundef %4), !inline_history !143
  br i1 %i.be, label %_ZN3igl6opengl4glfw6Viewer8key_downEii.exit, label %bb.g

._crit_edge.i12:                                  ; preds = %bb.g, %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aj, i64 520
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !74
  %.not.i.i.not.i13 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.not.i13, label %_ZN3igl6opengl4glfw6Viewer8key_downEii.exit, label %_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEjiEEclES4_ji.exit.i14

_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEjiEEclES4_ji.exit.i14: ; preds = %._crit_edge.i12
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aj, i64 504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %1, ptr %i.a, align 4, !tbaa !65
  store i32 %4, ptr %i.b, align 4, !tbaa !65
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 528
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !140
  %i.bk = call noundef zeroext i1 %i.bj(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull align 16 dereferenceable(616) %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !inline_history !144 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN3igl6opengl4glfw6Viewer8key_downEii.exit

_ZN3igl6opengl4glfw6Viewer8key_downEii.exit:      ; preds = %.lr.ph.i10, %.lr.ph.i, %_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEjiEEclES4_ji.exit.i, %_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEjiEEclES4_ji.exit.i14, %._crit_edge.i12, %._crit_edge.i, %bb.e
  ret void
}

declare ptr @glfwSetCursorPosCallback(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal void @_ZL15glfw_mouse_moveP10GLFWwindowdd(ptr nofree readnone captures(none) %0, double noundef %1, double noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr @_ZL8__viewer, align 8, !tbaa !70
  %i.b = load double, ptr @_ZL8highdpiw, align 8, !tbaa !72
  %i.c = fmul double %1, %i.b
  %i.d = fptosi double %i.c to i32
  %i.e = load double, ptr @_ZL8highdpih, align 8, !tbaa !72
  %i.f = fmul double %2, %i.e
  %i.g = fptosi double %i.f to i32
  %i.h = tail call noundef zeroext i1 @_ZN3igl6opengl4glfw6Viewer10mouse_moveEii(ptr noundef nonnull align 16 dereferenceable(616) %i.a, i32 noundef %i.d, i32 noundef %i.g) ; 0 uses
  ret void
}

declare ptr @glfwSetWindowSizeCallback(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal void @_ZL16glfw_window_sizeP10GLFWwindowii(ptr nofree readnone captures(none) %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = sitofp i32 %1 to double
  %i.d = load double, ptr @_ZL8highdpiw, align 8, !tbaa !72
  %i.e = fmul double %i.d, %i.c
  %i.f = fptosi double %i.e to i32                ; 3 uses
  %i.g = sitofp i32 %2 to double
  %i.h = load double, ptr @_ZL8highdpih, align 8, !tbaa !72
  %i.i = fmul double %i.h, %i.g
  %i.j = fptosi double %i.i to i32                ; 3 uses
  %i.k = load ptr, ptr @_ZL8__viewer, align 8, !tbaa !70 ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !66
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !67   ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp eq i64 %i.r, 544
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN3igl6opengl4glfw6ViewerC2Ev:bb.a
  call void @__clang_call_terminate(ptr %i.go) #33
  unreachable

_ZNSt14_Function_baseD2Ev.exit47:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit45, %bb.be
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !74 ; 2 uses
  %.not.i48 = icmp eq ptr %i.gq, null
  br i1 %.not.i48, label %_ZNSt14_Function_baseD2Ev.exit49, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit47
  %i.gr = invoke noundef zeroext i1 %i.gq(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit49 unwind label %bb.bh ; 0 uses

bb.bh:                                            ; preds = %bb.bg
  %i.gs = landingpad { ptr, i32 }
          catch ptr null
  %i.gt = extractvalue { ptr, i32 } %i.gs, 0
  call void @__clang_call_terminate(ptr %i.gt) #33
  unreachable

_ZNSt14_Function_baseD2Ev.exit49:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit47, %bb.bg
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !74 ; 2 uses
  %.not.i50 = icmp eq ptr %i.gv, null
  br i1 %.not.i50, label %_ZNSt14_Function_baseD2Ev.exit51, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit49
  %i.gw = invoke noundef zeroext i1 %i.gv(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit51 unwind label %bb.bj ; 0 uses

bb.bj:                                            ; preds = %bb.bi
  %i.gx = landingpad { ptr, i32 }
          catch ptr null
  %i.gy = extractvalue { ptr, i32 } %i.gx, 0
  call void @__clang_call_terminate(ptr %i.gy) #33
  unreachable

_ZNSt14_Function_baseD2Ev.exit51:                 ; preds = %bb.bi, %_ZNSt14_Function_baseD2Ev.exit49
  %i.gz = load ptr, ptr %i.g, align 16, !tbaa !18 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN3igl6opengl4glfw12ViewerPluginESaIS4_EED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit51
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.hb = load ptr, ptr %i.ha, align 16, !tbaa !194
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = ptrtoint ptr %i.gz to i64
  %i.he = sub i64 %i.hc, %i.hd
  call void @_ZdlPvm(ptr noundef nonnull %i.gz, i64 noundef %i.he) #35
  br label %_ZNSt6vectorIPN3igl6opengl4glfw12ViewerPluginESaIS4_EED2Ev.exit

_ZNSt6vectorIPN3igl6opengl4glfw12ViewerPluginESaIS4_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit51, %bb.bk
  %i.hf = load ptr, ptr %i.e, align 8, !tbaa !67  ; 3 uses
  %.not.i.i.i52 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i52, label %_ZNSt6vectorIN3igl6opengl10ViewerCoreESaIS2_EED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIPN3igl6opengl4glfw12ViewerPluginESaIS4_EED2Ev.exit
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !163
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %i.hf to i64
  %i.hk = sub i64 %i.hi, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hk) #35
  br label %_ZNSt6vectorIN3igl6opengl10ViewerCoreESaIS2_EED2Ev.exit

_ZNSt6vectorIN3igl6opengl10ViewerCoreESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN3igl6opengl4glfw12ViewerPluginESaIS4_EED2Ev.exit, %bb.bl
  call void @_ZNSt6vectorIN3igl6opengl10ViewerDataESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #30
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN3igl6opengl10ViewerDataESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 6198502712940037
  br i1 %i.a, label %bb.b, label %_ZNSt6vectorIN3igl6opengl10ViewerDataESaIS2_EE17_S_check_init_lenEmRKS3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #34
  unreachable

_ZNSt6vectorIN3igl6opengl10ViewerDataESaIS2_EE17_S_check_init_lenEmRKS3_.exit: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN3igl6opengl10ViewerDataESaIS2_EEC2EmRKS3_.exit.thread, label %_ZNSt12_Vector_baseIN3igl6opengl10ViewerDataESaIS2_EEC2EmRKS3_.exit

_ZNSt12_Vector_baseIN3igl6opengl10ViewerDataESaIS2_EEC2EmRKS3_.exit.thread: ; preds = %_ZNSt6vectorIN3igl6opengl10ViewerDataESaIS2_EE17_S_check_init_lenEmRKS3_.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseIN3igl6opengl10ViewerDataESaIS2_EEC2EmRKS3_.exit: ; preds = %_ZNSt6vectorIN3igl6opengl10ViewerDataESaIS2_EE17_S_check_init_lenEmRKS3_.exit
  %i.c = mul nuw nsw i64 %1, 1488
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #36 ; 6 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !169
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !195
  %i.f = getelementptr inbounds nuw [1488 x i8], ptr %i.d, i64 %1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !196
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN3igl6opengl10ViewerDataESaIS2_EEC2EmRKS3_.exit, %_ZSt10_ConstructIN3igl6opengl10ViewerDataEJEEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.i, %_ZSt10_ConstructIN3igl6opengl10ViewerDataEJEEvPT_DpOT0_.exit.i.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN3igl6opengl10ViewerDataESaIS2_EEC2EmRKS3_.exit ] ; 4 uses
  %.01013.i.i.i.i = phi i64 [ %i.h, %_ZSt10_ConstructIN3igl6opengl10ViewerDataEJEEvPT_DpOT0_.exit.i.i.i.i ], [ %1, %_ZNSt12_Vector_baseIN3igl6opengl10ViewerDataESaIS2_EEC2EmRKS3_.exit ]
  invoke void @_ZN3igl6opengl10ViewerDataC1Ev(ptr noundef nonnull align 8 dereferenceable(1488) %.014.i.i.i.i)
          to label %_ZSt10_ConstructIN3igl6opengl10ViewerDataEJEEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN3igl6opengl10ViewerDataEJEEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.h = add nsw i64 %.01013.i.i.i.i, -1          ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 1488 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !197

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  %i.l = tail call ptr @__cxa_begin_catch(ptr %i.k) #30 ; 0 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.d, %.014.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN3igl6opengl10ViewerDataEEvT_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i ], [ %i.d, %bb.c ] ; 2 uses
  tail call void @_ZN3igl6opengl10ViewerDataD2Ev(ptr noundef nonnull align 8 dead_on_return(1488) dereferenceable(1488) %.05.i.i.i.i.i.i) #30
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 1488 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, %.014.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN3igl6opengl10ViewerDataEEvT_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !198

_ZSt8_DestroyIPN3igl6opengl10ViewerDataEEvT_S4_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.c
  invoke void @__cxa_rethrow() #34
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN3igl6opengl10ViewerDataEEvT_S4_.exit.i.i.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #33
  unreachable

bb.f:                                             ; preds = %_ZSt8_DestroyIPN3igl6opengl10ViewerDataEEvT_S4_.exit.i.i.i.i
  unreachable

.loopexit:                                        ; preds = %_ZSt10_ConstructIN3igl6opengl10ViewerDataEJEEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN3igl6opengl10ViewerDataESaIS2_EEC2EmRKS3_.exit.thread
  %i.q = phi ptr [ %i.b, %_ZNSt12_Vector_baseIN3igl6opengl10ViewerDataESaIS2_EEC2EmRKS3_.exit.thread ], [ %i.e, %_ZSt10_ConstructIN3igl6opengl10ViewerDataEJEEvPT_DpOT0_.exit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN3igl6opengl10ViewerDataESaIS2_EEC2EmRKS3_.exit.thread ], [ %i.i, %_ZSt10_ConstructIN3igl6opengl10ViewerDataEJEEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.q, align 8, !tbaa !195
  ret void

.body:                                            ; preds = %bb.d
  %i.r = load ptr, ptr %0, align 8, !tbaa !169    ; 3 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN3igl6opengl10ViewerDataESaIS2_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.body
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !196
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #35
  br label %_ZNSt12_Vector_baseIN3igl6opengl10ViewerDataESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN3igl6opengl10ViewerDataESaIS2_EED2Ev.exit: ; preds = %.body, %bb.g
  resume { ptr, i32 } %i.n
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZN3igl6opengl10ViewerCoreC1Ev(ptr noundef nonnull align 16 dereferenceable(544)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(1488) ptr @_ZN3igl6opengl4glfw6Viewer4dataEi(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(616) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 16, !tbaa !159
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !169
  br label %_ZNK3igl6opengl4glfw6Viewer10mesh_indexEi.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !195 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !169  ; 6 uses
  %.not.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i, label %_ZNK3igl6opengl4glfw6Viewer10mesh_indexEi.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 1488
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %.0710.i = phi i64 [ %i.p, %bb.d ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw [1488 x i8], ptr %i.g, i64 %.0710.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 672
  %i.n = load i32, ptr %i.m, align 8, !tbaa !162
  %i.o = icmp eq i32 %i.n, %1
  br i1 %i.o, label %_ZNK3igl6opengl4glfw6Viewer10mesh_indexEi.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.p = add nuw i64 %.0710.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.p, %i.k
  br i1 %exitcond.not.i, label %_ZNK3igl6opengl4glfw6Viewer10mesh_indexEi.exit, label %.lr.ph.i, !llvm.loop !199

_ZNK3igl6opengl4glfw6Viewer10mesh_indexEi.exit:   ; preds = %bb.d, %.lr.ph.i, %bb.c, %bb.b
  %i.q = phi ptr [ %.pre, %bb.b ], [ %i.g, %bb.c ], [ %i.g, %.lr.ph.i ], [ %i.g, %bb.d ]
  %.0.in = phi i64 [ %i.c, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ %.0710.i, %.lr.ph.i ]
  %sext = shl i64 %.0.in, 32
  %i.r = ashr exact i64 %sext, 32
  %i.s = getelementptr inbounds nuw [1488 x i8], ptr %i.q, i64 %i.r
  ret ptr %i.s
}

declare void @_ZN3igl6opengl10ViewerData14set_face_basedEb(ptr noundef nonnull align 8 dereferenceable(1488), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN3igl6opengl10ViewerDataESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !169    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !195  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN3igl6opengl10ViewerDataES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN3igl6opengl10ViewerDataD2Ev(ptr noundef nonnull align 8 dead_on_return(1488) dereferenceable(1488) %.05.i.i) #30
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 1488 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN3igl6opengl10ViewerDataES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !198

_ZSt8_DestroyIPN3igl6opengl10ViewerDataES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !169
  br label %_ZSt8_DestroyIPN3igl6opengl10ViewerDataES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN3igl6opengl10ViewerDataES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN3igl6opengl10ViewerDataES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN3igl6opengl10ViewerDataES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN3igl6opengl10ViewerDataESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN3igl6opengl10ViewerDataES2_EvT_S4_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !196
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #35
  br label %_ZNSt12_Vector_baseIN3igl6opengl10ViewerDataESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN3igl6opengl10ViewerDataESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3igl6opengl10ViewerDataES2_EvT_S4_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3igl6opengl4glfw6ViewerD2Ev(ptr noundef nonnull align 16 dead_on_return(616) dereferenceable(616) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #33
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !74   ; 2 uses
  %.not.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i1, label %_ZNSt14_Function_baseD2Ev.exit2, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.j = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2 unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #33
  unreachable

_ZNSt14_Function_baseD2Ev.exit2:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !74   ; 2 uses
  %.not.i3 = icmp eq ptr %i.n, null
  br i1 %.not.i3, label %_ZNSt14_Function_baseD2Ev.exit4, label %bb.f

bb.f:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit2
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.p = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit4 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #33
  unreachable

_ZNSt14_Function_baseD2Ev.exit4:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit2, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !74   ; 2 uses
  %.not.i5 = icmp eq ptr %i.t, null
  br i1 %.not.i5, label %_ZNSt14_Function_baseD2Ev.exit6, label %bb.h

bb.h:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.v = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit6 unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #33
  unreachable

_ZNSt14_Function_baseD2Ev.exit6:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit4, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !74   ; 2 uses
  %.not.i7 = icmp eq ptr %i.z, null
  br i1 %.not.i7, label %_ZNSt14_Function_baseD2Ev.exit8, label %bb.j

bb.j:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit6
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.ab = invoke noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit8 unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #33
  unreachable

_ZNSt14_Function_baseD2Ev.exit8:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit6, %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !74 ; 2 uses
  %.not.i9 = icmp eq ptr %i.af, null
  br i1 %.not.i9, label %_ZNSt14_Function_baseD2Ev.exit10, label %bb.l

bb.l:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ah = invoke noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit10 unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #33
  unreachable

_ZNSt14_Function_baseD2Ev.exit10:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit8, %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !74 ; 2 uses
  %.not.i11 = icmp eq ptr %i.al, null
  br i1 %.not.i11, label %_ZNSt14_Function_baseD2Ev.exit12, label %bb.n

bb.n:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit10
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.an = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit12 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #33
  unreachable

_ZNSt14_Function_baseD2Ev.exit12:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit10, %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !74 ; 2 uses
  %.not.i13 = icmp eq ptr %i.ar, null
  br i1 %.not.i13, label %_ZNSt14_Function_baseD2Ev.exit14, label %bb.p

bb.p:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit12
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.at = invoke noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit14 unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  tail call void @__clang_call_terminate(ptr %i.av) #33
  unreachable

_ZNSt14_Function_baseD2Ev.exit14:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit12, %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !74 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN3igl6opengl4glfw6Viewer11key_pressedEji:bb.a
  %sext.i100 = shl i64 %i.er, 32
  %i.es = ashr exact i64 %sext.i100, 32
  %i.et = getelementptr inbounds nuw [1488 x i8], ptr %.pre.i99, i64 %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 616 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !226
  %.not15 = icmp eq i32 %i.ev, 0
  %i.ew = zext i1 %.not15 to i32
  store i32 %i.ew, ptr %i.eu, align 8, !tbaa !226
  br label %.loopexit

bb.w:                                             ; preds = %bb.c
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ey = load i64, ptr %i.ex, align 16, !tbaa !159
  %.phi.trans.insert.i104 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i105 = load ptr, ptr %.phi.trans.insert.i104, align 8, !tbaa !169
  %sext.i106 = shl i64 %i.ey, 32
  %i.ez = ashr exact i64 %sext.i106, 32
  %i.fa = getelementptr inbounds nuw [1488 x i8], ptr %.pre.i105, i64 %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 592 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !227
  %.not = icmp eq i32 %i.fc, 0
  %i.fd = zext i1 %.not to i32
  store i32 %i.fd, ptr %i.fb, align 8, !tbaa !227
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %bb.r, %bb.s, %bb.k, %bb.n, %bb.m, %_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEjiEEclES4_ji.exit, %bb.w, %bb.v, %bb.u, %bb.t, %bb.p, %bb.o, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.1 = phi i1 [ false, %bb.c ], [ true, %bb.r ], [ true, %bb.d ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.g ], [ true, %bb.h ], [ true, %bb.i ], [ true, %_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEjiEEclES4_ji.exit ], [ true, %bb.o ], [ true, %bb.p ], [ true, %bb.k ], [ true, %bb.t ], [ true, %bb.u ], [ true, %bb.v ], [ true, %bb.w ], [ true, %bb.m ], [ true, %bb.n ], [ true, %bb.s ], [ true, %.lr.ph ]
  ret i1 %.1
}

declare void @_ZNK3igl6opengl10ViewerCore6toggleERj(ptr noundef nonnull align 16 dereferenceable(544), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl6opengl4glfw6Viewer28snap_to_canonical_quaternionEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(616) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.Eigen::Quaternion", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 16, !tbaa !68
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !67
  %sext.i = shl i64 %i.b, 32
  %i.c = ashr exact i64 %sext.i, 32
  %i.d = getelementptr inbounds nuw [544 x i8], ptr %.pre.i, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !164
  %i.f = call noundef zeroext i1 @_ZN3igl27snap_to_canonical_view_quatIffEEbRKN5Eigen10QuaternionIT_Li0EEEdRNS2_IT0_Li0EEE(ptr noundef nonnull align 16 dereferenceable(16) %1, double noundef 1.000000e+00, ptr noundef nonnull align 16 dereferenceable(16) %i.e) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void
}

declare void @_ZN3igl6opengl10ViewerCore17set_rotation_typeERKNS1_12RotationTypeE(ptr noundef nonnull align 16 dereferenceable(544), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN3igl6opengl4glfw6Viewer8key_downEii(ptr noundef nonnull align 16 dereferenceable(616) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.f = load ptr, ptr %i.c, align 16, !tbaa !18  ; 2 uses
  %.not = icmp eq ptr %i.e, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.g = add i32 %.0914, 1                        ; 2 uses
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.j = load ptr, ptr %i.c, align 16, !tbaa !18  ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  %i.o = icmp ugt i64 %i.n, %i.h
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !138

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.p = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ]
  %i.q = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  %.0914 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !19   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(48) %i.s, i32 noundef %1, i32 noundef %2)
  br i1 %i.w, label %.loopexit, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !74
  %.not.i.i.not = icmp eq ptr %i.y, null
  br i1 %.not.i.i.not, label %bb.c, label %_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEjiEEclES4_ji.exit

_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEjiEEclES4_ji.exit: ; preds = %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %1, ptr %i.a, align 4, !tbaa !65
  store i32 %2, ptr %i.b, align 4, !tbaa !65
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ab = load ptr, ptr %i.aa, align 16, !tbaa !140
  %i.ac = call noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 16 dereferenceable(616) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !inline_history !217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.ac, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEjiEEclES4_ji.exit, %._crit_edge
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEjiEEclES4_ji.exit, %bb.c
  %.1 = phi i1 [ true, %_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEjiEEclES4_ji.exit ], [ false, %bb.c ], [ true, %.lr.ph ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN3igl6opengl4glfw6Viewer6key_upEii(ptr noundef nonnull align 16 dereferenceable(616) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.f = load ptr, ptr %i.c, align 16, !tbaa !18  ; 2 uses
  %.not = icmp eq ptr %i.e, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.g = add i32 %.0914, 1                        ; 2 uses
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.j = load ptr, ptr %i.c, align 16, !tbaa !18  ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  %i.o = icmp ugt i64 %i.n, %i.h
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !142

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.p = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ]
  %i.q = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  %.0914 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !19   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(48) %i.s, i32 noundef %1, i32 noundef %2)
  br i1 %i.w, label %.loopexit, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !74
  %.not.i.i.not = icmp eq ptr %i.y, null
  br i1 %.not.i.i.not, label %bb.c, label %_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEjiEEclES4_ji.exit

_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEjiEEclES4_ji.exit: ; preds = %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %1, ptr %i.a, align 4, !tbaa !65
  store i32 %2, ptr %i.b, align 4, !tbaa !65
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ab = load ptr, ptr %i.aa, align 16, !tbaa !140
  %i.ac = call noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 16 dereferenceable(616) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !inline_history !217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.ac, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEjiEEclES4_ji.exit, %._crit_edge
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEjiEEclES4_ji.exit, %bb.c
  %.1 = phi i1 [ true, %_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEjiEEclES4_ji.exit ], [ false, %bb.c ], [ true, %.lr.ph ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl6opengl4glfw6Viewer19select_hovered_coreEv(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(616) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !26
  call void @glfwGetFramebufferSize(ptr noundef %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !66  ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !67   ; 3 uses
  %.not = icmp eq ptr %i.g, %i.h
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 544
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = load i32, ptr %i.m, align 16, !tbaa !228
  %i.o = sitofp i32 %i.n to float                 ; 2 uses
  %i.p = load i32, ptr %i.b, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 148
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.r = getelementptr inbounds nuw [544 x i8], ptr %i.h, i64 %indvars.iv ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 208
  %.sroa.0.0.copyload = load float, ptr %i.s, align 16 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 216
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 8
  %i.t = fcmp olt float %.sroa.0.0.copyload, %i.o
  %i.u = fadd float %.sroa.0.0.copyload, %.sroa.8.0.copyload
  %i.v = fcmp ogt float %i.u, %i.o
  %or.cond = select i1 %i.t, i1 %i.v, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 220
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !145
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 212
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4 ; 2 uses
  %i.w = load i32, ptr %i.q, align 4, !tbaa !229
  %i.x = sub nsw i32 %i.p, %i.w
  %i.y = sitofp i32 %i.x to float                 ; 2 uses
  %i.z = fcmp olt float %.sroa.6.0.copyload, %i.y
  %i.aa = fadd float %.sroa.9.0.copyload, %.sroa.6.0.copyload
  %i.ab = fcmp ogt float %i.aa, %i.y
  %or.cond11 = select i1 %i.z, i1 %i.ab, i1 false
  br i1 %or.cond11, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %indvars.iv, ptr %i.ac, align 16, !tbaa !68
  br label %.loopexit

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.l
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !230

.loopexit:                                        ; preds = %bb.d, %bb.a, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN3igl6opengl4glfw6Viewer10mouse_downENS2_11MouseButtonEi(ptr noundef nonnull align 16 dereferenceable(616) initializes((152, 160)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.Eigen::Matrix.126", align 16 ; 6 uses
  %4 = alloca %"class.Eigen::Matrix.13", align 4  ; 4 uses
  %5 = alloca %"class.Eigen::Matrix.13", align 8  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.h = load <2 x i32>, ptr %i.e, align 16, !tbaa !65
  store <2 x i32> %i.h, ptr %i.f, align 8, !tbaa !65
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.l = load ptr, ptr %i.i, align 16, !tbaa !18  ; 2 uses
  %.not63 = icmp eq ptr %i.k, %i.l
  br i1 %.not63, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.m = add i32 %.01062, 1                       ; 2 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.p = load ptr, ptr %i.i, align 16, !tbaa !18  ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = icmp ugt i64 %i.t, %i.n
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !231

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.v = phi ptr [ %i.p, %bb.b ], [ %i.l, %bb.a ]
  %i.w = phi i64 [ %i.n, %bb.b ], [ 0, %bb.a ]
  %.01062 = phi i32 [ %i.m, %bb.b ], [ 0, %bb.a ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19   ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(48) %i.y, i32 noundef %1, i32 noundef %2)
  br i1 %i.ac, label %.loopexit, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !74
  %.not.i.i.not = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.not, label %bb.c, label %_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEiiEEclES4_ii.exit

_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEiiEEclES4_ii.exit: ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %1, ptr %i.c, align 4, !tbaa !65
  store i32 %2, ptr %i.d, align 4, !tbaa !65
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !77
  %i.ai = call noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 16 dereferenceable(616) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d), !inline_history !232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.ai, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEiiEEclES4_ii.exit, %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 1, ptr %i.aj, align 16, !tbaa !148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load ptr, ptr %i.ak, align 16, !tbaa !26
  call void @glfwGetFramebufferSize(ptr noundef %i.al, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = load ptr, ptr %i.an, align 16, !tbaa !66 ; 2 uses
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !67 ; 4 uses
  %.not.i = icmp eq ptr %i.ao, %i.ap
  br i1 %.not.i, label %_ZN3igl6opengl4glfw6Viewer19select_hovered_coreEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 544
  %i.au = load i32, ptr %i.e, align 16, !tbaa !228
  %i.av = sitofp i32 %i.au to float               ; 2 uses
  %i.aw = load i32, ptr %i.b, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [544 x i8], ptr %i.ap, i64 %indvars.iv.i ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 208
  %.sroa.0.0.copyload.i = load float, ptr %i.ay, align 16 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 216
  %.sroa.8.0.copyload.i = load float, ptr %.sroa.8.0..sroa_idx.i, align 8
  %i.az = fcmp olt float %.sroa.0.0.copyload.i, %i.av
  %i.ba = fadd float %.sroa.0.0.copyload.i, %.sroa.8.0.copyload.i
  %i.bb = fcmp ogt float %i.ba, %i.av
  %or.cond.i = select i1 %i.az, i1 %i.bb, i1 false
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 220
  %.sroa.9.0.copyload.i = load float, ptr %.sroa.9.0..sroa_idx.i, align 4, !tbaa !145
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 212
  %.sroa.6.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i, align 4 ; 2 uses
  %i.bc = load i32, ptr %i.g, align 4, !tbaa !229
  %i.bd = sub nsw i32 %i.aw, %i.bc
  %i.be = sitofp i32 %i.bd to float               ; 2 uses
  %i.bf = fcmp olt float %.sroa.6.0.copyload.i, %i.be
  %i.bg = fadd float %.sroa.9.0.copyload.i, %.sroa.6.0.copyload.i
  %i.bh = fcmp ogt float %i.bg, %i.be
  %or.cond11.i = select i1 %i.bf, i1 %i.bh, i1 false
  br i1 %or.cond11.i, label %.critedge.i, label %bb.f

.critedge.i:                                      ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %indvars.iv.i, ptr %i.bi, align 16, !tbaa !68
  br label %_ZN3igl6opengl4glfw6Viewer19select_hovered_coreEv.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.at
  br i1 %exitcond.not.i, label %_ZN3igl6opengl4glfw6Viewer19select_hovered_coreEv.exit, label %bb.d, !llvm.loop !230

_ZN3igl6opengl4glfw6Viewer19select_hovered_coreEv.exit: ; preds = %bb.f, %bb.c, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 16, !tbaa !68
  %sext.i = shl i64 %i.bk, 32
  %i.bl = ashr exact i64 %sext.i, 32
  %i.bm = getelementptr inbounds nuw [544 x i8], ptr %i.ap, i64 %i.bl ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 120
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.bp = load float, ptr %i.bn, align 4, !tbaa !69
  store float %i.bp, ptr %i.bo, align 4, !tbaa !69
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 124
  %i.bs = load float, ptr %i.br, align 4, !tbaa !69
  store float %i.bs, ptr %i.bq, align 8, !tbaa !69
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 128
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !69
  store float %i.bv, ptr %i.bt, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.by = load i64, ptr %i.bx, align 16, !tbaa !159
  %.phi.trans.insert.i14 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i15 = load ptr, ptr %.phi.trans.insert.i14, align 8, !tbaa !169
  %sext.i16 = shl i64 %i.by, 32
  %i.bz = ashr exact i64 %sext.i16, 32
  %i.ca = getelementptr inbounds nuw [1488 x i8], ptr %.pre.i15, i64 %i.bz ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !202 ; 11 uses
  %i.cd = icmp sgt i64 %i.cc, 0
  br i1 %i.cd, label %bb.g, label %_ZN5Eigen5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS_16PartialReduxExprINS1_IdLin1ELin1ELi0ELin1ELin1EEENS6_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEEEEERS3_RKNS_9DenseBaseIT_EE.exit

bb.g:                                             ; preds = %_ZN3igl6opengl4glfw6Viewer19select_hovered_coreEv.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cf = uitofp nneg i64 %i.cc to double
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !233 ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 0
  br i1 %i.ch, label %.lr.ph.split.preheader.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS_16PartialReduxExprINS1_IdLin1ELin1ELi0ELin1ELin1EEENS6_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEEEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.split.preheader.i.i.i.i.i.i.i.i.i.i:       ; preds = %bb.g
  %i.ci = load ptr, ptr %i.ca, align 8, !tbaa !209, !noalias !234 ; 2 uses
  %.not = icmp eq i64 %i.cc, 1
  %i.cj = ptrtoaddr ptr %i.ci to i64
  %i.ck = and i64 %i.cj, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ck, 0
  %i.cl = add nsw i64 %i.cc, -1                   ; 2 uses
  %i.cm = add nsw i64 %i.cc, -2
  %xtraiter101 = and i64 %i.cl, 7                 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 7
  %unroll_iter106 = and i64 %i.cl, -8
  %lcmp.mod103.not = icmp eq i64 %xtraiter101, 0
  %lcmp.mod105 = icmp ne i64 %xtraiter101, 0
  br label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i.i.i.i:                 ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELin1ELi1ELi1ELin1EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.preheader.i.i.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ha, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELin1ELi1ELi1ELin1EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.split.preheader.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.co = mul nuw nsw i64 %.010.i.i.i.i.i.i.i.i.i.i, %i.cc
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.co ; 25 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = lshr exact i64 %i.cq, 3
  %i.cs = and i64 %i.cr, 1
  %i.ct = call i64 @llvm.smin.i64(i64 %i.cs, i64 %i.cc)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ct, %bb.h ], [ %i.cc, %.lr.ph.split.i.i.i.i.i.i.i.i.i.i ] ; 10 uses
  %i.cu = sub nsw i64 %i.cc, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.cv = sdiv i64 %i.cu, 4
  %i.cw = shl nsw i64 %i.cv, 2                    ; 2 uses
  %i.cx = sdiv i64 %i.cu, 2
  %i.cy = shl nsw i64 %i.cx, 1                    ; 2 uses
  %i.cz = add nsw i64 %i.cw, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.da = add nsw i64 %i.cy, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.off.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = add i64 %i.cu, 1
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.db = getelementptr [8 x i8], ptr %i.cp, i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.dc = load <2 x double>, ptr %i.db, align 1, !tbaa !145 ; 3 uses
  %i.dd = icmp sgt i64 %i.cu, 3
  br i1 %i.dd, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.de = getelementptr i8, ptr %i.db, i64 16
  %i.df = load <2 x double>, ptr %i.de, align 1, !tbaa !145 ; 2 uses
  %i.dg = icmp samesign ugt i64 %i.cu, 7
  br i1 %i.dg, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %.05478.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.j
  %.076.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.df, %bb.j ], [ %i.dp, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.073.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.dc, %bb.j ], [ %i.dl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.dh = fadd <2 x double> %.076.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.073.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.di = icmp sgt i64 %i.cy, %i.cw
  br i1 %i.di, label %bb.k, label %bb.l

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05482.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05478.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.054.in81.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.05482.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.07380.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.dl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.dc, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.07679.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.dp, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.df, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.05482.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dk = load <2 x double>, ptr %i.dj, align 1, !tbaa !145
  %i.dl = fadd <2 x double> %.07380.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.dk ; 2 uses
  %i.dm = getelementptr [8 x i8], ptr %i.cp, i64 %.054.in81.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dn = getelementptr i8, ptr %i.dm, i64 48
  %i.do = load <2 x double>, ptr %i.dn, align 1, !tbaa !145
  %i.dp = fadd <2 x double> %.07679.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.do ; 2 uses
  %.054.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %.05482.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.dq = icmp slt i64 %.054.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.cz
  br i1 %i.dq, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !237

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.cz
  %i.ds = load <2 x double>, ptr %i.dr, align 1, !tbaa !145
  %i.dt = fadd <2 x double> %i.dh, %i.ds
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.i
  %.275.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.dc, %bb.i ], [ %i.dt, %bb.k ], [ %i.dh, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %shift = shufflevector <2 x double> %.275.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %.275.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %shift
  %i.du = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.dv = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dv, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %bb.l
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 7 ; 3 uses
  %i.dw = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.dw, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new: ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775800
  br label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.fh, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.07284.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi double [ %i.du, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.fg, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod100 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod100)
  br label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil:  ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.ea, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %.07284.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi double [ %i.dz, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.07284.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !72
  %i.dz = fadd double %.07284.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %i.dy ; 2 uses
  %i.ea = add nuw nsw i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !238

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %bb.l
  %.072.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.du, %bb.l ], [ %i.fg, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.dz, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ] ; 2 uses
  %i.eb = icmp slt i64 %i.da, %i.cc
  br i1 %i.eb, label %.lr.ph91.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELin1ELi1ELi1ELin1EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.fh, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %.07284.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.du, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.fg, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !72
  %i.ee = fadd double %.07284.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.ed
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !72
  %i.ei = fadd double %i.ee, %i.eh
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = load double, ptr %i.ek, align 8, !tbaa !72
  %i.em = fadd double %i.ei, %i.el
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !72
  %i.eq = fadd double %i.em, %i.ep
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  %i.et = load double, ptr %i.es, align 8, !tbaa !72
  %i.eu = fadd double %i.eq, %i.et
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.05385.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 40
end_hunk_2
begin_hunk_3_@_ZN3igl6opengl4glfw6Viewer10mouse_moveEii:bb.a
  %i.ce = extractelement <4 x double> %i.ca, i64 2
  %i.cf = extractelement <4 x double> %i.ca, i64 3
  call void @_ZN3igl9trackballIffEEvdddRKN5Eigen10QuaternionIT_Li0EEEddddRNS2_IT0_Li0EEE(double noundef %i.bb, double noundef %i.be, double noundef 2.000000e+00, ptr noundef nonnull align 16 dereferenceable(16) %i.bf, double noundef %i.cc, double noundef %i.cd, double noundef %i.ce, double noundef %i.cf, ptr noundef nonnull align 16 dereferenceable(16) %i.cb)
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %i.av, i64 208
  %i.ch = getelementptr inbounds nuw i8, ptr %i.av, i64 216
  %i.ci = load float, ptr %i.ch, align 8, !tbaa !69
  %i.cj = fptosi float %i.ci to i32
  %i.ck = getelementptr inbounds nuw i8, ptr %i.av, i64 220
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !69 ; 2 uses
  %i.cm = fptosi float %i.cl to i32
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !246
  %i.cq = sitofp i32 %i.cp to float
  %i.cr = load float, ptr %i.cg, align 8, !tbaa !69 ; 2 uses
  %i.cs = fsub float %i.cq, %i.cr
  %i.ct = fptosi float %i.cs to i32
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !247
  %i.cw = sitofp i32 %i.cv to float
  %i.cx = load i32, ptr %i.d, align 4, !tbaa !65
  %i.cy = sitofp i32 %i.cx to float
  %i.cz = getelementptr inbounds nuw i8, ptr %i.av, i64 212
  %i.da = load float, ptr %i.cz, align 4, !tbaa !69
  %i.db = fsub float %i.cy, %i.da
  %i.dc = fsub float %i.cl, %i.db                 ; 2 uses
  %i.dd = fadd float %i.dc, %i.cw
  %i.de = fptosi float %i.dd to i32
  %i.df = sitofp i32 %1 to float
  %i.dg = fsub float %i.df, %i.cr
  %i.dh = fptosi float %i.dg to i32
  %i.di = sitofp i32 %2 to float
  %i.dj = fadd float %i.dc, %i.di
  %i.dk = fptosi float %i.dj to i32
  %i.dl = getelementptr inbounds nuw i8, ptr %i.av, i64 80
  call void @_ZN3igl26two_axis_valuator_fixed_upIffEEviidRKN5Eigen10QuaternionIT_Li0EEEiiiiRNS2_IT0_Li0EEE(i32 noundef %i.cj, i32 noundef %i.cm, double noundef 2.000000e+00, ptr noundef nonnull align 16 dereferenceable(16) %i.cn, i32 noundef %i.ct, i32 noundef %i.de, i32 noundef %i.dh, i32 noundef %i.dk, ptr noundef nonnull align 16 dereferenceable(16) %i.dl)
  br label %bb.l

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.dm = sitofp i32 %1 to float
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.do = load i64, ptr %i.dn, align 16, !tbaa !68
  %.phi.trans.insert.i81 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.pre.i82 = load ptr, ptr %.phi.trans.insert.i81, align 8, !tbaa !67
  %sext.i83 = shl i64 %i.do, 32
  %i.dp = ashr exact i64 %sext.i83, 32
  %i.dq = getelementptr inbounds nuw [544 x i8], ptr %.pre.i82, i64 %i.dp ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 208
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 220
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !69
  %i.du = sitofp i32 %2 to float
  %i.dv = fsub float %i.dt, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store float %i.dm, ptr %4, align 4, !tbaa !69
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.dv, ptr %i.dx, align 4, !tbaa !69
  %i.dy = load float, ptr %i.dw, align 16, !tbaa !69
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.dy, ptr %i.dz, align 4, !tbaa !69
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dq, i64 224
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dq, i64 288
  call void @_ZN3igl9unprojectIfEEN5Eigen6MatrixIT_Li3ELi1ELi0ELi3ELi1EEERKS4_RKNS2_IS3_Li4ELi4ELi0ELi4ELi4EEES9_RKNS2_IS3_Li4ELi1ELi0ELi4ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.13") align 4 %3, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 16 dereferenceable(64) %i.ea, ptr noundef nonnull align 16 dereferenceable(64) %i.eb, ptr noundef nonnull align 16 dereferenceable(16) %i.dr)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ed = load i64, ptr %i.dn, align 16, !tbaa !68
  %.pre.i94 = load ptr, ptr %.phi.trans.insert.i81, align 8, !tbaa !67
  %sext.i95 = shl i64 %i.ed, 32
  %i.ee = ashr exact i64 %sext.i95, 32
  %i.ef = getelementptr inbounds nuw [544 x i8], ptr %.pre.i94, i64 %i.ee ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 208
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 220
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !69
  %i.ej = load <2 x i32>, ptr %i.ec, align 8, !tbaa !65
  %i.ek = sitofp <2 x i32> %i.ej to <2 x float>   ; 2 uses
  %i.el = extractelement <2 x float> %i.ek, i64 1
  %i.em = fsub float %i.ei, %i.el
  %i.en = extractelement <2 x float> %i.ek, i64 0
  store float %i.en, ptr %6, align 4, !tbaa !69
  %i.eo = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.em, ptr %i.eo, align 4, !tbaa !69
  %i.ep = load float, ptr %i.dw, align 16, !tbaa !69
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.ep, ptr %i.eq, align 4, !tbaa !69
  %i.er = getelementptr inbounds nuw i8, ptr %i.ef, i64 224
  %i.es = getelementptr inbounds nuw i8, ptr %i.ef, i64 288
  call void @_ZN3igl9unprojectIfEEN5Eigen6MatrixIT_Li3ELi1ELi0ELi3ELi1EEERKS4_RKNS2_IS3_Li4ELi4ELi0ELi4ELi4EEES9_RKNS2_IS3_Li4ELi1ELi0ELi4ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.13") align 4 %5, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 16 dereferenceable(64) %i.er, ptr noundef nonnull align 16 dereferenceable(64) %i.es, ptr noundef nonnull align 16 dereferenceable(16) %i.eg)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.et = load float, ptr %3, align 4, !tbaa !69
  %i.eu = load float, ptr %5, align 4, !tbaa !69
  %i.ev = fsub float %i.et, %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ey = load float, ptr %i.ew, align 4, !tbaa !69
  %i.ez = load float, ptr %i.ex, align 4, !tbaa !69
  %i.fa = fsub float %i.ey, %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fd = load float, ptr %i.fb, align 4, !tbaa !69
  %i.fe = load float, ptr %i.fc, align 4, !tbaa !69
  %i.ff = fsub float %i.fd, %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.fh = load i64, ptr %i.dn, align 16, !tbaa !68
  %.pre.i106 = load ptr, ptr %.phi.trans.insert.i81, align 8, !tbaa !67
  %sext.i107 = shl i64 %i.fh, 32
  %i.fi = ashr exact i64 %sext.i107, 32
  %i.fj = getelementptr inbounds nuw [544 x i8], ptr %.pre.i106, i64 %i.fi ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 120
  %i.fl = load float, ptr %i.fg, align 4, !tbaa !69
  %i.fm = fadd float %i.ev, %i.fl
  store float %i.fm, ptr %i.fk, align 4, !tbaa !69
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 124
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.fp = load float, ptr %i.fo, align 8, !tbaa !69
  %i.fq = fadd float %i.fa, %i.fp
  store float %i.fq, ptr %i.fn, align 4, !tbaa !69
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fj, i64 128
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !69
  %i.fu = fadd float %i.ff, %i.ft
  store float %i.fu, ptr %i.fr, align 4, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.l

bb.k:                                             ; preds = %bb.f
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !246
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !247
  %.neg122 = add i32 %2, %1
  %i.fz = add i32 %i.fw, %i.fy
  %i.ga = sub i32 %.neg122, %i.fz
  %i.gb = sitofp i32 %i.ga to float
  %i.gc = fmul nnan float %i.gb, 1.000000e-03
  %i.gd = fadd nnan float %i.gc, 1.000000e+00
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.gf = load i64, ptr %i.ge, align 16, !tbaa !68
  %.phi.trans.insert.i108 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i109 = load ptr, ptr %.phi.trans.insert.i108, align 8, !tbaa !67
  %sext.i110 = shl i64 %i.gf, 32
  %i.gg = ashr exact i64 %sext.i110, 32
  %i.gh = getelementptr inbounds nuw [544 x i8], ptr %.pre.i109, i64 %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 100 ; 2 uses
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !249
  %i.gk = fmul float %i.gj, %i.gd
  store float %i.gk, ptr %i.gi, align 4, !tbaa !249
  store i32 %1, ptr %i.fv, align 8, !tbaa !246
  store i32 %2, ptr %i.fx, align 4, !tbaa !247
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.h, %bb.i, %bb.g, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.e, %bb.l, %_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEiiEEclES4_ii.exit
  ret i1 true
}

declare void @_ZN3igl9trackballIffEEvdddRKN5Eigen10QuaternionIT_Li0EEEddddRNS2_IT0_Li0EEE(double noundef, double noundef, double noundef, ptr noundef nonnull align 16 dereferenceable(16), double noundef, double noundef, double noundef, double noundef, ptr noundef nonnull align 16 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN3igl26two_axis_valuator_fixed_upIffEEviidRKN5Eigen10QuaternionIT_Li0EEEiiiiRNS2_IT0_Li0EEE(i32 noundef, i32 noundef, double noundef, ptr noundef nonnull align 16 dereferenceable(16), i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 16 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN3igl9unprojectIfEEN5Eigen6MatrixIT_Li3ELi1ELi0ELi3ELi1EEERKS4_RKNS2_IS3_Li4ELi4ELi0ELi4ELi4EEES9_RKNS2_IS3_Li4ELi1ELi0ELi4ELi1EEE(ptr dead_on_unwind writable sret(%"class.Eigen::Matrix.13") align 4, ptr noundef nonnull align 4 dereferenceable(12), ptr noundef nonnull align 16 dereferenceable(64), ptr noundef nonnull align 16 dereferenceable(64), ptr noundef nonnull align 16 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN3igl6opengl4glfw6Viewer12mouse_scrollEf(ptr noundef nonnull align 16 dereferenceable(616) %0, float noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.e = load i8, ptr %i.d, align 16, !tbaa !148, !range !128, !noundef !129
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !26
  call void @glfwGetFramebufferSize(ptr noundef %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !66  ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !67   ; 3 uses
  %.not.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i, label %_ZN3igl6opengl4glfw6Viewer19select_hovered_coreEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 544
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.r = load i32, ptr %i.q, align 16, !tbaa !228
  %i.s = sitofp i32 %i.r to float                 ; 2 uses
  %i.t = load i32, ptr %i.c, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 148
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.v = getelementptr inbounds nuw [544 x i8], ptr %i.l, i64 %indvars.iv.i ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 208
  %.sroa.0.0.copyload.i = load float, ptr %i.w, align 16 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 216
  %.sroa.8.0.copyload.i = load float, ptr %.sroa.8.0..sroa_idx.i, align 8
  %i.x = fcmp olt float %.sroa.0.0.copyload.i, %i.s
  %i.y = fadd float %.sroa.0.0.copyload.i, %.sroa.8.0.copyload.i
  %i.z = fcmp ogt float %i.y, %i.s
  %or.cond.i = select i1 %i.x, i1 %i.z, i1 false
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 220
  %.sroa.9.0.copyload.i = load float, ptr %.sroa.9.0..sroa_idx.i, align 4, !tbaa !145
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 212
  %.sroa.6.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i, align 4 ; 2 uses
  %i.aa = load i32, ptr %i.u, align 4, !tbaa !229
  %i.ab = sub nsw i32 %i.t, %i.aa
  %i.ac = sitofp i32 %i.ab to float               ; 2 uses
  %i.ad = fcmp olt float %.sroa.6.0.copyload.i, %i.ac
  %i.ae = fadd float %.sroa.9.0.copyload.i, %.sroa.6.0.copyload.i
  %i.af = fcmp ogt float %i.ae, %i.ac
  %or.cond11.i = select i1 %i.ad, i1 %i.af, i1 false
  br i1 %or.cond11.i, label %.critedge.i, label %bb.e

.critedge.i:                                      ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %indvars.iv.i, ptr %i.ag, align 16, !tbaa !68
  br label %_ZN3igl6opengl4glfw6Viewer19select_hovered_coreEv.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.p
  br i1 %exitcond.not.i, label %_ZN3igl6opengl4glfw6Viewer19select_hovered_coreEv.exit, label %bb.c, !llvm.loop !230

_ZN3igl6opengl4glfw6Viewer19select_hovered_coreEv.exit: ; preds = %bb.e, %bb.b, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.f

bb.f:                                             ; preds = %_ZN3igl6opengl4glfw6Viewer19select_hovered_coreEv.exit, %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !168
  %i.aj = fadd float %1, %i.ai
  store float %i.aj, ptr %i.ah, align 4, !tbaa !168
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !14
  %i.an = load ptr, ptr %i.ak, align 16, !tbaa !18 ; 2 uses
  %.not = icmp eq ptr %i.am, %i.an
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.ao = add i32 %.01226, 1                      ; 2 uses
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !14
  %i.ar = load ptr, ptr %i.ak, align 16, !tbaa !18 ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 3
  %i.aw = icmp ugt i64 %i.av, %i.ap
  br i1 %i.aw, label %.lr.ph, label %._crit_edge, !llvm.loop !250

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %i.ax = phi ptr [ %i.ar, %bb.g ], [ %i.an, %bb.f ]
  %i.ay = phi i64 [ %i.ap, %bb.g ], [ 0, %bb.f ]
  %.01226 = phi i32 [ %i.ao, %bb.g ], [ 0, %bb.f ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !19 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !21
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 120
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call noundef zeroext i1 %i.bd(ptr noundef nonnull align 8 dereferenceable(48) %i.ba, float noundef %1)
  br i1 %i.be, label %.loopexit, label %bb.g

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !74
  %.not.i.i.not = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.not, label %bb.h, label %_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEfEEclES4_f.exit

_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEfEEclES4_f.exit: ; preds = %._crit_edge
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store float %1, ptr %i.a, align 4, !tbaa !69
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.bj = load ptr, ptr %i.bi, align 16, !tbaa !251
  %i.bk = call noundef zeroext i1 %i.bj(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull align 16 dereferenceable(616) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a), !inline_history !252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bl = fcmp oeq float %1, 0.000000e+00
  %or.cond.not = or i1 %i.bl, %i.bk
  br i1 %or.cond.not, label %.loopexit, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %.old = fcmp une float %1, 0.000000e+00
  br i1 %.old, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEfEEclES4_f.exit, %bb.h
  %i.bm = fcmp ogt float %1, 0.000000e+00
  %i.bn = select i1 %i.bm, float 1.050000e+00, float f0x3F733333
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bp = load i64, ptr %i.bo, align 16, !tbaa !68
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !67
  %sext.i = shl i64 %i.bp, 32
  %i.bq = ashr exact i64 %sext.i, 32
  %i.br = getelementptr inbounds nuw [544 x i8], ptr %.pre.i, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 100 ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !249
  %i.bu = fmul float %i.bn, %i.bt                 ; 2 uses
  %i.bv = fcmp ogt float %i.bu, 1.000000e-01
  %i.bw = select i1 %i.bv, float %i.bu, float 1.000000e-01
  store float %i.bw, ptr %i.bs, align 4, !tbaa !249
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.h, %bb.i, %_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEfEEclES4_f.exit
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN3igl6opengl4glfw6Viewer10load_sceneEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(616) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @_ZN3igl16file_dialog_openB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !172  ; 5 uses
  %i.d = icmp ne i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !170
  %i.f = load ptr, ptr %1, align 8, !tbaa !61     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.c, ptr %i.a, align 8, !tbaa !171
  %i.g = icmp ugt i64 %i.c, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %._crit_edge.i.i.thread unwind label %bb.g ; 2 uses

._crit_edge.i.i.thread:                           ; preds = %.noexc.i
  store ptr %i.h, ptr %2, align 8, !tbaa !61
  %i.i = load i64, ptr %i.a, align 8, !tbaa !171
  store i64 %i.i, ptr %i.e, align 8, !tbaa !145
  br label %bb.d

._crit_edge.i.i:                                  ; preds = %bb.b
  %cond = icmp eq i64 %i.c, 1
  br i1 %cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.f, align 1, !tbaa !145
  store i8 %i.j, ptr %i.e, align 8, !tbaa !145
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %i.k = phi ptr [ %i.h, %._crit_edge.i.i.thread ], [ %i.e, %._crit_edge.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.f, i64 %i.c, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !171  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !172
  %i.n = load ptr, ptr %2, align 8, !tbaa !61
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.p = invoke noundef zeroext i1 @_ZN3igl6opengl4glfw6Viewer10load_sceneENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 16 dereferenceable(616) %0, ptr noundef nonnull align 8 %2)
          to label %bb.f unwind label %bb.h       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %2, align 8, !tbaa !61     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.s = load i64, ptr %i.e, align 8, !tbaa !145
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %.noexc.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.h:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !61     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.e
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.h
  %i.y = load i64, ptr %i.e, align 8, !tbaa !145
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.a
  %i.aa = load ptr, ptr %1, align 8, !tbaa !61    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !145
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret i1 %i.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.g
  %.pn = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.v, %bb.h ]
  %i.af = load ptr, ptr %1, align 8, !tbaa !61    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !145
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #35
end_hunk_3
begin_hunk_4_@_ZN3igl6opengl4glfw6Viewer21open_dialog_load_meshEv:bb.a
  %i.z = load i64, ptr %i.x, align 8, !tbaa !145
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void

bb.j:                                             ; preds = %.noexc.i, %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

bb.k:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %2, align 8, !tbaa !61    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.f
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.k
  %i.af = load i64, ptr %i.f, align 8, !tbaa !145
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.j ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ], [ %i.ac, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.ah = load ptr, ptr %1, align 8, !tbaa !61    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !145
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl6opengl4glfw6Viewer21open_dialog_save_meshEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(616) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @_ZN3igl16file_dialog_saveB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !172
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.e = load ptr, ptr %1, align 8, !tbaa !61     ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !170
  %i.g = icmp eq ptr %i.e, null
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.16) #34
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.h, ptr %i.a, align 8, !tbaa !171
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc4 unwind label %bb.j    ; 2 uses

.noexc4:                                          ; preds = %.noexc.i
  store ptr %i.j, ptr %2, align 8, !tbaa !61
  %i.k = load i64, ptr %i.a, align 8, !tbaa !171
  store i64 %i.k, ptr %i.f, align 8, !tbaa !145
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc4, %bb.d
  %i.l = phi ptr [ %i.j, %.noexc4 ], [ %i.f, %bb.d ] ; 2 uses
  switch i64 %i.h, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.e, align 1, !tbaa !145
  store i8 %i.m, ptr %i.l, align 1, !tbaa !145
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr nonnull align 1 %i.e, i64 %i.h, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.n = load i64, ptr %i.a, align 8, !tbaa !171  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !172
  %i.p = load ptr, ptr %2, align 8, !tbaa !61
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.r = invoke noundef zeroext i1 @_ZN3igl6opengl4glfw6Viewer17save_mesh_to_fileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 16 dereferenceable(616) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.k       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %2, align 8, !tbaa !61     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.f
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.u = load i64, ptr %i.f, align 8, !tbaa !145
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = load ptr, ptr %1, align 8, !tbaa !61     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.i
  %i.z = load i64, ptr %i.x, align 8, !tbaa !145
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void

bb.j:                                             ; preds = %.noexc.i, %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

bb.k:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %2, align 8, !tbaa !61    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.f
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.k
  %i.af = load i64, ptr %i.f, align 8, !tbaa !145
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.j ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ], [ %i.ac, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.ah = load ptr, ptr %1, align 8, !tbaa !61    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !145
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i64 0, -1) i64 @_ZNK3igl6opengl4glfw6Viewer10mesh_indexEi(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(616) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !195 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !169  ; 3 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 1488
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.0710 = phi i64 [ %i.m, %bb.b ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.i = getelementptr inbounds nuw [1488 x i8], ptr %i.d, i64 %.0710
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 672
  %i.k = load i32, ptr %i.j, align 8, !tbaa !162
  %i.l = icmp eq i32 %i.k, %1
  br i1 %i.l, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.m = add nuw i64 %.0710, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !199

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %i.n = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %.0710, %.lr.ph ]
  ret i64 %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(1488) ptr @_ZNK3igl6opengl4glfw6Viewer4dataEi(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(616) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 16, !tbaa !159
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !169
  br label %_ZNK3igl6opengl4glfw6Viewer10mesh_indexEi.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !195 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !169  ; 6 uses
  %.not.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i, label %_ZNK3igl6opengl4glfw6Viewer10mesh_indexEi.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 1488
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %.0710.i = phi i64 [ %i.p, %bb.d ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw [1488 x i8], ptr %i.g, i64 %.0710.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 672
  %i.n = load i32, ptr %i.m, align 8, !tbaa !162
  %i.o = icmp eq i32 %i.n, %1
  br i1 %i.o, label %_ZNK3igl6opengl4glfw6Viewer10mesh_indexEi.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.p = add nuw i64 %.0710.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.p, %i.k
  br i1 %exitcond.not.i, label %_ZNK3igl6opengl4glfw6Viewer10mesh_indexEi.exit, label %.lr.ph.i, !llvm.loop !199

_ZNK3igl6opengl4glfw6Viewer10mesh_indexEi.exit:   ; preds = %bb.d, %.lr.ph.i, %bb.c, %bb.b
  %i.q = phi ptr [ %.pre, %bb.b ], [ %i.g, %bb.c ], [ %i.g, %.lr.ph.i ], [ %i.g, %bb.d ]
  %.0.in = phi i64 [ %i.c, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ %.0710.i, %.lr.ph.i ]
  %sext = shl i64 %.0.in, 32
  %i.r = ashr exact i64 %sext, 32
  %i.s = getelementptr inbounds nuw [1488 x i8], ptr %i.q, i64 %i.r
  ret ptr %i.s
}

declare void @_ZN3igl6opengl10ViewerData11set_visibleEbj(ptr noundef nonnull align 8 dereferenceable(1488), i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN3igl6opengl4glfw6Viewer10erase_meshEm(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(616) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !195
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !169  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp ne i64 %i.g, 1488                   ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw [1488 x i8], ptr %i.d, i64 %1
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 680
  tail call void @_ZN3igl6opengl6MeshGL4freeEv(ptr noundef nonnull align 8 dereferenceable(804) %i.j)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.l = getelementptr inbounds [1488 x i8], ptr %i.k, i64 %1 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1488 ; 3 uses
  %i.n = load ptr, ptr %i.b, align 16, !tbaa !9   ; 4 uses
  %.not.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i, label %_ZNSt6vectorIN3igl6opengl10ViewerDataESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %_ZNSt6vectorIN3igl6opengl10ViewerDataESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.c
  %i.s = udiv exact i64 %i.q, 1488
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.i.i ], [ %i.s, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i ], [ %i.l, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i ], [ %i.m, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %i.t = tail call noundef nonnull align 8 dereferenceable(1488) ptr @_ZN3igl6opengl10ViewerDataaSEOS1_(ptr noundef nonnull align 8 dereferenceable(1488) %.0811.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1488) %.0910.i.i.i.i.i.i.i) #30 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 1488
  %i.v = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 1488
  %i.w = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.x = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3igl6opengl10ViewerDataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit.i.i, !llvm.loop !258

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3igl6opengl10ViewerDataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.b, align 16, !tbaa !195
  br label %_ZNSt6vectorIN3igl6opengl10ViewerDataESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit

_ZNSt6vectorIN3igl6opengl10ViewerDataESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit: ; preds = %bb.b, %bb.c, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3igl6opengl10ViewerDataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit.i.i
  %i.y = phi ptr [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3igl6opengl10ViewerDataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit.i.i ], [ %i.n, %bb.c ], [ %i.n, %bb.b ]
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -1488 ; 2 uses
  store ptr %i.z, ptr %i.b, align 16, !tbaa !195
  tail call void @_ZN3igl6opengl10ViewerDataD2Ev(ptr noundef nonnull align 8 dead_on_return(1488) dereferenceable(1488) %i.z) #30
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 16, !tbaa !159 ; 3 uses
  %.not = icmp ult i64 %i.ab, %1
  %.not5 = icmp eq i64 %i.ab, 0
  %or.cond = or i1 %.not, %.not5
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN3igl6opengl10ViewerDataESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit
  %i.ac = add i64 %i.ab, -1
  store i64 %i.ac, ptr %i.aa, align 16, !tbaa !159
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN3igl6opengl10ViewerDataESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit, %bb.d, %bb.a
  ret i1 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i64 0, -1) i64 @_ZNK3igl6opengl4glfw6Viewer10core_indexEi(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(616) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !66  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !67   ; 3 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 544
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.0710 = phi i64 [ %i.l, %bb.b ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.i = getelementptr inbounds nuw [544 x i8], ptr %i.d, i64 %.0710
  %i.j = load i32, ptr %i.i, align 16, !tbaa !119
  %i.k = icmp eq i32 %i.j, %1
  br i1 %i.k, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.l = add nuw i64 %.0710, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !126

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %i.m = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %.0710, %.lr.ph ]
  ret i64 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull align 16 dereferenceable(544) ptr @_ZNK3igl6opengl4glfw6Viewer4coreEj(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(616) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load i64, ptr %i.b, align 16, !tbaa !68
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !67
  br label %_ZNK3igl6opengl4glfw6Viewer10core_indexEi.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !66  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !67   ; 6 uses
  %.not.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i, label %_ZNK3igl6opengl4glfw6Viewer10core_indexEi.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 544
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %.0710.i = phi i64 [ %i.o, %bb.d ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw [544 x i8], ptr %i.g, i64 %.0710.i
  %i.m = load i32, ptr %i.l, align 16, !tbaa !119
  %i.n = icmp eq i32 %i.m, %1
  br i1 %i.n, label %_ZNK3igl6opengl4glfw6Viewer10core_indexEi.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.o = add nuw i64 %.0710.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.o, %i.k
  br i1 %exitcond.not.i, label %_ZNK3igl6opengl4glfw6Viewer10core_indexEi.exit, label %.lr.ph.i, !llvm.loop !126

_ZNK3igl6opengl4glfw6Viewer10core_indexEi.exit:   ; preds = %bb.d, %.lr.ph.i, %bb.c, %bb.b
  %i.p = phi ptr [ %.pre, %bb.b ], [ %i.g, %bb.c ], [ %i.g, %.lr.ph.i ], [ %i.g, %bb.d ]
  %.0.in = phi i64 [ %i.c, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ %.0710.i, %.lr.ph.i ]
  %sext = shl i64 %.0.in, 32
  %i.q = ashr exact i64 %sext, 32
  %i.r = getelementptr inbounds nuw [544 x i8], ptr %i.p, i64 %i.q
  ret ptr %i.r
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN3igl6opengl4glfw6Viewer10erase_coreEm(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(616) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !66
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp ne i64 %i.g, 544                    ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw [544 x i8], ptr %i.d, i64 %1
  tail call void @_ZN3igl6opengl10ViewerCore4shutEv(ptr noundef nonnull align 16 dereferenceable(544) %i.i)
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.k = getelementptr inbounds [544 x i8], ptr %i.j, i64 %1 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 544 ; 3 uses
  %i.m = load ptr, ptr %i.b, align 16, !tbaa !12  ; 4 uses
  %.not.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i, label %_ZNSt6vectorIN3igl6opengl10ViewerCoreESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %_ZNSt6vectorIN3igl6opengl10ViewerCoreESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.c
  %i.r = udiv exact i64 %i.p, 544
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i.i.i ], [ %i.r, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i.i ], [ %i.k, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 19 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ], [ %i.l, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 19 uses
  %i.s = load i32, ptr %.0910.i.i.i.i.i.i.i, align 16, !tbaa !119
  store i32 %i.s, ptr %.0811.i.i.i.i.i.i.i, align 16, !tbaa !119
  %i.t = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.t, ptr noundef nonnull align 16 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !164
  %i.v = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.v, ptr noundef nonnull align 16 dereferenceable(12) %i.w, i64 12, i1 false), !tbaa.struct !165
  %i.x = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 44
  %i.y = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.x, ptr noundef nonnull align 4 dereferenceable(32) %i.y, i64 32, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 80
  %i.aa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.z, ptr noundef nonnull align 16 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !164
  %i.ab = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %i.ab, ptr noundef nonnull align 16 dereferenceable(9) %i.ac, i64 9, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 108
  %i.ae = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 108
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ad, ptr noundef nonnull align 4 dereferenceable(12) %i.ae, i64 12, i1 false), !tbaa.struct !165
  %i.af = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 120
  %i.ag = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.af, ptr noundef nonnull align 8 dereferenceable(12) %i.ag, i64 12, i1 false), !tbaa.struct !165
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 132
  %i.ai = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 132
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ah, ptr noundef nonnull align 4 dereferenceable(12) %i.ai, i64 12, i1 false), !tbaa.struct !165
  %i.aj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 144
  %i.ak = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.aj, ptr noundef nonnull align 16 dereferenceable(12) %i.ak, i64 12, i1 false), !tbaa.struct !165
  %i.al = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 156
  %i.am = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 156
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.al, ptr noundef nonnull align 4 dereferenceable(12) %i.am, i64 12, i1 false), !tbaa.struct !165
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 168
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.an, ptr noundef nonnull align 8 dereferenceable(28) %i.ao, i64 28, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 208
  %i.aq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 208
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ap, ptr noundef nonnull align 16 dereferenceable(16) %i.aq, i64 16, i1 false), !tbaa.struct !164
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 224
  %i.as = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 224
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ar, ptr noundef nonnull align 16 dereferenceable(64) %i.as, i64 64, i1 false), !tbaa.struct !166
  %i.at = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 288
  %i.au = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.at, ptr noundef nonnull align 16 dereferenceable(64) %i.au, i64 64, i1 false), !tbaa.struct !166
  %i.av = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 352
  %i.aw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 352
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.av, ptr noundef nonnull align 16 dereferenceable(64) %i.aw, i64 64, i1 false), !tbaa.struct !166
  %i.ax = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 416
  %i.ay = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 416
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ax, ptr noundef nonnull align 16 dereferenceable(64) %i.ay, i64 64, i1 false), !tbaa.struct !166
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 480
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 480
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.az, ptr noundef nonnull align 16 dereferenceable(64) %i.ba, i64 64, i1 false), !tbaa.struct !166
  %i.bb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 544
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 544
  %i.bd = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.be = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.be, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3igl6opengl10ViewerCoreESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit.i.i, !llvm.loop !259

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3igl6opengl10ViewerCoreESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.b, align 16, !tbaa !66
  br label %_ZNSt6vectorIN3igl6opengl10ViewerCoreESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit

_ZNSt6vectorIN3igl6opengl10ViewerCoreESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit: ; preds = %bb.b, %bb.c, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3igl6opengl10ViewerCoreESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit.i.i
  %i.bf = phi ptr [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN3igl6opengl10ViewerCoreESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.loopexit.i.i ], [ %i.m, %bb.c ], [ %i.m, %bb.b ]
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -544
  store ptr %i.bg, ptr %i.b, align 16, !tbaa !66
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 16, !tbaa !68 ; 3 uses
  %.not = icmp ult i64 %i.bi, %1
  %.not5 = icmp eq i64 %i.bi, 0
  %or.cond = or i1 %.not, %.not5
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN3igl6opengl10ViewerCoreESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit
  %i.bj = add i64 %i.bi, -1
  store i64 %i.bj, ptr %i.bh, align 16, !tbaa !68
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN3igl6opengl10ViewerCoreESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit, %bb.d, %bb.a
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN3igl6opengl4glfw6Viewer11append_coreEN5Eigen6MatrixIfLi4ELi1ELi0ELi4ELi1EEEb(ptr noundef nonnull align 16 dereferenceable(616) %0, ptr nofree noundef readonly align 16 captures(none) dead_on_return %1, i1 noundef zeroext %2) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.c = load i64, ptr %i.b, align 16, !tbaa !68
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !67
  %sext.i = shl i64 %i.c, 32
  %i.d = ashr exact i64 %sext.i, 32
  %i.e = getelementptr inbounds nuw [544 x i8], ptr %.pre.i, i64 %i.d ; 19 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !66  ; 20 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !163
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %i.e, align 16, !tbaa !119
  store i32 %i.j, ptr %i.g, align 16, !tbaa !119
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.k, ptr noundef nonnull align 16 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !164
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.m, ptr noundef nonnull align 16 dereferenceable(12) %i.n, i64 12, i1 false), !tbaa.struct !165
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.o, ptr noundef nonnull align 4 dereferenceable(32) %i.p, i64 32, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.q, ptr noundef nonnull align 16 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !164
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %i.s, ptr noundef nonnull align 16 dereferenceable(9) %i.t, i64 9, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 108
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 108
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.u, ptr noundef nonnull align 4 dereferenceable(12) %i.v, i64 12, i1 false), !tbaa.struct !165
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.w, ptr noundef nonnull align 8 dereferenceable(12) %i.x, i64 12, i1 false), !tbaa.struct !165
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 132
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 132
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.y, ptr noundef nonnull align 4 dereferenceable(12) %i.z, i64 12, i1 false), !tbaa.struct !165
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.aa, ptr noundef nonnull align 16 dereferenceable(12) %i.ab, i64 12, i1 false), !tbaa.struct !165
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 156
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 156
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ac, ptr noundef nonnull align 4 dereferenceable(12) %i.ad, i64 12, i1 false), !tbaa.struct !165
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ae, ptr noundef nonnull align 8 dereferenceable(28) %i.af, i64 28, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ag, ptr noundef nonnull align 16 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !164
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ai, ptr noundef nonnull align 16 dereferenceable(64) %i.aj, i64 64, i1 false), !tbaa.struct !166
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ak, ptr noundef nonnull align 16 dereferenceable(64) %i.al, i64 64, i1 false), !tbaa.struct !166
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 352
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.am, ptr noundef nonnull align 16 dereferenceable(64) %i.an, i64 64, i1 false), !tbaa.struct !166
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 416
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ao, ptr noundef nonnull align 16 dereferenceable(64) %i.ap, i64 64, i1 false), !tbaa.struct !166
end_hunk_4
