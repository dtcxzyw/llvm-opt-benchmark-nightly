Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/OgreXmlSerializer?download=true
inline.NumInlined: 1996
inline.NumDeleted: 775
begin_hunk_0_@_ZN6Assimp4Ogre17OgreXmlSerializer9ReadBonesERN4pugi8xml_nodeEPNS0_8SkeletonE:bb.a
._crit_edge.i.i100:                               ; preds = %.noexc103, %bb.aq
  %i.fr = phi ptr [ %i.fp, %.noexc103 ], [ %i.o, %bb.aq ] ; 2 uses
  switch i64 %i.fn, label %bb.as [
    i64 1, label %bb.ar
    i64 0, label %bb.at
  ]

bb.ar:                                            ; preds = %._crit_edge.i.i100
  %i.fs = load i8, ptr %i.fl, align 1
  store i8 %i.fs, ptr %i.fr, align 1
  br label %bb.at

bb.as:                                            ; preds = %._crit_edge.i.i100
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fr, ptr nonnull align 1 %i.fl, i64 %i.fn, i1 false)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %._crit_edge.i.i100
  %i.ft = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.ft, ptr %i.p, align 8
  %i.fu = load ptr, ptr %15, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.ft
  store i8 0, ptr %i.fv, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.fw = load i64, ptr %i.p, align 8             ; 2 uses
  switch i64 %i.fw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread183 [
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit106
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit106: ; preds = %bb.at
  %i.fx = load ptr, ptr %15, align 8              ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 1
  %i.fz = icmp ne i64 %i.fy, 7957695015293251440
  %i.ga = zext i1 %i.fz to i32
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit106.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit106.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit106
  %i.gc = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.103)
          to label %bb.au unwind label %bb.bd

bb.au:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit106.thread
  store float %i.gc, ptr %i.eh, align 8
  %i.gd = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.104)
          to label %bb.av unwind label %bb.bd

bb.av:                                            ; preds = %bb.au
  store float %i.gd, ptr %i.ei, align 4
  %i.ge = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.105)
          to label %bb.aw unwind label %bb.bd

bb.aw:                                            ; preds = %bb.av
  store float %i.ge, ptr %i.ej, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread183

bb.ax:                                            ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, %bb.am
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.an, %.noexc.i101, %bb.ap
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit106
  %i.gg = load i64, ptr %i.fx, align 1
  %i.gh = icmp ne i64 %i.gg, 7957695015159099250
  %i.gi = zext i1 %i.gh to i32
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread183

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108
  %i.gk = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.80)
          to label %bb.ay unwind label %bb.bd

bb.ay:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  invoke void @_ZNK4pugi8xml_node8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.pugi::xml_object_range") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %i.fk)
          to label %bb.az unwind label %bb.bd

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  %i.gl = load <2 x ptr>, ptr %16, align 16
  store <2 x ptr> %i.gl, ptr %17, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  %i.gm = load <2 x ptr>, ptr %i.q, align 16
  store <2 x ptr> %i.gm, ptr %18, align 16
  %i.gn = fmul float %i.gk, 5.000000e-01          ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %bb.az
  %i.go = invoke noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %18)
          to label %bb.bb unwind label %bb.be

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.go, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread183

bb.bd:                                            ; preds = %.noexc142, %bb.cg, %.noexc139, %bb.cc, %.noexc136, %bb.by, %.noexc134, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit106.thread, %bb.au, %bb.av, %bb.ca, %bb.ce, %bb.ci, %bb.bw, %bb.ay
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %bb.ba
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bf:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  %i.gr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4pugi17xml_node_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bg:                                            ; preds = %bb.bf
  %i.gs = load i64, ptr %i.gr, align 8
  store i64 %i.gs, ptr %19, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  %i.gt = invoke noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.bh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.bh:                                            ; preds = %bb.bg
  store ptr %i.r, ptr %20, align 8
  %i.gu = icmp eq ptr %i.gt, null
  br i1 %i.gu, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.130) #29
          to label %.noexc121 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc121:                                        ; preds = %bb.bi
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.gv = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gt) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.gv, ptr %i.a, align 8
  %i.gw = icmp ugt i64 %i.gv, 15
  br i1 %i.gw, label %.noexc.i120, label %._crit_edge.i.i119

