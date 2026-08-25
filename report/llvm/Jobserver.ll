Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Jobserver?download=true
inline.NumInlined: 457
inline.NumDeleted: 261
begin_hunk_0_@"_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZN4llvm15JobserverClient11getInstanceEvE3$_0JEEvRS_OT_DpOT0_EUlvE_EERS7_ENUlvE_8__invokeEv":bb.a
  store ptr %i.hp, ptr %i.ho, align 8, !tbaa !54, !alias.scope !48
  %i.hq = load ptr, ptr %i.x, align 8, !tbaa !22, !noalias !48 ; 2 uses
  %i.hr = icmp eq ptr %i.hq, %i.y
  br i1 %i.hr, label %bb.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95.i.i.i.i.i.i

bb.av:                                            ; preds = %bb.au
  %i.hs = load i64, ptr %i.z, align 8, !tbaa !55, !noalias !48 ; 3 uses
  %i.ht = icmp ult i64 %i.hs, 16
  call void @llvm.assume(i1 %i.ht)
  %i.hu = add nuw nsw i64 %i.hs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hp, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.hu, i1 false)
  br label %_ZN4llvm8ExpectedIN12_GLOBAL__N_115JobserverConfigEEC2IS2_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS5_S2_EEvE4typeE.exit96.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95.i.i.i.i.i.i: ; preds = %bb.au
  store ptr %i.hq, ptr %i.ho, align 8, !tbaa !22, !alias.scope !48
  %i.hv = load i64, ptr %i.y, align 8, !tbaa !23, !noalias !48
  store i64 %i.hv, ptr %i.hp, align 8, !tbaa !23, !alias.scope !48
  %.pre143.i.i.i.i.i.i = load i64, ptr %i.z, align 8, !tbaa !55, !noalias !48
  br label %_ZN4llvm8ExpectedIN12_GLOBAL__N_115JobserverConfigEEC2IS2_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS5_S2_EEvE4typeE.exit96.i.i.i.i.i.i

_ZN4llvm8ExpectedIN12_GLOBAL__N_115JobserverConfigEEC2IS2_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS5_S2_EEvE4typeE.exit96.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95.i.i.i.i.i.i, %bb.av
  %i.hw = phi i64 [ %i.hs, %bb.av ], [ %.pre143.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95.i.i.i.i.i.i ]
  %i.hx = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.hw, ptr %i.hx, align 8, !tbaa !55, !alias.scope !48
  store ptr %i.y, ptr %i.x, align 8, !tbaa !22, !noalias !48
  store i64 0, ptr %i.z, align 8, !tbaa !55, !noalias !48
  store i8 0, ptr %i.y, align 8, !tbaa !23, !noalias !48
  %i.hy = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.hz = load i64, ptr %i.aa, align 8, !noalias !48
  store i64 %i.hz, ptr %i.hy, align 8, !alias.scope !48
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN4llvm8ExpectedIN12_GLOBAL__N_115JobserverConfigEEC2IS2_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS5_S2_EEvE4typeE.exit96.i.i.i.i.i.i, %_ZN4llvm5ErrorD2Ev.exit94.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i, %_ZN4llvm8ExpectedIN12_GLOBAL__N_115JobserverConfigEEC2IS2_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS5_S2_EEvE4typeE.exit42.i.i.i.i.i.i
  %i.ia = load ptr, ptr %8, align 8, !tbaa !58, !noalias !48 ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.al
  br i1 %i.ib, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @free(ptr noundef %i.ia) #20
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !48
  %.pre144.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !22, !noalias !48 ; 2 uses
  %i.ic = icmp eq ptr %.pre144.i.i.i.i.i.i, %i.y
  br i1 %i.ic, label %_ZN12_GLOBAL__N_120parseNativeMakeFlagsEN4llvm9StringRefE.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i97.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i97.i.i.i.i.i.i: ; preds = %bb.ay
  %i.id = load i64, ptr %i.y, align 8, !tbaa !23, !noalias !48
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %.pre144.i.i.i.i.i.i, i64 noundef %i.ie) #21
  br label %_ZN12_GLOBAL__N_120parseNativeMakeFlagsEN4llvm9StringRefE.exit.i.i.i.i.i

