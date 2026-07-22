inline.NumInlined: 1858
inline.NumDeleted: 966
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6Assimp7OpenGEX15OpenGEXImporter11handleNodesEPN10ODDLParser7DDLNodeEP7aiScene:bb.a

bb.az:                                            ; preds = %bb.aa
  %i.dh = load ptr, ptr %.sroa.036.093, align 8
  invoke void @_ZN6Assimp7OpenGEX15OpenGEXImporter15handleParamNodeEPN10ODDLParser7DDLNodeEP7aiScene(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %i.dh, ptr poison)
          to label %_ZN6Assimp7OpenGEX15OpenGEXImporter7popNodeEv.exit unwind label %.loopexit

bb.ba:                                            ; preds = %bb.ab
  %i.di = load ptr, ptr %.sroa.036.093, align 8
  invoke void @_ZN6Assimp7OpenGEX15OpenGEXImporter17handleTextureNodeEPN10ODDLParser7DDLNodeEP7aiScene(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %i.di, ptr poison)
          to label %_ZN6Assimp7OpenGEX15OpenGEXImporter7popNodeEv.exit unwind label %.loopexit

_ZN6Assimp7OpenGEX15OpenGEXImporter7popNodeEv.exit: ; preds = %.invoke, %bb.ab, %bb.t, %bb.q, %bb.n, %_ZNK6Assimp7OpenGEX15OpenGEXImporter3topEv.exit.i, %_ZN6Assimp7OpenGEX15OpenGEXImporter18handleGeometryNodeEPN10ODDLParser7DDLNodeEP7aiScene.exit, %bb.ba, %bb.az, %bb.ay, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.ak, %bb.ag, %bb.af, %bb.ae, %bb.ad
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.036.093, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dj, %i.r
  br i1 %.not, label %._crit_edge, label %bb.i, !llvm.loop !17

