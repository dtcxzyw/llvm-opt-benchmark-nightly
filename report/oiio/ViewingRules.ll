inline.NumInlined: 1398
inline.NumDeleted: 485
begin_hunk_0_@_ZNK16OpenColorIO_v2_511ViewingRule8validateESt8functionIFSt10shared_ptrIKNS_10ColorSpaceEEPKcEERKS2_INS_13ColorSpaceSetEE:bb.a
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.di = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i = icmp eq i8 %i.di, 0
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dj = add nsw i32 %i.da, -1
  store i32 %i.dj, ptr %i.cx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.dk = atomicrmw volatile add ptr %i.cx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.da, %bb.v ], [ %i.dk, %bb.w ]
  %i.dl = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dl, label %bb.x, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !25

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #24
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.r, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !73

._crit_edge157:                                   ; preds = %bb.bm, %._crit_edge
  %i.dm = sub i32 0, %i.z
  %i.dn = icmp eq i32 %i.m, %i.dm
  br i1 %i.dn, label %bb.bn, label %bb.bu

bb.y:                                             ; preds = %.lr.ph156, %bb.bm
  %indvars.iv161 = phi i64 [ 0, %.lr.ph156 ], [ %indvars.iv.next162, %bb.bm ] ; 3 uses
  %i.do = load ptr, ptr %i.s, align 8, !tbaa !57
  %i.dp = load ptr, ptr %i.r, align 8, !tbaa !60  ; 2 uses
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %sext209 = shl i64 %i.ds, 27
  %i.dt = ashr i64 %sext209, 32
  %.not.i75 = icmp slt i64 %indvars.iv161, %i.dt
  br i1 %.not.i75, label %bb.z, label %_ZNK16OpenColorIO_v2_513TokensManager8getTokenEi.exit77

bb.z:                                             ; preds = %bb.y
  %i.du = getelementptr inbounds nuw [32 x i8], ptr %i.dp, i64 %indvars.iv161
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !45
  br label %_ZNK16OpenColorIO_v2_513TokensManager8getTokenEi.exit77

_ZNK16OpenColorIO_v2_513TokensManager8getTokenEi.exit77: ; preds = %bb.y, %bb.z
  %.0.i76 = phi ptr [ %i.dv, %bb.z ], [ null, %bb.y ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZN11StringUtils5LowerB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef %.0.i76)
  %i.dw = load ptr, ptr %2, align 8, !tbaa !74
  %i.dx = invoke noundef i32 @_ZNK16OpenColorIO_v2_513ColorSpaceSet17getNumColorSpacesEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dw)
          to label %.preheader.i unwind label %bb.aa ; 2 uses

.preheader.i:                                     ; preds = %_ZNK16OpenColorIO_v2_513TokensManager8getTokenEi.exit77
  %.not59.i = icmp sgt i32 %i.dx, 0
  br i1 %.not59.i, label %.lr.ph.i, label %.critedge.i

bb.aa:                                            ; preds = %_ZNK16OpenColorIO_v2_513TokensManager8getTokenEi.exit77
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %.01260.i = phi i32 [ %i.hf, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.dz = load ptr, ptr %2, align 8, !tbaa !74
  invoke void @_ZNK16OpenColorIO_v2_513ColorSpaceSet20getColorSpaceByIndexEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.24") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.dz, i32 noundef %.01260.i)
          to label %bb.ab unwind label %bb.au

bb.ab:                                            ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.ea = load ptr, ptr %4, align 8, !tbaa !68
  %i.eb = call noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace11getEncodingEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ea) #24 ; 4 uses
  store ptr %i.ab, ptr %5, align 8, !tbaa !77
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.46) #26
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.ed = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eb) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 %i.ed, ptr %i.c, align 8, !tbaa !78
  %i.ee = icmp ugt i64 %i.ed, 15
  br i1 %i.ee, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.ad
  %i.ef = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc27.i unwind label %.loopexit.i ; 2 uses

