Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/Viewer?download=true
inline.NumInlined: 3854
inline.NumDeleted: 1142
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_ZN3igl6opengl4glfw6Viewer11launch_initEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii:bb.a
  %i.bh = tail call i32 @gladLoadGLLoader(ptr noundef nonnull @glfwGetProcAddress)
  %.not40 = icmp eq i32 %i.bh, 0
  br i1 %.not40, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.v

bb.o:                                             ; preds = %bb.m
  %i.bi = load ptr, ptr %i.bg, align 16, !tbaa !75
  tail call void @glfwSetInputMode(ptr noundef %i.bi, i32 noundef 208897, i32 noundef 212993)
  store ptr %0, ptr @_ZL8__viewer, align 8, !tbaa !86
  %i.bj = load ptr, ptr %i.bg, align 16, !tbaa !75
  %i.bk = tail call ptr @glfwSetKeyCallback(ptr noundef %i.bj, ptr noundef nonnull @_ZL17glfw_key_callbackP10GLFWwindowiiii) ; 0 uses
  %i.bl = load ptr, ptr %i.bg, align 16, !tbaa !75
  %i.bm = tail call ptr @glfwSetCursorPosCallback(ptr noundef %i.bl, ptr noundef nonnull @_ZL15glfw_mouse_moveP10GLFWwindowdd) ; 0 uses
  %i.bn = load ptr, ptr %i.bg, align 16, !tbaa !75
  %i.bo = tail call ptr @glfwSetWindowSizeCallback(ptr noundef %i.bn, ptr noundef nonnull @_ZL16glfw_window_sizeP10GLFWwindowii) ; 0 uses
  %i.bp = load ptr, ptr %i.bg, align 16, !tbaa !75
  %i.bq = tail call ptr @glfwSetMouseButtonCallback(ptr noundef %i.bp, ptr noundef nonnull @_ZL16glfw_mouse_pressP10GLFWwindowiii) ; 0 uses
  %i.br = load ptr, ptr %i.bg, align 16, !tbaa !75
  %i.bs = tail call ptr @glfwSetScrollCallback(ptr noundef %i.br, ptr noundef nonnull @_ZL17glfw_mouse_scrollP10GLFWwindowdd) ; 0 uses
  %i.bt = load ptr, ptr %i.bg, align 16, !tbaa !75
  %i.bu = tail call ptr @glfwSetCharModsCallback(ptr noundef %i.bt, ptr noundef nonnull @_ZL23glfw_char_mods_callbackP10GLFWwindowji) ; 0 uses
  %i.bv = load ptr, ptr %i.bg, align 16, !tbaa !75
  %i.bw = tail call ptr @glfwSetDropCallback(ptr noundef %i.bv, ptr noundef nonnull @_ZL18glfw_drop_callbackP10GLFWwindowiPPKc) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %i.bx = load ptr, ptr %i.bg, align 16, !tbaa !75
  call void @glfwGetFramebufferSize(ptr noundef %i.bx, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  %i.by = load ptr, ptr %i.bg, align 16, !tbaa !75
  call void @glfwGetWindowSize(ptr noundef %i.by, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f)
  %i.bz = icmp slt <2 x i32> %i.bf, splat (i32 1)
  %i.ca = load i32, ptr %i.e, align 4             ; 2 uses
  %i.cb = uitofp <2 x i32> %i.bf to <2 x double>
  %i.cc = load i32, ptr %i.f, align 4             ; 2 uses
  %i.cd = uitofp nneg i32 %i.ca to double
  %i.ce = insertelement <2 x i32> poison, i32 %i.ca, i64 0
  %i.cf = insertelement <2 x i32> %i.ce, i32 %i.cc, i64 1 ; 2 uses
  %i.cg = icmp slt <2 x i32> %i.cf, splat (i32 1)
  %i.ch = select <2 x i1> %i.bz, <2 x i1> splat (i1 true), <2 x i1> %i.cg
  %i.ci = uitofp nneg i32 %i.cc to double
  %i.cj = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.ck = insertelement <2 x double> %i.cj, double %i.ci, i64 1
  %i.cl = fdiv <2 x double> %i.cb, %i.ck
  %i.cm = select <2 x i1> %i.ch, <2 x double> splat (double 1.000000e+00), <2 x double> %i.cl ; 3 uses
  %i.cn = extractelement <2 x double> %i.cm, i64 0
  store double %i.cn, ptr @_ZL8highdpiw, align 8, !tbaa !88
  %i.co = extractelement <2 x double> %i.cm, i64 1
  store double %i.co, ptr @_ZL8highdpih, align 8, !tbaa !88
  %i.cp = sitofp <2 x i32> %i.cf to <2 x double>
  %i.cq = fmul <2 x double> %i.cm, %i.cp
  %i.cr = fptosi <2 x double> %i.cq to <2 x i32>  ; 5 uses
  %i.cs = load ptr, ptr @_ZL8__viewer, align 8, !tbaa !86 ; 9 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !81
  %i.cw = load ptr, ptr %i.ct, align 8, !tbaa !82 ; 2 uses
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = icmp eq i64 %i.cz, 544
  br i1 %i.da, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.db = sitofp <2 x i32> %i.cr to <2 x float>
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 80
  %i.dd = load i64, ptr %i.dc, align 16, !tbaa !83
  %sext.i.i.i = shl i64 %i.dd, 32
  %i.de = ashr exact i64 %sext.i.i.i, 32
  %i.df = getelementptr inbounds nuw [544 x i8], ptr %i.cw, i64 %i.de ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 208
  store <2 x float> zeroinitializer, ptr %i.dg, align 16
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.df, i64 216
  store <2 x float> %i.db, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cs, i64 96 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cs, i64 104 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !37
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !38 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dj, %i.dk
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.q
  %i.dl = extractelement <2 x i32> %i.cr, i64 0
  %i.dm = extractelement <2 x i32> %i.cr, i64 1
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.q
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cs, i64 456
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !89
  %.not.i.i.not.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i.not.i.i, label %_ZL16glfw_window_sizeP10GLFWwindowii.exit, label %_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEiiEEclES4_ii.exit.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.dp = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %i.dk, %.lr.ph.i.i.preheader ]
  %i.dq = phi i64 [ %i.dx, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ]
  %.014.i.i = phi i32 [ %i.dw, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ]
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !40 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !42
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 88
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(48) %i.ds, i32 noundef %i.dl, i32 noundef %i.dm), !inline_history !233
  %i.dw = add i32 %.014.i.i, 1                    ; 2 uses
  %i.dx = zext i32 %i.dw to i64                   ; 2 uses
  %i.dy = load ptr, ptr %i.di, align 8, !tbaa !37
  %i.dz = load ptr, ptr %i.dh, align 8, !tbaa !38 ; 2 uses
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = ashr exact i64 %i.ec, 3
  %i.ee = icmp ugt i64 %i.ed, %i.dx
  br i1 %i.ee, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1