_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EED2Ev.exit: ; preds = %bb.h, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp7OpenGEX15OpenGEXImporter10copyMeshesEP7aiScene(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(776) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = lshr exact i64 %i.h, 3
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i32 %i.j, ptr %i.k, align 8
  %i.l = and i64 %i.h, 34359738360
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #31
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.b ] ; 3 uses
  %i.o = load ptr, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  store ptr null, ptr %i.p, align 8
  %i.r = load ptr, ptr %i.n, align 8
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  store ptr %i.q, ptr %i.s, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = load i32, ptr %i.k, align 8
  %i.u = zext i32 %i.t to i64
  %i.v = icmp samesign ult i64 %indvars.iv.next, %i.u
  br i1 %i.v, label %.lr.ph, label %.loopexit, !llvm.loop !5

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp7OpenGEX15OpenGEXImporter11copyCamerasEP7aiScene(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(776) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP8aiCameraSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = lshr exact i64 %i.h, 3
  %i.j = trunc i64 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 %i.j, ptr %i.k, align 8
  %i.l = and i64 %i.h, 34359738360
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #31 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.m, ptr %i.n, align 8
  %i.o = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.p = load ptr, ptr %i.c, align 8
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r                       ; 3 uses
  %i.t = icmp sgt i64 %i.s, 8
  br i1 %i.t, label %bb.c, label %bb.d, !prof !7

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.m, ptr align 8 %i.o, i64 %i.s, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP8aiCameraSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

bb.d:                                             ; preds = %bb.b
  %i.u = icmp eq i64 %i.s, 8
  br i1 %i.u, label %bb.e, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP8aiCameraSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.o, align 8
  store ptr %i.v, ptr %i.m, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP8aiCameraSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP8aiCameraSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp7OpenGEX15OpenGEXImporter13copyMaterialsEP7aiScene(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(776) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP10aiMaterialSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = lshr exact i64 %i.h, 3
  %i.j = trunc i64 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %i.j, ptr %i.k, align 8
  %i.l = and i64 %i.h, 34359738360
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #31 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.m, ptr %i.n, align 8
  %i.o = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.p = load ptr, ptr %i.c, align 8
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r                       ; 3 uses
  %i.t = icmp sgt i64 %i.s, 8
  br i1 %i.t, label %bb.c, label %bb.d, !prof !7

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.m, ptr align 8 %i.o, i64 %i.s, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP10aiMaterialSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

bb.d:                                             ; preds = %bb.b
  %i.u = icmp eq i64 %i.s, 8
  br i1 %i.u, label %bb.e, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP10aiMaterialSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.o, align 8
  store ptr %i.v, ptr %i.m, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP10aiMaterialSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP10aiMaterialSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp7OpenGEX15OpenGEXImporter17resolveReferencesEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::tuple.120", align 8    ; 4 uses
  %2 = alloca %"class.std::tuple.123", align 1    ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.not7992 = icmp eq ptr %i.c, %i.e
  br i1 %.not7992, label %.loopexit85, label %.lr.ph94

.lr.ph94:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph94, %.loopexit
  %.sroa.074.093 = phi ptr [ %i.c, %.lr.ph94 ], [ %i.er, %.loopexit ] ; 2 uses
  %i.o = load ptr, ptr %.sroa.074.093, align 8    ; 7 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i32, ptr %i.q, align 8
  switch i32 %i.r, label %bb.v [
    i32 0, label %.preheader
    i32 1, label %.preheader82
  ]

.preheader82:                                     ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not95 = icmp eq ptr %i.u, %i.v
  br i1 %.not95, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not96 = icmp eq ptr %i.y, %i.z
  br i1 %.not96, label %.loopexit, label %.lr.ph91

.lr.ph91:                                         ; preds = %.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 1128
  %i.ab = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.loopexit, label %.lr.ph91.split

.lr.ph91.splitthread-pre-split:                   ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.thread
  %.pr = load ptr, ptr %i.m, align 8
  br label %.lr.ph91.split

.lr.ph91.split:                                   ; preds = %.lr.ph91, %.lr.ph91.splitthread-pre-split
  %i.ad = phi ptr [ %.pr, %.lr.ph91.splitthread-pre-split ], [ %i.ab, %.lr.ph91 ] ; 3 uses
  %i.ae = phi ptr [ %i.by, %.lr.ph91.splitthread-pre-split ], [ %i.z, %.lr.ph91 ] ; 4 uses
  %i.af = phi ptr [ %i.bz, %.lr.ph91.splitthread-pre-split ], [ %i.y, %.lr.ph91 ] ; 3 uses
  %.02590 = phi i64 [ %i.ca, %.lr.ph91.splitthread-pre-split ], [ 0, %.lr.ph91 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %.02590 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph91.split
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i64, ptr %i.ah, align 8            ; 8 uses
  %i.aj = load ptr, ptr %i.ag, align 8            ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.al = load i64, ptr %i.ak, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ai, i64 %i.al) ; 2 uses
  %i.am = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.am, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call i32 @memcmp(ptr noundef %i.ao, ptr noundef %i.aj, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.d
  %i.aq = sub i64 %i.al, %i.ai
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.aq, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ap, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ar = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.ar, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.ar, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.d, !llvm.loop !18

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.as = icmp eq ptr %.19.i.i.i, %i.n
  br i1 %i.as, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.au, i64 %i.ai) ; 2 uses
  %i.av = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.av, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = call i32 @memcmp(ptr noundef %i.aj, ptr noundef %i.ax, i64 noundef %.sroa.speculated.i.i.i.i.i) #32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.e
  %i.az = sub i64 %i.ai, %i.au
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.az, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ay, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ba = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.ba, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ], [ %i.ad, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ], [ %i.n, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.bc = load i64, ptr %i.bb, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ai, i64 %i.bc) ; 2 uses
  %i.bd = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.bd, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = call i32 @memcmp(ptr noundef %i.bf, ptr noundef %i.aj, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.bh = sub i64 %i.bc, %i.ai
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bh, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.bi = icmp slt i32 %.0.i.i.i.i.i.i.i, 0       ; 2 uses
  %.19.i.i.i.i = select i1 %i.bi, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.bi, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE11lower_boundERS9_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !18

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE11lower_boundERS9_.exit.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.bj = icmp eq ptr %.19.i.i.i.i, %i.n
  br i1 %i.bj, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE11lower_boundERS9_.exit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.bl = load i64, ptr %i.bk, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bl, i64 %i.ai) ; 2 uses
  %i.bm = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.bm, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = call i32 @memcmp(ptr noundef %i.aj, ptr noundef %i.bo, i64 noundef %.sroa.speculated.i.i.i.i) #32 ; 2 uses
  %.not.i.i.i4.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i.i4.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.f
  %i.bq = sub i64 %i.ai, %i.bl
  %spec.select7.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bq, i64 -2147483648)
  %.08.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.bp, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.br = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.br, label %.critedge.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEEixERS9_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE11lower_boundERS9_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  store ptr %i.ag, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.bs = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr %.19.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEEixERS9_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEEixERS9_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %.critedge.i
  %.sroa.07.0.i = phi ptr [ %i.bs, %.critedge.i ], [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i, i64 64
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = load ptr, ptr %i.aa, align 8
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %.02590
  store i32 %i.bv, ptr %i.bx, align 4
  %.pre99 = load ptr, ptr %i.x, align 8
  %.pre100 = load ptr, ptr %i.w, align 8
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.thread

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %.lr.ph91.split, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEEixERS9_.exit, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit
  %i.by = phi ptr [ %i.ae, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %i.ae, %.lr.ph91.split ], [ %.pre100, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEEixERS9_.exit ], [ %i.ae, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit ] ; 2 uses
  %i.bz = phi ptr [ %i.af, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %i.af, %.lr.ph91.split ], [ %.pre99, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEEixERS9_.exit ], [ %i.af, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit ] ; 2 uses
  %i.ca = add nuw i64 %.02590, 1                  ; 2 uses
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = ashr exact i64 %i.cd, 5
  %i.cf = icmp ult i64 %i.ca, %i.ce
  br i1 %i.cf, label %.lr.ph91.splitthread-pre-split, label %.loopexit, !llvm.loop !19

.lr.ph:                                           ; preds = %.preheader82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %4 = phi ptr [ %i.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.v, %.preheader82 ]
  %.02489 = phi i64 [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 0, %.preheader82 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %4, i64 %.02489 ; 2 uses
  store ptr %i.f, ptr %3, align 8
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cj = load i64, ptr %i.ci, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.cj, ptr %i.a, align 8
  %i.ck = icmp ugt i64 %i.cj, 15
  br i1 %i.ck, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %.lr.ph
  %i.cl = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.cl, ptr %3, align 8
  %i.cm = load i64, ptr %i.a, align 8
  store i64 %i.cm, ptr %i.f, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %.lr.ph
  %i.cn = phi ptr [ %i.cl, %.noexc.i ], [ %i.f, %.lr.ph ] ; 2 uses
  switch i64 %i.cj, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.co = load i8, ptr %i.ch, align 1
  store i8 %i.co, ptr %i.cn, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cn, ptr align 1 %i.ch, i64 %i.cj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.g, %bb.h
  %i.cp = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.cp, ptr %i.g, align 8
  %i.cq = load ptr, ptr %3, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cp
  store i8 0, ptr %i.cr, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.cs = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not10.i.i.i32 = icmp eq ptr %i.cs, null
  br i1 %.not10.i.i.i32, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit62.thread, label %.lr.ph.i.i.i33

.lr.ph.i.i.i33:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ct = load i64, ptr %i.g, align 8             ; 4 uses
  %i.cu = load ptr, ptr %3, align 8               ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i39, %.lr.ph.i.i.i33
  %.012.i.i.i34 = phi ptr [ %i.cs, %.lr.ph.i.i.i33 ], [ %.1.i.i.i44, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i39 ] ; 4 uses
  %.0811.i.i.i35 = phi ptr [ %i.j, %.lr.ph.i.i.i33 ], [ %.19.i.i.i41, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i39 ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i.i.i34, i64 40
  %i.cw = load i64, ptr %i.cv, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i36 = call i64 @llvm.umin.i64(i64 %i.ct, i64 %i.cw) ; 2 uses
  %i.cx = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i36, 0
  br i1 %i.cx, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i58, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i37

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i37: ; preds = %bb.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.012.i.i.i34, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = call i32 @memcmp(ptr noundef %i.cz, ptr noundef %i.cu, i64 noundef %.sroa.speculated.i.i.i.i.i.i36) #32 ; 2 uses
  %.not.i.i.i.i.i.i38 = icmp eq i32 %i.da, 0
  br i1 %.not.i.i.i.i.i.i38, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i58, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i39

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i58: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i37, %bb.i
  %i.db = sub i64 %i.cw, %i.ct
  %spec.select7.i.i.i.i.i.i.i59 = call i64 @llvm.smax.i64(i64 %i.db, i64 -2147483648)
  %.08.i.i.i.i.i.i.i60 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i59, i64 2147483647)
  %.0.i6.i.i.i.i.i.i61 = trunc nsw i64 %.08.i.i.i.i.i.i.i60 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i39

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i39: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i58, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i37
  %.0.i.i.i.i.i.i40 = phi i32 [ %i.da, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i37 ], [ %.0.i6.i.i.i.i.i.i61, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i58 ]
  %i.dc = icmp slt i32 %.0.i.i.i.i.i.i40, 0       ; 2 uses
  %.19.i.i.i41 = select i1 %i.dc, ptr %.0811.i.i.i35, ptr %.012.i.i.i34 ; 4 uses
  %.1.in.v.i.i.i42 = select i1 %i.dc, i64 24, i64 16
  %.1.in.i.i.i43 = getelementptr inbounds nuw i8, ptr %.012.i.i.i34, i64 %.1.in.v.i.i.i42
  %.1.i.i.i44 = load ptr, ptr %.1.in.i.i.i43, align 8 ; 2 uses
  %.not.i.i.i45 = icmp eq ptr %.1.i.i.i44, null
  br i1 %.not.i.i.i45, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i46, label %bb.i, !llvm.loop !18

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i46: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i39
  %i.dd = icmp eq ptr %.19.i.i.i41, %i.j
  br i1 %i.dd, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit62.thread, label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i46
  %i.de = getelementptr inbounds nuw i8, ptr %.19.i.i.i41, i64 40
  %i.df = load i64, ptr %i.de, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i47 = call i64 @llvm.umin.i64(i64 %i.df, i64 %i.ct) ; 2 uses
  %i.dg = icmp eq i64 %.sroa.speculated.i.i.i.i.i47, 0
  br i1 %i.dg, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i54, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i48

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i48: ; preds = %bb.j
  %i.dh = getelementptr inbounds nuw i8, ptr %.19.i.i.i41, i64 32
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = call i32 @memcmp(ptr noundef %i.cu, ptr noundef %i.di, i64 noundef %.sroa.speculated.i.i.i.i.i47) #32 ; 2 uses
  %.not.i.i.i.i.i49 = icmp eq i32 %i.dj, 0
  br i1 %.not.i.i.i.i.i49, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i54, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit62

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i54: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i48, %bb.j
  %i.dk = sub i64 %i.ct, %i.df
  %spec.select7.i.i.i.i.i.i55 = call i64 @llvm.smax.i64(i64 %i.dk, i64 -2147483648)
  %.08.i.i.i.i.i.i56 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i55, i64 2147483647)
  %.0.i6.i.i.i.i.i57 = trunc nsw i64 %.08.i.i.i.i.i.i56 to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit62

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit62: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i48, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i54
  %.0.i.i.i.i.i51 = phi i32 [ %i.dj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i48 ], [ %.0.i6.i.i.i.i.i57, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i54 ]
  %i.dl = icmp slt i32 %.0.i.i.i.i.i51, 0
  br i1 %i.dl, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit62.thread, label %bb.k

bb.k:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit62
  %i.dm = load ptr, ptr %i.k, align 8
  %.not28 = icmp eq ptr %i.dm, null
  br i1 %.not28, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = trunc i64 %i.do to i32
  %i.dq = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 232
  %i.ds = load i32, ptr %i.dr, align 8
  %.not29 = icmp eq i32 %i.ds, 0
  br i1 %.not29, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dt = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.dt, ptr noundef nonnull @.str.33)
          to label %._crit_edge unwind label %bb.p