.noexc.i120:                                      ; preds = %bb.bj
  %i.gx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc122 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc122:                                        ; preds = %.noexc.i120
  store ptr %i.gx, ptr %20, align 8
  %i.gy = load i64, ptr %i.a, align 8
  store i64 %i.gy, ptr %i.r, align 8
  br label %._crit_edge.i.i119

._crit_edge.i.i119:                               ; preds = %.noexc122, %bb.bj
  %i.gz = phi ptr [ %i.gx, %.noexc122 ], [ %i.r, %bb.bj ] ; 2 uses
  switch i64 %i.gv, label %bb.bl [
    i64 1, label %bb.bk
    i64 0, label %bb.bm
  ]

bb.bk:                                            ; preds = %._crit_edge.i.i119
  %i.ha = load i8, ptr %i.gt, align 1
  store i8 %i.ha, ptr %i.gz, align 1
  br label %bb.bm

bb.bl:                                            ; preds = %._crit_edge.i.i119
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gz, ptr nonnull align 1 %i.gt, i64 %i.gv, i1 false)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %._crit_edge.i.i119
  %i.hb = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.hb, ptr %i.s, align 8
  %i.hc = load ptr, ptr %20, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.hb
  store i8 0, ptr %i.hd, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.he = load i64, ptr %i.s, align 8
  %i.hf = icmp eq i64 %i.he, 4
  br i1 %i.hf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125.thread182

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125: ; preds = %bb.bm
  %i.hg = load ptr, ptr %20, align 8
  %i.hh = load i32, ptr %i.hg, align 1
  %i.hi = icmp ne i32 %i.hh, 1936291937
  %i.hj = zext i1 %i.hi to i32
  %i.hk = icmp eq i32 %i.hj, 0
  br i1 %i.hk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125.thread182

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125
  %i.hl = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull @.str.103)
          to label %bb.bn unwind label %.loopexit.split-lp186.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.bn:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125.thread
  %i.hm = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull @.str.104)
          to label %bb.bo unwind label %.loopexit.split-lp186.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.bo:                                            ; preds = %bb.bn
  %i.hn = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull @.str.105)
          to label %21 unwind label %.loopexit.split-lp186.loopexit.split-lp.loopexit.split-lp ; 4 uses

21:                                               ; preds = %bb.bo
  %22 = fmul float %i.hm, %i.hm
  %23 = call float @llvm.fmuladd.f32(float %i.hl, float %i.hl, float %22)
  %24 = call noundef float @llvm.fmuladd.f32(float %i.hn, float %i.hn, float %23) ; 2 uses
  %25 = fcmp oeq float %24, 0.000000e+00
  br i1 %25, label %bb.bp, label %_ZN10aiVector3tIfEdVEf.exit.i.i

_ZN10aiVector3tIfEdVEf.exit.i.i:                  ; preds = %21
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %24)
  %26 = fdiv float 1.000000e+00, %sqrt.i.i.i      ; 3 uses
  %27 = fmul float %i.hl, %26
  %28 = fmul float %i.hm, %26
  %29 = fmul float %i.hn, %26
  br label %bb.bp

