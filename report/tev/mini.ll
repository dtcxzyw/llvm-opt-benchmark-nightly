Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/mini?download=true
inline.NumInlined: 4693
inline.NumDeleted: 2056
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN8Box_mini21create_expanded_boxesEP8HeifFile:bb.a
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sb, i64 40
  store i32 1769173093, ptr %i.sk, align 8, !tbaa !113, !noalias !598
  store ptr %i.sd, ptr %28, align 8, !tbaa !219, !alias.scope !599
  %i.sl = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  store ptr %i.sb, ptr %i.sl, align 8, !tbaa !220, !alias.scope !599
  %i.sm = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.sn = load <2 x i32>, ptr %i.sm, align 8, !tbaa !186
  store <2 x i32> %i.sn, ptr %i.sj, align 8, !tbaa !186
  %i.so = load ptr, ptr %18, align 8, !tbaa !587  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #24
  store ptr %i.sd, ptr %29, align 8, !tbaa !213
  %i.sp = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  store ptr %i.sb, ptr %i.sp, align 8, !tbaa !211
  %i.sq = atomicrmw add ptr %i.sc, i64 1 monotonic, align 8 ; 0 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.so, i64 64 ; 2 uses
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !207 ; 4 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.so, i64 72
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !208
  %i.sv = icmp ult ptr %i.ss, %i.su
  br i1 %i.sv, label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJRKS3_EEEvDpOT_.exit.i.i429, label %bb.ei

_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJRKS3_EEEvDpOT_.exit.i.i429: ; preds = %_ZNSt3__110shared_ptrI3BoxEC2B8ne180100I8Box_ispevEERKNS0_IT_EE.exit
  store ptr %i.sd, ptr %i.ss, align 8, !tbaa !213
  %i.sw = getelementptr inbounds nuw i8, ptr %i.ss, i64 8
  store ptr %i.sb, ptr %i.sw, align 8, !tbaa !211
  %i.sx = atomicrmw add ptr %i.sc, i64 1 monotonic, align 8 ; 0 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.ss, i64 16
  br label %bb.ej

bb.ei:                                            ; preds = %_ZNSt3__110shared_ptrI3BoxEC2B8ne180100I8Box_ispevEERKNS0_IT_EE.exit
  %i.sz = getelementptr inbounds nuw i8, ptr %i.so, i64 56
  %i.ta = invoke noundef ptr @_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE21__push_back_slow_pathIRKS3_EEPS3_OT_(ptr noundef nonnull align 8 dereferenceable(24) %i.sz, ptr noundef nonnull align 8 dereferenceable(16) %29)
          to label %bb.ej unwind label %bb.gd

bb.ej:                                            ; preds = %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJRKS3_EEEvDpOT_.exit.i.i429, %bb.ei
  %.0.i.i427 = phi ptr [ %i.sy, %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJRKS3_EEEvDpOT_.exit.i.i429 ], [ %i.ta, %bb.ei ]
  store ptr %.0.i.i427, ptr %i.sr, align 8, !tbaa !207
  %i.tb = load ptr, ptr %i.sp, align 8, !tbaa !211 ; 5 uses
  %.not.i432 = icmp eq ptr %i.tb, null
  br i1 %.not.i432, label %_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev.exit433, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  %i.td = atomicrmw add ptr %i.tc, i64 -1 acq_rel, align 8
  %i.te = icmp eq i64 %i.td, 0
  br i1 %i.te, label %bb.el, label %_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev.exit433

bb.el:                                            ; preds = %bb.ek
  %i.tf = load ptr, ptr %i.tb, align 8, !tbaa !31
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 16
  %i.th = load ptr, ptr %i.tg, align 8
  call void %i.th(ptr noundef nonnull align 8 dereferenceable(24) %i.tb) #24, !inline_history !3
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.tb) #24
  br label %_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev.exit433

