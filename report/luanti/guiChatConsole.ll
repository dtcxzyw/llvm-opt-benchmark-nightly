inline.NumInlined: 834
inline.NumDeleted: 335
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN14GUIChatConsoleC2EPN3gui15IGUIEnvironmentEPNS0_11IGUIElementEiP11ChatBackendP6ClientP12IMenuManager:._crit_edge.i.i
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.ar = call i32 @llvm.smax.i32(i32 %i.am, i32 0)
  %i.as = call noundef i32 @llvm.umin.i32(i32 %i.ar, i32 255)
  %i.at = shl nuw i32 %i.as, 24
  %i.au = load i32, ptr %i.af, align 8, !tbaa !66
  %i.av = and i32 %i.au, 16777215
  %i.aw = or disjoint i32 %i.av, %i.at
  store i32 %i.aw, ptr %i.af, align 8, !tbaa !66
  %i.ax = invoke noundef ptr @_ZN6Client16getTextureSourceEv(ptr noundef nonnull align 8 dereferenceable(1674) %6)
          to label %.noexc.i46 unwind label %bb.e ; 5 uses

.noexc.i46:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.ay, ptr %11, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i64 19, ptr %i.d, align 8, !tbaa !73
  %i.az = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc47 unwind label %bb.f   ; 2 uses

.noexc47:                                         ; preds = %.noexc.i46
  store ptr %i.az, ptr %11, align 8, !tbaa !72
  %i.ba = load i64, ptr %i.d, align 8, !tbaa !73  ; 3 uses
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.az, ptr noundef nonnull align 1 dereferenceable(19) @.str.1, i64 19, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !70
  %i.bc = load ptr, ptr %11, align 8, !tbaa !72
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ba
  store i8 0, ptr %i.bd, align 1, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.be = load ptr, ptr %i.ax, align 8, !tbaa !10
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %.noexc47
  %i.bi = load ptr, ptr %11, align 8, !tbaa !72   ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.ay
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.b
  %i.bk = load i64, ptr %i.ay, align 8, !tbaa !71
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br i1 %i.bh, label %.noexc.i53, label %._crit_edge.i.i68

.noexc.i53:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.bm, ptr %12, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i64 19, ptr %i.c, align 8, !tbaa !73
  %i.bn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc54 unwind label %bb.h   ; 2 uses

.noexc54:                                         ; preds = %.noexc.i53
  store ptr %i.bn, ptr %12, align 8, !tbaa !72
  %i.bo = load i64, ptr %i.c, align 8, !tbaa !73  ; 3 uses
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.bn, ptr noundef nonnull align 1 dereferenceable(19) @.str.1, i64 19, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !70
  %i.bq = load ptr, ptr %12, align 8, !tbaa !72
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bo
  store i8 0, ptr %i.br, align 1, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.bs = load ptr, ptr %i.ax, align 8, !tbaa !10
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = invoke noundef ptr %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef null)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %.noexc54
  store ptr %i.bv, ptr %i.ae, align 8, !tbaa !65
  %i.bw = load ptr, ptr %12, align 8, !tbaa !72   ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.bm
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.c
  %i.by = load i64, ptr %i.bm, align 8, !tbaa !71
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.ca = load i32, ptr %i.af, align 8, !tbaa !66
  %i.cb = or i32 %i.ca, 16777215
  br label %._crit_edge.i.i80

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = load ptr, ptr %10, align 8, !tbaa !72   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.aj
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.d
  %i.cf = load i64, ptr %i.aj, align 8, !tbaa !71
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ap

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.f:                                             ; preds = %.noexc.i46
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

bb.g:                                             ; preds = %.noexc47
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ck = load ptr, ptr %11, align 8, !tbaa !72   ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.ay
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.g
  %i.cm = load i64, ptr %i.ay, align 8, !tbaa !71
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62, %bb.f
  %.pn30 = phi { ptr, i32 } [ %i.ci, %bb.f ], [ %i.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62 ], [ %i.cj, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.ap

bb.h:                                             ; preds = %.noexc.i53
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

bb.i:                                             ; preds = %.noexc54
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = load ptr, ptr %12, align 8, !tbaa !72   ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.bm
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.i
  %i.cs = load i64, ptr %i.bm, align 8, !tbaa !71
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65, %bb.h
  %.pn34 = phi { ptr, i32 } [ %i.co, %bb.h ], [ %i.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65 ], [ %i.cp, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.ap

._crit_edge.i.i68:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %i.cu = load ptr, ptr @g_settings, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.cv = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.cv, ptr %13, align 8, !tbaa !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.cv, ptr noundef nonnull align 1 dereferenceable(13) @.str.2, i64 13, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 13, ptr %i.cw, align 8, !tbaa !70
  %i.cx = getelementptr inbounds nuw i8, ptr %13, i64 29
  store i8 0, ptr %i.cx, align 1, !tbaa !71
  %i.cy = invoke { <2 x float>, i64 } @_ZNK8Settings6getV3FERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.cu, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.j unwind label %bb.k       ; 2 uses

bb.j:                                             ; preds = %._crit_edge.i.i68
  %i.cz = extractvalue { <2 x float>, i64 } %i.cy, 0
  %i.da = extractvalue { <2 x float>, i64 } %i.cy, 1 ; 2 uses
  %.sroa.5133.sroa.0.0.extract.trunc = trunc i64 %i.da to i32
  %i.db = bitcast i32 %.sroa.5133.sroa.0.0.extract.trunc to float
  %i.dc = and i64 %i.da, 4294967296
  %.not139 = icmp eq i64 %i.dc, 0                 ; 2 uses
  %.sroa.3.0.i.sroa.speculated = select i1 %.not139, float 0.000000e+00, float %i.db ; 2 uses
  %.sroa.02.0.i = select i1 %.not139, <2 x float> zeroinitializer, <2 x float> %i.cz ; 2 uses
  %i.dd = load ptr, ptr %13, align 8, !tbaa !72   ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.cv
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.j
  %i.df = load i64, ptr %i.cv, align 8, !tbaa !71
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.dh = load i32, ptr %i.af, align 8, !tbaa !66
  %16 = fcmp nsz olt float %.sroa.3.0.i.sroa.speculated, 0.000000e+00
  %.v.i76 = select i1 %16, float -5.000000e-01, float 5.000000e-01
  %17 = fadd nsz float %.sroa.3.0.i.sroa.speculated, %.v.i76
  %18 = fptosi float %17 to i32
  %19 = and i32 %i.dh, -16777216
  %20 = fcmp nsz olt <2 x float> %.sroa.02.0.i, zeroinitializer
  %21 = select <2 x i1> %20, <2 x float> splat (float -5.000000e-01), <2 x float> splat (float 5.000000e-01)
  %22 = fadd nsz <2 x float> %.sroa.02.0.i, %21
  %23 = insertelement <4 x i32> poison, i32 %18, i64 2
  %24 = insertelement <4 x i32> %23, i32 %19, i64 3
  %25 = shufflevector <2 x float> %22, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %26 = fptosi <4 x float> %25 to <4 x i32>
  %27 = shufflevector <4 x i32> %26, <4 x i32> %24, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %28 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %27, <4 x i32> <i32 0, i32 0, i32 0, i32 -2147483648>)
  %29 = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %28, <4 x i32> <i32 255, i32 255, i32 255, i32 -1>)
  %30 = shl nuw nsw <4 x i32> %29, <i32 16, i32 8, i32 0, i32 0>
  %31 = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %30)
  br label %._crit_edge.i.i80

