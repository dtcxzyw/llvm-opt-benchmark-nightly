Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/collision?download=true
inline.NumInlined: 591
inline.NumDeleted: 303
begin_hunk_0_@_Z19collisionMoveSimpleP11EnvironmentP8IGameDefRKN4core8aabbox3dIfEEffPNS3_8vector3dIfEESA_S9_P12ActiveObjectb10StepUpMode:bb.a

bb.ck:                                            ; preds = %bb.cj
  %i.ql = getelementptr inbounds nuw i8, ptr %.sroa.0620.0891, i64 16
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !18
  %i.qn = fcmp nsz olt float %i.qm, %.sroa.29.0886
  br i1 %i.qn, label %bb.cl, label %bb.cp

bb.cl:                                            ; preds = %bb.ck
  %i.qo = getelementptr inbounds nuw i8, ptr %.sroa.0620.0891, i64 39
  %i.qp = load i8, ptr %i.qo, align 1
  %i.qq = and i8 %i.qp, 2
  %.not413 = icmp eq i8 %i.qq, 0
  br i1 %.not413, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.qr = getelementptr inbounds nuw i8, ptr %.sroa.0620.0891, i64 24
  %i.qs = load float, ptr %i.qr, align 4, !tbaa !15
  %i.qt = extractelement <4 x float> %i.py, i64 1
  %i.qu = fsub nsz float %i.qs, %i.qt
  %i.qv = fadd nsz float %i.pv, %i.qu             ; 3 uses
  store float %i.qv, ptr %i.dd, align 4, !tbaa !36
  %i.qw = load <4 x float>, ptr %3, align 4, !tbaa !19
  %.sroa.29.0.copyload642 = load float, ptr %i.dl, align 4, !tbaa !19
  %i.qx = insertelement <4 x float> %i.pr, float %i.qv, i64 1
  %i.qy = fadd nsz <4 x float> %i.qx, %i.qw
  %i.qz = fadd nsz float %i.pj, %.sroa.29.0.copyload642
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.ra = phi float [ %i.pv, %bb.cl ], [ %i.qv, %bb.cm ] ; 2 uses
  %.sroa.29.1 = phi nsz float [ %.sroa.29.0886, %bb.cl ], [ %i.qz, %bb.cm ] ; 2 uses
  %i.rb = phi <4 x float> [ %i.py, %bb.cl ], [ %i.qy, %bb.cm ] ; 3 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.sroa.0620.0891, i64 24
  %i.rd = load float, ptr %i.rc, align 4, !tbaa !15
  %i.re = extractelement <4 x float> %i.rb, i64 1
  %i.rf = fsub nsz float %i.rd, %i.re
  %i.rg = call nsz noundef float @llvm.fabs.f32(float %i.rf)
  %i.rh = fcmp nsz olt float %i.rg, 5.000000e-02
  br i1 %i.rh, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %.val430 = load ptr, ptr %.sroa.0620.0891, align 8, !tbaa !67
  %i.ri = icmp ne ptr %.val430, null
  %i.rj = zext i1 %i.ri to i8
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cn, %bb.co, %bb.ck, %bb.cj, %bb.ci, %.lr.ph893
  %i.rk = phi float [ %i.ra, %bb.co ], [ %i.ra, %bb.cn ], [ %i.pv, %bb.ck ], [ %i.pv, %bb.cj ], [ %i.pv, %bb.ci ], [ %i.pv, %.lr.ph893 ]
  %i.rl = phi i8 [ %i.rj, %bb.co ], [ %i.px, %bb.cn ], [ %i.px, %bb.ck ], [ %i.px, %bb.cj ], [ %i.px, %bb.ci ], [ %i.px, %.lr.ph893 ] ; 2 uses
  %i.rm = phi i8 [ 1, %bb.co ], [ %i.pw, %bb.cn ], [ %i.pw, %bb.ck ], [ %i.pw, %bb.cj ], [ %i.pw, %bb.ci ], [ %i.pw, %.lr.ph893 ] ; 2 uses
  %.sroa.29.2 = phi nsz float [ %.sroa.29.1, %bb.co ], [ %.sroa.29.1, %bb.cn ], [ %.sroa.29.0886, %bb.ck ], [ %.sroa.29.0886, %bb.cj ], [ %.sroa.29.0886, %bb.ci ], [ %.sroa.29.0886, %.lr.ph893 ]
  %i.rn = phi <4 x float> [ %i.rb, %bb.co ], [ %i.rb, %bb.cn ], [ %i.py, %bb.ck ], [ %i.py, %bb.cj ], [ %i.py, %bb.ci ], [ %i.py, %.lr.ph893 ]
  %i.ro = getelementptr inbounds nuw i8, ptr %.sroa.0620.0891, i64 40 ; 2 uses
  %.not816 = icmp eq ptr %i.ro, %.val
  br i1 %.not816, label %.critedge417.critedge, label %.lr.ph893

.critedge417:                                     ; preds = %_ZNK4core8vector3dIfEeqERKS1_.exit, %bb.y, %.critedge417.critedge
  call void @_ZN13ScopeProfiler4stopEv(ptr noundef nonnull align 8 dereferenceable(50) %13) #6
  %i.rp = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !31 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.rs = icmp eq ptr %i.rq, %i.rr
  br i1 %i.rs, label %_ZN13ScopeProfilerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.critedge417
  %i.rt = load i64, ptr %i.rr, align 8, !tbaa !32
  %i.ru = add i64 %i.rt, 1
  call void @_ZdlPvm(ptr noundef %i.rq, i64 noundef %i.ru) #24
  br label %_ZN13ScopeProfilerD2Ev.exit

_ZN13ScopeProfilerD2Ev.exit:                      ; preds = %.critedge417, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #6
  ret void

bb.cq:                                            ; preds = %bb.ce, %bb.am
  %i.rv = phi ptr [ %i.gr, %bb.ce ], [ %i.of, %bb.am ] ; 3 uses
  %.pn408.pn.pn = phi { ptr, i32 } [ %lpad.phi, %bb.ce ], [ %i.gn, %bb.am ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.rv, null
  br i1 %.not.i.i.i.i, label %_ZN19collisionMoveResultD2Ev.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !125
  %i.ry = ptrtoint ptr %i.rx to i64
  %i.rz = ptrtoint ptr %i.rv to i64
  %i.sa = sub i64 %i.ry, %i.rz
  call void @_ZdlPvm(ptr noundef nonnull %i.rv, i64 noundef %i.sa) #24
  br label %_ZN19collisionMoveResultD2Ev.exit

_ZN19collisionMoveResultD2Ev.exit:                ; preds = %bb.z, %bb.ab, %bb.r, %bb.cq, %bb.cr
  %.pn408.pn.pn998 = phi { ptr, i32 } [ %.pn408.pn.pn, %bb.cr ], [ %.pn408.pn.pn, %bb.cq ], [ %i.ez, %bb.z ], [ %i.fb, %bb.ab ], [ %i.br, %bb.r ]
  call void @_ZN13ScopeProfilerD2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %13) #6
  br label %bb.cs

bb.cs:                                            ; preds = %_ZN19collisionMoveResultD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437
  %.pn408.pn.pn.pn = phi { ptr, i32 } [ %.pn408.pn.pn998, %_ZN19collisionMoveResultD2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #6
  resume { ptr, i32 } %.pn408.pn.pn.pn
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZN13ScopeProfilerC1EP8ProfilerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17ScopeProfilerType13TimePrecision(ptr noundef nonnull align 8 dereferenceable(50), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), i8 noundef zeroext, i8 noundef signext) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !58    ; 3 uses
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub i64 %i.b, %i.c
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.d) #24
  br label %_ZNSt12_Vector_baseIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind
declare i32 @__cxa_thread_atexit(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #7

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZL19add_area_node_boxesN4core8vector3dIsEES1_P8IGameDefP11EnvironmentRSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS8_EE(i48 %0, i48 %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %4) unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %struct.MapNode, align 4            ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %.sroa.041.0.extract.trunc = trunc i48 %0 to i16 ; 2 uses
  %.sroa.242.0.extract.shift = lshr i48 %0, 16
  %.sroa.242.0.extract.trunc = trunc i48 %.sroa.242.0.extract.shift to i16 ; 2 uses
  %.sroa.343.0.extract.shift = lshr i48 %0, 32
  %.sroa.343.0.extract.trunc = trunc nuw i48 %.sroa.343.0.extract.shift to i16 ; 2 uses
  %.sroa.039.0.extract.trunc = trunc i48 %1 to i16 ; 2 uses
  %.sroa.240.0.extract.shift = lshr i48 %1, 16
  %.sroa.240.0.extract.trunc = trunc i48 %.sroa.240.0.extract.shift to i16 ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 4 uses
  %.b = load i1, ptr @_ZGVZL19add_area_node_boxesN4core8vector3dIsEES1_P8IGameDefP11EnvironmentRSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS8_EEE9nodeboxes, align 1
  br i1 %.b, label %bb.c, label %bb.b, !prof !55

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZZL19add_area_node_boxesN4core8vector3dIsEES1_P8IGameDefP11EnvironmentRSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS8_EEE9nodeboxes, i8 0, i64 24, i1 false)
  %i.e = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EED2Ev, ptr nonnull @_ZZL19add_area_node_boxesN4core8vector3dIsEES1_P8IGameDefP11EnvironmentRSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS8_EEE9nodeboxes, ptr nonnull @__dso_handle) #6 ; 0 uses
  store i1 true, ptr @_ZGVZL19add_area_node_boxesN4core8vector3dIsEES1_P8IGameDefP11EnvironmentRSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS8_EEE9nodeboxes, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load ptr, ptr %3, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef nonnull align 8 dereferenceable(144) ptr %i.h(ptr noundef nonnull align 8 dereferenceable(88) %3) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !149
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !150  ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 2072
  %i.q = icmp ugt i64 %i.p, 126
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 261088
  %i.s = load i64, ptr %i.r, align 8, !tbaa !33
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.e, label %_ZNK14NodeDefManager3getEt.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %_ZNK14NodeDefManager3getEt.exit

_ZNK14NodeDefManager3getEt.exit:                  ; preds = %bb.d, %bb.e
  %i.u = phi i64 [ 259000, %bb.e ], [ 261072, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1403
  %i.x = load i8, ptr %i.w, align 1, !tbaa !181, !range !79, !noundef !43
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = ashr i48 %1, 32
  %i.aa = trunc nsw i48 %i.z to i32               ; 2 uses
  %i.ab = sext i16 %.sroa.343.0.extract.trunc to i32
  %.not426 = icmp sgt i32 %i.ab, %i.aa
  br i1 %.not426, label %._crit_edge433, label %.preheader344.lr.ph

.preheader344.lr.ph:                              ; preds = %_ZNK14NodeDefManager3getEt.exit
  %.not52409 = icmp sgt i16 %.sroa.242.0.extract.trunc, %.sroa.240.0.extract.trunc
  %.not54397 = icmp sgt i16 %.sroa.041.0.extract.trunc, %.sroa.039.0.extract.trunc
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ae = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZL19add_area_node_boxesN4core8vector3dIsEES1_P8IGameDefP11EnvironmentRSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS8_EEE9nodeboxes) ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 12 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  br i1 %.not52409, label %._crit_edge433, label %.preheader344.preheader

.preheader344.preheader:                          ; preds = %.preheader344.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 22
  br label %.preheader344

