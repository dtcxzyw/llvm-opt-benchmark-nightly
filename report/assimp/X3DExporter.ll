Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/X3DExporter?download=true
inline.NumInlined: 1687
inline.NumDeleted: 345
begin_hunk_0_@_ZN6Assimp11X3DExporter11Export_NodeEPK6aiNodem:bb.a
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
          to label %bb.d unwind label %bb.h       ; 11 uses

bb.d:                                             ; preds = %bb.c
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %.sroa.24.0..sroa_idx280 = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %.sroa.28.0..sroa_idx284 = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.w = load <8 x float>, ptr %i.v, align 4      ; 6 uses
  %i.x = load <2 x float>, ptr %.sroa.24.0..sroa_idx280, align 4 ; 3 uses
  %i.y = load <2 x float>, ptr %.sroa.8.0..sroa_idx, align 4 ; 3 uses
  %i.z = load <2 x float>, ptr %.sroa.28.0..sroa_idx284, align 4 ; 3 uses
  %.sroa.32.0.copyload = load float, ptr %.sroa.32.0..sroa_idx, align 4
  %i.aa = load <2 x float>, ptr %.sroa.12.0..sroa_idx, align 4 ; 3 uses
  %33 = load <2 x float>, ptr %.sroa.16.0..sroa_idx, align 4
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 36
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 44
  %.sroa.36.0.copyload = load float, ptr %.sroa.36.0..sroa_idx, align 4 ; 3 uses
  %.sroa.40.0.copyload = load float, ptr %.sroa.40.0..sroa_idx, align 4 ; 3 uses
  %.sroa.44.0.copyload = load float, ptr %.sroa.44.0..sroa_idx, align 4 ; 3 uses
  %.sroa.48.0.copyload = load float, ptr %.sroa.48.0..sroa_idx, align 4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store ptr %i.s, ptr %i.c, align 8
  %i.ab = invoke noundef ptr @_ZNSt7__cxx114listIN6Assimp11X3DExporter10SAttributeESaIS3_EE14_M_create_nodeIJRA4_KcPS7_EEEPSt10_List_nodeIS3_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(4) @.str.8, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %3) #26
  %i.ac = load i64, ptr %i.e, align 8
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.ae = invoke noundef ptr @_ZNSt7__cxx114listIN6Assimp11X3DExporter10SAttributeESaIS3_EE14_M_create_nodeIJRA7_KcRA5_S7_EEEPSt10_List_nodeIS3_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(7) @.str.64, ptr noundef nonnull align 1 dereferenceable(5) @.str.57)
          to label %.noexc.i unwind label %bb.j

.noexc.i:                                         ; preds = %bb.e
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %3) #26
  %i.af = load i64, ptr %i.e, align 8
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.ah, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 16, ptr %i.b, align 8
  %i.ai = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ai, ptr %5, align 8
  %i.aj = load i64, ptr %i.b, align 8             ; 3 uses
  store i64 %i.aj, ptr %i.ah, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ai, ptr noundef nonnull align 1 dereferenceable(16) @.str.31, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.aj, ptr %i.ak, align 8
  %i.al = load ptr, ptr %5, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 1104
  %i.ao = load float, ptr %i.an, align 4          ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 1108
  %i.aq = load float, ptr %i.ap, align 4          ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.p, i64 1112
  %i.as = load float, ptr %i.ar, align 4          ; 2 uses
  %i.at = fmul float %i.aq, %i.aq
  %i.au = call float @llvm.fmuladd.f32(float %i.ao, float %i.ao, float %i.at)
  %i.av = call noundef float @llvm.fmuladd.f32(float %i.as, float %i.as, float %i.au)
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %i.av)
  invoke void @_ZN6Assimp11X3DExporter26AttrHelper_FloatToAttrListERNSt7__cxx114listINS0_10SAttributeESaIS3_EEERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEff(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %5, float noundef %sqrt.i, float noundef 0.000000e+00)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %.noexc
  %i.aw = load ptr, ptr %5, align 8               ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.ah
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.ay = load i64, ptr %i.ah, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.ba, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ba, ptr noundef nonnull align 1 dereferenceable(5) @.str.23, i64 5, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 5, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 21
  store i8 0, ptr %i.bc, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.p, i64 1080
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store <2 x float> splat (float 1.000000e+00), ptr %7, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float 1.000000e+00, ptr %i.be, align 8
  invoke void @_ZN6Assimp11X3DExporter27AttrHelper_Color3ToAttrListERNSt7__cxx114listINS0_10SAttributeESaIS3_EEERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEERK9aiColor3DSG_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(12) %i.bd, ptr noundef nonnull align 4 dereferenceable(12) %7)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.bf = load ptr, ptr %6, align 8               ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.ba
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %bb.g
  %i.bh = load i64, ptr %i.ba, align 8
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.bj = getelementptr inbounds nuw i8, ptr %i.p, i64 1028 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4
  switch i32 %i.bk, label %bb.an [
    i32 1, label %._crit_edge.i.i123
    i32 2, label %._crit_edge.i.i147
    i32 3, label %._crit_edge.i.i185
  ]

bb.h:                                             ; preds = %bb.c, %.split
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.at

bb.i:                                             ; preds = %bb.d
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.at

bb.j:                                             ; preds = %bb.e
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.k:                                             ; preds = %.noexc.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