bb.bp:                                            ; preds = %_ZN10aiVector3tIfEdVEf.exit.i.i, %21
  %.sroa.0.4.vec.extract.pre-phi.i = phi float [ %i.hm, %21 ], [ %28, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %.sroa.0.0.vec.extract.pre-phi.i = phi float [ %i.hl, %21 ], [ %27, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %.sroa.7.0.i = phi float [ %i.hn, %21 ], [ %29, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %i.ho = call noundef float @sinf(float noundef %i.gn) #28
  %i.hp = call noundef float @cosf(float noundef %i.gn) #28
  %i.hq = insertelement <4 x float> poison, float %i.hp, i64 0
  %i.hr = insertelement <4 x float> %i.hq, float %.sroa.0.0.vec.extract.pre-phi.i, i64 1
  %i.hs = insertelement <4 x float> %i.hr, float %.sroa.0.4.vec.extract.pre-phi.i, i64 2
  %i.ht = insertelement <4 x float> %i.hs, float %.sroa.7.0.i, i64 3
  %i.hu = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.ho, i64 1
  %i.hv = shufflevector <4 x float> %i.hu, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.hw = fmul <4 x float> %i.ht, %i.hv
  store <4 x float> %i.hw, ptr %i.eg, align 4
  %i.hx = load ptr, ptr %20, align 8              ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.r
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %bb.bp
  %i.hz = load i64, ptr %i.r, align 8
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ia) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  %i.ib = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %bb.ba unwind label %bb.be     ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bg, %bb.bf, %.noexc.i120, %bb.bi
  %lpad.loopexit.split-lp350 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

.loopexit.split-lp186.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bo, %bb.bn, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125.thread, %bb.bq
  %lpad.loopexit.split-lp352 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125.thread182: ; preds = %bb.bm, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125
  %i.ic = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA45_KcRtEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ic, ptr noundef nonnull align 1 dereferenceable(45) @.str.88, ptr noundef nonnull align 2 dereferenceable(2) %i.dc)
          to label %bb.bq unwind label %bb.br

bb.bq:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125.thread182
  invoke void @__cxa_throw(ptr nonnull %i.ic, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.cs unwind label %.loopexit.split-lp186.loopexit.split-lp.loopexit.split-lp

bb.br:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125.thread182
  %i.id = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ic) #28
  br label %bb.bs

bb.bs:                                            ; preds = %.loopexit.split-lp186.loopexit.split-lp.loopexit.split-lp, %bb.br
  %.pn.pn = phi { ptr, i32 } [ %i.id, %bb.br ], [ %lpad.loopexit.split-lp352, %.loopexit.split-lp186.loopexit.split-lp.loopexit.split-lp ]
  %i.ie = load ptr, ptr %20, align 8              ; 2 uses
  %i.if = icmp eq ptr %i.ie, %i.r
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %bb.bs
  %i.ig = load i64, ptr %i.r, align 8
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ih) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br label %bb.bt

bb.bt:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131 ], [ %lpad.loopexit.split-lp350, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.be
  %.pn66 = phi { ptr, i32 } [ %i.gq, %bb.be ], [ %.pn.pn.pn.pn, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.ck

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133: ; preds = %bb.at
  %.pre = load ptr, ptr %15, align 8
  %bcmp.i132 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.127, i64 %i.fw)
  %i.ii = icmp eq i32 %bcmp.i132, 0
  br i1 %i.ii, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread183

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.ij = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.89)
          to label %.noexc134 unwind label %bb.bd

.noexc134:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread
  store ptr %i.ij, ptr %6, align 8
  %i.ik = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bv unwind label %bb.bd

bb.bv:                                            ; preds = %.noexc134
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br i1 %i.ik, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.il = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.89)
          to label %bb.bx unwind label %bb.bd     ; 3 uses

bb.bx:                                            ; preds = %bb.bw
  store float %i.il, ptr %i.ed, align 4
  store float %i.il, ptr %i.ee, align 8
  store float %i.il, ptr %i.ef, align 4
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread183

bb.by:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.im = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.103)
          to label %.noexc136 unwind label %bb.bd

.noexc136:                                        ; preds = %bb.by
  store ptr %i.im, ptr %5, align 8
  %i.in = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.bz unwind label %bb.bd

bb.bz:                                            ; preds = %.noexc136
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %i.in, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.io = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.103)
          to label %bb.cb unwind label %bb.bd

bb.cb:                                            ; preds = %bb.ca
  store float %i.io, ptr %i.ed, align 4
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.ip = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.104)
          to label %.noexc139 unwind label %bb.bd

.noexc139:                                        ; preds = %bb.cc
  store ptr %i.ip, ptr %4, align 8
  %i.iq = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.cd unwind label %bb.bd

bb.cd:                                            ; preds = %.noexc139
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %i.iq, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ir = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.104)
          to label %bb.cf unwind label %bb.bd

bb.cf:                                            ; preds = %bb.ce
  store float %i.ir, ptr %i.ee, align 8
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.is = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.105)
          to label %.noexc142 unwind label %bb.bd

.noexc142:                                        ; preds = %bb.cg
  store ptr %i.is, ptr %3, align 8
  %i.it = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.ch unwind label %bb.bd

bb.ch:                                            ; preds = %.noexc142
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %i.it, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread183, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.iu = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.105)
          to label %bb.cj unwind label %bb.bd

