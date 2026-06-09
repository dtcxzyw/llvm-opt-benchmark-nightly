inline.NumInlined: 1996
inline.NumDeleted: 775
begin_hunk_0_@_ZN6Assimp4Ogre17OgreXmlSerializer22ReadAnimationKeyFramesERN4pugi8xml_nodeEPNS0_9AnimationEPNS0_20VertexAnimationTrackE:bb.a

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.at = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.79)
          to label %bb.g unwind label %.loopexit154

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  store float %i.at, ptr %7, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  invoke void @_ZNK4pugi8xml_node8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.pugi::xml_object_range") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.au = load <2 x ptr>, ptr %9, align 16
  store <2 x ptr> %i.au, ptr %10, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.av = load <2 x ptr>, ptr %i.j, align 16
  store <2 x ptr> %i.av, ptr %11, align 16
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %bb.h
  %i.aw = invoke noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  br i1 %i.aw, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139

.loopexit154:                                     ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZNKSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit156 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

.loopexit.split-lp155:                            ; preds = %bb.bi
  %lpad.loopexit.split-lp157 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.l:                                             ; preds = %bb.g
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %bb.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.n:                                             ; preds = %bb.j
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4pugi17xml_node_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.o unwind label %bb.y       ; 9 uses

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.ba = invoke noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.az)
          to label %bb.p unwind label %bb.z       ; 4 uses

bb.p:                                             ; preds = %bb.o
  store ptr %i.k, ptr %12, align 8
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.130) #29
          to label %.noexc80 unwind label %.loopexit.split-lp150

.noexc80:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ba) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.bc, ptr %i.b, align 8
  %i.bd = icmp ugt i64 %i.bc, 15
  br i1 %i.bd, label %.noexc.i79, label %._crit_edge.i.i78

.noexc.i79:                                       ; preds = %bb.r
  %i.be = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc81 unwind label %.loopexit149 ; 2 uses

.noexc81:                                         ; preds = %.noexc.i79
  store ptr %i.be, ptr %12, align 8
  %i.bf = load i64, ptr %i.b, align 8
  store i64 %i.bf, ptr %i.k, align 8
  br label %._crit_edge.i.i78

._crit_edge.i.i78:                                ; preds = %.noexc81, %bb.r
  %i.bg = phi ptr [ %i.be, %.noexc81 ], [ %i.k, %bb.r ] ; 2 uses
  switch i64 %i.bc, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %._crit_edge.i.i78
  %i.bh = load i8, ptr %i.ba, align 1
  store i8 %i.bh, ptr %i.bg, align 1
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i78
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr nonnull align 1 %i.ba, i64 %i.bc, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i78
  %i.bi = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.bi, ptr %i.l, align 8
  %i.bj = load ptr, ptr %12, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi
  store i8 0, ptr %i.bk, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.bl = load i64, ptr %i.l, align 8             ; 3 uses
  switch i64 %i.bl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread143 [
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84: ; preds = %bb.u
  %i.bm = load ptr, ptr %12, align 8              ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 1
  %i.bo = xor i64 %i.bn, 8386103224169493108
  %i.bp = getelementptr i8, ptr %i.bm, i64 8
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = zext i8 %i.bq to i64
  %i.bs = xor i64 %i.br, 101
  %i.bt = or i64 %i.bo, %i.bs
  %i.bu = icmp ne i64 %i.bt, 0
  %i.bv = zext i1 %i.bu to i32
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread143

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84
  %i.bx = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.103)
          to label %bb.v unwind label %bb.aa

bb.v:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84.thread
  store float %i.bx, ptr %i.u, align 4
  %i.by = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.104)
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %bb.v
  store float %i.by, ptr %i.v, align 4
  %i.bz = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.105)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %bb.w
  store float %i.bz, ptr %i.w, align 4
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread143

bb.y:                                             ; preds = %bb.n
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.z:                                             ; preds = %bb.o
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

.loopexit149:                                     ; preds = %.noexc.i79
  %lpad.loopexit151 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

.loopexit.split-lp150:                            ; preds = %bb.q
  %lpad.loopexit.split-lp152 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

bb.aa:                                            ; preds = %bb.bc, %bb.bb, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread, %bb.w, %bb.v, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84.thread
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86: ; preds = %bb.u
  %.pre = load ptr, ptr %12, align 8
  %bcmp.i85 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.125, i64 %i.bl)
  %i.cd = icmp eq i32 %bcmp.i85, 0
  br i1 %i.cd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread143

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86
  %i.ce = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.80)
          to label %bb.ab unwind label %bb.ag     ; 2 uses