.preheader344:                                    ; preds = %.preheader344.preheader, %._crit_edge416
  %.0432 = phi i1 [ %.us-phi425, %._crit_edge416 ], [ false, %.preheader344.preheader ] ; 2 uses
  %.044431 = phi ptr [ %.us-phi424, %._crit_edge416 ], [ null, %.preheader344.preheader ] ; 2 uses
  %storemerge430 = phi i16 [ %i.lz, %._crit_edge416 ], [ %.sroa.343.0.extract.trunc, %.preheader344.preheader ] ; 5 uses
  %.sroa.9329.0429 = phi i16 [ %.us-phi423, %._crit_edge416 ], [ 32767, %.preheader344.preheader ] ; 2 uses
  %.sroa.0327.0428 = phi i16 [ %.us-phi422, %._crit_edge416 ], [ 32767, %.preheader344.preheader ] ; 2 uses
  %.sroa.6328.0427 = phi i16 [ %.us-phi, %._crit_edge416 ], [ 32767, %.preheader344.preheader ] ; 2 uses
  %.sroa.23.0.insert.ext298 = zext i16 %storemerge430 to i48
  %.sroa.23.0.insert.shift299 = shl nuw i48 %.sroa.23.0.insert.ext298, 32 ; 2 uses
  %i.aj = sext i16 %storemerge430 to i32          ; 2 uses
  %i.ak = add nsw i32 %i.aj, -15
  %i.al = icmp slt i48 %.sroa.23.0.insert.shift299, 0
  %i.am = select i1 %i.al, i32 %i.ak, i32 %i.aj
  %i.an = sdiv i32 %i.am, 16                      ; 2 uses
  %i.ao = trunc nsw i32 %i.an to i16              ; 2 uses
  %.mask = and i32 %i.an, 65535
  %.sroa.13213.0.insert.ext = zext nneg i32 %.mask to i48
  %.sroa.13213.0.insert.shift = shl nuw i48 %.sroa.13213.0.insert.ext, 32
  %i.ap = shl i16 %storemerge430, 8
  %i.aq = and i16 %i.ap, 3840
  %i.ar = sitofp nsz i16 %storemerge430 to float
  %i.as = fmul nnan nsz float %i.ar, 1.000000e+01 ; 4 uses
  %i.at = fadd nsz float %i.as, -5.000000e+00     ; 7 uses
  %i.au = fadd nsz float %i.as, 5.000000e+00      ; 5 uses
  %i.av = fcmp nsz olt float %i.au, %i.at         ; 2 uses
  %.sroa.11190.0 = select i1 %i.av, float %i.au, float %i.at ; 2 uses
  %.sroa.22.1 = select nsz i1 %i.av, float %i.at, float %i.au ; 2 uses
  %i.aw = fcmp nsz olt float %i.at, %.sroa.11190.0
  %.sroa.11190.1 = select nsz i1 %i.aw, float %i.at, float %.sroa.11190.0 ; 2 uses
  br i1 %.not54397, label %._crit_edge416, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader344
  %i.ax = icmp ne i16 %.sroa.9329.0429, %i.ao
  %i.ay = insertelement <4 x float> poison, float %i.as, i64 2
  %i.az = insertelement <2 x float> poison, float %i.as, i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.1415 = phi i1 [ %.5, %._crit_edge ], [ %.0432, %.preheader.preheader ]
  %.145414 = phi ptr [ %.347, %._crit_edge ], [ %.044431, %.preheader.preheader ]
  %storemerge51413 = phi i16 [ %i.ly, %._crit_edge ], [ %.sroa.242.0.extract.trunc, %.preheader.preheader ] ; 6 uses
  %.sroa.9329.1412 = phi i1 [ false, %._crit_edge ], [ %i.ax, %.preheader.preheader ]
  %.sroa.0327.1411 = phi i16 [ %.sroa.0327.3, %._crit_edge ], [ %.sroa.0327.0428, %.preheader.preheader ]
  %.sroa.6328.1410 = phi i16 [ %i.bf, %._crit_edge ], [ %.sroa.6328.0427, %.preheader.preheader ]
  %.sroa.19.0.insert.ext257 = zext i16 %storemerge51413 to i48
  %.sroa.19.0.insert.shift258 = shl nuw nsw i48 %.sroa.19.0.insert.ext257, 16
  %i.ba = sext i16 %storemerge51413 to i32        ; 2 uses
  %i.bb = add nsw i32 %i.ba, -15
  %i.bc = icmp slt i16 %storemerge51413, 0
  %i.bd = select i1 %i.bc, i32 %i.bb, i32 %i.ba
  %i.be = sdiv i32 %i.bd, 16                      ; 2 uses
  %i.bf = trunc nsw i32 %i.be to i16              ; 3 uses
  %i.bg = shl nsw i32 %i.be, 16
  %.sroa.10212.0.insert.shift = zext i32 %i.bg to i48
  %.sroa.10212.0.insert.insert = or disjoint i48 %.sroa.13213.0.insert.shift, %.sroa.10212.0.insert.shift
  %i.bh = shl i16 %storemerge51413, 4
  %i.bi = and i16 %i.bh, 240
  %i.bj = or disjoint i16 %i.bi, %i.aq
  %i.bk = sitofp nsz i16 %storemerge51413 to float
  %i.bl = fmul nnan nsz float %i.bk, 1.000000e+01 ; 4 uses
  %i.bm = fadd nsz float %i.bl, -5.000000e+00     ; 7 uses
  %i.bn = fadd nsz float %i.bl, 5.000000e+00      ; 9 uses
  %i.bo = icmp ne i16 %.sroa.6328.1410, %i.bf
  %invariant.op = or disjoint i48 %.sroa.19.0.insert.shift258, %.sroa.23.0.insert.shift299
  %i.bp = insertelement <4 x float> %i.ay, float %i.bl, i64 1
  %i.bq = insertelement <2 x float> %i.az, float %i.bl, i64 0
  %i.br = insertelement <2 x float> poison, float %i.bm, i64 1
  %i.bs = insertelement <2 x float> poison, float %i.bn, i64 1
  %i.bt = insertelement <2 x float> poison, float %i.bn, i64 1
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12emplace_backIJbiRN4core8vector3dIsEERNS5_8aabbox3dIfEEEEERS1_DpOT_.exit
  %.2403 = phi i1 [ %.1415, %.preheader ], [ %.5, %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12emplace_backIJbiRN4core8vector3dIsEERNS5_8aabbox3dIfEEEEERS1_DpOT_.exit ] ; 4 uses
  %.246402 = phi ptr [ %.145414, %.preheader ], [ %.347, %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12emplace_backIJbiRN4core8vector3dIsEERNS5_8aabbox3dIfEEEEERS1_DpOT_.exit ]
  %storemerge53401 = phi i16 [ %.sroa.041.0.extract.trunc, %.preheader ], [ %i.lx, %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12emplace_backIJbiRN4core8vector3dIsEERNS5_8aabbox3dIfEEEEERS1_DpOT_.exit ] ; 8 uses
  %.sroa.9329.2400 = phi i1 [ %.sroa.9329.1412, %.preheader ], [ false, %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12emplace_backIJbiRN4core8vector3dIsEERNS5_8aabbox3dIfEEEEERS1_DpOT_.exit ]
  %.sroa.0327.2399 = phi i16 [ %.sroa.0327.1411, %.preheader ], [ %.sroa.0327.3, %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12emplace_backIJbiRN4core8vector3dIsEERNS5_8aabbox3dIfEEEEERS1_DpOT_.exit ] ; 2 uses
  %.sroa.6328.2398 = phi i1 [ %i.bo, %.preheader ], [ false, %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12emplace_backIJbiRN4core8vector3dIsEERNS5_8aabbox3dIfEEEEERS1_DpOT_.exit ]
  %.sroa.0214.0.insert.ext224 = zext i16 %storemerge53401 to i48
  %.sroa.0214.0.insert.insert226.reass.reass.reass = or disjoint i48 %.sroa.0214.0.insert.ext224, %invariant.op ; 7 uses
  %i.bu = sext i16 %storemerge53401 to i32        ; 2 uses
  %i.bv = add nsw i32 %i.bu, -15
  %i.bw = icmp slt i16 %storemerge53401, 0
  %i.bx = select i1 %i.bw, i32 %i.bv, i32 %i.bu
  %i.by = sdiv i32 %i.bx, 16                      ; 2 uses
  %i.bz = trunc nsw i32 %i.by to i16              ; 4 uses
  %i.ca = and i16 %storemerge53401, 15
  %i.cb = icmp ne i16 %.sroa.0327.2399, %i.bz
  %or.cond.not334 = select i1 %i.cb, i1 true, i1 %.sroa.6328.2398
  %or.cond331 = select i1 %or.cond.not334, i1 true, i1 %.sroa.9329.2400
  br i1 %or.cond331, label %_ZNK4core8vector3dIsEneERKS1_.exit.thread, label %bb.g

_ZNK4core8vector3dIsEneERKS1_.exit.thread:        ; preds = %bb.f
  %.mask336 = and i32 %i.by, 65535
  %.sroa.0209.0.insert.ext = zext nneg i32 %.mask336 to i48
  %.sroa.0209.0.insert.insert = or disjoint i48 %.sroa.10212.0.insert.insert, %.sroa.0209.0.insert.ext
  %i.cc = call noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.i, i48 %.sroa.0209.0.insert.insert)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK4core8vector3dIsEneERKS1_.exit.thread
  %.sroa.0327.3 = phi i16 [ %i.bz, %_ZNK4core8vector3dIsEneERKS1_.exit.thread ], [ %.sroa.0327.2399, %bb.f ] ; 3 uses
  %.347 = phi ptr [ %i.cc, %_ZNK4core8vector3dIsEneERKS1_.exit.thread ], [ %.246402, %bb.f ] ; 9 uses
  %.not55 = icmp eq ptr %.347, null
  br i1 %.not55, label %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i, label %bb.l