bb.k:                                             ; preds = %._crit_edge.i.i68
  %i.di = landingpad { ptr, i32 }
          cleanup
  %i.dj = load ptr, ptr %13, align 8, !tbaa !72   ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.cv
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %bb.k
  %i.dl = load i64, ptr %i.cv, align 8, !tbaa !71
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.ap

._crit_edge.i.i80:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %storemerge = phi i32 [ %31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ]
  store i32 %storemerge, ptr %i.af, align 8, !tbaa !66
  %i.dn = load ptr, ptr @g_settings, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.do = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.do, ptr %14, align 8, !tbaa !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.do, ptr noundef nonnull align 1 dereferenceable(14) @.str.3, i64 14, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 14, ptr %i.dp, align 8, !tbaa !70
  %i.dq = getelementptr inbounds nuw i8, ptr %14, i64 30
  store i8 0, ptr %i.dq, align 2, !tbaa !71
  %i.dr = invoke noundef zeroext i16 @_ZNK8Settings6getU16ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.dn, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.l unwind label %bb.z       ; 2 uses

bb.l:                                             ; preds = %._crit_edge.i.i80
  %i.ds = load ptr, ptr %14, align 8, !tbaa !72   ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.do
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.l
  %i.du = load i64, ptr %i.do, align 8, !tbaa !71
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.dw = load ptr, ptr @g_fontengine, align 8, !tbaa !74 ; 2 uses
  %.not = icmp eq i16 %i.dr, 0
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %i.dx = call i16 @llvm.umax.i16(i16 %i.dr, i16 5)
  %.0.i = call i16 @llvm.umin.i16(i16 %i.dx, i16 72)
  %i.dy = zext nneg i16 %.0.i to i64
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %bb.m
  %.sroa.0.0.insert.ext.i = phi i64 [ %i.dy, %bb.m ], [ 4294967295, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ]
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 1324
  %i.ea = load i16, ptr %i.dz, align 4
  %i.eb = zext i16 %i.ea to i64
  %i.ec = shl nuw nsw i64 %i.eb, 40
  %.sroa.5.0.insert.insert.i = or disjoint i64 %i.ec, %.sroa.0.0.insert.ext.i
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.insert.i, 72057598332895232
  %i.ed = invoke noundef ptr @_ZN10FontEngine7getFontE8FontSpec(ptr noundef nonnull align 8 dereferenceable(1327) %i.dw, i64 %.sroa.0.0.insert.insert.i)
          to label %_ZN10FontEngine7getFontEj8FontMode.exit unwind label %bb.aa ; 7 uses

_ZN10FontEngine7getFontEj8FontMode.exit:          ; preds = %bb.n
  %.not.i = icmp eq ptr %i.ed, null               ; 2 uses
  br i1 %.not.i, label %.split.i, label %.split5.i

.split.i:                                         ; preds = %_ZN10FontEngine7getFontEj8FontMode.exit
  %i.ee = load ptr, ptr %i.ag, align 8, !tbaa !76 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i, label %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit.thread138, label %bb.o

bb.o:                                             ; preds = %.split.i
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !10
  %i.eg = getelementptr i8, ptr %i.ef, i64 -24
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds i8, ptr %i.ee, i64 %i.eh ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !77
  %i.el = add nsw i32 %i.ek, -1                   ; 2 uses
  store i32 %i.el, ptr %i.ej, align 8, !tbaa !77
  %.not.i.i.i = icmp eq i32 %i.el, 0
  br i1 %.not.i.i.i, label %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit, label %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit.thread138

.split5.i:                                        ; preds = %_ZN10FontEngine7getFontEj8FontMode.exit
  %i.em = load ptr, ptr %i.ed, align 8, !tbaa !10 ; 2 uses
  %i.en = getelementptr i8, ptr %i.em, i64 -24
  %i.eo = load i64, ptr %i.en, align 8
  %i.ep = getelementptr inbounds i8, ptr %i.ed, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !77
  %i.es = add nsw i32 %i.er, 1
  store i32 %i.es, ptr %i.eq, align 8, !tbaa !77
  %i.et = load ptr, ptr %i.ag, align 8, !tbaa !76 ; 3 uses
  %.not.i6.i = icmp eq ptr %i.et, null
  br i1 %.not.i6.i, label %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit.thread, label %bb.p

