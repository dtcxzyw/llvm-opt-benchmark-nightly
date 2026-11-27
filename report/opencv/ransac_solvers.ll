Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ransac_solvers?download=true
inline.NumInlined: 3298
inline.NumDeleted: 1332
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN2cv4usac15UniversalRANSACC2ERNS_3PtrINS0_5ModelEEERKNS_11_InputArrayES8_S8_S8_S8_S8_:bb.a
  %i.py = load ptr, ptr %i.px, align 8
  call void %i.py(ptr noundef nonnull align 8 dereferenceable(16) %i.pn) #28, !inline_history !407
  br label %_ZNSt12__shared_ptrIN2cv4usac29RadiusSearchNeighborhoodGraphELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.id:                                            ; preds = %bb.ib
  %i.pz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i361 = icmp eq i8 %i.pz, 0
  br i1 %.not.i.i.i361, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.qa = add nsw i32 %i.pr, -1
  store i32 %i.qa, ptr %i.po, align 8, !tbaa !62
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i362

bb.if:                                            ; preds = %bb.id
  %i.qb = atomicrmw volatile add ptr %i.po, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i362

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i362: ; preds = %bb.if, %bb.ie
  %.0.i.i.i.i363 = phi i32 [ %i.pr, %bb.ie ], [ %i.qb, %bb.if ]
  %i.qc = icmp eq i32 %.0.i.i.i.i363, 1
  br i1 %i.qc, label %bb.ig, label %_ZNSt12__shared_ptrIN2cv4usac29RadiusSearchNeighborhoodGraphELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !176

bb.ig:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i362
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pn) #28
  br label %_ZNSt12__shared_ptrIN2cv4usac29RadiusSearchNeighborhoodGraphELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv4usac29RadiusSearchNeighborhoodGraphELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN2cv3PtrINS_4usac17NeighborhoodGraphEEaSINS1_29RadiusSearchNeighborhoodGraphEEERS3_RKNS0_IT_EE.exit, %bb.ic, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i362, %bb.ig
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #28
  br label %bb.in

bb.ih:                                            ; preds = %bb.hp, %bb.ho
  %i.qd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #28
  br label %bb.nv

bb.ii:                                            ; preds = %bb.hn
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %45, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %46)
          to label %bb.ij unwind label %bb.il

bb.ij:                                            ; preds = %bb.ii
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -213, ptr noundef nonnull align 8 dereferenceable(32) %45, ptr noundef nonnull @__func__._ZN2cv4usac15UniversalRANSACC2ERNS_3PtrINS0_5ModelEEERKNS_11_InputArrayES8_S8_S8_S8_S8_, ptr noundef nonnull @.str.1, i32 noundef 217) #29
          to label %bb.ik unwind label %bb.im

bb.ik:                                            ; preds = %bb.ij
  unreachable