.noexc27.i:                                       ; preds = %.noexc.i.i
  store ptr %i.ef, ptr %5, align 8, !tbaa !45
  %i.eg = load i64, ptr %i.c, align 8, !tbaa !78
  store i64 %i.eg, ptr %i.ab, align 8, !tbaa !24
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc27.i, %bb.ad
  %i.eh = phi ptr [ %i.ef, %.noexc27.i ], [ %i.ab, %bb.ad ] ; 2 uses
  switch i64 %i.ed, label %bb.af [
    i64 1, label %bb.ae
    i64 0, label %bb.ag
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i.i
  %i.ei = load i8, ptr %i.eb, align 1, !tbaa !24
  store i8 %i.ei, ptr %i.eh, align 1, !tbaa !24
  br label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eh, ptr nonnull align 1 %i.eb, i64 %i.ed, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %._crit_edge.i.i.i
  %i.ej = load i64, ptr %i.c, align 8, !tbaa !78  ; 2 uses
  store i64 %i.ej, ptr %i.ac, align 8, !tbaa !71
  %i.ek = load ptr, ptr %5, align 8, !tbaa !45
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ej
  store i8 0, ptr %i.el, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr %i.ad, ptr %7, align 8, !tbaa !77
  %i.em = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.en = load i64, ptr %i.ac, align 8, !tbaa !71 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 %i.en, ptr %i.b, align 8, !tbaa !78
  %i.eo = icmp ugt i64 %i.en, 15
  br i1 %i.eo, label %.noexc.i29.i, label %._crit_edge.i.i28.i

.noexc.i29.i:                                     ; preds = %bb.ag
  %i.ep = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc30.i unwind label %bb.av ; 2 uses

.noexc30.i:                                       ; preds = %.noexc.i29.i
  store ptr %i.ep, ptr %7, align 8, !tbaa !45
  %i.eq = load i64, ptr %i.b, align 8, !tbaa !78
  store i64 %i.eq, ptr %i.ad, align 8, !tbaa !24
  br label %._crit_edge.i.i28.i

._crit_edge.i.i28.i:                              ; preds = %.noexc30.i, %bb.ag
  %i.er = phi ptr [ %i.ep, %.noexc30.i ], [ %i.ad, %bb.ag ] ; 2 uses
  switch i64 %i.en, label %bb.ai [
    i64 1, label %bb.ah
    i64 0, label %bb.aj
  ]

bb.ah:                                            ; preds = %._crit_edge.i.i28.i
  %i.es = load i8, ptr %i.em, align 1, !tbaa !24
  store i8 %i.es, ptr %i.er, align 1, !tbaa !24
  br label %bb.aj

bb.ai:                                            ; preds = %._crit_edge.i.i28.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.er, ptr align 1 %i.em, i64 %i.en, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %._crit_edge.i.i28.i
  %i.et = load i64, ptr %i.b, align 8, !tbaa !78  ; 2 uses
  store i64 %i.et, ptr %i.ae, align 8, !tbaa !71
  %i.eu = load ptr, ptr %7, align 8, !tbaa !45
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.et
  store i8 0, ptr %i.ev, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.ew = load ptr, ptr %7, align 8, !tbaa !45, !noalias !79 ; 7 uses
  %i.ex = load i64, ptr %i.ae, align 8, !tbaa !71, !noalias !79 ; 9 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ex
  %.not6.i.i.i = icmp samesign eq i64 %i.ex, 0
  br i1 %.not6.i.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i.i, label %iter.check

iter.check:                                       ; preds = %bb.aj
  %min.iters.check = icmp ult i64 %i.ex, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check214 = icmp ult i64 %i.ex, 32
  br i1 %min.iters.check214, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ex, 24
  %n.vec = and i64 %i.ex, -32                     ; 4 uses
  %i.ez = getelementptr i8, ptr %i.ew, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ew, i64 %index ; 3 uses
  %i.fa = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !24, !noalias !79 ; 2 uses
  %wide.load215 = load <16 x i8>, ptr %i.fa, align 1, !tbaa !24, !noalias !79 ; 2 uses
  %i.fb = add <16 x i8> %wide.load, splat (i8 -65)
  %i.fc = add <16 x i8> %wide.load215, splat (i8 -65)
  %i.fd = icmp ult <16 x i8> %i.fb, splat (i8 26)
  %i.fe = icmp ult <16 x i8> %i.fc, splat (i8 26)
  %20 = select <16 x i1> %i.fd, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.ff = or disjoint <16 x i8> %wide.load, %20
  %i.fg = select <16 x i1> %i.fe, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %21 = or disjoint <16 x i8> %wide.load215, %i.fg
  store <16 x i8> %i.ff, ptr %next.gep, align 1, !tbaa !24, !noalias !79
  store <16 x i8> %21, ptr %i.fa, align 1, !tbaa !24, !noalias !79
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fh = icmp eq i64 %index.next, %n.vec
  br i1 %i.fh, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ex, %n.vec
  br i1 %cmp.n, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !85

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec217 = and i64 %i.ex, -8                   ; 3 uses
  %i.fi = getelementptr i8, ptr %i.ew, i64 %n.vec217
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index218 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next221, %vec.epilog.vector.body ] ; 2 uses
  %next.gep219 = getelementptr i8, ptr %i.ew, i64 %index218 ; 2 uses
  %wide.load220 = load <8 x i8>, ptr %next.gep219, align 1, !tbaa !24, !noalias !79 ; 2 uses
  %i.fj = add <8 x i8> %wide.load220, splat (i8 -65)
  %i.fk = icmp ult <8 x i8> %i.fj, splat (i8 26)
  %22 = select <8 x i1> %i.fk, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %23 = or disjoint <8 x i8> %wide.load220, %22
  store <8 x i8> %23, ptr %next.gep219, align 1, !tbaa !24, !noalias !79
  %index.next221 = add nuw i64 %index218, 8       ; 2 uses
  %i.fl = icmp eq i64 %index.next221, %n.vec217
  br i1 %i.fl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !86

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n222 = icmp eq i64 %i.ex, %n.vec217
  br i1 %cmp.n222, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.i.ph = phi ptr [ %i.ew, %iter.check ], [ %i.ez, %vec.epilog.iter.check ], [ %i.fi, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.sroa.0.08.i.i.i = phi ptr [ %i.fp, %.lr.ph.i.i.i ], [ %.sroa.0.08.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.fm = load i8, ptr %.sroa.0.08.i.i.i, align 1, !tbaa !24, !noalias !79 ; 3 uses
  %i.fn = add i8 %i.fm, -65
  %or.cond.i.i.i.i.i = icmp ult i8 %i.fn, 26
  %i.fo = or disjoint i8 %i.fm, 32
  %.0.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i, i8 %i.fo, i8 %i.fm
  store i8 %.0.i.i.i.i.i, ptr %.sroa.0.08.i.i.i, align 1, !tbaa !24, !noalias !79
  %i.fp = getelementptr i8, ptr %.sroa.0.08.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i78 = icmp eq ptr %i.fp, %i.ey
  br i1 %.not.i.i.i78, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !87

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre.i.i = load ptr, ptr %7, align 8, !tbaa !45, !noalias !79
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i.i

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i.i, %bb.aj
  %i.fq = phi ptr [ %.pre.i.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i.i ], [ %i.ew, %bb.aj ] ; 3 uses
  store ptr %i.af, ptr %6, align 8, !tbaa !77, !alias.scope !79
  %i.fr = icmp eq ptr %i.fq, %i.ad
  br i1 %i.fr, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.ak:                                            ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i.i
  %i.fs = load i64, ptr %i.ae, align 8, !tbaa !71, !noalias !79 ; 3 uses
  %i.ft = icmp ult i64 %i.fs, 16
  call void @llvm.assume(i1 %i.ft)
  %i.fu = add nuw nsw i64 %i.fs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.fu, i1 false)
  br label %bb.al

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i.i
  store ptr %i.fq, ptr %6, align 8, !tbaa !45, !alias.scope !79
  %i.fv = load i64, ptr %i.ad, align 8, !tbaa !24, !noalias !79
  store i64 %i.fv, ptr %i.af, align 8, !tbaa !24, !alias.scope !79
  %.pre4.i.i = load i64, ptr %i.ae, align 8, !tbaa !71, !noalias !79
  br label %bb.al

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.ak
  %i.fw = phi ptr [ %i.af, %bb.ak ], [ %i.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ] ; 3 uses
  %i.fx = phi i64 [ %i.fs, %bb.ak ], [ %.pre4.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ] ; 5 uses
  store i64 %i.fx, ptr %i.ag, align 8, !tbaa !71, !alias.scope !79
  store ptr %i.ad, ptr %7, align 8, !tbaa !45, !noalias !79
  store i64 0, ptr %i.ae, align 8, !tbaa !71, !noalias !79
  store i8 0, ptr %i.ad, align 8, !tbaa !24, !noalias !79
  %i.fy = load i64, ptr %i.ah, align 8, !tbaa !71
  %i.fz = icmp eq i64 %i.fx, %i.fy
  br i1 %i.fz, label %bb.am, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

bb.am:                                            ; preds = %bb.al
  %i.ga = icmp eq i64 %i.fx, 0
  br i1 %i.ga, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gb = load ptr, ptr %3, align 8, !tbaa !45
  %bcmp.i.i = call i32 @bcmp(ptr %i.fw, ptr %i.gb, i64 %i.fx)
  %i.gc = icmp eq i32 %bcmp.i.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.an, %bb.am, %bb.al
  %i.gd = phi i1 [ false, %bb.al ], [ %i.gc, %bb.an ], [ true, %bb.am ] ; 2 uses
  %i.ge = icmp eq ptr %i.fw, %i.af
  br i1 %i.ge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.gf = icmp ult i64 %i.fx, 16
  call void @llvm.assume(i1 %i.gf)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.gg = load i64, ptr %i.af, align 8, !tbaa !24
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.gh) #25
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !45  ; 2 uses
  %i.gi = icmp eq ptr %.pre.i, %i.ad
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.gj = load i64, ptr %i.ad, align 8, !tbaa !24
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %.pre.i, i64 noundef %i.gk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.gl = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.ab
  br i1 %i.gm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i
  %i.gn = load i64, ptr %i.ab, align 8, !tbaa !24
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.go) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.gp = load ptr, ptr %i.ai, align 8, !tbaa !17 ; 8 uses
  %.not.i.i38.i = icmp eq ptr %i.gp, null
  br i1 %.not.i.i38.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 4 uses
  %i.gr = load atomic i64, ptr %i.gq acquire, align 8 ; 2 uses
  %i.gs = icmp eq i64 %i.gr, 4294967297
  %i.gt = trunc i64 %i.gr to i32                  ; 2 uses
  br i1 %i.gs, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.gq, align 8, !tbaa !20
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  store i32 0, ptr %i.gu, align 4, !tbaa !22
  %i.gv = load ptr, ptr %i.gp, align 8, !tbaa !7
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #24, !inline_history !88
  %i.gy = load ptr, ptr %i.gp, align 8, !tbaa !7
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8
  call void %i.ha(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #24, !inline_history !88
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.aq:                                            ; preds = %bb.ao
  %i.hb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i = icmp eq i8 %i.hb, 0
  br i1 %.not.i.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hc = add nsw i32 %i.gt, -1
  store i32 %i.hc, ptr %i.gq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.as:                                            ; preds = %bb.aq
  %i.hd = atomicrmw volatile add ptr %i.gq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i39.i = phi i32 [ %i.gt, %bb.ar ], [ %i.hd, %bb.as ]
  %i.he = icmp eq i32 %.0.i.i.i.i39.i, 1
  br i1 %i.he, label %bb.at, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !25

bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #24
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.at, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.hf = add nuw nsw i32 %.01260.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.hf, %i.dx
  %or.cond224 = select i1 %i.gd, i1 true, i1 %exitcond.not.i
  br i1 %or.cond224, label %.critedge.i, label %.lr.ph.i, !llvm.loop !89

bb.au:                                            ; preds = %.lr.ph.i
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.loopexit.i:                                      ; preds = %.noexc.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i

.loopexit.split-lp.i:                             ; preds = %bb.ac
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i

bb.av:                                            ; preds = %.noexc.i29.i
  %i.hh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.hi = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.ab
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i: ; preds = %bb.av
  %i.hk = load i64, ptr %i.ab, align 8, !tbaa !24
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hl) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i, %.loopexit.split-lp.i, %.loopexit.i
  %.pn.pn.i = phi { ptr, i32 } [ %i.hh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %i.hh, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #24
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i, %bb.au
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_513TokensManager8addTokenEPKc:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !24
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %.pre21, i64 noundef %i.am) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.an = load ptr, ptr %3, align 8, !tbaa !45    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.g
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ap = load i64, ptr %i.g, align 8, !tbaa !24
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.m

