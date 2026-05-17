inline.NumInlined: 1132
inline.NumDeleted: 755
begin_hunk_0_@_ZN6Assimp11MMDImporter10CreateMeshEPKN3pmx8PmxModelEii:bb.a
  br i1 %i.agp, label %.lr.ph659, label %._crit_edge660

.lr.ph659:                                        ; preds = %bb.cp
  %i.agq = getelementptr inbounds nuw i8, ptr %1, i64 216
  br label %bb.cs

._crit_edge660:                                   ; preds = %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread, %bb.cp
  %i.agr = load ptr, ptr %i.cm, align 8
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr noundef %i.agr)
          to label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEED2Ev.exit unwind label %bb.cq

bb.cq:                                            ; preds = %._crit_edge660
  %i.ags = landingpad { ptr, i32 }
          catch ptr null
  %i.agt = extractvalue { ptr, i32 } %i.ags, 0
  call void @__clang_call_terminate(ptr %i.agt) #26
  unreachable

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEED2Ev.exit: ; preds = %._crit_edge660
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  ret ptr %i.a

bb.cr:                                            ; preds = %._crit_edge653
  %i.agu = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.cs:                                            ; preds = %.lr.ph659, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread
  %i.agv = phi i32 [ %i.cy, %.lr.ph659 ], [ %i.ajh, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread ] ; 4 uses
  %indvars.iv712 = phi i64 [ 0, %.lr.ph659 ], [ %indvars.iv.next713, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread ] ; 5 uses
  %i.agw = invoke noalias noundef nonnull dereferenceable(1120) ptr @_Znwm(i64 noundef 1120) #25
          to label %bb.ct unwind label %bb.cy     ; 16 uses

bb.ct:                                            ; preds = %bb.cs
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 1056 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %i.agw, i8 0, i64 1056, i1 false)
  store float 1.000000e+00, ptr %i.agx, align 4
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agw, i64 1060 ; 2 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agw, i64 1076 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.agy, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.agz, align 4
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agw, i64 1080 ; 2 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agw, i64 1096 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aha, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ahb, align 4
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agw, i64 1100 ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agw, i64 1116 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ahc, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ahd, align 4
  %i.ahe = load ptr, ptr %i.agq, align 8
  %i.ahf = getelementptr inbounds nuw [176 x i8], ptr %i.ahe, i64 %indvars.iv712 ; 5 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 8
  %i.ahh = load i64, ptr %i.ahg, align 8          ; 4 uses
  %i.ahi = icmp ugt i64 %i.ahh, 1023
  br i1 %i.ahi, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ahj = trunc nuw nsw i64 %i.ahh to i32
  store i32 %i.ahj, ptr %i.agw, align 4
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.agw, i64 4 ; 2 uses
  %i.ahl = load ptr, ptr %i.ahf, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ahk, ptr align 1 %i.ahl, i64 %i.ahh, i1 false)
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahk, i64 %i.ahh
  store i8 0, ptr %i.ahm, align 1
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahf, i64 64
  %i.aho = load float, ptr %i.ahn, align 8
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahf, i64 68
  %i.ahq = load float, ptr %i.ahp, align 4
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahf, i64 72
  %i.ahs = load float, ptr %i.ahr, align 8
  %i.aht = fneg float %i.aho
  %i.ahu = fneg float %i.ahq
  %i.ahv = fneg float %i.ahs
  store float 1.000000e+00, ptr %i.agx, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.agy, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.agz, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aha, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ahb, align 4
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.agw, i64 1104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ahw, i8 0, i64 12, i1 false)
  store float 1.000000e+00, ptr %i.ahd, align 4
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.agw, i64 1068
  store float %i.aht, ptr %i.ahx, align 4
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.agw, i64 1084
  store float %i.ahu, ptr %i.ahy, align 4
  store float %i.ahv, ptr %i.ahc, align 4
  %i.ahz = load ptr, ptr %i.cm, align 8           ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.ahz, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.cv, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.ahz, %bb.cv ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.cl, %bb.cv ] ; 2 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.aib = load i32, ptr %i.aia, align 4
  %i.aic = sext i32 %i.aib to i64
  %i.aid = icmp sgt i64 %indvars.iv712, %i.aic    ; 3 uses
  %.19.i.i.i = select i1 %i.aid, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.aid, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i522 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i522, label %_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !29