_ZN12_GLOBAL__N_120parseNativeMakeFlagsEN4llvm9StringRefE.exit.i.i.i.i.i: ; preds = %.thread181.i.i.i.i.i.i, %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i97.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20, !noalias !48
  %i.if = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  %i.ig = load i8, ptr %i.if, align 8, !noalias !98
  %i.ih = trunc i8 %i.ig to i1
  br i1 %i.ih, label %_ZN4llvm8ExpectedIN12_GLOBAL__N_115JobserverConfigEE9takeErrorEv.exit.i.i.i.i.i, label %_ZN12_GLOBAL__N_120parseNativeMakeFlagsEN4llvm9StringRefE.exit._ZN4llvm5ErrorD2Ev.exit14_crit_edge.i.i.i.i.i

_ZN12_GLOBAL__N_120parseNativeMakeFlagsEN4llvm9StringRefE.exit._ZN4llvm5ErrorD2Ev.exit14_crit_edge.i.i.i.i.i: ; preds = %_ZN12_GLOBAL__N_120parseNativeMakeFlagsEN4llvm9StringRefE.exit.i.i.i.i.i
  %.pre16.i.i.i.i.i = load i32, ptr %13, align 8, !tbaa !51
  br label %_ZN4llvm5ErrorD2Ev.exit14.i.i.i.i.i

_ZN4llvm8ExpectedIN12_GLOBAL__N_115JobserverConfigEE9takeErrorEv.exit.i.i.i.i.i: ; preds = %_ZN12_GLOBAL__N_120parseNativeMakeFlagsEN4llvm9StringRefE.exit.i.i.i.i.i
  %i.ii = load i64, ptr %13, align 8, !tbaa !90, !noalias !98 ; 2 uses
  %i.ij = inttoptr i64 %i.ii to ptr
  store ptr null, ptr %13, align 8, !tbaa !90, !noalias !98
  %.not14.i.i.i.i.i = icmp eq i64 %i.ii, 0
  br i1 %.not14.i.i.i.i.i, label %_ZN4llvm5ErrorD2Ev.exit14.i.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %_ZN4llvm8ExpectedIN12_GLOBAL__N_115JobserverConfigEE9takeErrorEv.exit.i.i.i.i.i
  %i.ik = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #20 ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !43
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 32 ; 3 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !47 ; 2 uses
  %i.ip = ptrtoint ptr %i.im to i64
  %i.iq = ptrtoint ptr %i.io to i64
  %i.ir = sub i64 %i.ip, %i.iq
  %i.is = icmp ult i64 %i.ir, 90
  br i1 %i.is, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.it = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ik, ptr noundef nonnull @.str.2, i64 noundef 90) #20
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit7.i.i.i.i.i

bb.bb:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(90) %i.io, ptr noundef nonnull align 1 dereferenceable(90) @.str.2, i64 90, i1 false)
  %i.iu = load ptr, ptr %i.in, align 8, !tbaa !47
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 90
  store ptr %i.iv, ptr %i.in, align 8, !tbaa !47
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit7.i.i.i.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit7.i.i.i.i.i:      ; preds = %bb.bb, %bb.ba
  %.0.i.i6.i.i.i.i.i = phi ptr [ %i.it, %bb.ba ], [ %i.ik, %bb.bb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  store ptr %i.ij, ptr %15, align 8, !tbaa !86
  call void @_ZN4llvm8toStringB5cxx11ENS_5ErrorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr nofree noundef nonnull align 8 dereferenceable(8) %15) #20
  %i.iw = load ptr, ptr %14, align 8, !tbaa !22
  %i.ix = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !55
  %i.iz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i6.i.i.i.i.i, ptr noundef %i.iw, i64 noundef %i.iy) #20 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !43
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 32 ; 3 uses
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !47 ; 2 uses
  %i.je = icmp eq ptr %i.jb, %i.jd
  br i1 %i.je, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit7.i.i.i.i.i
  %i.jf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.iz, ptr noundef nonnull @.str.3, i64 noundef 1) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit10.i.i.i.i.i