bb.il:                                            ; preds = %bb.ii
  %i.qe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.im:                                            ; preds = %bb.ij
  %i.qf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qg = load ptr, ptr %45, align 8, !tbaa !180  ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  %i.qi = icmp eq ptr %i.qg, %i.qh
  br i1 %i.qi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.im
  %i.qj = load i64, ptr %i.qh, align 8, !tbaa !43
  %i.qk = add i64 %i.qj, 1
  call void @_ZdlPvm(ptr noundef %i.qg, i64 noundef %i.qk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.im, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.il
  %.pn267 = phi { ptr, i32 } [ %i.qe, %bb.il ], [ %i.qf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.qf, %bb.im ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #28
  br label %bb.nv

bb.in:                                            ; preds = %_ZNSt12__shared_ptrIN2cv4usac21GridNeighborhoodGraphELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt12__shared_ptrIN2cv4usac29RadiusSearchNeighborhoodGraphELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt12__shared_ptrIN2cv4usac22FlannNeighborhoodGraphELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.fq
  %i.ql = load ptr, ptr %i.a, align 8, !tbaa !79  ; 2 uses
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !49
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 184
  %i.qo = load ptr, ptr %i.qn, align 8
  %i.qp = invoke noundef i32 %i.qo(ptr noundef nonnull align 8 dereferenceable(8) %i.ql)
          to label %bb.io unwind label %bb.jh

bb.io:                                            ; preds = %bb.in
  %i.qq = icmp eq i32 %i.qp, 1
  br i1 %i.qq, label %bb.ip, label %.loopexit

bb.ip:                                            ; preds = %bb.io
  %i.qr = load ptr, ptr %i.a, align 8, !tbaa !79  ; 2 uses
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !49
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 88
  %i.qu = load ptr, ptr %i.qt, align 8
  %i.qv = invoke noundef zeroext i1 %i.qu(ptr noundef nonnull align 8 dereferenceable(8) %i.qr)
          to label %bb.iq unwind label %bb.jh

bb.iq:                                            ; preds = %bb.ip
  %i.qw = load ptr, ptr %i.a, align 8, !tbaa !79  ; 3 uses
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !49 ; 2 uses
  br i1 %i.qv, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %bb.iq
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 88
  %i.qz = load ptr, ptr %i.qy, align 8
  %i.ra = invoke noundef zeroext i1 %i.qz(ptr noundef nonnull align 8 dereferenceable(8) %i.qw)
          to label %.invoke unwind label %bb.jh

bb.is:                                            ; preds = %bb.iq
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qx, i64 384
  %i.rc = load ptr, ptr %i.rb, align 8
  %i.rd = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.rc(ptr noundef nonnull align 8 dereferenceable(8) %i.qw)
          to label %bb.it unwind label %bb.jh     ; 5 uses

bb.it:                                            ; preds = %bb.is
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 8 ; 4 uses
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !60
  %i.rg = load ptr, ptr %i.rd, align 8, !tbaa !61
  %i.rh = ptrtoint ptr %i.rf to i64
  %i.ri = ptrtoint ptr %i.rg to i64
  %i.rj = sub i64 %i.rh, %i.ri                    ; 2 uses
  %i.rk = ashr exact i64 %i.rj, 2                 ; 3 uses
  %i.rl = icmp ugt i64 %i.rk, 576460752303423487
  br i1 %i.rl, label %bb.iu, label %bb.iv

bb.iu:                                            ; preds = %bb.it
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #29
          to label %.noexc365 unwind label %bb.jh

.noexc365:                                        ; preds = %bb.iu
  unreachable

bb.iv:                                            ; preds = %bb.it
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 1944 ; 5 uses
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !181
  %i.ro = load ptr, ptr %i.ai, align 8, !tbaa !182
  %i.rp = ptrtoint ptr %i.rn to i64
  %i.rq = ptrtoint ptr %i.ro to i64               ; 2 uses
  %i.rr = sub i64 %i.rp, %i.rq
  %i.rs = ashr exact i64 %i.rr, 4
  %i.rt = icmp ult i64 %i.rs, %i.rk
  br i1 %i.rt, label %_ZNSt12_Vector_baseIN2cv3PtrINS0_4usac17NeighborhoodGraphEEESaIS4_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN2cv3PtrINS0_4usac17NeighborhoodGraphEEESaIS4_EE7reserveEm.exit

_ZNSt12_Vector_baseIN2cv3PtrINS0_4usac17NeighborhoodGraphEEESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.iv
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 1936 ; 3 uses
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !183
  %i.rw = ptrtoint ptr %i.rv to i64
  %i.rx = sub i64 %i.rw, %i.rq
  %i.ry = shl nuw nsw i64 %i.rj, 2
  %i.rz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ry) #26
          to label %.noexc366 unwind label %bb.jh ; 4 uses

.noexc366:                                        ; preds = %_ZNSt12_Vector_baseIN2cv3PtrINS0_4usac17NeighborhoodGraphEEESaIS4_EE11_M_allocateEm.exit.i
  %i.sa = load ptr, ptr %i.ai, align 8, !tbaa !182 ; 5 uses
  %i.sb = load ptr, ptr %i.ru, align 8, !tbaa !183 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.sa, %i.sb
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN2cv3PtrINS0_4usac17NeighborhoodGraphEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc366, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.sf, %.lr.ph.i.i.i.i ], [ %i.rz, %.noexc366 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.se, %.lr.ph.i.i.i.i ], [ %i.sa, %.noexc366 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !440)
  call void @llvm.experimental.noalias.scope.decl(metadata !441)
  %i.sc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.sd = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !76, !alias.scope !441
  store ptr null, ptr %i.sc, align 8, !tbaa !56, !alias.scope !441
  store <2 x ptr> %i.sd, ptr %.012.i.i.i.i, align 8, !tbaa !76, !alias.scope !440
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !175, !alias.scope !441
  %i.se = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i364 = icmp eq ptr %i.se, %i.sb
  br i1 %.not.i.i.i.i364, label %_ZNSt6vectorIN2cv3PtrINS0_4usac17NeighborhoodGraphEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN2cv3PtrINS0_4usac17NeighborhoodGraphEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc366
  %.not.i8.i = icmp eq ptr %i.sa, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN2cv3PtrINS0_4usac17NeighborhoodGraphEEESaIS4_EE13_M_deallocateEPS4_m.exit.i, label %bb.iw