_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev.exit433: ; preds = %bb.ej, %bb.ek, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  call void @llvm.experimental.noalias.scope.decl(metadata !601)
  %i.ti = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #27
          to label %.noexc434 unwind label %bb.ge ; 14 uses

.noexc434:                                        ; preds = %_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev.exit433
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tj, i8 0, i64 16, i1 false), !noalias !602
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceI8Box_pixiNS_9allocatorIS1_EEEE, i64 16), ptr %i.ti, align 8, !tbaa !31, !noalias !602
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ti, i64 24 ; 8 uses
  invoke void @_ZN9BoxHeaderC2Ev(ptr noundef nonnull align 8 dereferenceable(184) %i.tk)
          to label %bb.em unwind label %_ZNSt3__118__allocation_guardINS_9allocatorINS_20__shared_ptr_emplaceI8Box_pixiNS1_IS3_EEEEEEED2B8ne180100Ev.exit4.i.i, !noalias !602

_ZNSt3__118__allocation_guardINS_9allocatorINS_20__shared_ptr_emplaceI8Box_pixiNS1_IS3_EEEEEEED2B8ne180100Ev.exit4.i.i: ; preds = %.noexc434
  %i.tl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(208) %i.ti) #24, !noalias !602
  call void @_ZdlPvm(ptr noundef nonnull %i.ti, i64 noundef 208) #25, !noalias !602
  br label %.body435

bb.em:                                            ; preds = %.noexc434
  %i.tm = getelementptr inbounds nuw i8, ptr %i.ti, i64 80
  %i.tn = getelementptr inbounds nuw i8, ptr %i.ti, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.tm, i8 0, i64 28, i1 false), !noalias !602
  %i.to = getelementptr inbounds nuw i8, ptr %i.ti, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tn, i8 -1, i64 16, i1 false), !noalias !602
  %i.tp = getelementptr inbounds nuw i8, ptr %i.ti, i64 180
  store i32 0, ptr %i.tp, align 4, !tbaa !140, !noalias !602
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(50) %i.to, i8 0, i64 50, i1 false), !noalias !602
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTV8Box_pixi, i64 16), ptr %i.tk, align 8, !tbaa !31, !noalias !602
  %i.tq = getelementptr inbounds nuw i8, ptr %i.ti, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tq, i8 0, i64 24, i1 false), !noalias !602
  %i.tr = getelementptr inbounds nuw i8, ptr %i.ti, i64 40
  store i32 1885960297, ptr %i.tr, align 8, !tbaa !113, !noalias !602
  store ptr %i.tk, ptr %30, align 8, !tbaa !223, !alias.scope !603
  %i.ts = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  store ptr %i.ti, ptr %i.ts, align 8, !tbaa !224, !alias.scope !603
  %i.tt = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 3 uses
  %i.tu = load i8, ptr %i.tt, align 8, !tbaa !89
  %i.tv = zext i8 %i.tu to i16
  %i.tw = invoke noundef zeroext i1 @_ZN8Box_pixi16add_channel_bitsEt(ptr noundef nonnull align 8 dereferenceable(184) %i.tk, i16 noundef zeroext %i.tv)
          to label %bb.en unwind label %bb.gf     ; 0 uses

bb.en:                                            ; preds = %bb.em
  %i.tx = load i8, ptr %i.tt, align 8, !tbaa !89
  %i.ty = zext i8 %i.tx to i16
  %i.tz = invoke noundef zeroext i1 @_ZN8Box_pixi16add_channel_bitsEt(ptr noundef nonnull align 8 dereferenceable(184) %i.tk, i16 noundef zeroext %i.ty)
          to label %bb.eo unwind label %bb.gf     ; 0 uses

bb.eo:                                            ; preds = %bb.en
  %i.ua = load i8, ptr %i.tt, align 8, !tbaa !89
  %i.ub = zext i8 %i.ua to i16
  %i.uc = invoke noundef zeroext i1 @_ZN8Box_pixi16add_channel_bitsEt(ptr noundef nonnull align 8 dereferenceable(184) %i.tk, i16 noundef zeroext %i.ub)
          to label %_ZNSt3__110shared_ptrI3BoxEC2B8ne180100I8Box_pixivEERKNS0_IT_EE.exit unwind label %bb.gf ; 0 uses