bb.p:                                             ; preds = %.split5.i
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !10
  %i.ev = getelementptr i8, ptr %i.eu, i64 -24
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = getelementptr inbounds i8, ptr %i.et, i64 %i.ew ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !77
  %i.fa = add nsw i32 %i.ez, -1                   ; 2 uses
  store i32 %i.fa, ptr %i.ey, align 8, !tbaa !77
  %.not.i.i7.i = icmp eq i32 %i.fa, 0
  br i1 %.not.i.i7.i, label %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit, label %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit.thread

_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit.thread: ; preds = %.split5.i, %bb.p
  store ptr %i.ed, ptr %i.ag, align 8, !tbaa !76
  br label %bb.ac

_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit.thread138: ; preds = %.split.i, %bb.o
  store ptr null, ptr %i.ag, align 8, !tbaa !76
  br label %bb.q

_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit:      ; preds = %bb.o, %bb.p
  %.sink.i = phi ptr [ %i.ei, %bb.o ], [ %i.ex, %bb.p ] ; 2 uses
  %.sink13.i = load ptr, ptr %.sink.i, align 8, !tbaa !10
  %i.fb = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8
  call void %i.fc(ptr noundef nonnull align 8 dereferenceable(12) %.sink.i) #25, !inline_history !79
  store ptr %i.ed, ptr %i.ag, align 8, !tbaa !76
  br i1 %.not.i, label %bb.q, label %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit._crit_edge

_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit._crit_edge: ; preds = %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit
  %.pre = load ptr, ptr %i.ed, align 8, !tbaa !10
  br label %bb.ac

bb.q:                                             ; preds = %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit.thread138, %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit
  %.not.i89 = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i89, label %_ZTW11errorstream.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit

_ZTW11errorstream.exit:                           ; preds = %bb.q, %bb.r
  %i.fd = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !80, !nonnull !93, !align !94 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !10
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = invoke noundef zeroext i1 %i.fg(ptr noundef nonnull align 8 dereferenceable(8) %i.fe)
          to label %.noexc91 unwind label %bb.ab, !inline_history !95

.noexc91:                                         ; preds = %_ZTW11errorstream.exit
  %.v.i90 = select i1 %i.fh, i64 976, i64 984
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 %.v.i90 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.4, ptr %i.b, align 8, !tbaa !96
  %i.fj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fi, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.s unwind label %bb.ab      ; 0 uses

bb.s:                                             ; preds = %.noexc91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.fk = load ptr, ptr %i.fi, align 8, !tbaa !97 ; 5 uses
  %.not.i93 = icmp eq ptr %i.fk, null
  br i1 %.not.i93, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !10
  %i.fm = getelementptr i8, ptr %i.fl, i64 -24
  %i.fn = load i64, ptr %i.fm, align 8            ; 2 uses
  %i.fo = getelementptr inbounds i8, ptr %i.fk, i64 %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !98
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.fk)
          to label %.noexc94 unwind label %bb.ab

.noexc94:                                         ; preds = %bb.u
  %.pre.i = load ptr, ptr %i.fi, align 8, !tbaa !97 ; 2 uses
  %.pre142 = load ptr, ptr %.pre.i, align 8, !tbaa !10
  %.phi.trans.insert = getelementptr i8, ptr %.pre142, i64 -24
  %.pre143 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.v

bb.v:                                             ; preds = %.noexc94, %bb.t
  %i.fs = phi i64 [ %.pre143, %.noexc94 ], [ %i.fn, %bb.t ]
  %i.ft = phi ptr [ %.pre.i, %.noexc94 ], [ %i.fk, %bb.t ] ; 2 uses
  %i.fu = getelementptr inbounds i8, ptr %i.ft, i64 %i.fs
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 240
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !105 ; 6 uses
  %.not.i.i.i116 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i116, label %bb.w, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %.noexc117 unwind label %bb.ab

.noexc117:                                        ; preds = %bb.w
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.v
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 56
  %i.fy = load i8, ptr %i.fx, align 8, !tbaa !111
  %.not.i1.i.i = icmp eq i8 %i.fy, 0
  br i1 %.not.i1.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 67
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !71
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.y:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fw)
          to label %.noexc118 unwind label %bb.ab

.noexc118:                                        ; preds = %bb.y
  %i.gb = load ptr, ptr %i.fw, align 8, !tbaa !10
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 48
  %i.gd = load ptr, ptr %i.gc, align 8
end_hunk_0
begin_hunk_1_@_ZN14GUIChatConsoleC1EPN3gui15IGUIEnvironmentEPNS0_11IGUIElementEiP11ChatBackendP6ClientP12IMenuManager:._crit_edge.i.i
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.am = call i32 @llvm.smax.i32(i32 %i.ah, i32 0)
  %i.an = call noundef i32 @llvm.umin.i32(i32 %i.am, i32 255)
  %i.ao = shl nuw i32 %i.an, 24
  %i.ap = load i32, ptr %i.aa, align 8, !tbaa !66
  %i.aq = and i32 %i.ap, 16777215
  %i.ar = or disjoint i32 %i.aq, %i.ao
  store i32 %i.ar, ptr %i.aa, align 8, !tbaa !66
  %i.as = invoke noundef ptr @_ZN6Client16getTextureSourceEv(ptr noundef nonnull align 8 dereferenceable(1674) %5)
          to label %.noexc.i47 unwind label %bb.e ; 5 uses

.noexc.i47:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.at, ptr %10, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i64 19, ptr %i.d, align 8, !tbaa !73
  %i.au = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc48 unwind label %bb.f   ; 2 uses