_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.aie = icmp eq ptr %.19.i.i.i, %i.cl
  br i1 %i.aie, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit: ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.aid, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.aif = load i32, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.aig = sext i32 %i.aif to i64
  %i.aih = icmp slt i64 %indvars.iv712, %i.aig
  br i1 %i.aih, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit
  %i.aii = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40 ; 2 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 48
  %i.aik = load ptr, ptr %i.aij, align 8
  %i.ail = load ptr, ptr %i.aii, align 8
  %i.aim = ptrtoint ptr %i.aik to i64
  %i.ain = ptrtoint ptr %i.ail to i64
  %i.aio = sub i64 %i.aim, %i.ain
  %i.aip = ashr exact i64 %i.aio, 3               ; 2 uses
  %i.aiq = trunc i64 %i.aip to i32                ; 2 uses
  %i.air = getelementptr inbounds nuw i8, ptr %i.agw, i64 1028 ; 2 uses
  store i32 %i.aiq, ptr %i.air, align 4
  %i.ais = and i64 %i.aip, 4294967295             ; 2 uses
  %i.ait = shl nuw nsw i64 %i.ais, 3              ; 2 uses
  %i.aiu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ait) #25
          to label %bb.cx unwind label %bb.cz     ; 2 uses

bb.cx:                                            ; preds = %bb.cw
  %i.aiv = icmp eq i64 %i.ais, 0
  br i1 %i.aiv, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.cx
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aiu, i8 0, i64 %i.ait, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.cx
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.agw, i64 1048 ; 2 uses
  store ptr %i.aiu, ptr %i.aiw, align 8
  %.not = icmp eq i32 %i.aiq, 0
  br i1 %.not, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread, label %.lr.ph656

bb.cy:                                            ; preds = %bb.cs
  %i.aix = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.cz:                                            ; preds = %bb.cw
  %i.aiy = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

.lr.ph656:                                        ; preds = %.loopexit, %.lr.ph656
  %indvars.iv709 = phi i64 [ %indvars.iv.next710, %.lr.ph656 ], [ 0, %.loopexit ] ; 3 uses
  %i.aiz = load ptr, ptr %i.aii, align 8
  %i.aja = getelementptr inbounds nuw [8 x i8], ptr %i.aiz, i64 %indvars.iv709
  %i.ajb = load ptr, ptr %i.aiw, align 8
  %i.ajc = getelementptr inbounds nuw [8 x i8], ptr %i.ajb, i64 %indvars.iv709
  %i.ajd = load i64, ptr %i.aja, align 4
  store i64 %i.ajd, ptr %i.ajc, align 4
  %indvars.iv.next710 = add nuw nsw i64 %indvars.iv709, 1 ; 2 uses
  %i.aje = load i32, ptr %i.air, align 4
  %i.ajf = zext i32 %i.aje to i64
  %i.ajg = icmp samesign ult i64 %indvars.iv.next710, %i.ajf
  br i1 %i.ajg, label %.lr.ph656, label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread.loopexit, !llvm.loop !122

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread.loopexit: ; preds = %.lr.ph656
  %.pre = load i32, ptr %i.cx, align 8
  br label %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread

_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread: ; preds = %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread.loopexit, %.loopexit, %_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.cv, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit
  %i.ajh = phi i32 [ %.pre, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread.loopexit ], [ %i.agv, %.loopexit ], [ %i.agv, %_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i ], [ %i.agv, %bb.cv ], [ %i.agv, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit ] ; 2 uses
  %i.aji = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv712
  store ptr %i.agw, ptr %i.aji, align 8
  %indvars.iv.next713 = add nuw nsw i64 %indvars.iv712, 1 ; 2 uses
  %i.ajj = sext i32 %i.ajh to i64
  %i.ajk = icmp slt i64 %indvars.iv.next713, %i.ajj
  br i1 %i.ajk, label %bb.cs, label %._crit_edge660, !llvm.loop !123

bb.da:                                            ; preds = %.loopexit574, %.loopexit.split-lp, %.loopexit580, %.loopexit.split-lp581, %.loopexit585, %.loopexit.split-lp586, %.loopexit590, %.loopexit.split-lp591, %.loopexit575, %.loopexit.split-lp576, %bb.cy, %bb.cz, %bb.cr
  %.pn147.pn = phi { ptr, i32 } [ %i.agu, %bb.cr ], [ %lpad.loopexit.split-lp583, %.loopexit.split-lp581 ], [ %lpad.loopexit.split-lp578, %.loopexit.split-lp576 ], [ %i.aiy, %bb.cz ], [ %lpad.loopexit.split-lp593, %.loopexit.split-lp591 ], [ %lpad.loopexit.split-lp588, %.loopexit.split-lp586 ], [ %i.aix, %bb.cy ], [ %lpad.loopexit577, %.loopexit575 ], [ %lpad.loopexit592, %.loopexit590 ], [ %lpad.loopexit587, %.loopexit585 ], [ %lpad.loopexit582, %.loopexit580 ], [ %lpad.loopexit, %.loopexit574 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %30) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  resume { ptr, i32 } %.pn147.pn
}