bb.l:                                             ; preds = %.noexc
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %5, align 8               ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.ah
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %bb.l
  %i.bs = load i64, ptr %i.ah, align 8
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.k ], [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117 ], [ %i.bp, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.at

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.bv = load ptr, ptr %6, align 8               ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.ba
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %bb.m
  %i.bx = load i64, ptr %i.ba, align 8
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.at

._crit_edge.i.i123:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.bz = getelementptr inbounds nuw i8, ptr %i.p, i64 1044
  %i.ca = getelementptr inbounds nuw i8, ptr %i.p, i64 1048
  %i.cb = getelementptr inbounds nuw i8, ptr %i.p, i64 1052
  %i.cc = load float, ptr %i.bz, align 4          ; 2 uses
  %i.cd = load float, ptr %i.ca, align 4          ; 2 uses
  %i.ce = load float, ptr %i.cb, align 4          ; 2 uses
  %i.cf = shufflevector <8 x float> %i.w, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.cg = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = fmul <2 x float> %i.cf, %i.ch
  %i.cj = shufflevector <8 x float> %i.w, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.ck = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> %i.cl, <2 x float> %i.ci)
  %i.cn = shufflevector <8 x float> %i.w, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.co = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cn, <2 x float> %i.cp, <2 x float> %i.cm)
  %i.cr = shufflevector <8 x float> %i.w, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.cs = fadd <2 x float> %i.cr, %i.cq
  %i.ct = fmul float %.sroa.40.0.copyload, %i.cd
  %i.cu = call float @llvm.fmuladd.f32(float %.sroa.36.0.copyload, float %i.cc, float %i.ct)
  %i.cv = call float @llvm.fmuladd.f32(float %.sroa.44.0.copyload, float %i.ce, float %i.cu)
  %i.cw = fadd float %.sroa.48.0.copyload, %i.cv
  store <2 x float> %i.cs, ptr %8, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store float %i.cw, ptr %.sroa.212.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp11X3DExporter20CheckAndExport_LightERK6aiNodem:bb.a
._crit_edge.i.i147:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.ea = getelementptr inbounds nuw i8, ptr %i.p, i64 1068
  %i.eb = getelementptr inbounds nuw i8, ptr %i.p, i64 1076
  %i.ec = load float, ptr %i.eb, align 4
  %i.ed = load <2 x float>, ptr %i.ea, align 4
  store <2 x float> %i.ed, ptr %12, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %12, i64 8
  store float %i.ec, ptr %i.ee, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.ef = getelementptr inbounds nuw i8, ptr %i.p, i64 1032
  %i.eg = getelementptr inbounds nuw i8, ptr %i.p, i64 1036
  %i.eh = getelementptr inbounds nuw i8, ptr %i.p, i64 1040
  %i.ei = load float, ptr %i.ef, align 4          ; 2 uses
  %i.ej = load float, ptr %i.eg, align 4          ; 2 uses
  %i.ek = load float, ptr %i.eh, align 4          ; 2 uses
  %i.el = shufflevector <2 x float> %i.y, <2 x float> %i.x, <2 x i32> <i32 0, i32 2>
  %i.em = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.en = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eo = fmul <2 x float> %i.el, %i.en
  %i.ep = shufflevector <8 x float> %i.w, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.eq = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.es = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ep, <2 x float> %i.er, <2 x float> %i.eo)
  %i.et = shufflevector <2 x float> %i.y, <2 x float> %i.x, <2 x i32> <i32 1, i32 3>
  %i.eu = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ew = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.et, <2 x float> %i.ev, <2 x float> %i.es)
  %i.ex = shufflevector <2 x float> %i.aa, <2 x float> %i.z, <2 x i32> <i32 1, i32 3>
  %i.ey = fadd <2 x float> %i.ex, %i.ew
  %i.ez = fmul float %.sroa.40.0.copyload, %i.ej
  %i.fa = call float @llvm.fmuladd.f32(float %.sroa.36.0.copyload, float %i.ei, float %i.ez)
  %i.fb = call float @llvm.fmuladd.f32(float %.sroa.44.0.copyload, float %i.ek, float %i.fa)
  %i.fc = fadd float %.sroa.48.0.copyload, %i.fb
  store <2 x float> %i.ey, ptr %13, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store float %i.fc, ptr %.sroa.28.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.fd = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.fd, ptr %14, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.fd, ptr noundef nonnull align 1 dereferenceable(11) @.str.67, i64 11, i1 false)
  %i.fe = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 11, ptr %i.fe, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %14, i64 27
  store i8 0, ptr %i.ff, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %15, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %15, i64 8
  store float 0.000000e+00, ptr %i.fg, align 8
  invoke fastcc void @"_ZZN6Assimp11X3DExporter20CheckAndExport_LightERK6aiNodemENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK10aiVector3tIfESG_"(ptr nonnull %0, ptr nonnull %3, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 4 dereferenceable(12) %12, ptr noundef nonnull align 4 dereferenceable(12) %15)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %._crit_edge.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.fh = load ptr, ptr %14, align 8              ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.fd
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %bb.t
  %i.fj = load i64, ptr %i.fd, align 8
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.fl = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.fl, ptr %16, align 8
  store i64 7957695015157985132, ptr %i.fl, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 8, ptr %i.fm, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i8 0, ptr %i.fn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  store <2 x float> zeroinitializer, ptr %17, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %17, i64 8
  store float 0.000000e+00, ptr %i.fo, align 8
  invoke fastcc void @"_ZZN6Assimp11X3DExporter20CheckAndExport_LightERK6aiNodemENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK10aiVector3tIfESG_"(ptr nonnull %0, ptr nonnull %3, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 4 dereferenceable(12) %13, ptr noundef nonnull align 4 dereferenceable(12) %17)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.fp = load ptr, ptr %16, align 8              ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.fl
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %bb.u
  %i.fr = load i64, ptr %i.fl, align 8
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.ft = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.ft, ptr %18, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ft, ptr noundef nonnull align 1 dereferenceable(10) @.str.69, i64 10, i1 false)
  %i.fu = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 10, ptr %i.fu, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %18, i64 26
  store i8 0, ptr %i.fv, align 2
  invoke void @_ZN6Assimp11X3DExporter19NodeHelper_OpenNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmbRKNS1_4listINS0_10SAttributeESaISA_EEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef %2, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  %i.fw = load ptr, ptr %18, align 8              ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.ft
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165: ; preds = %bb.v
  %i.fy = load i64, ptr %i.ft, align 8
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %.critedge

