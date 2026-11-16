Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/OgreXmlSerializer?download=true
inline.NumInlined: 1996
inline.NumDeleted: 775
begin_hunk_0_@_ZN6Assimp4Ogre17OgreXmlSerializer9ReadBonesERN4pugi8xml_nodeEPNS0_8SkeletonE:bb.a
  %i.ao = load i16, ptr %i.an, align 8
  %i.ap = icmp ult i16 %i.ai, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %i.aq = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %i.an, %bb.f ]
  %.sroa.0.010.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.pn20.i.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i.i = phi ptr [ %.sroa.0.010.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.021.i.ptr.i, %bb.f ]
  store ptr %i.aq, ptr %.sroa.05.09.i.i.i, align 8
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i, i64 -8 ; 2 uses
  %i.ar = load ptr, ptr %.sroa.0.0.i.i.i, align 8 ; 2 uses
  %i.as = load i16, ptr %i.ag, align 8
  %i.at = load i16, ptr %i.ar, align 8
  %i.au = icmp ult i16 %i.as, %i.at
  br i1 %i.au, label %.lr.ph.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i, !llvm.loop !267

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.f, %bb.e, %bb.d
  %.sink.i.i = phi ptr [ %i.v, %bb.e ], [ %i.v, %bb.d ], [ %.sroa.0.021.i.ptr.i, %bb.f ], [ %.sroa.0.010.i.i.i, %.lr.ph.i.i.i ]
  store ptr %i.ag, ptr %.sink.i.i, align 8
  %.sroa.0.021.i.add.i = add nuw nsw i64 %.sroa.0.021.i.idx.i, 8 ; 2 uses
  %.not.i.i157 = icmp eq i64 %.sroa.0.021.i.add.i, 128
  br i1 %.not.i.i157, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_SG_T0_.exit.i, label %.lr.ph.i.i, !llvm.loop !268

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_SG_T0_.exit.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 128 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.av, %i.x
  br i1 %.not7.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEEPFbS5_S5_EEvT_SD_T0_.exit, label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_SG_T0_.exit.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIPFbS5_S5_EEEEvT_T0_.exit.i.i
  %.sroa.0.08.i.i = phi ptr [ %i.bg, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIPFbS5_S5_EEEEvT_T0_.exit.i.i ], [ %i.av, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_SG_T0_.exit.i ] ; 5 uses
  %i.aw = load ptr, ptr %.sroa.0.08.i.i, align 8  ; 3 uses
  %.sroa.0.08.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i.i, i64 -8 ; 2 uses
  %i.ax = load ptr, ptr %.sroa.0.08.i.i.i, align 8 ; 2 uses
  %i.ay = load i16, ptr %i.aw, align 8
  %i.az = load i16, ptr %i.ax, align 8
  %i.ba = icmp ult i16 %i.ay, %i.az
  br i1 %i.ba, label %.lr.ph.i.i12.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIPFbS5_S5_EEEEvT_T0_.exit.i.i

.lr.ph.i.i12.i:                                   ; preds = %.lr.ph.i10.i, %.lr.ph.i.i12.i
  %i.bb = phi ptr [ %i.bc, %.lr.ph.i.i12.i ], [ %i.ax, %.lr.ph.i10.i ]
  %.sroa.0.010.i.i13.i = phi ptr [ %.sroa.0.0.i.i15.i, %.lr.ph.i.i12.i ], [ %.sroa.0.08.i.i.i, %.lr.ph.i10.i ] ; 3 uses
  %.sroa.05.09.i.i14.i = phi ptr [ %.sroa.0.010.i.i13.i, %.lr.ph.i.i12.i ], [ %.sroa.0.08.i.i, %.lr.ph.i10.i ]
  store ptr %i.bb, ptr %.sroa.05.09.i.i14.i, align 8
  %.sroa.0.0.i.i15.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i13.i, i64 -8 ; 2 uses
  %i.bc = load ptr, ptr %.sroa.0.0.i.i15.i, align 8 ; 2 uses
  %i.bd = load i16, ptr %i.aw, align 8
  %i.be = load i16, ptr %i.bc, align 8
  %i.bf = icmp ult i16 %i.bd, %i.be
  br i1 %i.bf, label %.lr.ph.i.i12.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIPFbS5_S5_EEEEvT_T0_.exit.i.i, !llvm.loop !267

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIPFbS5_S5_EEEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i12.i, %.lr.ph.i10.i
  %.sroa.05.0.lcssa.i.i.i = phi ptr [ %.sroa.0.08.i.i, %.lr.ph.i10.i ], [ %.sroa.0.010.i.i13.i, %.lr.ph.i.i12.i ]
  store ptr %i.aw, ptr %.sroa.05.0.lcssa.i.i.i, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i, i64 8 ; 2 uses
  %.not.i11.i = icmp eq ptr %i.bg, %i.x
  br i1 %.not.i11.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEEPFbS5_S5_EEvT_SD_T0_.exit, label %.lr.ph.i10.i, !llvm.loop !269

