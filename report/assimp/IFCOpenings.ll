inline.NumInlined: 3958
inline.NumDeleted: 1464
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp3IFC20GetContoursInPlane3DERKSt10shared_ptrINS0_8TempMeshEE12aiMatrix3x3tIdEd:bb.a

bb.bk:                                            ; preds = %.lr.ph761, %_ZNSt5dequeI10aiVector2tIdESaIS1_EED2Ev.exit
  %i.se = phi ptr [ %i.qv, %.lr.ph761 ], [ %i.amb, %_ZNSt5dequeI10aiVector2tIdESaIS1_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %i.se, i64 16, i1 false)
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qx, ptr noundef nonnull align 8 dereferenceable(16) %i.sf, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %17, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %17, i64 noundef 2)
          to label %.noexc411 unwind label %.body299

.noexc411:                                        ; preds = %bb.bk
  %i.sg = load ptr, ptr %i.ra, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.sg, ptr noundef nonnull align 8 dereferenceable(32) %18, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  %i.sh = load ptr, ptr %i.ny, align 8            ; 2 uses
  %i.si = load ptr, ptr %i.os, align 8
  %i.sj = getelementptr inbounds i8, ptr %i.si, i64 -32
  %.not.i301 = icmp eq ptr %i.sh, %i.sj
  br i1 %.not.i301, label %bb.bm, label %bb.bl

.body299:                                         ; preds = %bb.bk
  %i.sk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %17) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  br label %_ZNSt5dequeI10aiVector2tIdESaIS1_EED2Ev.exit351

bb.bl:                                            ; preds = %.noexc411
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sh, i64 32
  br label %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9pop_frontEv.exit

bb.bm:                                            ; preds = %.noexc411
  %i.sm = load ptr, ptr %i.qc, align 8
  call void @_ZdlPvm(ptr noundef %i.sm, i64 noundef 512) #26
  %i.sn = load ptr, ptr %i.ob, align 8
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 8 ; 2 uses
  store ptr %i.so, ptr %i.ob, align 8
  %i.sp = load ptr, ptr %i.so, align 8            ; 3 uses
  store ptr %i.sp, ptr %i.qc, align 8
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 512
  store ptr %i.sq, ptr %i.os, align 8
  br label %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9pop_frontEv.exit

_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9pop_frontEv.exit: ; preds = %bb.bl, %bb.bm
  %storemerge.i = phi ptr [ %i.sl, %bb.bl ], [ %i.sp, %bb.bm ] ; 2 uses
  store ptr %storemerge.i, ptr %i.ny, align 8
  %i.sr = load ptr, ptr %i.nx, align 8, !noalias !380
  %i.ss = icmp eq ptr %storemerge.i, %i.sr
  br i1 %i.ss, label %.critedge, label %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9pop_frontEv.exit.split.preheader

_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9pop_frontEv.exit.split.preheader: ; preds = %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9pop_frontEv.exit
  %i.st = load ptr, ptr %i.ny, align 8, !noalias !383 ; 2 uses
  %i.su = load ptr, ptr %i.nx, align 8, !noalias !380 ; 2 uses
  %.not586747986 = icmp eq ptr %i.st, %i.su
  br i1 %.not586747986, label %.critedge, label %.lr.ph752

.lr.ph752:                                        ; preds = %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9pop_frontEv.exit.split.preheader, %.loopexit
  %i.sv = phi ptr [ %i.aik, %.loopexit ], [ %i.su, %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9pop_frontEv.exit.split.preheader ]
  %i.sw = phi ptr [ %i.aij, %.loopexit ], [ %i.st, %_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE9pop_frontEv.exit.split.preheader ]
  %i.sx = load ptr, ptr %i.ob, align 8, !noalias !383
  %i.sy = load ptr, ptr %i.os, align 8, !noalias !383
  %i.sz = load ptr, ptr %i.rb, align 8, !noalias !386 ; 9 uses
  %i.ta = load <2 x double>, ptr %i.sz, align 8   ; 3 uses
  %i.tb = load ptr, ptr %i.rc, align 8            ; 13 uses
  %i.tc = load ptr, ptr %i.ra, align 8            ; 5 uses
  %i.td = icmp eq ptr %i.tb, %i.tc                ; 4 uses
  %i.te = load ptr, ptr %i.qz, align 8            ; 19 uses
  %i.tf = getelementptr inbounds i8, ptr %i.te, i64 -8 ; 4 uses
  br label %bb.bp