bb.w:                                             ; preds = %._crit_edge.i.i147
  %i.ga = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.gb = load ptr, ptr %14, align 8              ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.fd
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %bb.w
  %i.gd = load i64, ptr %i.fd, align 8
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.ge) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.z

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.gg = load ptr, ptr %16, align 8              ; 2 uses
  %i.gh = icmp eq ptr %i.gg, %i.fl
  br i1 %i.gh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171: ; preds = %bb.x
  %i.gi = load i64, ptr %i.fl, align 8
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.z

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  %i.gk = landingpad { ptr, i32 }
          cleanup
  %i.gl = load ptr, ptr %18, align 8              ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.ft
  br i1 %i.gm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %bb.y
  %i.gn = load i64, ptr %i.ft, align 8
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.go) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
  %.pn88.pn = phi { ptr, i32 } [ %i.gk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ], [ %i.gf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173 ], [ %i.ga, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.at

._crit_edge.i.i185:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.gp = getelementptr inbounds nuw i8, ptr %i.p, i64 1068
  %i.gq = getelementptr inbounds nuw i8, ptr %i.p, i64 1076
  %i.gr = load float, ptr %i.gq, align 4
  %i.gs = load <2 x float>, ptr %i.gp, align 4
  store <2 x float> %i.gs, ptr %19, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %19, i64 8
  store float %i.gr, ptr %i.gt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  %i.gu = getelementptr inbounds nuw i8, ptr %i.p, i64 1032
  %i.gv = shufflevector <2 x float> %i.y, <2 x float> %i.x, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.gw = shufflevector <8 x float> %i.w, <8 x float> poison, <2 x i32> <i32 0, i32 4> ; 2 uses
  %i.gx = shufflevector <2 x float> %i.aa, <2 x float> %i.z, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.gy = shufflevector <2 x float> %i.aa, <2 x float> %i.z, <2 x i32> <i32 1, i32 3>
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  %i.gz = getelementptr inbounds nuw i8, ptr %i.p, i64 1048
  %i.ha = insertelement <2 x float> %33, float %.sroa.32.0.copyload, i64 1
  %i.hb = load <4 x float>, ptr %i.gu, align 4    ; 7 uses
  %i.hc = shufflevector <4 x float> %i.hb, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hd = fmul <2 x float> %i.gv, %i.hc
  %i.he = shufflevector <4 x float> %i.hb, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.hf = shufflevector <4 x float> %i.hb, <4 x float> poison, <2 x i32> zeroinitializer
  %i.hg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gw, <2 x float> %i.hf, <2 x float> %i.hd)
  %i.hh = shufflevector <4 x float> %i.hb, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.hi = shufflevector <4 x float> %i.hb, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.hj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gx, <2 x float> %i.hi, <2 x float> %i.hg)
  %i.hk = fadd <2 x float> %i.gy, %i.hj
  store <2 x float> %i.hk, ptr %20, align 8
  %i.hl = load <2 x float>, ptr %i.gz, align 4    ; 4 uses
  %i.hm = insertelement <2 x float> poison, float %.sroa.40.0.copyload, i64 0
  %i.hn = shufflevector <2 x float> %i.hm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ho = shufflevector <2 x float> %i.hl, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.hp = shufflevector <4 x float> %i.hb, <4 x float> %i.ho, <2 x i32> <i32 1, i32 4>
  %i.hq = fmul <2 x float> %i.hn, %i.hp
  %i.hr = insertelement <2 x float> poison, float %.sroa.36.0.copyload, i64 0
  %i.hs = shufflevector <2 x float> %i.hr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ht = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hs, <2 x float> %i.he, <2 x float> %i.hq)
  %i.hu = insertelement <2 x float> poison, float %.sroa.44.0.copyload, i64 0
  %i.hv = shufflevector <2 x float> %i.hu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hw = shufflevector <2 x float> %i.hh, <2 x float> %i.hl, <2 x i32> <i32 0, i32 3>
  %i.hx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hv, <2 x float> %i.hw, <2 x float> %i.ht)
  %i.hy = insertelement <2 x float> poison, float %.sroa.48.0.copyload, i64 0
  %i.hz = shufflevector <2 x float> %i.hy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ia = fadd <2 x float> %i.hz, %i.hx           ; 2 uses
  %i.ib = extractelement <2 x float> %i.ia, i64 0
  store float %i.ib, ptr %.sroa.24.0..sroa_idx, align 8
  %i.ic = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.id = fmul <2 x float> %i.gv, %i.ic
  %i.ie = shufflevector <4 x float> %i.hb, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.if = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gw, <2 x float> %i.ie, <2 x float> %i.id)
  %i.ig = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ih = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gx, <2 x float> %i.ig, <2 x float> %i.if)
  %i.ii = fadd <2 x float> %i.ha, %i.ih
  store <2 x float> %i.ii, ptr %21, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ij = extractelement <2 x float> %i.ia, i64 1
  store float %i.ij, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  %i.ik = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  store ptr %i.ik, ptr %22, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.ik, ptr noundef nonnull align 1 dereferenceable(11) @.str.67, i64 11, i1 false)
  %i.il = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 11, ptr %i.il, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %22, i64 27
  store i8 0, ptr %i.im, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %23, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %23, i64 8
  store float 0.000000e+00, ptr %i.in, align 8
  invoke fastcc void @"_ZZN6Assimp11X3DExporter20CheckAndExport_LightERK6aiNodemENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK10aiVector3tIfESG_"(ptr nonnull %0, ptr nonnull %3, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 4 dereferenceable(12) %19, ptr noundef nonnull align 4 dereferenceable(12) %23)
          to label %bb.aa unwind label %bb.ag