.noexc48:                                         ; preds = %.noexc.i47
  store ptr %i.au, ptr %10, align 8, !tbaa !72
  %i.av = load i64, ptr %i.d, align 8, !tbaa !73  ; 3 uses
  store i64 %i.av, ptr %i.at, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.au, ptr noundef nonnull align 1 dereferenceable(19) @.str.1, i64 19, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !70
  %i.ax = load ptr, ptr %10, align 8, !tbaa !72
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  store i8 0, ptr %i.ay, align 1, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.az = load ptr, ptr %i.as, align 8, !tbaa !10
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 72
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = invoke noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %.noexc48
  %i.bd = load ptr, ptr %10, align 8, !tbaa !72   ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.at
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.b
  %i.bf = load i64, ptr %i.at, align 8, !tbaa !71
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %i.bc, label %.noexc.i54, label %._crit_edge.i.i69

.noexc.i54:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.bh, ptr %11, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i64 19, ptr %i.c, align 8, !tbaa !73
  %i.bi = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc55 unwind label %bb.h   ; 2 uses

.noexc55:                                         ; preds = %.noexc.i54
  store ptr %i.bi, ptr %11, align 8, !tbaa !72
  %i.bj = load i64, ptr %i.c, align 8, !tbaa !73  ; 3 uses
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.bi, ptr noundef nonnull align 1 dereferenceable(19) @.str.1, i64 19, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !70
  %i.bl = load ptr, ptr %11, align 8, !tbaa !72
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bj
  store i8 0, ptr %i.bm, align 1, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.bn = load ptr, ptr %i.as, align 8, !tbaa !10
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = invoke noundef ptr %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef null)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %.noexc55
  store ptr %i.bq, ptr %i.z, align 8, !tbaa !65
  %i.br = load ptr, ptr %11, align 8, !tbaa !72   ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.bh
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.c
  %i.bt = load i64, ptr %i.bh, align 8, !tbaa !71
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.bv = load i32, ptr %i.aa, align 8, !tbaa !66
  %i.bw = or i32 %i.bv, 16777215
  br label %._crit_edge.i.i81

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %i.by = load ptr, ptr %9, align 8, !tbaa !72    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.ae
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.d
  %i.ca = load i64, ptr %i.ae, align 8, !tbaa !71
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.ap

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.f:                                             ; preds = %.noexc.i47
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

bb.g:                                             ; preds = %.noexc48
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = load ptr, ptr %10, align 8, !tbaa !72   ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.at
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.g
  %i.ch = load i64, ptr %i.at, align 8, !tbaa !71
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63, %bb.f
  %.pn30 = phi { ptr, i32 } [ %i.cd, %bb.f ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63 ], [ %i.ce, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ap

bb.h:                                             ; preds = %.noexc.i54
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

bb.i:                                             ; preds = %.noexc55
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load ptr, ptr %11, align 8, !tbaa !72   ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bh
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.i
  %i.cn = load i64, ptr %i.bh, align 8, !tbaa !71
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66, %bb.h
  %.pn34 = phi { ptr, i32 } [ %i.cj, %bb.h ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66 ], [ %i.ck, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.ap

._crit_edge.i.i69:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.cp = load ptr, ptr @g_settings, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.cq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.cq, ptr %12, align 8, !tbaa !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.cq, ptr noundef nonnull align 1 dereferenceable(13) @.str.2, i64 13, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 13, ptr %i.cr, align 8, !tbaa !70
  %i.cs = getelementptr inbounds nuw i8, ptr %12, i64 29
  store i8 0, ptr %i.cs, align 1, !tbaa !71
  %i.ct = invoke { <2 x float>, i64 } @_ZNK8Settings6getV3FERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.cp, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.j unwind label %bb.k       ; 2 uses

bb.j:                                             ; preds = %._crit_edge.i.i69
  %i.cu = extractvalue { <2 x float>, i64 } %i.ct, 0
  %i.cv = extractvalue { <2 x float>, i64 } %i.ct, 1 ; 2 uses
  %.sroa.5134.sroa.0.0.extract.trunc = trunc i64 %i.cv to i32
  %i.cw = bitcast i32 %.sroa.5134.sroa.0.0.extract.trunc to float
  %i.cx = and i64 %i.cv, 4294967296
  %.not140 = icmp eq i64 %i.cx, 0                 ; 2 uses
  %.sroa.3.0.i.sroa.speculated = select i1 %.not140, float 0.000000e+00, float %i.cw ; 2 uses
  %.sroa.02.0.i = select i1 %.not140, <2 x float> zeroinitializer, <2 x float> %i.cu ; 2 uses
  %i.cy = load ptr, ptr %12, align 8, !tbaa !72   ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.cq
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.j
  %i.da = load i64, ptr %i.cq, align 8, !tbaa !71
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.dc = load i32, ptr %i.aa, align 8, !tbaa !66
  %15 = fcmp nsz olt float %.sroa.3.0.i.sroa.speculated, 0.000000e+00
  %.v.i77 = select i1 %15, float -5.000000e-01, float 5.000000e-01
  %16 = fadd nsz float %.sroa.3.0.i.sroa.speculated, %.v.i77
  %17 = fptosi float %16 to i32
  %18 = and i32 %i.dc, -16777216
  %19 = fcmp nsz olt <2 x float> %.sroa.02.0.i, zeroinitializer
  %20 = select <2 x i1> %19, <2 x float> splat (float -5.000000e-01), <2 x float> splat (float 5.000000e-01)
  %21 = fadd nsz <2 x float> %.sroa.02.0.i, %20
  %22 = insertelement <4 x i32> poison, i32 %17, i64 2
  %23 = insertelement <4 x i32> %22, i32 %18, i64 3
  %24 = shufflevector <2 x float> %21, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %25 = fptosi <4 x float> %24 to <4 x i32>
  %26 = shufflevector <4 x i32> %25, <4 x i32> %23, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %27 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %26, <4 x i32> <i32 0, i32 0, i32 0, i32 -2147483648>)
  %28 = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %27, <4 x i32> <i32 255, i32 255, i32 255, i32 -1>)
  %29 = shl nuw nsw <4 x i32> %28, <i32 16, i32 8, i32 0, i32 0>
  %30 = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %29)
  br label %._crit_edge.i.i81