bb.g:                                             ; preds = %bb.b
  %.not19.i18.i = icmp eq ptr %scevgep.i, %i.x
  br i1 %.not19.i18.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEEPFbS5_S5_EEvT_SD_T0_.exit, label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %bb.g, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i22.i
  %.sroa.0.021.i20.i = phi ptr [ %.sroa.0.0.i24.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i22.i ], [ %scevgep.i, %bb.g ] ; 6 uses
  %.pn20.i21.i = phi ptr [ %.sroa.0.021.i20.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i22.i ], [ %i.v, %bb.g ] ; 4 uses
  %i.bh = load ptr, ptr %.sroa.0.021.i20.i, align 8 ; 3 uses
  %i.bi = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.bj = load i16, ptr %i.bh, align 8            ; 2 uses
  %i.bk = load i16, ptr %i.bi, align 8
  %i.bl = icmp ult i16 %i.bj, %i.bk
  br i1 %i.bl, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph.i19.i
  %i.bm = ptrtoint ptr %.sroa.0.021.i20.i to i64
  %i.bn = sub i64 %i.bm, %i.z                     ; 3 uses
  %i.bo = ashr exact i64 %i.bn, 3                 ; 2 uses
  %i.bp = icmp sgt i64 %i.bo, 1
  br i1 %i.bp, label %bb.i, label %bb.j, !prof !142

bb.i:                                             ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn20.i21.i, i64 16
  %i.br = sub nsw i64 0, %i.bo
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.br
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bs, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.bn, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i22.i

bb.j:                                             ; preds = %bb.h
  %i.bt = icmp eq i64 %i.bn, 8
  br i1 %i.bt, label %bb.k, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i22.i

bb.k:                                             ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %.pn20.i21.i, i64 8
  store ptr %i.bi, ptr %i.bu, align 8
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i22.i

bb.l:                                             ; preds = %.lr.ph.i19.i
  %i.bv = load ptr, ptr %.pn20.i21.i, align 8     ; 2 uses
  %i.bw = load i16, ptr %i.bv, align 8
  %i.bx = icmp ult i16 %i.bj, %i.bw
  br i1 %i.bx, label %.lr.ph.i.i26.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i22.i

.lr.ph.i.i26.i:                                   ; preds = %bb.l, %.lr.ph.i.i26.i
  %i.by = phi ptr [ %i.bz, %.lr.ph.i.i26.i ], [ %i.bv, %bb.l ]
  %.sroa.0.010.i.i27.i = phi ptr [ %.sroa.0.0.i.i29.i, %.lr.ph.i.i26.i ], [ %.pn20.i21.i, %bb.l ] ; 3 uses
  %.sroa.05.09.i.i28.i = phi ptr [ %.sroa.0.010.i.i27.i, %.lr.ph.i.i26.i ], [ %.sroa.0.021.i20.i, %bb.l ]
  store ptr %i.by, ptr %.sroa.05.09.i.i28.i, align 8
  %.sroa.0.0.i.i29.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i27.i, i64 -8 ; 2 uses
  %i.bz = load ptr, ptr %.sroa.0.0.i.i29.i, align 8 ; 2 uses
  %i.ca = load i16, ptr %i.bh, align 8
  %i.cb = load i16, ptr %i.bz, align 8
  %i.cc = icmp ult i16 %i.ca, %i.cb
  br i1 %i.cc, label %.lr.ph.i.i26.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i22.i, !llvm.loop !267

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i22.i: ; preds = %.lr.ph.i.i26.i, %bb.l, %bb.k, %bb.j, %bb.i
  %.sink.i23.i = phi ptr [ %i.v, %bb.k ], [ %i.v, %bb.i ], [ %i.v, %bb.j ], [ %.sroa.0.021.i20.i, %bb.l ], [ %.sroa.0.010.i.i27.i, %.lr.ph.i.i26.i ]
  store ptr %i.bh, ptr %.sink.i23.i, align 8
  %.sroa.0.0.i24.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i20.i, i64 8 ; 2 uses
  %.not.i25.i = icmp eq ptr %.sroa.0.0.i24.i, %i.x
  br i1 %.not.i25.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEEPFbS5_S5_EEvT_SD_T0_.exit, label %.lr.ph.i19.i, !llvm.loop !268

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEEPFbS5_S5_EEvT_SD_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i22.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIPFbS5_S5_EEEEvT_T0_.exit.i.i, %bb.g, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN6Assimp4Ogre4BoneESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIPFbS5_S5_EEEEvT_SG_T0_.exit.i, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 0, ptr %i.d, align 8
  %i.cd = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.ce = load ptr, ptr %2, align 8               ; 2 uses
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = ashr exact i64 %i.ch, 3
  %.not313 = icmp eq ptr %i.cd, %i.ce
  br i1 %.not313, label %._crit_edge261, label %.lr.ph260

bb.m:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
  %i.cj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4pugi17xml_node_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %8) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.ck = call noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cj) ; 4 uses
  store ptr %i.j, ptr %10, align 8
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.130) #29
          to label %.noexc unwind label %.loopexit.split-lp196.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.cm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ck) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i64 %i.cm, ptr %i.c, align 8
  %i.cn = icmp ugt i64 %i.cm, 15
  br i1 %i.cn, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.o
  %i.co = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc86 unwind label %.loopexit.split-lp196.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc86:                                         ; preds = %.noexc.i
  store ptr %i.co, ptr %10, align 8
  %i.cp = load i64, ptr %i.c, align 8
  store i64 %i.cp, ptr %i.j, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc86, %bb.o
  %i.cq = phi ptr [ %i.co, %.noexc86 ], [ %i.j, %bb.o ] ; 2 uses
  switch i64 %i.cm, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.cr = load i8, ptr %i.ck, align 1
  store i8 %i.cr, ptr %i.cq, align 1
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr nonnull align 1 %i.ck, i64 %i.cm, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i.i
  %i.cs = load i64, ptr %i.c, align 8             ; 2 uses
  store i64 %i.cs, ptr %i.k, align 8
  %i.ct = load ptr, ptr %10, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cs
  store i8 0, ptr %i.cu, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.cv = load i64, ptr %i.k, align 8
  %i.cw = icmp eq i64 %i.cv, 4
  br i1 %i.cw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE9push_backERKS3_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.r
  %i.cx = load ptr, ptr %10, align 8
  %i.cy = load i32, ptr %i.cx, align 1
  %i.cz = icmp ne i32 %i.cy, 1701736290
  %i.da = zext i1 %i.cz to i32
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE9push_backERKS3_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.dc = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #32
          to label %bb.s unwind label %.loopexit.split-lp201.loopexit.split-lp.loopexit.split-lp ; 21 uses