bb.ab:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  invoke void @_ZNK4pugi8xml_node8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.pugi::xml_object_range") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %i.az)
          to label %bb.ac unwind label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.cf = load <2 x ptr>, ptr %13, align 16
  store <2 x ptr> %i.cf, ptr %14, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.cg = load <2 x ptr>, ptr %i.p, align 16
  store <2 x ptr> %i.cg, ptr %15, align 16
  %17 = fcmp oeq float %i.ce, 0.000000e+00
  %i.ch = fmul float %i.ce, 5.000000e-01          ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ac
  %i.ci = invoke noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.ci, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread143

bb.ag:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86.thread
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.ah:                                            ; preds = %bb.ab
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ad
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.aj:                                            ; preds = %bb.ae
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4pugi17xml_node_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %bb.ak unwind label %bb.aw     ; 4 uses

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %i.cn = invoke noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cm)
          to label %bb.al unwind label %bb.ax     ; 4 uses

bb.al:                                            ; preds = %bb.ak
  store ptr %i.q, ptr %16, align 8
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.130) #29
          to label %.noexc99 unwind label %.loopexit.split-lp

.noexc99:                                         ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.cp = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cn) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.cp, ptr %i.a, align 8
  %i.cq = icmp ugt i64 %i.cp, 15
  br i1 %i.cq, label %.noexc.i98, label %._crit_edge.i.i97

.noexc.i98:                                       ; preds = %bb.an
  %i.cr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc100 unwind label %.loopexit ; 2 uses

.noexc100:                                        ; preds = %.noexc.i98
  store ptr %i.cr, ptr %16, align 8
  %i.cs = load i64, ptr %i.a, align 8
  store i64 %i.cs, ptr %i.q, align 8
  br label %._crit_edge.i.i97

._crit_edge.i.i97:                                ; preds = %.noexc100, %bb.an
  %i.ct = phi ptr [ %i.cr, %.noexc100 ], [ %i.q, %bb.an ] ; 2 uses
  switch i64 %i.cp, label %bb.ap [
    i64 1, label %bb.ao
    i64 0, label %bb.aq
  ]

bb.ao:                                            ; preds = %._crit_edge.i.i97
  %i.cu = load i8, ptr %i.cn, align 1
  store i8 %i.cu, ptr %i.ct, align 1
  br label %bb.aq

bb.ap:                                            ; preds = %._crit_edge.i.i97
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ct, ptr nonnull align 1 %i.cn, i64 %i.cp, i1 false)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %._crit_edge.i.i97
  %i.cv = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.cv, ptr %i.r, align 8
  %i.cw = load ptr, ptr %16, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cv
  store i8 0, ptr %i.cx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.cy = load i64, ptr %i.r, align 8
  %i.cz = icmp eq i64 %i.cy, 4
  %.pre218 = load ptr, ptr %16, align 8           ; 3 uses
  br i1 %i.cz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread142

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103: ; preds = %bb.aq
  %i.da = load i32, ptr %.pre218, align 1
  %i.db = icmp ne i32 %i.da, 1936291937
  %i.dc = zext i1 %i.db to i32
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread142

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103
  %i.de = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull @.str.103)
          to label %bb.ar unwind label %bb.ay     ; 2 uses

bb.ar:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread
  %i.df = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull @.str.104)
          to label %bb.as unwind label %bb.ay     ; 5 uses

bb.as:                                            ; preds = %bb.ar
  %i.dg = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull @.str.105)
          to label %bb.at unwind label %bb.ay     ; 5 uses

bb.at:                                            ; preds = %bb.as
  %i.dh = call noundef float @llvm.fabs.f32(float %i.de)
  %18 = fcmp ugt float %i.dh, f0x358637BD
  %i.di = call float @llvm.fabs.f32(float %i.df)
  %19 = fcmp ugt float %i.di, f0x358637BD
  %or.cond.not140.not212 = or i1 %18, %19
  %i.dj = call float @llvm.fabs.f32(float %i.dg)
  %20 = fcmp ugt float %i.dj, f0x358637BD
  %or.cond138.not209 = or i1 %or.cond.not140.not212, %20 ; 2 uses
  %brmerge = or i1 %or.cond138.not209, %17
  %.mux = select i1 %or.cond138.not209, float %i.de, float 1.000000e+00
  br i1 %brmerge, label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dk = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN6Assimp6Logger4warnIJRA67_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.dk, ptr noundef nonnull align 1 dereferenceable(67) @.str.81, ptr noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.thread unwind label %bb.ay

bb.aw:                                            ; preds = %bb.aj
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ax:                                            ; preds = %bb.ak
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