bb.k:                                             ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

bb.l:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.l
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !24
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.k ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.as, %bb.l ]
  %i.ay = load ptr, ptr %3, align 8, !tbaa !45    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.g
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.ba = load i64, ptr %i.g, align 8, !tbaa !24
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN16OpenColorIO_v2_512ViewingRules16removeColorSpaceEmm(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK16OpenColorIO_v2_512ViewingRules13getColorSpaceEmm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %1
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  tail call void @_ZN16OpenColorIO_v2_513TokensManager11removeTokenEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef %i.a) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_513TokensManager11removeTokenEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !24
  %.not5 = icmp eq i8 %i.b, 0
  br i1 %.not5, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZN11StringUtils5LowerB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull %1)
          to label %bb.d unwind label %.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN11StringUtils4TrimENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull %3)
          to label %bb.e unwind label %.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  %i.c = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.f = load i64, ptr %i.d, align 8, !tbaa !24
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !104  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !104
  %.not2528 = icmp eq ptr %i.i, %i.k
  br i1 %.not2528, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.p
  %.sroa.021.029 = phi ptr [ %i.i, %.lr.ph ], [ %i.ce, %bb.p ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr %i.l, ptr %6, align 8, !tbaa !77
  %i.s = load ptr, ptr %.sroa.021.029, align 8, !tbaa !45 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.021.029, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !71   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.u, ptr %i.a, align 8, !tbaa !78
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.f
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.w, ptr %6, align 8, !tbaa !45
  %i.x = load i64, ptr %i.a, align 8, !tbaa !78
  store i64 %i.x, ptr %i.l, align 8, !tbaa !24
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.f
  %i.y = phi ptr [ %i.w, %.noexc ], [ %i.l, %bb.f ] ; 2 uses
  switch i64 %i.u, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.z = load i8, ptr %i.s, align 1, !tbaa !24
  store i8 %i.z, ptr %i.y, align 1, !tbaa !24
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !78  ; 2 uses
  store i64 %i.aa, ptr %i.m, align 8, !tbaa !71
  %i.ab = load ptr, ptr %6, align 8, !tbaa !45
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  store i8 0, ptr %i.ac, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.ad = load ptr, ptr %6, align 8, !tbaa !45, !noalias !106 ; 7 uses
  %i.ae = load i64, ptr %i.m, align 8, !tbaa !71, !noalias !106 ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  %.not6.i.i = icmp samesign eq i64 %i.ae, 0
  br i1 %.not6.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i, label %iter.check

iter.check:                                       ; preds = %bb.i
  %min.iters.check = icmp ult i64 %i.ae, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check51 = icmp ult i64 %i.ae, 32
  br i1 %min.iters.check51, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ae, 24
  %n.vec = and i64 %i.ae, -32                     ; 4 uses
  %i.ag = getelementptr i8, ptr %i.ad, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %index ; 3 uses
  %i.ah = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !24, !noalias !106 ; 2 uses
  %wide.load52 = load <16 x i8>, ptr %i.ah, align 1, !tbaa !24, !noalias !106 ; 2 uses
  %i.ai = add <16 x i8> %wide.load, splat (i8 -65)
  %i.aj = add <16 x i8> %wide.load52, splat (i8 -65)
  %i.ak = icmp ult <16 x i8> %i.ai, splat (i8 26)
  %i.al = icmp ult <16 x i8> %i.aj, splat (i8 26)
  %7 = select <16 x i1> %i.ak, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.am = or disjoint <16 x i8> %wide.load, %7
  %i.an = select <16 x i1> %i.al, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %8 = or disjoint <16 x i8> %wide.load52, %i.an
  store <16 x i8> %i.am, ptr %next.gep, align 1, !tbaa !24, !noalias !106
  store <16 x i8> %8, ptr %i.ah, align 1, !tbaa !24, !noalias !106
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !109

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !85

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec54 = and i64 %i.ae, -8                    ; 3 uses
  %i.ap = getelementptr i8, ptr %i.ad, i64 %n.vec54
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index55 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next58, %vec.epilog.vector.body ] ; 2 uses
  %next.gep56 = getelementptr i8, ptr %i.ad, i64 %index55 ; 2 uses
  %wide.load57 = load <8 x i8>, ptr %next.gep56, align 1, !tbaa !24, !noalias !106 ; 2 uses
  %i.aq = add <8 x i8> %wide.load57, splat (i8 -65)
  %i.ar = icmp ult <8 x i8> %i.aq, splat (i8 26)
  %9 = select <8 x i1> %i.ar, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %10 = or disjoint <8 x i8> %wide.load57, %9
  store <8 x i8> %10, ptr %next.gep56, align 1, !tbaa !24, !noalias !106
  %index.next58 = add nuw i64 %index55, 8         ; 2 uses
  %i.as = icmp eq i64 %index.next58, %n.vec54
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !110

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n59 = icmp eq i64 %i.ae, %n.vec54
  br i1 %cmp.n59, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi ptr [ %i.ad, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %.sroa.0.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.at = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !24, !noalias !106 ; 3 uses
  %i.au = add i8 %i.at, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.au, 26
  %i.av = or disjoint i8 %i.at, 32
  %.0.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %i.av, i8 %i.at
  store i8 %.0.i.i.i.i, ptr %.sroa.0.08.i.i, align 1, !tbaa !24, !noalias !106
  %i.aw = getelementptr i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aw, %i.af
  br i1 %.not.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !111

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !45, !noalias !106
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, %bb.i
  %i.ax = phi ptr [ %.pre.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i ], [ %i.ad, %bb.i ] ; 2 uses
  store ptr %i.n, ptr %5, align 8, !tbaa !77, !alias.scope !106
  %i.ay = icmp eq ptr %i.ax, %i.l
  br i1 %i.ay, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

bb.j:                                             ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  %i.az = load i64, ptr %i.m, align 8, !tbaa !71, !noalias !106 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(1) %i.l, i64 %i.bb, i1 false)
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  store ptr %i.ax, ptr %5, align 8, !tbaa !45, !alias.scope !106
  %i.bc = load i64, ptr %i.l, align 8, !tbaa !24, !noalias !106
  store i64 %i.bc, ptr %i.n, align 8, !tbaa !24, !alias.scope !106
  %.pre4.i = load i64, ptr %i.m, align 8, !tbaa !71, !noalias !106
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.j
  %i.bd = phi i64 [ %i.az, %bb.j ], [ %.pre4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ]
  store i64 %i.bd, ptr %i.o, align 8, !tbaa !71, !alias.scope !106
  store ptr %i.l, ptr %6, align 8, !tbaa !45, !noalias !106
  store i64 0, ptr %i.m, align 8, !tbaa !71, !noalias !106
  store i8 0, ptr %i.l, align 8, !tbaa !24, !noalias !106
  invoke void @_ZN11StringUtils4TrimENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull %5)
          to label %bb.l unwind label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.be = load i64, ptr %i.p, align 8, !tbaa !71  ; 4 uses
  %i.bf = load i64, ptr %i.q, align 8, !tbaa !71
  %i.bg = icmp eq i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.m, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge: ; preds = %bb.l
  %.pre = load ptr, ptr %4, align 8, !tbaa !45
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.m:                                             ; preds = %bb.l
  %i.bh = icmp eq i64 %i.be, 0
  %.pre32 = load ptr, ptr %4, align 8, !tbaa !45  ; 3 uses
  br i1 %i.bh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = load ptr, ptr %2, align 8, !tbaa !45
  %bcmp.i = call i32 @bcmp(ptr %.pre32, ptr %i.bi, i64 %i.be)
  %i.bj = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge, %bb.m, %bb.n
  %i.bk = phi ptr [ %.pre, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %.pre32, %bb.n ], [ %.pre32, %bb.m ] ; 2 uses
  %i.bl = phi i1 [ false, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %i.bj, %bb.n ], [ true, %bb.m ]
  %i.bm = icmp eq ptr %i.bk, %i.r
  br i1 %i.bm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i8: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.bn = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bn)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.bo = load i64, ptr %i.r, align 8, !tbaa !24
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.bq = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.n
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.bs = load i64, ptr %i.n, align 8, !tbaa !24
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  %i.bu = load ptr, ptr %6, align 8, !tbaa !45    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.l
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %i.bw = load i64, ptr %i.l, align 8, !tbaa !24
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br i1 %i.bl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.by = load ptr, ptr %i.h, align 8, !tbaa !104 ; 2 uses
  %i.bz = ptrtoint ptr %.sroa.021.029 to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = getelementptr inbounds i8, ptr %i.by, i64 %i.cb
  %i.cd = invoke ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS5_S7_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr %i.cc)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit unwind label %.loopexit.split-lp ; 0 uses

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.021.029, i64 32 ; 2 uses
  %i.cf = load ptr, ptr %i.j, align 8, !tbaa !104
  %.not25 = icmp eq ptr %i.ce, %i.cf
  br i1 %.not25, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit, label %bb.f, !llvm.loop !112

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit: ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.o
  %i.cg = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !24
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  ret void