_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i: ; preds = %bb.g
  %i.cd = shl nsw i16 %i.bz, 4
  %i.ce = or disjoint i16 %i.cd, 15               ; 3 uses
  %i.cf = insertelement <2 x i16> poison, i16 %i.ce, i64 0
  %i.cg = insertelement <2 x i16> %i.cf, i16 %storemerge53401, i64 1
  %i.ch = sitofp <2 x i16> %i.cg to <2 x float>
  %i.ci = fmul nnan nsz <2 x float> %i.ch, splat (float 1.000000e+01) ; 3 uses
  %i.cj = fadd nsz <2 x float> %i.ci, <float 5.000000e+00, float -5.000000e+00> ; 5 uses
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cl = insertelement <2 x float> %i.ck, float %i.bm, i64 1
  %i.cm = extractelement <2 x float> %i.ci, i64 1
  %i.cn = fadd nsz float %i.cm, 5.000000e+00      ; 3 uses
  %i.co = insertelement <2 x float> %i.bt, float %i.cn, i64 0
  %i.cp = extractelement <2 x float> %i.ci, i64 0
  %i.cq = fadd nsz float %i.cp, -5.000000e+00     ; 4 uses
  %i.cr = extractelement <2 x float> %i.cj, i64 0 ; 4 uses
  %i.cs = fcmp nsz ogt float %i.cr, %i.cn         ; 2 uses
  %i.ct = insertelement <2 x float> %i.cj, float %i.bn, i64 1
  %.sroa.15193.0 = select nsz i1 %i.cs, <2 x float> %i.ct, <2 x float> %i.co ; 3 uses
  %i.cu = select i1 %i.cs, float %i.cr, float %i.cn
  %.sroa.15193.16.vec.extract = extractelement <2 x float> %.sroa.15193.0, i64 1 ; 2 uses
  %i.cv = fcmp nsz ogt float %i.bn, %.sroa.15193.16.vec.extract ; 2 uses
  %.sroa.15193.16.vec.insert201 = insertelement <2 x float> %.sroa.15193.0, float %i.bn, i64 1
  %.sroa.15193.1 = select nsz i1 %i.cv, <2 x float> %.sroa.15193.16.vec.insert201, <2 x float> %.sroa.15193.0 ; 2 uses
  %i.cw = select i1 %i.cv, float %i.bn, float %.sroa.15193.16.vec.extract
  %i.cx = extractelement <2 x float> %i.cj, i64 1 ; 2 uses
  %i.cy = fcmp nsz olt float %i.cr, %i.cx         ; 2 uses
  %i.cz = insertelement <2 x float> %i.cj, float %i.bm, i64 1
  %.sroa.0182.0 = select nsz i1 %i.cy, <2 x float> %i.cz, <2 x float> %i.cl ; 3 uses
  %i.da = select i1 %i.cy, float %i.cr, float %i.cx
  %.sroa.0182.4.vec.extract = extractelement <2 x float> %.sroa.0182.0, i64 1 ; 2 uses
  %i.db = fcmp nsz olt float %i.bn, %.sroa.0182.4.vec.extract ; 2 uses
  %.sroa.0182.4.vec.insert189 = insertelement <2 x float> %.sroa.0182.0, float %i.bn, i64 1
  %.sroa.0182.1 = select nsz i1 %i.db, <2 x float> %.sroa.0182.4.vec.insert189, <2 x float> %.sroa.0182.0 ; 2 uses
  %i.dc = select i1 %i.db, float %i.bn, float %.sroa.0182.4.vec.extract
  %i.dd = fcmp nsz ogt float %i.cq, %i.cu
  %.sroa.15193.12.vec.insert = insertelement <2 x float> %.sroa.15193.1, float %i.cq, i64 0
  %.sroa.15193.2 = select nsz i1 %i.dd, <2 x float> %.sroa.15193.12.vec.insert, <2 x float> %.sroa.15193.1 ; 2 uses
  %i.de = fcmp nsz ogt float %i.bm, %i.cw
  %.sroa.15193.16.vec.insert = insertelement <2 x float> %.sroa.15193.2, float %i.bm, i64 1
  %.sroa.15193.3 = select nsz i1 %i.de, <2 x float> %.sroa.15193.16.vec.insert, <2 x float> %.sroa.15193.2 ; 2 uses
  %i.df = fcmp nsz olt float %i.cq, %i.da
  %.sroa.0182.0.vec.insert = insertelement <2 x float> %.sroa.0182.1, float %i.cq, i64 0
  %.sroa.0182.2 = select nsz i1 %i.df, <2 x float> %.sroa.0182.0.vec.insert, <2 x float> %.sroa.0182.1 ; 2 uses
  %i.dg = fcmp nsz olt float %i.bm, %i.dc
  %.sroa.0182.4.vec.insert = insertelement <2 x float> %.sroa.0182.2, float %i.bm, i64 1
  %.sroa.0182.3 = select nsz i1 %i.dg, <2 x float> %.sroa.0182.4.vec.insert, <2 x float> %.sroa.0182.2 ; 2 uses
  %i.dh = load ptr, ptr %i.ag, align 8, !tbaa !59 ; 12 uses
  %i.di = load ptr, ptr %i.ah, align 8, !tbaa !71
  %.not.i = icmp eq ptr %i.dh, %i.di
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i
  store ptr null, ptr %i.dh, align 8, !tbaa !67
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store <2 x float> %.sroa.0182.3, ptr %i.dj, align 8, !tbaa !19
  %.sroa.11190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store float %.sroa.11190.1, ptr %.sroa.11190.0..sroa_idx, align 8, !tbaa !19
  %.sroa.15193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 20
  store <2 x float> %.sroa.15193.3, ptr %.sroa.15193.0..sroa_idx, align 4, !tbaa !19
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 28
  store float %.sroa.22.1, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !19
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  store i48 %.sroa.0214.0.insert.insert226.reass.reass.reass, ptr %i.dk, align 8, !tbaa !68
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 38
  store i8 0, ptr %i.dl, align 2, !tbaa !66
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 39 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = and i8 %i.dn, -4
  %i.dp = or disjoint i8 %i.do, 1
  store i8 %i.dp, ptr %i.dm, align 1
  %i.dq = load ptr, ptr %i.ag, align 8, !tbaa !59
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 40
  store ptr %i.dr, ptr %i.ag, align 8, !tbaa !59
  br label %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12emplace_backIJbiRN4core8vector3dIsEERNS5_8aabbox3dIfEEEEERS1_DpOT_.exit

bb.i:                                             ; preds = %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit.i
  %.val.i.i = load ptr, ptr %4, align 8, !tbaa !58 ; 5 uses
  %i.ds = ptrtoint ptr %i.dh to i64
  %i.dt = ptrtoint ptr %.val.i.i to i64           ; 2 uses
  %i.du = sub i64 %i.ds, %i.dt                    ; 3 uses
  %i.dv = icmp eq i64 %i.du, 9223372036854775800
  br i1 %i.dv, label %bb.j, label %_ZNKSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #25
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
end_hunk_0
begin_hunk_1_@_ZL19add_area_node_boxesN4core8vector3dIsEES1_P8IGameDefP11EnvironmentRSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS8_EE:bb.a
  br i1 %i.fp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fq = getelementptr inbounds nuw [2072 x i8], ptr %i.fk, i64 %i.fi ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !33
  %i.ft = icmp eq i64 %i.fs, 0
  br i1 %i.ft, label %bb.r, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fk, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.q, %bb.r
  %i.fv = phi ptr [ %i.fu, %bb.r ], [ %i.fq, %bb.q ] ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 1403
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !181, !range !79, !noundef !43
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %._crit_edge.i.i, label %.critedge

._crit_edge.i.i:                                  ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  store ptr %i.ac, ptr %6, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ac, ptr noundef nonnull align 1 dereferenceable(6) @.str.6, i64 6, i1 false)
  store i64 6, ptr %i.ad, align 8, !tbaa !33
  store i8 0, ptr %i.ai, align 2, !tbaa !32
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 40
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 64
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !221
  %.not.i131 = icmp ugt i64 %i.gb, 20
  br i1 %.not.i131, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fv, i64 56
  %.sroa.06.016.i = load ptr, ptr %i.gc, align 8, !tbaa !222 ; 2 uses
  %.not1117.i = icmp eq ptr %.sroa.06.016.i, null
  br i1 %.not1117.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.s, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.i
  %.sroa.06.018.i = phi ptr [ %.sroa.06.0.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.i ], [ %.sroa.06.016.i, %bb.s ] ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.06.018.i, i64 16
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !33
  %i.gf = icmp eq i64 %i.ge, 6
  br i1 %i.gf, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i: ; preds = %.lr.ph.split.i
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.06.018.i, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !31 ; 2 uses
  %i.gi = load i32, ptr %i.ac, align 1
  %i.gj = load i32, ptr %i.gh, align 1
  %i.gk = xor i32 %i.gi, %i.gj
  %i.gl = getelementptr i8, ptr %i.ac, i64 4
  %i.gm = getelementptr i8, ptr %i.gh, i64 4
  %i.gn = load i16, ptr %i.gl, align 1
  %i.go = load i16, ptr %i.gm, align 1
  %i.gp = zext i16 %i.gn to i32
  %i.gq = zext i16 %i.go to i32
  %i.gr = xor i32 %i.gp, %i.gq
  %i.gs = or i32 %i.gk, %i.gr
  %i.gt = icmp ne i32 %i.gs, 0
  %i.gu = zext i1 %i.gt to i32
  %i.gv = icmp eq i32 %i.gu, 0
  br i1 %i.gv, label %.noexc82, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i, %.lr.ph.split.i
  %.sroa.06.0.i = load ptr, ptr %.sroa.06.018.i, align 8, !tbaa !222 ; 2 uses
  %.not11.i = icmp eq ptr %.sroa.06.0.i, null
  br i1 %.not11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %.lr.ph.split.i, !llvm.loop !136