bb.bd:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit7.i.i.i.i.i
  store i8 10, ptr %i.jd, align 1
  %i.jg = load ptr, ptr %i.jc, align 8, !tbaa !47
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 1
  store ptr %i.jh, ptr %i.jc, align 8, !tbaa !47
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit10.i.i.i.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit10.i.i.i.i.i:     ; preds = %bb.bd, %bb.bc
  %i.ji = load ptr, ptr %14, align 8, !tbaa !22   ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.jk = icmp eq ptr %i.ji, %i.jj
  br i1 %i.jk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i.i.i.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit10.i.i.i.i.i
  %i.jl = load i64, ptr %i.jj, align 8, !tbaa !23
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %i.ji, i64 noundef %i.jm) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit10.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i.i.i.i
  %i.jn = load ptr, ptr %15, align 8, !tbaa !86   ; 3 uses
  %i.jo = icmp eq ptr %i.jn, null
  br i1 %i.jo, label %_ZN4llvm5ErrorD2Ev.exit13.i.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.jp = load ptr, ptr %i.jn, align 8, !tbaa !8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.jr = load ptr, ptr %i.jq, align 8
  call void %i.jr(ptr noundef nonnull align 8 dereferenceable(8) %i.jn) #20, !inline_history !101
  br label %_ZN4llvm5ErrorD2Ev.exit13.i.i.i.i.i

_ZN4llvm5ErrorD2Ev.exit13.i.i.i.i.i:              ; preds = %bb.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.cm

_ZN4llvm5ErrorD2Ev.exit14.i.i.i.i.i:              ; preds = %_ZN4llvm8ExpectedIN12_GLOBAL__N_115JobserverConfigEE9takeErrorEv.exit.i.i.i.i.i, %_ZN12_GLOBAL__N_120parseNativeMakeFlagsEN4llvm9StringRefE.exit._ZN4llvm5ErrorD2Ev.exit14_crit_edge.i.i.i.i.i
  %i.js = phi i32 [ %.pre16.i.i.i.i.i, %_ZN12_GLOBAL__N_120parseNativeMakeFlagsEN4llvm9StringRefE.exit._ZN4llvm5ErrorD2Ev.exit14_crit_edge.i.i.i.i.i ], [ 0, %_ZN4llvm8ExpectedIN12_GLOBAL__N_115JobserverConfigEE9takeErrorEv.exit.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  store i32 %i.js, ptr %16, align 8, !tbaa !51
  %i.jt = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 7 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.jv = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 5 uses
  store ptr %i.jv, ptr %i.jt, align 8, !tbaa !54
  %i.jw = load ptr, ptr %i.ju, align 8, !tbaa !22 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.jy, ptr %i.a, align 8, !tbaa !66
  %i.jz = icmp ugt i64 %i.jy, 15
  br i1 %i.jz, label %bb.bf, label %._crit_edge.i.i.i.i.i.i.i.i

bb.bf:                                            ; preds = %_ZN4llvm5ErrorD2Ev.exit14.i.i.i.i.i
  %i.ka = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.jt, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #20 ; 2 uses
  store ptr %i.ka, ptr %i.jt, align 8, !tbaa !22
  %i.kb = load i64, ptr %i.a, align 8, !tbaa !66
  store i64 %i.kb, ptr %i.jv, align 8, !tbaa !23
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.bf, %_ZN4llvm5ErrorD2Ev.exit14.i.i.i.i.i
  %i.kc = phi ptr [ %i.ka, %bb.bf ], [ %i.jv, %_ZN4llvm5ErrorD2Ev.exit14.i.i.i.i.i ] ; 2 uses
  switch i64 %i.jy, label %bb.bh [
    i64 1, label %bb.bg
    i64 0, label %_ZN12_GLOBAL__N_115JobserverConfigC2ERKS0_.exit.i.i.i.i.i
  ]

bb.bg:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.kd = load i8, ptr %i.jw, align 1, !tbaa !23
  store i8 %i.kd, ptr %i.kc, align 1, !tbaa !23
  br label %_ZN12_GLOBAL__N_115JobserverConfigC2ERKS0_.exit.i.i.i.i.i

bb.bh:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kc, ptr align 1 %i.jw, i64 %i.jy, i1 false)
  br label %_ZN12_GLOBAL__N_115JobserverConfigC2ERKS0_.exit.i.i.i.i.i

