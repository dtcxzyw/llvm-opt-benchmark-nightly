Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/X3DExporter?download=true
inline.NumInlined: 1687
inline.NumDeleted: 345
begin_hunk_0_@_ZN6Assimp11X3DExporter11Export_NodeEPK6aiNodem:bb.a
._crit_edge.i.i138:                               ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  %i.yb = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  store ptr %i.yb, ptr %23, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.yb, ptr noundef nonnull align 1 dereferenceable(9) @.str.12, i64 9, i1 false)
  %i.yc = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 9, ptr %i.yc, align 8
  %i.yd = getelementptr inbounds nuw i8, ptr %23, i64 25
  store i8 0, ptr %i.yd, align 1
  invoke void @_ZN6Assimp11X3DExporter20NodeHelper_CloseNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(32) %23, i64 noundef %2)
          to label %bb.cu unwind label %bb.cv

bb.cu:                                            ; preds = %._crit_edge.i.i138
  %i.ye = load ptr, ptr %23, align 8              ; 2 uses
  %i.yf = icmp eq ptr %i.ye, %i.yb
  br i1 %i.yf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %bb.cu
  %i.yg = load i64, ptr %i.yb, align 8
  %i.yh = add i64 %i.yg, 1
  call void @_ZdlPvm(ptr noundef %i.ye, i64 noundef %i.yh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  br label %bb.cy

bb.cv:                                            ; preds = %._crit_edge.i.i138
  %i.yi = landingpad { ptr, i32 }
          cleanup
  %i.yj = load ptr, ptr %23, align 8              ; 2 uses
  %i.yk = icmp eq ptr %i.yj, %i.yb
  br i1 %i.yk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %bb.cv
  %i.yl = load i64, ptr %i.yb, align 8
  %i.ym = add i64 %i.yl, 1
  call void @_ZdlPvm(ptr noundef %i.yj, i64 noundef %i.ym) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  br label %bb.cz

._crit_edge.i.i148:                               ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  %i.yn = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.yn, ptr %24, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.yn, ptr noundef nonnull align 1 dereferenceable(5) @.str.13, i64 5, i1 false)
  %i.yo = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 5, ptr %i.yo, align 8
  %i.yp = getelementptr inbounds nuw i8, ptr %24, i64 21
  store i8 0, ptr %i.yp, align 1
  invoke void @_ZN6Assimp11X3DExporter20NodeHelper_CloseNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(32) %24, i64 noundef %2)
          to label %bb.cw unwind label %bb.cx