bb.bn:                                            ; preds = %bb.bj, %.body282, %bb.bf
  %.pn144 = phi { ptr, i32 } [ %i.sd, %bb.bj ], [ %.pn129, %.body282 ], [ %i.rs, %bb.bf ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %15) #27
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.be
  %.pn144.pn = phi { ptr, i32 } [ %.pn144, %bb.bn ], [ %i.rr, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %_ZNSt6vectorIS_I10aiVector2tIdESaIS1_EESaIS3_EED2Ev.exit

bb.bp:                                            ; preds = %.lr.ph752, %_ZNSt15_Deque_iteratorISt4pairI10aiVector2tIdES2_ERS3_PS3_EppEi.exit
  %.sroa.32.0750 = phi ptr [ %i.sx, %.lr.ph752 ], [ %.sroa.32.1, %_ZNSt15_Deque_iteratorISt4pairI10aiVector2tIdES2_ERS3_PS3_EppEi.exit ] ; 6 uses
  %.sroa.27.0749 = phi ptr [ %i.sy, %.lr.ph752 ], [ %.sroa.27.1, %_ZNSt15_Deque_iteratorISt4pairI10aiVector2tIdES2_ERS3_PS3_EppEi.exit ] ; 2 uses
  %.sroa.0479.0748 = phi ptr [ %i.sw, %.lr.ph752 ], [ %.sroa.0479.1, %_ZNSt15_Deque_iteratorISt4pairI10aiVector2tIdES2_ERS3_PS3_EppEi.exit ] ; 12 uses
  %i.tg = load <2 x double>, ptr %.sroa.0479.0748, align 8 ; 3 uses
  %i.th = fsub <2 x double> %i.tg, %i.ta
  %i.ti = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.th)
  %i.tj = fcmp olt <2 x double> %i.ti, splat (double f0x3EB0C6F7A0000000) ; 2 uses
  %i.tk = extractelement <2 x i1> %i.tj, i64 0
  %i.tl = extractelement <2 x i1> %i.tj, i64 1
  %i.tm = select i1 %i.tk, i1 %i.tl, i1 false     ; 2 uses
  br i1 %i.tm, label %bb.bq, label %bb.bt

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.td, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.tn = load ptr, ptr %i.tf, align 8
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 512
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.tp = phi ptr [ %i.to, %bb.br ], [ %i.tb, %bb.bq ]
  %i.tq = getelementptr inbounds i8, ptr %i.tp, i64 -16
  %i.tr = getelementptr inbounds nuw i8, ptr %.sroa.0479.0748, i64 16
  %i.ts = load <2 x double>, ptr %i.tq, align 8
  %i.tt = load <2 x double>, ptr %i.tr, align 8
  %i.tu = fsub <2 x double> %i.tt, %i.ts
  %i.tv = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.tu)
  %i.tw = fcmp olt <2 x double> %i.tv, splat (double f0x3EB0C6F7A0000000) ; 2 uses
  %i.tx = extractelement <2 x i1> %i.tw, i64 0
  %i.ty = extractelement <2 x i1> %i.tw, i64 1
  %i.tz = select i1 %i.tx, i1 %i.ty, i1 false
  br i1 %i.tz, label %bb.bx, label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.bp
  br i1 %i.td, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ua = load ptr, ptr %i.tf, align 8
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 512
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.uc = phi ptr [ %i.ub, %bb.bu ], [ %i.tb, %bb.bt ]
  %i.ud = getelementptr inbounds i8, ptr %i.uc, i64 -16
  %i.ue = load <2 x double>, ptr %i.ud, align 8
  %i.uf = fsub <2 x double> %i.tg, %i.ue
  %i.ug = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.uf)
  %i.uh = fcmp olt <2 x double> %i.ug, splat (double f0x3EB0C6F7A0000000) ; 2 uses
  %i.ui = extractelement <2 x i1> %i.uh, i64 0
  %i.uj = extractelement <2 x i1> %i.uh, i64 1
  %i.uk = select i1 %i.ui, i1 %i.uj, i1 false
  br i1 %i.uk, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  %i.ul = getelementptr inbounds nuw i8, ptr %.sroa.0479.0748, i64 16
  %i.um = load <2 x double>, ptr %i.ul, align 8
  %i.un = fsub <2 x double> %i.um, %i.ta
  %i.uo = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.un)
  %i.up = fcmp olt <2 x double> %i.uo, splat (double f0x3EB0C6F7A0000000) ; 2 uses
  %i.uq = extractelement <2 x i1> %i.up, i64 0
  %i.ur = extractelement <2 x i1> %i.up, i64 1
  %i.us = select i1 %i.uq, i1 %i.ur, i1 false
  br i1 %i.us, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw, %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.experimental.noalias.scope.decl(metadata !389)
  store ptr %.sroa.0479.0748, ptr %5, align 8, !alias.scope !389, !noalias !392
  %i.ut = load ptr, ptr %.sroa.32.0750, align 8, !noalias !395 ; 2 uses
  store ptr %i.ut, ptr %i.rk, align 8, !alias.scope !389, !noalias !392
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 512
  store ptr %i.uu, ptr %i.rl, align 8, !alias.scope !389, !noalias !392
  store ptr %.sroa.32.0750, ptr %i.rm, align 8, !alias.scope !389, !noalias !392
  invoke void @_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE8_M_eraseESt15_Deque_iteratorIS3_RS3_PS3_E(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %19, ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull dead_on_return %5)
          to label %.split.us.thread unwind label %bb.by

.split.us.thread:                                 ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA44_KcEEEvDpOT_.exit

.loopexit590:                                     ; preds = %_ZNSt5dequeI10aiVector2tIdESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_.exit.i, %_ZNSt5dequeI10aiVector2tIdESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_.exit.i310, %_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE15_M_allocate_mapEm.exit.i, %_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE15_M_allocate_mapEm.exit.i416, %_ZNSt5dequeI10aiVector2tIdESaIS1_EE22_M_reserve_map_at_backEm.exit.i, %_ZNSt5dequeI10aiVector2tIdESaIS1_EE22_M_reserve_map_at_backEm.exit.i430, %_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE15_M_allocate_mapEm.exit.i436, %_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE15_M_allocate_mapEm.exit.i446
  %lpad.loopexit592 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