bb.s:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  invoke void @_ZN6Assimp4Ogre4BoneC1Ev(ptr noundef nonnull align 8 dereferenceable(248) %i.dc)
          to label %bb.t unwind label %bb.ak

bb.t:                                             ; preds = %bb.s
  %i.dd = invoke noundef zeroext i16 @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeItEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull @.str.87)
          to label %bb.u unwind label %.loopexit.split-lp201.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  store i16 %i.dd, ptr %i.dc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  invoke void @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RN4pugi8xml_nodeEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull @.str.13)
          to label %bb.v unwind label %bb.al

bb.v:                                             ; preds = %bb.u
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 4 uses
  %i.df = load ptr, ptr %i.de, align 8            ; 6 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 24 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  %i.di = load ptr, ptr %11, align 8              ; 5 uses
  %i.dj = icmp eq ptr %i.di, %i.l                 ; 2 uses
  br i1 %i.dh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.v
  br i1 %i.dj, label %bb.w, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.v
  br i1 %i.dj, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.dk = load i64, ptr %i.m, align 8             ; 3 uses
  %i.dl = icmp ult i64 %i.dk, 16
  call void @llvm.assume(i1 %i.dl)
  switch i64 %i.dk, label %bb.y [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  %i.dm = load i8, ptr %i.di, align 1
  store i8 %i.dm, ptr %i.df, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr align 1 %i.di, i64 %i.dk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.y, %bb.x, %bb.w
  %i.dn = load i64, ptr %i.m, align 8             ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store i64 %i.dn, ptr %i.do, align 8
  %i.dp = load ptr, ptr %i.de, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dn
  store i8 0, ptr %i.dq, align 1
  %.pre.i = load ptr, ptr %11, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store ptr %i.di, ptr %i.de, align 8
  %i.ds = load <2 x i64>, ptr %i.m, align 8
  store <2 x i64> %i.ds, ptr %i.dr, align 8
  br label %bb.aa

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.dt = load i64, ptr %i.dg, align 8
  store ptr %i.di, ptr %i.de, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.dv = load <2 x i64>, ptr %i.m, align 8
  store <2 x i64> %i.dv, ptr %i.du, align 8
  %.not.i = icmp eq ptr %i.df, null
  br i1 %.not.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.df, ptr %11, align 8
  store i64 %i.dt, ptr %i.l, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.l, ptr %11, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.z, %bb.aa
  %i.dw = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.df, %bb.z ], [ %i.l, %bb.aa ]
  store i64 0, ptr %i.m, align 8
  store i8 0, ptr %i.dw, align 1
  %i.dx = load ptr, ptr %11, align 8              ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.l
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.dz = load i64, ptr %i.l, align 8
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  invoke void @_ZNK4pugi8xml_node8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.pugi::xml_object_range") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.cj)
          to label %bb.ab unwind label %.loopexit.split-lp201.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.eb = load <2 x ptr>, ptr %12, align 16
  store <2 x ptr> %i.eb, ptr %13, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.ec = load <2 x ptr>, ptr %i.n, align 16
  store <2 x ptr> %i.ec, ptr %14, align 16
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dc, i64 108 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dc, i64 112 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dc, i64 116 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dc, i64 92
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 96
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 100
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 104
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dc, i64 80
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dc, i64 84
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dc, i64 88
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, %bb.ab
  %i.ek = invoke noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %bb.ad unwind label %bb.ax

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.ek, label %bb.am, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.el = load ptr, ptr %i.t, align 8             ; 3 uses
  %i.em = load ptr, ptr %i.u, align 8
  %.not.i97 = icmp eq ptr %i.el, %i.em
  br i1 %.not.i97, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store ptr %i.dc, ptr %i.el, align 8
  %i.en = load ptr, ptr %i.t, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store ptr %i.eo, ptr %i.t, align 8
  br label %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE9push_backERKS3_.exit

bb.ag:                                            ; preds = %bb.ae
  %i.ep = load ptr, ptr %2, align 8               ; 4 uses
  %i.eq = ptrtoint ptr %i.el to i64
  %i.er = ptrtoint ptr %i.ep to i64               ; 2 uses
  %i.es = sub i64 %i.eq, %i.er                    ; 5 uses
  %i.et = icmp eq i64 %i.es, 9223372036854775800
  br i1 %i.et, label %bb.ah, label %_ZNKSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.134) #29
          to label %.noexc98 unwind label %.loopexit.split-lp201.loopexit.split-lp.loopexit.split-lp

.noexc98:                                         ; preds = %bb.ah
  unreachable

_ZNKSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ag
  %i.eu = ashr exact i64 %i.es, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.eu, i64 1)
  %i.ev = add nsw i64 %.sroa.speculated.i.i.i, %i.eu ; 2 uses
  %i.ew = icmp ult i64 %i.ev, %i.eu
  %i.ex = call i64 @llvm.umin.i64(i64 %i.ev, i64 1152921504606846975)
  %i.ey = select i1 %i.ew, i64 1152921504606846975, i64 %i.ex ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ey, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ez = shl nuw nsw i64 %i.ey, 3
  %i.fa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ez) #32
          to label %.noexc99 unwind label %.loopexit.split-lp201.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc99:                                         ; preds = %_ZNKSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.fb = getelementptr inbounds i8, ptr %i.fa, i64 %i.es ; 2 uses
  store ptr %i.dc, ptr %i.fb, align 8
  %i.fc = icmp sgt i64 %i.es, 0
  br i1 %i.fc, label %bb.ai, label %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.ai:                                            ; preds = %.noexc99
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fa, ptr align 8 %i.ep, i64 %i.es, i1 false)
  br label %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.ai, %.noexc99
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %i.fe = load ptr, ptr %i.u, align 8
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = sub i64 %i.ff, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef %i.fg) #30
  br label %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.aj, %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.fa, ptr %2, align 8
  store ptr %i.fd, ptr %i.t, align 8
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ey
  store ptr %i.fh, ptr %i.u, align 8
  br label %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE9push_backERKS3_.exit

.loopexit.split-lp196.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i, %bb.n
  %lpad.loopexit.split-lp358 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156

bb.ak:                                            ; preds = %bb.s
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef 248) #30
  br label %bb.cn

bb.al:                                            ; preds = %bb.u
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.cn

.loopexit.split-lp201.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ah
  %lpad.loopexit.split-lp361 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.am:                                            ; preds = %bb.ad
  %i.fk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4pugi17xml_node_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %bb.an unwind label %bb.ax     ; 14 uses

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.fl = invoke noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fk)
          to label %bb.ao unwind label %.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.ao:                                            ; preds = %bb.an
  store ptr %i.o, ptr %15, align 8
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.130) #29
          to label %.noexc102 unwind label %.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp

.noexc102:                                        ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.fn = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fl) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.fn, ptr %i.b, align 8
  %i.fo = icmp ugt i64 %i.fn, 15
  br i1 %i.fo, label %.noexc.i101, label %._crit_edge.i.i100

.noexc.i101:                                      ; preds = %bb.aq
  %i.fp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc103 unwind label %.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc103:                                        ; preds = %.noexc.i101
  store ptr %i.fp, ptr %15, align 8
  %i.fq = load i64, ptr %i.b, align 8
  store i64 %i.fq, ptr %i.o, align 8
  br label %._crit_edge.i.i100

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
  br label %bb.cm

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

bb.bd:                                            ; preds = %.noexc142, %bb.ch, %.noexc139, %bb.cd, %.noexc136, %bb.bz, %.noexc134, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit106.thread, %bb.au, %bb.av, %bb.cb, %bb.cf, %bb.cj, %bb.bx, %bb.ay
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %bb.ba
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

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
          to label %bb.bp unwind label %.loopexit.split-lp186.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.bp:                                            ; preds = %bb.bo
  %i.ho = fmul float %i.hm, %i.hm
  %i.hp = call float @llvm.fmuladd.f32(float %i.hl, float %i.hl, float %i.ho)
  %i.hq = call noundef float @llvm.fmuladd.f32(float %i.hn, float %i.hn, float %i.hp) ; 2 uses
  %i.hr = fcmp oeq float %i.hq, 0.000000e+00
  br i1 %i.hr, label %bb.bq, label %_ZN10aiVector3tIfEdVEf.exit.i.i

_ZN10aiVector3tIfEdVEf.exit.i.i:                  ; preds = %bb.bp
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.hq)
  %i.hs = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 3 uses
  %i.ht = fmul float %i.hl, %i.hs
  %i.hu = fmul float %i.hm, %i.hs
  %i.hv = fmul float %i.hn, %i.hs
  br label %bb.bq

bb.bq:                                            ; preds = %_ZN10aiVector3tIfEdVEf.exit.i.i, %bb.bp
  %.sroa.0.4.vec.extract.pre-phi.i = phi float [ %i.hm, %bb.bp ], [ %i.hu, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %.sroa.0.0.vec.extract.pre-phi.i = phi float [ %i.hl, %bb.bp ], [ %i.ht, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %.sroa.7.0.i = phi float [ %i.hn, %bb.bp ], [ %i.hv, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %i.hw = call noundef float @sinf(float noundef %i.gn) #28 ; 3 uses
  %i.hx = call noundef float @cosf(float noundef %i.gn) #28
  %21 = fmul float %.sroa.0.0.vec.extract.pre-phi.i, %i.hw
  %22 = fmul float %.sroa.0.4.vec.extract.pre-phi.i, %i.hw
  %23 = fmul float %.sroa.7.0.i, %i.hw
  store float %i.hx, ptr %i.eg, align 4
  store float %21, ptr %.sroa.5.0..sroa_idx, align 8
  store float %22, ptr %.sroa.6.0..sroa_idx, align 4
  store float %23, ptr %.sroa.7.0..sroa_idx, align 8
  %i.hy = load ptr, ptr %20, align 8              ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %i.r
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %bb.bq
  %i.ia = load i64, ptr %i.r, align 8
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ib) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  %i.ic = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %bb.ba unwind label %bb.be     ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bg, %bb.bf, %.noexc.i120, %bb.bi
  %lpad.loopexit.split-lp351 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

.loopexit.split-lp186.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bo, %bb.bn, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125.thread, %bb.br
  %lpad.loopexit.split-lp353 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125.thread182: ; preds = %bb.bm, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125
  %i.id = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA45_KcRtEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.id, ptr noundef nonnull align 1 dereferenceable(45) @.str.88, ptr noundef nonnull align 2 dereferenceable(2) %i.dc)
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125.thread182
  invoke void @__cxa_throw(ptr nonnull %i.id, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.ct unwind label %.loopexit.split-lp186.loopexit.split-lp.loopexit.split-lp

bb.bs:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit125.thread182
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.id) #28
  br label %bb.bt

bb.bt:                                            ; preds = %.loopexit.split-lp186.loopexit.split-lp.loopexit.split-lp, %bb.bs
  %.pn.pn = phi { ptr, i32 } [ %i.ie, %bb.bs ], [ %lpad.loopexit.split-lp353, %.loopexit.split-lp186.loopexit.split-lp.loopexit.split-lp ]
  %i.if = load ptr, ptr %20, align 8              ; 2 uses
  %i.ig = icmp eq ptr %i.if, %i.r
  br i1 %i.ig, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %bb.bt
  %i.ih = load i64, ptr %i.r, align 8
  %i.ii = add i64 %i.ih, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ii) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br label %bb.bu

