inline.NumInlined: 3761
inline.NumDeleted: 1782
begin_hunk_0_@_ZN6Assimp15BlenderImporter11ConvertNodeERKNS_7Blender5SceneEPKNS1_6ObjectERNS1_14ConversionDataERK12aiMatrix4x4tIfE:bb.a
  %i.aq = load i64, ptr %i.m, align 8
  store i64 %i.aq, ptr %i.am, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc87, %bb.i
  %i.ar = phi ptr [ %i.ap, %.noexc87 ], [ %i.am, %bb.i ] ; 2 uses
  switch i64 %i.an, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.as = load i8, ptr %i.al, align 1
  store i8 %i.as, ptr %i.ar, align 1
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr nonnull align 1 %i.al, i64 %i.an, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i
  %i.at = load i64, ptr %i.m, align 8             ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.at, ptr %i.au, align 8
  %i.av = load ptr, ptr %7, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.at
  store i8 0, ptr %i.aw, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #25
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  store ptr %i.u, ptr %6, align 8
  %i.ax = load ptr, ptr %7, align 8               ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.am
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.az = load i64, ptr %i.am, align 8
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 1320 ; 4 uses
  %i.bc = load ptr, ptr %i.bb, align 8            ; 4 uses
  %.not174 = icmp eq ptr %i.bc, null
  br i1 %.not174, label %_ZN12aiMatrix4x4tIfEixEj.exit.3.3, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 1064
  %i.be = load i32, ptr %i.bd, align 8
  switch i32 %i.be, label %_ZN12aiMatrix4x4tIfEixEj.exit.3.3 [
    i32 22, label %bb.bb
    i32 1, label %bb.r
    i32 10, label %bb.y
    i32 11, label %bb.ai
    i32 2, label %bb.ar
    i32 3, label %bb.at
    i32 4, label %bb.av
    i32 5, label %bb.ax
    i32 21, label %bb.az
  ]

bb.o:                                             ; preds = %._crit_edge
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.p:                                             ; preds = %.noexc.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

bb.q:                                             ; preds = %bb.l
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %7, align 8               ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.am
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.q
  %i.bk = load i64, ptr %i.am, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bg, %bb.p ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %i.bh, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 1144) #27
  br label %bb.bp

bb.r:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = load ptr, ptr %i.bm, align 8
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 3                 ; 3 uses
  invoke void @_ZN6Assimp15BlenderImporter15CheckActualTypeEPKNS_7Blender8ElemBaseEPKc(ptr noundef nonnull %i.bc, ptr noundef nonnull @.str.90)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.bu = load ptr, ptr %i.bb, align 8
  invoke void @_ZN6Assimp15BlenderImporter11ConvertMeshERKNS_7Blender5SceneEPKNS1_6ObjectEPKNS1_4MeshERNS1_14ConversionDataERNS1_9TempArrayISt6vector6aiMeshEE(ptr nonnull align 8 poison, ptr nonnull align 8 poison, ptr nonnull poison, ptr noundef %i.bu, ptr noundef nonnull align 8 dereferenceable(336) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.bv = load ptr, ptr %i.bn, align 8
  %i.bw = load ptr, ptr %i.bm, align 8
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 3                 ; 2 uses
  %i.cb = icmp ugt i64 %i.ca, %i.bt
  br i1 %i.cb, label %bb.u, label %_ZN12aiMatrix4x4tIfEixEj.exit.3.3

bb.u:                                             ; preds = %bb.t
  %i.cc = sub nuw nsw i64 %i.ca, %i.bt            ; 2 uses
  %i.cd = trunc i64 %i.cc to i32                  ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.u, i64 1120 ; 2 uses
  store i32 %i.cd, ptr %i.ce, align 8
  %i.cf = shl nsw i64 %i.cc, 2
  %i.cg = and i64 %i.cf, 17179869180
  %i.ch = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cg) #26
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %i.u, i64 1128 ; 2 uses
  store ptr %i.ch, ptr %i.ci, align 8
  %.not190 = icmp eq i32 %i.cd, 0
  br i1 %.not190, label %_ZN12aiMatrix4x4tIfEixEj.exit.3.3, label %.lr.ph180

.lr.ph180:                                        ; preds = %bb.v
  %i.cj = trunc i64 %i.bt to i32
  br label %bb.x

bb.w:                                             ; preds = %bb.u, %bb.s, %bb.r
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.x:                                             ; preds = %.lr.ph180, %bb.x
  %indvars.iv = phi i64 [ 0, %.lr.ph180 ], [ %indvars.iv.next, %bb.x ] ; 3 uses
  %i.cl = trunc nuw i64 %indvars.iv to i32
  %i.cm = add i32 %i.cl, %i.cj
  %i.cn = load ptr, ptr %i.ci, align 8
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv
  store i32 %i.cm, ptr %i.co, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cp = load i32, ptr %i.ce, align 8
  %i.cq = zext i32 %i.cp to i64
  %i.cr = icmp samesign ult i64 %indvars.iv.next, %i.cq
  br i1 %i.cr, label %bb.x, label %_ZN12aiMatrix4x4tIfEixEj.exit.3.3, !llvm.loop !82

bb.y:                                             ; preds = %bb.n
  invoke void @_ZN6Assimp15BlenderImporter15CheckActualTypeEPKNS_7Blender8ElemBaseEPKc(ptr noundef nonnull %i.bc, ptr noundef nonnull @.str.91)
          to label %bb.z unwind label %bb.ag

bb.z:                                             ; preds = %bb.y
  %i.cs = load ptr, ptr %i.bb, align 8
  %i.ct = invoke noundef ptr @_ZN6Assimp15BlenderImporter12ConvertLightERKNS_7Blender5SceneEPKNS1_6ObjectEPKNS1_4LampERNS1_14ConversionDataE(ptr nonnull align 8 poison, ptr nonnull align 8 poison, ptr noundef nonnull %2, ptr noundef %i.cs, ptr nonnull align 8 poison)
          to label %bb.aa unwind label %bb.ah     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 4 uses
  %i.cw = load ptr, ptr %i.cv, align 8            ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8
  %.not.i91 = icmp eq ptr %i.cw, %i.cy
  br i1 %.not.i91, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.ct, ptr %i.cw, align 8
  %i.cz = load ptr, ptr %i.cv, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.da, ptr %i.cv, align 8
  br label %_ZN12aiMatrix4x4tIfEixEj.exit.3.3

bb.ac:                                            ; preds = %bb.aa
  %i.db = load ptr, ptr %i.cu, align 8            ; 4 uses
  %i.dc = ptrtoint ptr %i.cw to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd                    ; 6 uses
  %i.df = icmp eq i64 %i.de, 9223372036854775800
  br i1 %i.df, label %bb.ad, label %_ZNKSt6vectorIP7aiLightSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #28
          to label %.noexc92 unwind label %bb.ah

.noexc92:                                         ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIP7aiLightSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ac
  %i.dg = ashr exact i64 %i.de, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dg, i64 1)
  %i.dh = add nsw i64 %.sroa.speculated.i.i.i, %i.dg ; 2 uses
  %10 = icmp ult i64 %i.dh, %i.dg
  %i.di = call i64 @llvm.umin.i64(i64 %i.dh, i64 1152921504606846975)
  %11 = select i1 %10, i64 1152921504606846975, i64 %i.di ; 3 uses
  %.not.i.i.i = icmp ne i64 %11, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dj = shl nuw nsw i64 %11, 3
  %i.dk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #26
          to label %.noexc93 unwind label %bb.ah  ; 4 uses

.noexc93:                                         ; preds = %_ZNKSt6vectorIP7aiLightSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 %i.de ; 2 uses
  store ptr %i.ct, ptr %i.dl, align 8
  %i.dm = icmp sgt i64 %i.de, 0
  br i1 %i.dm, label %bb.ae, label %_ZNSt6vectorIP7aiLightSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.ae:                                            ; preds = %.noexc93
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dk, ptr align 8 %i.db, i64 %i.de, i1 false)
  br label %_ZNSt6vectorIP7aiLightSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP7aiLightSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.ae, %.noexc93
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %.not.i17.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP7aiLightSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIP7aiLightSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef %i.de) #27
  br label %_ZNSt6vectorIP7aiLightSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP7aiLightSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.af, %_ZNSt6vectorIP7aiLightSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.dk, ptr %i.cu, align 8
  store ptr %i.dn, ptr %i.cv, align 8
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %11
  store ptr %i.do, ptr %i.cx, align 8
  br label %_ZN12aiMatrix4x4tIfEixEj.exit.3.3

bb.ag:                                            ; preds = %.noexc120, %bb.bc, %bb.bb, %.noexc116, %bb.ba, %bb.az, %.noexc112, %bb.ay, %bb.ax, %.noexc108, %bb.aw, %bb.av, %.noexc104, %bb.au, %bb.at, %.noexc101, %bb.as, %bb.ar, %bb.ai, %bb.y
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.ah:                                            ; preds = %_ZNKSt6vectorIP7aiLightSaIS1_EE12_M_check_lenEmPKc.exit.i.i, %bb.ad, %bb.z
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.ai:                                            ; preds = %bb.n
  invoke void @_ZN6Assimp15BlenderImporter15CheckActualTypeEPKNS_7Blender8ElemBaseEPKc(ptr noundef nonnull %i.bc, ptr noundef nonnull @.str.92)
          to label %bb.aj unwind label %bb.ag

bb.aj:                                            ; preds = %bb.ai
  %i.dr = load ptr, ptr %i.bb, align 8
  %i.ds = invoke noundef ptr @_ZN6Assimp15BlenderImporter13ConvertCameraERKNS_7Blender5SceneEPKNS1_6ObjectEPKNS1_6CameraERNS1_14ConversionDataE(ptr nonnull align 8 poison, ptr nonnull align 8 poison, ptr noundef nonnull %2, ptr noundef %i.dr, ptr nonnull align 8 poison)
          to label %bb.ak unwind label %bb.aq     ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 4 uses
  %i.dv = load ptr, ptr %i.du, align 8            ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8
  %.not.i94 = icmp eq ptr %i.dv, %i.dx
  br i1 %.not.i94, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store ptr %i.ds, ptr %i.dv, align 8
  %i.dy = load ptr, ptr %i.du, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %i.dz, ptr %i.du, align 8
  br label %_ZN12aiMatrix4x4tIfEixEj.exit.3.3