.loopexit.split-lp591:                            ; preds = %.noexc3.i.i.invoke, %.noexc.i.i.invoke, %.invoke
  %lpad.loopexit.split-lp593 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.by:                                            ; preds = %bb.bx
  %i.uv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %bb.fp

bb.bz:                                            ; preds = %bb.bv, %bb.bw
  %i.uw = getelementptr inbounds nuw i8, ptr %.sroa.0479.0748, i64 16 ; 3 uses
  br i1 %i.tm, label %bb.ca, label %bb.co

bb.ca:                                            ; preds = %bb.bz
  %i.ux = load ptr, ptr %i.rg, align 8
  %.not.i304 = icmp eq ptr %i.sz, %i.ux
  br i1 %.not.i304, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.uy = getelementptr inbounds i8, ptr %i.sz, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.uy, ptr noundef nonnull align 8 dereferenceable(16) %i.uw, i64 16, i1 false)
  %i.uz = load ptr, ptr %i.rb, align 8
  %i.va = getelementptr inbounds i8, ptr %i.uz, i64 -16
  store ptr %i.va, ptr %i.rb, align 8
  br label %bb.ev

bb.cc:                                            ; preds = %bb.ca
  %i.vb = load ptr, ptr %i.qy, align 8            ; 10 uses
  %i.vc = ptrtoint ptr %i.te to i64
  %i.vd = ptrtoint ptr %i.vb to i64               ; 4 uses
  %i.ve = sub i64 %i.vc, %i.vd
  %i.vf = ashr exact i64 %i.ve, 3                 ; 3 uses
  %i.vg = icmp ne ptr %i.te, null
  %.neg.i.i.i.i = sext i1 %i.vg to i64
  %i.vh = add nsw i64 %i.vf, %.neg.i.i.i.i
  %i.vi = shl nsw i64 %i.vh, 5
  %i.vj = ptrtoint ptr %i.tb to i64
  %i.vk = ptrtoint ptr %i.tc to i64
  %i.vl = sub i64 %i.vj, %i.vk
  %i.vm = ashr exact i64 %i.vl, 4
  %i.vn = load ptr, ptr %i.re, align 8
  %i.vo = ptrtoint ptr %i.vn to i64
  %i.vp = ptrtoint ptr %i.sz to i64
  %i.vq = sub i64 %i.vo, %i.vp
  %i.vr = ashr exact i64 %i.vq, 4
  %i.vs = add nsw i64 %i.vr, %i.vm
  %i.vt = add i64 %i.vs, %i.vi
  %i.vu = icmp eq i64 %i.vt, 576460752303423487
  br i1 %i.vu, label %.invoke, label %bb.cd

.invoke:                                          ; preds = %bb.ee, %bb.di, %bb.cr, %bb.cc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #24
          to label %.cont unwind label %.loopexit.split-lp591

.cont:                                            ; preds = %.invoke
  unreachable

bb.cd:                                            ; preds = %bb.cc
  %i.vv = load ptr, ptr %17, align 8              ; 3 uses
  %i.vw = icmp eq ptr %i.vb, %i.vv
  br i1 %i.vw, label %bb.ce, label %_ZNSt5dequeI10aiVector2tIdESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_.exit.i

bb.ce:                                            ; preds = %bb.cd
  %i.vx = add nsw i64 %i.vf, 1                    ; 2 uses
  %i.vy = add nsw i64 %i.vf, 2                    ; 3 uses
  %i.vz = load i64, ptr %i.rf, align 8            ; 5 uses
  %i.wa = shl nsw i64 %i.vy, 1
  %i.wb = icmp ugt i64 %i.vz, %i.wa
  br i1 %i.wb, label %bb.cf, label %bb.cj

bb.cf:                                            ; preds = %bb.ce
  %i.wc = sub i64 %i.vz, %i.vy
  %i.wd = lshr i64 %i.wc, 1
  %i.we = getelementptr inbounds nuw [8 x i8], ptr %i.vv, i64 %i.wd
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 8 ; 10 uses
  %24 = icmp ult ptr %i.wf, %i.vb
  %25 = getelementptr inbounds nuw i8, ptr %i.te, i64 8 ; 2 uses
  br i1 %24, label %26, label %35

26:                                               ; preds = %bb.cf
  %27 = ptrtoint ptr %25 to i64
  %28 = sub i64 %27, %i.vd                        ; 3 uses
  %29 = icmp sgt i64 %28, 8
  br i1 %29, label %30, label %31, !prof !118

30:                                               ; preds = %26
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.wf, ptr nonnull align 8 %i.vb, i64 %28, i1 false)
  br label %.noexc306

31:                                               ; preds = %26
  %32 = icmp eq i64 %28, 8
  br i1 %32, label %33, label %.noexc306

33:                                               ; preds = %31
  %34 = load ptr, ptr %i.vb, align 8
  store ptr %34, ptr %i.wf, align 8
  br label %.noexc306

35:                                               ; preds = %bb.cf
  %36 = getelementptr inbounds nuw [8 x i8], ptr %i.wf, i64 %i.vx ; 2 uses
  %37 = ptrtoint ptr %25 to i64
  %38 = sub i64 %37, %i.vd                        ; 3 uses
  %39 = ashr exact i64 %38, 3                     ; 2 uses
  %40 = icmp sgt i64 %39, 1
  br i1 %40, label %bb.cg, label %bb.ch, !prof !118

