Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/Baker?download=true
inline.NumInlined: 423
inline.NumDeleted: 148
begin_hunk_0_@_ZNK16OpenColorIO_v2_55Baker4bakeERSo:bb.a
  br i1 %.not.i.i.i.i.i264, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ig = load i32, ptr %i.ie, align 4, !tbaa !55, !noalias !97
  %i.ih = add nsw i32 %i.ig, 1
  store i32 %i.ih, ptr %i.ie, align 4, !tbaa !55, !noalias !97
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cv
  %i.ii = atomicrmw volatile add ptr %i.ie, i32 1 acq_rel, align 4, !noalias !97 ; 0 uses
  br label %bb.cy

_ZNK16OpenColorIO_v2_55Baker9getConfigEv.exit265: ; preds = %bb.cu
  %i.ij = call noundef ptr @_ZNK16OpenColorIO_v2_56Config13getDisplayAllEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ib, i32 noundef %.089) #25
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit270

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.ik = call noundef ptr @_ZNK16OpenColorIO_v2_56Config13getDisplayAllEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ib, i32 noundef %.089) #25 ; 3 uses
  %i.il = load atomic i64, ptr %i.ie acquire, align 8 ; 2 uses
  %i.im = icmp eq i64 %i.il, 4294967297
  %i.in = trunc i64 %i.il to i32                  ; 2 uses
  br i1 %i.im, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  store i32 0, ptr %i.ie, align 8, !tbaa !20
  %i.io = getelementptr inbounds nuw i8, ptr %i.id, i64 12
  store i32 0, ptr %i.io, align 4, !tbaa !21
  %i.ip = load ptr, ptr %i.id, align 8, !tbaa !23
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.ir = load ptr, ptr %i.iq, align 8
  call void %i.ir(ptr noundef nonnull align 8 dereferenceable(16) %i.id) #25, !inline_history !3
  %i.is = load ptr, ptr %i.id, align 8, !tbaa !23
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  %i.iu = load ptr, ptr %i.it, align 8
  call void %i.iu(ptr noundef nonnull align 8 dereferenceable(16) %i.id) #25, !inline_history !3
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit270

bb.da:                                            ; preds = %bb.cy
  %i.iv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i267 = icmp eq i8 %i.iv, 0
  br i1 %.not.i.i.i267, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.iw = add nsw i32 %i.in, -1
  store i32 %i.iw, ptr %i.ie, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i268

bb.dc:                                            ; preds = %bb.da
  %i.ix = atomicrmw volatile add ptr %i.ie, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i268

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i268: ; preds = %bb.dc, %bb.db
  %.0.i.i.i.i269 = phi i32 [ %i.in, %bb.db ], [ %i.ix, %bb.dc ]
  %i.iy = icmp eq i32 %.0.i.i.i.i269, 1
  br i1 %i.iy, label %bb.dd, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit270, !prof !56

bb.dd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i268
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.id) #25
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit270

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit270: ; preds = %_ZNK16OpenColorIO_v2_55Baker9getConfigEv.exit265, %bb.cz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i268, %bb.dd
  %i.iz = phi ptr [ %i.ij, %_ZNK16OpenColorIO_v2_55Baker9getConfigEv.exit265 ], [ %i.ik, %bb.cz ], [ %i.ik, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i268 ], [ %i.ik, %bb.dd ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  store ptr %i.gx, ptr %14, align 8, !tbaa !31
  %i.ja = icmp eq ptr %i.iz, null
  br i1 %i.ja, label %bb.de, label %bb.df

bb.de:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit270
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.29) #27
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.de
  unreachable

bb.df:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit270
  %i.jb = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.iz) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.jb, ptr %i.a, align 8, !tbaa !61
  %i.jc = icmp ugt i64 %i.jb, 15
  br i1 %i.jc, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.df
  %i.jd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc271 unwind label %.loopexit ; 2 uses

.noexc271:                                        ; preds = %.noexc.i
  store ptr %i.jd, ptr %14, align 8, !tbaa !36
  %i.je = load i64, ptr %i.a, align 8, !tbaa !61
  store i64 %i.je, ptr %i.gx, align 8, !tbaa !35
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc271, %bb.df
  %i.jf = phi ptr [ %i.jd, %.noexc271 ], [ %i.gx, %bb.df ] ; 2 uses
  switch i64 %i.jb, label %bb.dh [
    i64 1, label %bb.dg
    i64 0, label %bb.di
  ]

bb.dg:                                            ; preds = %._crit_edge.i.i
  %i.jg = load i8, ptr %i.iz, align 1, !tbaa !35
  store i8 %i.jg, ptr %i.jf, align 1, !tbaa !35
  br label %bb.di

