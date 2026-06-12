inline.NumInlined: 1119
inline.NumDeleted: 346
begin_hunk_0_@_ZN6Assimp18ObjFileMtlImporter10getTextureEv:bb.a
  %i.co = getelementptr inbounds i8, ptr %i.cl, i64 %i.cn
  store i8 %i.ch, ptr %i.co, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.cp, ptr %3, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.cq, align 8
  store i8 0, ptr %i.cp, align 8
  %.sroa.01.0.copyload = load ptr, ptr %i.bi, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.cr, align 8
  %i.cs = invoke ptr @_ZN6Assimp7getNameIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEET_S8_S8_RNSt7__cxx1112basic_stringIcSt11char_traitsIcES5_EE(ptr %.sroa.01.0.copyload, ptr %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  store ptr %i.cs, ptr %i.bi, align 8
  %i.ct = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not44 = icmp eq ptr %i.ct, null
  br i1 %.not44, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.cu = load ptr, ptr %0, align 8, !noalias !64
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !noalias !64 ; 3 uses
  %i.cx = load ptr, ptr %3, align 8, !noalias !64
  %i.cy = load i64, ptr %i.cq, align 8, !noalias !64 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.cz, ptr %4, align 8, !alias.scope !67
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.da, align 8, !alias.scope !67
  store i8 0, ptr %i.cz, align 8, !alias.scope !67
  %i.db = add i64 %i.cy, %i.cw
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.db)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dc = load i64, ptr %i.da, align 8, !alias.scope !67
  %i.dd = sub i64 4611686018427387903, %i.dc
  %i.de = icmp ult i64 %i.dd, %i.cw
  br i1 %i.de, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.z
  %i.df = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.cu, i64 noundef %i.cw)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.aa ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.dg = load i64, ptr %i.da, align 8, !alias.scope !67
  %i.dh = sub i64 4611686018427387903, %i.dg
  %i.di = icmp ult i64 %i.dh, %i.cy
  br i1 %i.di, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #25
          to label %.cont.i.i unwind label %bb.aa

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.dj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.cx, i64 noundef %i.cy)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit unwind label %bb.aa ; 0 uses

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.y
  %i.dk = landingpad { ptr, i32 }
          cleanup
  %i.dl = load ptr, ptr %4, align 8, !alias.scope !67 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.cz
  br i1 %i.dm, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.aa
  %i.dn = load i64, ptr %i.cz, align 8, !alias.scope !67
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #24
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.dp = load i64, ptr %i.da, align 8            ; 5 uses
  %i.dq = icmp ugt i64 %i.dp, 1023
  %.pre69 = load ptr, ptr %4, align 8             ; 3 uses
  br i1 %i.dq, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit58, label %bb.ab

bb.ab:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  %i.dr = trunc nuw nsw i64 %i.dp to i32
  store i32 %i.dr, ptr %i.ct, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ct, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ds, ptr align 1 %.pre69, i64 %i.dp, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dp
  store i8 0, ptr %i.dt, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit58

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit58: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit, %bb.ab
  %i.du = icmp eq ptr %.pre69, %i.cz
  br i1 %i.du, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit58
  %i.dv = icmp ult i64 %i.dp, 16
  call void @llvm.assume(i1 %i.dv)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit58
  %i.dw = load i64, ptr %i.cz, align 8
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %.pre69, i64 noundef %i.dx) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.ad

bb.ac:                                            ; preds = %bb.w
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.body:                                            ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.af

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %bb.x
  %i.dz = load ptr, ptr %3, align 8               ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.cp
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.ad
  %i.eb = load i64, ptr %i.cp, align 8
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %bb.ae

bb.ae:                                            ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void