_ZN12_GLOBAL__N_115JobserverConfigC2ERKS0_.exit.i.i.i.i.i: ; preds = %bb.bh, %bb.bg, %._crit_edge.i.i.i.i.i.i.i.i
  %i.ke = load i64, ptr %i.a, align 8, !tbaa !66  ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 %i.ke, ptr %i.kf, align 8, !tbaa !55
  %i.kg = load ptr, ptr %i.jt, align 8, !tbaa !22
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.ke
  store i8 0, ptr %i.kh, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.ki = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.kk = load i64, ptr %i.kj, align 8            ; 3 uses
  store i64 %i.kk, ptr %i.ki, align 8
  %i.kl = load i32, ptr %16, align 8, !tbaa !51
  %i.km = trunc i64 %i.kk to i32                  ; 2 uses
  %i.kn = lshr i64 %i.kk, 32                      ; 2 uses
  %i.ko = trunc nuw i64 %i.kn to i32
  switch i32 %i.kl, label %bb.bp [
    i32 0, label %bb.bi
    i32 2, label %bb.bl
  ]

bb.bi:                                            ; preds = %_ZN12_GLOBAL__N_115JobserverConfigC2ERKS0_.exit.i.i.i.i.i
  %i.kp = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #20 ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !43
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 32 ; 3 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !47 ; 2 uses
  %i.ku = ptrtoint ptr %i.kr to i64
  %i.kv = ptrtoint ptr %i.kt to i64
  %i.kw = sub i64 %i.ku, %i.kv
  %i.kx = icmp ult i64 %i.kw, 107
  br i1 %i.kx, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ky = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.kp, ptr noundef nonnull @.str.4, i64 noundef 107) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit17.i.i.i.i.i

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(107) %i.kt, ptr noundef nonnull align 1 dereferenceable(107) @.str.4, i64 107, i1 false)
  %i.kz = load ptr, ptr %i.ks, align 8, !tbaa !47
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 107
  store ptr %i.la, ptr %i.ks, align 8, !tbaa !47
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit17.i.i.i.i.i

bb.bl:                                            ; preds = %_ZN12_GLOBAL__N_115JobserverConfigC2ERKS0_.exit.i.i.i.i.i
  %i.lb = icmp eq i32 %i.km, -1
  %i.lc = icmp eq i64 %i.kn, 4294967295
  %or.cond.i18.i.i.i.i.i = or i1 %i.lb, %i.lc
  br i1 %or.cond.i18.i.i.i.i.i, label %_ZN12_GLOBAL__N_111areFdsValidEii.exit.thread.i.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ld = call i32 (i32, i32, ...) @fcntl(i32 noundef %i.km, i32 noundef 1) #20
  %.not.i19.i.i.i.i.i = icmp eq i32 %i.ld, -1
  br i1 %.not.i19.i.i.i.i.i, label %_ZN12_GLOBAL__N_111areFdsValidEii.exit.thread.i.i.i.i.i, label %_ZN12_GLOBAL__N_111areFdsValidEii.exit.i.i.i.i.i

_ZN12_GLOBAL__N_111areFdsValidEii.exit.i.i.i.i.i: ; preds = %bb.bm
  %i.le = call i32 (i32, i32, ...) @fcntl(i32 noundef %i.ko, i32 noundef 1) #20
  %.not15.i.i.i.i.i = icmp eq i32 %i.le, -1
  br i1 %.not15.i.i.i.i.i, label %_ZN12_GLOBAL__N_111areFdsValidEii.exit.thread.i.i.i.i.i, label %bb.bp

_ZN12_GLOBAL__N_111areFdsValidEii.exit.thread.i.i.i.i.i: ; preds = %_ZN12_GLOBAL__N_111areFdsValidEii.exit.i.i.i.i.i, %bb.bm, %bb.bl
  %i.lf = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #20 ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 24
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !43
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 32 ; 3 uses
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !47 ; 2 uses
  %i.lk = ptrtoint ptr %i.lh to i64
  %i.ll = ptrtoint ptr %i.lj to i64
  %i.lm = sub i64 %i.lk, %i.ll
  %i.ln = icmp ult i64 %i.lm, 101
  br i1 %i.ln, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %_ZN12_GLOBAL__N_111areFdsValidEii.exit.thread.i.i.i.i.i
  %i.lo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.lf, ptr noundef nonnull @.str.5, i64 noundef 101) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit17.i.i.i.i.i

