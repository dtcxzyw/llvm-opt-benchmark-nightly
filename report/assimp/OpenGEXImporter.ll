inline.NumInlined: 1858
inline.NumDeleted: 966
begin_hunk_0_@_ZN6Assimp7OpenGEX15OpenGEXImporter20handleIndexArrayNodeEPN10ODDLParser7DDLNodeEP7aiScene:bb.a
.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ac
  %.05477.in = phi ptr [ %i.ex, %bb.ac ], [ %i.cv, %.lr.ph.preheader ]
  %.05376 = phi i64 [ %i.ey, %bb.ac ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.175 = phi i32 [ %i.ew, %bb.ac ], [ %.05778, %.lr.ph.preheader ] ; 3 uses
  %.05477 = load ptr, ptr %.05477.in, align 8     ; 4 uses
  %i.de = load i32, ptr %.05477, align 8
  switch i32 %i.de, label %bb.w [
    i32 6, label %bb.u
    i32 7, label %bb.v
  ]

bb.u:                                             ; preds = %.lr.ph
  %i.df = tail call noundef zeroext i16 @_ZNK10ODDLParser5Value16getUnsignedInt16Ev(ptr noundef nonnull align 8 dereferenceable(32) %.05477)
  %i.dg = zext i16 %i.df to i32
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph
  %i.dh = tail call noundef i32 @_ZNK10ODDLParser5Value16getUnsignedInt32Ev(ptr noundef nonnull align 8 dereferenceable(32) %.05477)
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %bb.v, %bb.u
  %.052 = phi i32 [ %i.dg, %bb.u ], [ %i.dh, %bb.v ], [ -1, %.lr.ph ]
  %i.di = sext i32 %.052 to i64                   ; 4 uses
  %i.dj = load ptr, ptr %i.av, align 8
  %i.dk = getelementptr inbounds nuw [12 x i8], ptr %i.dj, i64 %i.di ; 2 uses
  %i.dl = load ptr, ptr %i.d, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = zext i32 %.175 to i64                   ; 4 uses
  %i.dp = getelementptr inbounds nuw [12 x i8], ptr %i.dn, i64 %i.do ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dr = load float, ptr %i.dq, align 4
  %i.ds = load <2 x float>, ptr %i.dk, align 4
  store <2 x float> %i.ds, ptr %i.dp, align 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store float %i.dr, ptr %i.dt, align 4
  br i1 %.not.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.du = load ptr, ptr %i.cm, align 8
  %i.dv = getelementptr inbounds [16 x i8], ptr %i.du, i64 %i.di
  %i.dw = load ptr, ptr %i.d, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.dy, i64 %i.do
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dz, ptr noundef nonnull align 4 dereferenceable(16) %i.dv, i64 16, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  br i1 %i.bi, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ea = load ptr, ptr %i.be, align 8
  %i.eb = getelementptr inbounds nuw [12 x i8], ptr %i.ea, i64 %i.di ; 2 uses
  %i.ec = load ptr, ptr %i.d, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw [12 x i8], ptr %i.ee, i64 %i.do ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.eh = load float, ptr %i.eg, align 4
  %i.ei = load <2 x float>, ptr %i.eb, align 4
  store <2 x float> %i.ei, ptr %i.ef, align 4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store float %i.eh, ptr %i.ej, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  br i1 %.not68.not, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ek = load ptr, ptr %i.cn, align 8
  %i.el = getelementptr inbounds [12 x i8], ptr %i.ek, i64 %i.di ; 2 uses
  %i.em = load ptr, ptr %i.d, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 112
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw [12 x i8], ptr %i.eo, i64 %i.do ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.er = load float, ptr %i.eq, align 4
  %i.es = load <2 x float>, ptr %i.el, align 4
  store <2 x float> %i.es, ptr %i.ep, align 4
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store float %i.er, ptr %i.et, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.eu = load ptr, ptr %i.ct, align 8
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %.05376
  store i32 %.175, ptr %i.ev, align 4
  %i.ew = add i32 %.175, 1                        ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.05477, i64 24
  %i.ey = add nuw nsw i64 %.05376, 1              ; 2 uses
  %i.ez = load i32, ptr %i.cr, align 8
  %i.fa = zext i32 %i.ez to i64
  %i.fb = icmp samesign ult i64 %i.ey, %i.fa
  br i1 %i.fb, label %.lr.ph, label %._crit_edge, !llvm.loop !68

.loopexit:                                        ; preds = %._crit_edge, %bb.s, %bb.i
  ret void

bb.ad:                                            ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.g, %bb.h ], [ %i.b, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.h, %bb.h ], [ %i.c, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #32
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp7OpenGEX15OpenGEXImporter18handleMaterialNodeEPN10ODDLParser7DDLNodeEP7aiScene(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31 ; 5 uses
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 624
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.not.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %i.e, align 8
  %i.h = load ptr, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.i, ptr %i.d, align 8
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 6 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.e, label %_ZNKSt6vectorIP10aiMaterialSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #30
  unreachable

_ZNKSt6vectorIP10aiMaterialSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #31 ; 4 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.m ; 2 uses
  store ptr %i.a, ptr %i.v, align 8
  %i.w = icmp sgt i64 %i.m, 0
  br i1 %i.w, label %bb.f, label %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIP10aiMaterialSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.u, ptr align 8 %i.j, i64 %i.m, i1 false)
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIP10aiMaterialSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.not.i17.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP10aiMaterialSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #29
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP10aiMaterialSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.u, ptr %i.c, align 8
  store ptr %i.x, ptr %i.d, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.y, ptr %i.f, align 8
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.c, %_ZNSt6vectorIP10aiMaterialSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 648
  store i32 15, ptr %i.z, align 8
  tail call void @_ZN6Assimp7OpenGEX15OpenGEXImporter11handleNodesEPN10ODDLParser7DDLNodeEP7aiScene(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr noundef %2)
  ret void

bb.h:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #29
  resume { ptr, i32 } %i.aa
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp7OpenGEX15OpenGEXImporter15handleColorNodeEPN10ODDLParser7DDLNodeEP7aiScene(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(776) %0, ptr noundef %1, ptr readnone captures(none) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %struct.aiColor3D, align 8          ; 10 uses
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.critedge, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.b, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.b, ptr noundef nonnull align 1 dereferenceable(6) @.str.23, i64 6, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 6, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i8 0, ptr %i.d, align 2
  %i.e = invoke noundef ptr @_ZN10ODDLParser7DDLNode18findPropertyByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.b unwind label %bb.e       ; 3 uses

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.f = load ptr, ptr %7, align 8                ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.b
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.b, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %.not24 = icmp eq ptr %i.k, null
  br i1 %.not24, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = call noundef ptr @_ZNK10ODDLParser7DDLNode16getDataArrayListEv(ptr noundef nonnull align 8 dereferenceable(136) %1) ; 3 uses
  %.not25 = icmp eq ptr %i.l, null
  br i1 %.not25, label %.critedge, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %7, align 8                ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.b
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.e
  %i.p = load i64, ptr %i.b, align 8
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %common.resume.op = phi { ptr, i32 } [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i ], [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %common.resume

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 4
  store <2 x float> zeroinitializer, ptr %8, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store float 0.000000e+00, ptr %i.s, align 8
  %i.t = load i64, ptr %i.l, align 8
  %i.u = icmp eq i64 %i.t, 3
  %i.v = getelementptr i8, ptr %i.l, i64 8
  %.val = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.w = call noundef float @_ZNK10ODDLParser5Value8getFloatEv(ptr noundef nonnull align 8 dereferenceable(32) %.val)
  %i.x = call noundef ptr @_ZNK10ODDLParser5Value7getNextEv(ptr noundef nonnull align 8 dereferenceable(32) %.val) ; 2 uses
  %i.y = call noundef float @_ZNK10ODDLParser5Value8getFloatEv(ptr noundef nonnull align 8 dereferenceable(32) %i.x)
  %i.z = call noundef ptr @_ZNK10ODDLParser5Value7getNextEv(ptr noundef nonnull align 8 dereferenceable(32) %i.x) ; 2 uses
  %i.aa = call noundef float @_ZNK10ODDLParser5Value8getFloatEv(ptr noundef nonnull align 8 dereferenceable(32) %i.z)
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = call noundef ptr @_ZNK10ODDLParser5Value7getNextEv(ptr noundef nonnull align 8 dereferenceable(32) %i.z)
  %i.ac = call noundef float @_ZNK10ODDLParser5Value8getFloatEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ab) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  store float %i.w, ptr %8, align 8
  store float %i.y, ptr %i.r, align 4
  store float %i.aa, ptr %i.s, align 8
  %i.ad = load ptr, ptr %i.e, align 8             ; 5 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN6Assimp7OpenGEXL12getColorTypeEPN10ODDLParser4TextE.exit.thread, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.af, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.af, ptr noundef nonnull align 1 dereferenceable(7) @_ZN7GrammarL17DiffuseColorTokenE, i64 7, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 7, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 23
  store i8 0, ptr %i.ah, align 1
  %i.ai = invoke noundef zeroext i1 @_ZNK10ODDLParser4TexteqERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.aj = load ptr, ptr %3, align 8               ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.af
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.al = load i64, ptr %i.af, align 8
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br i1 %i.ai, label %bb.q, label %._crit_edge.i.i25.i

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %3, align 8               ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.af
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i: ; preds = %bb.j
  %i.aq = load i64, ptr %i.af, align 8
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %common.resume

._crit_edge.i.i25.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.as, ptr %4, align 8
  store i64 8241988044499284083, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 8, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 0, ptr %i.au, align 8
  %i.av = invoke noundef zeroext i1 @_ZNK10ODDLParser4TexteqERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i25.i
  %i.aw = load ptr, ptr %4, align 8               ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.as
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.k
  %i.ay = load i64, ptr %i.as, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br i1 %i.av, label %bb.r, label %._crit_edge.i.i35.i

bb.l:                                             ; preds = %._crit_edge.i.i25.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %4, align 8               ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.as
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i: ; preds = %bb.l
  %i.bd = load i64, ptr %i.as, align 8
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %common.resume

._crit_edge.i.i35.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.bf, ptr %5, align 8
  store i64 7957695011165400421, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 8, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 0, ptr %i.bh, align 8
  %i.bi = invoke noundef zeroext i1 @_ZNK10ODDLParser4TexteqERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i35.i
  %i.bj = load ptr, ptr %5, align 8               ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.bf
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i: ; preds = %bb.m
  %i.bl = load i64, ptr %i.bf, align 8
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br i1 %i.bi, label %bb.s, label %._crit_edge.i.i45.i

bb.n:                                             ; preds = %._crit_edge.i.i35.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %i.bo = load ptr, ptr %5, align 8               ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.bf
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i: ; preds = %bb.n
  %i.bq = load i64, ptr %i.bf, align 8
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %common.resume

._crit_edge.i.i45.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.bs, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bs, ptr noundef nonnull align 1 dereferenceable(5) @.str.48, i64 5, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 5, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 21
  store i8 0, ptr %i.bu, align 1
  %i.bv = invoke noundef zeroext i1 @_ZNK10ODDLParser4TexteqERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i45.i
  %i.bw = load ptr, ptr %6, align 8               ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.bs
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i: ; preds = %bb.o
  %i.by = load i64, ptr %i.bs, align 8
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br i1 %i.bv, label %_ZN6Assimp7OpenGEXL12getColorTypeEPN10ODDLParser4TextE.exit, label %_ZN6Assimp7OpenGEXL12getColorTypeEPN10ODDLParser4TextE.exit.thread

bb.p:                                             ; preds = %._crit_edge.i.i45.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = load ptr, ptr %6, align 8               ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bs
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i: ; preds = %bb.p
  %i.cd = load i64, ptr %i.bs, align 8
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %common.resume

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef nonnull %8, i32 noundef 12, ptr noundef nonnull @.str.24, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %_ZN6Assimp7OpenGEXL12getColorTypeEPN10ODDLParser4TextE.exit.thread

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull %8, i32 noundef 12, ptr noundef nonnull @.str.25, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %_ZN6Assimp7OpenGEXL12getColorTypeEPN10ODDLParser4TextE.exit.thread

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull %8, i32 noundef 12, ptr noundef nonnull @.str.26, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %_ZN6Assimp7OpenGEXL12getColorTypeEPN10ODDLParser4TextE.exit.thread

_ZN6Assimp7OpenGEXL12getColorTypeEPN10ODDLParser4TextE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 1080
  %i.cr = load <2 x float>, ptr %8, align 8
  store <2 x float> %i.cr, ptr %i.cq, align 4
  %i.cs = load float, ptr %i.s, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 1088
  store float %i.cs, ptr %i.ct, align 4
  br label %_ZN6Assimp7OpenGEXL12getColorTypeEPN10ODDLParser4TextE.exit.thread

_ZN6Assimp7OpenGEXL12getColorTypeEPN10ODDLParser4TextE.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.i, %bb.h, %bb.r, %_ZN6Assimp7OpenGEXL12getColorTypeEPN10ODDLParser4TextE.exit, %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %.critedge

.critedge:                                        ; preds = %_ZN6Assimp7OpenGEXL12getColorTypeEPN10ODDLParser4TextE.exit.thread, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp7OpenGEX15OpenGEXImporter15handleParamNodeEPN10ODDLParser7DDLNodeEP7aiScene(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(776) %0, ptr noundef %1, ptr readnone captures(none) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.critedge, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.b, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.b, ptr noundef nonnull align 1 dereferenceable(6) @.str.23, i64 6, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 6, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 22
  store i8 0, ptr %i.d, align 2
  %i.e = invoke noundef ptr @_ZN10ODDLParser7DDLNode18findPropertyByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.f = load ptr, ptr %3, align 8                ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.b
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.b, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.j = icmp eq ptr %i.e, null
  br i1 %i.j, label %.critedge, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %3, align 8                ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.b
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.c
  %i.n = load i64, ptr %i.b, align 8
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %i.k

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = call noundef ptr @_ZNK10ODDLParser7DDLNode8getValueEv(ptr noundef nonnull align 8 dereferenceable(136) %1) ; 2 uses
  %.not22 = icmp eq ptr %i.r, null
  br i1 %.not22, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = call noundef float @_ZNK10ODDLParser5Value8getFloatEv(ptr noundef nonnull align 8 dereferenceable(32) %i.r)
  %i.t = load ptr, ptr %i.p, align 8
  %i.u = call noundef ptr @_ZNK10ODDLParser5Value9getStringEv(ptr noundef nonnull align 8 dereferenceable(32) %i.t)
  %i.v = call i32 @strncasecmp(ptr noundef nonnull @.str.28, ptr noundef %i.u, i64 noundef 3) #34
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.critedge.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.p, align 8
  %i.y = call noundef ptr @_ZNK10ODDLParser5Value9getStringEv(ptr noundef nonnull align 8 dereferenceable(32) %i.x)
  %i.z = call i32 @strncasecmp(ptr noundef nonnull @.str.29, ptr noundef %i.y, i64 noundef 4) #34
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.critedge.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %i.p, align 8
  %i.ac = call noundef ptr @_ZNK10ODDLParser5Value9getStringEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
  %i.ad = call i32 @strncasecmp(ptr noundef nonnull @.str.30, ptr noundef %i.ac, i64 noundef 3) #34
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.critedge.sink.split, label %.critedge

.critedge.sink.split:                             ; preds = %bb.h, %bb.g, %bb.f
  %.sink32 = phi i64 [ 1064, %bb.f ], [ 1068, %bb.g ], [ 1072, %bb.h ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sink32
  store float %i.s, ptr %i.ah, align 4
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d, %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp7OpenGEX15OpenGEXImporter17handleTextureNodeEPN10ODDLParser7DDLNodeEP7aiScene(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(776) %0, ptr noundef %1, ptr readnone captures(none) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %struct.aiString, align 4           ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.s, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.c, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.c, ptr noundef nonnull align 1 dereferenceable(6) @.str.23, i64 6, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 6, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 22
  store i8 0, ptr %i.e, align 2
  %i.f = invoke noundef ptr @_ZN10ODDLParser7DDLNode18findPropertyByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.k       ; 2 uses

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.g = load ptr, ptr %3, align 8                ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.c
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.c, align 8
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.s, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 8 uses
  %i.l = load ptr, ptr %i.k, align 8
  %.not22 = icmp eq ptr %i.l, null
  br i1 %.not22, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call noundef ptr @_ZNK10ODDLParser7DDLNode8getValueEv(ptr noundef nonnull align 8 dereferenceable(136) %1) ; 2 uses
  %.not23 = icmp eq ptr %i.m, null
  br i1 %.not23, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %4, i8 0, i64 1028, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.n = call noundef ptr @_ZNK10ODDLParser5Value9getStringEv(ptr noundef nonnull align 8 dereferenceable(32) %i.m) ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.o, ptr %5, align 8
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %.noexc28, label %bb.f

.noexc28:                                         ; preds = %bb.e
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.49) #30
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.q = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.q, ptr %i.a, align 8
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %.noexc.i27, label %._crit_edge.i.i26

.noexc.i27:                                       ; preds = %bb.f
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.s, ptr %5, align 8
  %i.t = load i64, ptr %i.a, align 8
  store i64 %i.t, ptr %i.o, align 8
  br label %._crit_edge.i.i26

._crit_edge.i.i26:                                ; preds = %.noexc.i27, %bb.f
  %i.u = phi ptr [ %i.s, %.noexc.i27 ], [ %i.o, %bb.f ] ; 2 uses
  switch i64 %i.q, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i26
  %i.v = load i8, ptr %i.n, align 1
  store i8 %i.v, ptr %i.u, align 1
  br label %bb.i

end_hunk_0