._crit_edge:                                      ; preds = %bb.o
  %.pre = load ptr, ptr %i.k, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.q:                                             ; preds = %._crit_edge, %bb.m
  %i.dv = phi ptr [ %.pre, %._crit_edge ], [ %i.dq, %bb.m ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 232
  store i32 %i.dp, ptr %i.dw, align 8
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit62.thread

bb.r:                                             ; preds = %bb.k
  %i.dx = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.dx, ptr noundef nonnull @.str.34)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit62.thread unwind label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit62.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %bb.q, %bb.s, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit62
  %i.dz = load ptr, ptr %3, align 8               ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.f
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit62.thread
  %i.eb = load i64, ptr %i.f, align 8
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit62.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.ed = add nuw i64 %.02489, 1                  ; 2 uses
  %i.ee = load ptr, ptr %i.t, align 8
  %i.ef = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = ashr exact i64 %i.ei, 5
  %i.ek = icmp ult i64 %i.ed, %i.ej
  br i1 %i.ek, label %.lr.ph, label %.loopexit, !llvm.loop !21

bb.u:                                             ; preds = %bb.t, %bb.p
  %.pn = phi { ptr, i32 } [ %i.du, %bb.p ], [ %i.dy, %bb.t ]
  %i.el = load ptr, ptr %3, align 8               ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.f
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.u
  %i.en = load i64, ptr %i.f, align 8
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.y

bb.v:                                             ; preds = %bb.c
  %i.ep = call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ep, ptr noundef nonnull @.str.35)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @__cxa_throw(ptr nonnull %i.ep, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ep) #32
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ], [ %i.eq, %bb.x ]
  resume { ptr, i32 } %.pn.pn

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.thread, %.lr.ph91, %.preheader82, %.preheader, %bb.b
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.074.093, i64 8 ; 2 uses
  %i.es = load ptr, ptr %i.d, align 8
  %.not79 = icmp eq ptr %i.er, %i.es
  br i1 %.not79, label %.loopexit85, label %bb.b, !llvm.loop !22

.loopexit85:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp7OpenGEX15OpenGEXImporter14createNodeTreeEP7aiScene(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(776) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZSt4copyISt14_List_iteratorIP6aiNodeEPS2_ET0_T_S6_S5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = icmp eq ptr %i.d, %i.b
  br i1 %i.e, label %_ZSt4copyISt14_List_iteratorIP6aiNodeEPS2_ET0_T_S6_S5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1104
  store i32 %i.h, ptr %i.k, align 8
  %i.l = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1104
  %i.n = load i32, ptr %i.m, align 8
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 3
  %i.q = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #31
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 1112
  store ptr %i.q, ptr %i.r, align 8
  %i.s = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not6.i.i.i.i.i, label %_ZSt4copyISt14_List_iteratorIP6aiNodeEPS2_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c
  %i.u = load ptr, ptr %i.i, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1112
  %i.w = load ptr, ptr %i.v, align 8
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %i.t, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  store ptr %i.y, ptr %.08.i.i.i.i.i, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  %i.aa = load ptr, ptr %.sroa.03.07.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, %i.s
  br i1 %.not.i.i.i.i.i, label %_ZSt4copyISt14_List_iteratorIP6aiNodeEPS2_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !8

_ZSt4copyISt14_List_iteratorIP6aiNodeEPS2_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN10ODDLParser13OpenDDLParserD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88)) unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_ZNK6Assimp7OpenGEX15OpenGEXImporter7GetInfoEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #12 align 2 {
bb.a:
  ret ptr @_ZL4desc
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN6Assimp7OpenGEX15OpenGEXImporter15SetupPropertiesEPKNS_8ImporterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1) unnamed_addr #12 align 2 {
bb.a:
  ret void
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK10ODDLParser7DDLNode16getChildNodeListEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK10ODDLParser7DDLNode7getTypeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp7OpenGEX15OpenGEXImporter16handleMetricNodeEPN10ODDLParser7DDLNodeEP7aiScene(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(776) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.e, align 8
  %i.h = tail call noundef ptr @_ZNK10ODDLParser7DDLNode9getParentEv(ptr noundef nonnull align 8 dereferenceable(136) %1)
  %.not = icmp eq ptr %i.g, %i.h
  br i1 %.not, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef ptr @_ZNK10ODDLParser7DDLNode13getPropertiesEv(ptr noundef nonnull align 8 dereferenceable(136) %1) ; 2 uses
  %.not3273 = icmp eq ptr %i.i, null
  br i1 %.not3273, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.ap
  %.074 = phi ptr [ %i.i, %.lr.ph ], [ %i.de, %bb.ap ] ; 3 uses
  %i.o = load ptr, ptr %.074, align 8
  %.not33 = icmp eq ptr %i.o, null
  br i1 %.not33, label %bb.ap, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.074, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = icmp eq i32 %i.r, 12
  br i1 %i.s, label %bb.g, label %bb.ap

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.u = load ptr, ptr %i.t, align 8              ; 4 uses
  store ptr %i.j, ptr %3, align 8
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.noexc, label %bb.h

.noexc:                                           ; preds = %bb.g
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.49) #30
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.w = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 %i.w, ptr %i.b, align 8
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.h
  %i.y = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.y, ptr %3, align 8
  %i.z = load i64, ptr %i.b, align 8
  store i64 %i.z, ptr %i.j, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.h
  %i.aa = phi ptr [ %i.y, %.noexc.i ], [ %i.j, %bb.h ] ; 2 uses
  switch i64 %i.w, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ab = load i8, ptr %i.u, align 1
  store i8 %i.ab, ptr %i.aa, align 1
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr nonnull align 1 %i.u, i64 %i.w, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i
  %i.ac = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.ac, ptr %i.k, align 8
  %i.ad = load ptr, ptr %3, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  store i8 0, ptr %i.ae, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %i.af = load ptr, ptr %3, align 8               ; 6 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.p, label %.preheader.i