bb.iw:                                            ; preds = %_ZNSt6vectorIN2cv3PtrINS0_4usac17NeighborhoodGraphEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  %i.sg = load ptr, ptr %i.rm, align 8, !tbaa !181
  %i.sh = ptrtoint ptr %i.sg to i64
  %i.si = ptrtoint ptr %i.sa to i64
  %i.sj = sub i64 %i.sh, %i.si
  call void @_ZdlPvm(ptr noundef nonnull %i.sa, i64 noundef %i.sj) #27
  br label %_ZNSt12_Vector_baseIN2cv3PtrINS0_4usac17NeighborhoodGraphEEESaIS4_EE13_M_deallocateEPS4_m.exit.i

_ZNSt12_Vector_baseIN2cv3PtrINS0_4usac17NeighborhoodGraphEEESaIS4_EE13_M_deallocateEPS4_m.exit.i: ; preds = %bb.iw, %_ZNSt6vectorIN2cv3PtrINS0_4usac17NeighborhoodGraphEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  store ptr %i.rz, ptr %i.ai, align 8, !tbaa !182
  %i.sk = getelementptr inbounds nuw i8, ptr %i.rz, i64 %i.rx
  store ptr %i.sk, ptr %i.ru, align 8, !tbaa !183
  %i.sl = getelementptr inbounds nuw [16 x i8], ptr %i.rz, i64 %i.rk
  store ptr %i.sl, ptr %i.rm, align 8, !tbaa !181
  br label %_ZNSt6vectorIN2cv3PtrINS0_4usac17NeighborhoodGraphEEESaIS4_EE7reserveEm.exit