bb.am:                                            ; preds = %bb.ak
  %i.ea = load ptr, ptr %i.dt, align 8            ; 4 uses
  %i.eb = ptrtoint ptr %i.dv to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec                    ; 6 uses
  %i.ee = icmp eq i64 %i.ed, 9223372036854775800
  br i1 %i.ee, label %bb.an, label %_ZNKSt6vectorIP8aiCameraSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.an:                                            ; preds = %bb.am
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #28
          to label %.noexc98 unwind label %bb.aq

.noexc98:                                         ; preds = %bb.an
  unreachable

_ZNKSt6vectorIP8aiCameraSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.am
  %i.ef = ashr exact i64 %i.ed, 3                 ; 3 uses
  %.sroa.speculated.i.i.i95 = call i64 @llvm.umax.i64(i64 %i.ef, i64 1)
  %i.eg = add nsw i64 %.sroa.speculated.i.i.i95, %i.ef ; 2 uses
  %12 = icmp ult i64 %i.eg, %i.ef
  %i.eh = call i64 @llvm.umin.i64(i64 %i.eg, i64 1152921504606846975)
  %13 = select i1 %12, i64 1152921504606846975, i64 %i.eh ; 3 uses
  %.not.i.i.i96 = icmp ne i64 %13, 0
  call void @llvm.assume(i1 %.not.i.i.i96)
  %i.ei = shl nuw nsw i64 %13, 3
  %i.ej = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ei) #26
          to label %.noexc99 unwind label %bb.aq  ; 4 uses

.noexc99:                                         ; preds = %_ZNKSt6vectorIP8aiCameraSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 %i.ed ; 2 uses
  store ptr %i.ds, ptr %i.ek, align 8
  %i.el = icmp sgt i64 %i.ed, 0
  br i1 %i.el, label %bb.ao, label %_ZNSt6vectorIP8aiCameraSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.ao:                                            ; preds = %.noexc99
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ej, ptr align 8 %i.ea, i64 %i.ed, i1 false)
  br label %_ZNSt6vectorIP8aiCameraSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP8aiCameraSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.ao, %.noexc99
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %.not.i17.i.i97 = icmp eq ptr %i.ea, null
  br i1 %.not.i17.i.i97, label %_ZNSt6vectorIP8aiCameraSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIP8aiCameraSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef %i.ed) #27
  br label %_ZNSt6vectorIP8aiCameraSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP8aiCameraSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ap, %_ZNSt6vectorIP8aiCameraSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.ej, ptr %i.dt, align 8
  store ptr %i.em, ptr %i.du, align 8
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %13
  store ptr %i.en, ptr %i.dw, align 8
  br label %_ZN12aiMatrix4x4tIfEixEj.exit.3.3

bb.aq:                                            ; preds = %_ZNKSt6vectorIP8aiCameraSaIS1_EE12_M_check_lenEmPKc.exit.i.i, %bb.an, %bb.aj
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.ar:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr @.str.93, ptr %i.l, align 8
  %i.ep = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc100 unwind label %bb.ag

.noexc100:                                        ; preds = %bb.ar
  br i1 %i.ep, label %_ZN6Assimp15BlenderImporter22NotSupportedObjectTypeEPKNS_7Blender6ObjectEPKc.exit, label %bb.as

bb.as:                                            ; preds = %.noexc100
  %i.eq = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc101 unwind label %bb.ag

.noexc101:                                        ; preds = %bb.as
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #25
  store ptr @.str, ptr %i.k, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcRA9_S2_RA1024_S2_RA27_S2_RS3_RA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.eq, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 1 dereferenceable(9) @.str.76, ptr noundef nonnull align 1 dereferenceable(1024) %i.er, ptr noundef nonnull align 1 dereferenceable(27) @.str.77, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 1 dereferenceable(12) @.str.78)
          to label %.noexc102 unwind label %bb.ag

.noexc102:                                        ; preds = %.noexc101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #25
  br label %_ZN6Assimp15BlenderImporter22NotSupportedObjectTypeEPKNS_7Blender6ObjectEPKc.exit

_ZN6Assimp15BlenderImporter22NotSupportedObjectTypeEPKNS_7Blender6ObjectEPKc.exit: ; preds = %.noexc100, %.noexc102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_ZN12aiMatrix4x4tIfEixEj.exit.3.3

bb.at:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr @.str.94, ptr %i.j, align 8
  %i.es = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc103 unwind label %bb.ag

.noexc103:                                        ; preds = %bb.at
  br i1 %i.es, label %_ZN6Assimp15BlenderImporter22NotSupportedObjectTypeEPKNS_7Blender6ObjectEPKc.exit106, label %bb.au

bb.au:                                            ; preds = %.noexc103
  %i.et = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc104 unwind label %bb.ag

.noexc104:                                        ; preds = %bb.au
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  store ptr @.str, ptr %i.i, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcRA9_S2_RA1024_S2_RA27_S2_RS3_RA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.et, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 1 dereferenceable(9) @.str.76, ptr noundef nonnull align 1 dereferenceable(1024) %i.eu, ptr noundef nonnull align 1 dereferenceable(27) @.str.77, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 1 dereferenceable(12) @.str.78)
          to label %.noexc105 unwind label %bb.ag

.noexc105:                                        ; preds = %.noexc104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  br label %_ZN6Assimp15BlenderImporter22NotSupportedObjectTypeEPKNS_7Blender6ObjectEPKc.exit106

_ZN6Assimp15BlenderImporter22NotSupportedObjectTypeEPKNS_7Blender6ObjectEPKc.exit106: ; preds = %.noexc103, %.noexc105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_ZN12aiMatrix4x4tIfEixEj.exit.3.3

bb.av:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @.str.95, ptr %i.h, align 8
  %i.ev = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc107 unwind label %bb.ag

.noexc107:                                        ; preds = %bb.av
  br i1 %i.ev, label %_ZN6Assimp15BlenderImporter22NotSupportedObjectTypeEPKNS_7Blender6ObjectEPKc.exit110, label %bb.aw

bb.aw:                                            ; preds = %.noexc107
  %i.ew = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc108 unwind label %bb.ag

.noexc108:                                        ; preds = %bb.aw
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  store ptr @.str, ptr %i.g, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcRA9_S2_RA1024_S2_RA27_S2_RS3_RA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ew, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(9) @.str.76, ptr noundef nonnull align 1 dereferenceable(1024) %i.ex, ptr noundef nonnull align 1 dereferenceable(27) @.str.77, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 1 dereferenceable(12) @.str.78)
          to label %.noexc109 unwind label %bb.ag

.noexc109:                                        ; preds = %.noexc108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  br label %_ZN6Assimp15BlenderImporter22NotSupportedObjectTypeEPKNS_7Blender6ObjectEPKc.exit110

_ZN6Assimp15BlenderImporter22NotSupportedObjectTypeEPKNS_7Blender6ObjectEPKc.exit110: ; preds = %.noexc107, %.noexc109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_ZN12aiMatrix4x4tIfEixEj.exit.3.3

bb.ax:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @.str.96, ptr %i.f, align 8
  %i.ey = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc111 unwind label %bb.ag

.noexc111:                                        ; preds = %bb.ax
  br i1 %i.ey, label %_ZN6Assimp15BlenderImporter22NotSupportedObjectTypeEPKNS_7Blender6ObjectEPKc.exit114, label %bb.ay

bb.ay:                                            ; preds = %.noexc111
  %i.ez = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc112 unwind label %bb.ag

.noexc112:                                        ; preds = %bb.ay
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store ptr @.str, ptr %i.e, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcRA9_S2_RA1024_S2_RA27_S2_RS3_RA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ez, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(9) @.str.76, ptr noundef nonnull align 1 dereferenceable(1024) %i.fa, ptr noundef nonnull align 1 dereferenceable(27) @.str.77, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 1 dereferenceable(12) @.str.78)
          to label %.noexc113 unwind label %bb.ag

.noexc113:                                        ; preds = %.noexc112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %_ZN6Assimp15BlenderImporter22NotSupportedObjectTypeEPKNS_7Blender6ObjectEPKc.exit114

_ZN6Assimp15BlenderImporter22NotSupportedObjectTypeEPKNS_7Blender6ObjectEPKc.exit114: ; preds = %.noexc111, %.noexc113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_ZN12aiMatrix4x4tIfEixEj.exit.3.3

bb.az:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str.97, ptr %i.d, align 8
  %i.fb = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc115 unwind label %bb.ag

.noexc115:                                        ; preds = %bb.az
  br i1 %i.fb, label %_ZN6Assimp15BlenderImporter22NotSupportedObjectTypeEPKNS_7Blender6ObjectEPKc.exit118, label %bb.ba

bb.ba:                                            ; preds = %.noexc115
  %i.fc = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc116 unwind label %bb.ag

.noexc116:                                        ; preds = %bb.ba
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store ptr @.str, ptr %i.c, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcRA9_S2_RA1024_S2_RA27_S2_RS3_RA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.fc, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(9) @.str.76, ptr noundef nonnull align 1 dereferenceable(1024) %i.fd, ptr noundef nonnull align 1 dereferenceable(27) @.str.77, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 1 dereferenceable(12) @.str.78)
          to label %.noexc117 unwind label %bb.ag

.noexc117:                                        ; preds = %.noexc116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %_ZN6Assimp15BlenderImporter22NotSupportedObjectTypeEPKNS_7Blender6ObjectEPKc.exit118

_ZN6Assimp15BlenderImporter22NotSupportedObjectTypeEPKNS_7Blender6ObjectEPKc.exit118: ; preds = %.noexc115, %.noexc117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_ZN12aiMatrix4x4tIfEixEj.exit.3.3

bb.bb:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.98, ptr %i.b, align 8
  %i.fe = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc119 unwind label %bb.ag