_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEiiEEclES4_ii.exit.i.i: ; preds = %._crit_edge.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cs, i64 440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.eg = extractelement <2 x i32> %i.cr, i64 0
  store i32 %i.eg, ptr %i.a, align 4, !tbaa !80
  %i.eh = extractelement <2 x i32> %i.cr, i64 1
  store i32 %i.eh, ptr %i.b, align 4, !tbaa !80
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cs, i64 464
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !90
  %i.ek = call noundef zeroext i1 %i.ej(ptr noundef nonnull align 8 dereferenceable(32) %i.ef, ptr noundef nonnull align 16 dereferenceable(616) %i.cs, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !inline_history !227 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZL16glfw_window_sizeP10GLFWwindowii.exit

_ZL16glfw_window_sizeP10GLFWwindowii.exit:        ; preds = %._crit_edge.i.i, %_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEiiEEclES4_ii.exit.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !33 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.eo = load ptr, ptr %i.en, align 16, !tbaa !33 ; 2 uses
  %.not8.i = icmp eq ptr %i.em, %i.eo
  br i1 %.not8.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_ZL16glfw_window_sizeP10GLFWwindowii.exit
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !89
  %.not.i.i.not.i = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.not.i, label %bb.r, label %_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEEEclES4_.exit.i

.lr.ph.i:                                         ; preds = %_ZL16glfw_window_sizeP10GLFWwindowii.exit, %.lr.ph.i
  %.sroa.05.09.i = phi ptr [ %i.er, %.lr.ph.i ], [ %i.em, %_ZL16glfw_window_sizeP10GLFWwindowii.exit ] ; 2 uses
  call void @_ZN3igl6opengl10ViewerCore4initEv(ptr noundef nonnull align 16 dereferenceable(544) %.sroa.05.09.i)
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 544 ; 2 uses
  %.not.i = icmp eq ptr %i.er, %i.eo
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEEEclES4_.exit.i: ; preds = %._crit_edge.i
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.eu = load ptr, ptr %i.et, align 16, !tbaa !91
  %i.ev = call noundef zeroext i1 %i.eu(ptr noundef nonnull align 8 dereferenceable(32) %i.es, ptr noundef nonnull align 16 dereferenceable(616) %0), !inline_history !228
  br i1 %i.ev, label %_ZN3igl6opengl4glfw6Viewer4initEv.exit, label %bb.r

bb.r:                                             ; preds = %_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEEEclES4_.exit.i, %._crit_edge.i
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !37
  %i.ez = load ptr, ptr %i.ew, align 16, !tbaa !38 ; 2 uses
  %.not.i.i51 = icmp eq ptr %i.ey, %i.ez
  br i1 %.not.i.i51, label %_ZN3igl6opengl4glfw6Viewer4initEv.exit, label %.lr.ph.i.i52

.lr.ph.i.i52:                                     ; preds = %bb.r, %.lr.ph.i.i52
  %i.fa = phi ptr [ %i.fk, %.lr.ph.i.i52 ], [ %i.ez, %bb.r ]
  %i.fb = phi i64 [ %i.fi, %.lr.ph.i.i52 ], [ 0, %bb.r ]
  %.04.i.i = phi i32 [ %i.fh, %.lr.ph.i.i52 ], [ 0, %bb.r ]
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fb
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !40 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !42
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(48) %i.fd, ptr noundef nonnull align 16 dereferenceable(616) %0), !inline_history !234
  %i.fh = add i32 %.04.i.i, 1                     ; 2 uses
  %i.fi = zext i32 %i.fh to i64                   ; 2 uses
  %i.fj = load ptr, ptr %i.ex, align 8, !tbaa !37
  %i.fk = load ptr, ptr %i.ew, align 16, !tbaa !38 ; 2 uses
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = ashr exact i64 %i.fn, 3
  %i.fp = icmp ugt i64 %i.fo, %i.fi
  br i1 %i.fp, label %.lr.ph.i.i52, label %_ZN3igl6opengl4glfw6Viewer4initEv.exit, !llvm.loop !2