.preheader.i:                                     ; preds = %bb.k
  %i.ah = call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.af) #32 ; 12 uses
  %i.ai = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7GrammarL16ValidMetricTokenB5cxx11E, i64 8), align 8
  %i.aj = icmp eq i64 %i.ai, %i.ah
  br i1 %i.aj, label %bb.l, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10.i

bb.l:                                             ; preds = %.preheader.i
  %i.ak = icmp eq i64 %i.ah, 0
  br i1 %i.ak, label %bb.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %bb.l
  %i.al = load ptr, ptr @_ZN7GrammarL16ValidMetricTokenB5cxx11E, align 16
  %bcmp.i.i = call i32 @bcmp(ptr %i.al, ptr nonnull readonly %i.af, i64 %i.ah)
  %i.am = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.am, label %bb.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %.preheader.i
  %i.an = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7GrammarL16ValidMetricTokenB5cxx11E, i64 40), align 8
  %i.ao = icmp eq i64 %i.an, %i.ah
  br i1 %i.ao, label %bb.m, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10.1.i

bb.m:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10.i
  %i.ap = icmp eq i64 %i.ah, 0
  br i1 %i.ap, label %bb.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.1.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.1.i: ; preds = %bb.m
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7GrammarL16ValidMetricTokenB5cxx11E, i64 32), align 16
  %bcmp.i.1.i = call i32 @bcmp(ptr %i.aq, ptr nonnull readonly %i.af, i64 %i.ah)
  %i.ar = icmp eq i32 %bcmp.i.1.i, 0
  br i1 %i.ar, label %bb.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10.1.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10.1.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.1.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10.i
  %i.as = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7GrammarL16ValidMetricTokenB5cxx11E, i64 72), align 8
  %i.at = icmp eq i64 %i.as, %i.ah
  br i1 %i.at, label %bb.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10.2.i

bb.n:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10.1.i
  %i.au = icmp eq i64 %i.ah, 0
  br i1 %i.au, label %bb.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.2.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.2.i: ; preds = %bb.n
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7GrammarL16ValidMetricTokenB5cxx11E, i64 64), align 16
  %bcmp.i.2.i = call i32 @bcmp(ptr %i.av, ptr nonnull readonly %i.af, i64 %i.ah)
  %i.aw = icmp eq i32 %bcmp.i.2.i, 0
  br i1 %i.aw, label %bb.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10.2.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10.2.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.2.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10.1.i
  %i.ax = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7GrammarL16ValidMetricTokenB5cxx11E, i64 104), align 8
  %i.ay = icmp eq i64 %i.ax, %i.ah
  br i1 %i.ay, label %bb.o, label %_ZN7GrammarL17isValidMetricTypeEPKc.exit

bb.o:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10.2.i
  %i.az = icmp eq i64 %i.ah, 0
  br i1 %i.az, label %bb.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.3.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.3.i: ; preds = %bb.o
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7GrammarL16ValidMetricTokenB5cxx11E, i64 96), align 16
  %bcmp.i.3.i = call i32 @bcmp(ptr %i.ba, ptr nonnull readonly %i.af, i64 %i.ah)
  %i.bb = icmp eq i32 %bcmp.i.3.i, 0
  br i1 %i.bb, label %bb.p, label %_ZN7GrammarL17isValidMetricTypeEPKc.exit

bb.p:                                             ; preds = %bb.k, %bb.l, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %bb.m, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.1.i, %bb.n, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.2.i, %bb.o, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.3.i
  %.08.i.ph = phi i64 [ 3, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.3.i ], [ 3, %bb.o ], [ 2, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.2.i ], [ 2, %bb.n ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.1.i ], [ 1, %bb.m ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ], [ 0, %bb.l ], [ 0, %bb.k ] ; 3 uses
  %i.bc = invoke noundef ptr @_ZNK10ODDLParser7DDLNode8getValueEv(ptr noundef nonnull align 8 dereferenceable(136) %1)
          to label %bb.q unwind label %.loopexit57 ; 5 uses

bb.q:                                             ; preds = %bb.p
  %.not35 = icmp eq ptr %i.bc, null
  br i1 %.not35, label %_ZN7GrammarL17isValidMetricTypeEPKc.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = load i32, ptr %i.bc, align 8
  switch i32 %i.bd, label %bb.al [
    i32 10, label %bb.s
    i32 3, label %bb.u
    i32 12, label %bb.w
  ]

bb.s:                                             ; preds = %bb.r
  %i.be = invoke noundef float @_ZNK10ODDLParser5Value8getFloatEv(ptr noundef nonnull align 8 dereferenceable(32) %i.bc)
          to label %bb.t unwind label %.loopexit57

bb.t:                                             ; preds = %bb.s
  %i.bf = getelementptr [40 x i8], ptr %0, i64 %.08.i.ph
  %i.bg = getelementptr i8, ptr %i.bf, i64 288
  store float %i.be, ptr %i.bg, align 8
  br label %_ZN7GrammarL17isValidMetricTypeEPKc.exit

.loopexit57:                                      ; preds = %bb.p, %bb.s, %bb.u
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.am
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.u:                                             ; preds = %bb.r
  %i.bh = invoke noundef i32 @_ZN10ODDLParser5Value8getInt32Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.bc)
          to label %bb.v unwind label %.loopexit57

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr [40 x i8], ptr %0, i64 %.08.i.ph
  %i.bj = getelementptr i8, ptr %i.bi, i64 292
  store i32 %i.bh, ptr %i.bj, align 4
  br label %_ZN7GrammarL17isValidMetricTypeEPKc.exit

bb.w:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.bk = invoke noundef ptr @_ZNK10ODDLParser5Value9getStringEv(ptr noundef nonnull align 8 dereferenceable(32) %i.bc)
          to label %bb.x unwind label %bb.aj      ; 4 uses

bb.x:                                             ; preds = %bb.w
  store ptr %i.l, ptr %4, align 8
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.49) #30
          to label %.noexc44 unwind label %.loopexit.split-lp59

.noexc44:                                         ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.bm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bk) #32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.bm, ptr %i.a, align 8
  %i.bn = icmp ugt i64 %i.bm, 15
  br i1 %i.bn, label %.noexc.i43, label %._crit_edge.i.i42

.noexc.i43:                                       ; preds = %bb.z
  %i.bo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc45 unwind label %.loopexit58 ; 2 uses

.noexc45:                                         ; preds = %.noexc.i43
  store ptr %i.bo, ptr %4, align 8
  %i.bp = load i64, ptr %i.a, align 8
  store i64 %i.bp, ptr %i.l, align 8
  br label %._crit_edge.i.i42