.loopexit:                                        ; preds = %bb.k, %.noexc.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.r

.loopexit.split-lp:                               ; preds = %bb.c, %bb.d, %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cl = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.cl) #27
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 -2147483648, 2147483648) i64 @_ZNK16OpenColorIO_v2_512ViewingRules15getNumEncodingsEm(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  tail call void @_ZNK16OpenColorIO_v2_512ViewingRules4Impl16validatePositionEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %1)
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %1
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !60
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %sext = shl i64 %i.m, 27
  %i.n = ashr i64 %sext, 32
  ret i64 %i.n
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK16OpenColorIO_v2_512ViewingRules11getEncodingEmm(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 7 uses
end_hunk_1
begin_hunk_2_@_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS7_:bb.a
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !24
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ae
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !22
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !44
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !44
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !25

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare void @_ZN16OpenColorIO_v2_57LogInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11StringUtils5LowerB5cxx11EPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !71
  store i8 0, ptr %i.c, align 8, !tbaa !24
  br label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !77
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 %i.f, ptr %i.b, align 8, !tbaa !78
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i11, label %._crit_edge.i.i10

.noexc.i11:                                       ; preds = %bb.b
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !45
  %i.i = load i64, ptr %i.b, align 8, !tbaa !78
  store i64 %i.i, ptr %i.e, align 8, !tbaa !24
  br label %._crit_edge.i.i10

._crit_edge.i.i10:                                ; preds = %.noexc.i11, %bb.b
  %i.j = phi ptr [ %i.h, %.noexc.i11 ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.f, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i10
  %i.k = load i8, ptr %1, align 1, !tbaa !24
  store i8 %i.k, ptr %i.j, align 1, !tbaa !24
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %1, i64 %i.f, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i10
  %i.l = load i64, ptr %i.b, align 8, !tbaa !78   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !71
  %i.n = load ptr, ptr %2, align 8, !tbaa !45
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !77
  %i.q = load ptr, ptr %2, align 8, !tbaa !45     ; 2 uses
  %i.r = load i64, ptr %i.m, align 8, !tbaa !71   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.r, ptr %i.a, align 8, !tbaa !78
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i16, label %._crit_edge.i.i15

.noexc.i16:                                       ; preds = %bb.e
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc17 unwind label %bb.j   ; 2 uses

.noexc17:                                         ; preds = %.noexc.i16
  store ptr %i.t, ptr %3, align 8, !tbaa !45
  %i.u = load i64, ptr %i.a, align 8, !tbaa !78
  store i64 %i.u, ptr %i.p, align 8, !tbaa !24
  br label %._crit_edge.i.i15

._crit_edge.i.i15:                                ; preds = %.noexc17, %bb.e
  %i.v = phi ptr [ %i.t, %.noexc17 ], [ %i.p, %bb.e ] ; 2 uses
  switch i64 %i.r, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i15
  %i.w = load i8, ptr %i.q, align 1, !tbaa !24
  store i8 %i.w, ptr %i.v, align 1, !tbaa !24
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.q, i64 %i.r, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i15
  %i.x = load i64, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i64 %i.x, ptr %i.y, align 8, !tbaa !71
  %i.z = load ptr, ptr %3, align 8, !tbaa !45
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.ab = load ptr, ptr %3, align 8, !tbaa !45, !noalias !188 ; 7 uses
  %i.ac = load i64, ptr %i.y, align 8, !tbaa !71, !noalias !188 ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  %.not6.i.i = icmp samesign eq i64 %i.ac, 0
  br i1 %.not6.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i, label %iter.check

iter.check:                                       ; preds = %bb.h
  %min.iters.check = icmp ult i64 %i.ac, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check35 = icmp ult i64 %i.ac, 32
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ac, 24
  %n.vec = and i64 %i.ac, -32                     ; 4 uses
  %i.ae = getelementptr i8, ptr %i.ab, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ab, i64 %index ; 3 uses
  %i.af = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !24, !noalias !188 ; 2 uses
  %wide.load36 = load <16 x i8>, ptr %i.af, align 1, !tbaa !24, !noalias !188 ; 2 uses
  %i.ag = add <16 x i8> %wide.load, splat (i8 -65)
  %i.ah = add <16 x i8> %wide.load36, splat (i8 -65)
  %i.ai = icmp ult <16 x i8> %i.ag, splat (i8 26)
  %i.aj = icmp ult <16 x i8> %i.ah, splat (i8 26)
  %4 = select <16 x i1> %i.ai, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.ak = or disjoint <16 x i8> %wide.load, %4
  %i.al = select <16 x i1> %i.aj, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %5 = or disjoint <16 x i8> %wide.load36, %i.al
  store <16 x i8> %i.ak, ptr %next.gep, align 1, !tbaa !24, !noalias !188
  store <16 x i8> %5, ptr %i.af, align 1, !tbaa !24, !noalias !188
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !191

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !85

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec38 = and i64 %i.ac, -8                    ; 3 uses
  %i.an = getelementptr i8, ptr %i.ab, i64 %n.vec38
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index39 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 2 uses
  %next.gep40 = getelementptr i8, ptr %i.ab, i64 %index39 ; 2 uses
  %wide.load41 = load <8 x i8>, ptr %next.gep40, align 1, !tbaa !24, !noalias !188 ; 2 uses
  %i.ao = add <8 x i8> %wide.load41, splat (i8 -65)
  %i.ap = icmp ult <8 x i8> %i.ao, splat (i8 26)
  %6 = select <8 x i1> %i.ap, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %7 = or disjoint <8 x i8> %wide.load41, %6
  store <8 x i8> %7, ptr %next.gep40, align 1, !tbaa !24, !noalias !188
  %index.next42 = add nuw i64 %index39, 8         ; 2 uses
  %i.aq = icmp eq i64 %index.next42, %n.vec38
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !192

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n43 = icmp eq i64 %i.ac, %n.vec38
  br i1 %cmp.n43, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi ptr [ %i.ab, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %i.au, %.lr.ph.i.i ], [ %.sroa.0.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ar = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !24, !noalias !188 ; 3 uses
  %i.as = add i8 %i.ar, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.as, 26
  %i.at = or disjoint i8 %i.ar, 32
  %.0.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %i.at, i8 %i.ar
  store i8 %.0.i.i.i.i, ptr %.sroa.0.08.i.i, align 1, !tbaa !24, !noalias !188
  %i.au = getelementptr i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.au, %i.ad
  br i1 %.not.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !193

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !45, !noalias !188
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, %bb.h
  %i.av = phi ptr [ %.pre.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i ], [ %i.ab, %bb.h ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.aw, ptr %0, align 8, !tbaa !77, !alias.scope !188
  %i.ax = icmp eq ptr %i.av, %i.p
  br i1 %i.ax, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.i:                                             ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  %i.ay = load i64, ptr %i.y, align 8, !tbaa !71, !noalias !188 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.ba, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  store ptr %i.av, ptr %0, align 8, !tbaa !45, !alias.scope !188
  %i.bb = load i64, ptr %i.p, align 8, !tbaa !24, !noalias !188
  store i64 %i.bb, ptr %i.aw, align 8, !tbaa !24, !alias.scope !188
  %.pre4.i = load i64, ptr %i.y, align 8, !tbaa !71, !noalias !188
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %i.bc = phi i64 [ %i.ay, %bb.i ], [ %.pre4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !71, !alias.scope !188
  store ptr %i.p, ptr %3, align 8, !tbaa !45, !noalias !188
  store i64 0, ptr %i.y, align 8, !tbaa !71, !noalias !188
  store i8 0, ptr %i.p, align 8, !tbaa !24, !noalias !188
  %i.be = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.e
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = load i64, ptr %i.e, align 8, !tbaa !24
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.k

bb.j:                                             ; preds = %.noexc.i16
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.e
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.j
  %i.bl = load i64, ptr %i.e, align 8, !tbaa !24
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.bi

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %._crit_edge.i.i
  ret void
}

declare noundef i32 @_ZNK16OpenColorIO_v2_513ColorSpaceSet17getNumColorSpacesEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

declare void @_ZNK16OpenColorIO_v2_513ColorSpaceSet20getColorSpaceByIndexEi(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.24") align 8, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace11getEncodingEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNK16OpenColorIO_v2_513TokensManager9findTokenB5cxx11EPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !24
  %.not4 = icmp eq i8 %i.b, 0
  br i1 %.not4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !104
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZN11StringUtils5LowerB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull %1)
          to label %bb.e unwind label %.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN11StringUtils4TrimENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull %3)
          to label %bb.f unwind label %.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.e = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.h = load i64, ptr %i.f, align 8, !tbaa !24
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !104  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !104  ; 2 uses
  %.not2223 = icmp eq ptr %i.k, %i.m
  br i1 %.not2223, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.p
  %.sroa.018.024 = phi ptr [ %i.k, %.lr.ph ], [ %i.ca, %bb.p ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr %i.n, ptr %6, align 8, !tbaa !77
  %i.u = load ptr, ptr %.sroa.018.024, align 8, !tbaa !45 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.018.024, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !71   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.w, ptr %i.a, align 8, !tbaa !78
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.g
  %i.y = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.y, ptr %6, align 8, !tbaa !45
  %i.z = load i64, ptr %i.a, align 8, !tbaa !78
  store i64 %i.z, ptr %i.n, align 8, !tbaa !24
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.g
  %i.aa = phi ptr [ %i.y, %.noexc ], [ %i.n, %bb.g ] ; 2 uses
  switch i64 %i.w, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ab = load i8, ptr %i.u, align 1, !tbaa !24
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !24
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.u, i64 %i.w, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !78  ; 2 uses
  store i64 %i.ac, ptr %i.o, align 8, !tbaa !71
  %i.ad = load ptr, ptr %6, align 8, !tbaa !45
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  store i8 0, ptr %i.ae, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.af = load ptr, ptr %6, align 8, !tbaa !45, !noalias !194 ; 7 uses
  %i.ag = load i64, ptr %i.o, align 8, !tbaa !71, !noalias !194 ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  %.not6.i.i = icmp samesign eq i64 %i.ag, 0
  br i1 %.not6.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i, label %iter.check

iter.check:                                       ; preds = %bb.j
  %min.iters.check = icmp ult i64 %i.ag, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check43 = icmp ult i64 %i.ag, 32
  br i1 %min.iters.check43, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ag, 24
  %n.vec = and i64 %i.ag, -32                     ; 4 uses
  %i.ai = getelementptr i8, ptr %i.af, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %index ; 3 uses
  %i.aj = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !24, !noalias !194 ; 2 uses
  %wide.load44 = load <16 x i8>, ptr %i.aj, align 1, !tbaa !24, !noalias !194 ; 2 uses
  %i.ak = add <16 x i8> %wide.load, splat (i8 -65)
  %i.al = add <16 x i8> %wide.load44, splat (i8 -65)
  %i.am = icmp ult <16 x i8> %i.ak, splat (i8 26)
  %i.an = icmp ult <16 x i8> %i.al, splat (i8 26)
  %7 = select <16 x i1> %i.am, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.ao = or disjoint <16 x i8> %wide.load, %7
  %i.ap = select <16 x i1> %i.an, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %8 = or disjoint <16 x i8> %wide.load44, %i.ap
  store <16 x i8> %i.ao, ptr %next.gep, align 1, !tbaa !24, !noalias !194
  store <16 x i8> %8, ptr %i.aj, align 1, !tbaa !24, !noalias !194
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !197

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !85

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec46 = and i64 %i.ag, -8                    ; 3 uses
  %i.ar = getelementptr i8, ptr %i.af, i64 %n.vec46
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index47 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next50, %vec.epilog.vector.body ] ; 2 uses
  %next.gep48 = getelementptr i8, ptr %i.af, i64 %index47 ; 2 uses
  %wide.load49 = load <8 x i8>, ptr %next.gep48, align 1, !tbaa !24, !noalias !194 ; 2 uses
  %i.as = add <8 x i8> %wide.load49, splat (i8 -65)
  %i.at = icmp ult <8 x i8> %i.as, splat (i8 26)
  %9 = select <8 x i1> %i.at, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %10 = or disjoint <8 x i8> %wide.load49, %9
  store <8 x i8> %10, ptr %next.gep48, align 1, !tbaa !24, !noalias !194
  %index.next50 = add nuw i64 %index47, 8         ; 2 uses
  %i.au = icmp eq i64 %index.next50, %n.vec46
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !198

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n51 = icmp eq i64 %i.ag, %n.vec46
  br i1 %cmp.n51, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.i.ph = phi ptr [ %i.af, %iter.check ], [ %i.ai, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %i.ay, %.lr.ph.i.i ], [ %.sroa.0.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.av = load i8, ptr %.sroa.0.08.i.i, align 1, !tbaa !24, !noalias !194 ; 3 uses
  %i.aw = add i8 %i.av, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.aw, 26
  %i.ax = or disjoint i8 %i.av, 32
  %.0.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 %i.ax, i8 %i.av
  store i8 %.0.i.i.i.i, ptr %.sroa.0.08.i.i, align 1, !tbaa !24, !noalias !194
  %i.ay = getelementptr i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ay, %i.ah
  br i1 %.not.i.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !199

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !45, !noalias !194
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i, %bb.j
  %i.az = phi ptr [ %.pre.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i ], [ %i.af, %bb.j ] ; 2 uses
  store ptr %i.p, ptr %5, align 8, !tbaa !77, !alias.scope !194
  %i.ba = icmp eq ptr %i.az, %i.n
  br i1 %i.ba, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

bb.k:                                             ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  %i.bb = load i64, ptr %i.o, align 8, !tbaa !71, !noalias !194 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  %i.bd = add nuw nsw i64 %i.bb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.bd, i1 false)
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i
  store ptr %i.az, ptr %5, align 8, !tbaa !45, !alias.scope !194
  %i.be = load i64, ptr %i.n, align 8, !tbaa !24, !noalias !194
  store i64 %i.be, ptr %i.p, align 8, !tbaa !24, !alias.scope !194
  %.pre4.i = load i64, ptr %i.o, align 8, !tbaa !71, !noalias !194
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5, %bb.k
  %i.bf = phi i64 [ %i.bb, %bb.k ], [ %.pre4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5 ]
  store i64 %i.bf, ptr %i.q, align 8, !tbaa !71, !alias.scope !194
  store ptr %i.n, ptr %6, align 8, !tbaa !45, !noalias !194
  store i64 0, ptr %i.o, align 8, !tbaa !71, !noalias !194
  store i8 0, ptr %i.n, align 8, !tbaa !24, !noalias !194
  invoke void @_ZN11StringUtils4TrimENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull %5)
          to label %bb.m unwind label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.bg = load i64, ptr %i.r, align 8, !tbaa !71  ; 4 uses
  %i.bh = load i64, ptr %i.s, align 8, !tbaa !71
  %i.bi = icmp eq i64 %i.bg, %i.bh
  br i1 %i.bi, label %bb.n, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge: ; preds = %bb.m
  %.pre = load ptr, ptr %4, align 8, !tbaa !45
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.n:                                             ; preds = %bb.m
  %i.bj = icmp eq i64 %i.bg, 0
  %.pre26 = load ptr, ptr %4, align 8, !tbaa !45  ; 3 uses
  br i1 %i.bj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = load ptr, ptr %2, align 8, !tbaa !45
  %bcmp.i = call i32 @bcmp(ptr %.pre26, ptr %i.bk, i64 %i.bg)
  %i.bl = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge, %bb.n, %bb.o
  %i.bm = phi ptr [ %.pre, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %.pre26, %bb.o ], [ %.pre26, %bb.n ] ; 2 uses
  %i.bn = phi i1 [ false, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %i.bl, %bb.o ], [ true, %bb.n ]
  %i.bo = icmp eq ptr %i.bm, %i.t
  br i1 %i.bo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.bp = icmp ult i64 %i.bg, 16
  call void @llvm.assume(i1 %i.bp)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.bq = load i64, ptr %i.t, align 8, !tbaa !24
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.br) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  %i.bs = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.p
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8
  %i.bu = load i64, ptr %i.p, align 8, !tbaa !24
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  %i.bw = load ptr, ptr %6, align 8, !tbaa !45    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.n
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %i.by = load i64, ptr %i.n, align 8, !tbaa !24
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br i1 %i.bn, label %._crit_edge, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.018.024, i64 32 ; 2 uses
  %i.cb = load ptr, ptr %i.l, align 8, !tbaa !104 ; 2 uses
  %.not22 = icmp eq ptr %i.ca, %i.cb
  br i1 %.not22, label %._crit_edge, label %bb.g, !llvm.loop !200

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.018.1 = phi ptr [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cb, %bb.p ], [ %.sroa.018.024, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ]
  %i.cc = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %._crit_edge
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !24
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %bb.c
  %.sroa.018.2 = phi ptr [ %i.d, %bb.c ], [ %.sroa.018.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ]
  ret ptr %.sroa.018.2

.loopexit:                                        ; preds = %bb.l, %.noexc.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.r

.loopexit.split-lp:                               ; preds = %bb.d, %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ch = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.ch) #27
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !60     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #26
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #23
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

end_hunk_2