_ZNSt6vectorIN2cv3PtrINS0_4usac17NeighborhoodGraphEEESaIS4_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN2cv3PtrINS0_4usac17NeighborhoodGraphEEESaIS4_EE13_M_deallocateEPS4_m.exit.i, %bb.iv
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !442 ; 5 uses
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.sp = load i32, ptr %i.so, align 8, !tbaa !171 ; 3 uses
  %i.sq = icmp sgt i32 %i.sp, 0
  br i1 %i.sq, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIN2cv3PtrINS0_4usac17NeighborhoodGraphEEESaIS4_EE7reserveEm.exit
  %i.sr = shl nsw i32 %i.sp, 2
  %i.ss = zext nneg i32 %i.sr to i64              ; 2 uses
  %i.st = call i64 @llvm.usub.sat.i64(i64 %i.ss, i64 4) ; 2 uses
  %i.su = lshr exact i64 %i.st, 2
  %i.sv = add nuw nsw i64 %i.su, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.st, 28
  br i1 %min.iters.check, label %.lr.ph.preheader570, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.sv, 1073741820              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.vh, %vector.body ] ; 3 uses
  %vec.phi549 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.us, %vector.body ] ; 3 uses
  %vec.phi550 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.ud, %vector.body ] ; 3 uses
  %vec.phi551 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.to, %vector.body ] ; 3 uses
  %i.sw = shl nuw i64 %index, 2                   ; 4 uses
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %i.sw ; 4 uses
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %i.sw ; 4 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 16
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %i.sw ; 4 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 32
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %i.sw ; 4 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 48
  %i.te = load float, ptr %i.sx, align 4, !tbaa !186
  %i.tf = load float, ptr %i.sz, align 4, !tbaa !186
  %i.tg = load float, ptr %i.tb, align 4, !tbaa !186
  %i.th = load float, ptr %i.td, align 4, !tbaa !186
  %i.ti = insertelement <4 x float> poison, float %i.te, i64 0
  %i.tj = insertelement <4 x float> %i.ti, float %i.tf, i64 1
  %i.tk = insertelement <4 x float> %i.tj, float %i.tg, i64 2
  %i.tl = insertelement <4 x float> %i.tk, float %i.th, i64 3
  %i.tm = freeze <4 x float> %i.tl                ; 3 uses
  %i.tn = fcmp ogt <4 x float> %i.tm, %vec.phi551
  %i.to = select <4 x i1> %i.tn, <4 x float> %i.tm, <4 x float> %vec.phi551 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.sx, i64 4
  %i.tq = getelementptr inbounds nuw i8, ptr %i.sy, i64 20
  %i.tr = getelementptr inbounds nuw i8, ptr %i.ta, i64 36
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tc, i64 52
  %i.tt = load float, ptr %i.tp, align 4, !tbaa !186
  %i.tu = load float, ptr %i.tq, align 4, !tbaa !186
  %i.tv = load float, ptr %i.tr, align 4, !tbaa !186
  %i.tw = load float, ptr %i.ts, align 4, !tbaa !186
  %i.tx = insertelement <4 x float> poison, float %i.tt, i64 0
  %i.ty = insertelement <4 x float> %i.tx, float %i.tu, i64 1
  %i.tz = insertelement <4 x float> %i.ty, float %i.tv, i64 2
  %i.ua = insertelement <4 x float> %i.tz, float %i.tw, i64 3
  %i.ub = freeze <4 x float> %i.ua                ; 3 uses
  %i.uc = fcmp ogt <4 x float> %i.ub, %vec.phi550
  %i.ud = select <4 x i1> %i.uc, <4 x float> %i.ub, <4 x float> %vec.phi550 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  %i.uf = getelementptr inbounds nuw i8, ptr %i.sy, i64 24
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ta, i64 40
  %i.uh = getelementptr inbounds nuw i8, ptr %i.tc, i64 56
  %i.ui = load float, ptr %i.ue, align 4, !tbaa !186
  %i.uj = load float, ptr %i.uf, align 4, !tbaa !186
  %i.uk = load float, ptr %i.ug, align 4, !tbaa !186
  %i.ul = load float, ptr %i.uh, align 4, !tbaa !186
  %i.um = insertelement <4 x float> poison, float %i.ui, i64 0
  %i.un = insertelement <4 x float> %i.um, float %i.uj, i64 1
  %i.uo = insertelement <4 x float> %i.un, float %i.uk, i64 2
  %i.up = insertelement <4 x float> %i.uo, float %i.ul, i64 3
  %i.uq = freeze <4 x float> %i.up                ; 3 uses
  %i.ur = fcmp ogt <4 x float> %i.uq, %vec.phi549
  %i.us = select <4 x i1> %i.ur, <4 x float> %i.uq, <4 x float> %vec.phi549 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.sx, i64 12
  %i.uu = getelementptr inbounds nuw i8, ptr %i.sy, i64 28
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ta, i64 44
  %i.uw = getelementptr inbounds nuw i8, ptr %i.tc, i64 60
  %i.ux = load float, ptr %i.ut, align 4, !tbaa !186
  %i.uy = load float, ptr %i.uu, align 4, !tbaa !186
  %i.uz = load float, ptr %i.uv, align 4, !tbaa !186
  %i.va = load float, ptr %i.uw, align 4, !tbaa !186
  %i.vb = insertelement <4 x float> poison, float %i.ux, i64 0
  %i.vc = insertelement <4 x float> %i.vb, float %i.uy, i64 1
  %i.vd = insertelement <4 x float> %i.vc, float %i.uz, i64 2
  %i.ve = insertelement <4 x float> %i.vd, float %i.va, i64 3
  %i.vf = freeze <4 x float> %i.ve                ; 3 uses
  %i.vg = fcmp ogt <4 x float> %i.vf, %vec.phi
  %i.vh = select <4 x i1> %i.vg, <4 x float> %i.vf, <4 x float> %vec.phi ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.vi = call <4 x i1> @llvm.is.fpclass.v4f32(<4 x float> %i.vf, /* (nan nzero) */ i32 35)
  %i.vj = call <4 x i1> @llvm.is.fpclass.v4f32(<4 x float> %i.uq, /* (nan nzero) */ i32 35)
  %i.vk = or <4 x i1> %i.vi, %i.vj
  %i.vl = call <4 x i1> @llvm.is.fpclass.v4f32(<4 x float> %i.ub, /* (nan nzero) */ i32 35)
  %i.vm = or <4 x i1> %i.vk, %i.vl
  %i.vn = call <4 x i1> @llvm.is.fpclass.v4f32(<4 x float> %i.tm, /* (nan nzero) */ i32 35)
  %i.vo = or <4 x i1> %i.vm, %i.vn
  %i.vp = bitcast <4 x i1> %i.vo to i4
  %i.vq = icmp ne i4 %i.vp, 0                     ; 7 uses
  %i.vr = icmp eq i64 %index.next, %n.vec
  %i.vs = or i1 %i.vq, %i.vr
  br i1 %i.vs, label %middle.block, label %vector.body, !llvm.loop !411