bb.cw:                                            ; preds = %._crit_edge.i.i148
  %i.yq = load ptr, ptr %24, align 8              ; 2 uses
  %i.yr = icmp eq ptr %i.yq, %i.yn
  br i1 %i.yr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %bb.cw
  %i.ys = load i64, ptr %i.yn, align 8
  %i.yt = add i64 %i.ys, 1
  call void @_ZdlPvm(ptr noundef %i.yq, i64 noundef %i.yt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  br label %bb.cy

bb.cx:                                            ; preds = %._crit_edge.i.i148
  %i.yu = landingpad { ptr, i32 }
          cleanup
  %i.yv = load ptr, ptr %24, align 8              ; 2 uses
  %i.yw = icmp eq ptr %i.yv, %i.yn
  br i1 %i.yw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %bb.cx
  %i.yx = load i64, ptr %i.yn, align 8
  %i.yy = add i64 %i.yx, 1
  call void @_ZdlPvm(ptr noundef %i.yv, i64 noundef %i.yy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157: ; preds = %bb.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  br label %bb.cz

bb.cy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, %bb.b
  %i.yz = load ptr, ptr %13, align 8              ; 2 uses
  %.not8.i.i158 = icmp eq ptr %i.yz, %13
  br i1 %.not8.i.i158, label %_ZNSt7__cxx1110_List_baseIN6Assimp11X3DExporter10SAttributeESaIS3_EED2Ev.exit, label %.lr.ph.i.i159

.lr.ph.i.i159:                                    ; preds = %bb.cy, %_ZN6Assimp11X3DExporter10SAttributeD2Ev.exit.i.i
  %.09.i.i = phi ptr [ %i.za, %_ZN6Assimp11X3DExporter10SAttributeD2Ev.exit.i.i ], [ %i.yz, %bb.cy ] ; 6 uses
  %i.za = load ptr, ptr %.09.i.i, align 8         ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %i.zc = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 48
  %i.zd = load ptr, ptr %i.zc, align 8            ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 64 ; 2 uses
  %i.zf = icmp eq ptr %i.zd, %i.ze
  br i1 %i.zf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i159
  %i.zg = load i64, ptr %i.ze, align 8
  %i.zh = add i64 %i.zg, 1
  call void @_ZdlPvm(ptr noundef %i.zd, i64 noundef %i.zh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.lr.ph.i.i159, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.zi = load ptr, ptr %i.zb, align 8            ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 32 ; 2 uses
  %i.zk = icmp eq ptr %i.zi, %i.zj
  br i1 %i.zk, label %_ZN6Assimp11X3DExporter10SAttributeD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.zl = load i64, ptr %i.zj, align 8
  %i.zm = add i64 %i.zl, 1
  call void @_ZdlPvm(ptr noundef %i.zi, i64 noundef %i.zm) #27
  br label %_ZN6Assimp11X3DExporter10SAttributeD2Ev.exit.i.i

_ZN6Assimp11X3DExporter10SAttributeD2Ev.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 80) #27
  %.not.i.i160 = icmp eq ptr %i.za, %13
  br i1 %.not.i.i160, label %_ZNSt7__cxx1110_List_baseIN6Assimp11X3DExporter10SAttributeESaIS3_EED2Ev.exit, label %.lr.ph.i.i159, !llvm.loop !0

_ZNSt7__cxx1110_List_baseIN6Assimp11X3DExporter10SAttributeESaIS3_EED2Ev.exit: ; preds = %_ZN6Assimp11X3DExporter10SAttributeD2Ev.exit.i.i, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  ret void

bb.cz:                                            ; preds = %bb.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, %bb.ct, %bb.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %bb.bm, %bb.g, %bb.c
  %.pn77.pn.pn = phi { ptr, i32 } [ %i.e, %bb.c ], [ %i.xs, %bb.cq ], [ %i.ya, %bb.ct ], [ %i.yi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147 ], [ %i.yu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157 ], [ %i.sd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ], [ %i.sp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ %.pn65.pn, %bb.bm ], [ %i.k, %bb.g ], [ %.pn77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137 ], [ %i.tj, %bb.bt ]
  call void @_ZNSt7__cxx1110_List_baseIN6Assimp11X3DExporter10SAttributeESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  resume { ptr, i32 } %.pn77.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp11X3DExporter20CheckAndExport_LightERK6aiNodem(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1144) %1, i64 noundef %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::list.7", align 8 ; 29 uses
  %4 = alloca %class.aiMatrix4x4t, align 4        ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %struct.aiColor3D, align 8          ; 6 uses
  %8 = alloca %class.aiVector3t, align 8          ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %class.aiVector3t, align 8         ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %class.aiVector3t, align 8         ; 6 uses
  %13 = alloca %class.aiVector3t, align 8         ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %class.aiVector3t, align 8         ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %class.aiVector3t, align 8         ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %class.aiVector3t, align 8         ; 6 uses
  %20 = alloca %class.aiVector3t, align 8         ; 6 uses
  %21 = alloca %class.aiVector3t, align 8         ; 6 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %class.aiVector3t, align 8         ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %25 = alloca %class.aiVector3t, align 8         ; 6 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %class.aiVector3t, align 8         ; 6 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %3, ptr %i.d, align 8
  store ptr %3, ptr %3, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store i64 0, ptr %i.e, align 8
  %i.f = load i32, ptr %1, align 8                ; 3 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.j = load i32, ptr %i.i, align 8
  %.not.not = icmp eq i32 %i.j, 0
  br i1 %.not.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = zext i32 %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZNK8aiStringeqERKS_.exit.thread, %.lr.ph
  %.046305 = phi i64 [ 0, %.lr.ph ], [ %i.u, %_ZNK8aiStringeqERKS_.exit.thread ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.046305
  %i.p = load ptr, ptr %i.o, align 8              ; 21 uses
  %i.q = load i32, ptr %i.p, align 4
  %i.r = icmp eq i32 %i.f, %i.q
  br i1 %i.r, label %_ZNK8aiStringeqERKS_.exit, label %_ZNK8aiStringeqERKS_.exit.thread

_ZNK8aiStringeqERKS_.exit:                        ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.m, ptr nonnull %i.s, i64 %i.n)
  %i.t = icmp eq i32 %bcmp.i, 0
  br i1 %i.t, label %.split, label %_ZNK8aiStringeqERKS_.exit.thread

_ZNK8aiStringeqERKS_.exit.thread:                 ; preds = %bb.b, %_ZNK8aiStringeqERKS_.exit
  %i.u = add i64 %.046305, 1
  br label %bb.b

.split:                                           ; preds = %_ZNK8aiStringeqERKS_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZNK6Assimp11X3DExporter22Matrix_GlobalToCurrentERK6aiNode(ptr dead_on_unwind nonnull writable sret(%class.aiMatrix4x4t) align 4 %4, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(1144) %1)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %.split
  %i.v = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %4)
          to label %bb.d unwind label %bb.h       ; 8 uses

bb.d:                                             ; preds = %bb.c
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %.sroa.24.0..sroa_idx280 = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %.sroa.28.0..sroa_idx284 = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.w = load <8 x float>, ptr %i.v, align 4      ; 6 uses
  %33 = load <2 x float>, ptr %.sroa.24.0..sroa_idx280, align 4 ; 3 uses
  %34 = load <2 x float>, ptr %.sroa.8.0..sroa_idx, align 4 ; 3 uses
  %i.x = load <2 x float>, ptr %.sroa.28.0..sroa_idx284, align 4 ; 3 uses
  %.sroa.40.0.copyload = load float, ptr %.sroa.32.0..sroa_idx, align 4
  %i.y = load <2 x float>, ptr %.sroa.12.0..sroa_idx, align 4 ; 3 uses
  %35 = load <4 x float>, ptr %.sroa.16.0..sroa_idx, align 4
  %36 = shufflevector <4 x float> %35, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %37 = load <4 x float>, ptr %.sroa.36.0..sroa_idx, align 4 ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store ptr %i.s, ptr %i.c, align 8
  %i.z = invoke noundef ptr @_ZNSt7__cxx114listIN6Assimp11X3DExporter10SAttributeESaIS3_EE14_M_create_nodeIJRA4_KcPS7_EEEPSt10_List_nodeIS3_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(4) @.str.8, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %3) #26
  %i.aa = load i64, ptr %i.e, align 8
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.ac = invoke noundef ptr @_ZNSt7__cxx114listIN6Assimp11X3DExporter10SAttributeESaIS3_EE14_M_create_nodeIJRA7_KcRA5_S7_EEEPSt10_List_nodeIS3_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(7) @.str.64, ptr noundef nonnull align 1 dereferenceable(5) @.str.57)
          to label %.noexc.i unwind label %bb.j