.noexc119:                                        ; preds = %bb.bb
  br i1 %i.fe, label %_ZN6Assimp15BlenderImporter22NotSupportedObjectTypeEPKNS_7Blender6ObjectEPKc.exit122, label %bb.bc

bb.bc:                                            ; preds = %.noexc119
  %i.ff = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc120 unwind label %bb.ag

.noexc120:                                        ; preds = %bb.bc
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr @.str, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcRA9_S2_RA1024_S2_RA27_S2_RS3_RA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ff, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(9) @.str.76, ptr noundef nonnull align 1 dereferenceable(1024) %i.fg, ptr noundef nonnull align 1 dereferenceable(27) @.str.77, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(12) @.str.78)
          to label %.noexc121 unwind label %bb.ag

.noexc121:                                        ; preds = %.noexc120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN6Assimp15BlenderImporter22NotSupportedObjectTypeEPKNS_7Blender6ObjectEPKc.exit122

_ZN6Assimp15BlenderImporter22NotSupportedObjectTypeEPKNS_7Blender6ObjectEPKc.exit122: ; preds = %.noexc119, %.noexc121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN12aiMatrix4x4tIfEixEj.exit.3.3

_ZN12aiMatrix4x4tIfEixEj.exit.3.3:                ; preds = %bb.x, %bb.v, %bb.al, %_ZNSt6vectorIP8aiCameraSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.ab, %_ZNSt6vectorIP7aiLightSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %_ZN6Assimp15BlenderImporter22NotSupportedObjectTypeEPKNS_7Blender6ObjectEPKc.exit122, %_ZN6Assimp15BlenderImporter22NotSupportedObjectTypeEPKNS_7Blender6ObjectEPKc.exit118, %_ZN6Assimp15BlenderImporter22NotSupportedObjectTypeEPKNS_7Blender6ObjectEPKc.exit114, %_ZN6Assimp15BlenderImporter22NotSupportedObjectTypeEPKNS_7Blender6ObjectEPKc.exit110, %_ZN6Assimp15BlenderImporter22NotSupportedObjectTypeEPKNS_7Blender6ObjectEPKc.exit106, %_ZN6Assimp15BlenderImporter22NotSupportedObjectTypeEPKNS_7Blender6ObjectEPKc.exit, %bb.t, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fh = getelementptr inbounds nuw i8, ptr %i.u, i64 1028 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 1068
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 1076
  %i.fk = getelementptr inbounds nuw i8, ptr %i.u, i64 1060
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 1084
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 1092
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 1100
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 1108
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 1116
  %i.fq = load <2 x float>, ptr %i.fi, align 4
  %i.fr = load <2 x float>, ptr %i.fl, align 4
  %i.fs = load <2 x float>, ptr %i.fn, align 4
  %i.ft = load <2 x float>, ptr %i.fp, align 4
  %i.fu = shufflevector <2 x float> %i.fq, <2 x float> %i.fr, <8 x i32> <i32 0, i32 2, i32 poison, i32 poison, i32 1, i32 3, i32 poison, i32 poison>
  %i.fv = shufflevector <2 x float> %i.fs, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fw = shufflevector <8 x float> %i.fu, <8 x float> %i.fv, <8 x i32> <i32 0, i32 1, i32 8, i32 poison, i32 4, i32 5, i32 9, i32 poison>
  %i.fx = shufflevector <2 x float> %i.ft, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fy = shufflevector <8 x float> %i.fw, <8 x float> %i.fx, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 4, i32 5, i32 6, i32 9>
  store <8 x float> %i.fy, ptr %i.fh, align 4
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 1124
  %i.ga = load <2 x float>, ptr %i.fj, align 4
  %i.gb = load <2 x float>, ptr %i.fm, align 4
  %i.gc = load <2 x float>, ptr %i.fo, align 4
end_hunk_0
begin_hunk_1_@_ZNSt12__shared_ptrIN6Assimp7Blender4BaseELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIPKN6Assimp7Blender6ObjectESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i.i, align 8
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 512) #27
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.j = icmp ult ptr %.06.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i, !llvm.loop !44

_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load ptr, ptr %0, align 8
  br label %_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i

_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i: ; preds = %_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i, %bb.b
  %i.k = phi ptr [ %.pre.i, %_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i ], [ %i.a, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #27
  br label %_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EED2Ev.exit

_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EED2Ev.exit: ; preds = %bb.a, %_ZNSt11_Deque_baseIPKN6Assimp7Blender6ObjectESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp15BlenderImporter14BuildMaterialsERNS_7Blender14ConversionDataE(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(336) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.aiString, align 4           ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %3 = alloca %struct.aiString, align 4           ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %struct.aiColor3D, align 8          ; 11 uses
  %6 = alloca %struct.aiColor3D, align 8          ; 5 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3
  %i.r = icmp ne ptr %i.k, null
  %.neg.i.i = sext i1 %i.r to i64
  %i.s = add nsw i64 %i.q, %.neg.i.i
  %i.t = shl nsw i64 %i.s, 5
  %i.u = load ptr, ptr %i.h, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 4
  %i.ab = add nsw i64 %i.t, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = load ptr, ptr %i.i, align 8
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 4
  %i.aj = add nsw i64 %i.ab, %i.ai                ; 4 uses
  %i.ak = icmp ugt i64 %i.aj, 1152921504606846975
  br i1 %i.ak, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load ptr, ptr %i.g, align 8             ; 4 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 2 uses
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = icmp ult i64 %i.ar, %i.aj
  br i1 %i.as, label %_ZNSt12_Vector_baseIP10aiMaterialSaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIP10aiMaterialSaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIP10aiMaterialSaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.ap                    ; 3 uses
  %i.ax = shl nuw nsw i64 %i.aj, 3
  %i.ay = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #26 ; 4 uses
  %i.az = icmp sgt i64 %i.aw, 0
  br i1 %i.az, label %bb.d, label %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIP10aiMaterialSaIS1_EE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr align 8 %i.an, i64 %i.aw, i1 false)
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i

_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %bb.d, %_ZNSt12_Vector_baseIP10aiMaterialSaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.an, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIP10aiMaterialSaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.aq) #27
  br label %_ZNSt12_Vector_baseIP10aiMaterialSaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIP10aiMaterialSaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.e, %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.ay, ptr %i.g, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store ptr %i.ba, ptr %i.at, align 8
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aj
  store ptr %i.bb, ptr %i.al, align 8
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE7reserveEm.exit

_ZNSt6vectorIP10aiMaterialSaIS1_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIP10aiMaterialSaIS1_EE13_M_deallocateEPS1_m.exit.i
  tail call void @_ZN6Assimp15BlenderImporter20BuildDefaultMaterialERNS_7Blender14ConversionDataE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(336) %1)
  %i.bc = load ptr, ptr %i.i, align 8, !noalias !83 ; 2 uses
  %i.bd = load ptr, ptr %i.h, align 8, !noalias !86 ; 2 uses
  %.not7984 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not7984, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIP10aiMaterialSaIS1_EE7reserveEm.exit
  %i.be = load ptr, ptr %i.l, align 8, !noalias !83
  %i.bf = load ptr, ptr %i.ac, align 8, !noalias !83
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 252
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZNSt15_Deque_iteratorISt10shared_ptrIN6Assimp7Blender8MaterialEERS4_PS4_EppEv.exit
  %.sroa.14.087 = phi ptr [ %i.be, %.preheader.lr.ph ], [ %.sroa.14.1, %_ZNSt15_Deque_iteratorISt10shared_ptrIN6Assimp7Blender8MaterialEERS4_PS4_EppEv.exit ] ; 2 uses
  %.sroa.11.086 = phi ptr [ %i.bf, %.preheader.lr.ph ], [ %.sroa.11.1, %_ZNSt15_Deque_iteratorISt10shared_ptrIN6Assimp7Blender8MaterialEERS4_PS4_EppEv.exit ] ; 2 uses
  %.sroa.076.085 = phi ptr [ %i.bc, %.preheader.lr.ph ], [ %.sroa.076.1, %_ZNSt15_Deque_iteratorISt10shared_ptrIN6Assimp7Blender8MaterialEERS4_PS4_EppEv.exit ] ; 12 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %i.bg, i8 0, i64 76, i1 false)
  %i.bq = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #26 ; 15 uses
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.bq)
          to label %bb.f unwind label %bb.s

._crit_edge:                                      ; preds = %_ZNSt15_Deque_iteratorISt10shared_ptrIN6Assimp7Blender8MaterialEERS4_PS4_EppEv.exit, %_ZNSt6vectorIP10aiMaterialSaIS1_EE7reserveEm.exit
  ret void

bb.f:                                             ; preds = %.preheader
  %i.br = load ptr, ptr %i.bh, align 8            ; 3 uses
  %i.bs = load ptr, ptr %i.al, align 8
  %.not.i = icmp eq ptr %i.br, %i.bs
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.bq, ptr %i.br, align 8
  %i.bt = load ptr, ptr %i.bh, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.bu, ptr %i.bh, align 8
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit

bb.h:                                             ; preds = %bb.f
  %i.bv = load ptr, ptr %i.g, align 8             ; 4 uses
  %i.bw = ptrtoint ptr %i.br to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx                    ; 6 uses
  %i.bz = icmp eq i64 %i.by, 9223372036854775800
  br i1 %i.bz, label %bb.i, label %_ZNKSt6vectorIP10aiMaterialSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #28
  unreachable