bb.cg:                                            ; preds = %35
  %i.wg = sub nsw i64 0, %39
  %i.wh = getelementptr inbounds [8 x i8], ptr %36, i64 %i.wg
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.wh, ptr align 8 %i.vb, i64 %38, i1 false)
  br label %.noexc306

bb.ch:                                            ; preds = %35
  %i.wi = icmp eq i64 %38, 8
  br i1 %i.wi, label %bb.ci, label %.noexc306

bb.ci:                                            ; preds = %bb.ch
  %i.wj = getelementptr inbounds i8, ptr %36, i64 -8
  %i.wk = load ptr, ptr %i.vb, align 8
  store ptr %i.wk, ptr %i.wj, align 8
  br label %.noexc306

bb.cj:                                            ; preds = %bb.ce
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %i.vz, i64 1)
  %i.wl = add i64 %i.vz, 2
  %i.wm = add i64 %i.wl, %.sroa.speculated.i      ; 5 uses
  %i.wn = icmp ugt i64 %i.wm, 1152921504606846975
  br i1 %i.wn, label %bb.ck, label %_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE15_M_allocate_mapEm.exit.i, !prof !233

bb.ck:                                            ; preds = %bb.cj
  %i.wo = icmp ugt i64 %i.wm, 2305843009213693951
  br i1 %i.wo, label %.noexc.i.i.invoke, label %.noexc3.i.i.invoke

.noexc.i.i.invoke:                                ; preds = %bb.er, %bb.dv, %bb.cz, %bb.ck
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc.i.i.cont unwind label %.loopexit.split-lp591

.noexc.i.i.cont:                                  ; preds = %.noexc.i.i.invoke
  unreachable

.noexc3.i.i.invoke:                               ; preds = %bb.er, %bb.dv, %bb.cz, %bb.ck
  invoke void @_ZSt17__throw_bad_allocv() #24
          to label %.noexc3.i.i.cont unwind label %.loopexit.split-lp591

.noexc3.i.i.cont:                                 ; preds = %.noexc3.i.i.invoke
  unreachable

_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE15_M_allocate_mapEm.exit.i: ; preds = %bb.cj
  %i.wp = shl nuw nsw i64 %i.wm, 3
  %i.wq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wp) #25
          to label %.noexc414 unwind label %.loopexit590 ; 2 uses

.noexc414:                                        ; preds = %_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE15_M_allocate_mapEm.exit.i
  %i.wr = sub nsw i64 %i.wm, %i.vy
  %i.ws = lshr i64 %i.wr, 1
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %i.wq, i64 %i.ws
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 8 ; 3 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.te, i64 8
  %i.ww = ptrtoint ptr %i.wv to i64
  %i.wx = sub i64 %i.ww, %i.vd                    ; 3 uses
  %i.wy = icmp sgt i64 %i.wx, 8
  br i1 %i.wy, label %bb.cl, label %bb.cm, !prof !118

bb.cl:                                            ; preds = %.noexc414
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.wu, ptr align 8 %i.vb, i64 %i.wx, i1 false)
  br label %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i

bb.cm:                                            ; preds = %.noexc414
  %i.wz = icmp eq i64 %i.wx, 8
  br i1 %i.wz, label %bb.cn, label %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i

bb.cn:                                            ; preds = %bb.cm
  %i.xa = load ptr, ptr %i.vb, align 8
  store ptr %i.xa, ptr %i.wu, align 8
  br label %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i

_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i: ; preds = %bb.cn, %bb.cm, %bb.cl
  %i.xb = shl i64 %i.vz, 3
  call void @_ZdlPvm(ptr noundef %i.vv, i64 noundef %i.xb) #26
  store ptr %i.wq, ptr %17, align 8
  store i64 %i.wm, ptr %i.rf, align 8
  br label %.noexc306

.noexc306:                                        ; preds = %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i, %bb.ci, %bb.ch, %bb.cg, %33, %31, %30
  %.0.i = phi ptr [ %i.wu, %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i ], [ %i.wf, %33 ], [ %i.wf, %30 ], [ %i.wf, %31 ], [ %i.wf, %bb.cg ], [ %i.wf, %bb.ch ], [ %i.wf, %bb.ci ] ; 4 uses
  store ptr %.0.i, ptr %i.qy, align 8
  %i.xc = load ptr, ptr %.0.i, align 8            ; 2 uses
  store ptr %i.xc, ptr %i.rg, align 8
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 512
  store ptr %i.xd, ptr %i.re, align 8
  %i.xe = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.vx
  %i.xf = getelementptr inbounds i8, ptr %i.xe, i64 -8 ; 2 uses
  store ptr %i.xf, ptr %i.qz, align 8
  %i.xg = load ptr, ptr %i.xf, align 8            ; 2 uses
  store ptr %i.xg, ptr %i.ra, align 8
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 512
  store ptr %i.xh, ptr %i.rd, align 8
  br label %_ZNSt5dequeI10aiVector2tIdESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_.exit.i