declare void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN6Assimp11MMDImporter14CreateMaterialEPKN3pmx11PmxMaterialEPKNS1_8PmxModelE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.aiString, align 4           ; 5 uses
  %4 = alloca %struct.aiColor3D, align 16         ; 4 uses
  %5 = alloca %struct.aiColor3D, align 16         ; 4 uses
  %6 = alloca %struct.aiColor3D, align 16         ; 4 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %7 = alloca %struct.aiString, align 4           ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25 ; 11 uses
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.i, i8 0, i64 1024, i1 false)
  %i.j = and i64 %i.g, 4294966272
  %.not.i = icmp eq i64 %i.j, 0
  %spec.select.i = select i1 %.not.i, i32 %i.h, i32 1023 ; 2 uses
  store i32 %spec.select.i, ptr %3, align 4
  %i.k = load ptr, ptr %i.e, align 8
  %i.l = zext i32 %spec.select.i to i64           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.i, ptr align 1 %i.k, i64 %i.l, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  store i8 0, ptr %i.m, align 1
  %i.n = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %3, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  %8 = load <3 x float>, ptr %i.o, align 8
  store <3 x float> %8, ptr %4, align 16
  %i.p = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %4, i32 noundef 12, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  %9 = load <3 x float>, ptr %i.q, align 8
  store <3 x float> %9, ptr %5, align 16
  %i.r = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %5, i32 noundef 12, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 96
  %10 = load <3 x float>, ptr %i.s, align 8
  store <3 x float> %10, ptr %6, align 16
  %i.t = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %6, i32 noundef 12, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.v = load float, ptr %i.u, align 4
  store float %i.v, ptr %i.a, align 4
  %i.w = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef nonnull @.str.10, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.y = load float, ptr %i.x, align 4
  store float %i.y, ptr %i.b, align 4
  %i.z = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, -1
  br i1 %i.ac, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.ae = zext nneg i32 %i.ab to i64
  %i.af = load ptr, ptr %i.ad, align 8
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %i.ae ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ak, i8 0, i64 1024, i1 false)
  %i.al = and i64 %i.ai, 4294966272
  %.not.i25 = icmp eq i64 %i.al, 0
  %spec.select.i26 = select i1 %.not.i25, i32 %i.aj, i32 1023 ; 2 uses
  store i32 %spec.select.i26, ptr %7, align 4
  %i.am = load ptr, ptr %i.ag, align 8
  %i.an = zext i32 %spec.select.i26 to i64        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ak, ptr align 1 %i.am, i64 %i.an, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.an
  store i8 0, ptr %i.ao, align 1
  %i.ap = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %7, ptr noundef nonnull @.str.12, i32 noundef 1, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 16) #23
  resume { ptr, i32 } %i.aq

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i32 0, ptr %i.c, align 4
  %i.ar = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %i.c, i32 noundef 4, ptr noundef nonnull @.str.13, i32 noundef 1, i32 noundef 0, i32 noundef 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret ptr %i.d
}

declare void @_ZN6Assimp21MakeLeftHandedProcess7ExecuteEP7aiScene(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #4

declare void @_ZN6Assimp14FlipUVsProcessC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

declare void @_ZN6Assimp14FlipUVsProcess7ExecuteEP7aiScene(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #4

declare void @_ZN6Assimp23FlipWindingOrderProcess7ExecuteEP7aiScene(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6Assimp14FlipUVsProcessD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #26
  unreachable

_ZNSt8_Rb_treeIiSt4pairIKiSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessIiESaIS6_EED2Ev.exit: ; preds = %bb.a
  ret void
}

declare void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

declare noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp11MMDImporterD2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp11MMDImporterE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #23
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp12BaseImporterE, i64 16), ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n) #22
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i: ; preds = %bb.c, %_ZNSt6vectorIcSaIcEED2Ev.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp12BaseImporterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #23
  br label %_ZN6Assimp12BaseImporterD2Ev.exit

_ZN6Assimp12BaseImporterD2Ev.exit:                ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp11MMDImporterD0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp11MMDImporterE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #23, !inline_history !124
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #23, !inline_history !124
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit.i

_ZNSt6vectorIcSaIcEED2Ev.exit.i:                  ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp12BaseImporterE, i64 16), ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit.i
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n) #22, !inline_history !124
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i
end_hunk_0