bb.aa:                                            ; preds = %._crit_edge.i.i185
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  %i.io = load ptr, ptr %22, align 8              ; 2 uses
  %i.ip = icmp eq ptr %i.io, %i.ik
  br i1 %i.ip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189: ; preds = %bb.aa
  %i.iq = load i64, ptr %i.ik, align 8
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.ir) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  %i.is = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.is, ptr %24, align 8
  store i64 7957695015157985132, ptr %i.is, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 8, ptr %i.it, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %24, i64 24
  store i8 0, ptr %i.iu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  store <2 x float> zeroinitializer, ptr %25, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %25, i64 8
  store float 0.000000e+00, ptr %i.iv, align 8
  invoke fastcc void @"_ZZN6Assimp11X3DExporter20CheckAndExport_LightERK6aiNodemENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK10aiVector3tIfESG_"(ptr nonnull %0, ptr nonnull %3, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 4 dereferenceable(12) %20, ptr noundef nonnull align 4 dereferenceable(12) %25)
          to label %bb.ab unwind label %bb.ah

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  %i.iw = load ptr, ptr %24, align 8              ; 2 uses
  %i.ix = icmp eq ptr %i.iw, %i.is
  br i1 %i.ix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196: ; preds = %bb.ab
  %i.iy = load i64, ptr %i.is, align 8
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.iz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  %i.ja = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  store ptr %i.ja, ptr %26, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ja, ptr noundef nonnull align 1 dereferenceable(9) @.str.65, i64 9, i1 false)
  %i.jb = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 9, ptr %i.jb, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %26, i64 25
  store i8 0, ptr %i.jc, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26
  store <2 x float> zeroinitializer, ptr %27, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %27, i64 8
  store float -1.000000e+00, ptr %i.jd, align 8
  invoke fastcc void @"_ZZN6Assimp11X3DExporter20CheckAndExport_LightERK6aiNodemENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK10aiVector3tIfESG_"(ptr nonnull %0, ptr nonnull %3, ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 4 dereferenceable(12) %21, ptr noundef nonnull align 4 dereferenceable(12) %27)
          to label %bb.ac unwind label %bb.ai

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  %i.je = load ptr, ptr %26, align 8              ; 2 uses
  %i.jf = icmp eq ptr %i.je, %i.ja
  br i1 %i.jf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203: ; preds = %bb.ac
  %i.jg = load i64, ptr %i.ja, align 8
  %i.jh = add i64 %i.jg, 1
  call void @_ZdlPvm(ptr noundef %i.je, i64 noundef %i.jh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #26
  %i.ji = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 6 uses
  store ptr %i.ji, ptr %28, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ji, ptr noundef nonnull align 1 dereferenceable(9) @.str.70, i64 9, i1 false)
  %i.jj = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 9, ptr %i.jj, align 8
  %i.jk = getelementptr inbounds nuw i8, ptr %28, i64 25
  store i8 0, ptr %i.jk, align 1
  %i.jl = getelementptr inbounds nuw i8, ptr %i.p, i64 1116
  %i.jm = load float, ptr %i.jl, align 4
  invoke void @_ZN6Assimp11X3DExporter26AttrHelper_FloatToAttrListERNSt7__cxx114listINS0_10SAttributeESaIS3_EEERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEff(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %28, float noundef %i.jm, float noundef f0x3F490FF9)
          to label %bb.ad unwind label %bb.aj

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205
  %i.jn = load ptr, ptr %28, align 8              ; 2 uses
  %i.jo = icmp eq ptr %i.jn, %i.ji
  br i1 %i.jo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210: ; preds = %bb.ad
  %i.jp = load i64, ptr %i.ji, align 8
  %i.jq = add i64 %i.jp, 1
  call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #26
  %i.jr = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 6 uses
  store ptr %i.jr, ptr %29, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.jr, ptr noundef nonnull align 1 dereferenceable(11) @.str.71, i64 11, i1 false)
  %i.js = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 11, ptr %i.js, align 8
  %i.jt = getelementptr inbounds nuw i8, ptr %29, i64 27
  store i8 0, ptr %i.jt, align 1
  %i.ju = getelementptr inbounds nuw i8, ptr %i.p, i64 1120
  %i.jv = load float, ptr %i.ju, align 4
  invoke void @_ZN6Assimp11X3DExporter26AttrHelper_FloatToAttrListERNSt7__cxx114listINS0_10SAttributeESaIS3_EEERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEff(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %29, float noundef %i.jv, float noundef f0x3FC90FD8)
          to label %bb.ae unwind label %bb.ak

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212
  %i.jw = load ptr, ptr %29, align 8              ; 2 uses
  %i.jx = icmp eq ptr %i.jw, %i.jr
  br i1 %i.jx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217: ; preds = %bb.ae
  %i.jy = load i64, ptr %i.jr, align 8
  %i.jz = add i64 %i.jy, 1
  call void @_ZdlPvm(ptr noundef %i.jw, i64 noundef %i.jz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #26
  %i.ka = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 6 uses
  store ptr %i.ka, ptr %30, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ka, ptr noundef nonnull align 1 dereferenceable(9) @.str.72, i64 9, i1 false)
  %i.kb = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 9, ptr %i.kb, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %30, i64 25
  store i8 0, ptr %i.kc, align 1
  invoke void @_ZN6Assimp11X3DExporter19NodeHelper_OpenNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmbRKNS1_4listINS0_10SAttributeESaISA_EEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(32) %30, i64 noundef %2, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.af unwind label %bb.al

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219
  %i.kd = load ptr, ptr %30, align 8              ; 2 uses
  %i.ke = icmp eq ptr %i.kd, %i.ka
  br i1 %i.ke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224: ; preds = %bb.af
  %i.kf = load i64, ptr %i.ka, align 8
  %i.kg = add i64 %i.kf, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226