_ZNSt3__110shared_ptrI3BoxEC2B8ne180100I8Box_pixivEERKNS0_IT_EE.exit: ; preds = %bb.eo
  %i.ud = load ptr, ptr %18, align 8, !tbaa !587  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #24
  store ptr %i.tk, ptr %31, align 8, !tbaa !213
  %i.ue = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  store ptr %i.ti, ptr %i.ue, align 8, !tbaa !211
  %i.uf = atomicrmw add ptr %i.tj, i64 1 monotonic, align 8 ; 0 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ud, i64 64 ; 2 uses
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !207 ; 4 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ud, i64 72
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !208
  %i.uk = icmp ult ptr %i.uh, %i.uj
  br i1 %i.uk, label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJRKS3_EEEvDpOT_.exit.i.i440, label %bb.ep

_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJRKS3_EEEvDpOT_.exit.i.i440: ; preds = %_ZNSt3__110shared_ptrI3BoxEC2B8ne180100I8Box_pixivEERKNS0_IT_EE.exit
  store ptr %i.tk, ptr %i.uh, align 8, !tbaa !213
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uh, i64 8
  store ptr %i.ti, ptr %i.ul, align 8, !tbaa !211
  %i.um = atomicrmw add ptr %i.tj, i64 1 monotonic, align 8 ; 0 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.uh, i64 16
  br label %bb.eq

bb.ep:                                            ; preds = %_ZNSt3__110shared_ptrI3BoxEC2B8ne180100I8Box_pixivEERKNS0_IT_EE.exit
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ud, i64 56
  %i.up = invoke noundef ptr @_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE21__push_back_slow_pathIRKS3_EEPS3_OT_(ptr noundef nonnull align 8 dereferenceable(24) %i.uo, ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %bb.eq unwind label %bb.gg

bb.eq:                                            ; preds = %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJRKS3_EEEvDpOT_.exit.i.i440, %bb.ep
  %.0.i.i438 = phi ptr [ %i.un, %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJRKS3_EEEvDpOT_.exit.i.i440 ], [ %i.up, %bb.ep ]
  store ptr %.0.i.i438, ptr %i.ug, align 8, !tbaa !207
  %i.uq = load ptr, ptr %i.ue, align 8, !tbaa !211 ; 5 uses
  %.not.i443 = icmp eq ptr %i.uq, null
  br i1 %.not.i443, label %_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev.exit444, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 8
  %i.us = atomicrmw add ptr %i.ur, i64 -1 acq_rel, align 8
  %i.ut = icmp eq i64 %i.us, 0
  br i1 %i.ut, label %bb.es, label %_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev.exit444

bb.es:                                            ; preds = %bb.er
  %i.uu = load ptr, ptr %i.uq, align 8, !tbaa !31
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 16
  %i.uw = load ptr, ptr %i.uv, align 8
  call void %i.uw(ptr noundef nonnull align 8 dereferenceable(24) %i.uq) #24, !inline_history !3
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.uq) #24
  br label %_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev.exit444

_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev.exit444: ; preds = %bb.eq, %bb.er, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !604)
  call void @llvm.experimental.noalias.scope.decl(metadata !605)
  %i.ux = invoke noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #27
          to label %.noexc445 unwind label %bb.gh ; 13 uses

.noexc445:                                        ; preds = %_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev.exit444
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.uy, i8 0, i64 16, i1 false), !noalias !606
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceI8Box_colrNS_9allocatorIS1_EEEE, i64 16), ptr %i.ux, align 8, !tbaa !31, !noalias !606
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ux, i64 24 ; 3 uses
  invoke void @_ZN9BoxHeaderC2Ev(ptr noundef nonnull align 8 dereferenceable(176) %i.uz)
          to label %bb.et unwind label %_ZNSt3__118__allocation_guardINS_9allocatorINS_20__shared_ptr_emplaceI8Box_colrNS1_IS3_EEEEEEED2B8ne180100Ev.exit4.i.i, !noalias !606