bb.t:                                             ; preds = %._crit_edge.i.i
  %i.gw = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull %i.ac, i64 noundef 6, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i unwind label %bb.u ; 3 uses

bb.u:                                             ; preds = %bb.t
  %i.gx = landingpad { ptr, i32 }
          catch ptr null
  %i.gy = extractvalue { ptr, i32 } %i.gx, 0
  call void @__clang_call_terminate(ptr %i.gy) #27
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i: ; preds = %bb.t
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fv, i64 48
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !223 ; 3 uses
  %i.hb = urem i64 %i.gw, %i.ha                   ; 3 uses
  %i.hc = load ptr, ptr %i.fz, align 8, !tbaa !224
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.hb
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !225 ; 2 uses
  %.not.i.i.i132 = icmp eq ptr %i.he, null
  %.pre = load ptr, ptr %6, align 8               ; 8 uses
  br i1 %.not.i.i.i132, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit, label %bb.v

bb.v:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !222 ; 3 uses
  %i.hg = load i64, ptr %i.ad, align 8
  %.fr22.i.i.i = freeze i64 %i.hg                 ; 3 uses
  %i.hh = icmp eq i64 %.fr22.i.i.i, 0
  %.phi.trans.insert25.i.i.i = getelementptr inbounds nuw i8, ptr %i.hf, i64 48
  %.pre26.i.i.i = load i64, ptr %.phi.trans.insert25.i.i.i, align 8, !tbaa !227 ; 2 uses
  br i1 %i.hh, label %.split.us.i.i.i, label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.v, %bb.x
  %i.hi = phi i64 [ %i.hp, %bb.x ], [ %.pre26.i.i.i, %bb.v ]
  %.0.us.i.i.i = phi ptr [ %i.hn, %bb.x ], [ %i.hf, %bb.v ] ; 3 uses
  %i.hj = icmp eq i64 %i.gw, %i.hi
  br i1 %i.hj, label %bb.w, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i.i

bb.w:                                             ; preds = %.split.us.i.i.i
  %i.hk = getelementptr inbounds nuw i8, ptr %.0.us.i.i.i, i64 16
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !33
  %i.hm = icmp eq i64 %i.hl, 0
  br i1 %i.hm, label %.noexc82, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i.i: ; preds = %bb.w, %.split.us.i.i.i
  %i.hn = load ptr, ptr %.0.us.i.i.i, align 8, !tbaa !222 ; 3 uses
  %.not18.us.i.i.i = icmp eq ptr %i.hn, null
  br i1 %.not18.us.i.i.i, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit, label %bb.x

bb.x:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i.i
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 48
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !227 ; 2 uses
  %i.hq = urem i64 %i.hp, %i.ha
  %.not19.us.i.i.i = icmp eq i64 %i.hq, %i.hb
  br i1 %.not19.us.i.i.i, label %.split.us.i.i.i, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit, !llvm.loop !137

.split.i.i.i:                                     ; preds = %bb.v, %bb.z
  %i.hr = phi i64 [ %i.ib, %bb.z ], [ %.pre26.i.i.i, %bb.v ]
  %.0.i.i.i = phi ptr [ %i.hz, %bb.z ], [ %i.hf, %bb.v ] ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.ht = icmp eq i64 %i.gw, %i.hr
  br i1 %i.ht, label %bb.y, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i

bb.y:                                             ; preds = %.split.i.i.i
  %i.hu = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !33
  %i.hw = icmp eq i64 %.fr22.i.i.i, %i.hv
  br i1 %i.hw, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i.i: ; preds = %bb.y
  %i.hx = load ptr, ptr %i.hs, align 8, !tbaa !31
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr %.pre, ptr %i.hx, i64 %.fr22.i.i.i)
  %i.hy = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.hy, label %.noexc82, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i.i, %bb.y, %.split.i.i.i
  %i.hz = load ptr, ptr %.0.i.i.i, align 8, !tbaa !222 ; 3 uses
  %.not18.i.i.i = icmp eq ptr %i.hz, null
  br i1 %.not18.i.i.i, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit, label %bb.z

bb.z:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 48
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !227 ; 2 uses
  %i.ic = urem i64 %i.ib, %i.ha
  %.not19.i.i.i = icmp eq i64 %i.ic, %i.hb
  br i1 %.not19.i.i.i, label %.split.i.i.i, label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit, !llvm.loop !137

.noexc82:                                         ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i.i, %bb.w
  %i.id = phi ptr [ %.pre, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i.i ], [ %.pre, %bb.w ], [ %i.ac, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i ]
  %.sroa.06.1.i = phi ptr [ %.0.i.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i.i ], [ %.0.us.i.i.i, %bb.w ], [ %.sroa.06.018.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i ]
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i, i64 40
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !229
  %i.ig = call i32 @llvm.abs.i32(i32 %i.if, i1 true)
  %i.ih = trunc i32 %i.ig to i8
  br label %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit

_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit: ; preds = %bb.z, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i, %bb.x, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i.i, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i, %.noexc82
  %i.ii = phi ptr [ %i.id, %.noexc82 ], [ %.pre, %bb.x ], [ %.pre, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i ], [ %.pre, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i.i ], [ %.pre, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i ], [ %.pre, %bb.z ] ; 2 uses
  %.0.i = phi i8 [ %i.ih, %.noexc82 ], [ 0, %bb.x ], [ 0, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i.i ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i ], [ 0, %bb.z ] ; 2 uses
  %i.ij = icmp eq ptr %i.ii, %i.ac
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit
  %i.ik = load i64, ptr %i.ac, align 8, !tbaa !32
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.il) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.i, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit, %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.0.i490 = phi i8 [ %.0.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.0.i, %_ZL13itemgroup_getRKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEERSB_.exit ], [ 0, %bb.s ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  %i.im = call noundef zeroext i8 @_ZNK7MapNode12getNeighborsEN4core8vector3dIsEEP3Map(ptr noundef nonnull align 4 dereferenceable(4) %5, i48 %.sroa.0214.0.insert.insert226.reass.reass.reass, ptr noundef nonnull %i.i)
  %i.in = load ptr, ptr %i.ae, align 8, !tbaa !81 ; 2 uses
  %i.io = load ptr, ptr %i.af, align 8, !tbaa !230
  %.not.i.i = icmp eq ptr %i.io, %i.in
  br i1 %.not.i.i, label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN4core8aabbox3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4core8aabbox3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.in, ptr %i.af, align 8, !tbaa !230
  br label %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE5clearEv.exit

_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE5clearEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSt8_DestroyIPN4core8aabbox3dIfEES2_EvT_S4_RSaIT0_E.exit.i.i
  call void @_ZNK7MapNode17getCollisionBoxesEPK14NodeDefManagerPSt6vectorIN4core8aabbox3dIfEESaIS6_EEh(ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull %i.d, ptr noundef nonnull %i.ae, i8 noundef zeroext %i.im)
  %i.ip = load ptr, ptr %i.ae, align 8, !tbaa !231 ; 2 uses
  %i.iq = load ptr, ptr %i.af, align 8, !tbaa !231 ; 2 uses
  %.not337395 = icmp eq ptr %i.ip, %i.iq
  br i1 %.not337395, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE5clearEv.exit
  %i.ir = sitofp nsz i16 %storemerge53401 to float
  %i.is = fmul nnan nsz float %i.ir, 1.000000e+01
  %.pre466 = load ptr, ptr %i.ag, align 8, !tbaa !59
  %.pre468 = load ptr, ptr %i.ah, align 8, !tbaa !71
  %i.it = insertelement <4 x float> %i.bp, float %i.is, i64 0
  %i.iu = shufflevector <4 x float> %i.it, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12emplace_backIJbRiRN4core8vector3dIsEERNS6_8aabbox3dIfEEEEERS1_DpOT_.exit
  %7 = phi ptr [ %8, %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12emplace_backIJbRiRN4core8vector3dIsEERNS6_8aabbox3dIfEEEEERS1_DpOT_.exit ], [ %.pre468, %.lr.ph.preheader ] ; 4 uses
  %i.iv = phi ptr [ %i.kg, %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12emplace_backIJbRiRN4core8vector3dIsEERNS6_8aabbox3dIfEEEEERS1_DpOT_.exit ], [ %.pre466, %.lr.ph.preheader ] ; 7 uses
  %.sroa.0166.0396 = phi ptr [ %i.kh, %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12emplace_backIJbRiRN4core8vector3dIsEERNS6_8aabbox3dIfEEEEERS1_DpOT_.exit ], [ %i.ip, %.lr.ph.preheader ] ; 3 uses
  %i.iw = load <4 x float>, ptr %.sroa.0166.0396, align 4, !tbaa !19
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0166.0396, i64 16
  %i.ix = load <2 x float>, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !19
  %i.iy = fadd nsz <4 x float> %i.iu, %i.iw       ; 2 uses
  %i.iz = fadd nsz <2 x float> %i.bq, %i.ix       ; 2 uses
  %.not.i90 = icmp eq ptr %i.iv, %7
  br i1 %.not.i90, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph
  store ptr null, ptr %i.iv, align 8, !tbaa !67
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  store <4 x float> %i.iy, ptr %i.ja, align 8, !tbaa !19
  %.sroa.13.0..sroa_idx157 = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  store <2 x float> %i.iz, ptr %.sroa.13.0..sroa_idx157, align 8, !tbaa !19
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iv, i64 32
  store i48 %.sroa.0214.0.insert.insert226.reass.reass.reass, ptr %i.jb, align 8, !tbaa !68
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iv, i64 38
  store i8 %.0.i490, ptr %i.jc, align 2, !tbaa !66
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iv, i64 39 ; 2 uses
  %i.je = load i8, ptr %i.jd, align 1
  %i.jf = and i8 %i.je, -4
  store i8 %i.jf, ptr %i.jd, align 1
  %i.jg = load ptr, ptr %i.ag, align 8, !tbaa !59
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 40 ; 2 uses
  store ptr %i.jh, ptr %i.ag, align 8, !tbaa !59
  %.pre467 = load ptr, ptr %i.ah, align 8, !tbaa !71
  br label %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12emplace_backIJbRiRN4core8vector3dIsEERNS6_8aabbox3dIfEEEEERS1_DpOT_.exit

bb.ab:                                            ; preds = %.lr.ph
  %.val.i.i92 = load ptr, ptr %4, align 8, !tbaa !58 ; 5 uses
  %i.ji = ptrtoint ptr %7 to i64
  %i.jj = ptrtoint ptr %.val.i.i92 to i64         ; 2 uses
  %i.jk = sub i64 %i.ji, %i.jj                    ; 3 uses
  %i.jl = icmp eq i64 %i.jk, 9223372036854775800
  br i1 %i.jl, label %bb.ac, label %_ZNKSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i93

bb.ac:                                            ; preds = %bb.ab
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #25
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i93: ; preds = %bb.ab
  %i.jm = sdiv exact i64 %i.jk, 40                ; 3 uses
  %i.jn = icmp eq ptr %7, %.val.i.i92             ; 2 uses
  %.sroa.speculated.i.i.i94 = select i1 %i.jn, i64 1, i64 %i.jm
  %i.jo = add nsw i64 %.sroa.speculated.i.i.i94, %i.jm ; 2 uses
  %i.jp = icmp ult i64 %i.jo, %i.jm
  %i.jq = call i64 @llvm.umin.i64(i64 %i.jo, i64 230584300921369395)
  %i.jr = select i1 %i.jp, i64 230584300921369395, i64 %i.jq ; 3 uses
  %.not.i.i.i95 = icmp ne i64 %i.jr, 0
  call void @llvm.assume(i1 %.not.i.i.i95)
  %i.js = mul nuw nsw i64 %i.jr, 40
  %i.jt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.js) #26 ; 5 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.jk ; 6 uses
  store ptr null, ptr %i.ju, align 8, !tbaa !67
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  store <4 x float> %i.iy, ptr %i.jv, align 8, !tbaa !19
  %.sroa.13.0..sroa_idx159 = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  store <2 x float> %i.iz, ptr %.sroa.13.0..sroa_idx159, align 8, !tbaa !19
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 32
  store i48 %.sroa.0214.0.insert.insert226.reass.reass.reass, ptr %i.jw, align 8, !tbaa !68
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 38
  store i8 %.0.i490, ptr %i.jx, align 2, !tbaa !66
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ju, i64 39
  store i8 0, ptr %i.jy, align 1
  br i1 %i.jn, label %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit39.i.i101, label %.lr.ph.i.i.i.i.i97

.lr.ph.i.i.i.i.i97:                               ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i93, %.lr.ph.i.i.i.i.i97
  %.03.i.i.i.i.i98 = phi ptr [ %i.ka, %.lr.ph.i.i.i.i.i97 ], [ %i.jt, %_ZNKSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i93 ] ; 2 uses
  %.092.i.i.i.i.i99 = phi ptr [ %i.jz, %.lr.ph.i.i.i.i.i97 ], [ %.val.i.i92, %_ZNKSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i93 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.03.i.i.i.i.i98, ptr noundef nonnull readonly align 8 dereferenceable(40) %.092.i.i.i.i.i99, i64 40, i1 false), !tbaa.struct !80, !alias.scope !232
  %i.jz = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i99, i64 40 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i98, i64 40 ; 2 uses
  %.not.i.i.i.i.i100 = icmp eq ptr %i.jz, %7
  br i1 %.not.i.i.i.i.i100, label %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit39.i.i101, label %.lr.ph.i.i.i.i.i97, !llvm.loop !0

_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit39.i.i101: ; preds = %.lr.ph.i.i.i.i.i97, %_ZNKSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i93
  %.0.lcssa.i.i.i.i.i102 = phi ptr [ %i.jt, %_ZNKSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i93 ], [ %i.ka, %.lr.ph.i.i.i.i.i97 ]
  %i.kb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i102, i64 40 ; 2 uses
  %.not.i40.i.i103 = icmp eq ptr %.val.i.i92, null
  br i1 %.not.i40.i.i103, label %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE17_M_realloc_insertIJbRiRN4core8vector3dIsEERNS6_8aabbox3dIfEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit39.i.i101
  %i.kc = load ptr, ptr %i.ah, align 8, !tbaa !71
  %i.kd = ptrtoint ptr %i.kc to i64
  %i.ke = sub i64 %i.kd, %i.jj
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i92, i64 noundef %i.ke) #24
  br label %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE17_M_realloc_insertIJbRiRN4core8vector3dIsEERNS6_8aabbox3dIfEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE17_M_realloc_insertIJbRiRN4core8vector3dIsEERNS6_8aabbox3dIfEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ad, %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit39.i.i101
  store ptr %i.jt, ptr %4, align 8, !tbaa !58
  store ptr %i.kb, ptr %i.ag, align 8, !tbaa !59
  %i.kf = getelementptr inbounds nuw [40 x i8], ptr %i.jt, i64 %i.jr ; 2 uses
  store ptr %i.kf, ptr %i.ah, align 8, !tbaa !71
  br label %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12emplace_backIJbRiRN4core8vector3dIsEERNS6_8aabbox3dIfEEEEERS1_DpOT_.exit