_ZNSt5dequeI10aiVector2tIdESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_.exit.i: ; preds = %.noexc306, %bb.cd
  %i.xi = phi ptr [ %.0.i, %.noexc306 ], [ %i.vb, %bb.cd ]
  %i.xj = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #25
          to label %.noexc307 unwind label %.loopexit590

.noexc307:                                        ; preds = %_ZNSt5dequeI10aiVector2tIdESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_.exit.i
  %i.xk = getelementptr inbounds i8, ptr %i.xi, i64 -8
  store ptr %i.xj, ptr %i.xk, align 8
  %i.xl = load ptr, ptr %i.qy, align 8
  %i.xm = getelementptr inbounds i8, ptr %i.xl, i64 -8 ; 2 uses
  store ptr %i.xm, ptr %i.qy, align 8
  %i.xn = load ptr, ptr %i.xm, align 8            ; 3 uses
  store ptr %i.xn, ptr %i.rg, align 8
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 512
  store ptr %i.xo, ptr %i.re, align 8
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xn, i64 496 ; 2 uses
  store ptr %i.xp, ptr %i.rb, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xp, ptr noundef nonnull align 8 dereferenceable(16) %i.uw, i64 16, i1 false)
  br label %bb.ev

bb.co:                                            ; preds = %bb.bz
  %i.xq = load <2 x double>, ptr %i.uw, align 8   ; 2 uses
  %i.xr = fsub <2 x double> %i.xq, %i.ta
  %i.xs = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.xr)
  %i.xt = fcmp olt <2 x double> %i.xs, splat (double f0x3EB0C6F7A0000000) ; 2 uses
  %i.xu = extractelement <2 x i1> %i.xt, i64 0
  %i.xv = extractelement <2 x i1> %i.xt, i64 1
  %i.xw = select i1 %i.xu, i1 %i.xv, i1 false
  br i1 %i.xw, label %bb.cp, label %bb.dd

bb.cp:                                            ; preds = %bb.co
  %i.xx = load ptr, ptr %i.rg, align 8
  %.not.i308 = icmp eq ptr %i.sz, %i.xx
  br i1 %.not.i308, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.xy = getelementptr inbounds i8, ptr %i.sz, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xy, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0479.0748, i64 16, i1 false)
  %i.xz = load ptr, ptr %i.rb, align 8
  %i.ya = getelementptr inbounds i8, ptr %i.xz, i64 -16
  store ptr %i.ya, ptr %i.rb, align 8
  br label %bb.ev

bb.cr:                                            ; preds = %bb.cp
  %i.yb = load ptr, ptr %i.qy, align 8            ; 10 uses
  %i.yc = ptrtoint ptr %i.te to i64
  %i.yd = ptrtoint ptr %i.yb to i64               ; 4 uses
  %i.ye = sub i64 %i.yc, %i.yd
  %i.yf = ashr exact i64 %i.ye, 3                 ; 3 uses
  %i.yg = icmp ne ptr %i.te, null
  %.neg.i.i.i.i309 = sext i1 %i.yg to i64
  %i.yh = add nsw i64 %i.yf, %.neg.i.i.i.i309
  %i.yi = shl nsw i64 %i.yh, 5
  %i.yj = ptrtoint ptr %i.tb to i64
  %i.yk = ptrtoint ptr %i.tc to i64
  %i.yl = sub i64 %i.yj, %i.yk
  %i.ym = ashr exact i64 %i.yl, 4
  %i.yn = load ptr, ptr %i.re, align 8
  %i.yo = ptrtoint ptr %i.yn to i64
  %i.yp = ptrtoint ptr %i.sz to i64
  %i.yq = sub i64 %i.yo, %i.yp
  %i.yr = ashr exact i64 %i.yq, 4
  %i.ys = add nsw i64 %i.yr, %i.ym
  %i.yt = add i64 %i.ys, %i.yi
  %i.yu = icmp eq i64 %i.yt, 576460752303423487
  br i1 %i.yu, label %.invoke, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.yv = load ptr, ptr %17, align 8              ; 3 uses
  %i.yw = icmp eq ptr %i.yb, %i.yv
  br i1 %i.yw, label %bb.ct, label %_ZNSt5dequeI10aiVector2tIdESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_.exit.i310

bb.ct:                                            ; preds = %bb.cs
  %i.yx = add nsw i64 %i.yf, 1                    ; 2 uses
  %i.yy = add nsw i64 %i.yf, 2                    ; 3 uses
  %i.yz = load i64, ptr %i.rf, align 8            ; 5 uses
  %i.za = shl nsw i64 %i.yy, 1
  %i.zb = icmp ugt i64 %i.yz, %i.za
  br i1 %i.zb, label %bb.cu, label %bb.cy

bb.cu:                                            ; preds = %bb.ct
  %i.zc = sub i64 %i.yz, %i.yy
  %i.zd = lshr i64 %i.zc, 1
  %i.ze = getelementptr inbounds nuw [8 x i8], ptr %i.yv, i64 %i.zd
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 8 ; 10 uses
  %41 = icmp ult ptr %i.zf, %i.yb
  %42 = getelementptr inbounds nuw i8, ptr %i.te, i64 8 ; 2 uses
  br i1 %41, label %43, label %52

43:                                               ; preds = %bb.cu
  %44 = ptrtoint ptr %42 to i64
  %45 = sub i64 %44, %i.yd                        ; 3 uses
  %46 = icmp sgt i64 %45, 8
  br i1 %46, label %47, label %48, !prof !118