bb.k:                                             ; preds = %._crit_edge.i.i69
  %i.dd = landingpad { ptr, i32 }
          cleanup
  %i.de = load ptr, ptr %12, align 8, !tbaa !72   ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.cq
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %bb.k
  %i.dg = load i64, ptr %i.cq, align 8, !tbaa !71
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.ap

._crit_edge.i.i81:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %storemerge = phi i32 [ %30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %i.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ]
  store i32 %storemerge, ptr %i.aa, align 8, !tbaa !66
  %i.di = load ptr, ptr @g_settings, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.dj = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.dj, ptr %13, align 8, !tbaa !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.dj, ptr noundef nonnull align 1 dereferenceable(14) @.str.3, i64 14, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 14, ptr %i.dk, align 8, !tbaa !70
  %i.dl = getelementptr inbounds nuw i8, ptr %13, i64 30
  store i8 0, ptr %i.dl, align 2, !tbaa !71
  %i.dm = invoke noundef zeroext i16 @_ZNK8Settings6getU16ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.di, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.l unwind label %bb.z       ; 2 uses

bb.l:                                             ; preds = %._crit_edge.i.i81
  %i.dn = load ptr, ptr %13, align 8, !tbaa !72   ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.dj
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.l
  %i.dp = load i64, ptr %i.dj, align 8, !tbaa !71
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.dr = load ptr, ptr @g_fontengine, align 8, !tbaa !74 ; 2 uses
  %.not = icmp eq i16 %i.dm, 0
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %i.ds = call i16 @llvm.umax.i16(i16 %i.dm, i16 5)
  %.0.i = call i16 @llvm.umin.i16(i16 %i.ds, i16 72)
  %i.dt = zext nneg i16 %.0.i to i64
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %bb.m
  %.sroa.0.0.insert.ext.i = phi i64 [ %i.dt, %bb.m ], [ 4294967295, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 1324
  %i.dv = load i16, ptr %i.du, align 4
  %i.dw = zext i16 %i.dv to i64
  %i.dx = shl nuw nsw i64 %i.dw, 40
  %.sroa.5.0.insert.insert.i = or disjoint i64 %i.dx, %.sroa.0.0.insert.ext.i
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.insert.i, 72057598332895232
  %i.dy = invoke noundef ptr @_ZN10FontEngine7getFontE8FontSpec(ptr noundef nonnull align 8 dereferenceable(1327) %i.dr, i64 %.sroa.0.0.insert.insert.i)
          to label %_ZN10FontEngine7getFontEj8FontMode.exit unwind label %bb.aa ; 7 uses

_ZN10FontEngine7getFontEj8FontMode.exit:          ; preds = %bb.n
  %.not.i = icmp eq ptr %i.dy, null               ; 2 uses
  br i1 %.not.i, label %.split.i, label %.split5.i

.split.i:                                         ; preds = %_ZN10FontEngine7getFontEj8FontMode.exit
  %i.dz = load ptr, ptr %i.ab, align 8, !tbaa !76 ; 3 uses
  %.not.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i, label %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit.thread139, label %bb.o

bb.o:                                             ; preds = %.split.i
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !10
  %i.eb = getelementptr i8, ptr %i.ea, i64 -24
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds i8, ptr %i.dz, i64 %i.ec ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !77
  %i.eg = add nsw i32 %i.ef, -1                   ; 2 uses
  store i32 %i.eg, ptr %i.ee, align 8, !tbaa !77
  %.not.i.i.i = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i.i, label %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit, label %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit.thread139

.split5.i:                                        ; preds = %_ZN10FontEngine7getFontEj8FontMode.exit
  %i.eh = load ptr, ptr %i.dy, align 8, !tbaa !10 ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 -24
  %i.ej = load i64, ptr %i.ei, align 8
  %i.ek = getelementptr inbounds i8, ptr %i.dy, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  %i.em = load i32, ptr %i.el, align 8, !tbaa !77
  %i.en = add nsw i32 %i.em, 1
  store i32 %i.en, ptr %i.el, align 8, !tbaa !77
  %i.eo = load ptr, ptr %i.ab, align 8, !tbaa !76 ; 3 uses
  %.not.i6.i = icmp eq ptr %i.eo, null
  br i1 %.not.i6.i, label %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit.thread, label %bb.p

bb.p:                                             ; preds = %.split5.i
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !10
  %i.eq = getelementptr i8, ptr %i.ep, i64 -24
  %i.er = load i64, ptr %i.eq, align 8
  %i.es = getelementptr inbounds i8, ptr %i.eo, i64 %i.er ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !77
  %i.ev = add nsw i32 %i.eu, -1                   ; 2 uses
  store i32 %i.ev, ptr %i.et, align 8, !tbaa !77
  %.not.i.i7.i = icmp eq i32 %i.ev, 0
  br i1 %.not.i.i7.i, label %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit, label %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit.thread

_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit.thread: ; preds = %.split5.i, %bb.p
  store ptr %i.dy, ptr %i.ab, align 8, !tbaa !76
  br label %bb.ac

_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit.thread139: ; preds = %.split.i, %bb.o
  store ptr null, ptr %i.ab, align 8, !tbaa !76
  br label %bb.q

_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit:      ; preds = %bb.o, %bb.p
  %.sink.i = phi ptr [ %i.ed, %bb.o ], [ %i.es, %bb.p ] ; 2 uses
  %.sink13.i = load ptr, ptr %.sink.i, align 8, !tbaa !10
  %i.ew = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(12) %.sink.i) #25, !inline_history !79
  store ptr %i.dy, ptr %i.ab, align 8, !tbaa !76
  br i1 %.not.i, label %bb.q, label %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit._crit_edge