bb.bo:                                            ; preds = %_ZN12_GLOBAL__N_111areFdsValidEii.exit.thread.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(101) %i.lj, ptr noundef nonnull align 1 dereferenceable(101) @.str.5, i64 101, i1 false)
  %i.lp = load ptr, ptr %i.li, align 8, !tbaa !47
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 101
  store ptr %i.lq, ptr %i.li, align 8, !tbaa !47
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit17.i.i.i.i.i

bb.bp:                                            ; preds = %_ZN12_GLOBAL__N_111areFdsValidEii.exit.i.i.i.i.i, %_ZN12_GLOBAL__N_115JobserverConfigC2ERKS0_.exit.i.i.i.i.i
  %i.lr = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #24, !noalias !102 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !102
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm19JobserverClientImplE, i64 16), ptr %i.lr, align 8, !tbaa !8, !noalias !102
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 8 ; 3 uses
  store i8 0, ptr %i.ls, align 8, !tbaa !24, !noalias !102
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 9
  store i8 1, ptr %i.lt, align 1, !tbaa !105, !noalias !102
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lr, i64 12 ; 2 uses
  store i32 0, ptr %i.lu, align 4, !tbaa !42, !noalias !102
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lr, i64 16 ; 4 uses
  store i32 -1, ptr %i.lv, align 8, !tbaa !10, !noalias !102
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lr, i64 20 ; 2 uses
  store i32 -1, ptr %i.lw, align 4, !tbaa !21, !noalias !102
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lr, i64 24 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lr, i64 40 ; 2 uses
  store ptr %i.ly, ptr %i.lx, align 8, !tbaa !54, !noalias !102
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lr, i64 32
  store i64 0, ptr %i.lz, align 8, !tbaa !55, !noalias !102
  store i8 0, ptr %i.ly, align 8, !tbaa !23, !noalias !102
  %17 = load i32, ptr %16, align 8, !tbaa !51, !noalias !102
  switch i32 %17, label %_ZSt11make_uniqueIN4llvm19JobserverClientImplEJRN12_GLOBAL__N_115JobserverConfigEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i.i.i.i [
    i32 2, label %bb.bq
    i32 1, label %bb.ca
  ]

bb.bq:                                            ; preds = %bb.bp
  %i.ma = load i32, ptr %i.ki, align 8, !tbaa !106, !noalias !102
  %i.mb = call i32 @dup(i32 noundef %i.ma) #20, !noalias !102 ; 8 uses
  %i.mc = icmp slt i32 %i.mb, 0
  br i1 %i.mc, label %_ZSt11make_uniqueIN4llvm19JobserverClientImplEJRN12_GLOBAL__N_115JobserverConfigEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.md = getelementptr inbounds nuw i8, ptr %16, i64 44
  %i.me = load i32, ptr %i.md, align 4, !tbaa !107, !noalias !102
  %i.mf = call i32 @dup(i32 noundef %i.me) #20, !noalias !102 ; 5 uses
  %i.mg = icmp slt i32 %i.mf, 0
  br i1 %i.mg, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.mh = call i32 @close(i32 noundef %i.mb) #20, !noalias !102 ; 0 uses
  br label %_ZSt11make_uniqueIN4llvm19JobserverClientImplEJRN12_GLOBAL__N_115JobserverConfigEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i.i.i.i

bb.bt:                                            ; preds = %bb.br
  %i.mi = call i32 (i32, i32, ...) @fcntl(i32 noundef %i.mb, i32 noundef 2, i32 noundef 1) #20, !noalias !102
  %i.mj = icmp eq i32 %i.mi, -1
  br i1 %i.mj, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.mk = call i32 (i32, i32, ...) @fcntl(i32 noundef %i.mf, i32 noundef 2, i32 noundef 1) #20, !noalias !102
  %i.ml = icmp eq i32 %i.mk, -1
  br i1 %i.ml, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.mm = call i32 @close(i32 noundef %i.mb) #20, !noalias !102 ; 0 uses
  %i.mn = call i32 @close(i32 noundef %i.mf) #20, !noalias !102 ; 0 uses
  br label %_ZSt11make_uniqueIN4llvm19JobserverClientImplEJRN12_GLOBAL__N_115JobserverConfigEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i.i.i.i