end_hunk_1
begin_hunk_2_@_ZSt20__throw_length_errorPKc
; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt7__cxx114listIN6Assimp11X3DExporter10SAttributeESaIS3_EE14_M_create_nodeIJRA4_KcPS7_EEEPSt10_List_nodeIS3_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #30 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.e, ptr %3, align 8
  %i.f = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(4) %1) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.f, ptr %i.b, align 8
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.h, ptr %3, align 8
  %i.i = load i64, ptr %i.b, align 8
  store i64 %i.i, ptr %i.e, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %1, align 1
  store i8 %i.k, ptr %i.j, align 1
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 dereferenceable(4) %1, i64 %i.f, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.l = load i64, ptr %i.b, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.l, ptr %i.m, align 8
  %i.n = load ptr, ptr %3, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.p = load ptr, ptr %2, align 8                ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.q, ptr %4, align 8
  %i.r = icmp eq ptr %i.p, null
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.93) #29
          to label %.noexc11 unwind label %bb.k

.noexc11:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.s = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.s, ptr %i.a, align 8
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i10, label %._crit_edge.i.i9

.noexc.i10:                                       ; preds = %bb.f
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc12 unwind label %bb.k   ; 2 uses

.noexc12:                                         ; preds = %.noexc.i10
  store ptr %i.u, ptr %4, align 8
  %i.v = load i64, ptr %i.a, align 8
  store i64 %i.v, ptr %i.q, align 8
  br label %._crit_edge.i.i9

._crit_edge.i.i9:                                 ; preds = %.noexc12, %bb.f
  %i.w = phi ptr [ %i.u, %.noexc12 ], [ %i.q, %bb.f ] ; 2 uses
  switch i64 %i.s, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i9
  %i.x = load i8, ptr %i.p, align 1
  store i8 %i.x, ptr %i.w, align 1
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr nonnull align 1 %i.p, i64 %i.s, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i9
  %i.y = load i64, ptr %i.a, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.y, ptr %i.z, align 8
  %i.aa = load ptr, ptr %4, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  invoke void @_ZN6Assimp11X3DExporter10SAttributeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt15__new_allocatorISt10_List_nodeIN6Assimp11X3DExporter10SAttributeEEE9constructIS3_JRA4_KcPS7_EEEvPT_DpOT0_.exit unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

bb.k:                                             ; preds = %.noexc.i10, %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.l:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = load ptr, ptr %4, align 8               ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.q
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.ah = load i64, ptr %i.q, align 8
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.ad, %bb.k ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ae, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.aj = load ptr, ptr %3, align 8               ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.e
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = load i64, ptr %i.e, align 8
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, %bb.j
  %.pn.pn.i = phi { ptr, i32 } [ %i.ac, %bb.j ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 80) #27
  resume { ptr, i32 } %.pn.pn.i

_ZNSt15__new_allocatorISt10_List_nodeIN6Assimp11X3DExporter10SAttributeEEE9constructIS3_JRA4_KcPS7_EEEvPT_DpOT0_.exit: ; preds = %bb.i
  %i.an = load ptr, ptr %4, align 8               ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.q
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt15__new_allocatorISt10_List_nodeIN6Assimp11X3DExporter10SAttributeEEE9constructIS3_JRA4_KcPS7_EEEvPT_DpOT0_.exit
  %i.ap = load i64, ptr %i.q, align 8
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt15__new_allocatorISt10_List_nodeIN6Assimp11X3DExporter10SAttributeEEE9constructIS3_JRA4_KcPS7_EEEvPT_DpOT0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ar = load ptr, ptr %3, align 8               ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.e
  br i1 %i.as, label %_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp11X3DExporter10SAttributeEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.at = load i64, ptr %i.e, align 8
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #27
  br label %_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp11X3DExporter10SAttributeEEEED2Ev.exit

