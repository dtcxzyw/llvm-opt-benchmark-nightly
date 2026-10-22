Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/Baker?download=true
inline.NumInlined: 423
inline.NumDeleted: 148
begin_hunk_0_@_ZNK16OpenColorIO_v2_55Baker4bakeERSo:bb.a

bb.cr:                                            ; preds = %bb.cq
  %i.hv = add nsw i32 %i.hm, -1
  store i32 %i.hv, ptr %i.hb, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i260

bb.cs:                                            ; preds = %bb.cq
  %i.hw = atomicrmw volatile add ptr %i.hb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i260

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i260: ; preds = %bb.cs, %bb.cr
  %.0.i.i.i.i261 = phi i32 [ %i.hm, %bb.cr ], [ %i.hw, %bb.cs ]
  %i.hx = icmp eq i32 %.0.i.i.i.i261, 1
  br i1 %i.hx, label %.split373, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit262, !prof !56

.split373:                                        ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i260
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #25
  br i1 %i.hj, label %bb.ct, label %bb.do

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit262: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i260
  br i1 %i.hj, label %bb.ct, label %bb.do

bb.ct:                                            ; preds = %.split374, %.split373, %_ZNK16OpenColorIO_v2_55Baker9getConfigEv.exit257, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit262
  %i.hy = load ptr, ptr %0, align 8, !tbaa !28, !noalias !97 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !57, !noalias !97 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !18, !noalias !97 ; 8 uses
  %.not.i.i.i.i263 = icmp eq ptr %i.ib, null
  br i1 %.not.i.i.i.i263, label %_ZNK16OpenColorIO_v2_55Baker9getConfigEv.exit265, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8 ; 7 uses
  %i.id = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35, !noalias !97
  %.not.i.i.i.i.i264 = icmp eq i8 %i.id, 0
  br i1 %.not.i.i.i.i.i264, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ie = load i32, ptr %i.ic, align 4, !tbaa !55, !noalias !97
  %i.if = add nsw i32 %i.ie, 1
  store i32 %i.if, ptr %i.ic, align 4, !tbaa !55, !noalias !97
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cu
  %i.ig = atomicrmw volatile add ptr %i.ic, i32 1 acq_rel, align 4, !noalias !97 ; 0 uses
  br label %bb.cx

_ZNK16OpenColorIO_v2_55Baker9getConfigEv.exit265: ; preds = %bb.ct
  %i.ih = call noundef ptr @_ZNK16OpenColorIO_v2_56Config13getDisplayAllEi(ptr noundef nonnull align 8 dereferenceable(8) %i.hz, i32 noundef %.089) #25
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit270

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.ii = call noundef ptr @_ZNK16OpenColorIO_v2_56Config13getDisplayAllEi(ptr noundef nonnull align 8 dereferenceable(8) %i.hz, i32 noundef %.089) #25 ; 3 uses
  %i.ij = load atomic i64, ptr %i.ic acquire, align 8 ; 2 uses
  %i.ik = icmp eq i64 %i.ij, 4294967297
  %i.il = trunc i64 %i.ij to i32                  ; 2 uses
  br i1 %i.ik, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  store i32 0, ptr %i.ic, align 8, !tbaa !20
  %i.im = getelementptr inbounds nuw i8, ptr %i.ib, i64 12
  store i32 0, ptr %i.im, align 4, !tbaa !21
  %i.in = load ptr, ptr %i.ib, align 8, !tbaa !23
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %i.ip = load ptr, ptr %i.io, align 8
  call void %i.ip(ptr noundef nonnull align 8 dereferenceable(16) %i.ib) #25, !inline_history !3
  %i.iq = load ptr, ptr %i.ib, align 8, !tbaa !23
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %i.is = load ptr, ptr %i.ir, align 8
  call void %i.is(ptr noundef nonnull align 8 dereferenceable(16) %i.ib) #25, !inline_history !3
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit270

bb.cz:                                            ; preds = %bb.cx
  %i.it = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i267 = icmp eq i8 %i.it, 0
  br i1 %.not.i.i.i267, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.iu = add nsw i32 %i.il, -1
  store i32 %i.iu, ptr %i.ic, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i268