47:                                               ; preds = %43
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.zf, ptr nonnull align 8 %i.yb, i64 %45, i1 false)
  br label %.noexc312

48:                                               ; preds = %43
  %49 = icmp eq i64 %45, 8
  br i1 %49, label %50, label %.noexc312

50:                                               ; preds = %48
  %51 = load ptr, ptr %i.yb, align 8
  store ptr %51, ptr %i.zf, align 8
  br label %.noexc312

52:                                               ; preds = %bb.cu
  %53 = getelementptr inbounds nuw [8 x i8], ptr %i.zf, i64 %i.yx ; 2 uses
  %54 = ptrtoint ptr %42 to i64
  %55 = sub i64 %54, %i.yd                        ; 3 uses
  %56 = ashr exact i64 %55, 3                     ; 2 uses
  %57 = icmp sgt i64 %56, 1
  br i1 %57, label %bb.cv, label %bb.cw, !prof !118

bb.cv:                                            ; preds = %52
  %i.zg = sub nsw i64 0, %56
  %i.zh = getelementptr inbounds [8 x i8], ptr %53, i64 %i.zg
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.zh, ptr align 8 %i.yb, i64 %55, i1 false)
  br label %.noexc312

bb.cw:                                            ; preds = %52
  %i.zi = icmp eq i64 %55, 8
  br i1 %i.zi, label %bb.cx, label %.noexc312

bb.cx:                                            ; preds = %bb.cw
  %i.zj = getelementptr inbounds i8, ptr %53, i64 -8
  %i.zk = load ptr, ptr %i.yb, align 8
  store ptr %i.zk, ptr %i.zj, align 8
  br label %.noexc312

bb.cy:                                            ; preds = %bb.ct
  %.sroa.speculated.i415 = call i64 @llvm.umax.i64(i64 %i.yz, i64 1)
  %i.zl = add i64 %i.yz, 2
  %i.zm = add i64 %i.zl, %.sroa.speculated.i415   ; 5 uses
  %i.zn = icmp ugt i64 %i.zm, 1152921504606846975
  br i1 %i.zn, label %bb.cz, label %_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE15_M_allocate_mapEm.exit.i416, !prof !233

bb.cz:                                            ; preds = %bb.cy
  %i.zo = icmp ugt i64 %i.zm, 2305843009213693951
  br i1 %i.zo, label %.noexc.i.i.invoke, label %.noexc3.i.i.invoke

_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE15_M_allocate_mapEm.exit.i416: ; preds = %bb.cy
  %i.zp = shl nuw nsw i64 %i.zm, 3
  %i.zq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zp) #25
          to label %.noexc423 unwind label %.loopexit590 ; 2 uses

.noexc423:                                        ; preds = %_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE15_M_allocate_mapEm.exit.i416
  %i.zr = sub nsw i64 %i.zm, %i.yy
  %i.zs = lshr i64 %i.zr, 1
  %i.zt = getelementptr inbounds nuw [8 x i8], ptr %i.zq, i64 %i.zs
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 8 ; 3 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.te, i64 8
  %i.zw = ptrtoint ptr %i.zv to i64
  %i.zx = sub i64 %i.zw, %i.yd                    ; 3 uses
  %i.zy = icmp sgt i64 %i.zx, 8
  br i1 %i.zy, label %bb.da, label %bb.db, !prof !118

bb.da:                                            ; preds = %.noexc423
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.zu, ptr align 8 %i.yb, i64 %i.zx, i1 false)
  br label %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i417

bb.db:                                            ; preds = %.noexc423
  %i.zz = icmp eq i64 %i.zx, 8
  br i1 %i.zz, label %bb.dc, label %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i417

bb.dc:                                            ; preds = %bb.db
  %i.aaa = load ptr, ptr %i.yb, align 8
  store ptr %i.aaa, ptr %i.zu, align 8
  br label %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i417

_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i417: ; preds = %bb.dc, %bb.db, %bb.da
  %i.aab = shl i64 %i.yz, 3
  call void @_ZdlPvm(ptr noundef %i.yv, i64 noundef %i.aab) #26
  store ptr %i.zq, ptr %17, align 8
  store i64 %i.zm, ptr %i.rf, align 8
  br label %.noexc312

.noexc312:                                        ; preds = %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i417, %bb.cx, %bb.cw, %bb.cv, %50, %48, %47
  %.0.i418 = phi ptr [ %i.zu, %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i417 ], [ %i.zf, %50 ], [ %i.zf, %47 ], [ %i.zf, %48 ], [ %i.zf, %bb.cv ], [ %i.zf, %bb.cw ], [ %i.zf, %bb.cx ] ; 4 uses
  store ptr %.0.i418, ptr %i.qy, align 8
  %i.aac = load ptr, ptr %.0.i418, align 8        ; 2 uses
  store ptr %i.aac, ptr %i.rg, align 8
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 512
  store ptr %i.aad, ptr %i.re, align 8
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr %.0.i418, i64 %i.yx
  %i.aaf = getelementptr inbounds i8, ptr %i.aae, i64 -8 ; 2 uses
  store ptr %i.aaf, ptr %i.qz, align 8
  %i.aag = load ptr, ptr %i.aaf, align 8          ; 2 uses
  store ptr %i.aag, ptr %i.ra, align 8
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 512
  store ptr %i.aah, ptr %i.rd, align 8
  br label %_ZNSt5dequeI10aiVector2tIdESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_.exit.i310