bb.bu:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131 ], [ %lpad.loopexit.split-lp351, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.be
  %.pn66 = phi { ptr, i32 } [ %i.gq, %bb.be ], [ %.pn.pn.pn.pn, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.cl

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133: ; preds = %bb.at
  %.pre = load ptr, ptr %15, align 8
  %bcmp.i132 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.127, i64 %i.fw)
  %i.ij = icmp eq i32 %bcmp.i132, 0
  br i1 %i.ij, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread183

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.ik = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.89)
          to label %.noexc134 unwind label %bb.bd

.noexc134:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread
  store ptr %i.ik, ptr %6, align 8
  %i.il = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bw unwind label %bb.bd

bb.bw:                                            ; preds = %.noexc134
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br i1 %i.il, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.im = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.89)
          to label %bb.by unwind label %bb.bd     ; 3 uses

bb.by:                                            ; preds = %bb.bx
  store float %i.im, ptr %i.ed, align 4
  store float %i.im, ptr %i.ee, align 8
  store float %i.im, ptr %i.ef, align 4
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread183

bb.bz:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.in = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.103)
          to label %.noexc136 unwind label %bb.bd

.noexc136:                                        ; preds = %bb.bz
  store ptr %i.in, ptr %5, align 8
  %i.io = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.ca unwind label %bb.bd

bb.ca:                                            ; preds = %.noexc136
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %i.io, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ip = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.103)
          to label %bb.cc unwind label %bb.bd

bb.cc:                                            ; preds = %bb.cb
  store float %i.ip, ptr %i.ed, align 4
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.iq = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.104)
          to label %.noexc139 unwind label %bb.bd

.noexc139:                                        ; preds = %bb.cd
  store ptr %i.iq, ptr %4, align 8
  %i.ir = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.ce unwind label %bb.bd

bb.ce:                                            ; preds = %.noexc139
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %i.ir, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.is = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.104)
          to label %bb.cg unwind label %bb.bd

bb.cg:                                            ; preds = %bb.cf
  store float %i.is, ptr %i.ee, align 8
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.it = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.105)
          to label %.noexc142 unwind label %bb.bd

.noexc142:                                        ; preds = %bb.ch
  store ptr %i.it, ptr %3, align 8
  %i.iu = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.ci unwind label %bb.bd

bb.ci:                                            ; preds = %.noexc142
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %i.iu, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread183, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.iv = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull @.str.105)
          to label %bb.ck unwind label %bb.bd

bb.ck:                                            ; preds = %bb.cj
  store float %i.iv, ptr %i.ef, align 4
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread183

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread183: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108, %bb.at, %bb.bc, %bb.by, %bb.ck, %bb.ci, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133, %bb.aw
  %i.iw = load ptr, ptr %15, align 8              ; 2 uses
  %i.ix = icmp eq ptr %i.iw, %i.o
  br i1 %i.ix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread183
  %i.iy = load i64, ptr %i.o, align 8
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.iz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread183, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  %i.ja = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %bb.ac unwind label %bb.ax     ; 0 uses

bb.cl:                                            ; preds = %bb.bv, %bb.bd
  %.pn70 = phi { ptr, i32 } [ %i.gp, %bb.bd ], [ %.pn66, %bb.bv ] ; 2 uses
  %i.jb = load ptr, ptr %15, align 8              ; 2 uses
  %i.jc = icmp eq ptr %i.jb, %i.o
  br i1 %i.jc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %bb.cl
  %i.jd = load i64, ptr %i.o, align 8
  %i.je = add i64 %i.jd, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.je) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %bb.cl, %.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148
  %.pn70.pn = phi { ptr, i32 } [ %.pn70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp ], [ %.pn70, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.cm

bb.cm:                                            ; preds = %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150
  %.pn74 = phi { ptr, i32 } [ %i.gf, %bb.ax ], [ %.pn70.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150 ]
end_hunk_0
begin_hunk_1_@_ZN6Assimp4Ogre17OgreXmlSerializer19ReadAnimationTracksERN4pugi8xml_nodeEPNS0_9AnimationE:bb.a
  br i1 %i.cg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59.thread74

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59: ; preds = %bb.ad
  %i.ch = load ptr, ptr %12, align 8              ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 1
  %i.cj = xor i64 %i.ci, 7308604914265580907
  %i.ck = getelementptr i8, ptr %i.ch, i64 8
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = zext i8 %i.cl to i64
  %i.cn = xor i64 %i.cm, 115
  %i.co = or i64 %i.cj, %i.cn
  %i.cp = icmp ne i64 %i.co, 0
  %i.cq = zext i1 %i.cp to i32
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59.thread74

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59
  invoke void @_ZN6Assimp4Ogre17OgreXmlSerializer22ReadAnimationKeyFramesERN4pugi8xml_nodeEPNS0_9AnimationEPNS0_20VertexAnimationTrackE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef %2, ptr noundef nonnull %7)
          to label %bb.ah unwind label %.loopexit.split-lp76.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %bb.w
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.x, %.noexc.i54, %bb.z
  %lpad.loopexit.split-lp124 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