.loopexit:                                        ; preds = %.noexc.i98
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

.loopexit.split-lp:                               ; preds = %bb.am
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

bb.ay:                                            ; preds = %bb.av, %bb.au, %bb.as, %bb.ar, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = load ptr, ptr %16, align 8              ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.q
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNK10aiVector3tIfE5EqualERKS0_f.exit.thread:     ; preds = %bb.at, %bb.av
  %.sroa.0124.0 = phi float [ 1.000000e+00, %bb.av ], [ %.mux, %bb.at ] ; 4 uses
  %21 = fmul float %i.df, %i.df
  %i.dq = call float @llvm.fmuladd.f32(float %.sroa.0124.0, float %.sroa.0124.0, float %21)
  %i.dr = call noundef float @llvm.fmuladd.f32(float %i.dg, float %i.dg, float %i.dq) ; 2 uses
  %i.ds = fcmp oeq float %i.dr, 0.000000e+00
  br i1 %i.ds, label %bb.az, label %_ZN10aiVector3tIfEdVEf.exit.i.i

_ZN10aiVector3tIfEdVEf.exit.i.i:                  ; preds = %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.thread
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.dr)
  %i.dt = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 3 uses
  %22 = fmul float %.sroa.0124.0, %i.dt
  %23 = fmul float %i.df, %i.dt
  %i.du = fmul float %i.dg, %i.dt
  br label %bb.az

bb.az:                                            ; preds = %_ZN10aiVector3tIfEdVEf.exit.i.i, %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.thread
  %.sroa.0.4.vec.extract.pre-phi.i = phi float [ %i.df, %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.thread ], [ %23, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %.sroa.7.0.i.a = phi float [ %.sroa.0124.0, %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.thread ], [ %22, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %.sroa.7.0.i = phi float [ %i.dg, %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.thread ], [ %i.du, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %i.dv = call noundef float @sinf(float noundef %i.ch) #28
  %i.dw = call noundef float @cosf(float noundef %i.ch) #28
  %i.dx = insertelement <4 x float> poison, float %i.dw, i64 0
  %24 = insertelement <4 x float> %i.dx, float %.sroa.7.0.i.a, i64 1
  %25 = insertelement <4 x float> %24, float %.sroa.0.4.vec.extract.pre-phi.i, i64 2
  %i.dy = insertelement <4 x float> %25, float %.sroa.7.0.i, i64 3
  %i.dz = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.dv, i64 1
  %i.ea = shufflevector <4 x float> %i.dz, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.eb = fmul <4 x float> %i.dy, %i.ea
  store <4 x float> %i.eb, ptr %i.t, align 4
  %.pre217 = load ptr, ptr %16, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread142

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread142: ; preds = %bb.aq, %bb.az, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103
  %i.ec = phi ptr [ %.pre218, %bb.aq ], [ %.pre217, %bb.az ], [ %.pre218, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103 ] ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.q
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread142
  %i.ee = load i64, ptr %i.q, align 8
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread142, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  %i.eg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %bb.ad unwind label %bb.ai     ; 0 uses

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %bb.ay
  %i.eh = load i64, ptr %i.q, align 8
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ei) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %bb.ay, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104, %bb.ax
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dm, %bb.ax ], [ %i.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.dn, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.ba

bb.ba:                                            ; preds = %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %bb.ai
  %.pn49 = phi { ptr, i32 } [ %i.cl, %bb.ai ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ], [ %i.dl, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.be

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108: ; preds = %bb.u
  %.pre216 = load ptr, ptr %12, align 8
  %bcmp.i107 = call i32 @bcmp(ptr %.pre216, ptr nonnull @.str.127, i64 %i.bl)
  %i.ej = icmp eq i32 %bcmp.i107, 0
  br i1 %i.ej, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread143

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108
  %i.ek = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.103)
          to label %bb.bb unwind label %bb.aa

bb.bb:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread
  store float %i.ek, ptr %i.m, align 4
  %i.el = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.104)
          to label %bb.bc unwind label %bb.aa

bb.bc:                                            ; preds = %bb.bb
  store float %i.el, ptr %i.n, align 4
  %i.em = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.105)
          to label %bb.bd unwind label %bb.aa

bb.bd:                                            ; preds = %bb.bc
  store float %i.em, ptr %i.o, align 4
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread143

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread143: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84, %bb.u, %bb.af, %bb.bd, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108, %bb.x
  %i.en = load ptr, ptr %12, align 8              ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.k
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread143
  %i.ep = load i64, ptr %i.k, align 8
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.er = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.i unwind label %bb.m       ; 0 uses