.noexc.i:                                         ; preds = %bb.e
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %3) #26
  %i.ad = load i64, ptr %i.e, align 8
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.af, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 16, ptr %i.b, align 8
  %i.ag = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ag, ptr %5, align 8
  %i.ah = load i64, ptr %i.b, align 8             ; 3 uses
  store i64 %i.ah, ptr %i.af, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ag, ptr noundef nonnull align 1 dereferenceable(16) @.str.31, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ah, ptr %i.ai, align 8
  %i.aj = load ptr, ptr %5, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 1104
  %i.am = load float, ptr %i.al, align 4          ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 1108
  %i.ao = load float, ptr %i.an, align 4          ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 1112
  %i.aq = load float, ptr %i.ap, align 4          ; 2 uses
  %i.ar = fmul float %i.ao, %i.ao
  %i.as = call float @llvm.fmuladd.f32(float %i.am, float %i.am, float %i.ar)
  %i.at = call noundef float @llvm.fmuladd.f32(float %i.aq, float %i.aq, float %i.as)
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %i.at)
  invoke void @_ZN6Assimp11X3DExporter26AttrHelper_FloatToAttrListERNSt7__cxx114listINS0_10SAttributeESaIS3_EEERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEff(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %5, float noundef %sqrt.i, float noundef 0.000000e+00)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %.noexc
  %i.au = load ptr, ptr %5, align 8               ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.af
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.aw = load i64, ptr %i.af, align 8
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.ay, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ay, ptr noundef nonnull align 1 dereferenceable(5) @.str.23, i64 5, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 5, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 21
  store i8 0, ptr %i.ba, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.p, i64 1080
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store <2 x float> splat (float 1.000000e+00), ptr %7, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float 1.000000e+00, ptr %i.bc, align 8
  invoke void @_ZN6Assimp11X3DExporter27AttrHelper_Color3ToAttrListERNSt7__cxx114listINS0_10SAttributeESaIS3_EEERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEERK9aiColor3DSG_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(12) %i.bb, ptr noundef nonnull align 4 dereferenceable(12) %7)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.bd = load ptr, ptr %6, align 8               ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.ay
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %bb.g
  %i.bf = load i64, ptr %i.ay, align 8
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.bh = getelementptr inbounds nuw i8, ptr %i.p, i64 1028 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4
  switch i32 %i.bi, label %bb.an [
    i32 1, label %._crit_edge.i.i123
    i32 2, label %._crit_edge.i.i147
    i32 3, label %._crit_edge.i.i185
  ]