bb.db:                                            ; preds = %bb.cz
  %i.iv = atomicrmw volatile add ptr %i.ic, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i268

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i268: ; preds = %bb.db, %bb.da
  %.0.i.i.i.i269 = phi i32 [ %i.il, %bb.da ], [ %i.iv, %bb.db ]
  %i.iw = icmp eq i32 %.0.i.i.i.i269, 1
  br i1 %i.iw, label %bb.dc, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit270, !prof !56

bb.dc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i268
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ib) #25
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit270

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit270: ; preds = %_ZNK16OpenColorIO_v2_55Baker9getConfigEv.exit265, %bb.cy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i268, %bb.dc
  %i.ix = phi ptr [ %i.ih, %_ZNK16OpenColorIO_v2_55Baker9getConfigEv.exit265 ], [ %i.ii, %bb.cy ], [ %i.ii, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i268 ], [ %i.ii, %bb.dc ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  store ptr %i.gv, ptr %14, align 8, !tbaa !31
  %i.iy = icmp eq ptr %i.ix, null
  br i1 %i.iy, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit270
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.29) #27
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.dd
  unreachable

bb.de:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit270
  %i.iz = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ix) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.iz, ptr %i.a, align 8, !tbaa !61
  %i.ja = icmp ugt i64 %i.iz, 15
  br i1 %i.ja, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.de
  %i.jb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc271 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc271:                                        ; preds = %.noexc.i
  store ptr %i.jb, ptr %14, align 8, !tbaa !36
  %i.jc = load i64, ptr %i.a, align 8, !tbaa !61
  store i64 %i.jc, ptr %i.gv, align 8, !tbaa !35
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc271, %bb.de
  %i.jd = phi ptr [ %i.jb, %.noexc271 ], [ %i.gv, %bb.de ] ; 2 uses
  switch i64 %i.iz, label %bb.dg [
    i64 1, label %bb.df
    i64 0, label %bb.dh
  ]

bb.df:                                            ; preds = %._crit_edge.i.i
  %i.je = load i8, ptr %i.ix, align 1, !tbaa !35
  store i8 %i.je, ptr %i.jd, align 1, !tbaa !35
  br label %bb.dh

bb.dg:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jd, ptr nonnull align 1 %i.ix, i64 %i.iz, i1 false)
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df, %._crit_edge.i.i
  %i.jf = load i64, ptr %i.a, align 8, !tbaa !61  ; 2 uses
  store i64 %i.jf, ptr %i.gw, align 8, !tbaa !34
  %i.jg = load ptr, ptr %14, align 8, !tbaa !36
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.jf
  store i8 0, ptr %i.jh, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.ji = load i64, ptr %i.gw, align 8, !tbaa !34 ; 4 uses
  %i.jj = load i64, ptr %i.ag, align 8, !tbaa !34
  %i.jk = icmp eq i64 %i.ji, %i.jj
  br i1 %i.jk, label %bb.di, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge: ; preds = %bb.dh
  %.pre435 = load ptr, ptr %14, align 8, !tbaa !36
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.di:                                            ; preds = %bb.dh
  %i.jl = icmp eq i64 %i.ji, 0
  %.pre436 = load ptr, ptr %14, align 8, !tbaa !36 ; 3 uses
  br i1 %i.jl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.jm = load ptr, ptr %i.ae, align 8, !tbaa !36
  %bcmp.i = call i32 @bcmp(ptr %.pre436, ptr %i.jm, i64 %i.ji)
  %i.jn = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge, %bb.di, %bb.dj
  %i.jo = phi ptr [ %.pre435, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %.pre436, %bb.dj ], [ %.pre436, %bb.di ] ; 2 uses
  %i.jp = phi i1 [ false, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %i.jn, %bb.dj ], [ true, %bb.di ]
  %i.jq = icmp eq ptr %i.jo, %i.gv
  br i1 %i.jq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i273, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i273: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.jr = icmp ult i64 %i.ji, 16
  call void @llvm.assume(i1 %i.jr)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.js = load i64, ptr %i.gv, align 8, !tbaa !35
  %i.jt = add i64 %i.js, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.jt) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i273, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br i1 %i.jp, label %bb.dk, label %bb.dn