bb.bw:                                            ; preds = %bb.bu
  %i.mo = call i32 (i32, i32, ...) @fcntl(i32 noundef %i.mb, i32 noundef 3, i32 noundef 0) #20, !noalias !102 ; 2 uses
  %i.mp = icmp eq i32 %i.mo, -1
  br i1 %i.mp, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.mq = or i32 %i.mo, 2048
  %i.mr = call i32 (i32, i32, ...) @fcntl(i32 noundef %i.mb, i32 noundef 4, i32 noundef %i.mq) #20, !noalias !102
  %i.ms = icmp eq i32 %i.mr, -1
  br i1 %i.ms, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.mt = call i32 @close(i32 noundef %i.mb) #20, !noalias !102 ; 0 uses
  %i.mu = call i32 @close(i32 noundef %i.mf) #20, !noalias !102 ; 0 uses
  br label %_ZSt11make_uniqueIN4llvm19JobserverClientImplEJRN12_GLOBAL__N_115JobserverConfigEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i.i.i.i

bb.bz:                                            ; preds = %bb.bx
  store i32 %i.mb, ptr %i.lv, align 8, !tbaa !10, !noalias !102
  br label %bb.cd

bb.ca:                                            ; preds = %bb.bp
  %i.mv = load ptr, ptr %i.jt, align 8, !tbaa !22, !noalias !102
  %i.mw = call i32 (ptr, i32, ...) @open(ptr noundef %i.mv, i32 noundef 526336) #20, !noalias !102 ; 2 uses
  store i32 %i.mw, ptr %i.lv, align 8, !tbaa !10, !noalias !102
  %i.mx = icmp slt i32 %i.mw, 0
  br i1 %i.mx, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  store i32 -1, ptr %i.lv, align 8, !tbaa !10, !noalias !102
  br label %_ZSt11make_uniqueIN4llvm19JobserverClientImplEJRN12_GLOBAL__N_115JobserverConfigEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i.i.i.i

bb.cc:                                            ; preds = %bb.ca
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.lx, ptr noundef nonnull align 8 dereferenceable(32) %i.jt) #20, !noalias !102
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.bz
  %storemerge.i.i.i.i.i.i.i = phi i32 [ -1, %bb.cc ], [ %i.mf, %bb.bz ]
  store i32 %storemerge.i.i.i.i.i.i.i, ptr %i.lw, align 4, !tbaa !21, !noalias !102
  store i8 1, ptr %i.ls, align 8, !tbaa !24, !noalias !102
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20, !noalias !102
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.my, ptr %0, align 8, !tbaa !108, !noalias !102
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i64 0, ptr %i.mz, align 8, !tbaa !110, !noalias !102
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 8, ptr %i.na, align 8, !tbaa !111, !noalias !102
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20, !noalias !102
  %i.nb = load ptr, ptr %i.lr, align 8, !tbaa !8, !noalias !102
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  %i.nd = load ptr, ptr %i.nc, align 8, !noalias !102
  call void %i.nd(ptr dead_on_unwind nonnull writable sret(%"class.llvm::JobSlot") align 2 %1, ptr noundef nonnull align 8 dereferenceable(56) %i.lr) #20, !noalias !102, !inline_history !112
  %i.ne = load i16, ptr %1, align 2, !tbaa !27, !noalias !102
  %i.nf = icmp sgt i16 %i.ne, -1
  br i1 %i.nf, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.cd
  %i.ng = ptrtoint ptr %1 to i64
  br label %bb.ce