_ZNKSt6vectorIP10aiMaterialSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.ca = ashr exact i64 %i.by, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ca, i64 1)
  %i.cb = add nsw i64 %.sroa.speculated.i.i.i, %i.ca ; 2 uses
  %7 = icmp ult i64 %i.cb, %i.ca
  %i.cc = call i64 @llvm.umin.i64(i64 %i.cb, i64 1152921504606846975)
  %8 = select i1 %7, i64 1152921504606846975, i64 %i.cc ; 3 uses
  %.not.i.i.i = icmp ne i64 %8, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cd = shl nuw nsw i64 %8, 3
  %i.ce = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #26 ; 4 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.by ; 2 uses
  store ptr %i.bq, ptr %i.cf, align 8
  %i.cg = icmp sgt i64 %i.by, 0
  br i1 %i.cg, label %bb.j, label %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIP10aiMaterialSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ce, ptr align 8 %i.bv, i64 %i.by, i1 false)
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.j, %_ZNKSt6vectorIP10aiMaterialSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.not.i17.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP10aiMaterialSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.by) #27
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP10aiMaterialSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIP10aiMaterialSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.ce, ptr %i.g, align 8
  store ptr %i.ch, ptr %i.bh, align 8
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %8
  store ptr %i.ci, ptr %i.al, align 8
  br label %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.g, %_ZNSt6vectorIP10aiMaterialSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.cj = load ptr, ptr %.sroa.076.085, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 34 ; 3 uses
  store ptr %i.bi, ptr %4, align 8
  %i.cl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ck) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i64 %i.cl, ptr %i.d, align 8
  %i.cm = icmp ugt i64 %i.cl, 15
  br i1 %i.cm, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit
  %i.cn = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.cn, ptr %4, align 8
  %i.co = load i64, ptr %i.d, align 8
  store i64 %i.co, ptr %i.bi, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit
  %i.cp = phi ptr [ %i.cn, %.noexc.i ], [ %i.bi, %_ZNSt6vectorIP10aiMaterialSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  switch i64 %i.cl, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.cq = load i8, ptr %i.ck, align 1
  store i8 %i.cq, ptr %i.cp, align 1
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cp, ptr nonnull align 1 %i.ck, i64 %i.cl, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i
  %i.cr = load i64, ptr %i.d, align 8             ; 2 uses
  store i64 %i.cr, ptr %i.bj, align 8
  %i.cs = load ptr, ptr %4, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cr
  store i8 0, ptr %i.ct, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.cu = load i64, ptr %i.bj, align 8            ; 3 uses
  %i.cv = trunc i64 %i.cu to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.bk, i8 0, i64 1024, i1 false)
  %i.cw = and i64 %i.cu, 4294966272
  %.not.i54 = icmp eq i64 %i.cw, 0
  %spec.select.i = select i1 %.not.i54, i32 %i.cv, i32 1023 ; 2 uses
  store i32 %spec.select.i, ptr %3, align 4
  %i.cx = load ptr, ptr %4, align 8               ; 3 uses
  %i.cy = zext i32 %spec.select.i to i64          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bk, ptr align 1 %i.cx, i64 %i.cy, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.cy
  store i8 0, ptr %i.cz, align 1
  %i.da = icmp eq ptr %i.cx, %i.bi
  br i1 %i.da, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.n
  %i.db = icmp ult i64 %i.cu, 16
  call void @llvm.assume(i1 %i.db)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.dc = load i64, ptr %i.bi, align 8
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.dd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.de = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull %3, ptr noundef nonnull @.str.64, i32 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.df = load ptr, ptr %.sroa.076.085, align 8   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1064
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 1072
  %i.di = load float, ptr %i.dh, align 8
  %i.dj = load <2 x float>, ptr %i.dg, align 8
  store <2 x float> %i.dj, ptr %5, align 8
  store float %i.di, ptr %i.bl, align 8
  %i.dk = load ptr, ptr %.sroa.076.085, align 8   ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1064
  %i.dm = load float, ptr %i.dl, align 8
  %i.dn = fcmp une float %i.dm, 0.000000e+00
  br i1 %i.dn, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 1068
  %i.dp = load float, ptr %i.do, align 4
  %i.dq = fcmp une float %i.dp, 0.000000e+00
  br i1 %i.dq, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 1072
  %i.ds = load float, ptr %i.dr, align 8
  %i.dt = fcmp une float %i.ds, 0.000000e+00
  br i1 %i.dt, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.du = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull %5, i32 noundef 12, ptr noundef nonnull @.str.65, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.dv = load ptr, ptr %.sroa.076.085, align 8   ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 1116
  %i.dx = load float, ptr %i.dw, align 4          ; 3 uses
  %i.dy = fcmp une float %i.dx, 0.000000e+00
  br i1 %i.dy, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 1064
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 1072
  %i.eb = load float, ptr %i.ea, align 8
  %i.ec = fmul float %i.dx, %i.eb
  %i.ed = load <2 x float>, ptr %i.dz, align 8
  %i.ee = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = fmul <2 x float> %i.ef, %i.ed
  store <2 x float> %i.eg, ptr %6, align 8
  store float %i.ec, ptr %i.bm, align 8
  %i.eh = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull %6, i32 noundef 12, ptr noundef nonnull @.str.66, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %.pre = load ptr, ptr %.sroa.076.085, align 8
  br label %bb.t

bb.s:                                             ; preds = %.preheader
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef 16) #27
  resume { ptr, i32 } %i.ei

bb.t:                                             ; preds = %bb.q, %bb.r, %bb.p
  %i.ej = phi ptr [ %i.dv, %bb.q ], [ %.pre, %bb.r ], [ %i.dk, %bb.p ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 1076
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 1084
  %i.em = load float, ptr %i.el, align 4
  %i.en = load <2 x float>, ptr %i.ek, align 4
  store <2 x float> %i.en, ptr %5, align 8
  store float %i.em, ptr %i.bl, align 8
  %i.eo = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull %5, i32 noundef 12, ptr noundef nonnull @.str.67, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.ep = load ptr, ptr %.sroa.076.085, align 8   ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 1088
  %i.er = load i16, ptr %i.eq, align 8            ; 2 uses
  %.not = icmp eq i16 %i.er, 0
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  %i.es = sitofp i16 %i.er to float
  store float %i.es, ptr %i.e, align 4
  %i.et = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull %i.e, i32 noundef 4, ptr noundef nonnull @.str.68, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %.pre90 = load ptr, ptr %.sroa.076.085, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.eu = phi ptr [ %.pre90, %bb.u ], [ %i.ep, %bb.t ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 1092
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 1100
  %i.ex = load float, ptr %i.ew, align 4
  %i.ey = load <2 x float>, ptr %i.ev, align 4
  store <2 x float> %i.ey, ptr %5, align 8
  store float %i.ex, ptr %i.bl, align 8
  %i.ez = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull %5, i32 noundef 12, ptr noundef nonnull @.str.69, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.fa = load ptr, ptr %.sroa.076.085, align 8   ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 1136
  %i.fc = load i32, ptr %i.fb, align 8
  %i.fd = and i32 %i.fc, 262144
  %.not53 = icmp eq i32 %i.fd, 0
  br i1 %.not53, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 1120
  %i.ff = load float, ptr %i.fe, align 8
  store float %i.ff, ptr %i.f, align 4
  %i.fg = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull %i.f, i32 noundef 4, ptr noundef nonnull @.str.70, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %.pre91 = load ptr, ptr %.sroa.076.085, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.fh = phi ptr [ %.pre91, %bb.w ], [ %i.fa, %bb.v ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 1104
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 1112
  %i.fk = load float, ptr %i.fj, align 8
  %i.fl = load <2 x float>, ptr %i.fi, align 8
  store <2 x float> %i.fl, ptr %5, align 8
  store float %i.fk, ptr %i.bl, align 8
  %i.fm = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull %5, i32 noundef 12, ptr noundef nonnull @.str.71, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %bb.aa

bb.y:                                             ; preds = %_ZN6Assimp15BlenderImporter14ResolveTextureEP10aiMaterialPKNS_7Blender8MaterialEPKNS3_4MTexERNS3_14ConversionDataE.exit
  %i.fn = load ptr, ptr %.sroa.076.085, align 8
  call void @_ZN6Assimp15BlenderImporter14AddBlendParamsEP10aiMaterialPKNS_7Blender8MaterialE(ptr nonnull align 8 poison, ptr noundef %i.bq, ptr noundef %i.fn)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.076.085, i64 16 ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %.sroa.11.086
  br i1 %i.fp, label %bb.z, label %_ZNSt15_Deque_iteratorISt10shared_ptrIN6Assimp7Blender8MaterialEERS4_PS4_EppEv.exit
end_hunk_1
begin_hunk_2_@_ZN6Assimp7Blender14ConversionDataD2Ev:bb.a
  %.pre.i22 = load ptr, ptr %i.ar, align 8
  br label %._crit_edge.i23

._crit_edge.i23:                                  ; preds = %._crit_edge.loopexit.i21, %_ZN6Assimp7Blender9TempArrayISt6vector7aiLightED2Ev.exit
  %i.av = phi ptr [ %.pre.i22, %._crit_edge.loopexit.i21 ], [ %i.as, %_ZN6Assimp7Blender9TempArrayISt6vector7aiLightED2Ev.exit ] ; 3 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i24, label %_ZN6Assimp7Blender9TempArrayISt6vector8aiCameraED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i23
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ba) #27
  br label %_ZN6Assimp7Blender9TempArrayISt6vector8aiCameraED2Ev.exit

.lr.ph.i18:                                       ; preds = %_ZN6Assimp7Blender9TempArrayISt6vector7aiLightED2Ev.exit, %bb.n
  %.sroa.04.08.i19 = phi ptr [ %i.bd, %bb.n ], [ %i.as, %_ZN6Assimp7Blender9TempArrayISt6vector7aiLightED2Ev.exit ] ; 2 uses
  %i.bb = load ptr, ptr %.sroa.04.08.i19, align 8 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i18
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 1084) #27
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i18
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i19, i64 8 ; 2 uses
  %.not.i20 = icmp eq ptr %i.bd, %i.au
  br i1 %.not.i20, label %._crit_edge.loopexit.i21, label %.lr.ph.i18

_ZN6Assimp7Blender9TempArrayISt6vector8aiCameraED2Ev.exit: ; preds = %._crit_edge.i23, %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8            ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %.not7.i25 = icmp eq ptr %i.bf, %i.bh
  br i1 %.not7.i25, label %._crit_edge.i31, label %.lr.ph.i26

._crit_edge.loopexit.i29:                         ; preds = %bb.q
  %.pre.i30 = load ptr, ptr %i.be, align 8
  br label %._crit_edge.i31

._crit_edge.i31:                                  ; preds = %._crit_edge.loopexit.i29, %_ZN6Assimp7Blender9TempArrayISt6vector8aiCameraED2Ev.exit
  %i.bi = phi ptr [ %.pre.i30, %._crit_edge.loopexit.i29 ], [ %i.bf, %_ZN6Assimp7Blender9TempArrayISt6vector8aiCameraED2Ev.exit ] ; 3 uses
  %.not.i.i.i.i32 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i32, label %_ZN6Assimp7Blender9TempArrayISt6vector6aiMeshED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i31
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #27
  br label %_ZN6Assimp7Blender9TempArrayISt6vector6aiMeshED2Ev.exit

.lr.ph.i26:                                       ; preds = %_ZN6Assimp7Blender9TempArrayISt6vector8aiCameraED2Ev.exit, %bb.q
  %.sroa.04.08.i27 = phi ptr [ %i.bq, %bb.q ], [ %i.bf, %_ZN6Assimp7Blender9TempArrayISt6vector8aiCameraED2Ev.exit ] ; 2 uses
  %i.bo = load ptr, ptr %.sroa.04.08.i27, align 8 ; 3 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i26
  tail call void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %i.bo) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef 1320) #27
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i26
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i27, i64 8 ; 2 uses
  %.not.i28 = icmp eq ptr %i.bq, %i.bh
  br i1 %.not.i28, label %._crit_edge.loopexit.i29, label %.lr.ph.i26