_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12emplace_backIJbRiRN4core8vector3dIsEERNS6_8aabbox3dIfEEEEERS1_DpOT_.exit: ; preds = %bb.aa, %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE17_M_realloc_insertIJbRiRN4core8vector3dIsEERNS6_8aabbox3dIfEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %8 = phi ptr [ %.pre467, %bb.aa ], [ %i.kf, %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE17_M_realloc_insertIJbRiRN4core8vector3dIsEERNS6_8aabbox3dIfEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.kg = phi ptr [ %i.jh, %bb.aa ], [ %i.kb, %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE17_M_realloc_insertIJbRiRN4core8vector3dIsEERNS6_8aabbox3dIfEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.0166.0396, i64 24 ; 2 uses
  %.not337 = icmp eq ptr %i.kh, %i.iq
  br i1 %.not337, label %.critedge, label %.lr.ph

bb.ae:                                            ; preds = %_ZN8MapBlock14getNodeNoCheckEN4core8vector3dIsEE.exit
  %i.ki = sitofp nsz i16 %storemerge53401 to float
  %i.kj = fmul nnan nsz float %i.ki, 1.000000e+01 ; 2 uses
  %i.kk = fadd nsz float %i.kj, -5.000000e+00
  %i.kl = insertelement <2 x float> %i.br, float %i.kk, i64 0 ; 2 uses
  %i.km = fadd nsz float %i.kj, 5.000000e+00
  %i.kn = insertelement <2 x float> %i.bs, float %i.km, i64 0 ; 2 uses
  %i.ko = load ptr, ptr %i.ag, align 8, !tbaa !59 ; 12 uses
  %i.kp = load ptr, ptr %i.ah, align 8, !tbaa !71
  %.not.i115 = icmp eq ptr %i.ko, %i.kp
  br i1 %.not.i115, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store ptr null, ptr %i.ko, align 8, !tbaa !67
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store <2 x float> %i.kl, ptr %i.kq, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  store float %i.at, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !19
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ko, i64 20
  store <2 x float> %i.kn, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !19
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ko, i64 28
  store float %i.au, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !19
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 32
  store i48 %.sroa.0214.0.insert.insert226.reass.reass.reass, ptr %i.kr, align 8, !tbaa !68
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ko, i64 38
  store i8 0, ptr %i.ks, align 2, !tbaa !66
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ko, i64 39 ; 2 uses
  %i.ku = load i8, ptr %i.kt, align 1
  %i.kv = and i8 %i.ku, -4
  %i.kw = or disjoint i8 %i.kv, 1
  store i8 %i.kw, ptr %i.kt, align 1
  %i.kx = load ptr, ptr %i.ag, align 8, !tbaa !59
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 40
  store ptr %i.ky, ptr %i.ag, align 8, !tbaa !59
  br label %.critedge

bb.ag:                                            ; preds = %bb.ae
  %.val.i.i117 = load ptr, ptr %4, align 8, !tbaa !58 ; 5 uses
  %i.kz = ptrtoint ptr %i.ko to i64
  %i.la = ptrtoint ptr %.val.i.i117 to i64        ; 2 uses
  %i.lb = sub i64 %i.kz, %i.la                    ; 3 uses
  %i.lc = icmp eq i64 %i.lb, 9223372036854775800
  br i1 %i.lc, label %bb.ah, label %_ZNKSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i118

bb.ah:                                            ; preds = %bb.ag
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #25
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i118: ; preds = %bb.ag
  %i.ld = sdiv exact i64 %i.lb, 40                ; 3 uses
  %i.le = icmp eq ptr %i.ko, %.val.i.i117         ; 2 uses
  %.sroa.speculated.i.i.i119 = select i1 %i.le, i64 1, i64 %i.ld
  %i.lf = add nsw i64 %.sroa.speculated.i.i.i119, %i.ld ; 2 uses
  %i.lg = icmp ult i64 %i.lf, %i.ld
  %i.lh = call i64 @llvm.umin.i64(i64 %i.lf, i64 230584300921369395)
  %i.li = select i1 %i.lg, i64 230584300921369395, i64 %i.lh ; 3 uses
  %.not.i.i.i120 = icmp ne i64 %i.li, 0
  call void @llvm.assume(i1 %.not.i.i.i120)
  %i.lj = mul nuw nsw i64 %i.li, 40
  %i.lk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lj) #26 ; 5 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.lb ; 8 uses
  store ptr null, ptr %i.ll, align 8, !tbaa !67
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  store <2 x float> %i.kl, ptr %i.lm, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx135 = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  store float %i.at, ptr %.sroa.5.0..sroa_idx135, align 8, !tbaa !19
  %.sroa.6.0..sroa_idx137 = getelementptr inbounds nuw i8, ptr %i.ll, i64 20
  store <2 x float> %i.kn, ptr %.sroa.6.0..sroa_idx137, align 4, !tbaa !19
  %.sroa.7.0..sroa_idx139 = getelementptr inbounds nuw i8, ptr %i.ll, i64 28
  store float %i.au, ptr %.sroa.7.0..sroa_idx139, align 4, !tbaa !19
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 32
  store i48 %.sroa.0214.0.insert.insert226.reass.reass.reass, ptr %i.ln, align 8, !tbaa !68
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 38
  store i8 0, ptr %i.lo, align 2, !tbaa !66
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ll, i64 39
  store i8 1, ptr %i.lp, align 1
  br i1 %i.le, label %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit39.i.i126, label %.lr.ph.i.i.i.i.i122

.lr.ph.i.i.i.i.i122:                              ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i118, %.lr.ph.i.i.i.i.i122
  %.03.i.i.i.i.i123 = phi ptr [ %i.lr, %.lr.ph.i.i.i.i.i122 ], [ %i.lk, %_ZNKSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i118 ] ; 2 uses
  %.092.i.i.i.i.i124 = phi ptr [ %i.lq, %.lr.ph.i.i.i.i.i122 ], [ %.val.i.i117, %_ZNKSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i118 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.03.i.i.i.i.i123, ptr noundef nonnull readonly align 8 dereferenceable(40) %.092.i.i.i.i.i124, i64 40, i1 false), !tbaa.struct !80, !alias.scope !233
  %i.lq = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i124, i64 40 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i123, i64 40 ; 2 uses
  %.not.i.i.i.i.i125 = icmp eq ptr %i.lq, %i.ko
  br i1 %.not.i.i.i.i.i125, label %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit39.i.i126, label %.lr.ph.i.i.i.i.i122, !llvm.loop !0

_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit39.i.i126: ; preds = %.lr.ph.i.i.i.i.i122, %_ZNKSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i118
  %.0.lcssa.i.i.i.i.i127 = phi ptr [ %i.lk, %_ZNKSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i118 ], [ %i.lr, %.lr.ph.i.i.i.i.i122 ]
  %i.ls = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i127, i64 40
  %.not.i40.i.i128 = icmp eq ptr %.val.i.i117, null
  br i1 %.not.i40.i.i128, label %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE17_M_realloc_insertIJbiRN4core8vector3dIsEERNS5_8aabbox3dIfEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i129, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit39.i.i126
  %i.lt = load ptr, ptr %i.ah, align 8, !tbaa !71
  %i.lu = ptrtoint ptr %i.lt to i64
  %i.lv = sub i64 %i.lu, %i.la
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i117, i64 noundef %i.lv) #24
  br label %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE17_M_realloc_insertIJbiRN4core8vector3dIsEERNS5_8aabbox3dIfEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i129