.loopexit.split-lp76.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59.thread, %bb.af
  %lpad.loopexit.split-lp126 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59.thread74: ; preds = %bb.ad, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59
  %i.ct = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 16
  invoke void @_ZN17DeadlyImportErrorC2IJRA33_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 1 dereferenceable(33) @.str.78, ptr noundef nonnull align 8 dereferenceable(32) %i.cu)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59.thread74
  invoke void @__cxa_throw(ptr nonnull %i.ct, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.am unwind label %.loopexit.split-lp76.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59.thread74
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ct) #28
  br label %bb.ai

bb.ah:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59.thread
  %i.cw = load ptr, ptr %12, align 8              ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.o
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.ah
  %i.cy = load i64, ptr %i.o, align 8
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.da = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.o unwind label %bb.ae      ; 0 uses

bb.ai:                                            ; preds = %.loopexit.split-lp76.loopexit.split-lp.loopexit.split-lp, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.cv, %bb.ag ], [ %lpad.loopexit.split-lp126, %.loopexit.split-lp76.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.db = load ptr, ptr %12, align 8              ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.o
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.ai
  %i.dd = load i64, ptr %i.o, align 8
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %bb.ai, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63 ], [ %lpad.loopexit.split-lp124, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %.pn27 = phi { ptr, i32 } [ %i.cs, %bb.ae ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.ak

_ZNSt6vectorIN6Assimp4Ogre20VertexAnimationTrackESaIS2_EE9push_backERKS2_.exit: ; preds = %.noexc51, %bb.s
  call void @_ZN6Assimp4Ogre20VertexAnimationTrackD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %.pre = load ptr, ptr %6, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread73

bb.ak:                                            ; preds = %bb.v, %bb.aj, %bb.u
  %.pn27.pn.pn = phi { ptr, i32 } [ %i.br, %bb.u ], [ %i.bs, %bb.v ], [ %.pn27, %bb.aj ]
  call void @_ZN6Assimp4Ogre20VertexAnimationTrackD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %7) #28
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.t
  %.pn27.pn.pn.pn = phi { ptr, i32 } [ %.pn27.pn.pn, %bb.ak ], [ %i.bq, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.df = load ptr, ptr %6, align 8               ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.g
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread73: ; preds = %bb.f, %_ZNSt6vectorIN6Assimp4Ogre20VertexAnimationTrackESaIS2_EE9push_backERKS2_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.dh = phi ptr [ %.pre100, %bb.f ], [ %.pre, %_ZNSt6vectorIN6Assimp4Ogre20VertexAnimationTrackESaIS2_EE9push_backERKS2_.exit ], [ %.pre100, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ] ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.g
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread73
  %i.dj = load i64, ptr %i.g, align 8
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.dl = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %4) ; 0 uses
  %i.dm = call noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5)
  br i1 %i.dm, label %bb.b, label %._crit_edge

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %bb.al
  %i.dn = load i64, ptr %i.g, align 8
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.do) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn27.pn.pn.pn

bb.am:                                            ; preds = %bb.af
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA34_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(34) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !guid !276 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
  invoke void @_ZN15DeadlyErrorBaseC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA34_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3, ptr noundef nonnull align 1 dereferenceable(34) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
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
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #30
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #28
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #28
  resume { ptr, i32 } %i.o
}