_ZNSt5dequeI10aiVector2tIdESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_.exit.i310: ; preds = %.noexc312, %bb.cs
  %i.aai = phi ptr [ %.0.i418, %.noexc312 ], [ %i.yb, %bb.cs ]
  %i.aaj = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #25
          to label %.noexc313 unwind label %.loopexit590

.noexc313:                                        ; preds = %_ZNSt5dequeI10aiVector2tIdESaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_.exit.i310
  %i.aak = getelementptr inbounds i8, ptr %i.aai, i64 -8
  store ptr %i.aaj, ptr %i.aak, align 8
  %i.aal = load ptr, ptr %i.qy, align 8
  %i.aam = getelementptr inbounds i8, ptr %i.aal, i64 -8 ; 2 uses
  store ptr %i.aam, ptr %i.qy, align 8
  %i.aan = load ptr, ptr %i.aam, align 8          ; 3 uses
  store ptr %i.aan, ptr %i.rg, align 8
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 512
  store ptr %i.aao, ptr %i.re, align 8
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aan, i64 496 ; 2 uses
  store ptr %i.aap, ptr %i.rb, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aap, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0479.0748, i64 16, i1 false)
  br label %bb.ev

bb.dd:                                            ; preds = %bb.co
  br i1 %i.td, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.aaq = load ptr, ptr %i.tf, align 8
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 512
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.aas = phi ptr [ %i.aar, %bb.de ], [ %i.tb, %bb.dd ]
  %i.aat = getelementptr inbounds i8, ptr %i.aas, i64 -16
  %i.aau = load <2 x double>, ptr %i.aat, align 8
  %i.aav = fsub <2 x double> %i.tg, %i.aau
  %i.aaw = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aav)
  %i.aax = fcmp olt <2 x double> %i.aaw, splat (double f0x3EB0C6F7A0000000) ; 2 uses
  %i.aay = extractelement <2 x i1> %i.aax, i64 0
  %i.aaz = extractelement <2 x i1> %i.aax, i64 1
  %i.aba = select i1 %i.aay, i1 %i.aaz, i1 false
  br i1 %i.aba, label %bb.dg, label %bb.dz

bb.dg:                                            ; preds = %bb.df
  %i.abb = getelementptr inbounds nuw i8, ptr %.sroa.0479.0748, i64 16 ; 2 uses
  %i.abc = load ptr, ptr %i.rd, align 8
  %i.abd = getelementptr inbounds i8, ptr %i.abc, i64 -16
  %.not.i316 = icmp eq ptr %i.tb, %i.abd
  br i1 %.not.i316, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tb, ptr noundef nonnull align 8 dereferenceable(16) %i.abb, i64 16, i1 false)
  %i.abe = load ptr, ptr %i.rc, align 8
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 16
  store ptr %i.abf, ptr %i.rc, align 8
  br label %bb.ev

bb.di:                                            ; preds = %bb.dg
  %i.abg = load ptr, ptr %i.qy, align 8           ; 8 uses
  %i.abh = ptrtoint ptr %i.te to i64              ; 2 uses
  %i.abi = ptrtoint ptr %i.abg to i64             ; 4 uses
  %i.abj = sub i64 %i.abh, %i.abi
  %i.abk = ashr exact i64 %i.abj, 3               ; 3 uses
  %i.abl = icmp ne ptr %i.te, null
  %.neg.i.i.i425 = sext i1 %i.abl to i64
  %i.abm = add nsw i64 %i.abk, %.neg.i.i.i425
  %i.abn = shl nsw i64 %i.abm, 5
  %i.abo = ptrtoint ptr %i.tb to i64
  %i.abp = ptrtoint ptr %i.tc to i64
  %i.abq = sub i64 %i.abo, %i.abp
  %i.abr = ashr exact i64 %i.abq, 4
  %i.abs = load ptr, ptr %i.re, align 8
  %i.abt = ptrtoint ptr %i.abs to i64
  %i.abu = ptrtoint ptr %i.sz to i64
  %i.abv = sub i64 %i.abt, %i.abu
  %i.abw = ashr exact i64 %i.abv, 4
  %i.abx = add nsw i64 %i.abw, %i.abr
  %i.aby = add i64 %i.abx, %i.abn
  %i.abz = icmp eq i64 %i.aby, 576460752303423487
  br i1 %i.abz, label %.invoke, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.aca = load i64, ptr %i.rf, align 8           ; 6 uses
  %i.acb = load ptr, ptr %17, align 8             ; 3 uses
  %i.acc = ptrtoint ptr %i.acb to i64
  %i.acd = sub i64 %i.abh, %i.acc
  %i.ace = ashr exact i64 %i.acd, 3
  %i.acf = sub i64 %i.aca, %i.ace
  %i.acg = icmp ult i64 %i.acf, 2
  br i1 %i.acg, label %bb.dk, label %_ZNSt5dequeI10aiVector2tIdESaIS1_EE22_M_reserve_map_at_backEm.exit.i