bb.h:                                             ; preds = %bb.c, %.split
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.at

bb.i:                                             ; preds = %bb.d
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.at

bb.j:                                             ; preds = %bb.e
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.k:                                             ; preds = %.noexc.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

bb.l:                                             ; preds = %.noexc
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %5, align 8               ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.af
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %bb.l
  %i.bq = load i64, ptr %i.af, align 8
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.k ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117 ], [ %i.bn, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.at

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.bt = load ptr, ptr %6, align 8               ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.ay
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %bb.m
  %i.bv = load i64, ptr %i.ay, align 8
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.at

._crit_edge.i.i123:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.bx = getelementptr inbounds nuw i8, ptr %i.p, i64 1044
  %38 = getelementptr inbounds nuw i8, ptr %i.p, i64 1048
  %39 = getelementptr inbounds nuw i8, ptr %i.p, i64 1052
  %40 = load float, ptr %38, align 4              ; 2 uses
  %41 = load float, ptr %i.bx, align 4            ; 2 uses
  %i.by = load float, ptr %39, align 4            ; 2 uses
  %i.bz = shufflevector <8 x float> %i.w, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %42 = insertelement <2 x float> poison, float %40, i64 0
  %43 = shufflevector <2 x float> %42, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ca = fmul <2 x float> %i.bz, %43
  %i.cb = shufflevector <8 x float> %i.w, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %44 = insertelement <2 x float> poison, float %41, i64 0
  %i.cc = shufflevector <2 x float> %44, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.cc, <2 x float> %i.ca)
  %i.ce = shufflevector <8 x float> %i.w, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %45 = insertelement <2 x float> poison, float %i.by, i64 0
  %46 = shufflevector <2 x float> %45, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %46, <2 x float> %i.cd)
  %i.cg = shufflevector <8 x float> %i.w, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.ch = fadd <2 x float> %i.cg, %i.cf
  %i.ci = extractelement <4 x float> %37, i64 1
  %i.cj = fmul float %i.ci, %40
  %i.ck = extractelement <4 x float> %37, i64 0
  %i.cl = call float @llvm.fmuladd.f32(float %i.ck, float %41, float %i.cj)
  %i.cm = extractelement <4 x float> %37, i64 2
  %47 = call float @llvm.fmuladd.f32(float %i.cm, float %i.by, float %i.cl)
  %48 = extractelement <4 x float> %37, i64 3
  %i.cn = fadd float %48, %47
  store <2 x float> %i.ch, ptr %8, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store float %i.cn, ptr %.sroa.212.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.co, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.co, ptr noundef nonnull align 1 dereferenceable(9) @.str.65, i64 9, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 9, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 25
  store i8 0, ptr %i.cq, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store <2 x float> zeroinitializer, ptr %10, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 8
  store float -1.000000e+00, ptr %i.cr, align 8
  invoke fastcc void @"_ZZN6Assimp11X3DExporter20CheckAndExport_LightERK6aiNodemENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK10aiVector3tIfESG_"(ptr nonnull %0, ptr nonnull %3, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) %10)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %._crit_edge.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.cs = load ptr, ptr %9, align 8               ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.co
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %bb.n
  %i.cu = load i64, ptr %i.co, align 8
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.cw, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 16, ptr %i.a, align 8
  %i.cx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc132 unwind label %bb.q  ; 2 uses