declare void @_ZN6Assimp4Ogre20VertexAnimationTrackC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp4Ogre17OgreXmlSerializer22ReadAnimationKeyFramesERN4pugi8xml_nodeEPNS0_9AnimationEPNS0_20VertexAnimationTrackE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 !guid !281 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.pugi::xml_object_range", align 16 ; 6 uses
  %5 = alloca %"class.pugi::xml_node_iterator", align 16 ; 8 uses
  %6 = alloca %"class.pugi::xml_node_iterator", align 16 ; 6 uses
  %7 = alloca %"struct.Assimp::Ogre::TransformKeyFrame", align 4 ; 16 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.pugi::xml_object_range", align 16 ; 6 uses
  %10 = alloca %"class.pugi::xml_node_iterator", align 16 ; 7 uses
  %11 = alloca %"class.pugi::xml_node_iterator", align 16 ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %13 = alloca %"class.pugi::xml_object_range", align 16 ; 6 uses
  %14 = alloca %"class.pugi::xml_node_iterator", align 16 ; 7 uses
  %15 = alloca %"class.pugi::xml_node_iterator", align 16 ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZNK4pugi8xml_node8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.pugi::xml_object_range") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.d = load <2 x ptr>, ptr %4, align 16
  store <2 x ptr> %i.d, ptr %5, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load <2 x ptr>, ptr %i.e, align 16
  store <2 x ptr> %i.f, ptr %6, align 16
  %i.g = call noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %17 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4pugi17xml_node_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %5) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @_ZN6Assimp4Ogre17TransformKeyFrameC1Ev(ptr noundef nonnull align 4 dereferenceable(44) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.ab = call noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) ; 4 uses
  store ptr %i.h, ptr %8, align 8
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.130) #29
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.ad = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i64 %i.ad, ptr %i.c, align 8
  %i.ae = icmp ugt i64 %i.ad, 15
  br i1 %i.ae, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.af = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.af, ptr %8, align 8
  %i.ag = load i64, ptr %i.c, align 8
  store i64 %i.ag, ptr %i.h, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.ah = phi ptr [ %i.af, %.noexc.i ], [ %i.h, %bb.c ] ; 2 uses
  switch i64 %i.ad, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ai = load i8, ptr %i.ab, align 1
  store i8 %i.ai, ptr %i.ah, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr nonnull align 1 %i.ab, i64 %i.ad, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.aj = load i64, ptr %i.c, align 8             ; 2 uses
  store i64 %i.aj, ptr %i.i, align 8
  %i.ak = load ptr, ptr %8, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aj
  store i8 0, ptr %i.al, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.am = load i64, ptr %i.i, align 8
  %i.an = icmp eq i64 %i.am, 8
  br i1 %i.an, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.f
  %i.ao = load ptr, ptr %8, align 8
  %i.ap = load i64, ptr %i.ao, align 1
  %i.aq = icmp ne i64 %i.ap, 7308604914265580907
  %i.ar = zext i1 %i.aq to i32
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.at = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.79)
          to label %bb.g unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  store float %i.at, ptr %7, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  invoke void @_ZNK4pugi8xml_node8childrenEv(ptr dead_on_unwind nonnull writable sret(%"class.pugi::xml_object_range") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.h unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp

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
          to label %bb.j unwind label %bb.w

bb.j:                                             ; preds = %bb.i
  br i1 %i.aw, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139

.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.g, %bb.bc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.l:                                             ; preds = %bb.j
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4pugi17xml_node_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.m unwind label %bb.w       ; 9 uses

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.ay = invoke noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.n unwind label %.loopexit.split-lp150.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.n:                                             ; preds = %bb.m
  store ptr %i.k, ptr %12, align 8
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.130) #29
          to label %.noexc80 unwind label %.loopexit.split-lp150.loopexit.split-lp.loopexit.split-lp

.noexc80:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ba = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ay) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.ba, ptr %i.b, align 8
  %i.bb = icmp ugt i64 %i.ba, 15
  br i1 %i.bb, label %.noexc.i79, label %._crit_edge.i.i78

.noexc.i79:                                       ; preds = %bb.p
  %i.bc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc81 unwind label %.loopexit.split-lp150.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc81:                                         ; preds = %.noexc.i79
  store ptr %i.bc, ptr %12, align 8
  %i.bd = load i64, ptr %i.b, align 8
  store i64 %i.bd, ptr %i.k, align 8
  br label %._crit_edge.i.i78

._crit_edge.i.i78:                                ; preds = %.noexc81, %bb.p
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

end_hunk_1
begin_hunk_2_@_ZN6Assimp4Ogre17OgreXmlSerializer22ReadAnimationKeyFramesERN4pugi8xml_nodeEPNS0_9AnimationEPNS0_20VertexAnimationTrackE:bb.a
  br label %bb.az

.loopexit.split-lp150.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %.noexc.i79, %bb.o
  %lpad.loopexit.split-lp222 = landingpad { ptr, i32 }
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

bb.ac:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86.thread, %bb.aw, %bb.av, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread, %bb.u, %bb.t, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84.thread, %bb.x
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

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
  br label %bb.au

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ae, %.noexc.i98, %bb.ag
  %lpad.loopexit.split-lp220 = landingpad { ptr, i32 }
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
  %i.dn = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.do = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract8.i, float %.sroa.0.0.vec.extract8.i, float %i.dn)
  %i.dp = call noundef float @llvm.fmuladd.f32(float %i.db, float %i.db, float %i.do) ; 2 uses
  %i.dq = fcmp oeq float %i.dp, 0.000000e+00
  br i1 %i.dq, label %bb.at, label %_ZN10aiVector3tIfEdVEf.exit.i.i

_ZN10aiVector3tIfEdVEf.exit.i.i:                  ; preds = %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.thread
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.dp)
  %i.dr = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.ds = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer
  %i.du = fmul <2 x float> %.sroa.0123.0, %i.dt
  %i.dv = fmul float %i.db, %i.dr
  br label %bb.at

bb.at:                                            ; preds = %_ZN10aiVector3tIfEdVEf.exit.i.i, %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.thread
  %.sroa.7.0.i = phi float [ %i.db, %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.thread ], [ %i.dv, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %i.dw = phi <2 x float> [ %.sroa.0123.0, %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.thread ], [ %i.du, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %i.dx = call noundef float @sinf(float noundef %i.ce) #28 ; 2 uses
  %i.dy = call noundef float @cosf(float noundef %i.ce) #28
  %18 = fmul float %.sroa.7.0.i, %i.dx
  store float %i.dy, ptr %17, align 4
  %19 = insertelement <2 x float> poison, float %i.dx, i64 0
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer
  %21 = fmul <2 x float> %i.dw, %20
  store <2 x float> %21, ptr %.sroa.5.0..sroa_idx, align 4
  store float %18, ptr %i.t, align 4
  %.pre193 = load ptr, ptr %16, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread142

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread142: ; preds = %bb.ak, %bb.at, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103
  %i.dz = phi ptr [ %.pre194, %bb.ak ], [ %.pre193, %bb.at ], [ %.pre194, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103 ] ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.q
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread142
  %i.eb = load i64, ptr %i.q, align 8
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103.thread142, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  %i.ed = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %bb.z unwind label %bb.ar      ; 0 uses

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %bb.as
  %i.ee = load i64, ptr %i.q, align 8
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.ef) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %bb.as, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %lpad.loopexit.split-lp220, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.dk, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.au

bb.au:                                            ; preds = %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %.pn49 = phi { ptr, i32 } [ %i.dj, %bb.ar ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.ay

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108: ; preds = %bb.s
  %.pre192 = load ptr, ptr %12, align 8
  %bcmp.i107 = call i32 @bcmp(ptr %.pre192, ptr nonnull @.str.127, i64 %i.bj)
  %i.eg = icmp eq i32 %bcmp.i107, 0
  br i1 %i.eg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread143

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108
  %i.eh = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.103)
          to label %bb.av unwind label %bb.ac

bb.av:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread
  store float %i.eh, ptr %i.m, align 4
  %i.ei = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.104)
          to label %bb.aw unwind label %bb.ac