_ZN3igl6opengl4glfw6Viewer4initEv.exit:           ; preds = %.lr.ph.i.i52, %_ZNKSt8functionIFbRN3igl6opengl4glfw6ViewerEEEclES4_.exit.i, %bb.r
  %i.fq = load ptr, ptr %i.el, align 8, !tbaa !33 ; 2 uses
  %i.fr = load ptr, ptr %i.en, align 16, !tbaa !33 ; 2 uses
  %.not6670 = icmp eq ptr %i.fq, %i.fr
  br i1 %.not6670, label %._crit_edge73, label %.lr.ph72

.lr.ph72:                                         ; preds = %_ZN3igl6opengl4glfw6Viewer4initEv.exit
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fu = load ptr, ptr %i.fs, align 8, !tbaa !31
  %i.fv = load ptr, ptr %i.ft, align 16, !tbaa !31
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %._crit_edge73, label %.lr.ph72.split

._crit_edge73:                                    ; preds = %._crit_edge, %.lr.ph72, %_ZN3igl6opengl4glfw6Viewer4initEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %bb.v

.lr.ph72.split:                                   ; preds = %.lr.ph72, %._crit_edge
  %.sroa.062.071 = phi ptr [ %i.fz, %._crit_edge ], [ %i.fq, %.lr.ph72 ] ; 2 uses
  %i.fx = load ptr, ptr %i.fs, align 8, !tbaa !31 ; 2 uses
  %i.fy = load ptr, ptr %i.ft, align 16, !tbaa !31 ; 2 uses
  %.not6768 = icmp eq ptr %i.fx, %i.fy
  br i1 %.not6768, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.u, %.lr.ph72.split
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.062.071, i64 544 ; 2 uses
  %.not66 = icmp eq ptr %i.fz, %i.fr
  br i1 %.not66, label %._crit_edge73, label %.lr.ph72.split, !llvm.loop !229