_ZNSt3__118__allocation_guardINS_9allocatorINS_20__shared_ptr_emplaceI8Box_colrNS1_IS3_EEEEEEED2B8ne180100Ev.exit4.i.i: ; preds = %.noexc445
  %i.va = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(200) %i.ux) #24, !noalias !606
  call void @_ZdlPvm(ptr noundef nonnull %i.ux, i64 noundef 200) #25, !noalias !606
  br label %.body446

bb.et:                                            ; preds = %.noexc445
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ux, i64 80
  %i.vc = getelementptr inbounds nuw i8, ptr %i.ux, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.vb, i8 0, i64 28, i1 false), !noalias !606
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ux, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vc, i8 -1, i64 16, i1 false), !noalias !606
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.vd, i8 0, i64 49, i1 false), !noalias !606
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTV8Box_colr, i64 16), ptr %i.uz, align 8, !tbaa !31, !noalias !606
  %i.ve = getelementptr inbounds nuw i8, ptr %i.ux, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ve, i8 0, i64 16, i1 false), !noalias !606
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ux, i64 40
  store i32 1668246642, ptr %i.vf, align 8, !tbaa !113, !noalias !606
  store ptr %i.uz, ptr %32, align 8, !tbaa !227, !alias.scope !607
  %i.vg = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 3 uses
  store ptr %i.ux, ptr %i.vg, align 8, !tbaa !228, !alias.scope !607
  %i.vh = getelementptr inbounds nuw i8, ptr %1, i64 180
  %75 = load i32, ptr %i.vh, align 4
  %i.vi = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.vj = load i16, ptr %i.vi, align 8, !tbaa !93
  %i.vk = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.vl = load i8, ptr %i.vk, align 4, !tbaa !74, !range !87, !noundef !88
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !608)
  call void @llvm.experimental.noalias.scope.decl(metadata !609)
  %i.vm = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27
          to label %_ZNSt3__110shared_ptrIK13color_profileEC2B8ne180100ERKS3_.exit.i.i unwind label %bb.gi ; 9 uses

_ZNSt3__110shared_ptrIK13color_profileEC2B8ne180100ERKS3_.exit.i.i: ; preds = %bb.et
  %76 = zext i32 %75 to i64
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vn, i8 0, i64 16, i1 false), !noalias !610
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceI18color_profile_nclxNS_9allocatorIS1_EEEE, i64 16), ptr %i.vm, align 8, !tbaa !31, !noalias !610
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vm, i64 24 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV18color_profile_nclx, i64 16), ptr %i.vo, align 8, !tbaa !31, !noalias !610
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vm, i64 32
  %.sroa.10.0.insert.ext = zext nneg i8 %i.vl to i64
  %.sroa.10.0.insert.shift = shl nuw nsw i64 %.sroa.10.0.insert.ext, 48
  %.sroa.8.0.insert.ext = zext i16 %i.vj to i64
  %.sroa.6.0.insert.shift = shl nuw nsw i64 %.sroa.8.0.insert.ext, 32
  %.sroa.6.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %76
  %.sroa.0802.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.insert, %.sroa.10.0.insert.shift
  store i64 %.sroa.0802.0.insert.insert, ptr %i.vp, align 8, !noalias !610
  store ptr %i.vo, ptr %33, align 8, !tbaa !611, !alias.scope !612
  %i.vq = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  store ptr %i.vm, ptr %i.vq, align 8, !tbaa !231, !alias.scope !612
  %i.vr = atomicrmw add ptr %i.vn, i64 1 monotonic, align 8 ; 0 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.ux, i64 184
  %i.vt = atomicrmw add ptr %i.vn, i64 1 monotonic, align 8 ; 0 uses
  store ptr %i.vo, ptr %i.vs, align 8, !tbaa !613
  %i.vu = getelementptr inbounds nuw i8, ptr %i.ux, i64 192 ; 2 uses
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !119 ; 5 uses
  store ptr %i.vm, ptr %i.vu, align 8, !tbaa !119
  %.not.i2.i.i = icmp eq ptr %i.vv, null
  br i1 %.not.i2.i.i, label %_ZN8Box_colr17set_color_profileERKNSt3__110shared_ptrIK13color_profileEE.exit, label %bb.eu