bb.ce:                                            ; preds = %bb.ch, %.lr.ph.i.i.i.i.i.i.i
  %i.nh = load i64, ptr %i.mz, align 8, !tbaa !110, !noalias !102 ; 2 uses
  %i.ni = add i64 %i.nh, 1                        ; 3 uses
  %i.nj = load i64, ptr %i.na, align 8, !tbaa !111, !noalias !102
  %.not.i.i.i.i.i25.i.i.i.i.i = icmp ugt i64 %i.ni, %i.nj
  %.pre3.i.i.i.i.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !108, !noalias !102 ; 4 uses
  br i1 %.not.i.i.i.i.i25.i.i.i.i.i, label %bb.cf, label %bb.ch, !prof !113

bb.cf:                                            ; preds = %bb.ce
  %i.nk = getelementptr inbounds nuw [2 x i8], ptr %.pre3.i.i.i.i.i.i.i.i, i64 %i.nh
  %i.nl = icmp uge ptr %1, %.pre3.i.i.i.i.i.i.i.i
  %i.nm = icmp ult ptr %1, %i.nk
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.nl, %i.nm
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cg, label %.critedge.i.i.i.i.i.i.i.i.i.i, !prof !113

bb.cg:                                            ; preds = %bb.cf
  %i.nn = ptrtoint ptr %.pre3.i.i.i.i.i.i.i.i to i64
  %i.no = sub i64 %i.ng, %i.nn
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7JobSlotELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ni), !noalias !102
  %i.np = load ptr, ptr %0, align 8, !tbaa !108, !noalias !102 ; 2 uses
  %i.nq = getelementptr inbounds i8, ptr %i.np, i64 %i.no
  br label %bb.ch

.critedge.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.cf
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7JobSlotELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ni), !noalias !102
  %.pre.i.i.i26.i.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !108, !noalias !102
  br label %bb.ch