bb.cj:                                            ; preds = %bb.ci
  store float %i.iu, ptr %i.ef, align 4
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread183

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread183: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108, %bb.at, %bb.bc, %bb.bx, %bb.cj, %bb.ch, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133, %bb.aw
  %i.iv = load ptr, ptr %15, align 8              ; 2 uses
  %i.iw = icmp eq ptr %i.iv, %i.o
  br i1 %i.iw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread183
  %i.ix = load i64, ptr %i.o, align 8
  %i.iy = add i64 %i.ix, 1
  call void @_ZdlPvm(ptr noundef %i.iv, i64 noundef %i.iy) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread183, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  %i.iz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %bb.ac unwind label %bb.ax     ; 0 uses

bb.ck:                                            ; preds = %bb.bu, %bb.bd
  %.pn70 = phi { ptr, i32 } [ %i.gp, %bb.bd ], [ %.pn66, %bb.bu ] ; 2 uses
  %i.ja = load ptr, ptr %15, align 8              ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %i.o
  br i1 %i.jb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %bb.ck
  %i.jc = load i64, ptr %i.o, align 8
  %i.jd = add i64 %i.jc, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.jd) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %bb.ck, %.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148
  %.pn70.pn = phi { ptr, i32 } [ %.pn70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp ], [ %.pn70, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
end_hunk_0
begin_hunk_1_@_ZN6Assimp4Ogre17OgreXmlSerializer22ReadAnimationKeyFramesERN4pugi8xml_nodeEPNS0_9AnimationEPNS0_20VertexAnimationTrackE:bb.a
  %i.be = phi ptr [ %i.bc, %.noexc81 ], [ %i.k, %bb.p ] ; 2 uses
  switch i64 %i.ba, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i78
  %i.bf = load i8, ptr %i.ay, align 1
  store i8 %i.bf, ptr %i.be, align 1
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i78
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr nonnull align 1 %i.ay, i64 %i.ba, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i78
  %i.bg = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.bg, ptr %i.l, align 8
  %i.bh = load ptr, ptr %12, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bg
  store i8 0, ptr %i.bi, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.bj = load i64, ptr %i.l, align 8             ; 3 uses
  switch i64 %i.bj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread143 [
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84: ; preds = %bb.s
  %i.bk = load ptr, ptr %12, align 8              ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 1
  %i.bm = xor i64 %i.bl, 8386103224169493108
  %i.bn = getelementptr i8, ptr %i.bk, i64 8
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = zext i8 %i.bo to i64
  %i.bq = xor i64 %i.bp, 101
  %i.br = or i64 %i.bm, %i.bq
  %i.bs = icmp ne i64 %i.br, 0
  %i.bt = zext i1 %i.bs to i32
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread143

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84
  %i.bv = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.103)
          to label %bb.t unwind label %bb.ac

bb.t:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84.thread
  store float %i.bv, ptr %i.u, align 4
  %i.bw = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.104)
          to label %bb.u unwind label %bb.ac

bb.u:                                             ; preds = %bb.t
  store float %i.bw, ptr %i.v, align 4
  %i.bx = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.105)
          to label %bb.v unwind label %bb.ac

bb.v:                                             ; preds = %bb.u
  store float %i.bx, ptr %i.w, align 4
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread143

bb.w:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %bb.l
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.loopexit.split-lp150.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %.noexc.i79, %bb.o
  %lpad.loopexit.split-lp221 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86: ; preds = %bb.s
  %.pre = load ptr, ptr %12, align 8
  %bcmp.i85 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.125, i64 %i.bj)
  %i.bz = icmp eq i32 %bcmp.i85, 0
  br i1 %i.bz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread143

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86
  %i.ca = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.80)
          to label %bb.x unwind label %bb.ac      ; 2 uses

bb.x:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  invoke void @_ZNK4pugi8xml_node8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.pugi::xml_object_range") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.cb = load <2 x ptr>, ptr %13, align 16
  store <2 x ptr> %i.cb, ptr %14, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.cc = load <2 x ptr>, ptr %i.p, align 16
  store <2 x ptr> %i.cc, ptr %15, align 16
  %i.cd = fcmp une float %i.ca, 0.000000e+00
  %i.ce = fmul float %i.ca, 5.000000e-01          ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.y
  %i.cf = invoke noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %bb.aa unwind label %bb.ar

bb.aa:                                            ; preds = %bb.z
  br i1 %i.cf, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread143