middle.block:                                     ; preds = %vector.body
  %i.vt = select i1 %i.vq, <4 x float> %vec.phi, <4 x float> %i.vh
  %i.vu = select i1 %i.vq, <4 x float> %vec.phi549, <4 x float> %i.us
  %i.vv = select i1 %i.vq, <4 x float> %vec.phi550, <4 x float> %i.ud
  %i.vw = select i1 %i.vq, <4 x float> %vec.phi551, <4 x float> %i.to
  %i.vx = select i1 %i.vq, i64 %index, i64 %n.vec
  %i.vy = call nnan float @llvm.vector.reduce.fmax.v4f32(<4 x float> %i.vt)
  %i.vz = shl i64 %i.vx, 2
  %i.wa = call nnan float @llvm.vector.reduce.fmax.v4f32(<4 x float> %i.vu)
  %i.wb = call nnan float @llvm.vector.reduce.fmax.v4f32(<4 x float> %i.vv)
  %i.wc = call nnan float @llvm.vector.reduce.fmax.v4f32(<4 x float> %i.vw)
  %cmp.n = icmp ne i64 %i.sv, %n.vec
  %.not565 = or i1 %cmp.n, %i.vq
  %i.wd = insertelement <4 x float> poison, float %i.wc, i64 0
  %i.we = insertelement <4 x float> %i.wd, float %i.wb, i64 1
  %i.wf = insertelement <4 x float> %i.we, float %i.wa, i64 2
  %i.wg = insertelement <4 x float> %i.wf, float %i.vy, i64 3 ; 2 uses
  br i1 %.not565, label %.lr.ph.preheader570, label %.preheader

.lr.ph.preheader570:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.vz, %middle.block ]
  %.ph = phi <4 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.wg, %middle.block ]
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %middle.block, %_ZNSt6vectorIN2cv3PtrINS0_4usac17NeighborhoodGraphEEESaIS4_EE7reserveEm.exit
  %i.wh = phi <4 x float> [ zeroinitializer, %_ZNSt6vectorIN2cv3PtrINS0_4usac17NeighborhoodGraphEEESaIS4_EE7reserveEm.exit ], [ %i.wg, %middle.block ], [ %i.ym, %.lr.ph ] ; 2 uses
  %i.wi = load ptr, ptr %i.re, align 8, !tbaa !60
  %i.wj = load ptr, ptr %i.rd, align 8, !tbaa !61 ; 2 uses
  %i.wk = ptrtoint ptr %i.wi to i64
  %i.wl = ptrtoint ptr %i.wj to i64
  %i.wm = sub i64 %i.wk, %i.wl
  %i.wn = lshr exact i64 %i.wm, 2
  %i.wo = trunc i64 %i.wn to i32
  %i.wp = icmp sgt i32 %i.wo, 0
  br i1 %i.wp, label %bb.ix, label %.loopexit