.noexc132:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129
  store ptr %i.cx, ptr %11, align 8
  %i.cy = load i64, ptr %i.a, align 8             ; 3 uses
  store i64 %i.cy, ptr %i.cw, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cx, ptr noundef nonnull align 1 dereferenceable(16) @.str.66, i64 16, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.cy, ptr %i.cz, align 8
  %i.da = load ptr, ptr %11, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cy
  store i8 0, ptr %i.db, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  invoke void @_ZN6Assimp11X3DExporter19NodeHelper_OpenNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmbRKNS1_4listINS0_10SAttributeESaISA_EEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %2, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %.noexc132
  %i.dc = load ptr, ptr %11, align 8              ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.cw
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %bb.o
  %i.de = load i64, ptr %i.cw, align 8
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %.critedge

bb.p:                                             ; preds = %._crit_edge.i.i123
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.dh = load ptr, ptr %9, align 8               ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.co
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %bb.p
  %i.dj = load i64, ptr %i.co, align 8
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.s

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

bb.r:                                             ; preds = %.noexc132
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dn = load ptr, ptr %11, align 8              ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.cw
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %bb.r
  %i.dp = load i64, ptr %i.cw, align 8
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140, %bb.q
  %.pn93 = phi { ptr, i32 } [ %i.dl, %bb.q ], [ %i.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140 ], [ %i.dm, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
  %.pn93.pn = phi { ptr, i32 } [ %.pn93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142 ], [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.at

._crit_edge.i.i147:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.dr = getelementptr inbounds nuw i8, ptr %i.p, i64 1068
  %i.ds = getelementptr inbounds nuw i8, ptr %i.p, i64 1076
  %i.dt = load float, ptr %i.ds, align 4
  %i.du = load <2 x float>, ptr %i.dr, align 4
  store <2 x float> %i.du, ptr %12, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %12, i64 8
  store float %i.dt, ptr %i.dv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.dw = getelementptr inbounds nuw i8, ptr %i.p, i64 1032
  %49 = getelementptr inbounds nuw i8, ptr %i.p, i64 1036
  %i.dx = getelementptr inbounds nuw i8, ptr %i.p, i64 1040
  %i.dy = load float, ptr %49, align 4            ; 2 uses
  %50 = load float, ptr %i.dw, align 4            ; 2 uses
  %51 = load float, ptr %i.dx, align 4            ; 2 uses
  %52 = shufflevector <2 x float> %34, <2 x float> %33, <2 x i32> <i32 0, i32 2>
  %53 = insertelement <2 x float> poison, float %i.dy, i64 0
  %54 = shufflevector <2 x float> %53, <2 x float> poison, <2 x i32> zeroinitializer
  %55 = fmul <2 x float> %52, %54
  %56 = shufflevector <8 x float> %i.w, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %57 = insertelement <2 x float> poison, float %50, i64 0
  %58 = shufflevector <2 x float> %57, <2 x float> poison, <2 x i32> zeroinitializer
  %59 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %56, <2 x float> %58, <2 x float> %55)
  %60 = shufflevector <2 x float> %34, <2 x float> %33, <2 x i32> <i32 1, i32 3>
  %61 = insertelement <2 x float> poison, float %51, i64 0
  %62 = shufflevector <2 x float> %61, <2 x float> poison, <2 x i32> zeroinitializer
  %63 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %60, <2 x float> %62, <2 x float> %59)
  %64 = shufflevector <2 x float> %i.y, <2 x float> %i.x, <2 x i32> <i32 1, i32 3>
  %65 = fadd <2 x float> %64, %63
  %66 = extractelement <4 x float> %37, i64 1
  %i.dz = fmul float %66, %i.dy
  %i.ea = extractelement <4 x float> %37, i64 0
  %i.eb = call float @llvm.fmuladd.f32(float %i.ea, float %50, float %i.dz)
  %i.ec = extractelement <4 x float> %37, i64 2
  %i.ed = call float @llvm.fmuladd.f32(float %i.ec, float %51, float %i.eb)
  %67 = extractelement <4 x float> %37, i64 3
  %i.ee = fadd float %67, %i.ed
  store <2 x float> %65, ptr %13, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store float %i.ee, ptr %.sroa.28.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.ef = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.ef, ptr %14, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.ef, ptr noundef nonnull align 1 dereferenceable(11) @.str.67, i64 11, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 11, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %14, i64 27
  store i8 0, ptr %i.eh, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %15, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %15, i64 8
  store float 0.000000e+00, ptr %i.ei, align 8
  invoke fastcc void @"_ZZN6Assimp11X3DExporter20CheckAndExport_LightERK6aiNodemENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK10aiVector3tIfESG_"(ptr nonnull %0, ptr nonnull %3, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 4 dereferenceable(12) %12, ptr noundef nonnull align 4 dereferenceable(12) %15)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %._crit_edge.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.ej = load ptr, ptr %14, align 8              ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.ef
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %bb.t
  %i.el = load i64, ptr %i.ef, align 8
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.en = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.en, ptr %16, align 8
  store i64 7957695015157985132, ptr %i.en, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 8, ptr %i.eo, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i8 0, ptr %i.ep, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  store <2 x float> zeroinitializer, ptr %17, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %17, i64 8
  store float 0.000000e+00, ptr %i.eq, align 8
  invoke fastcc void @"_ZZN6Assimp11X3DExporter20CheckAndExport_LightERK6aiNodemENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK10aiVector3tIfESG_"(ptr nonnull %0, ptr nonnull %3, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 4 dereferenceable(12) %13, ptr noundef nonnull align 4 dereferenceable(12) %17)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.er = load ptr, ptr %16, align 8              ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.en
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %bb.u
  %i.et = load i64, ptr %i.en, align 8
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.ev = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.ev, ptr %18, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ev, ptr noundef nonnull align 1 dereferenceable(10) @.str.69, i64 10, i1 false)
  %i.ew = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 10, ptr %i.ew, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %18, i64 26
  store i8 0, ptr %i.ex, align 2
  invoke void @_ZN6Assimp11X3DExporter19NodeHelper_OpenNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmbRKNS1_4listINS0_10SAttributeESaISA_EEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef %2, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  %i.ey = load ptr, ptr %18, align 8              ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.ev
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165: ; preds = %bb.v
  %i.fa = load i64, ptr %i.ev, align 8
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %.critedge