bb.ac:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86.thread, %bb.av, %bb.au, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread, %bb.u, %bb.t, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84.thread, %bb.x
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ad:                                            ; preds = %bb.aa
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4pugi17xml_node_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %bb.ae unwind label %bb.ar     ; 4 uses

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %i.ci = invoke noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ch)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.af:                                            ; preds = %bb.ae
  store ptr %i.q, ptr %16, align 8
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.130) #29
          to label %.noexc99 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc99:                                         ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.ck = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ci) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.ck, ptr %i.a, align 8
  %i.cl = icmp ugt i64 %i.ck, 15
  br i1 %i.cl, label %.noexc.i98, label %._crit_edge.i.i97

.noexc.i98:                                       ; preds = %bb.ah
  %i.cm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc100 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc100:                                        ; preds = %.noexc.i98
  store ptr %i.cm, ptr %16, align 8
  %i.cn = load i64, ptr %i.a, align 8
  store i64 %i.cn, ptr %i.q, align 8
  br label %._crit_edge.i.i97

._crit_edge.i.i97:                                ; preds = %.noexc100, %bb.ah
  %i.co = phi ptr [ %i.cm, %.noexc100 ], [ %i.q, %bb.ah ] ; 2 uses
  switch i64 %i.ck, label %bb.aj [
    i64 1, label %bb.ai
    i64 0, label %bb.ak
  ]

bb.ai:                                            ; preds = %._crit_edge.i.i97
  %i.cp = load i8, ptr %i.ci, align 1
  store i8 %i.cp, ptr %i.co, align 1
  br label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.i.i97
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr nonnull align 1 %i.ci, i64 %i.ck, i1 false)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %._crit_edge.i.i97
  %i.cq = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.cq, ptr %i.r, align 8
  %i.cr = load ptr, ptr %16, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cq
  store i8 0, ptr %i.cs, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.ct = load i64, ptr %i.r, align 8
  %i.cu = icmp eq i64 %i.ct, 4
  %.pre194 = load ptr, ptr %16, align 8           ; 3 uses
  br i1 %i.cu, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread142

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103: ; preds = %bb.ak
  %i.cv = load i32, ptr %.pre194, align 1
  %i.cw = icmp ne i32 %i.cv, 1936291937
  %i.cx = zext i1 %i.cw to i32
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread142

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103
  %i.cz = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.103)
          to label %bb.al unwind label %bb.as     ; 2 uses

bb.al:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread
  %i.da = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.104)
          to label %bb.am unwind label %bb.as     ; 2 uses

bb.am:                                            ; preds = %bb.al
  %.sroa.0123.0.vec.insert = insertelement <2 x float> poison, float %i.cz, i64 0
  %.sroa.0123.4.vec.insert = insertelement <2 x float> %.sroa.0123.0.vec.insert, float %i.da, i64 1 ; 2 uses
  %i.db = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.105)
          to label %bb.an unwind label %bb.as     ; 5 uses

bb.an:                                            ; preds = %bb.am
  %i.dc = call noundef float @llvm.fabs.f32(float %i.cz)
  %i.dd = fcmp ole float %i.dc, f0x358637BD
  %i.de = call float @llvm.fabs.f32(float %i.da)
  %i.df = fcmp ole float %i.de, f0x358637BD
  %or.cond.not148 = and i1 %i.dd, %i.df
  %i.dg = call float @llvm.fabs.f32(float %i.db)
  %i.dh = fcmp ole float %i.dg, f0x358637BD
  %or.cond146 = and i1 %or.cond.not148, %i.dh
  br i1 %or.cond146, label %bb.ao, label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.thread

bb.ao:                                            ; preds = %bb.an
  %.sroa.0123.0.vec.insert126 = insertelement <2 x float> %.sroa.0123.4.vec.insert, float 1.000000e+00, i64 0 ; 2 uses
  br i1 %i.cd, label %bb.ap, label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.thread

bb.ap:                                            ; preds = %bb.ao
  %i.di = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN6Assimp6Logger4warnIJRA67_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.di, ptr noundef nonnull align 1 dereferenceable(67) @.str.81, ptr noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.thread unwind label %bb.as

bb.ar:                                            ; preds = %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ad
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ae, %.noexc.i98, %bb.ag
  %lpad.loopexit.split-lp219 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