_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE17_M_realloc_insertIJbiRN4core8vector3dIsEERNS5_8aabbox3dIfEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i129: ; preds = %bb.ai, %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit39.i.i126
  store ptr %i.lk, ptr %4, align 8, !tbaa !58
  store ptr %i.ls, ptr %i.ag, align 8, !tbaa !59
  %i.lw = getelementptr inbounds nuw [40 x i8], ptr %i.lk, i64 %i.li
  store ptr %i.lw, ptr %i.ah, align 8, !tbaa !71
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12emplace_backIJbRiRN4core8vector3dIsEERNS6_8aabbox3dIfEEEEERS1_DpOT_.exit, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE5clearEv.exit, %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE17_M_realloc_insertIJbiRN4core8vector3dIsEERNS5_8aabbox3dIfEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i129, %bb.af, %_ZNK14NodeDefManager3getERK7MapNode.exit
  %.4 = phi i1 [ %.2403, %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE17_M_realloc_insertIJbiRN4core8vector3dIsEERNS5_8aabbox3dIfEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i129 ], [ true, %_ZNK14NodeDefManager3getERK7MapNode.exit ], [ %.2403, %bb.af ], [ true, %_ZNSt6vectorIN4core8aabbox3dIfEESaIS2_EE5clearEv.exit ], [ true, %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12emplace_backIJbRiRN4core8vector3dIsEERNS6_8aabbox3dIfEEEEERS1_DpOT_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12emplace_backIJbiRN4core8vector3dIsEERNS5_8aabbox3dIfEEEEERS1_DpOT_.exit

_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12emplace_backIJbiRN4core8vector3dIsEERNS5_8aabbox3dIfEEEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE17_M_realloc_insertIJbiRN4core8vector3dIsEERNS5_8aabbox3dIfEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.h, %.critedge, %bb.o
  %.sroa.0214.0 = phi i16 [ %i.ex, %bb.o ], [ %storemerge53401, %.critedge ], [ %i.ce, %bb.h ], [ %i.ce, %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE17_M_realloc_insertIJbiRN4core8vector3dIsEERNS5_8aabbox3dIfEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %.5 = phi i1 [ true, %bb.o ], [ %.4, %.critedge ], [ %.2403, %bb.h ], [ %.2403, %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE17_M_realloc_insertIJbiRN4core8vector3dIsEERNS5_8aabbox3dIfEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 3 uses
  %i.lx = add i16 %.sroa.0214.0, 1                ; 2 uses
  %.not54 = icmp sgt i16 %i.lx, %.sroa.039.0.extract.trunc
  br i1 %.not54, label %._crit_edge, label %bb.f, !llvm.loop !144

._crit_edge:                                      ; preds = %_ZNSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaIS1_EE12emplace_backIJbiRN4core8vector3dIsEERNS5_8aabbox3dIfEEEEERS1_DpOT_.exit
  %i.ly = add i16 %storemerge51413, 1             ; 2 uses
  %.not52 = icmp sgt i16 %i.ly, %.sroa.240.0.extract.trunc
  br i1 %.not52, label %._crit_edge416, label %.preheader, !llvm.loop !145

._crit_edge416:                                   ; preds = %._crit_edge, %.preheader344
  %.us-phi = phi i16 [ %.sroa.6328.0427, %.preheader344 ], [ %i.bf, %._crit_edge ]
  %.us-phi422 = phi i16 [ %.sroa.0327.0428, %.preheader344 ], [ %.sroa.0327.3, %._crit_edge ]
  %.us-phi423 = phi i16 [ %.sroa.9329.0429, %.preheader344 ], [ %i.ao, %._crit_edge ]
  %.us-phi424 = phi ptr [ %.044431, %.preheader344 ], [ %.347, %._crit_edge ]
  %.us-phi425 = phi i1 [ %.0432, %.preheader344 ], [ %.5, %._crit_edge ] ; 2 uses
  %i.lz = add i16 %storemerge430, 1               ; 2 uses
  %i.ma = sext i16 %i.lz to i32
  %.not = icmp sgt i32 %i.ma, %i.aa
  br i1 %.not, label %._crit_edge433, label %.preheader344, !llvm.loop !146

._crit_edge433:                                   ; preds = %._crit_edge416, %.preheader344.lr.ph, %_ZNK14NodeDefManager3getEt.exit
  %.0.lcssa = phi i1 [ false, %_ZNK14NodeDefManager3getEt.exit ], [ false, %.preheader344.lr.ph ], [ %.us-phi425, %._crit_edge416 ]
  ret i1 %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL16add_object_boxesP11EnvironmentRKN4core8aabbox3dIfEEfNS1_8vector3dIfEES7_P12ActiveObjectRSt6vectorIN12_GLOBAL__N_119NearbyCollisionInfoESaISC_EE(ptr noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %1, float noundef %2, <2 x float> %3, float %4, <2 x float> %5, float %6, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(24) %8) unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %class.anon, align 8                ; 5 uses
  %10 = alloca %"class.std::vector.144", align 8  ; 9 uses
  %11 = alloca %"class.core::aabbox3d", align 8   ; 8 uses
  %12 = alloca %"class.std::function.277", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #6
  store ptr %8, ptr %9, align 8, !tbaa !234
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !24
  %i.c = icmp eq ptr %i.b, getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV17ServerEnvironment, i64 16)
  br i1 %i.c, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.d = fmul nsz float %2, %6                    ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !37
  %i.g = fadd nsz float %4, %i.f
  %i.h = fadd nsz float %i.g, -1.500000e+01
  %i.i = fcmp nsz ogt float %i.d, 0.000000e+00
  %i.j = select i1 %i.i, float 0.000000e+00, float %i.d
  %i.k = fadd nsz float %i.j, %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.n = load float, ptr %i.m, align 4, !tbaa !37
  %i.o = fadd nsz float %4, %i.n
  %i.p = fadd nsz float %i.o, 1.500000e+01
  %i.q = fcmp nsz olt float %i.d, 0.000000e+00
  %i.r = select i1 %i.q, float 0.000000e+00, float %i.d
  %i.s = insertelement <2 x float> poison, float %2, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.u = fmul nsz <2 x float> %i.t, %5            ; 4 uses
  %i.v = load <2 x float>, ptr %1, align 4, !tbaa !19
  %i.w = fadd nsz <2 x float> %3, %i.v
  %i.x = fadd nsz <2 x float> %i.w, splat (float -1.500000e+01)
  %i.y = fcmp nsz ogt <2 x float> %i.u, zeroinitializer
  %i.z = select <2 x i1> %i.y, <2 x float> zeroinitializer, <2 x float> %i.u
  %i.aa = fadd nsz <2 x float> %i.z, %i.x
  %i.ab = load <2 x float>, ptr %i.l, align 4, !tbaa !19
  %i.ac = fadd nsz <2 x float> %3, %i.ab
  %i.ad = fadd nsz <2 x float> %i.ac, splat (float 1.500000e+01)
  %i.ae = fcmp nsz olt <2 x float> %i.u, zeroinitializer
  %i.af = select <2 x i1> %i.ae, <2 x float> zeroinitializer, <2 x float> %i.u
  %i.ag = fadd nsz <2 x float> %i.af, %i.ad
  %i.ah = fadd nsz float %i.r, %i.p
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  store <2 x float> %i.aa, ptr %11, align 8, !tbaa !19
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store float %i.k, ptr %.sroa.5105.0..sroa_idx, align 8, !tbaa !19
end_hunk_1