bb.be:                                            ; preds = %bb.ag, %bb.ba, %bb.ah, %bb.aa
  %.pn53 = phi { ptr, i32 } [ %i.cc, %bb.aa ], [ %i.cj, %bb.ag ], [ %.pn49, %bb.ba ], [ %i.ck, %bb.ah ] ; 2 uses
  %i.es = load ptr, ptr %12, align 8              ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.k
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %bb.be
  %i.eu = load i64, ptr %i.k, align 8
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %bb.be, %.loopexit149, %.loopexit.split-lp150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112, %bb.z
  %.pn53.pn = phi { ptr, i32 } [ %i.cb, %bb.z ], [ %.pn53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112 ], [ %lpad.loopexit.split-lp152, %.loopexit.split-lp150 ], [ %lpad.loopexit151, %.loopexit149 ], [ %.pn53, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.bf

bb.bf:                                            ; preds = %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %bb.m
  %.pn57 = phi { ptr, i32 } [ %i.ay, %bb.m ], [ %.pn53.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ], [ %i.ca, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.bk

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139: ; preds = %bb.f, %bb.k, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ew = load ptr, ptr %i.y, align 8             ; 5 uses
  %i.ex = load ptr, ptr %i.z, align 8
  %.not.i = icmp eq ptr %i.ew, %i.ex
  br i1 %.not.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.ew, ptr noundef nonnull align 4 dereferenceable(44) %7, i64 44, i1 false)
  %i.ey = load ptr, ptr %i.y, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 44
  store ptr %i.ez, ptr %i.y, align 8
  br label %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE9push_backERKS2_.exit

bb.bh:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139
  %i.fa = load ptr, ptr %i.x, align 8             ; 5 uses
  %i.fb = ptrtoint ptr %i.ew to i64
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = sub i64 %i.fb, %i.fc                    ; 4 uses
  %i.fe = icmp eq i64 %i.fd, 9223372036854775800
  br i1 %i.fe, label %bb.bi, label %_ZNKSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.134) #29
          to label %.noexc115 unwind label %.loopexit.split-lp155

.noexc115:                                        ; preds = %bb.bi
  unreachable

_ZNKSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bh
  %i.ff = sdiv exact i64 %i.fd, 44                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ff, i64 1)
  %i.fg = add nsw i64 %.sroa.speculated.i.i.i, %i.ff ; 2 uses
  %i.fh = icmp ult i64 %i.fg, %i.ff
  %i.fi = call i64 @llvm.umin.i64(i64 %i.fg, i64 209622091746699450)
  %i.fj = select i1 %i.fh, i64 209622091746699450, i64 %i.fi ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fj, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.fk = mul nuw nsw i64 %i.fj, 44
  %i.fl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fk) #32
          to label %.noexc116 unwind label %.loopexit154 ; 5 uses

.noexc116:                                        ; preds = %_ZNKSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.fm, ptr noundef nonnull align 4 dereferenceable(44) %7, i64 44, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.fa, %i.ew
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc116, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i ], [ %i.fl, %.noexc116 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.fn, %.lr.ph.i.i.i.i.i ], [ %i.fa, %.noexc116 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(44) %.0911.i.i.i.i.i, i64 44, i1 false), !alias.scope !90
  %i.fn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 44 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 44 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fn, %i.ew
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !94

_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc116
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.fl, %.noexc116 ], [ %i.fo, %.lr.ph.i.i.i.i.i ]
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 44
  %.not.i23.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef %i.fd) #30
  br label %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.bj, %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.fl, ptr %i.x, align 8
  store ptr %i.fp, ptr %i.y, align 8
  %i.fq = getelementptr inbounds nuw [44 x i8], ptr %i.fl, i64 %i.fj
  store ptr %i.fq, ptr %i.z, align 8
  br label %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.bg
  %i.fr = load ptr, ptr %8, align 8               ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.h
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE9push_backERKS2_.exit
  %i.ft = load i64, ptr %i.h, align 8
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE9push_backERKS2_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.fv = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %5) ; 0 uses
  %i.fw = call noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
  br i1 %i.fw, label %bb.b, label %._crit_edge

bb.bk:                                            ; preds = %.loopexit154, %.loopexit.split-lp155, %bb.l, %bb.bf
  %.pn57.pn.pn = phi { ptr, i32 } [ %i.ax, %bb.l ], [ %.pn57, %bb.bf ], [ %lpad.loopexit156, %.loopexit154 ], [ %lpad.loopexit.split-lp157, %.loopexit.split-lp155 ]
  %i.fx = load ptr, ptr %8, align 8               ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.h
end_hunk_0