_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit._crit_edge: ; preds = %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit
  %.pre = load ptr, ptr %i.dy, align 8, !tbaa !10
  br label %bb.ac

bb.q:                                             ; preds = %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit.thread139, %_ZN7irr_ptrIN3gui8IGUIFontEE4grabEPS1_.exit
  %.not.i90 = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i90, label %_ZTW11errorstream.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit

_ZTW11errorstream.exit:                           ; preds = %bb.q, %bb.r
  %i.ey = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !80, !nonnull !93, !align !94 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !10
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = invoke noundef zeroext i1 %i.fb(ptr noundef nonnull align 8 dereferenceable(8) %i.ez)
          to label %.noexc92 unwind label %bb.ab, !inline_history !95

.noexc92:                                         ; preds = %_ZTW11errorstream.exit
  %.v.i91 = select i1 %i.fc, i64 976, i64 984
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 %.v.i91 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.4, ptr %i.b, align 8, !tbaa !96
  %i.fe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fd, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.s unwind label %bb.ab      ; 0 uses

bb.s:                                             ; preds = %.noexc92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ff = load ptr, ptr %i.fd, align 8, !tbaa !97 ; 5 uses
  %.not.i94 = icmp eq ptr %i.ff, null
  br i1 %.not.i94, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !10
  %i.fh = getelementptr i8, ptr %i.fg, i64 -24
  %i.fi = load i64, ptr %i.fh, align 8            ; 2 uses
  %i.fj = getelementptr inbounds i8, ptr %i.ff, i64 %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !98
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.ff)
          to label %.noexc95 unwind label %bb.ab

.noexc95:                                         ; preds = %bb.u
  %.pre.i = load ptr, ptr %i.fd, align 8, !tbaa !97 ; 2 uses
  %.pre143 = load ptr, ptr %.pre.i, align 8, !tbaa !10
  %.phi.trans.insert = getelementptr i8, ptr %.pre143, i64 -24
  %.pre144 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.v

bb.v:                                             ; preds = %.noexc95, %bb.t
  %i.fn = phi i64 [ %.pre144, %.noexc95 ], [ %i.fi, %bb.t ]
  %i.fo = phi ptr [ %.pre.i, %.noexc95 ], [ %i.ff, %bb.t ] ; 2 uses
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 %i.fn
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 240
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !105 ; 6 uses
  %.not.i.i.i117 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i117, label %bb.w, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %.noexc118 unwind label %bb.ab

.noexc118:                                        ; preds = %bb.w
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.v
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 56
  %i.ft = load i8, ptr %i.fs, align 8, !tbaa !111
  %.not.i1.i.i = icmp eq i8 %i.ft, 0
  br i1 %.not.i1.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 67
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !71
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.y:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fr)
          to label %.noexc119 unwind label %bb.ab

.noexc119:                                        ; preds = %bb.y
  %i.fw = load ptr, ptr %i.fr, align 8, !tbaa !10
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 48
  %i.fy = load ptr, ptr %i.fx, align 8
end_hunk_1
begin_hunk_2_@_ZN4core6stringIcEaSIcEERS1_PKT_:bb.a
  store i8 %i.r, ptr %i.t, align 1, !tbaa !71
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !309

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.f
  %i.u = load i64, ptr %i.k, align 8, !tbaa !70
  %i.v = icmp ugt i64 %i.u, %i.j
  br i1 %i.v, label %bb.g, label %bb.h

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.x = load i8, ptr %i.w, align 1, !tbaa !71
  %i.y = load ptr, ptr %0, align 8, !tbaa !72
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv
  store i8 %i.x, ptr %i.z, align 1, !tbaa !71
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !71
  %i.ac = load ptr, ptr %0, align 8, !tbaa !72
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv.next
  store i8 %i.ab, ptr %i.ad, align 1, !tbaa !71
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !71
  %i.ag = load ptr, ptr %0, align 8, !tbaa !72
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv.next.1
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !71
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !71
  %i.ak = load ptr, ptr %0, align 8, !tbaa !72
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv.next.2
  store i8 %i.aj, ptr %i.al, align 1, !tbaa !71
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !310

bb.g:                                             ; preds = %._crit_edge
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.j, i8 noundef signext 0)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g, %bb.c, %_ZN4core6stringIcE5clearEb.exit
  ret ptr %0
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #10

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #20

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #20

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !96     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = load ptr, ptr %0, align 8, !tbaa !97     ; 9 uses
  %.not.i = icmp eq ptr %i.c, null                ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN11StreamProxylsIPKcEERS_OT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !98
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !97
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %.pre.i, %bb.d ], [ %i.c, %bb.c ]
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.20, i64 noundef 6) ; 0 uses
  br label %_ZN11StreamProxylsIPKcEERS_OT_.exit

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN11StreamProxylsIPKcEERS_OT_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %i.c, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !98
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre.i5 = load ptr, ptr %0, align 8, !tbaa !97 ; 3 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !96    ; 2 uses
  %.not.i.i6 = icmp eq ptr %.pre, null
  br i1 %.not.i.i6, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %.pre.i5, align 8, !tbaa !10
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %.pre.i5, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !98
  %i.z = or i32 %i.y, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.w, i32 noundef %i.z)
  br label %_ZN11StreamProxylsIPKcEERS_OT_.exit