_ZN6Assimp7Blender9TempArrayISt6vector6aiMeshED2Ev.exit: ; preds = %._crit_edge.i31, %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  invoke void @_ZNSt8_Rb_treeIPKN6Assimp7Blender6ObjectES4_St9_IdentityIS4_ENS1_13ObjectCompareESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.bs)
          to label %_ZNSt3setIPKN6Assimp7Blender6ObjectENS1_13ObjectCompareESaIS4_EED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %_ZN6Assimp7Blender9TempArrayISt6vector6aiMeshED2Ev.exit
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  tail call void @__clang_call_terminate(ptr %i.bu) #29
  unreachable

_ZNSt3setIPKN6Assimp7Blender6ObjectENS1_13ObjectCompareESaIS4_EED2Ev.exit: ; preds = %_ZN6Assimp7Blender9TempArrayISt6vector6aiMeshED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp15BlenderImporter12ResolveImageEP10aiMaterialPKNS_7Blender8MaterialEPKNS3_4MTexEPKNS3_5ImageERNS3_14ConversionDataE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr readnone captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 captures(none) dereferenceable(336) %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %struct.aiString, align 4           ; 10 uses
  %7 = alloca %struct.aiString, align 4           ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %6, i8 0, i64 1028, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 1336 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.not73 = icmp eq ptr %i.d, null
  br i1 %.not73, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i8 42, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 152 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load ptr, ptr %i.g, align 8
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 3
  %i.o = trunc i64 %i.n to i32                    ; 3 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.c, label %.lr.ph.i.preheader

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 6
  store i8 45, ptr %i.f, align 1
  %i.r = sub nsw i32 0, %i.o
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c, %bb.b
  %.153.i.ph = phi ptr [ %i.f, %bb.b ], [ %i.q, %bb.c ]
  %.13350.i.ph = phi i32 [ 1, %bb.b ], [ 2, %bb.c ]
  %.13849.i.ph = phi i32 [ %i.o, %bb.b ], [ %i.r, %bb.c ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.e
  %.153.i = phi ptr [ %.2.i, %bb.e ], [ %.153.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.02752.i = phi i1 [ %or.cond3.i, %bb.e ], [ false, %.lr.ph.i.preheader ]
  %.03051.i = phi i32 [ %i.ab, %bb.e ], [ 1000000000, %.lr.ph.i.preheader ] ; 5 uses
  %.13350.i = phi i32 [ %.234.i, %bb.e ], [ %.13350.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.13849.i = phi i32 [ %.239.i, %bb.e ], [ %.13849.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.s = sdiv i32 %.13849.i, %.03051.i            ; 3 uses
  %.recomposed = srem i32 %.13849.i, %.03051.i
  %i.t = icmp ne i32 %i.s, 0
  %i.u = icmp eq i32 %.03051.i, 1                 ; 2 uses
  %i.v = or i1 %i.u, %i.t
  %or.cond3.i = select i1 %.02752.i, i1 true, i1 %i.v ; 2 uses
  br i1 %or.cond3.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.w = trunc i32 %i.s to i8
  %i.x = add i8 %i.w, 48
  %i.y = getelementptr inbounds nuw i8, ptr %.153.i, i64 1 ; 2 uses
  store i8 %i.x, ptr %.153.i, align 1
  %i.z = add nuw nsw i32 %.13350.i, 1             ; 2 uses
  %i.aa = mul i32 %i.s, %.03051.i                 ; 0 uses
  br i1 %i.u, label %_ZN6Assimp13ASSIMP_itoa10EPcji.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %.239.i = phi i32 [ %.recomposed, %bb.d ], [ %.13849.i, %.lr.ph.i ]
  %.234.i = phi i32 [ %i.z, %bb.d ], [ %.13350.i, %.lr.ph.i ] ; 3 uses
  %.2.i = phi ptr [ %i.y, %bb.d ], [ %.153.i, %.lr.ph.i ] ; 2 uses
  %i.ab = sdiv i32 %.03051.i, 10
  %i.ac = icmp ult i32 %.234.i, 1023
  br i1 %i.ac, label %.lr.ph.i, label %_ZN6Assimp13ASSIMP_itoa10EPcji.exit

_ZN6Assimp13ASSIMP_itoa10EPcji.exit:              ; preds = %bb.d, %bb.e
  %.436.i = phi i32 [ %.234.i, %bb.e ], [ %i.z, %bb.d ]
  %.4.i = phi ptr [ %.2.i, %bb.e ], [ %i.y, %bb.d ]
  store i8 0, ptr %.4.i, align 1
  store i32 %.436.i, ptr %6, align 4
  %i.ad = tail call noalias noundef nonnull dereferenceable(1064) ptr @_Znwm(i64 noundef 1064) #26 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1060) %i.ad, i8 0, i64 17, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1036) %i.ae, i8 0, i64 1036, i1 false)
  %i.af = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 160 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %.not.i.i = icmp eq ptr %i.af, %i.ah
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN6Assimp13ASSIMP_itoa10EPcji.exit
  store ptr %i.ad, ptr %i.af, align 8
  %i.ai = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.aj, ptr %i.h, align 8
  br label %_ZNSt6vectorIP9aiTextureSaIS1_EE9push_backEOS1_.exit

bb.g:                                             ; preds = %_ZN6Assimp13ASSIMP_itoa10EPcji.exit
  %i.ak = load ptr, ptr %i.g, align 8             ; 4 uses
  %i.al = ptrtoint ptr %i.af to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am                    ; 6 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775800
  br i1 %i.ao, label %bb.h, label %_ZNKSt6vectorIP9aiTextureSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #28
  unreachable

_ZNKSt6vectorIP9aiTextureSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.ap = ashr exact i64 %i.an, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ap ; 2 uses
  %9 = icmp ult i64 %i.aq, %i.ap
  %i.ar = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 1152921504606846975)
  %10 = select i1 %9, i64 1152921504606846975, i64 %i.ar ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %10, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.as = shl nuw nsw i64 %10, 3
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #26 ; 4 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.an ; 3 uses
  store ptr %i.ad, ptr %i.au, align 8
  %i.av = icmp sgt i64 %i.an, 0
  br i1 %i.av, label %bb.i, label %_ZNSt6vectorIP9aiTextureSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIP9aiTextureSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.at, ptr align 8 %i.ak, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIP9aiTextureSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP9aiTextureSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIP9aiTextureSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP9aiTextureSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIP9aiTextureSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.an) #27
  br label %_ZNSt6vectorIP9aiTextureSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP9aiTextureSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIP9aiTextureSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.at, ptr %i.g, align 8
  store ptr %i.aw, ptr %i.h, align 8
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %10
  store ptr %i.ax, ptr %i.ag, align 8
  br label %_ZNSt6vectorIP9aiTextureSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIP9aiTextureSaIS1_EE9push_backEOS1_.exit: ; preds = %bb.f, %_ZNSt6vectorIP9aiTextureSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.ay = phi ptr [ %i.ai, %bb.f ], [ %i.au, %_ZNSt6vectorIP9aiTextureSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %i.az = load ptr, ptr %i.ay, align 8            ; 7 uses
  %.ptr58 = getelementptr inbounds nuw i8, ptr %4, i64 1064 ; 2 uses
  %i.ba = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.ptr58) #30 ; 4 uses
  %.add = add i64 %i.ba, 1064                     ; 5 uses
  %.0.ptr74 = getelementptr inbounds i8, ptr %4, i64 %.add ; 2 uses
  %.not75 = icmp slt i64 %i.ba, 0
  br i1 %.not75, label %.critedge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIP9aiTextureSaIS1_EE9push_backEOS1_.exit
  %smin = tail call i64 @llvm.smin.i64(i64 %.add, i64 1064)
  %i.bb = add i64 %smin, -1                       ; 2 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.bb
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %.0.ptr77 = phi ptr [ %.0.ptr, %bb.k ], [ %.0.ptr74, %.lr.ph.preheader ] ; 2 uses
  %.0.idx76 = phi i64 [ %.0.add, %bb.k ], [ %.add, %.lr.ph.preheader ] ; 3 uses
  %i.bc = load i8, ptr %.0.ptr77, align 1
  %.not60 = icmp eq i8 %i.bc, 46
  br i1 %.not60, label %.critedge, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %.0.add = add nsw i64 %.0.idx76, -1             ; 2 uses
  %.0.ptr = getelementptr inbounds i8, ptr %4, i64 %.0.add
  %.not = icmp slt i64 %.0.idx76, 1065
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !90

.critedge:                                        ; preds = %.lr.ph, %bb.k
  %.0.idx.lcssa = phi i64 [ %i.bb, %bb.k ], [ %.0.idx76, %.lr.ph ] ; 3 uses
  %.0.ptr.lcssa = phi ptr [ %scevgep, %bb.k ], [ %.0.ptr77, %.lr.ph ] ; 3 uses
  %.not61 = icmp slt i64 %.0.idx.lcssa, %.add
  br i1 %.not61, label %bb.l, label %.critedge.thread

bb.l:                                             ; preds = %.critedge
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.ptr.lcssa, i64 1
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = zext i8 %i.be to i32
  %i.bg = tail call i32 @tolower(i32 noundef %i.bf) #30
  %i.bh = trunc i32 %i.bg to i8
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %_ZNSt6vectorIP9aiTextureSaIS1_EE9push_backEOS1_.exit, %.critedge, %bb.l
  %.0.ptr.lcssa93 = phi ptr [ %.0.ptr.lcssa, %bb.l ], [ %.0.ptr.lcssa, %.critedge ], [ %.0.ptr74, %_ZNSt6vectorIP9aiTextureSaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %.0.idx.lcssa92 = phi i64 [ %.0.idx.lcssa, %bb.l ], [ %.0.idx.lcssa, %.critedge ], [ %.add, %_ZNSt6vectorIP9aiTextureSaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %i.bi = phi i8 [ %i.bh, %bb.l ], [ 0, %.critedge ], [ 0, %_ZNSt6vectorIP9aiTextureSaIS1_EE9push_backEOS1_.exit ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i8 %i.bi, ptr %i.bj, align 8
  %i.bk = add nsw i64 %i.ba, 1062
  %i.bl = icmp sgt i64 %.0.idx.lcssa92, %i.bk
  br i1 %i.bl, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.critedge.thread
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.ptr.lcssa93, i64 2
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = zext i8 %i.bn to i32
  %i.bp = tail call i32 @tolower(i32 noundef %i.bo) #30
  %i.bq = trunc i32 %i.bp to i8
  br label %bb.n

bb.n:                                             ; preds = %.critedge.thread, %bb.m
  %i.br = phi i8 [ %i.bq, %bb.m ], [ 0, %.critedge.thread ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 9
  store i8 %i.br, ptr %i.bs, align 1
  %i.bt = add nsw i64 %i.ba, 1061
  %i.bu = icmp sgt i64 %.0.idx.lcssa92, %i.bt
  br i1 %i.bu, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.ptr.lcssa93, i64 3
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = zext i8 %i.bw to i32
  %i.by = tail call i32 @tolower(i32 noundef %i.bx) #30
  %i.bz = trunc i32 %i.by to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.ca = phi i8 [ %i.bz, %bb.o ], [ 0, %bb.n ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.az, i64 10
  store i8 %i.ca, ptr %i.cb, align 2
  %i.cc = getelementptr inbounds nuw i8, ptr %i.az, i64 11
  store i8 0, ptr %i.cc, align 1
  %i.cd = load ptr, ptr %i.c, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load i32, ptr %i.ce, align 8            ; 2 uses
  store i32 %i.cf, ptr %i.az, align 8
  %i.cg = zext i32 %i.cf to i64
  %i.ch = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cg) #26 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 328 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !nonnull !20, !align !91
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 128
  %i.cl = load ptr, ptr %i.ck, align 8            ; 3 uses
  %i.cm = load ptr, ptr %i.c, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cp ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store ptr %i.cs, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = icmp ugt ptr %i.cs, %i.cv
  br i1 %i.cw, label %bb.q, label %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit

bb.q:                                             ; preds = %bb.p
  %i.cx = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull @.str.124)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @__cxa_throw(ptr nonnull %i.cx, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
  unreachable

common.resume:                                    ; preds = %bb.v, %bb.s
  %.sink = phi ptr [ %i.dn, %bb.v ], [ %i.cx, %bb.s ]
  %common.resume.op = phi { ptr, i32 } [ %i.do, %bb.v ], [ %i.cy, %bb.s ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #25
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.q
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit: ; preds = %bb.p
  %i.cz = load ptr, ptr %i.ci, align 8, !nonnull !20, !align !91
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 128
  %i.db = load ptr, ptr %i.da, align 8            ; 3 uses
  %i.dc = load i32, ptr %i.az, align 8
  %i.dd = zext i32 %i.dc to i64                   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 24 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8            ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dd ; 3 uses
  store ptr %i.dg, ptr %i.de, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = icmp ugt ptr %i.dg, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = icmp ult ptr %i.dg, %i.dl
  %or.cond.i.i = select i1 %i.dj, i1 true, i1 %i.dm
  br i1 %or.cond.i.i, label %bb.t, label %_ZN6Assimp12StreamReaderILb1ELb1EE14CopyAndAdvanceEPvm.exit

bb.t:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit
  %i.dn = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull @.str.124)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @__cxa_throw(ptr nonnull %i.dn, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb1ELb1EE14CopyAndAdvanceEPvm.exit: ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE13SetCurrentPosEm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ch, ptr align 1 %i.df, i64 %i.dd, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store ptr %i.ch, ptr %i.dp, align 8
  %i.dq = tail call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.dq, label %_ZN6Assimp12LogFunctionsINS_15BlenderImporterEE7LogInfoIJRA45_KcRA240_S4_EEEvDpOT_.exit, label %bb.w

bb.w:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EE14CopyAndAdvanceEPvm.exit
  %i.dr = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store ptr @.str, ptr %i.b, align 8
  call void @_ZN6Assimp6Logger4infoIJPKcRA45_S2_RA240_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.dr, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(45) @.str.20, ptr noundef nonnull align 1 dereferenceable(240) %.ptr58)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %_ZN6Assimp12LogFunctionsINS_15BlenderImporterEE7LogInfoIJRA45_KcRA240_S4_EEEvDpOT_.exit

bb.x:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 1064 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.dt, ptr %8, align 8
  %i.du = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ds) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.du, ptr %i.a, align 8
  %i.dv = icmp ugt i64 %i.du, 15
  br i1 %i.dv, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.x
  %i.dw = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.dw, ptr %8, align 8
  %i.dx = load i64, ptr %i.a, align 8
  store i64 %i.dx, ptr %i.dt, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.x
  %i.dy = phi ptr [ %i.dw, %.noexc.i ], [ %i.dt, %bb.x ] ; 2 uses
  switch i64 %i.du, label %bb.z [
end_hunk_2
begin_hunk_3_@_ZN6Assimp15BlenderImporter11ConvertMeshERKNS_7Blender5SceneEPKNS1_6ObjectEPKNS1_4MeshERNS1_14ConversionDataERNS1_9TempArrayISt6vector6aiMeshEE:bb.a
bb.u:                                             ; preds = %._crit_edge
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = sub i64 %i.dh, %i.cz                    ; 2 uses
  %i.dj = ashr exact i64 %i.di, 3
  %i.dk = icmp ult i64 %i.dj, %i.dd
  br i1 %i.dk, label %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.u
  %i.dl = shl nuw nsw i64 %i.dd, 3
  %i.dm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #26
          to label %.noexc478 unwind label %bb.ac ; 4 uses

.noexc478:                                        ; preds = %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i
  %i.dn = icmp sgt i64 %i.da, 0
  br i1 %i.dn, label %bb.v, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i

bb.v:                                             ; preds = %.noexc478
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dm, ptr align 8 %i.cx, i64 %i.da, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %bb.v, %.noexc478
  %.not.i8.i = icmp eq ptr %i.cx, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.di) #27
  br label %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.w, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.dm, ptr %5, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.da
  store ptr %i.do, ptr %i.cv, align 8
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dd
  store ptr %i.dp, ptr %i.df, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit

bb.x:                                             ; preds = %.lr.ph748, %bb.z
  %indvars.iv845 = phi i64 [ 0, %.lr.ph748 ], [ %indvars.iv.next846, %bb.z ] ; 2 uses
  %i.dq = load ptr, ptr %i.ce, align 8
  %i.dr = getelementptr inbounds nuw [32 x i8], ptr %i.dq, i64 %indvars.iv845 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #25
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24 ; 2 uses
  %i.dt = load i16, ptr %i.ds, align 8
  %i.du = sext i16 %i.dt to i32
  store i32 %i.du, ptr %i.o, align 4
  %i.dv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEEixEOi(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 4 dereferenceable(4) %i.o)
          to label %bb.y unwind label %bb.aa      ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = add i64 %i.dw, 1
  store i64 %i.dx, ptr %i.dv, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #25
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 20
  %i.dz = load i32, ptr %i.dy, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #25
  %i.ea = load i16, ptr %i.ds, align 8
  %i.eb = sext i16 %i.ea to i32
  store i32 %i.eb, ptr %i.p, align 4
  %i.ec = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEEixEOi(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 4 dereferenceable(4) %i.p)
          to label %bb.z unwind label %bb.ab      ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.ed = sext i32 %i.dz to i64
  %i.ee = load i64, ptr %i.ec, align 8
  %i.ef = add i64 %i.ee, %i.ed
  store i64 %i.ef, ptr %i.ec, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #25
  %indvars.iv.next846 = add nuw nsw i64 %indvars.iv845, 1 ; 2 uses
  %i.eg = load i32, ptr %i.cb, align 8
  %i.eh = sext i32 %i.eg to i64
  %i.ei = icmp slt i64 %indvars.iv.next846, %i.eh
  br i1 %i.ei, label %bb.x, label %._crit_edge, !llvm.loop !94

bb.aa:                                            ; preds = %bb.x
  %i.ej = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #25
  br label %bb.gx

bb.ab:                                            ; preds = %bb.y
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #25
  br label %bb.gx

_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit:     ; preds = %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.el = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store i32 0, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr null, ptr %i.em, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.el, ptr %i.en, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %i.el, ptr %i.eo, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i64 0, ptr %i.ep, align 8
  %i.eq = load ptr, ptr %i.bs, align 8            ; 2 uses
  %.not682749 = icmp eq ptr %i.eq, %i.bq
  br i1 %.not682749, label %.preheader711, label %.lr.ph751

.lr.ph751:                                        ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 34 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 1384
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 1392
  %i.ex = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 184 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 208 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 216 ; 5 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 232 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.fg = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %16, i64 24
  br label %bb.ad

.preheader711:                                    ; preds = %bb.bt, %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit
  %i.fk = load i32, ptr %i.y, align 8
  %i.fl = icmp sgt i32 %i.fk, 0
  br i1 %i.fl, label %.lr.ph753, label %.preheader710

bb.ac:                                            ; preds = %_ZNSt12_Vector_baseIP6aiMeshSaIS1_EE11_M_allocateEm.exit.i, %bb.t
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

bb.ad:                                            ; preds = %.lr.ph751, %bb.bt
  %.sroa.0670.0750 = phi ptr [ %i.eq, %.lr.ph751 ], [ %i.og, %bb.bt ] ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0670.0750, i64 32 ; 4 uses
  %i.fo = load ptr, ptr %i.cv, align 8
  %i.fp = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #25
  %i.fq = load i32, ptr %i.fn, align 8
  %i.fr = sext i32 %i.fq to i64
  store i64 %i.fr, ptr %i.q, align 8
  %i.fs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixEOm(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.ae unwind label %bb.ax

bb.ae:                                            ; preds = %bb.ad
  %i.ft = ptrtoint ptr %i.fo to i64
  %i.fu = ptrtoint ptr %i.fp to i64
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = ashr exact i64 %i.fv, 3
  store i64 %i.fw, ptr %i.fs, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #25
  %i.fx = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #26
          to label %bb.af unwind label %.loopexit715 ; 9 uses

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.fx, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 4
  store i32 0, ptr %i.fy, align 4
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store i32 0, ptr %i.fz, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 224
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fx, i64 1272
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fx, i64 1312
  store ptr null, ptr %i.gd, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.ga, i8 0, i64 204, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.gb, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gc, i8 0, i64 36, i1 false)
  %i.ge = load ptr, ptr %i.cv, align 8            ; 3 uses
  %i.gf = load ptr, ptr %i.df, align 8
  %.not.i.i = icmp eq ptr %i.ge, %i.gf
  br i1 %.not.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr %i.fx, ptr %i.ge, align 8
  %i.gg = load ptr, ptr %i.cv, align 8            ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store ptr %i.gh, ptr %i.cv, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backEOS1_.exit

bb.ah:                                            ; preds = %bb.af
  %i.gi = load ptr, ptr %5, align 8               ; 4 uses
  %i.gj = ptrtoint ptr %i.ge to i64
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = sub i64 %i.gj, %i.gk                    ; 6 uses
  %i.gm = icmp eq i64 %i.gl, 9223372036854775800
  br i1 %i.gm, label %bb.ai, label %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #28
          to label %.noexc479 unwind label %.loopexit.split-lp

.noexc479:                                        ; preds = %bb.ai
  unreachable

_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ah
  %i.gn = ashr exact i64 %i.gl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gn, i64 1)
  %i.go = add nsw i64 %.sroa.speculated.i.i.i.i, %i.gn ; 2 uses
  %22 = icmp ult i64 %i.go, %i.gn
  %i.gp = call i64 @llvm.umin.i64(i64 %i.go, i64 1152921504606846975)
  %23 = select i1 %22, i64 1152921504606846975, i64 %i.gp ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %23, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.gq = shl nuw nsw i64 %23, 3
  %i.gr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gq) #26
          to label %.noexc480 unwind label %.loopexit715 ; 4 uses

.noexc480:                                        ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.gs = getelementptr inbounds i8, ptr %i.gr, i64 %i.gl ; 3 uses
  store ptr %i.fx, ptr %i.gs, align 8
  %i.gt = icmp sgt i64 %i.gl, 0
  br i1 %i.gt, label %bb.aj, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.aj:                                            ; preds = %.noexc480
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gr, ptr align 8 %i.gi, i64 %i.gl, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.aj, %.noexc480
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.gi, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef %i.gl) #27
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.ak, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.gr, ptr %5, align 8
  store ptr %i.gu, ptr %i.cv, align 8
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %23
  store ptr %i.gv, ptr %i.df, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ag
  %i.gw = phi ptr [ %i.gs, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.gg, %bb.ag ]
  %i.gx = load ptr, ptr %i.gw, align 8            ; 8 uses
  %i.gy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 4 dereferenceable(4) %i.fn)
          to label %bb.al unwind label %.loopexit716

bb.al:                                            ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backEOS1_.exit
  %i.gz = load i64, ptr %i.gy, align 8
  %.fr965 = freeze i64 %i.gz                      ; 2 uses
  %i.ha = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.fr965, i64 12) ; 2 uses
  %i.hb = extractvalue { i64, i1 } %i.ha, 1
  %i.hc = extractvalue { i64, i1 } %i.ha, 0       ; 2 uses
  %i.hd = select i1 %i.hb, i64 -1, i64 %i.hc
  %i.he = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hd) #26
          to label %bb.am unwind label %.loopexit716 ; 2 uses