._crit_edge.i.i42:                                ; preds = %.noexc45, %bb.z
  %i.bq = phi ptr [ %i.bo, %.noexc45 ], [ %i.l, %bb.z ] ; 2 uses
  switch i64 %i.bm, label %bb.ab [
    i64 1, label %bb.aa
    i64 0, label %bb.ac
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i42
end_hunk_0
begin_hunk_1_@_ZN6Assimp7OpenGEX15OpenGEXImporter16handleCameraNodeEPN10ODDLParser7DDLNodeEP7aiScene:bb.a
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ab, ptr %i.i, align 8
  br label %_ZNSt6vectorIP8aiCameraSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP8aiCameraSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.b, %_ZNSt6vectorIP8aiCameraSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  store ptr %i.b, ptr %i.ac, align 8
  %i.ad = tail call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #31 ; 5 uses
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.ad)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %_ZNSt6vectorIP8aiCameraSaIS1_EE9push_backERKS1_.exit
  tail call void @_ZN6Assimp7OpenGEX15OpenGEXImporter8pushNodeEP6aiNodeP7aiScene(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull %i.ad, ptr noundef %2)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 648
  store i32 6, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 416
  store ptr %i.ad, ptr %i.af, align 8
  tail call void @_ZN6Assimp7OpenGEX15OpenGEXImporter11handleNodesEPN10ODDLParser7DDLNodeEP7aiScene(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr noundef %2)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %_ZN6Assimp7OpenGEX15OpenGEXImporter7popNodeEv.exit, label %_ZNK6Assimp7OpenGEX15OpenGEXImporter3topEv.exit.i

_ZNK6Assimp7OpenGEX15OpenGEXImporter3topEv.exit.i: ; preds = %bb.g
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -8
  store ptr %i.al, ptr %i.ai, align 8
  br label %_ZN6Assimp7OpenGEX15OpenGEXImporter7popNodeEv.exit