bb.eu:                                            ; preds = %_ZNSt3__110shared_ptrIK13color_profileEC2B8ne180100ERKS3_.exit.i.i
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 8
  %i.vx = atomicrmw add ptr %i.vw, i64 -1 acq_rel, align 8
  %i.vy = icmp eq i64 %i.vx, 0
  br i1 %i.vy, label %bb.ev, label %_ZN8Box_colr17set_color_profileERKNSt3__110shared_ptrIK13color_profileEE.exit

bb.ev:                                            ; preds = %bb.eu
  %i.vz = load ptr, ptr %i.vv, align 8, !tbaa !31
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 16
  %i.wb = load ptr, ptr %i.wa, align 8
  call void %i.wb(ptr noundef nonnull align 8 dereferenceable(24) %i.vv) #24, !inline_history !481
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.vv) #24
  br label %_ZN8Box_colr17set_color_profileERKNSt3__110shared_ptrIK13color_profileEE.exit

_ZN8Box_colr17set_color_profileERKNSt3__110shared_ptrIK13color_profileEE.exit: ; preds = %bb.ev, %bb.eu, %_ZNSt3__110shared_ptrIK13color_profileEC2B8ne180100ERKS3_.exit.i.i
  %i.wc = atomicrmw add ptr %i.vn, i64 -1 acq_rel, align 8
  %i.wd = icmp eq i64 %i.wc, 0
  br i1 %i.wd, label %bb.ew, label %_ZNSt3__110shared_ptrIK13color_profileED2B8ne180100Ev.exit

bb.ew:                                            ; preds = %_ZN8Box_colr17set_color_profileERKNSt3__110shared_ptrIK13color_profileEE.exit
  %i.we = load ptr, ptr %i.vm, align 8, !tbaa !31
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 16
  %i.wg = load ptr, ptr %i.wf, align 8
  call void %i.wg(ptr noundef nonnull align 8 dereferenceable(24) %i.vm) #24, !inline_history !482
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.vm) #24
  br label %_ZNSt3__110shared_ptrIK13color_profileED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrIK13color_profileED2B8ne180100Ev.exit: ; preds = %_ZN8Box_colr17set_color_profileERKNSt3__110shared_ptrIK13color_profileEE.exit, %bb.ew
  %i.wh = load ptr, ptr %18, align 8, !tbaa !587  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #24
  %i.wi = load ptr, ptr %32, align 8, !tbaa !227  ; 2 uses
  store ptr %i.wi, ptr %34, align 8, !tbaa !213
  %i.wj = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 3 uses
  %i.wk = load ptr, ptr %i.vg, align 8, !tbaa !228 ; 3 uses
  store ptr %i.wk, ptr %i.wj, align 8, !tbaa !211
  %.not.i452 = icmp eq ptr %i.wk, null
  br i1 %.not.i452, label %_ZNSt3__110shared_ptrI3BoxEC2B8ne180100I8Box_colrvEERKNS0_IT_EE.exit, label %bb.ex

bb.ex:                                            ; preds = %_ZNSt3__110shared_ptrIK13color_profileED2B8ne180100Ev.exit
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 8
  %i.wm = atomicrmw add ptr %i.wl, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrI3BoxEC2B8ne180100I8Box_colrvEERKNS0_IT_EE.exit