bb.af:                                            ; preds = %.body, %bb.ac
  %.pn45 = phi { ptr, i32 } [ %i.dk, %.body ], [ %i.dy, %bb.ac ]
  %i.ed = load ptr, ptr %3, align 8               ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.cp
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.af
  %i.ef = load i64, ptr %i.cp, align 8
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %.pn45.pn = phi { ptr, i32 } [ %.pn45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  resume { ptr, i32 } %.pn45.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp18ObjFileMtlImporter14createMaterialEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %2 = alloca %"class.std::vector.5", align 8     ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 23 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  store ptr %i.c, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store i64 0, ptr %i.d, align 8
  store i8 0, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.pre = load ptr, ptr %i.e, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.f = phi ptr [ %i.s, %bb.e ], [ %.pre, %bb.a ]
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  switch i8 %i.g, label %_ZN6Assimp9IsLineEndIcEEbT_.exit [
    i8 13, label %._crit_edge.i.i
    i8 10, label %._crit_edge.i.i
    i8 0, label %._crit_edge.i.i
    i8 12, label %._crit_edge.i.i
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit:                 ; preds = %bb.b
  %i.h = load i64, ptr %i.d, align 8              ; 4 uses
  %i.i = add i64 %i.h, 1                          ; 3 uses
  %i.j = load ptr, ptr %1, align 8                ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit
  %i.l = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.l)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit
  %7 = load i64, ptr %i.c, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.c
  %8 = phi i64 [ %7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %bb.c ]
  %i.m = icmp ugt i64 %i.i, %8
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.h, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  %.pre.i.i = load ptr, ptr %1, align 8
  br label %bb.e

bb.e:                                             ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.n = phi ptr [ %.pre.i.i, %.noexc ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.h
  store i8 %i.g, ptr %i.o, align 1
  store i64 %i.i, ptr %i.d, align 8
  %i.p = load ptr, ptr %1, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.i
  store i8 0, ptr %i.q, align 1
  %i.r = load ptr, ptr %i.e, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  store ptr %i.s, ptr %i.e, align 8
  br label %bb.b, !llvm.loop !70

bb.f:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.u, ptr %3, align 8
  store i16 2336, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 2, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i8 0, ptr %i.w, align 2
  %i.x = invoke noundef i32 @_ZN6Assimp8tokenizeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEjRKT_RSt6vectorIS7_SaIS7_EES9_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.y = load ptr, ptr %3, align 8                ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.u
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.aa = load i64, ptr %i.u, align 8
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  store ptr %i.ac, ptr %4, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 10 uses
  store i64 0, ptr %i.ad, align 8
  store i8 0, ptr %i.ac, align 8
  %i.ae = icmp eq i32 %i.x, 1
  br i1 %i.ae, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.af = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.24, i64 noundef 15)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.j ; 0 uses

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %3, align 8               ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.u
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.i
  %i.aj = load i64, ptr %i.u, align 8
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.as

bb.j:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.am = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.23, i64 noundef 0, i64 noundef 2) #22
  %i.an = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.23, i64 noundef %i.am, i64 noundef 2) #22 ; 5 uses
  %.not = icmp eq i64 %i.an, -1
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %i.ao = load i64, ptr %i.d, align 8, !noalias !71 ; 3 uses
  %i.ap = icmp ugt i64 %i.an, %i.ao
  br i1 %i.ap, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, i64 noundef %i.an, i64 noundef %i.ao) #25
          to label %.noexc25 unwind label %bb.v

.noexc25:                                         ; preds = %bb.m
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  store ptr %i.aq, ptr %5, align 8, !alias.scope !71
  %i.ar = load ptr, ptr %1, align 8, !noalias !71
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.an ; 2 uses
  %i.at = sub nuw i64 %i.ao, %i.an                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22, !noalias !71
  store i64 %i.at, ptr %i.b, align 8, !noalias !71
  %i.au = icmp ugt i64 %i.at, 15
  br i1 %i.au, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.av = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc26 unwind label %bb.v   ; 2 uses

.noexc26:                                         ; preds = %.noexc10.i.i
  store ptr %i.av, ptr %5, align 8, !alias.scope !71
  %i.aw = load i64, ptr %i.b, align 8, !noalias !71
  store i64 %i.aw, ptr %i.aq, align 8, !alias.scope !71
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ax = phi ptr [ %i.av, %.noexc26 ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.at, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.ay = load i8, ptr %i.as, align 1
  store i8 %i.ay, ptr %i.ax, align 1
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.as, i64 %i.at, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i.i
  %i.az = load i64, ptr %i.b, align 8, !noalias !71 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i64 %i.az, ptr %i.ba, align 8, !alias.scope !71
  %i.bb = load ptr, ptr %5, align 8, !alias.scope !71
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.az
  store i8 0, ptr %i.bc, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22, !noalias !71
  %i.bd = load ptr, ptr %4, align 8               ; 6 uses
  %i.be = icmp eq ptr %i.bd, %i.ac
  %i.bf = load ptr, ptr %5, align 8               ; 5 uses
  %i.bg = icmp eq ptr %i.bf, %i.aq                ; 2 uses
  br i1 %i.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.p
  br i1 %i.bg, label %bb.q, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.p
  br i1 %i.bg, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bh = load i64, ptr %i.ba, align 8            ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bi)
  switch i64 %i.bh, label %bb.s [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.bj = load i8, ptr %i.bf, align 1
  store i8 %i.bj, ptr %i.bd, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %i.bf, i64 %i.bh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.s, %bb.r, %bb.q
  %i.bk = load i64, ptr %i.ba, align 8            ; 2 uses
  store i64 %i.bk, ptr %i.ad, align 8
  %i.bl = load ptr, ptr %4, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  store i8 0, ptr %i.bm, align 1
  %.pre.i = load ptr, ptr %5, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.bf, ptr %4, align 8
  %i.bn = load <2 x i64>, ptr %i.ba, align 8
  store <2 x i64> %i.bn, ptr %i.ad, align 8
  br label %bb.u
end_hunk_0