bb.dh:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jf, ptr nonnull align 1 %i.iz, i64 %i.jb, i1 false)
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg, %._crit_edge.i.i
  %i.jh = load i64, ptr %i.a, align 8, !tbaa !61  ; 2 uses
  store i64 %i.jh, ptr %i.gy, align 8, !tbaa !34
  %i.ji = load ptr, ptr %14, align 8, !tbaa !36
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.jh
  store i8 0, ptr %i.jj, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.jk = load i64, ptr %i.gy, align 8, !tbaa !34 ; 4 uses
  %i.jl = load i64, ptr %i.ag, align 8, !tbaa !34
  %i.jm = icmp eq i64 %i.jk, %i.jl
  br i1 %i.jm, label %bb.dj, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge: ; preds = %bb.di
  %.pre427 = load ptr, ptr %14, align 8, !tbaa !36
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.dj:                                            ; preds = %bb.di
  %i.jn = icmp eq i64 %i.jk, 0
  %.pre428 = load ptr, ptr %14, align 8, !tbaa !36 ; 3 uses
  br i1 %i.jn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.jo = load ptr, ptr %i.ae, align 8, !tbaa !36
  %bcmp.i = call i32 @bcmp(ptr %.pre428, ptr %i.jo, i64 %i.jk)
  %i.jp = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge, %bb.dj, %bb.dk
  %i.jq = phi ptr [ %.pre427, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %.pre428, %bb.dk ], [ %.pre428, %bb.dj ] ; 2 uses
  %i.jr = phi i1 [ false, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %i.jp, %bb.dk ], [ true, %bb.dj ]
  %i.js = icmp eq ptr %i.jq, %i.gx
  br i1 %i.js, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i273, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i273: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.jt = icmp ult i64 %i.jk, 16
  call void @llvm.assume(i1 %i.jt)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ju = load i64, ptr %i.gx, align 8, !tbaa !35
  %i.jv = add i64 %i.ju, 1
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.jv) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i273, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br i1 %i.jr, label %bb.dl, label %bb.dq

bb.dl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274
  %i.jw = load ptr, ptr %i.af, align 8, !tbaa !36
  %i.jx = invoke fastcc noundef zeroext i1 @"_ZZNK16OpenColorIO_v2_55Baker4bakeERSoENK3$_0clENS_8ViewTypeEPKcS5_"(ptr nonnull %0, i32 noundef 1, ptr noundef nonnull %i.iz, ptr noundef %i.jw)
          to label %bb.dm unwind label %bb.dp

bb.dm:                                            ; preds = %bb.dl
  %i.jy = load ptr, ptr %i.af, align 8, !tbaa !36
  %i.jz = invoke fastcc noundef zeroext i1 @"_ZZNK16OpenColorIO_v2_55Baker4bakeERSoENK3$_0clENS_8ViewTypeEPKcS5_"(ptr nonnull %0, i32 noundef 0, ptr noundef nonnull %i.iz, ptr noundef %i.jy)
          to label %bb.dn unwind label %bb.dp

bb.dn:                                            ; preds = %bb.dm
  %i.ka = or i1 %i.jx, %i.jz
  %i.kb = zext i1 %i.ka to i8
  %i.kc = or i8 %.090, %i.kb
  br label %bb.dq

.loopexit:                                        ; preds = %.noexc.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

.loopexit.split-lp:                               ; preds = %bb.de
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.do:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.im

bb.dp:                                            ; preds = %bb.dl, %bb.dm
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %bb.im

bb.dq:                                            ; preds = %bb.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274
  %.193 = phi i8 [ 1, %bb.dn ], [ %.092, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274 ] ; 2 uses
  %.191 = phi i8 [ %i.kc, %bb.dn ], [ %.090, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274 ] ; 2 uses
  %i.ke = trunc nuw i8 %.193 to i1
  %i.kf = trunc nuw i8 %.191 to i1
  %or.cond5 = select i1 %i.ke, i1 %i.kf, i1 false
  %i.kg = add nuw nsw i32 %.089, 1
  br i1 %or.cond5, label %.thread382, label %bb.cm, !llvm.loop !88

bb.dr:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit262, %_ZNK16OpenColorIO_v2_55Baker9getConfigEv.exit257, %.split373, %.split374
  %i.kh = trunc nuw i8 %.092 to i1
  br i1 %i.kh, label %bb.ec, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %15)
          to label %bb.dt unwind label %bb.dw

bb.dt:                                            ; preds = %bb.ds
  %i.ki = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull @.str.13, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit276 unwind label %bb.dx ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit276: ; preds = %bb.dt
  %i.kj = load ptr, ptr %i.ae, align 8, !tbaa !36
  %i.kk = load i64, ptr %i.ag, align 8, !tbaa !34
  %i.kl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %i.kj, i64 noundef %i.kk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit278 unwind label %bb.dx

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit278: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit276
  %i.km = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kl, ptr noundef nonnull @.str.11, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit280 unwind label %bb.dx ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit280: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit278
  %i.kn = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(112) %15)
          to label %bb.du unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283.thread

bb.du:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit280
  %i.ko = load ptr, ptr %16, align 8, !tbaa !36
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.kn, ptr noundef %i.ko)
          to label %bb.dv unwind label %bb.dy