_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp11X3DExporter10SAttributeEEEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret ptr %i.c
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(12) %3) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load float, ptr %i.a, align 4
  store float %i.b, ptr %3, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.e = load float, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.e, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.i = load float, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.i, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %4 = load <2 x float>, ptr %i.n, align 4        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load float, ptr %i.o, align 4            ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load float, ptr %i.q, align 4            ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = load float, ptr %0, align 4              ; 3 uses
  %i.u = load float, ptr %i.c, align 4            ; 2 uses
  %i.v = load float, ptr %i.g, align 4            ; 3 uses
  %i.w = load float, ptr %i.k, align 4            ; 4 uses
  %i.x = load float, ptr %i.l, align 4            ; 4 uses
  %i.y = load float, ptr %i.m, align 4            ; 4 uses
  %i.z = insertelement <2 x float> poison, float %i.p, i64 0
  %i.aa = insertelement <2 x float> %i.z, float %i.u, i64 1 ; 2 uses
  %i.ab = fmul <2 x float> %i.aa, %i.aa
  %i.ac = insertelement <2 x float> %4, float %i.t, i64 1 ; 2 uses
  %i.ad = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ac, <2 x float> %i.ab)
  %i.ae = insertelement <2 x float> poison, float %i.r, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.v, i64 1 ; 2 uses
  %i.ag = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.af, <2 x float> %i.ad)
  %i.ah = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ag) ; 4 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 1
  store float %i.ai, ptr %1, align 4
  %i.aj = fmul float %i.x, %i.x
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.w, float %i.w, float %i.aj)
  %i.al = tail call noundef float @llvm.fmuladd.f32(float %i.y, float %i.y, float %i.ak)
  %sqrt.i31 = tail call noundef float @llvm.sqrt.f32(float %i.al) ; 3 uses
  store float %sqrt.i31, ptr %i.s, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.an = extractelement <2 x float> %i.ah, i64 0
  store float %i.an, ptr %i.am, align 4
  %i.ao = load float, ptr %0, align 4             ; 3 uses
  %i.ap = load float, ptr %i.l, align 4           ; 3 uses
  %i.aq = fmul float %i.ao, %i.ap                 ; 2 uses
  %i.ar = load float, ptr %i.q, align 4           ; 4 uses
  %i.as = fmul float %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.au = load float, ptr %i.at, align 4          ; 6 uses
  %i.av = load float, ptr %i.h, align 4           ; 5 uses
  %i.aw = fmul float %i.aq, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ay = load float, ptr %i.ax, align 4          ; 6 uses
  %i.az = fneg float %i.ay
  %i.ba = fmul float %i.aw, %i.az
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.as, float %i.au, float %i.ba)
  %i.bc = load float, ptr %i.o, align 4           ; 3 uses
  %i.bd = fmul float %i.ao, %i.bc                 ; 2 uses
  %i.be = fmul float %i.av, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bg = load float, ptr %i.bf, align 4          ; 6 uses
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.be, float %i.bg, float %i.bb)
  %i.bi = load float, ptr %i.m, align 4           ; 4 uses
  %i.bj = fneg float %i.bi                        ; 3 uses
  %i.bk = fmul float %i.bd, %i.bj
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.au, float %i.bh)
  %i.bm = load float, ptr %i.d, align 4           ; 3 uses
  %i.bn = fmul float %i.ao, %i.bm                 ; 2 uses
  %i.bo = fmul float %i.bi, %i.bn
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.ay, float %i.bl)
  %i.bq = fneg float %i.ar                        ; 3 uses
  %i.br = fmul float %i.bn, %i.bq
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.br, float %i.bg, float %i.bp)
  %i.bt = load float, ptr %i.k, align 4           ; 3 uses
  %i.bu = fmul float %i.bc, %i.bt                 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bw = load float, ptr %i.bv, align 4          ; 6 uses
  %i.bx = fneg float %i.av                        ; 2 uses
  %i.by = fmul float %i.bu, %i.bx
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.by, float %i.bw, float %i.bs)
  %i.ca = load float, ptr %i.g, align 4           ; 4 uses
  %i.cb = fmul float %i.bu, %i.ca
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.au, float %i.bz)
  %i.cd = fmul float %i.bm, %i.bt                 ; 2 uses
  %i.ce = fneg float %i.ca                        ; 3 uses
  %i.cf = fmul float %i.cd, %i.ce
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.ay, float %i.cc)
  %i.ch = fmul float %i.ar, %i.cd
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.bw, float %i.cg)
  %i.cj = load float, ptr %i.c, align 4           ; 3 uses
  %i.ck = fmul float %i.bt, %i.cj                 ; 2 uses
  %i.cl = fmul float %i.ck, %i.bq
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.au, float %i.ci)
  %i.cn = fmul float %i.av, %i.ck
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.ay, float %i.cm)
  %i.cp = load float, ptr %i.n, align 4           ; 3 uses
  %i.cq = fmul float %i.bm, %i.cp                 ; 2 uses
  %i.cr = fmul float %i.ca, %i.cq
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.bg, float %i.co)
  %i.ct = fmul float %i.cq, %i.bj
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.bw, float %i.cs)
  %i.cv = fmul float %i.cj, %i.cp                 ; 2 uses
  %i.cw = fmul float %i.bi, %i.cv
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.au, float %i.cu)
  %i.cy = fmul float %i.cv, %i.bx
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.bg, float %i.cx)
  %i.da = fmul float %i.ap, %i.cp                 ; 2 uses
  %i.db = fmul float %i.av, %i.da
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.db, float %i.bw, float %i.cz)
  %i.dd = fmul float %i.da, %i.ce
  %i.de = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.au, float %i.dc)
  %i.df = load float, ptr %i.a, align 4           ; 3 uses
  %i.dg = fmul float %i.cj, %i.df                 ; 2 uses
  %i.dh = fmul float %i.dg, %i.bj
  %i.di = tail call float @llvm.fmuladd.f32(float %i.dh, float %i.ay, float %i.de)
  %i.dj = fmul float %i.ar, %i.dg
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.bg, float %i.di)
  %i.dl = fmul float %i.ap, %i.df                 ; 2 uses
  %i.dm = fmul float %i.dl, %i.bq
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.dm, float %i.bw, float %i.dk)
  %i.do = fmul float %i.ca, %i.dl
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.do, float %i.ay, float %i.dn)
  %i.dq = fmul float %i.bc, %i.df                 ; 2 uses
  %i.dr = fmul float %i.dq, %i.ce
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.dr, float %i.bg, float %i.dp)
  %i.dt = fmul float %i.bi, %i.dq
  %i.du = tail call noundef float @llvm.fmuladd.f32(float %i.dt, float %i.bw, float %i.ds)
  %i.dv = fcmp olt float %i.du, 0.000000e+00
  br i1 %i.dv, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load float, ptr %1, align 4
  %i.dw = insertelement <2 x float> %i.ah, float %.pre, i64 1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.dx = fneg <2 x float> %i.ah                  ; 3 uses
  %i.dy = fneg float %sqrt.i31                    ; 2 uses
  %i.dz = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %i.dz, float %i.dy, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %1, align 4
  %i.ea = extractelement <2 x float> %i.dx, i64 0
  store float %i.ea, ptr %i.am, align 4
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.eb = phi float [ %sqrt.i31, %._crit_edge ], [ %i.dy, %bb.b ] ; 2 uses
  %i.ec = phi <2 x float> [ %i.dw, %._crit_edge ], [ %i.dx, %bb.b ] ; 2 uses
  %i.ed = fcmp une <2 x float> %i.ec, zeroinitializer ; 3 uses
  %i.ee = fdiv <2 x float> splat (float 1.000000e+00), %i.ec ; 3 uses
  %i.ef = extractelement <2 x float> %i.ee, i64 1 ; 2 uses
  %i.eg = fmul float %i.t, %i.ef
  %i.eh = extractelement <2 x i1> %i.ed, i64 1    ; 2 uses
  %.sroa.055.0 = select i1 %i.eh, float %i.eg, float %i.t ; 6 uses
  %i.ei = fcmp une float %i.eb, 0.000000e+00      ; 3 uses
  %i.ej = fdiv float 1.000000e+00, %i.eb          ; 3 uses
  %i.ek = fmul float %i.x, %i.ej
  %i.el = fmul float %i.y, %i.ej
  %.sroa.27.0 = select i1 %i.ei, float %i.el, float %i.y ; 4 uses
  %.sroa.22.0 = select i1 %i.ei, float %i.ek, float %i.x ; 6 uses
  %i.em = insertelement <2 x float> %4, float %i.u, i64 1 ; 2 uses
  %i.en = fmul <2 x float> %i.em, %i.ee
  %i.eo = fmul float %i.v, %i.ef
  %.sroa.1260.0 = select i1 %i.eh, float %i.eo, float %i.v ; 4 uses
  %i.ep = fmul float %i.w, %i.ej
  %.sroa.17.0 = select i1 %i.ei, float %i.ep, float %i.w ; 4 uses
  %i.eq = extractelement <2 x float> %i.ee, i64 0 ; 2 uses
  %i.er = fmul float %i.p, %i.eq
  %i.es = fmul float %i.r, %i.eq
  %i.et = extractelement <2 x i1> %i.ed, i64 0    ; 2 uses
  %.sroa.42.0 = select i1 %i.et, float %i.es, float %i.r ; 6 uses
  %.sroa.37.0 = select i1 %i.et, float %i.er, float %i.p ; 4 uses
  %i.eu = select <2 x i1> %i.ed, <2 x float> %i.en, <2 x float> %i.em ; 6 uses
  %i.ev = fadd float %.sroa.055.0, %.sroa.22.0
  %i.ew = fadd float %i.ev, %.sroa.42.0           ; 2 uses
  %i.ex = fcmp ogt float %i.ew, 0.000000e+00
  br i1 %i.ex, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ey = fadd float %i.ew, 1.000000e+00
  %i.ez = tail call noundef float @sqrtf(float noundef %i.ey) #26
  %i.fa = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.ez, i64 1
  %i.fb = fmul <4 x float> %i.fa, <float 2.500000e-01, float 2.000000e+00, float poison, float poison> ; 2 uses
  %i.fc = shufflevector <4 x float> %i.fb, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 2 uses
  %i.fd = fsub float %.sroa.27.0, %.sroa.37.0
  %i.fe = insertelement <2 x float> poison, float %.sroa.1260.0, i64 0
  %i.ff = insertelement <2 x float> %i.fe, float %.sroa.17.0, i64 1
  %i.fg = fsub <2 x float> %i.eu, %i.ff
  %i.fh = shufflevector <4 x float> %i.fb, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.fi = insertelement <4 x float> %i.fh, float %i.fd, i64 1
  %i.fj = shufflevector <2 x float> %i.fg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fk = shufflevector <4 x float> %i.fi, <4 x float> %i.fj, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.fl = fmul <4 x float> %i.fk, %i.fc
  %i.fm = fdiv <4 x float> %i.fk, %i.fc
  %i.fn = shufflevector <4 x float> %i.fl, <4 x float> %i.fm, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.e:                                             ; preds = %bb.c
  %i.fo = fcmp ogt float %.sroa.055.0, %.sroa.22.0
  %i.fp = fcmp ogt float %.sroa.055.0, %.sroa.42.0
  %or.cond.i = and i1 %i.fo, %i.fp
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.fq = fadd float %.sroa.055.0, 1.000000e+00
  %i.fr = fsub float %i.fq, %.sroa.22.0
  %i.fs = fsub float %i.fr, %.sroa.42.0
  %i.ft = tail call noundef float @sqrtf(float noundef %i.fs) #26
  %i.fu = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.ft, i64 0
  %i.fv = fmul <4 x float> %i.fu, <float 2.000000e+00, float 2.500000e-01, float poison, float poison> ; 2 uses
  %i.fw = shufflevector <4 x float> %i.fv, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0> ; 2 uses
  %i.fx = insertelement <2 x float> poison, float %.sroa.1260.0, i64 0
  %i.fy = insertelement <2 x float> %i.fx, float %.sroa.17.0, i64 1
  %i.fz = fadd <2 x float> %i.eu, %i.fy
  %i.ga = fsub float %.sroa.27.0, %.sroa.37.0
  %i.gb = insertelement <4 x float> poison, float %i.ga, i64 0
  %i.gc = shufflevector <4 x float> %i.gb, <4 x float> %i.fv, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.gd = shufflevector <2 x float> %i.fz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ge = shufflevector <4 x float> %i.gc, <4 x float> %i.gd, <4 x i32> <i32 0, i32 1, i32 5, i32 4> ; 2 uses
  %i.gf = fdiv <4 x float> %i.ge, %i.fw
  %i.gg = fmul <4 x float> %i.ge, %i.fw
  %i.gh = shufflevector <4 x float> %i.gf, <4 x float> %i.gg, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.g:                                             ; preds = %bb.e
  %i.gi = fcmp ogt float %.sroa.22.0, %.sroa.42.0
  br i1 %i.gi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.gj = fadd float %.sroa.22.0, 1.000000e+00
  %i.gk = fsub float %i.gj, %.sroa.055.0
  %i.gl = fsub float %i.gk, %.sroa.42.0
  %i.gm = tail call noundef float @sqrtf(float noundef %i.gl) #26
  %i.gn = fmul float %i.gm, 2.000000e+00
  %i.go = extractelement <2 x float> %i.eu, i64 1
  %i.gp = fadd float %i.go, %.sroa.17.0
  %i.gq = fadd float %.sroa.27.0, %.sroa.37.0
  %i.gr = extractelement <2 x float> %i.eu, i64 0
  %i.gs = fsub float %i.gr, %.sroa.1260.0
  %i.gt = insertelement <4 x float> <float poison, float poison, float 2.500000e-01, float poison>, float %i.gs, i64 0
  %i.gu = insertelement <4 x float> %i.gt, float %i.gp, i64 1
  %i.gv = insertelement <4 x float> %i.gu, float %i.gq, i64 3 ; 2 uses
  %i.gw = insertelement <4 x float> poison, float %i.gn, i64 0
  %i.gx = shufflevector <4 x float> %i.gw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gy = fdiv <4 x float> %i.gv, %i.gx
  %i.gz = fmul <4 x float> %i.gv, %i.gx
  %i.ha = shufflevector <4 x float> %i.gy, <4 x float> %i.gz, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.i:                                             ; preds = %bb.g
  %i.hb = fadd float %.sroa.42.0, 1.000000e+00
  %i.hc = fsub float %i.hb, %.sroa.055.0
  %i.hd = fsub float %i.hc, %.sroa.22.0
  %i.he = tail call noundef float @sqrtf(float noundef %i.hd) #26
  %i.hf = fmul float %i.he, 2.000000e+00
  %i.hg = extractelement <2 x float> %i.eu, i64 0
  %i.hh = fadd float %.sroa.1260.0, %i.hg
  %i.hi = fadd float %.sroa.27.0, %.sroa.37.0
  %i.hj = extractelement <2 x float> %i.eu, i64 1
  %i.hk = fsub float %i.hj, %.sroa.17.0
  %i.hl = insertelement <4 x float> <float poison, float poison, float poison, float 2.500000e-01>, float %i.hk, i64 0
  %i.hm = insertelement <4 x float> %i.hl, float %i.hh, i64 1
  %i.hn = insertelement <4 x float> %i.hm, float %i.hi, i64 2 ; 2 uses
  %i.ho = insertelement <4 x float> poison, float %i.hf, i64 0
  %i.hp = shufflevector <4 x float> %i.ho, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hq = fdiv <4 x float> %i.hn, %i.hp
  %i.hr = fmul <4 x float> %i.hn, %i.hp
  %i.hs = shufflevector <4 x float> %i.hq, <4 x float> %i.hr, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit: ; preds = %bb.d, %bb.f, %bb.h, %bb.i
  %i.ht = phi <4 x float> [ %i.fn, %bb.d ], [ %i.gh, %bb.f ], [ %i.ha, %bb.h ], [ %i.hs, %bb.i ]
  store <4 x float> %i.ht, ptr %2, align 4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #19

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt7__cxx114listIN6Assimp11X3DExporter10SAttributeESaIS3_EE14_M_create_nodeIJRA9_KcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEEPSt10_List_nodeIS3_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(9) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #30 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.d, ptr %3, align 8
  %i.e = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(9) %1) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.e, ptr %i.a, align 8
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.g, ptr %3, align 8
  %i.h = load i64, ptr %i.a, align 8
  store i64 %i.h, ptr %i.d, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %1, align 1
  store i8 %i.j, ptr %i.i, align 1
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 dereferenceable(9) %1, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.k = load i64, ptr %i.a, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.k, ptr %i.l, align 8
  %i.m = load ptr, ptr %3, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  invoke void @_ZN6Assimp11X3DExporter10SAttributeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt15__new_allocatorISt10_List_nodeIN6Assimp11X3DExporter10SAttributeEEE9constructIS3_JRA9_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_DpOT0_.exit unwind label %bb.f

bb.e:                                             ; preds = %.noexc.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %3, align 8                ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.d
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.s = load i64, ptr %i.d, align 8
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.p, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 80) #27
  resume { ptr, i32 } %.pn.i
end_hunk_2