bb.as:                                            ; preds = %bb.aq, %bb.ap, %bb.am, %bb.al, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dl = load ptr, ptr %16, align 8              ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.q
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNK10aiVector3tIfE5EqualERKS0_f.exit.thread:     ; preds = %bb.an, %bb.ao, %bb.aq
  %.sroa.0123.0 = phi <2 x float> [ %.sroa.0123.0.vec.insert126, %bb.aq ], [ %.sroa.0123.0.vec.insert126, %bb.ao ], [ %.sroa.0123.4.vec.insert, %bb.an ] ; 5 uses
  %.sroa.0.0.vec.extract8.i = extractelement <2 x float> %.sroa.0123.0, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.0123.0, %.sroa.0123.0
  %17 = extractelement <2 x float> %foldExtExtBinop, i64 1
  %18 = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract8.i, float %.sroa.0.0.vec.extract8.i, float %17)
  %19 = call noundef float @llvm.fmuladd.f32(float %i.db, float %i.db, float %18) ; 2 uses
  %20 = fcmp oeq float %19, 0.000000e+00
  br i1 %20, label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.thread.a, label %_ZN10aiVector3tIfEdVEf.exit.i.i

_ZN10aiVector3tIfEdVEf.exit.i.i:                  ; preds = %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.thread
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %19)
  %21 = fdiv float 1.000000e+00, %sqrt.i.i.i      ; 2 uses
  %22 = insertelement <2 x float> poison, float %21, i64 0
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> zeroinitializer
  %24 = fmul <2 x float> %.sroa.0123.0, %23
  %25 = fmul float %i.db, %21
  br label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.thread.a

_ZNK10aiVector3tIfE5EqualERKS0_f.exit.thread.a:   ; preds = %_ZN10aiVector3tIfEdVEf.exit.i.i, %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.thread
  %.sroa.7.0.i = phi float [ %i.db, %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.thread ], [ %25, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %26 = phi <2 x float> [ %.sroa.0123.0, %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.thread ], [ %24, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %i.dn = call noundef float @sinf(float noundef %i.ce) #28
  %i.do = call noundef float @cosf(float noundef %i.ce) #28
  %i.dp = insertelement <4 x float> poison, float %i.do, i64 0
  %27 = shufflevector <2 x float> %26, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %28 = shufflevector <4 x float> %i.dp, <4 x float> %27, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.dq = insertelement <4 x float> %28, float %.sroa.7.0.i, i64 3
  %29 = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.dn, i64 1
  %30 = shufflevector <4 x float> %29, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.dr = fmul <4 x float> %i.dq, %30
  store <4 x float> %i.dr, ptr %i.t, align 4
  %.pre193 = load ptr, ptr %16, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread142

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread142: ; preds = %bb.ak, %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.thread.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103
  %i.ds = phi ptr [ %.pre194, %bb.ak ], [ %.pre193, %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.thread.a ], [ %.pre194, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103 ] ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.q
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread142
  %i.du = load i64, ptr %i.q, align 8
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread142, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  %i.dw = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %bb.z unwind label %bb.ar      ; 0 uses

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %bb.as
  %i.dx = load i64, ptr %i.q, align 8
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dy) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %bb.as, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %lpad.loopexit.split-lp219, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.dk, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %.pn49 = phi { ptr, i32 } [ %i.dj, %bb.ar ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.ax

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108: ; preds = %bb.s
  %.pre192 = load ptr, ptr %12, align 8
  %bcmp.i107 = call i32 @bcmp(ptr %.pre192, ptr nonnull @.str.127, i64 %i.bj)
  %i.dz = icmp eq i32 %bcmp.i107, 0
  br i1 %i.dz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread143

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108
  %i.ea = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.103)
          to label %bb.au unwind label %bb.ac

bb.au:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread
  store float %i.ea, ptr %i.m, align 4
  %i.eb = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.104)
          to label %bb.av unwind label %bb.ac

bb.av:                                            ; preds = %bb.au
  store float %i.eb, ptr %i.n, align 4
  %i.ec = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.105)
          to label %bb.aw unwind label %bb.ac

bb.aw:                                            ; preds = %bb.av
  store float %i.ec, ptr %i.o, align 4
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread143

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread143: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84, %bb.s, %bb.ab, %bb.aw, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108, %bb.v
  %i.ed = load ptr, ptr %12, align 8              ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.k
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread143
  %i.ef = load i64, ptr %i.k, align 8
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.eh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.i unwind label %bb.w       ; 0 uses