bb.dk:                                            ; preds = %bb.dj
  %i.ach = add nsw i64 %i.abk, 1                  ; 2 uses
  %i.aci = add nsw i64 %i.abk, 2                  ; 3 uses
  %i.acj = shl nsw i64 %i.aci, 1
  %i.ack = icmp ugt i64 %i.aca, %i.acj
  br i1 %i.ack, label %bb.dl, label %bb.du

bb.dl:                                            ; preds = %bb.dk
  %i.acl = sub i64 %i.aca, %i.aci
  %i.acm = lshr i64 %i.acl, 1
  %i.acn = getelementptr inbounds nuw [8 x i8], ptr %i.acb, i64 %i.acm ; 10 uses
  %i.aco = icmp ult ptr %i.acn, %i.abg
  %i.acp = getelementptr inbounds nuw i8, ptr %i.te, i64 8 ; 2 uses
  br i1 %i.aco, label %bb.dm, label %bb.dq

bb.dm:                                            ; preds = %bb.dl
  %i.acq = ptrtoint ptr %i.acp to i64
  %i.acr = sub i64 %i.acq, %i.abi                 ; 3 uses
  %i.acs = icmp sgt i64 %i.acr, 8
  br i1 %i.acs, label %bb.dn, label %bb.do, !prof !118

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.acn, ptr nonnull align 8 %i.abg, i64 %i.acr, i1 false)
  br label %.noexc427

bb.do:                                            ; preds = %bb.dm
  %i.act = icmp eq i64 %i.acr, 8
  br i1 %i.act, label %bb.dp, label %.noexc427

bb.dp:                                            ; preds = %bb.do
  %i.acu = load ptr, ptr %i.abg, align 8
  store ptr %i.acu, ptr %i.acn, align 8
  br label %.noexc427

bb.dq:                                            ; preds = %bb.dl
  %i.acv = getelementptr inbounds nuw [8 x i8], ptr %i.acn, i64 %i.ach ; 2 uses
  %i.acw = ptrtoint ptr %i.acp to i64
  %i.acx = sub i64 %i.acw, %i.abi                 ; 3 uses
  %i.acy = ashr exact i64 %i.acx, 3               ; 2 uses
  %i.acz = icmp sgt i64 %i.acy, 1
  br i1 %i.acz, label %bb.dr, label %bb.ds, !prof !118

bb.dr:                                            ; preds = %bb.dq
  %i.ada = sub nsw i64 0, %i.acy
  %i.adb = getelementptr inbounds [8 x i8], ptr %i.acv, i64 %i.ada
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.adb, ptr align 8 %i.abg, i64 %i.acx, i1 false)
  br label %.noexc427

bb.ds:                                            ; preds = %bb.dq
  %i.adc = icmp eq i64 %i.acx, 8
  br i1 %i.adc, label %bb.dt, label %.noexc427

bb.dt:                                            ; preds = %bb.ds
  %i.add = getelementptr inbounds i8, ptr %i.acv, i64 -8
  %i.ade = load ptr, ptr %i.abg, align 8
  store ptr %i.ade, ptr %i.add, align 8
  br label %.noexc427

bb.du:                                            ; preds = %bb.dk
  %.sroa.speculated.i435 = call i64 @llvm.umax.i64(i64 %i.aca, i64 1)
  %i.adf = add i64 %i.aca, 2
  %i.adg = add i64 %i.adf, %.sroa.speculated.i435 ; 5 uses
  %i.adh = icmp ugt i64 %i.adg, 1152921504606846975
  br i1 %i.adh, label %bb.dv, label %_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE15_M_allocate_mapEm.exit.i436, !prof !233

bb.dv:                                            ; preds = %bb.du
  %i.adi = icmp ugt i64 %i.adg, 2305843009213693951
  br i1 %i.adi, label %.noexc.i.i.invoke, label %.noexc3.i.i.invoke

_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE15_M_allocate_mapEm.exit.i436: ; preds = %bb.du
  %i.adj = shl nuw nsw i64 %i.adg, 3
  %i.adk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.adj) #25
          to label %.noexc443 unwind label %.loopexit590 ; 2 uses

.noexc443:                                        ; preds = %_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE15_M_allocate_mapEm.exit.i436
  %i.adl = sub nsw i64 %i.adg, %i.aci
  %i.adm = lshr i64 %i.adl, 1
  %i.adn = getelementptr inbounds nuw [8 x i8], ptr %i.adk, i64 %i.adm ; 3 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %i.te, i64 8
  %i.adp = ptrtoint ptr %i.ado to i64
  %i.adq = sub i64 %i.adp, %i.abi                 ; 3 uses
  %i.adr = icmp sgt i64 %i.adq, 8
  br i1 %i.adr, label %bb.dw, label %bb.dx, !prof !118

bb.dw:                                            ; preds = %.noexc443
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.adn, ptr align 8 %i.abg, i64 %i.adq, i1 false)
  br label %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i437

bb.dx:                                            ; preds = %.noexc443
  %i.ads = icmp eq i64 %i.adq, 8
  br i1 %i.ads, label %bb.dy, label %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i437

bb.dy:                                            ; preds = %bb.dx
  %i.adt = load ptr, ptr %i.abg, align 8
  store ptr %i.adt, ptr %i.adn, align 8
  br label %_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i437

_ZSt4copyIPP10aiVector2tIdES3_ET0_T_S5_S4_.exit24.i437: ; preds = %bb.dy, %bb.dx, %bb.dw
end_hunk_0