_ZN6Assimp7OpenGEX15OpenGEXImporter7popNodeEv.exit: ; preds = %bb.g, %_ZNK6Assimp7OpenGEX15OpenGEXImporter3topEv.exit.i
  %i.am = load ptr, ptr %i.ac, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.ao, ptr %3, align 8
  %i.ap = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.an) #32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.ap, ptr %i.a, align 8
  %i.aq = icmp ugt i64 %i.ap, 15
  br i1 %i.aq, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN6Assimp7OpenGEX15OpenGEXImporter7popNodeEv.exit
  %i.ar = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ar, ptr %3, align 8
  %i.as = load i64, ptr %i.a, align 8
  store i64 %i.as, ptr %i.ao, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %_ZN6Assimp7OpenGEX15OpenGEXImporter7popNodeEv.exit
  %i.at = phi ptr [ %i.ar, %.noexc.i ], [ %i.ao, %_ZN6Assimp7OpenGEX15OpenGEXImporter7popNodeEv.exit ] ; 2 uses
  switch i64 %i.ap, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.au = load i8, ptr %i.an, align 1
  store i8 %i.au, ptr %i.at, align 1
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr nonnull align 1 %i.an, i64 %i.ap, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i
  %i.av = load i64, ptr %i.a, align 8             ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.av, ptr %i.aw, align 8
  %i.ax = load ptr, ptr %3, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  store i8 0, ptr %i.ay, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.az = load i64, ptr %i.aw, align 8            ; 5 uses
  %i.ba = icmp ugt i64 %i.az, 1023
  %.pre = load ptr, ptr %3, align 8               ; 3 uses
  br i1 %i.ba, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = trunc nuw nsw i64 %i.az to i32
  store i32 %i.bb, ptr %i.am, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bc, ptr align 1 %.pre, i64 %i.az, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az
  store i8 0, ptr %i.bd, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.j, %bb.k
  %i.be = icmp eq ptr %.pre, %i.ao
  br i1 %i.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bf = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.bf)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bg = load i64, ptr %i.ao, align 8
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.bh) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.l:                                             ; preds = %_ZNSt6vectorIP8aiCameraSaIS1_EE9push_backERKS1_.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 1144) #29
  resume { ptr, i32 } %i.bi
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp7OpenGEX15OpenGEXImporter20handleGeometryObjectEPN10ODDLParser7DDLNodeEP7aiScene(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN6Assimp7OpenGEX15OpenGEXImporter11handleNodesEPN10ODDLParser7DDLNodeEP7aiScene(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp7OpenGEX15OpenGEXImporter18handleCameraObjectEPN10ODDLParser7DDLNodeEP7aiScene(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN6Assimp7OpenGEX15OpenGEXImporter11handleNodesEPN10ODDLParser7DDLNodeEP7aiScene(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp7OpenGEX15OpenGEXImporter19handleTransformNodeEPN10ODDLParser7DDLNodeEP7aiScene(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(776) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x float], align 16            ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.10)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZNK10ODDLParser7DDLNode16getDataArrayListEv(ptr noundef nonnull align 8 dereferenceable(136) %1) ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = load i64, ptr %i.g, align 8
  %.not8 = icmp eq i64 %i.h, 16
  br i1 %.not8, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @.str.15)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.j:                                             ; preds = %bb.f
  %i.k = load ptr, ptr %i.b, align 8              ; 7 uses
  %i.l = getelementptr i8, ptr %i.g, i64 8
  %.val = load ptr, ptr %i.l, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = tail call noundef float @_ZNK10ODDLParser5Value8getFloatEv(ptr noundef nonnull align 8 dereferenceable(32) %.val) ; 2 uses
  store float %i.o, ptr %i.a, align 16
  %.not1.i = icmp eq ptr %i.n, null
  br i1 %.not1.i, label %_ZN6Assimp7OpenGEXL9setMatrixEP6aiNodePN10ODDLParser13DataArrayListE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.03.i = phi ptr [ %i.s, %.lr.ph.i ], [ %i.n, %bb.j ] ; 2 uses
  %.0222.i = phi i64 [ %i.t, %.lr.ph.i ], [ 1, %bb.j ] ; 2 uses
  %i.p = tail call noundef float @_ZNK10ODDLParser5Value8getFloatEv(ptr noundef nonnull align 8 dereferenceable(32) %.03.i)
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0222.i
  store float %i.p, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %.03.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = add i64 %.0222.i, 1
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !51

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load float, ptr %i.a, align 16
  %.phi.trans.insert9.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %3 = load <12 x float>, ptr %.phi.trans.insert9.i, align 4
  %4 = shufflevector <12 x float> %3, <12 x float> poison, <4 x i32> <i32 0, i32 3, i32 7, i32 11>
  %.phi.trans.insert17.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %5 = load <12 x float>, ptr %.phi.trans.insert17.i, align 8
  %6 = shufflevector <12 x float> %5, <12 x float> poison, <4 x i32> <i32 0, i32 3, i32 7, i32 11>
  %.phi.trans.insert25.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %7 = load <12 x float>, ptr %.phi.trans.insert25.i, align 4
  %8 = shufflevector <12 x float> %7, <12 x float> poison, <4 x i32> <i32 0, i32 3, i32 7, i32 11>
  %.phi.trans.insert27.i = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.pre28.i = load float, ptr %.phi.trans.insert27.i, align 4
  %.phi.trans.insert29.i = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %.pre30.i = load float, ptr %.phi.trans.insert29.i, align 4
  %.phi.trans.insert31.i = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %.pre32.i = load float, ptr %.phi.trans.insert31.i, align 4
  %9 = shufflevector <4 x float> %4, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %10 = shufflevector <4 x float> %6, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %11 = shufflevector <4 x float> %8, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  br label %_ZN6Assimp7OpenGEXL9setMatrixEP6aiNodePN10ODDLParser13DataArrayListE.exit

_ZN6Assimp7OpenGEXL9setMatrixEP6aiNodePN10ODDLParser13DataArrayListE.exit: ; preds = %bb.j, %._crit_edge.loopexit.i
  %i.u = phi float [ %.pre32.i, %._crit_edge.loopexit.i ], [ undef, %bb.j ]
  %12 = phi float [ %.pre30.i, %._crit_edge.loopexit.i ], [ undef, %bb.j ]
  %13 = phi float [ %.pre28.i, %._crit_edge.loopexit.i ], [ undef, %bb.j ]
  %14 = phi float [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.o, %bb.j ]
  %15 = phi <4 x float> [ %9, %._crit_edge.loopexit.i ], [ undef, %bb.j ]
  %16 = phi <4 x float> [ %10, %._crit_edge.loopexit.i ], [ undef, %bb.j ]
  %17 = phi <4 x float> [ %11, %._crit_edge.loopexit.i ], [ undef, %bb.j ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 1028
  store float %14, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 1032
  store <4 x float> %15, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 1048
  store <4 x float> %16, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 1064
  store <4 x float> %17, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 1080
  store float %13, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 1084
  store float %12, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 1088
  store float %i.u, ptr %i.ab, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.k

bb.k:                                             ; preds = %_ZN6Assimp7OpenGEXL9setMatrixEP6aiNodePN10ODDLParser13DataArrayListE.exit, %bb.e
  ret void

bb.l:                                             ; preds = %bb.i, %bb.d
  %.sink = phi ptr [ %i.i, %bb.i ], [ %i.e, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.j, %bb.i ], [ %i.f, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #32
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp7OpenGEX15OpenGEXImporter14handleMeshNodeEPN10ODDLParser7DDLNodeEP7aiScene(ptr noundef nonnull align 8 dereferenceable(776) initializes((616, 624)) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #31 ; 10 uses
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1272
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1312
  store ptr null, ptr %i.g, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.d, i8 0, i64 204, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.e, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.f, i8 0, i64 36, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  store ptr %i.a, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 5 uses
  %i.l = load ptr, ptr %i.i, align 8              ; 10 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 4 uses
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = ashr exact i64 %i.o, 3                   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8
  %.not.i = icmp eq ptr %i.k, %i.r
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %i.k, align 8
  %i.s = load ptr, ptr %i.j, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.t, ptr %i.j, align 8
  br label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12emplace_backIJRPS1_EEERS4_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.u = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.u, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #30
  unreachable

_ZNKSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.p
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 1152921504606846975)
  %i.y = select i1 %i.w, i64 1152921504606846975, i64 %i.x ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #31 ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.o
  store ptr %i.a, ptr %i.ab, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.l, %i.k
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.ac = sub i64 %i.m, %i.n
  %i.ad = add i64 %i.ac, -8                       ; 2 uses
  %i.ae = lshr i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ad, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader56, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ag = add i64 %i.m, -8
  %i.ah = sub i64 %i.ag, %i.n
  %i.ai = and i64 %i.ah, -8
  %i.aj = add i64 %i.ai, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aa, i64 %i.aj
  %scevgep52 = getelementptr i8, ptr %i.l, i64 %i.aj
  %bound0 = icmp ult ptr %i.aa, %scevgep52
  %bound1 = icmp ult ptr %i.l, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader56, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.af, 4611686018427387900     ; 3 uses
  %i.ak = shl i64 %n.vec, 3                       ; 2 uses
  %i.al = getelementptr i8, ptr %i.aa, i64 %i.ak  ; 2 uses
  %i.am = getelementptr i8, ptr %i.l, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.an ; 2 uses
  %next.gep53 = getelementptr i8, ptr %i.l, i64 %i.an ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.ao = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep53, align 8, !alias.scope !57, !noalias !52
  %wide.load54 = load <2 x i64>, ptr %i.ao, align 8, !alias.scope !57, !noalias !52
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !60, !noalias !57
  store <2 x i64> %wide.load54, ptr %i.ap, align 8, !alias.scope !60, !noalias !57
  %i.aq = getelementptr i8, ptr %next.gep53, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep53, align 8, !alias.scope !57, !noalias !52
  store <2 x ptr> splat (ptr null), ptr %i.aq, align 8, !alias.scope !57, !noalias !52
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader56

.lr.ph.i.i.i.i.i.preheader56:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aa, %vector.memcheck ], [ %i.aa, %.lr.ph.i.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.l, %vector.memcheck ], [ %i.l, %.lr.ph.i.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader56, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader56 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader56 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.as = load i64, ptr %.0911.i.i.i.i.i, align 8, !alias.scope !55, !noalias !52
  store i64 %i.as, ptr %.012.i.i.i.i.i, align 8, !alias.scope !52, !noalias !55
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !alias.scope !55, !noalias !52
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.at, %i.k
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !63

_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aa, %_ZNKSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.al, %middle.block ], [ %i.au, %.lr.ph.i.i.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJRPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  %i.aw = load ptr, ptr %i.q, align 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.ay) #29
  br label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJRPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJRPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  store ptr %i.aa, ptr %i.i, align 8
  store ptr %i.av, ptr %i.j, align 8
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.az, ptr %i.q, align 8
  br label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12emplace_backIJRPS1_EEERS4_DpOT_.exit

_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12emplace_backIJRPS1_EEERS4_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJRPS1_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %i.ba = tail call noundef ptr @_ZNK10ODDLParser7DDLNode13getPropertiesEv(ptr noundef nonnull align 8 dereferenceable(136) %1) ; 2 uses
  %.not = icmp eq ptr %i.ba, null
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE12emplace_backIJRPS1_EEERS4_DpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.bb, ptr %3, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.bc, align 8
  store i8 0, ptr %i.bb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.bd, ptr %4, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.be, align 8
  store i8 0, ptr %i.bd, align 8
  invoke fastcc void @_ZN6Assimp7OpenGEXL16propId2StdStringEPN10ODDLParser8PropertyERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_(ptr noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bf = load i64, ptr %i.bc, align 8
  %i.bg = icmp eq i64 %i.bf, 9
  br i1 %i.bg, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread31

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit: ; preds = %bb.g
  %i.bh = load ptr, ptr %3, align 8               ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 1
  %i.bj = xor i64 %i.bi, 8532478965186130544
  %i.bk = getelementptr i8, ptr %i.bh, i64 8
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = zext i8 %i.bl to i64
  %i.bn = xor i64 %i.bm, 101
end_hunk_1
begin_hunk_2_@_ZN6Assimp7OpenGEX15OpenGEXImporter17handleTextureNodeEPN10ODDLParser7DDLNodeEP7aiScene:bb.a

bb.r:                                             ; preds = %.sink.split, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c, %bb.r, %bb.d, %bb.a
  ret void
}

declare noundef ptr @_ZNK10ODDLParser7DDLNode9getParentEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #9

declare noundef ptr @_ZNK10ODDLParser7DDLNode13getPropertiesEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #9

declare noundef ptr @_ZNK10ODDLParser7DDLNode8getValueEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #9

declare noundef float @_ZNK10ODDLParser5Value8getFloatEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

declare noundef i32 @_ZN10ODDLParser5Value8getInt32Ev(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

declare noundef ptr @_ZNK10ODDLParser5Value9getStringEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  store ptr %1, ptr %i.a, align 8
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %2, align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #32
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #32
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #32
  resume { ptr, i32 } %i.p
}

declare noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.120", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.123", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE11lower_boundERS9_.exit, label %bb.b, !llvm.loop !18

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE11lower_boundERS9_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE11lower_boundERS9_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #32 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE11lower_boundERS9_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE11lower_boundERS9_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store ptr %1, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6Assimp7OpenGEXL11getRefNamesEPN10ODDLParser7DDLNodeERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.c = tail call noundef ptr @_ZNK10ODDLParser7DDLNode13getReferencesEv(ptr noundef nonnull align 8 dereferenceable(136) %0) ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %.not28 = icmp eq i64 %i.d, 0
  br i1 %.not28, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %i.j = phi i64 [ %i.d, %.lr.ph ], [ %i.bc, %bb.o ] ; 2 uses
  %.01327 = phi i64 [ 0, %.lr.ph ], [ %i.bd, %bb.o ] ; 2 uses
  %i.k = load ptr, ptr %i.e, align 8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.01327
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not16 = icmp eq ptr %i.m, null
  br i1 %.not16, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not17 = icmp eq ptr %i.o, null
  br i1 %.not17, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8              ; 4 uses
  store ptr %i.f, ptr %2, align 8
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.49) #30
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.s = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 %i.s, ptr %i.b, align 8
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.e
  %i.u = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.u, ptr %2, align 8
  %i.v = load i64, ptr %i.b, align 8
  store i64 %i.v, ptr %i.f, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.e
  %i.w = phi ptr [ %i.u, %.noexc.i ], [ %i.f, %bb.e ] ; 2 uses
  switch i64 %i.s, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.x = load i8, ptr %i.q, align 1
  store i8 %i.x, ptr %i.w, align 1
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr nonnull align 1 %i.q, i64 %i.s, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.y = load i64, ptr %i.b, align 8              ; 2 uses
  store i64 %i.y, ptr %i.g, align 8
  %i.z = load ptr, ptr %2, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 0, ptr %i.aa, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %i.ab = load i64, ptr %i.g, align 8
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr %i.h, align 8             ; 8 uses
  %i.ae = load ptr, ptr %i.i, align 8
  %.not.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 3 uses
  store ptr %i.af, ptr %i.ad, align 8
  %i.ag = load ptr, ptr %2, align 8               ; 2 uses
  %i.ah = load i64, ptr %i.g, align 8             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.ah, ptr %i.a, align 8
  %i.ai = icmp ugt i64 %i.ah, 15
  br i1 %i.ai, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.j
  %i.aj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc20 unwind label %bb.n   ; 2 uses

.noexc20:                                         ; preds = %.noexc.i.i
  store ptr %i.aj, ptr %i.ad, align 8
  %i.ak = load i64, ptr %i.a, align 8
  store i64 %i.ak, ptr %i.af, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc20, %bb.j
  %i.al = phi ptr [ %i.aj, %.noexc20 ], [ %i.af, %bb.j ] ; 2 uses
  switch i64 %i.ah, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.am = load i8, ptr %i.ag, align 1
  store i8 %i.am, ptr %i.al, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.l:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 1 %i.ag, i64 %i.ah, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.l, %bb.k, %._crit_edge.i.i.i
  %i.an = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.an, ptr %i.ao, align 8
  %i.ap = load ptr, ptr %i.ad, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store i8 0, ptr %i.aq, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.ar = load ptr, ptr %i.h, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store ptr %i.as, ptr %i.h, align 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.m:                                             ; preds = %bb.i
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %.noexc.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = load ptr, ptr %2, align 8               ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.f
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.aw = load i64, ptr %i.f, align 8
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.m, %bb.h
  %i.ay = load ptr, ptr %2, align 8               ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.f
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.ba = load i64, ptr %i.f, align 8
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %.pre = load i64, ptr %i.c, align 8
  br label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %i.at

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %bb.c, %bb.b
  %i.bc = phi i64 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %i.j, %bb.c ], [ %i.j, %bb.b ] ; 2 uses
  %i.bd = add nuw i64 %.01327, 1                  ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.bc
  br i1 %i.be, label %bb.b, label %.loopexit, !llvm.loop !69

.loopexit:                                        ; preds = %bb.o, %.preheader, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %i.f = load ptr, ptr %.05.i.i.i.i.i, align 8    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !38

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.b, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.b
  %i.l = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i.i, label %_ZNKSt14default_deleteIN6Assimp7OpenGEX15OpenGEXImporter7RefInfoEEclEPS3_.exit, label %bb.c

end_hunk_2
begin_hunk_3_@_ZN6Assimp7OpenGEX15OpenGEXImporter15handleLightNodeEPN10ODDLParser7DDLNodeEP7aiScene:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bc, ptr align 1 %.pre, i64 %i.az, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az
  store i8 0, ptr %i.bd, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.j, %bb.k
  %i.be = icmp eq ptr %.pre, %i.ao
  br i1 %i.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bf = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.bf)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bg = load i64, ptr %i.ao, align 8
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.bh) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.l:                                             ; preds = %_ZNSt6vectorIP7aiLightSaIS1_EE9push_backERKS1_.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 1144) #29
  resume { ptr, i32 } %i.bi
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp7OpenGEX15OpenGEXImporter17handleLightObjectEPN10ODDLParser7DDLNodeEP7aiScene(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(1132) ptr @_Znwm(i64 noundef 1132) #31 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1132) %i.c, i8 0, i64 1072, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1076
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.e, i8 0, i64 40, i1 false)
  store <4 x float> <float f0x40C90FDB, float f0x40C90FDB, float 0.000000e+00, float 0.000000e+00>, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %.not.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.i, align 8
  %i.l = load ptr, ptr %i.h, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.m, ptr %i.h, align 8
  br label %_ZNSt6vectorIP7aiLightSaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 6 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorIP7aiLightSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #30
  unreachable