bb.am:                                            ; preds = %bb.al
  %i.hf = icmp eq i64 %.fr965, 0
  br i1 %i.hf, label %.loopexit714, label %.loopexit714.loopexit

.loopexit714.loopexit:                            ; preds = %bb.am
  %i.hg = add i64 %i.hc, -12                      ; 2 uses
  %i.hh = urem i64 %i.hg, 12
  %i.hi = sub nuw i64 %i.hg, %i.hh
  %i.hj = add i64 %i.hi, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.he, i8 0, i64 %i.hj, i1 false)
  br label %.loopexit714

.loopexit714:                                     ; preds = %.loopexit714.loopexit, %bb.am
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  store ptr %i.he, ptr %i.hk, align 8
  %i.hl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIimSt4lessIiESaISt4pairIKimEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 4 dereferenceable(4) %i.fn)
          to label %bb.an unwind label %.loopexit716

bb.an:                                            ; preds = %.loopexit714
  %i.hm = load i64, ptr %i.hl, align 8
  %.fr = freeze i64 %i.hm                         ; 3 uses
  %i.hn = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.fr, i64 12) ; 2 uses
  %i.ho = extractvalue { i64, i1 } %i.hn, 1
  %i.hp = extractvalue { i64, i1 } %i.hn, 0
  %i.hq = select i1 %i.ho, i64 -1, i64 %i.hp
  %i.hr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hq) #26
          to label %bb.ao unwind label %.loopexit716 ; 2 uses