bb.ax:                                            ; preds = %bb.at, %bb.ac
  %.pn53 = phi { ptr, i32 } [ %i.cg, %bb.ac ], [ %.pn49, %bb.at ] ; 2 uses
  %i.ei = load ptr, ptr %12, align 8              ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.k
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %bb.ax
  %i.ek = load i64, ptr %i.k, align 8
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %bb.ax, %.loopexit.split-lp150.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  %.pn53.pn = phi { ptr, i32 } [ %.pn53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112 ], [ %lpad.loopexit.split-lp221, %.loopexit.split-lp150.loopexit.split-lp.loopexit.split-lp ], [ %.pn53, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.ay

bb.ay:                                            ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
  %.pn57 = phi { ptr, i32 } [ %i.by, %bb.w ], [ %.pn53.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.bd

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139: ; preds = %bb.f, %bb.k, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.em = load ptr, ptr %i.y, align 8             ; 5 uses
  %i.en = load ptr, ptr %i.z, align 8
  %.not.i = icmp eq ptr %i.em, %i.en
  br i1 %.not.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.em, ptr noundef nonnull align 4 dereferenceable(44) %7, i64 44, i1 false)
  %i.eo = load ptr, ptr %i.y, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 44
  store ptr %i.ep, ptr %i.y, align 8
  br label %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE9push_backERKS2_.exit

bb.ba:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139
  %i.eq = load ptr, ptr %i.x, align 8             ; 5 uses
  %i.er = ptrtoint ptr %i.em to i64
  %i.es = ptrtoint ptr %i.eq to i64               ; 2 uses
  %i.et = sub i64 %i.er, %i.es                    ; 3 uses
  %i.eu = icmp eq i64 %i.et, 9223372036854775800
  br i1 %i.eu, label %bb.bb, label %_ZNKSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.134) #29
          to label %.noexc115 unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp

.noexc115:                                        ; preds = %bb.bb
  unreachable

_ZNKSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ba
  %i.ev = sdiv exact i64 %i.et, 44                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ev, i64 1)
  %i.ew = add nsw i64 %.sroa.speculated.i.i.i, %i.ev ; 2 uses
  %i.ex = icmp ult i64 %i.ew, %i.ev
  %i.ey = call i64 @llvm.umin.i64(i64 %i.ew, i64 209622091746699450)
  %i.ez = select i1 %i.ex, i64 209622091746699450, i64 %i.ey ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ez, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.fa = mul nuw nsw i64 %i.ez, 44
  %i.fb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fa) #32
          to label %.noexc116 unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc116:                                        ; preds = %_ZNKSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.et
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.fc, ptr noundef nonnull align 4 dereferenceable(44) %7, i64 44, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.eq, %i.em
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc116, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i ], [ %i.fb, %.noexc116 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.fd, %.lr.ph.i.i.i.i.i ], [ %i.eq, %.noexc116 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(44) %.0911.i.i.i.i.i, i64 44, i1 false), !alias.scope !98
  %i.fd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 44 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 44 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fd, %i.em
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !97

_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc116
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.fb, %.noexc116 ], [ %i.fe, %.lr.ph.i.i.i.i.i ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 44
  %.not.i23.i.i = icmp eq ptr %i.eq, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.fg = load ptr, ptr %i.z, align 8
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = sub i64 %i.fh, %i.es
  call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef %i.fi) #30
  br label %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.bc, %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.fb, ptr %i.x, align 8
  store ptr %i.ff, ptr %i.y, align 8
  %i.fj = getelementptr inbounds nuw [44 x i8], ptr %i.fb, i64 %i.ez
  store ptr %i.fj, ptr %i.z, align 8
  br label %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.az
  %i.fk = load ptr, ptr %8, align 8               ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.h
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE9push_backERKS2_.exit
  %i.fm = load i64, ptr %i.h, align 8
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fn) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE9push_backERKS2_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.fo = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %5) ; 0 uses
  %i.fp = call noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
  br i1 %i.fp, label %bb.b, label %._crit_edge

bb.bd:                                            ; preds = %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp, %bb.ay
  %.pn57.pn.pn = phi { ptr, i32 } [ %.pn57, %bb.ay ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp ]
  %i.fq = load ptr, ptr %8, align 8               ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.h