bb.aw:                                            ; preds = %bb.av
  store float %i.ei, ptr %i.n, align 4
  %i.ej = invoke noundef float @_ZNK6Assimp4Ogre17OgreXmlSerializer13ReadAttributeIfEET_RN4pugi8xml_nodeEPKc(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.105)
          to label %bb.ax unwind label %bb.ac

bb.ax:                                            ; preds = %bb.aw
  store float %i.ej, ptr %i.o, align 4
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread143

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread143: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit86, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84, %bb.s, %bb.ab, %bb.ax, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108, %bb.v
  %i.ek = load ptr, ptr %12, align 8              ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.k
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread143
  %i.em = load i64, ptr %i.k, align 8
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit108.thread143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.eo = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.i unwind label %bb.w       ; 0 uses

bb.ay:                                            ; preds = %bb.au, %bb.ac
  %.pn53 = phi { ptr, i32 } [ %i.cg, %bb.ac ], [ %.pn49, %bb.au ] ; 2 uses
  %i.ep = load ptr, ptr %12, align 8              ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.k
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %bb.ay
  %i.er = load i64, ptr %i.k, align 8
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %bb.ay, %.loopexit.split-lp150.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  %.pn53.pn = phi { ptr, i32 } [ %.pn53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112 ], [ %lpad.loopexit.split-lp222, %.loopexit.split-lp150.loopexit.split-lp.loopexit.split-lp ], [ %.pn53, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.az

bb.az:                                            ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
  %.pn57 = phi { ptr, i32 } [ %i.by, %bb.w ], [ %.pn53.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.be

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139: ; preds = %bb.f, %bb.k, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.et = load ptr, ptr %i.y, align 8             ; 5 uses
  %i.eu = load ptr, ptr %i.z, align 8
  %.not.i = icmp eq ptr %i.et, %i.eu
  br i1 %.not.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.et, ptr noundef nonnull align 4 dereferenceable(44) %7, i64 44, i1 false)
  %i.ev = load ptr, ptr %i.y, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 44
  store ptr %i.ew, ptr %i.y, align 8
  br label %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE9push_backERKS2_.exit

bb.bb:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139
  %i.ex = load ptr, ptr %i.x, align 8             ; 5 uses
  %i.ey = ptrtoint ptr %i.et to i64
  %i.ez = ptrtoint ptr %i.ex to i64               ; 2 uses
  %i.fa = sub i64 %i.ey, %i.ez                    ; 3 uses
  %i.fb = icmp eq i64 %i.fa, 9223372036854775800
  br i1 %i.fb, label %bb.bc, label %_ZNKSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.134) #29
          to label %.noexc115 unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp

.noexc115:                                        ; preds = %bb.bc
  unreachable

_ZNKSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bb
  %i.fc = sdiv exact i64 %i.fa, 44                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fc, i64 1)
  %i.fd = add nsw i64 %.sroa.speculated.i.i.i, %i.fc ; 2 uses
  %i.fe = icmp ult i64 %i.fd, %i.fc
  %i.ff = call i64 @llvm.umin.i64(i64 %i.fd, i64 209622091746699450)
  %i.fg = select i1 %i.fe, i64 209622091746699450, i64 %i.ff ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fg, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.fh = mul nuw nsw i64 %i.fg, 44
  %i.fi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fh) #32
          to label %.noexc116 unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc116:                                        ; preds = %_ZNKSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.fj, ptr noundef nonnull align 4 dereferenceable(44) %7, i64 44, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.ex, %i.et
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc116, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.fl, %.lr.ph.i.i.i.i.i ], [ %i.fi, %.noexc116 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.fk, %.lr.ph.i.i.i.i.i ], [ %i.ex, %.noexc116 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(44) %.0911.i.i.i.i.i, i64 44, i1 false), !alias.scope !282
  %i.fk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 44 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 44 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fk, %i.et
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !280

_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc116
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.fi, %.noexc116 ], [ %i.fl, %.lr.ph.i.i.i.i.i ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 44
  %.not.i23.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.fn = load ptr, ptr %i.z, align 8
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = sub i64 %i.fo, %i.ez
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fp) #30
  br label %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.bd, %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.fi, ptr %i.x, align 8
  store ptr %i.fm, ptr %i.y, align 8
  %i.fq = getelementptr inbounds nuw [44 x i8], ptr %i.fi, i64 %i.fg
  store ptr %i.fq, ptr %i.z, align 8
  br label %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.ba
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

bb.be:                                            ; preds = %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp, %bb.az
  %.pn57.pn.pn = phi { ptr, i32 } [ %.pn57, %bb.az ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp ]
  %i.fx = load ptr, ptr %8, align 8               ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.h
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120
end_hunk_2