bb.ao:                                            ; preds = %bb.an
  %i.hs = icmp eq i64 %.fr, 0
  br i1 %i.hs, label %.loopexit713, label %.loopexit713.loopexit

.loopexit713.loopexit:                            ; preds = %bb.ao
  %i.ht = mul i64 %.fr, 12
  %i.hu = add i64 %i.ht, -12                      ; 2 uses
  %i.hv = urem i64 %i.hu, 12
  %i.hw = sub nuw i64 %i.hu, %i.hv
  %i.hx = add i64 %i.hw, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hr, i8 0, i64 %i.hx, i1 false)
  br label %.loopexit713

.loopexit713:                                     ; preds = %.loopexit713.loopexit, %bb.ao
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  store ptr %i.hr, ptr %i.hy, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.0670.0750, i64 40
  %i.ia = load i64, ptr %i.hz, align 8            ; 7 uses
  %i.ib = icmp ugt i64 %i.ia, 1152921504606846975
  %i.ic = shl i64 %i.ia, 4
  %i.id = or disjoint i64 %i.ic, 8
  %i.ie = select i1 %i.ib, i64 -1, i64 %i.id
  %i.if = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ie) #26
          to label %bb.ap unwind label %.loopexit716 ; 2 uses

bb.ap:                                            ; preds = %.loopexit713
  store i64 %i.ia, ptr %i.if, align 16
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8 ; 4 uses
  %i.ih = icmp eq i64 %i.ia, 0
  br i1 %i.ih, label %.loopexit712, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ii = getelementptr inbounds [16 x i8], ptr %i.ig, i64 %i.ia
  %i.ij = add i64 %i.ia, 1152921504606846975
  %i.ik = and i64 %i.ij, 1152921504606846975
  %xtraiter = and i64 %i.ia, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.aq, %.prol.preheader
  %i.il = phi ptr [ %i.in, %.prol.preheader ], [ %i.ig, %bb.aq ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.aq ]
  store i32 0, ptr %i.il, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store ptr null, ptr %i.im, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !95

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.aq
  %.unr = phi ptr [ %i.ig, %bb.aq ], [ %i.in, %.prol.preheader ]
  %i.io = icmp samesign ult i64 %i.ik, 7
  br i1 %i.io, label %.loopexit712, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.ip = phi ptr [ %i.jf, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.ip, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  store ptr null, ptr %i.iq, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store i32 0, ptr %i.ir, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 24
  store ptr null, ptr %i.is, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  store i32 0, ptr %i.it, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ip, i64 40
  store ptr null, ptr %i.iu, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ip, i64 48
  store i32 0, ptr %i.iv, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ip, i64 56
  store ptr null, ptr %i.iw, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ip, i64 64
  store i32 0, ptr %i.ix, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ip, i64 72
  store ptr null, ptr %i.iy, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ip, i64 80
  store i32 0, ptr %i.iz, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ip, i64 88
  store ptr null, ptr %i.ja, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ip, i64 96
  store i32 0, ptr %i.jb, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ip, i64 104
  store ptr null, ptr %i.jc, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ip, i64 112
  store i32 0, ptr %i.jd, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.ip, i64 120
  store ptr null, ptr %i.je, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ip, i64 128 ; 2 uses
  %i.jg = icmp eq ptr %i.jf, %i.ii
  br i1 %i.jg, label %.loopexit712, label %.new

.loopexit712:                                     ; preds = %.prol.loopexit, %.new, %bb.ap
  %i.jh = getelementptr inbounds nuw i8, ptr %i.gx, i64 208
  store ptr %i.ig, ptr %i.jh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  store ptr %i.es, ptr %14, align 8
  %i.ji = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.er) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #25
  store i64 %i.ji, ptr %i.k, align 8
  %i.jj = icmp ugt i64 %i.ji, 15
  br i1 %i.jj, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %.loopexit712
  %i.jk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0)
          to label %.noexc481 unwind label %bb.ay ; 2 uses