bb.ch:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i.i.i, %bb.cg, %bb.ce
  %i.nr = phi ptr [ %.pre3.i.i.i.i.i.i.i.i, %bb.ce ], [ %i.np, %bb.cg ], [ %.pre.i.i.i26.i.i.i.i.i, %.critedge.i.i.i.i.i.i.i.i.i.i ]
  %.016.i.i.i.i.i.i.i.i.i.i = phi ptr [ %1, %bb.ce ], [ %i.nq, %bb.cg ], [ %1, %.critedge.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ns = load i64, ptr %i.mz, align 8, !tbaa !110, !noalias !102 ; 2 uses
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %i.nr, i64 %i.ns
  %i.nu = load i16, ptr %.016.i.i.i.i.i.i.i.i.i.i, align 2, !tbaa !27, !noalias !102
  store i16 %i.nu, ptr %i.nt, align 2, !tbaa !27, !noalias !102
  store i16 -1, ptr %.016.i.i.i.i.i.i.i.i.i.i, align 2, !tbaa !27, !noalias !102
  %i.nv = add i64 %i.ns, 1
  store i64 %i.nv, ptr %i.mz, align 8, !tbaa !110, !noalias !102
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20, !noalias !102
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20, !noalias !102
  %i.nw = load ptr, ptr %i.lr, align 8, !tbaa !8, !noalias !102
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  %i.ny = load ptr, ptr %i.nx, align 8, !noalias !102
  call void %i.ny(ptr dead_on_unwind nonnull writable sret(%"class.llvm::JobSlot") align 2 %1, ptr noundef nonnull align 8 dereferenceable(56) %i.lr) #20, !noalias !102, !inline_history !112
  %i.nz = load i16, ptr %1, align 2, !tbaa !27, !noalias !102
  %i.oa = icmp sgt i16 %i.nz, -1
  br i1 %i.oa, label %bb.ce, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.ch, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20, !noalias !102
  %i.ob = load i64, ptr %i.mz, align 8, !tbaa !110, !noalias !102 ; 3 uses
  %i.oc = trunc i64 %i.ob to i32
  store i32 %i.oc, ptr %i.lu, align 4, !tbaa !42, !noalias !102
  %i.od = load ptr, ptr %0, align 8, !tbaa !108, !noalias !102 ; 3 uses
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ob, 1
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 %.idx.i.i.i.i.i.i.i
  %.not37.i.i.i.i.i.i.i = icmp eq i64 %i.ob, 0
  br i1 %.not37.i.i.i.i.i.i.i, label %._crit_edge41.i.i.i.i.i.i.i, label %.lr.ph40.i.i.i.i.i.i.i

._crit_edge41.loopexit.i.i.i.i.i.i.i:             ; preds = %.lr.ph40.i.i.i.i.i.i.i
  %.pre.i.i24.i.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !108, !noalias !102
  br label %._crit_edge41.i.i.i.i.i.i.i

._crit_edge41.i.i.i.i.i.i.i:                      ; preds = %._crit_edge41.loopexit.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i
  %i.of = phi ptr [ %.pre.i.i24.i.i.i.i.i, %._crit_edge41.loopexit.i.i.i.i.i.i.i ], [ %i.od, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.og = icmp eq ptr %i.of, %i.my
  br i1 %i.og, label %_ZN4llvm11SmallVectorINS_7JobSlotELj8EED2Ev.exit.i.i.i.i.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %._crit_edge41.i.i.i.i.i.i.i
  call void @free(ptr noundef %i.of) #20, !noalias !102
  br label %_ZN4llvm11SmallVectorINS_7JobSlotELj8EED2Ev.exit.i.i.i.i.i.i.i

_ZN4llvm11SmallVectorINS_7JobSlotELj8EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.ci, %._crit_edge41.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20, !noalias !102
  br label %_ZSt11make_uniqueIN4llvm19JobserverClientImplEJRN12_GLOBAL__N_115JobserverConfigEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i.i.i.i

.lr.ph40.i.i.i.i.i.i.i:                           ; preds = %._crit_edge.i.i.i.i.i.i.i, %.lr.ph40.i.i.i.i.i.i.i
  %.02938.i.i.i.i.i.i.i = phi ptr [ %i.ol, %.lr.ph40.i.i.i.i.i.i.i ], [ %i.od, %._crit_edge.i.i.i.i.i.i.i ] ; 3 uses
  %i.oh = load i16, ptr %.02938.i.i.i.i.i.i.i, align 2, !tbaa !27, !noalias !102
  store i16 %i.oh, ptr %2, align 2, !tbaa !27, !noalias !102
  store i16 -1, ptr %.02938.i.i.i.i.i.i.i, align 2, !tbaa !27, !noalias !102
  %i.oi = load ptr, ptr %i.lr, align 8, !tbaa !8, !noalias !102
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 24
  %i.ok = load ptr, ptr %i.oj, align 8, !noalias !102
  call void %i.ok(ptr noundef nonnull align 8 dereferenceable(56) %i.lr, ptr nofree noundef nonnull align 2 dead_on_return dereferenceable(2) %2) #20, !noalias !102, !inline_history !112
  %i.ol = getelementptr inbounds nuw i8, ptr %.02938.i.i.i.i.i.i.i, i64 2 ; 2 uses
  %.not.i.i23.i.i.i.i.i = icmp eq ptr %i.ol, %i.oe
  br i1 %.not.i.i23.i.i.i.i.i, label %._crit_edge41.loopexit.i.i.i.i.i.i.i, label %.lr.ph40.i.i.i.i.i.i.i

_ZSt11make_uniqueIN4llvm19JobserverClientImplEJRN12_GLOBAL__N_115JobserverConfigEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i.i.i.i: ; preds = %_ZN4llvm11SmallVectorINS_7JobSlotELj8EED2Ev.exit.i.i.i.i.i.i.i, %bb.cb, %bb.by, %bb.bv, %bb.bs, %bb.bq, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !102
  %i.om = load i8, ptr %i.ls, align 8, !tbaa !24, !range !25, !noundef !26
  %i.on = trunc nuw i8 %i.om to i1
  br i1 %i.on, label %_ZN4llvm11raw_ostreamlsEPKc.exit29.i.i.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %_ZSt11make_uniqueIN4llvm19JobserverClientImplEJRN12_GLOBAL__N_115JobserverConfigEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i.i.i.i.i
  %i.oo = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #20 ; 3 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 24
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !43
  %i.or = getelementptr inbounds nuw i8, ptr %i.oo, i64 32 ; 3 uses
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !47 ; 2 uses
  %i.ot = ptrtoint ptr %i.oq to i64
  %i.ou = ptrtoint ptr %i.os to i64
  %i.ov = sub i64 %i.ot, %i.ou
end_hunk_0