.lr.ph:                                           ; preds = %.lr.ph72.split, %bb.u
  %.sroa.058.069 = phi ptr [ %i.gp, %bb.u ], [ %i.fx, %.lr.ph72.split ] ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.058.069, i64 584
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !126
  %i.gc = load i32, ptr %.sroa.062.071, align 16, !tbaa !133 ; 2 uses
  %i.gd = and i32 %i.gc, %i.gb
  %.not41 = icmp eq i32 %i.gd, 0
  br i1 %.not41, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.lr.ph
  %i.ge = load ptr, ptr %i.en, align 16, !tbaa !81 ; 2 uses
  %5 = load ptr, ptr %i.el, align 8, !tbaa !82    ; 4 uses
  %.not.i.i53 = icmp eq ptr %i.ge, %5
  br i1 %.not.i.i53, label %_ZN3igl6opengl4glfw6Viewer4coreEj.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.s
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = ptrtoint ptr %5 to i64
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = sdiv exact i64 %i.gh, 544
  br label %.lr.ph.i.i54

.lr.ph.i.i54:                                     ; preds = %bb.t, %.lr.ph.preheader.i.i
  %.0710.i.i = phi i64 [ %i.gm, %bb.t ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.gj = getelementptr inbounds nuw [544 x i8], ptr %5, i64 %.0710.i.i
  %i.gk = load i32, ptr %i.gj, align 16, !tbaa !133
  %i.gl = icmp eq i32 %i.gk, %i.gc
  br i1 %i.gl, label %_ZN3igl6opengl4glfw6Viewer4coreEj.exit.loopexit, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i54
  %i.gm = add nuw i64 %.0710.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.gm, %i.gi
  br i1 %exitcond.not.i.i, label %_ZN3igl6opengl4glfw6Viewer4coreEj.exit.loopexit, label %.lr.ph.i.i54, !llvm.loop !3

_ZN3igl6opengl4glfw6Viewer4coreEj.exit.loopexit:  ; preds = %bb.t, %.lr.ph.i.i54
  %.0.in.i.ph = phi i64 [ 0, %bb.t ], [ %.0710.i.i, %.lr.ph.i.i54 ]
  %6 = shl i64 %.0.in.i.ph, 32
  %7 = ashr exact i64 %6, 32
  br label %_ZN3igl6opengl4glfw6Viewer4coreEj.exit

_ZN3igl6opengl4glfw6Viewer4coreEj.exit:           ; preds = %_ZN3igl6opengl4glfw6Viewer4coreEj.exit.loopexit, %bb.s
  %.0.in.i = phi i64 [ 0, %bb.s ], [ %7, %_ZN3igl6opengl4glfw6Viewer4coreEj.exit.loopexit ]
  %i.gn = getelementptr inbounds nuw [544 x i8], ptr %5, i64 %.0.in.i
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.058.069, i64 24
  call void @_ZN3igl6opengl10ViewerCore19align_camera_centerERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS3_IiLin1ELin1ELi0ELin1ELin1EEE(ptr noundef nonnull align 16 dereferenceable(544) %i.gn, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.058.069, ptr noundef nonnull align 8 dereferenceable(24) %i.go)
  br label %bb.u

bb.u:                                             ; preds = %_ZN3igl6opengl4glfw6Viewer4coreEj.exit, %.lr.ph
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.058.069, i64 1488 ; 2 uses
  %.not67 = icmp eq ptr %i.gp, %i.fy
  br i1 %.not67, label %._crit_edge, label %.lr.ph

bb.v:                                             ; preds = %bb.a, %._crit_edge73, %bb.n, %bb.l
  %.0 = phi i32 [ 0, %._crit_edge73 ], [ -1, %bb.n ], [ 1, %bb.l ], [ 1, %bb.a ]
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
  %i.d = load ptr, ptr %i.a, align 16, !tbaa !75
  %i.e = call i32 @glfwWindowShouldClose(ptr noundef %i.d)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.f = call noundef double @_ZN3igl11get_secondsEv()
  call void @_ZN3igl6opengl4glfw6Viewer4drawEv(ptr noundef nonnull align 16 dereferenceable(616) %0)
  %i.g = load ptr, ptr %i.a, align 16, !tbaa !75
  call void @glfwSwapBuffers(ptr noundef %i.g)
  %i.h = load i64, ptr %i.b, align 16, !tbaa !83
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !82
  %sext.i = shl i64 %i.h, 32
  %i.i = ashr exact i64 %sext.i, 32
  %i.j = getelementptr inbounds nuw [544 x i8], ptr %.pre.i, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 181
  %i.l = load i8, ptr %i.k, align 1, !tbaa !134, !range !135, !noundef !136
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
  %i.s = load i64, ptr %i.b, align 16, !tbaa !83
  %.pre.i17 = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !82
  %sext.i18 = shl i64 %i.s, 32
  %i.t = ashr exact i64 %sext.i18, 32
  %i.u = getelementptr inbounds nuw [544 x i8], ptr %.pre.i17, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 184
  %i.w = load double, ptr %i.v, align 8, !tbaa !236
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
  store i64 %.zext, ptr %2, align 8, !tbaa !238
  store i64 %i.af, ptr %i.c, align 8, !tbaa !239
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ag = call i32 @nanosleep(ptr noundef nonnull %2, ptr noundef nonnull %2)
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %bb.j
  %i.ai = tail call ptr @__errno_location() #31
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !80
  %i.ak = icmp eq i32 %i.aj, 4
  br i1 %i.ak, label %bb.j, label %.critedge.i, !llvm.loop !235

.critedge.i:                                      ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit

_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit: ; preds = %.critedge.i, %bb.h, %bb.g
  br i1 %1, label %bb.b, label %.thread

.thread:                                          ; preds = %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit
  %i.al = load ptr, ptr %i.a, align 16, !tbaa !75
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !31  ; 2 uses
  %.not15 = icmp eq ptr %i.b, %i.d
  br i1 %.not15, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !33  ; 2 uses
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
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.n = load ptr, ptr %i.k, align 16, !tbaa !38  ; 2 uses
  %.not.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i, label %_ZN3igl6opengl4glfw6Viewer16shutdown_pluginsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge21, %.lr.ph.i
  %i.o = phi ptr [ %i.y, %.lr.ph.i ], [ %i.n, %._crit_edge21 ]
  %i.p = phi i64 [ %i.w, %.lr.ph.i ], [ 0, %._crit_edge21 ]
  %.04.i = phi i32 [ %i.v, %.lr.ph.i ], [ 0, %._crit_edge21 ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !40   ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !42
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(48) %i.r), !inline_history !240
  %i.v = add i32 %.04.i, 1                        ; 2 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.y = load ptr, ptr %i.k, align 16, !tbaa !38  ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 3
  %i.ad = icmp ugt i64 %i.ac, %i.w
  br i1 %i.ad, label %.lr.ph.i, label %_ZN3igl6opengl4glfw6Viewer16shutdown_pluginsEv.exit, !llvm.loop !0

_ZN3igl6opengl4glfw6Viewer16shutdown_pluginsEv.exit: ; preds = %.lr.ph.i, %._crit_edge21
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load ptr, ptr %i.ae, align 16, !tbaa !75
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
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !242
  %i.b = tail call i32 @fputs(ptr noundef %1, ptr noundef %i.a) #32 ; 0 uses
end_hunk_0