_ZNKSt6vectorIP7aiLightSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #31 ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.q ; 2 uses
  store ptr %i.c, ptr %i.z, align 8
  %i.aa = icmp sgt i64 %i.q, 0
  br i1 %i.aa, label %bb.e, label %_ZNSt6vectorIP7aiLightSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIP7aiLightSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %i.n, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIP7aiLightSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP7aiLightSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIP7aiLightSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.not.i17.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP7aiLightSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIP7aiLightSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.q) #29
  br label %_ZNSt6vectorIP7aiLightSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP7aiLightSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIP7aiLightSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.y, ptr %i.g, align 8
  store ptr %i.ab, ptr %i.h, align 8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.ac, ptr %i.j, align 8
  br label %_ZNSt6vectorIP7aiLightSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP7aiLightSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.b, %_ZNSt6vectorIP7aiLightSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.ad = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK10ODDLParser7DDLNode7getNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(136) %1) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.ae, ptr %3, align 8
  %i.af = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load i64, ptr %i.ag, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 %i.ah, ptr %i.b, align 8
  %i.ai = icmp ugt i64 %i.ah, 15
  br i1 %i.ai, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt6vectorIP7aiLightSaIS1_EE9push_backERKS1_.exit
  %i.aj = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.aj, ptr %3, align 8
  %i.ak = load i64, ptr %i.b, align 8
  store i64 %i.ak, ptr %i.ae, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %_ZNSt6vectorIP7aiLightSaIS1_EE9push_backERKS1_.exit
  %i.al = phi ptr [ %i.aj, %.noexc.i ], [ %i.ae, %_ZNSt6vectorIP7aiLightSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  switch i64 %i.ah, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.am = load i8, ptr %i.af, align 1
  store i8 %i.am, ptr %i.al, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 1 %i.af, i64 %i.ah, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.g, %bb.h
  %i.an = load i64, ptr %i.b, align 8             ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.an, ptr %i.ao, align 8
  %i.ap = load ptr, ptr %3, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store i8 0, ptr %i.aq, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %i.ar = load i64, ptr %i.ao, align 8            ; 4 uses
  %i.as = add i64 %i.ar, -1024
  %or.cond = icmp ult i64 %i.as, -1023
  br i1 %or.cond, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.at = trunc nuw nsw i64 %i.ar to i32
  store i32 %i.at, ptr %i.c, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.av = load ptr, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.au, ptr align 1 %i.av, i64 %i.ar, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ar
  store i8 0, ptr %i.aw, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  store ptr %i.c, ptr %i.ax, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.ay, ptr %4, align 8
  store i32 1701869940, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 4, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i8 0, ptr %i.ba, align 4
  %i.bb = invoke noundef ptr @_ZN10ODDLParser7DDLNode18findPropertyByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.j unwind label %bb.s       ; 2 uses

bb.j:                                             ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bc = load ptr, ptr %4, align 8               ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.ay
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.be = load i64, ptr %i.ay, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %.not = icmp eq ptr %i.bb, null
  br i1 %.not, label %bb.w, label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %.not14 = icmp eq ptr %i.bh, null
  br i1 %.not14, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.bi = invoke noundef ptr @_ZNK10ODDLParser5Value9getStringEv(ptr noundef nonnull align 8 dereferenceable(32) %i.bh)
          to label %bb.m unwind label %bb.t       ; 4 uses

bb.m:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.bj, ptr %5, align 8
  %i.bk = icmp eq ptr %i.bi, null
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.49) #30
          to label %.noexc23 unwind label %bb.u