_ZNSt3__110shared_ptrI3BoxEC2B8ne180100I8Box_colrvEERKNS0_IT_EE.exit: ; preds = %_ZNSt3__110shared_ptrIK13color_profileED2B8ne180100Ev.exit, %bb.ex
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wh, i64 64 ; 2 uses
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !207 ; 4 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wh, i64 72
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !208
  %i.wr = icmp ult ptr %i.wo, %i.wq
  br i1 %i.wr, label %bb.ey, label %bb.fa

bb.ey:                                            ; preds = %_ZNSt3__110shared_ptrI3BoxEC2B8ne180100I8Box_colrvEERKNS0_IT_EE.exit
  store ptr %i.wi, ptr %i.wo, align 8, !tbaa !213
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wo, i64 8
  %i.wt = load ptr, ptr %i.wj, align 8, !tbaa !211 ; 3 uses
  store ptr %i.wt, ptr %i.ws, align 8, !tbaa !211
  %.not.i.i.i.i.i.i.i454 = icmp eq ptr %i.wt, null
  br i1 %.not.i.i.i.i.i.i.i454, label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJRKS3_EEEvDpOT_.exit.i.i455, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 8
  %i.wv = atomicrmw add ptr %i.wu, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJRKS3_EEEvDpOT_.exit.i.i455

_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJRKS3_EEEvDpOT_.exit.i.i455: ; preds = %bb.ez, %bb.ey
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wo, i64 16
  br label %bb.fb

bb.fa:                                            ; preds = %_ZNSt3__110shared_ptrI3BoxEC2B8ne180100I8Box_colrvEERKNS0_IT_EE.exit
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wh, i64 56
  %i.wy = invoke noundef ptr @_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE21__push_back_slow_pathIRKS3_EEPS3_OT_(ptr noundef nonnull align 8 dereferenceable(24) %i.wx, ptr noundef nonnull align 8 dereferenceable(16) %34)
          to label %bb.fb unwind label %bb.gj

bb.fb:                                            ; preds = %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJRKS3_EEEvDpOT_.exit.i.i455, %bb.fa
  %.0.i.i453 = phi ptr [ %i.ww, %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJRKS3_EEEvDpOT_.exit.i.i455 ], [ %i.wy, %bb.fa ]
  store ptr %.0.i.i453, ptr %i.wn, align 8, !tbaa !207
  %i.wz = load ptr, ptr %i.wj, align 8, !tbaa !211 ; 5 uses
  %.not.i458 = icmp eq ptr %i.wz, null
  br i1 %.not.i458, label %_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev.exit459, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 8
  %i.xb = atomicrmw add ptr %i.xa, i64 -1 acq_rel, align 8
  %i.xc = icmp eq i64 %i.xb, 0
  br i1 %i.xc, label %bb.fd, label %_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev.exit459

bb.fd:                                            ; preds = %bb.fc
  %i.xd = load ptr, ptr %i.wz, align 8, !tbaa !31
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 16
  %i.xf = load ptr, ptr %i.xe, align 8
  call void %i.xf(ptr noundef nonnull align 8 dereferenceable(24) %i.wz) #24, !inline_history !3
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.wz) #24
  br label %_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev.exit459

_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev.exit459: ; preds = %bb.fb, %bb.fc, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #24
  %i.xg = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.xh = load i8, ptr %i.xg, align 8, !tbaa !78, !range !87, !noundef !88
  %i.xi = trunc nuw i8 %i.xh to i1
  br i1 %i.xi, label %bb.fe, label %bb.go

bb.fe:                                            ; preds = %_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev.exit459
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !614)
  call void @llvm.experimental.noalias.scope.decl(metadata !615)
  %i.xj = invoke noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #27
          to label %.noexc461 unwind label %bb.gk ; 13 uses