bb.dk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274
  %i.ju = load ptr, ptr %i.af, align 8, !tbaa !36
  %i.jv = invoke fastcc noundef zeroext i1 @"_ZZNK16OpenColorIO_v2_55Baker4bakeERSoENK3$_0clENS_8ViewTypeEPKcS5_"(ptr nonnull %0, i32 noundef 1, ptr noundef nonnull %i.ix, ptr noundef %i.ju)
          to label %bb.dl unwind label %.loopexit.split-lp411.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dl:                                            ; preds = %bb.dk
  %i.jw = load ptr, ptr %i.af, align 8, !tbaa !36
  %i.jx = invoke fastcc noundef zeroext i1 @"_ZZNK16OpenColorIO_v2_55Baker4bakeERSoENK3$_0clENS_8ViewTypeEPKcS5_"(ptr nonnull %0, i32 noundef 0, ptr noundef nonnull %i.ix, ptr noundef %i.jw)
          to label %bb.dm unwind label %.loopexit.split-lp411.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dm:                                            ; preds = %bb.dl
  %32 = trunc nuw i8 %.090 to i1
  %i.jy = or i1 %i.jv, %32
  %33 = or i1 %i.jy, %i.jx
  %34 = zext i1 %33 to i8
  br label %bb.dn

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i, %bb.dd
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %.loopexit.split-lp411

bb.dn:                                            ; preds = %bb.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274
  %.193 = phi i8 [ 1, %bb.dm ], [ %.092, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274 ] ; 2 uses
  %.191 = phi i8 [ %34, %bb.dm ], [ %.090, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274 ] ; 2 uses
  %i.jz = trunc nuw i8 %.193 to i1
  %i.ka = trunc nuw i8 %.191 to i1
  %or.cond5 = select i1 %i.jz, i1 %i.ka, i1 false
  %i.kb = add nuw nsw i32 %.089, 1
  br i1 %or.cond5, label %.thread382, label %bb.cl, !llvm.loop !88

bb.do:                                            ; preds = %.split374, %.split373, %_ZNK16OpenColorIO_v2_55Baker9getConfigEv.exit257, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit262
  %i.kc = trunc nuw i8 %.092 to i1
  br i1 %i.kc, label %bb.dz, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %15)
          to label %bb.dq unwind label %bb.dt

bb.dq:                                            ; preds = %bb.dp
  %i.kd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull @.str.13, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit276 unwind label %bb.du ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit276: ; preds = %bb.dq
  %i.ke = load ptr, ptr %i.ae, align 8, !tbaa !36
  %i.kf = load i64, ptr %i.ag, align 8, !tbaa !34
  %i.kg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %i.ke, i64 noundef %i.kf)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit278 unwind label %bb.du

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit278: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit276
  %i.kh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kg, ptr noundef nonnull @.str.11, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit280 unwind label %bb.du ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit280: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit278
  %i.ki = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(112) %15)
          to label %bb.dr unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283.thread

bb.dr:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit280
  %i.kj = load ptr, ptr %16, align 8, !tbaa !36
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ki, ptr noundef %i.kj)
          to label %bb.ds unwind label %bb.dv