bb.w:                                             ; preds = %._crit_edge.i.i147
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.fd = load ptr, ptr %14, align 8              ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.ef
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %bb.w
  %i.ff = load i64, ptr %i.ef, align 8
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.z

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.fi = load ptr, ptr %16, align 8              ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.en
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171: ; preds = %bb.x
  %i.fk = load i64, ptr %i.en, align 8
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.z

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  %i.fm = landingpad { ptr, i32 }
          cleanup
  %i.fn = load ptr, ptr %18, align 8              ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.ev
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %bb.y
  %i.fp = load i64, ptr %i.ev, align 8
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
  %.pn88.pn = phi { ptr, i32 } [ %i.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ], [ %i.fh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173 ], [ %i.fc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.at

._crit_edge.i.i185:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.fr = getelementptr inbounds nuw i8, ptr %i.p, i64 1068
  %i.fs = getelementptr inbounds nuw i8, ptr %i.p, i64 1076
  %i.ft = load float, ptr %i.fs, align 4
  %i.fu = load <2 x float>, ptr %i.fr, align 4
  store <2 x float> %i.fu, ptr %19, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %19, i64 8
  store float %i.ft, ptr %i.fv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  %i.fw = getelementptr inbounds nuw i8, ptr %i.p, i64 1032
  %68 = shufflevector <2 x float> %34, <2 x float> %33, <2 x i32> <i32 0, i32 2> ; 2 uses
  %69 = shufflevector <8 x float> %i.w, <8 x float> poison, <2 x i32> <i32 0, i32 4> ; 2 uses
  %70 = shufflevector <2 x float> %i.y, <2 x float> %i.x, <2 x i32> <i32 0, i32 2> ; 2 uses
  %71 = shufflevector <2 x float> %i.y, <2 x float> %i.x, <2 x i32> <i32 1, i32 3>
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  %i.fx = getelementptr inbounds nuw i8, ptr %i.p, i64 1048
  %72 = insertelement <2 x float> %36, float %.sroa.40.0.copyload, i64 1
  %73 = load <4 x float>, ptr %i.fw, align 4      ; 7 uses
  %74 = shufflevector <4 x float> %73, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %75 = fmul <2 x float> %68, %74
  %76 = shufflevector <4 x float> %73, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %77 = shufflevector <4 x float> %73, <4 x float> poison, <2 x i32> zeroinitializer
  %78 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %69, <2 x float> %77, <2 x float> %75)
  %79 = shufflevector <4 x float> %73, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %80 = shufflevector <4 x float> %73, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %81 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %70, <2 x float> %80, <2 x float> %78)
  %82 = fadd <2 x float> %71, %81
  store <2 x float> %82, ptr %20, align 8
  %83 = load <2 x float>, ptr %i.fx, align 4      ; 4 uses
  %84 = shufflevector <4 x float> %37, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %85 = shufflevector <2 x float> %83, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %86 = shufflevector <4 x float> %73, <4 x float> %85, <2 x i32> <i32 1, i32 4>
  %i.fy = fmul <2 x float> %84, %86
  %i.fz = shufflevector <4 x float> %37, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ga = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fz, <2 x float> %76, <2 x float> %i.fy)
  %87 = shufflevector <4 x float> %37, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %88 = shufflevector <2 x float> %79, <2 x float> %83, <2 x i32> <i32 0, i32 3>
  %89 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %87, <2 x float> %88, <2 x float> %i.ga)
  %90 = shufflevector <4 x float> %37, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %91 = fadd <2 x float> %90, %89                 ; 2 uses
  %i.gb = extractelement <2 x float> %91, i64 0
  store float %i.gb, ptr %.sroa.24.0..sroa_idx, align 8
  %92 = shufflevector <2 x float> %83, <2 x float> poison, <2 x i32> zeroinitializer
  %93 = fmul <2 x float> %68, %92
  %94 = shufflevector <4 x float> %73, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.gc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %69, <2 x float> %94, <2 x float> %93)
  %95 = shufflevector <2 x float> %83, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %96 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %70, <2 x float> %95, <2 x float> %i.gc)
  %i.gd = fadd <2 x float> %72, %96
  store <2 x float> %i.gd, ptr %21, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ge = extractelement <2 x float> %91, i64 1
  store float %i.ge, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  %i.gf = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  store ptr %i.gf, ptr %22, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.gf, ptr noundef nonnull align 1 dereferenceable(11) @.str.67, i64 11, i1 false)
  %i.gg = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 11, ptr %i.gg, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %22, i64 27
  store i8 0, ptr %i.gh, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %23, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %23, i64 8
  store float 0.000000e+00, ptr %i.gi, align 8
  invoke fastcc void @"_ZZN6Assimp11X3DExporter20CheckAndExport_LightERK6aiNodemENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK10aiVector3tIfESG_"(ptr nonnull %0, ptr nonnull %3, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 4 dereferenceable(12) %19, ptr noundef nonnull align 4 dereferenceable(12) %23)
          to label %bb.aa unwind label %bb.ag