bb.dv:                                            ; preds = %bb.du
  invoke void @__cxa_throw(ptr nonnull %i.kn, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #27
          to label %bb.ir unwind label %bb.dy

bb.dw:                                            ; preds = %bb.ds
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.dx:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit278, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit276, %bb.dt
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit280
  %i.kr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dv, %bb.du
  %.086 = phi i1 [ false, %bb.dv ], [ true, %bb.du ] ; 2 uses
  %i.ks = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.kt = load ptr, ptr %16, align 8, !tbaa !36   ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.kv = icmp eq ptr %i.kt, %i.ku
  br i1 %i.kv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281: ; preds = %bb.dy
  %i.kw = load i64, ptr %i.ku, align 8, !tbaa !35
  %i.kx = add i64 %i.kw, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kx) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br i1 %.086, label %bb.dz, label %bb.ea

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283: ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br i1 %.086, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283
  %.pn163381 = phi { ptr, i32 } [ %i.kr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283.thread ], [ %i.ks, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283 ], [ %i.ks, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281 ]
  call void @__cxa_free_exception(ptr %i.kn) #25
  br label %bb.ea

bb.ea:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283, %bb.dz, %bb.dx
  %.pn163.pn = phi { ptr, i32 } [ %.pn163381, %bb.dz ], [ %i.ks, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283 ], [ %i.kq, %bb.dx ], [ %i.ks, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %15) #25
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dw
  %.pn163.pn.pn = phi { ptr, i32 } [ %.pn163.pn, %bb.ea ], [ %i.kp, %bb.dw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.im

bb.ec:                                            ; preds = %bb.dr
  %i.ky = trunc nuw i8 %.090 to i1
  br i1 %i.ky, label %.thread382, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %17)
          to label %bb.ee unwind label %bb.eh

bb.ee:                                            ; preds = %bb.ed
  %i.kz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull @.str.14, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit285 unwind label %bb.ei ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit285: ; preds = %bb.ee
  %i.la = load ptr, ptr %i.af, align 8, !tbaa !36
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ab, i64 336
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !34
  %i.ld = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %i.la, i64 noundef %i.lc)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit287 unwind label %bb.ei

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit287: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit285
  %i.le = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ld, ptr noundef nonnull @.str.11, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit289 unwind label %bb.ei ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit289: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit287
  %i.lf = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(112) %17)
          to label %bb.ef unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292.thread

bb.ef:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit289
  %i.lg = load ptr, ptr %18, align 8, !tbaa !36
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.lf, ptr noundef %i.lg)
          to label %bb.eg unwind label %bb.ej

bb.eg:                                            ; preds = %bb.ef
  invoke void @__cxa_throw(ptr nonnull %i.lf, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #27
          to label %bb.ir unwind label %bb.ej

bb.eh:                                            ; preds = %bb.ed
  %i.lh = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.ei:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit287, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit285, %bb.ee
  %i.li = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit289
  %i.lj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %bb.ek

bb.ej:                                            ; preds = %bb.eg, %bb.ef
  %.084 = phi i1 [ false, %bb.eg ], [ true, %bb.ef ] ; 2 uses
  %i.lk = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ll = load ptr, ptr %18, align 8, !tbaa !36   ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ln = icmp eq ptr %i.ll, %i.lm
  br i1 %i.ln, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290: ; preds = %bb.ej
  %i.lo = load i64, ptr %i.lm, align 8, !tbaa !35
  %i.lp = add i64 %i.lo, 1
  call void @_ZdlPvm(ptr noundef %i.ll, i64 noundef %i.lp) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br i1 %.084, label %bb.ek, label %bb.el

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292: ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br i1 %.084, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292
  %.pn167386 = phi { ptr, i32 } [ %i.lj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292.thread ], [ %i.lk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292 ], [ %i.lk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290 ]
  call void @__cxa_free_exception(ptr %i.lf) #25
  br label %bb.el

bb.el:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292, %bb.ek, %bb.ei
  %.pn167.pn = phi { ptr, i32 } [ %.pn167386, %bb.ek ], [ %i.lk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292 ], [ %i.li, %bb.ei ], [ %i.lk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %17) #25
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.eh
  %.pn167.pn.pn = phi { ptr, i32 } [ %.pn167.pn, %bb.el ], [ %i.lh, %bb.eh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %bb.im

.thread382:                                       ; preds = %bb.dq, %bb.ec, %.critedge213.thread
  %i.lq = getelementptr inbounds nuw i8, ptr %5, i64 68 ; 2 uses
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !98
  %i.ls = icmp eq i32 %i.lr, 2
  br i1 %i.ls, label %bb.en, label %.critedge215.thread

bb.en:                                            ; preds = %.thread382
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  invoke void @_ZN16OpenColorIO_v2_525GetInputToTargetProcessorERKNS_5BakerE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.41") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.eo unwind label %bb.fa

bb.eo:                                            ; preds = %bb.en
  %i.lt = load ptr, ptr %19, align 8, !tbaa !101
  %i.lu = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_512CPUProcessor19hasChannelCrosstalkEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lt)
          to label %bb.ep unwind label %bb.fb

bb.ep:                                            ; preds = %bb.eo
  %i.lv = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !18 ; 8 uses
  %.not.i.i293 = icmp eq ptr %i.lw, null
  br i1 %.not.i.i293, label %.critedge215, label %bb.eq

end_hunk_0