bb.ds:                                            ; preds = %bb.dr
  invoke void @__cxa_throw(ptr nonnull %i.ki, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #27
          to label %bb.il unwind label %bb.dv

bb.dt:                                            ; preds = %bb.dp
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.du:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit278, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit276, %bb.dq
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit280
  %i.km = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %bb.dw

bb.dv:                                            ; preds = %bb.ds, %bb.dr
  %.086 = phi i1 [ false, %bb.ds ], [ true, %bb.dr ] ; 2 uses
  %i.kn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ko = load ptr, ptr %16, align 8, !tbaa !36   ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.kq = icmp eq ptr %i.ko, %i.kp
  br i1 %i.kq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281: ; preds = %bb.dv
  %i.kr = load i64, ptr %i.kp, align 8, !tbaa !35
  %i.ks = add i64 %i.kr, 1
  call void @_ZdlPvm(ptr noundef %i.ko, i64 noundef %i.ks) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br i1 %.086, label %bb.dw, label %bb.dx

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283: ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br i1 %.086, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283
  %.pn163381 = phi { ptr, i32 } [ %i.km, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283.thread ], [ %i.kn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283 ], [ %i.kn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281 ]
  call void @__cxa_free_exception(ptr %i.ki) #25
  br label %bb.dx

bb.dx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283, %bb.dw, %bb.du
  %.pn163.pn = phi { ptr, i32 } [ %.pn163381, %bb.dw ], [ %i.kn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283 ], [ %i.kl, %bb.du ], [ %i.kn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %15) #25
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dt
  %.pn163.pn.pn = phi { ptr, i32 } [ %.pn163.pn, %bb.dx ], [ %i.kk, %bb.dt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %.loopexit.split-lp411

bb.dz:                                            ; preds = %bb.do
  %i.kt = trunc nuw i8 %.090 to i1
  br i1 %i.kt, label %.thread382, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %17)
          to label %bb.eb unwind label %bb.ee

bb.eb:                                            ; preds = %bb.ea
  %i.ku = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull @.str.14, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit285 unwind label %bb.ef ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit285: ; preds = %bb.eb
  %i.kv = load ptr, ptr %i.af, align 8, !tbaa !36
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ab, i64 336
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !34
  %i.ky = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %i.kv, i64 noundef %i.kx)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit287 unwind label %bb.ef

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit287: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit285
  %i.kz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ky, ptr noundef nonnull @.str.11, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit289 unwind label %bb.ef ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit289: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit287
  %i.la = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(112) %17)
          to label %bb.ec unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292.thread

bb.ec:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit289
  %i.lb = load ptr, ptr %18, align 8, !tbaa !36
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.la, ptr noundef %i.lb)
          to label %bb.ed unwind label %bb.eg

bb.ed:                                            ; preds = %bb.ec
  invoke void @__cxa_throw(ptr nonnull %i.la, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #27
          to label %bb.il unwind label %bb.eg

bb.ee:                                            ; preds = %bb.ea
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ej

bb.ef:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit287, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit285, %bb.eb
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit289
  %i.le = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ed, %bb.ec
  %.084 = phi i1 [ false, %bb.ed ], [ true, %bb.ec ] ; 2 uses
  %i.lf = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.lg = load ptr, ptr %18, align 8, !tbaa !36   ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.li = icmp eq ptr %i.lg, %i.lh
  br i1 %i.li, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290: ; preds = %bb.eg
  %i.lj = load i64, ptr %i.lh, align 8, !tbaa !35
  %i.lk = add i64 %i.lj, 1
  call void @_ZdlPvm(ptr noundef %i.lg, i64 noundef %i.lk) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br i1 %.084, label %bb.eh, label %bb.ei

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292: ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br i1 %.084, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292
  %.pn167386 = phi { ptr, i32 } [ %i.le, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292.thread ], [ %i.lf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292 ], [ %i.lf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290 ]
  call void @__cxa_free_exception(ptr %i.la) #25
  br label %bb.ei

bb.ei:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292, %bb.eh, %bb.ef
  %.pn167.pn = phi { ptr, i32 } [ %.pn167386, %bb.eh ], [ %i.lf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292 ], [ %i.ld, %bb.ef ], [ %i.lf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %17) #25
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.ee
  %.pn167.pn.pn = phi { ptr, i32 } [ %.pn167.pn, %bb.ei ], [ %i.lc, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %.loopexit.split-lp411

.thread382:                                       ; preds = %bb.dn, %bb.dz, %.critedge213.thread
  %i.ll = getelementptr inbounds nuw i8, ptr %5, i64 68 ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !98
  %i.ln = icmp eq i32 %i.lm, 2
  br i1 %i.ln, label %bb.ek, label %.critedge215.thread

bb.ek:                                            ; preds = %.thread382
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  invoke void @_ZN16OpenColorIO_v2_525GetInputToTargetProcessorERKNS_5BakerE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.41") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.el unwind label %bb.ex

bb.el:                                            ; preds = %bb.ek
  %i.lo = load ptr, ptr %19, align 8, !tbaa !101
  %i.lp = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_512CPUProcessor19hasChannelCrosstalkEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lo)
          to label %bb.em unwind label %bb.ey
end_hunk_0