.noexc23:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bi) #32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.bl, ptr %i.a, align 8
  %i.bm = icmp ugt i64 %i.bl, 15
  br i1 %i.bm, label %.noexc.i22, label %._crit_edge.i.i21

.noexc.i22:                                       ; preds = %bb.o
  %i.bn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc24 unwind label %bb.u   ; 2 uses

.noexc24:                                         ; preds = %.noexc.i22
  store ptr %i.bn, ptr %5, align 8
  %i.bo = load i64, ptr %i.a, align 8
  store i64 %i.bo, ptr %i.bj, align 8
  br label %._crit_edge.i.i21

._crit_edge.i.i21:                                ; preds = %.noexc24, %bb.o
  %i.bp = phi ptr [ %i.bn, %.noexc24 ], [ %i.bj, %bb.o ] ; 2 uses
  switch i64 %i.bl, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i21
  %i.bq = load i8, ptr %i.bi, align 1
  store i8 %i.bq, ptr %i.bp, align 1
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i21
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr nonnull align 1 %i.bi, i64 %i.bl, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i.i21
  %i.br = load i64, ptr %i.a, align 8             ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.br, ptr %i.bs, align 8
  %i.bt = load ptr, ptr %5, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.br
  store i8 0, ptr %i.bu, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.bv = load i64, ptr %i.bs, align 8            ; 4 uses
  %.pre53 = load ptr, ptr %5, align 8             ; 6 uses
  switch i64 %i.bv, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit35.thread51 [
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit33
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit35
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit: ; preds = %bb.r
  %i.bw = load i32, ptr %.pre53, align 1
  %i.bx = xor i32 %i.bw, 1852403568
  %i.by = getelementptr i8, ptr %.pre53, i64 4
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = zext i8 %i.bz to i32
  %i.cb = xor i32 %i.ca, 116
  %i.cc = or i32 %i.bx, %i.cb
  %i.cd = icmp ne i32 %i.cc, 0
  %i.ce = zext i1 %i.cd to i32
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit35.thread51.sink.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit35.thread51

bb.s:                                             ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.cg = landingpad { ptr, i32 }
          cleanup
  %i.ch = load ptr, ptr %4, align 8               ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.ay
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.s
  %i.cj = load i64, ptr %i.ay, align 8
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.z

bb.t:                                             ; preds = %bb.l
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %.noexc.i22, %bb.n
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit33: ; preds = %bb.r
  %bcmp.i.i32 = call i32 @bcmp(ptr %.pre53, ptr nonnull @.str.13, i64 %i.bv)
  %i.cn = icmp eq i32 %bcmp.i.i32, 0
  br i1 %i.cn, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit35.thread51.sink.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit35.thread51

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit35: ; preds = %bb.r
  %bcmp.i.i34 = call i32 @bcmp(ptr %.pre53, ptr nonnull @.str.14, i64 %i.bv)
  %i.co = icmp eq i32 %bcmp.i.i34, 0
  br i1 %i.co, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit35.thread51.sink.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit35.thread51

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit35.thread51.sink.split: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit35, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit33, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit
  %.sink = phi i32 [ 2, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit ], [ 3, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit33 ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit35 ]
  %i.cp = load ptr, ptr %i.ax, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 1028
  store i32 %.sink, ptr %i.cq, align 4
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit35.thread51

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit35.thread51: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit35.thread51.sink.split, %bb.r, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit33, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit35
  %i.cr = icmp eq ptr %.pre53, %i.bj
  br i1 %i.cr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i37: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit35.thread51
  %i.cs = icmp ult i64 %i.bv, 16
  call void @llvm.assume(i1 %i.cs)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit35.thread51
  %i.ct = load i64, ptr %i.bj, align 8
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %.pre53, i64 noundef %i.cu) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn15 = phi { ptr, i32 } [ %i.cl, %bb.t ], [ %i.cm, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.z

bb.w:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN6Assimp7OpenGEX15OpenGEXImporter11handleNodesEPN10ODDLParser7DDLNodeEP7aiScene(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull %1, ptr noundef %2)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cv = load ptr, ptr %3, align 8               ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.ae
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.x
  %i.cx = load i64, ptr %i.ae, align 8
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.y:                                             ; preds = %bb.w
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.pn17 = phi { ptr, i32 } [ %i.cz, %bb.y ], [ %.pn15, %bb.v ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ]
  %i.da = load ptr, ptr %3, align 8               ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.ae
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.z
  %i.dc = load i64, ptr %i.ae, align 8
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %.pn17
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK10ODDLParser7DDLNode7getNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #9

declare noundef ptr @_ZN10ODDLParser7DDLNode18findPropertyByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

declare noundef ptr @_ZNK10ODDLParser7DDLNode16getDataArrayListEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6Assimp7OpenGEXL16propId2StdStringEPN10ODDLParser8PropertyERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
end_hunk_3