bb.aa:                                            ; preds = %._crit_edge.i.i185
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  %i.gj = load ptr, ptr %22, align 8              ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.gf
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189: ; preds = %bb.aa
  %i.gl = load i64, ptr %i.gf, align 8
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  %i.gn = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.gn, ptr %24, align 8
  store i64 7957695015157985132, ptr %i.gn, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 8, ptr %i.go, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %24, i64 24
  store i8 0, ptr %i.gp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  store <2 x float> zeroinitializer, ptr %25, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %25, i64 8
  store float 0.000000e+00, ptr %i.gq, align 8
  invoke fastcc void @"_ZZN6Assimp11X3DExporter20CheckAndExport_LightERK6aiNodemENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK10aiVector3tIfESG_"(ptr nonnull %0, ptr nonnull %3, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 4 dereferenceable(12) %20, ptr noundef nonnull align 4 dereferenceable(12) %25)
          to label %bb.ab unwind label %bb.ah

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  %i.gr = load ptr, ptr %24, align 8              ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.gn
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196: ; preds = %bb.ab
  %i.gt = load i64, ptr %i.gn, align 8
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  %i.gv = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  store ptr %i.gv, ptr %26, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.gv, ptr noundef nonnull align 1 dereferenceable(9) @.str.65, i64 9, i1 false)
  %i.gw = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 9, ptr %i.gw, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %26, i64 25
  store i8 0, ptr %i.gx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26
  store <2 x float> zeroinitializer, ptr %27, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %27, i64 8
  store float -1.000000e+00, ptr %i.gy, align 8
  invoke fastcc void @"_ZZN6Assimp11X3DExporter20CheckAndExport_LightERK6aiNodemENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK10aiVector3tIfESG_"(ptr nonnull %0, ptr nonnull %3, ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 4 dereferenceable(12) %21, ptr noundef nonnull align 4 dereferenceable(12) %27)
          to label %bb.ac unwind label %bb.ai

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  %i.gz = load ptr, ptr %26, align 8              ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.gv
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203: ; preds = %bb.ac
  %i.hb = load i64, ptr %i.gv, align 8
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #26
  %i.hd = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 6 uses
  store ptr %i.hd, ptr %28, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.hd, ptr noundef nonnull align 1 dereferenceable(9) @.str.70, i64 9, i1 false)
  %i.he = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 9, ptr %i.he, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %28, i64 25
  store i8 0, ptr %i.hf, align 1
  %i.hg = getelementptr inbounds nuw i8, ptr %i.p, i64 1116
  %i.hh = load float, ptr %i.hg, align 4
  invoke void @_ZN6Assimp11X3DExporter26AttrHelper_FloatToAttrListERNSt7__cxx114listINS0_10SAttributeESaIS3_EEERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEff(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %28, float noundef %i.hh, float noundef f0x3F490FF9)
          to label %bb.ad unwind label %bb.aj

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205
  %i.hi = load ptr, ptr %28, align 8              ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.hd
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210: ; preds = %bb.ad
  %i.hk = load i64, ptr %i.hd, align 8
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #26
  %i.hm = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 6 uses
  store ptr %i.hm, ptr %29, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.hm, ptr noundef nonnull align 1 dereferenceable(11) @.str.71, i64 11, i1 false)
  %i.hn = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 11, ptr %i.hn, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %29, i64 27
  store i8 0, ptr %i.ho, align 1
  %i.hp = getelementptr inbounds nuw i8, ptr %i.p, i64 1120
  %i.hq = load float, ptr %i.hp, align 4
  invoke void @_ZN6Assimp11X3DExporter26AttrHelper_FloatToAttrListERNSt7__cxx114listINS0_10SAttributeESaIS3_EEERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEff(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %29, float noundef %i.hq, float noundef f0x3FC90FD8)
          to label %bb.ae unwind label %bb.ak

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212
  %i.hr = load ptr, ptr %29, align 8              ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.hm
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217: ; preds = %bb.ae
  %i.ht = load i64, ptr %i.hm, align 8
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #26
  %i.hv = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 6 uses
  store ptr %i.hv, ptr %30, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.hv, ptr noundef nonnull align 1 dereferenceable(9) @.str.72, i64 9, i1 false)
  %i.hw = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 9, ptr %i.hw, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %30, i64 25
  store i8 0, ptr %i.hx, align 1
  invoke void @_ZN6Assimp11X3DExporter19NodeHelper_OpenNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmbRKNS1_4listINS0_10SAttributeESaISA_EEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(32) %30, i64 noundef %2, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.af unwind label %bb.al

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219
  %i.hy = load ptr, ptr %30, align 8              ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %i.hv
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224: ; preds = %bb.af
  %i.ia = load i64, ptr %i.hv, align 8
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ib) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %.critedge

bb.ag:                                            ; preds = %._crit_edge.i.i185
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  %i.id = load ptr, ptr %22, align 8              ; 2 uses
  %i.ie = icmp eq ptr %i.id, %i.gf
  br i1 %i.ie, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227: ; preds = %bb.ag
  %i.if = load i64, ptr %i.gf, align 8
  %i.ig = add i64 %i.if, 1
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ig) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br label %bb.am

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191
  %i.ih = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  %i.ii = load ptr, ptr %24, align 8              ; 2 uses
  %i.ij = icmp eq ptr %i.ii, %i.gn
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230: ; preds = %bb.ah
  %i.ik = load i64, ptr %i.gn, align 8
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.il) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232
end_hunk_0