end_hunk_1
begin_hunk_2_@_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6Assimp4Ogre12PoseKeyFrameESt6vectorIS4_SaIS4_EEEEPS4_ET0_T_SD_SC_:bb.a
.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.017 = phi ptr [ %i.z, %bb.f ], [ %2, %bb.a ]  ; 6 uses
  %.sroa.09.016 = phi ptr [ %i.y, %bb.f ], [ %0, %bb.a ] ; 4 uses
  %i.a = load float, ptr %.sroa.09.016, align 8
  store float %i.a, ptr %.017, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %.017, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = icmp ugt i64 %i.i, 9223372036854775800
  br i1 %i.j, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN6Assimp4Ogre7PoseRefEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !12

.noexc.i.i.i.i:                                   ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN6Assimp4Ogre7PoseRefEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #32
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIN6Assimp4Ogre7PoseRefEE8allocateEmPKv.exit.i.i.i.i.i.i, %.lr.ph
  %i.l = phi ptr [ null, %.lr.ph ], [ %i.k, %_ZNSt15__new_allocatorIN6Assimp4Ogre7PoseRefEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 6 uses
  store ptr %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.017, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.017, i64 24
  store ptr %i.n, ptr %i.o, align 8
  %i.p = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.q = load ptr, ptr %i.d, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s                       ; 4 uses
  %i.u = icmp sgt i64 %i.t, 8
  br i1 %i.u, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %.noexc8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.l, ptr align 4 %i.p, i64 %i.t, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc8
  %i.v = icmp eq i64 %i.t, 8
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = load i64, ptr %i.p, align 4
  store i64 %i.w, ptr %i.l, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.x = getelementptr inbounds i8, ptr %i.l, i64 %i.t
  store ptr %i.x, ptr %i.m, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.017, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.y, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !267

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNSt15__new_allocatorIN6Assimp4Ogre7PoseRefEE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %lpad.loopexit.split-lp31 = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %lpad.loopexit.split-lp31, 0
  %i.ab = tail call ptr @__cxa_begin_catch(ptr %i.aa) #28 ; 0 uses
  invoke void @_ZSt8_DestroyIPN6Assimp4Ogre12PoseKeyFrameEEvT_S4_(ptr noundef %2, ptr noundef nonnull %.017)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp
  invoke void @__cxa_rethrow() #29
          to label %bb.k unwind label %bb.h

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.z, %bb.f ]
  ret ptr %.0.lcssa

bb.h:                                             ; preds = %bb.g, %.loopexit.split-lp.loopexit.split-lp
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.ac

bb.j:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #33
  unreachable

bb.k:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_NS_9Formatter15basic_formatterIcS5_S6_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = load ptr, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !276)
  call void @llvm.experimental.noalias.scope.decl(metadata !277)
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !alias.scope !280
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !alias.scope !280
  store i8 0, ptr %i.e, align 8, !alias.scope !280
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !280 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noalias !280 ; 2 uses
  %i.k = icmp ugt ptr %i.h, %i.j
  %.08.i.i.i.i.i = select i1 %i.k, ptr %i.h, ptr %i.j ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !noalias !280 ; 2 uses
  %i.n = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.m, i64 noundef %i.p)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %0, align 8, !alias.scope !280 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.e
  br i1 %i.t, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.u = load i64, ptr %i.e, align 8, !alias.scope !280
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #30
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.x = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.x, ptr %4, align 8
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.z = getelementptr i8, ptr %i.x, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %4, i64 %i.aa
  store ptr %i.y, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.ah = load i64, ptr %i.af, align 8
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #30
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ac, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aj) #28
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ak) #28
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #23

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_KcS8_ERA43_S9_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(43) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(13) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(43) %2) #28
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(43) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %6, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJRA13_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESB_EEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(13) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %6, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %6, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #30
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #28
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %6) #28
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRA13_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESB_EEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(13) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA13_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %5, ptr noundef nonnull align 1 dereferenceable(13) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %5, align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %5, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #30
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #28
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #28
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA13_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(13) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(13) %2) #28
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(13) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %4, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %4, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #30
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #28
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRtERA45_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(45) %2, ptr noundef nonnull align 2 dereferenceable(2) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(45) %2) #28
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(45) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJERtEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 2 dereferenceable(2) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %4, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %4, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #30
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #28
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJERtEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load i16, ptr %2, align 2
end_hunk_2