.noexc461:                                        ; preds = %bb.fe
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xk, i8 0, i64 16, i1 false), !noalias !616
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceI8Box_colrNS_9allocatorIS1_EEEE, i64 16), ptr %i.xj, align 8, !tbaa !31, !noalias !616
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xj, i64 24 ; 3 uses
  invoke void @_ZN9BoxHeaderC2Ev(ptr noundef nonnull align 8 dereferenceable(176) %i.xl)
          to label %bb.ff unwind label %_ZNSt3__118__allocation_guardINS_9allocatorINS_20__shared_ptr_emplaceI8Box_colrNS1_IS3_EEEEEEED2B8ne180100Ev.exit4.i.i460, !noalias !616

_ZNSt3__118__allocation_guardINS_9allocatorINS_20__shared_ptr_emplaceI8Box_colrNS1_IS3_EEEEEEED2B8ne180100Ev.exit4.i.i460: ; preds = %.noexc461
  %i.xm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(200) %i.xj) #24, !noalias !616
  call void @_ZdlPvm(ptr noundef nonnull %i.xj, i64 noundef 200) #25, !noalias !616
  br label %.body462

bb.ff:                                            ; preds = %.noexc461
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xj, i64 80
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xj, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.xn, i8 0, i64 28, i1 false), !noalias !616
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xj, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xo, i8 -1, i64 16, i1 false), !noalias !616
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.xp, i8 0, i64 49, i1 false), !noalias !616
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTV8Box_colr, i64 16), ptr %i.xl, align 8, !tbaa !31, !noalias !616
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xj, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xq, i8 0, i64 16, i1 false), !noalias !616
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xj, i64 40
  store i32 1668246642, ptr %i.xr, align 8, !tbaa !113, !noalias !616
  store ptr %i.xl, ptr %35, align 8, !tbaa !227, !alias.scope !617
  %i.xs = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 3 uses
  store ptr %i.xj, ptr %i.xs, align 8, !tbaa !228, !alias.scope !617
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 1886547814, ptr %i.a, align 4, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !618)
  %i.xt = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.xu = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 3 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %37, i8 0, i64 24, i1 false), !alias.scope !618
  %i.xw = load ptr, ptr %i.xt, align 8, !tbaa !49, !noalias !618 ; 3 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !51, !noalias !618 ; 2 uses
  %i.xz = ptrtoint ptr %i.xy to i64
  %i.ya = ptrtoint ptr %i.xw to i64
  %i.yb = sub i64 %i.xz, %i.ya                    ; 4 uses
  %.not.i.i.i465 = icmp eq ptr %i.xy, %i.xw
  br i1 %.not.i.i.i465, label %_ZNK8Box_mini12get_icc_dataEv.exit, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.yc = icmp slt i64 %i.yb, 0
  br i1 %i.yc, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  invoke void @_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %37) #26
          to label %.noexc.i.i.i469 unwind label %bb.fj

.noexc.i.i.i469:                                  ; preds = %bb.fh
  unreachable

bb.fi:                                            ; preds = %bb.fg
  %i.yd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yb) #27
          to label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit.i.i.i468 unwind label %bb.fj, !noalias !618 ; 3 uses

_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit.i.i.i468: ; preds = %bb.fi
  store ptr %i.yd, ptr %37, align 8, !tbaa !49, !alias.scope !618
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 %i.yb ; 2 uses
  store ptr %i.ye, ptr %i.xv, align 8, !tbaa !50, !alias.scope !618
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.yd, ptr align 1 %i.xw, i64 %i.yb, i1 false), !noalias !618
  store ptr %i.ye, ptr %i.xu, align 8, !tbaa !51, !alias.scope !618
  br label %_ZNK8Box_mini12get_icc_dataEv.exit

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %i.yf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yg = load ptr, ptr %37, align 8, !tbaa !49, !alias.scope !618 ; 2 uses
  %.not.i.i.i.i.i466 = icmp eq ptr %i.yg, null
  br i1 %.not.i.i.i.i.i466, label %.body470, label %.body470.sink.split
end_hunk_0