.noexc481:                                        ; preds = %.noexc.i
  store ptr %i.jk, ptr %14, align 8
  %i.jl = load i64, ptr %i.k, align 8
  store i64 %i.jl, ptr %i.es, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc481, %.loopexit712
  %i.jm = phi ptr [ %i.jk, %.noexc481 ], [ %i.es, %.loopexit712 ] ; 2 uses
  switch i64 %i.ji, label %bb.as [
    i64 1, label %bb.ar
    i64 0, label %_ZN8aiStringaSERKS_.exit
  ]

bb.ar:                                            ; preds = %._crit_edge.i.i
  %i.jn = load i8, ptr %i.er, align 2
  store i8 %i.jn, ptr %i.jm, align 1
  br label %_ZN8aiStringaSERKS_.exit

bb.as:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jm, ptr nonnull align 1 %i.er, i64 %i.ji, i1 false)
  br label %_ZN8aiStringaSERKS_.exit

_ZN8aiStringaSERKS_.exit:                         ; preds = %bb.as, %bb.ar, %._crit_edge.i.i
  %i.jo = load i64, ptr %i.k, align 8             ; 2 uses
  store i64 %i.jo, ptr %i.et, align 8
  %i.jp = load ptr, ptr %14, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jo
  store i8 0, ptr %i.jq, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #25
  %i.jr = load i64, ptr %i.et, align 8            ; 2 uses
  %i.js = trunc i64 %i.jr to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.eu, i8 0, i64 1024, i1 false)
  %i.jt = and i64 %i.jr, 4294966272
  %.not.i = icmp eq i64 %i.jt, 0
  %spec.select.i = select i1 %.not.i, i32 %i.js, i32 1023 ; 3 uses
  store i32 %spec.select.i, ptr %13, align 4
  %i.ju = load ptr, ptr %14, align 8
  %i.jv = zext i32 %spec.select.i to i64          ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.eu, ptr align 1 %i.ju, i64 %i.jv, i1 false)
  %i.jw = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.jv
  store i8 0, ptr %i.jw, align 1
  %i.jx = getelementptr inbounds nuw i8, ptr %i.gx, i64 236
  store i32 %spec.select.i, ptr %i.jx, align 4
  %i.jy = getelementptr inbounds nuw i8, ptr %i.gx, i64 240 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.jy, ptr nonnull align 4 %i.eu, i64 %i.jv, i1 false)
end_hunk_3
begin_hunk_4_@_ZSt10_ConstructIN6Assimp12StreamReaderILb1ELb1EEEJRSt10shared_ptrINS0_8IOStreamEERbEEvPT_DpOT0_:bb.a
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EEC2ESt10shared_ptrINS_8IOStreamEEb.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.aa, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.ae, align 4
  %i.af = load ptr, ptr %i.z, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #25, !inline_history !9
  %i.ai = load ptr, ptr %i.z, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #25, !inline_history !9
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.al = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i5 = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i5, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = add nsw i32 %i.ad, -1
  store i32 %i.am, ptr %i.aa, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.an = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.ad, %bb.i ], [ %i.an, %bb.j ]
  %i.ao = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ao, label %bb.k, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #25
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN6Assimp12StreamReaderILb1ELb1EEC2ESt10shared_ptrINS_8IOStreamEEb.exit, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp12StreamReaderILb1ELb1EE11InternBeginEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.127)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i64 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h) ; 2 uses
  %i.m = icmp eq i64 %i.g, %i.l
  br i1 %i.m, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.128)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.p = sub i64 %i.g, %i.l                       ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #26 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.q, ptr %i.s, align 8
  %i.t = load ptr, ptr %0, align 8                ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef i64 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull %i.q, i64 noundef 1, i64 noundef %i.p)
  %i.y = load ptr, ptr %i.r, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 %i.x     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.z, ptr %i.ab, align 8
  ret void

bb.j:                                             ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.n, %bb.h ], [ %i.b, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.o, %bb.h ], [ %i.c, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN6Assimp12StreamReaderILb1ELb1EEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !81
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !81
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.129) #28
  unreachable

_ZNKSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = sdiv exact i64 %i.g, 72                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %3 = icmp ult i64 %i.j, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 128102389400760775)
  %4 = select i1 %3, i64 128102389400760775, i64 %i.k ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.f
  %.not.i = icmp ne i64 %4, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = mul nuw nsw i64 %4, 72                   ; 2 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #26 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 5 uses
  %i.q = load i64, ptr %2, align 8
  store i64 %i.q, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  store ptr %i.t, ptr %i.r, align 8
  %i.u = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load i64, ptr %i.v, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.w, ptr %i.a, align 8
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNKSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE12_M_check_lenEmPKc.exit
  %i.y = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.y, ptr %i.r, align 8
  %i.z = load i64, ptr %i.a, align 8
  store i64 %i.z, ptr %i.t, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNKSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE12_M_check_lenEmPKc.exit
  %i.aa = phi ptr [ %i.y, %.noexc ], [ %i.t, %_ZNKSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.w, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.ab = load i8, ptr %i.u, align 1
  store i8 %i.ab, ptr %i.aa, align 1
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.u, i64 %i.w, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.ac = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.ac, ptr %i.ad, align 8
  %i.ae = load ptr, ptr %i.r, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ba, %_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %bb.e ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.az, %_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %i.ai = load i64, ptr %.0911.i.i.i, align 8, !alias.scope !210, !noalias !207
  store i64 %i.ai, ptr %.012.i.i.i, align 8, !alias.scope !207, !noalias !210
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.al, ptr %i.aj, align 8, !alias.scope !207, !noalias !210
  %i.am = load ptr, ptr %i.ak, align 8, !alias.scope !210, !noalias !207 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !210, !noalias !207 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false), !alias.scope !212
  br label %_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.am, ptr %i.aj, align 8, !alias.scope !207, !noalias !210
  %i.at = load i64, ptr %i.an, align 8, !alias.scope !210, !noalias !207
  store i64 %i.at, ptr %i.al, align 8, !alias.scope !207, !noalias !210
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !210, !noalias !207
  br label %_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.f
  %i.au = phi i64 [ %i.aq, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.au, ptr %i.aw, align 8, !alias.scope !207, !noalias !210
  store ptr %i.an, ptr %i.ak, align 8, !alias.scope !210, !noalias !207
  store i64 0, ptr %i.av, align 8, !alias.scope !210, !noalias !207
  store i8 0, ptr %i.an, align 8, !alias.scope !210, !noalias !207
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i64 32, i1 false), !alias.scope !212
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.az, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !31

_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %bb.e ], [ %i.ba, %_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 72 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bu, %_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.bb, %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 6 uses
  %.0911.i.i.i29 = phi ptr [ %i.bt, %_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.bc = load i64, ptr %.0911.i.i.i29, align 8, !alias.scope !216, !noalias !213
  store i64 %i.bc, ptr %.012.i.i.i28, align 8, !alias.scope !213, !noalias !216
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 24 ; 3 uses
  store ptr %i.bf, ptr %i.bd, align 8, !alias.scope !213, !noalias !216
  %i.bg = load ptr, ptr %i.be, align 8, !alias.scope !216, !noalias !213 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 24 ; 5 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !216, !noalias !213 ; 3 uses
  %i.bl = icmp ult i64 %i.bk, 16
  call void @llvm.assume(i1 %i.bl)
  %i.bm = add nuw nsw i64 %i.bk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bf, ptr noundef nonnull align 8 dereferenceable(1) %i.bh, i64 %i.bm, i1 false), !alias.scope !218
  br label %_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.bg, ptr %i.bd, align 8, !alias.scope !213, !noalias !216
  %i.bn = load i64, ptr %i.bh, align 8, !alias.scope !216, !noalias !213
  store i64 %i.bn, ptr %i.bf, align 8, !alias.scope !213, !noalias !216
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !alias.scope !216, !noalias !213
  br label %_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30, %bb.g
  %i.bo = phi i64 [ %i.bk, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16
  store i64 %i.bo, ptr %i.bq, align 8, !alias.scope !213, !noalias !216
  store ptr %i.bh, ptr %i.be, align 8, !alias.scope !216, !noalias !213
  store i64 0, ptr %i.bp, align 8, !alias.scope !216, !noalias !213
  store i8 0, ptr %i.bh, align 8, !alias.scope !216, !noalias !213
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 40
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %i.bs, i64 32, i1 false), !alias.scope !218
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 72 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 72 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bt, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !31

_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36: ; preds = %_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.bb, %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bu, %_ZSt19__relocate_object_aIN6Assimp7Blender13FileBlockHeadES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN6Assimp7Blender13FileBlockHeadESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = sub i64 %i.bx, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.by) #27
  br label %_ZNSt12_Vector_baseIN6Assimp7Blender13FileBlockHeadESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6Assimp7Blender13FileBlockHeadESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN6Assimp7Blender13FileBlockHeadESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, %bb.h
  store ptr %i.o, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8
  %i.bz = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %4
  store ptr %i.bz, ptr %i.bv, align 8
  ret void

bb.i:                                             ; preds = %bb.j
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i.i
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  %i.cd = call ptr @__cxa_begin_catch(ptr %i.cc) #25 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.n) #27
  invoke void @__cxa_rethrow() #28
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.ca

bb.l:                                             ; preds = %bb.i
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #29
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJPKcRA15_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(15) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
  invoke void @_ZN15DeadlyErrorBaseC2IJRA15_KcEPS1_EEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(15) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %3, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #25
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #25
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRA15_KcEPS1_EEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(15) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #25
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJERA15_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(15) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %4, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %4, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #27
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #25
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #25
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #25
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJERA15_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(15) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(15) %2) #25
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(15) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %3, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #27
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #25
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #25
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #25
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6Assimp7Blender13FileBlockHeadESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Assimp::Blender::FileBlockHead", align 8 ; 9 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
end_hunk_4