bb.ix:                                            ; preds = %.preheader
  %i.wq = getelementptr inbounds nuw i8, ptr %0, i64 1936 ; 4 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 4 uses
  %i.ws = load i32, ptr %i.wj, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #28
  %i.wt = sitofp i32 %i.ws to float
  %i.wu = insertelement <4 x float> poison, float %i.wt, i64 0
  %i.wv = shufflevector <4 x float> %i.wu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ww = fdiv <4 x float> %i.wh, %i.wv           ; 4 uses
  %i.wx = extractelement <4 x float> %i.ww, i64 0
  %i.wy = fptosi float %i.wx to i32
  %i.wz = extractelement <4 x float> %i.ww, i64 1
  %i.xa = fptosi float %i.wz to i32
  %i.xb = extractelement <4 x float> %i.ww, i64 2
  %i.xc = fptosi float %i.xb to i32
  %i.xd = extractelement <4 x float> %i.ww, i64 3
  %i.xe = fptosi float %i.xd to i32
  invoke void @_ZN2cv4usac21GridNeighborhoodGraph6createERKNS_3MatEiiiiii(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr.94") align 8 %49, ptr noundef nonnull align 8 dereferenceable(208) %i.aa, i32 noundef %i.sp, i32 noundef %i.wy, i32 noundef %i.xa, i32 noundef %i.xc, i32 noundef %i.xe, i32 noundef 10)
          to label %bb.iy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.iy:                                            ; preds = %bb.ix
  %i.xf = load ptr, ptr %i.wq, align 8, !tbaa !183 ; 5 uses
  %i.xg = load ptr, ptr %i.rm, align 8, !tbaa !181
  %.not.i.peel = icmp eq ptr %i.xf, %i.xg
  br i1 %.not.i.peel, label %bb.ja, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xf, i64 8
  store ptr null, ptr %i.xh, align 8, !tbaa !56
  %i.xi = load <2 x ptr>, ptr %49, align 16, !tbaa !76
  store ptr null, ptr %i.wr, align 8, !tbaa !56
  store <2 x ptr> %i.xi, ptr %i.xf, align 8, !tbaa !76
  store ptr null, ptr %49, align 16, !tbaa !174
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xf, i64 16
  store ptr %i.xj, ptr %i.wq, align 8, !tbaa !183
  br label %_ZNSt6vectorIN2cv3PtrINS0_4usac17NeighborhoodGraphEEESaIS4_EE12emplace_backIJNS1_INS2_21GridNeighborhoodGraphEEEEEERS4_DpOT_.exit.peel

bb.ja:                                            ; preds = %bb.iy
  invoke void @_ZNSt6vectorIN2cv3PtrINS0_4usac17NeighborhoodGraphEEESaIS4_EE17_M_realloc_insertIJNS1_INS2_21GridNeighborhoodGraphEEEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr %i.xf, ptr noundef nonnull align 8 dereferenceable(16) %49)
          to label %_ZNSt6vectorIN2cv3PtrINS0_4usac17NeighborhoodGraphEEESaIS4_EE12emplace_backIJNS1_INS2_21GridNeighborhoodGraphEEEEEERS4_DpOT_.exit.peel unwind label %.loopexit.split-lp487.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIN2cv3PtrINS0_4usac17NeighborhoodGraphEEESaIS4_EE12emplace_backIJNS1_INS2_21GridNeighborhoodGraphEEEEEERS4_DpOT_.exit.peel: ; preds = %bb.ja, %bb.iz
  %i.xk = load ptr, ptr %i.wr, align 8, !tbaa !56 ; 8 uses
  %.not.i.i371.peel = icmp eq ptr %i.xk, null
  br i1 %.not.i.i371.peel, label %_ZNSt12__shared_ptrIN2cv4usac21GridNeighborhoodGraphELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit375.peel, label %bb.jb

bb.jb:                                            ; preds = %_ZNSt6vectorIN2cv3PtrINS0_4usac17NeighborhoodGraphEEESaIS4_EE12emplace_backIJNS1_INS2_21GridNeighborhoodGraphEEEEEERS4_DpOT_.exit.peel
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 8 ; 4 uses
  %i.xm = load atomic i64, ptr %i.xl acquire, align 8 ; 2 uses
  %i.xn = icmp eq i64 %i.xm, 4294967297
  %i.xo = trunc i64 %i.xm to i32                  ; 2 uses
  br i1 %i.xn, label %bb.jg, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.xp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i372.peel = icmp eq i8 %i.xp, 0
  br i1 %.not.i.i.i372.peel, label %bb.je, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.xq = add nsw i32 %i.xo, -1
  store i32 %i.xq, ptr %i.xl, align 8, !tbaa !62
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i373.peel

bb.je:                                            ; preds = %bb.jc
  %i.xr = atomicrmw volatile add ptr %i.xl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i373.peel

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i373.peel: ; preds = %bb.je, %bb.jd
  %.0.i.i.i.i374.peel = phi i32 [ %i.xo, %bb.jd ], [ %i.xr, %bb.je ]
  %i.xs = icmp eq i32 %.0.i.i.i.i374.peel, 1
  br i1 %i.xs, label %bb.jf, label %_ZNSt12__shared_ptrIN2cv4usac21GridNeighborhoodGraphELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit375.peel, !prof !176

bb.jf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i373.peel
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.xk) #28
end_hunk_0