.thread:                                          ; preds = %bb.g, %bb.h
  %i.aa = phi ptr [ %.pre.i5, %bb.h ], [ %i.c, %bb.g ]
  %i.ab = phi ptr [ %.pre, %bb.h ], [ %i.a, %bb.g ] ; 2 uses
  %i.ac = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #25
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull %i.ab, i64 noundef %i.ac) ; 0 uses
  br label %_ZN11StreamProxylsIPKcEERS_OT_.exit

_ZN11StreamProxylsIPKcEERS_OT_.exit:              ; preds = %.thread, %bb.i, %bb.f, %bb.e, %bb.b
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #20

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

declare extern_weak void @_ZTH11errorstream() #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umax.v2i32(<2 x i32>, <2 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #9

attributes #0 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #17 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nofree noreturn }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { nounwind }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!6, !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"vtable pointer", !8, i64 0}
!12 = !{!13, !44, i64 312}
!13 = !{!"_ZTS14GUIChatConsole", !14, i64 0, !44, i64 312, !45, i64 320, !46, i64 328, !47, i64 336, !49, i64 344, !23, i64 352, !32, i64 360, !32, i64 361, !6, i64 364, !30, i64 368, !30, i64 372, !30, i64 376, !6, i64 380, !6, i64 384, !30, i64 388, !30, i64 392, !50, i64 400, !51, i64 408, !52, i64 416, !49, i64 424, !32, i64 432, !32, i64 433}
!14 = !{!"_ZTSN3gui11IGUIElementE", !15, i64 0, !16, i64 8, !24, i64 32, !25, i64 40, !26, i64 48, !26, i64 64, !26, i64 80, !26, i64 96, !26, i64 112, !28, i64 128, !31, i64 144, !31, i64 152, !32, i64 160, !32, i64 161, !32, i64 162, !32, i64 163, !33, i64 168, !33, i64 200, !37, i64 232, !6, i64 264, !32, i64 268, !6, i64 272, !32, i64 276, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !42, i64 296, !43, i64 304}
!15 = !{!"_ZTS14IEventReceiver"}
!16 = !{!"_ZTSNSt7__cxx114listIPN3gui11IGUIElementESaIS3_EEE", !17, i64 0}
!17 = !{!"_ZTSNSt7__cxx1110_List_baseIPN3gui11IGUIElementESaIS3_EEE", !18, i64 0}
!18 = !{!"_ZTSNSt7__cxx1110_List_baseIPN3gui11IGUIElementESaIS3_EE10_List_implE", !19, i64 0}
!19 = !{!"_ZTSNSt8__detail17_List_node_headerE", !20, i64 0, !23, i64 16}
!20 = !{!"_ZTSNSt8__detail15_List_node_baseE", !21, i64 0, !21, i64 8}
!21 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !22, i64 0}
!22 = !{!"any pointer", !7, i64 0}
!23 = !{!"long", !7, i64 0}
!24 = !{!"p1 _ZTSN3gui11IGUIElementE", !22, i64 0}
!25 = !{!"_ZTSSt14_List_iteratorIPN3gui11IGUIElementEE", !21, i64 0}
!26 = !{!"_ZTSN4core4rectIiEE", !27, i64 0, !27, i64 8}
!27 = !{!"_ZTSN4core8vector2dIiEE", !6, i64 0, !6, i64 4}
!28 = !{!"_ZTSN4core4rectIfEE", !29, i64 0, !29, i64 8}
!29 = !{!"_ZTSN4core8vector2dIfEE", !30, i64 0, !30, i64 4}
!30 = !{!"float", !7, i64 0}
!31 = !{!"_ZTSN4core11dimension2dIjEE", !6, i64 0, !6, i64 4}
!32 = !{!"bool", !7, i64 0}
!33 = !{!"_ZTSN4core6stringIwEE", !34, i64 0}
!34 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE", !35, i64 0, !23, i64 8, !7, i64 16}
!35 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderE", !36, i64 0}
!36 = !{!"p1 wchar_t", !22, i64 0}
!37 = !{!"_ZTSN4core6stringIcEE", !38, i64 0}
!38 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !39, i64 0, !23, i64 8, !7, i64 16}
!39 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !40, i64 0}
!40 = !{!"p1 omnipotent char", !22, i64 0}
!41 = !{!"_ZTSN3gui14EGUI_ALIGNMENTE", !7, i64 0}
!42 = !{!"p1 _ZTSN3gui15IGUIEnvironmentE", !22, i64 0}
!43 = !{!"_ZTSN3gui17EGUI_ELEMENT_TYPEE", !7, i64 0}
!44 = !{!"p1 _ZTS11ChatBackend", !22, i64 0}
!45 = !{!"p1 _ZTS6Client", !22, i64 0}
!46 = !{!"p1 _ZTS12IMenuManager", !22, i64 0}
!47 = !{!"_ZTS7irr_ptrI12GUIScrollBarE", !48, i64 0}
!48 = !{!"p1 _ZTS12GUIScrollBar", !22, i64 0}
!49 = !{!"_ZTSN4core8vector2dIjEE", !6, i64 0, !6, i64 4}
!50 = !{!"p1 _ZTSN5video8ITextureE", !22, i64 0}
!51 = !{!"_ZTSN5video6SColorE", !6, i64 0}
!52 = !{!"_ZTS7irr_ptrIN3gui8IGUIFontEE", !53, i64 0}
!53 = !{!"p1 _ZTSN3gui8IGUIFontE", !22, i64 0}
!54 = !{!13, !45, i64 320}
!55 = !{!13, !46, i64 328}
!56 = !{!57, !23, i64 0}
!57 = !{!"_ZTS8timespec", !23, i64 0, !23, i64 8}
!58 = !{!57, !23, i64 8}
!59 = !{!13, !23, i64 352}
!60 = !{!13, !32, i64 360}
!61 = !{!13, !32, i64 361}
!62 = !{!13, !6, i64 364}
!63 = !{!30, !30, i64 0}
!64 = !{!13, !30, i64 376}
!65 = !{!13, !50, i64 400}
!66 = !{!51, !6, i64 0}
!67 = !{!68, !68, i64 0}
!68 = !{!"p1 _ZTS8Settings", !22, i64 0}
!69 = !{!39, !40, i64 0}
!70 = !{!38, !23, i64 8}
!71 = !{!7, !7, i64 0}
!72 = !{!38, !40, i64 0}
!73 = !{!23, !23, i64 0}
!74 = !{!75, !75, i64 0}
!75 = !{!"p1 _ZTS10FontEngine", !22, i64 0}
!76 = !{!52, !53, i64 0}
!77 = !{!78, !6, i64 8}
!78 = !{!"_ZTS17IReferenceCounted", !6, i64 8}
!79 = distinct !{null}
!80 = !{!81, !82, i64 0}
!81 = !{!"_ZTS9LogStream", !82, i64 0, !83, i64 8, !89, i64 368, !90, i64 432, !90, i64 704, !91, i64 976, !91, i64 984}
!82 = !{!"p1 _ZTS9LogTarget", !22, i64 0}
!83 = !{!"_ZTS18StringStreamBufferILj256ESt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEEE", !84, i64 0, !87, i64 64, !6, i64 96, !7, i64 100}
!84 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !85, i64 56}
!85 = !{!"_ZTSSt6locale", !86, i64 0}
!86 = !{!"p1 _ZTSNSt6locale5_ImplE", !22, i64 0}
!87 = !{!"_ZTSSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEE", !88, i64 0, !22, i64 24}
!88 = !{!"_ZTSSt14_Function_base", !7, i64 0, !22, i64 16}
!89 = !{!"_ZTS17DummyStreamBuffer", !84, i64 0}
!90 = !{!"_ZTSSo"}
!91 = !{!"_ZTS11StreamProxy", !92, i64 0}
!92 = !{!"p1 _ZTSSo", !22, i64 0}
!93 = !{}
!94 = !{i64 8}
!95 = distinct !{null}
!96 = !{!40, !40, i64 0}
!97 = !{!91, !92, i64 0}
!98 = !{!99, !101, i64 32}
!99 = !{!"_ZTSSt8ios_base", !23, i64 8, !23, i64 16, !100, i64 24, !101, i64 28, !101, i64 32, !102, i64 40, !103, i64 48, !7, i64 64, !6, i64 192, !104, i64 200, !85, i64 208}
!100 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!101 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!102 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !22, i64 0}
!103 = !{!"_ZTSNSt8ios_base6_WordsE", !22, i64 0, !23, i64 8}
!104 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !22, i64 0}
!105 = !{!106, !108, i64 240}
!106 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !99, i64 0, !92, i64 216, !7, i64 224, !32, i64 225, !107, i64 232, !108, i64 240, !109, i64 248, !110, i64 256}
!107 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !22, i64 0}
!108 = !{!"p1 _ZTSSt5ctypeIcE", !22, i64 0}
!109 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !22, i64 0}
!110 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !22, i64 0}
!111 = !{!112, !7, i64 56}
!112 = !{!"_ZTSSt5ctypeIcE", !113, i64 0, !114, i64 16, !32, i64 24, !115, i64 32, !115, i64 40, !116, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!113 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!114 = !{!"p1 _ZTS15__locale_struct", !22, i64 0}
!115 = !{!"p1 int", !22, i64 0}
!116 = !{!"p1 short", !22, i64 0}
!117 = distinct !{null, null}
!118 = !{!13, !32, i64 433}
!119 = !{!13, !32, i64 432}
!120 = !{!47, !48, i64 0}
!121 = distinct !{null, null}
!122 = !{!14, !32, i64 162}
!123 = distinct !{null, null, null}
!124 = distinct !{null, null, null}
!125 = !{!20, !21, i64 8}
!126 = !{!20, !21, i64 0}
!127 = !{i64 0, i64 4, !9, i64 4, i64 4, !9, i64 8, i64 4, !9, i64 12, i64 4, !9}
!128 = !{!31, !6, i64 0}
!129 = !{!31, !6, i64 4}
!130 = !{!32, !32, i64 0}
!131 = !{!35, !36, i64 0}
!132 = !{!34, !23, i64 8}
!133 = !{!134, !134, i64 0}
!134 = !{!"wchar_t", !7, i64 0}
!135 = !{!14, !6, i64 264}
!136 = !{!14, !32, i64 268}
!137 = !{!14, !6, i64 272}
!138 = !{!14, !32, i64 276}
!139 = !{!14, !42, i64 296}
!140 = !{!14, !43, i64 304}
!141 = distinct !{null}
!142 = !{!14, !24, i64 32}
!143 = !{!24, !24, i64 0}
!144 = !{!17, !23, i64 16}
!145 = !{!21, !21, i64 0}
!146 = !{!34, !36, i64 0}
!147 = distinct !{!147, !148}
!148 = !{!"llvm.loop.mustprogress"}
!149 = !{!13, !6, i64 384}
!150 = !{!13, !30, i64 388}
!151 = !{!13, !30, i64 392}
!152 = distinct !{null}
!153 = !{i8 0, i8 2}
!154 = !{!13, !30, i64 372}
!155 = !{!13, !6, i64 348}
!156 = !{!13, !30, i64 368}
!157 = !{!13, !6, i64 344}
!158 = !{!13, !6, i64 424}
!159 = !{!13, !6, i64 428}
!160 = !{!14, !32, i64 160}
!161 = !{!13, !6, i64 380}
!162 = !{ptr @_ZN14GUIChatConsole12closeConsoleEv}
end_hunk_2
