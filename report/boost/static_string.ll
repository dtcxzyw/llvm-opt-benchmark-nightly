Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/static_string?download=true
inline.NumInlined: 13637
inline.NumDeleted: 1357
loop-unroll.NumCompletelyUnrolled: 5371
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 5381
loop-unroll.NumUnrolledNotLatch: 27
begin_hunk_0_@_ZN5boost14static_strings11testReplaceEv:bb.a
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ub, i64 1 ; 2 uses
  %i.ue = load i64, ptr %i.ud, align 1
  %i.uf = xor i64 %i.ue, 8245940763182785896
  %i.ug = getelementptr i8, ptr %i.ud, i64 8
  %i.uh = load i16, ptr %i.ug, align 1
  %i.ui = zext i16 %i.uh to i64
  %i.uj = xor i64 %i.ui, 25708
  %i.uk = or i64 %i.uf, %i.uj
  %i.ul = icmp ne i64 %i.uk, 0
  %i.um = zext i1 %i.ul to i32
  %i.un = icmp eq i32 %i.um, 0
  br label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit157

_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit157: ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit153, %bb.az
  %.0.i.i155 = phi i1 [ false, %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit153 ], [ %i.un, %bb.az ]
  %i.uo = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.3984, ptr noundef nonnull @.str.13, i32 noundef 6240, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings11testReplaceEv, i1 noundef zeroext %.0.i.i155) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %26, i8 0, i64 22, i1 false)
  %i.up = call noundef nonnull align 1 dereferenceable(22) ptr @_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE6assignIPKcEENSt9enable_ifIXsr6detail17is_input_iteratorIT_EE5valueERS4_E4typeES9_S9_(ptr noundef nonnull align 1 dereferenceable(22) %26, ptr noundef nonnull @.str.1353, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.1353, i64 10)) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %27, i8 0, i64 17, i1 false)
  %i.uq = call noundef nonnull align 1 dereferenceable(17) ptr @_ZN5boost14static_strings19basic_static_stringILm15EcSt11char_traitsIcEE6assignIPKcEENSt9enable_ifIXsr6detail17is_input_iteratorIT_EE5valueERS4_E4typeES9_S9_(ptr noundef nonnull align 1 dereferenceable(17) %27, ptr noundef nonnull @.str.1353, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.1353, i64 10)) ; 0 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %26, i64 1 ; 5 uses
  %i.us = getelementptr inbounds nuw i8, ptr %27, i64 1
  %i.ut = load i8, ptr %27, align 1, !tbaa !115   ; 6 uses
  %i.uu = zext i8 %i.ut to i64                    ; 2 uses
  %or.cond661 = icmp ugt i8 %i.ut, 19
  br i1 %or.cond661, label %.critedge.i.i, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i160

.critedge.i.i:                                    ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit157
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.7) #31
  unreachable

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i160:    ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit157
  %i.uv = load i8, ptr %26, align 1, !tbaa !82
  %i.uw = zext i8 %i.uv to i64
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ur, i64 %i.uw
  %i.uy = getelementptr i8, ptr %i.ur, i64 %i.uu
  %i.uz = load i8, ptr %i.ux, align 1
  store i8 %i.uz, ptr %i.uy, align 1
  %i.va = icmp eq i8 %i.ut, 0
  br i1 %i.va, label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceILm15EEERS4_PKcS8_RKNS1_IXT_EcS3_EE.exit.thread, label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceILm15EEERS4_PKcS8_RKNS1_IXT_EcS3_EE.exit

_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceILm15EEERS4_PKcS8_RKNS1_IXT_EcS3_EE.exit.thread: ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i160
  store i8 %i.ut, ptr %26, align 1, !tbaa !82
  br label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit164

_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceILm15EEERS4_PKcS8_RKNS1_IXT_EcS3_EE.exit: ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i160
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ur, ptr nonnull align 1 %i.us, i64 %i.uu, i1 false)
  store i8 %i.ut, ptr %26, align 1, !tbaa !82
  %or.cond.not.i161 = icmp eq i8 %i.ut, 10
  br i1 %or.cond.not.i161, label %bb.ba, label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit164

bb.ba:                                            ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceILm15EEERS4_PKcS8_RKNS1_IXT_EcS3_EE.exit
  %i.vb = load i64, ptr %i.ur, align 1
  %i.vc = xor i64 %i.vb, 8245940763182785896
  %i.vd = getelementptr i8, ptr %i.ur, i64 8
  %i.ve = load i16, ptr %i.vd, align 1
  %i.vf = zext i16 %i.ve to i64
  %i.vg = xor i64 %i.vf, 25708
  %i.vh = or i64 %i.vc, %i.vg
  %i.vi = icmp ne i64 %i.vh, 0
  %i.vj = zext i1 %i.vi to i32
  %i.vk = icmp eq i32 %i.vj, 0
  br label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit164

_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit164: ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceILm15EEERS4_PKcS8_RKNS1_IXT_EcS3_EE.exit.thread, %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceILm15EEERS4_PKcS8_RKNS1_IXT_EcS3_EE.exit, %bb.ba
  %.0.i.i162 = phi i1 [ false, %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceILm15EEERS4_PKcS8_RKNS1_IXT_EcS3_EE.exit ], [ %i.vk, %bb.ba ], [ false, %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceILm15EEERS4_PKcS8_RKNS1_IXT_EcS3_EE.exit.thread ]
  %i.vl = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.3985, ptr noundef nonnull @.str.13, i32 noundef 6246, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings11testReplaceEv, i1 noundef zeroext %.0.i.i162) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %28, i8 0, i64 22, i1 false)
  %i.vm = call noundef nonnull align 1 dereferenceable(22) ptr @_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE6assignIPKcEENSt9enable_ifIXsr6detail17is_input_iteratorIT_EE5valueERS4_E4typeES9_S9_(ptr noundef nonnull align 1 dereferenceable(22) %28, ptr noundef nonnull @.str.1353, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.1353, i64 10)) ; 0 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %28, i64 1 ; 3 uses
  %i.vo = load i8, ptr %28, align 1, !tbaa !82
  %i.vp = zext i8 %i.vo to i64
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vn, i64 %i.vp ; 2 uses
  %i.vr = call noundef nonnull align 1 dereferenceable(22) ptr @_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_(ptr noundef nonnull align 1 dereferenceable(22) %28, ptr noundef nonnull %i.vn, ptr noundef nonnull %i.vq, ptr noundef nonnull %i.vn, ptr noundef nonnull %i.vq) ; 2 uses
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !82
  %or.cond.not.i165 = icmp eq i8 %i.vs, 10
  br i1 %or.cond.not.i165, label %bb.bb, label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit168

bb.bb:                                            ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit164
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vr, i64 1 ; 2 uses
  %i.vu = load i64, ptr %i.vt, align 1
  %i.vv = xor i64 %i.vu, 8245940763182785896
  %i.vw = getelementptr i8, ptr %i.vt, i64 8
  %i.vx = load i16, ptr %i.vw, align 1
  %i.vy = zext i16 %i.vx to i64
  %i.vz = xor i64 %i.vy, 25708
  %i.wa = or i64 %i.vv, %i.vz
  %i.wb = icmp ne i64 %i.wa, 0
  %i.wc = zext i1 %i.wb to i32
  %i.wd = icmp eq i32 %i.wc, 0
  br label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit168

_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit168: ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit164, %bb.bb
  %.0.i.i166 = phi i1 [ false, %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit164 ], [ %i.wd, %bb.bb ]
  %i.we = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.3986, ptr noundef nonnull @.str.13, i32 noundef 6251, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings11testReplaceEv, i1 noundef zeroext %.0.i.i166) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %29, i8 0, i64 22, i1 false)
  %i.wf = call noundef nonnull align 1 dereferenceable(22) ptr @_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE6assignIPKcEENSt9enable_ifIXsr6detail17is_input_iteratorIT_EE5valueERS4_E4typeES9_S9_(ptr noundef nonnull align 1 dereferenceable(22) %29, ptr noundef nonnull @.str.1353, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.1353, i64 10)) ; 0 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %29, i64 1 ; 3 uses
  %i.wh = load i8, ptr %29, align 1, !tbaa !82
  %i.wi = zext i8 %i.wh to i64
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wg, i64 %i.wi ; 2 uses
  %i.wk = call noundef nonnull align 1 dereferenceable(22) ptr @_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_(ptr noundef nonnull align 1 dereferenceable(22) %29, ptr noundef nonnull %i.wg, ptr noundef nonnull %i.wj, ptr noundef nonnull %i.wg, ptr noundef nonnull %i.wj) ; 2 uses
  %i.wl = load i8, ptr %i.wk, align 1, !tbaa !82
  %or.cond.not.i169 = icmp eq i8 %i.wl, 10
  br i1 %or.cond.not.i169, label %bb.bc, label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit172

bb.bc:                                            ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit168
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wk, i64 1 ; 2 uses
  %i.wn = load i64, ptr %i.wm, align 1
  %i.wo = xor i64 %i.wn, 8245940763182785896
  %i.wp = getelementptr i8, ptr %i.wm, i64 8
  %i.wq = load i16, ptr %i.wp, align 1
  %i.wr = zext i16 %i.wq to i64
  %i.ws = xor i64 %i.wr, 25708
  %i.wt = or i64 %i.wo, %i.ws
  %i.wu = icmp ne i64 %i.wt, 0
  %i.wv = zext i1 %i.wu to i32
  %i.ww = icmp eq i32 %i.wv, 0
  br label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit172

_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit172: ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit168, %bb.bc
  %.0.i.i170 = phi i1 [ false, %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit168 ], [ %i.ww, %bb.bc ]
  %i.wx = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.3987, ptr noundef nonnull @.str.13, i32 noundef 6256, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings11testReplaceEv, i1 noundef zeroext %.0.i.i170) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %30, i8 0, i64 22, i1 false)
  %i.wy = call noundef nonnull align 1 dereferenceable(22) ptr @_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE6assignIPKcEENSt9enable_ifIXsr6detail17is_input_iteratorIT_EE5valueERS4_E4typeES9_S9_(ptr noundef nonnull align 1 dereferenceable(22) %30, ptr noundef nonnull @.str.1353, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.1353, i64 10)) ; 0 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %30, i64 1 ; 5 uses
  %i.xa = load i8, ptr %30, align 1, !tbaa !82
  %i.xb = zext i8 %i.xa to i64
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wz, i64 %i.xb
  %i.xd = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.wz) #32
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wz, i64 %i.xd
  %i.xf = call noundef nonnull align 1 dereferenceable(22) ptr @_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_(ptr noundef nonnull align 1 dereferenceable(22) %30, ptr noundef nonnull %i.wz, ptr noundef nonnull %i.xc, ptr noundef nonnull %i.wz, ptr noundef nonnull %i.xe) ; 2 uses
  %i.xg = load i8, ptr %i.xf, align 1, !tbaa !82
  %or.cond.not.i173 = icmp eq i8 %i.xg, 10
  br i1 %or.cond.not.i173, label %bb.bd, label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit176

bb.bd:                                            ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit172
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xf, i64 1 ; 2 uses
  %i.xi = load i64, ptr %i.xh, align 1
  %i.xj = xor i64 %i.xi, 8245940763182785896
  %i.xk = getelementptr i8, ptr %i.xh, i64 8
  %i.xl = load i16, ptr %i.xk, align 1
  %i.xm = zext i16 %i.xl to i64
  %i.xn = xor i64 %i.xm, 25708
  %i.xo = or i64 %i.xj, %i.xn
  %i.xp = icmp ne i64 %i.xo, 0
  %i.xq = zext i1 %i.xp to i32
  %i.xr = icmp eq i32 %i.xq, 0
  br label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit176

_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit176: ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit172, %bb.bd
  %.0.i.i174 = phi i1 [ false, %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit172 ], [ %i.xr, %bb.bd ]
  %i.xs = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.3988, ptr noundef nonnull @.str.13, i32 noundef 6261, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings11testReplaceEv, i1 noundef zeroext %.0.i.i174) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %31, i8 0, i64 22, i1 false)
  %i.xt = call noundef nonnull align 1 dereferenceable(22) ptr @_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE6assignIPKcEENSt9enable_ifIXsr6detail17is_input_iteratorIT_EE5valueERS4_E4typeES9_S9_(ptr noundef nonnull align 1 dereferenceable(22) %31, ptr noundef nonnull @.str.1353, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.1353, i64 10)) ; 0 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %31, i64 1 ; 2 uses
  %i.xv = load i8, ptr %31, align 1, !tbaa !82    ; 4 uses
  %i.xw = zext i8 %i.xv to i64                    ; 2 uses
  %or.cond662 = icmp ugt i8 %i.xv, 19
  br i1 %or.cond662, label %bb.be, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i

bb.be:                                            ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit176
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.7) #31
  unreachable

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i:         ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit176
  %i.xx = icmp eq i8 %i.xv, 0
  br i1 %i.xx, label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit180, label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEPKcS6_mc.exit

_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEPKcS6_mc.exit: ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.xu, i8 97, i64 %i.xw, i1 false)
  %or.cond.not.i177 = icmp eq i8 %i.xv, 10
  br i1 %or.cond.not.i177, label %bb.bf, label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit180

bb.bf:                                            ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEPKcS6_mc.exit
  %bcmp.i179 = call i32 @bcmp(ptr nonnull %i.xu, ptr nonnull @.str.3983, i64 %i.xw)
  %i.xy = icmp eq i32 %bcmp.i179, 0
  br label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit180

_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit180: ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i, %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEPKcS6_mc.exit, %bb.bf
  %.0.i.i178 = phi i1 [ false, %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEPKcS6_mc.exit ], [ %i.xy, %bb.bf ], [ false, %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i ]
  %i.xz = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.3989, ptr noundef nonnull @.str.13, i32 noundef 6266, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings11testReplaceEv, i1 noundef zeroext %.0.i.i178) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %32, i8 0, i64 22, i1 false)
  %i.ya = call noundef nonnull align 1 dereferenceable(22) ptr @_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE6assignIPKcEENSt9enable_ifIXsr6detail17is_input_iteratorIT_EE5valueERS4_E4typeES9_S9_(ptr noundef nonnull align 1 dereferenceable(22) %32, ptr noundef nonnull @.str.1353, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.1353, i64 10)) ; 0 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %32, i64 1 ; 3 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %32, i64 6 ; 4 uses
  %i.yd = load i8, ptr %32, align 1, !tbaa !82    ; 5 uses
  %i.ye = zext i8 %i.yd to i64                    ; 6 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.yb, i64 %i.ye ; 3 uses
  %i.yg = icmp ugt i8 %i.yd, 20
  br i1 %i.yg, label %.critedge.i, label %bb.bg

bb.bg:                                            ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit180
  %i.yh = call i64 @llvm.usub.sat.i64(i64 %i.ye, i64 5)
  %i.yi = sub nuw nsw i64 20, %i.ye
  %.not.i181 = icmp samesign ult i64 %i.yh, %i.yi
  br i1 %.not.i181, label %bb.bh, label %.critedge.i

.critedge.i:                                      ; preds = %bb.bg, %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit180
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.7) #31
  unreachable

bb.bh:                                            ; preds = %bb.bg
  switch i8 %i.yd, label %bb.bi [
    i8 5, label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit188
    i8 0, label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeEPKcSD_S8_S8_.exit.thread749
  ]

_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeEPKcSD_S8_S8_.exit.thread749: ; preds = %bb.bh
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18446744073709551612) %i.yf, ptr noundef nonnull align 1 dereferenceable(18446744073709551612) %i.yc, i64 -4, i1 false)
  %i.yj = add nuw nsw i8 0, -5
  store i8 %i.yj, ptr %32, align 1, !tbaa !82
  br label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit188

bb.bi:                                            ; preds = %bb.bh
  %.not71.i = icmp samesign ult i8 %i.yd, 5
  %i.yk = add nsw i64 %i.ye, -4                   ; 3 uses
  br i1 %.not71.i, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit79.i, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i

_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i:       ; preds = %bb.bi
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.yf, ptr nonnull align 1 %i.yc, i64 %i.yk, i1 false)
  %i.yl = add nsw i64 %i.ye, -5
  %i.ym = getelementptr i8, ptr %32, i64 %i.ye
  %i.yn = getelementptr i8, ptr %i.ym, i64 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.yc, ptr align 1 %i.yn, i64 %i.yl, i1 false)
  br label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeEPKcSD_S8_S8_.exit

_ZNSt11char_traitsIcE4moveEPcPKcm.exit79.i:       ; preds = %bb.bi
  %i.yo = icmp eq i64 %i.yk, 0
  br i1 %i.yo, label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeEPKcSD_S8_S8_.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit79.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.yf, ptr nonnull align 1 %i.yc, i64 %i.yk, i1 false)
  br label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeEPKcSD_S8_S8_.exit

_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeEPKcSD_S8_S8_.exit: ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i, %_ZNSt11char_traitsIcE4moveEPcPKcm.exit79.i, %bb.bj
  %reass.add = shl nuw nsw i8 %i.yd, 1
  %i.yp = add nsw i8 %reass.add, -5               ; 2 uses
  store i8 %i.yp, ptr %32, align 1, !tbaa !82
  %i.yq = icmp eq i8 %i.yp, 15
  br i1 %i.yq, label %bb.bk, label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit188

bb.bk:                                            ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeEPKcSD_S8_S8_.exit
  %i.yr = load i64, ptr %i.yb, align 1
  %i.ys = xor i64 %i.yr, 8245940763182785896
  %i.yt = getelementptr i8, ptr %i.yb, i64 7
  %i.yu = load i64, ptr %i.yt, align 1
  %i.yv = xor i64 %i.yu, 7236284524347550834
  %i.yw = or i64 %i.ys, %i.yv
  %i.yx = icmp ne i64 %i.yw, 0
  %i.yy = zext i1 %i.yx to i32
  %i.yz = icmp eq i32 %i.yy, 0
  br label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit188

_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit188: ; preds = %bb.bh, %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeEPKcSD_S8_S8_.exit.thread749, %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeEPKcSD_S8_S8_.exit, %bb.bk
  %.0.i.i186 = phi i1 [ false, %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeEPKcSD_S8_S8_.exit ], [ %i.yz, %bb.bk ], [ false, %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeEPKcSD_S8_S8_.exit.thread749 ], [ false, %bb.bh ]
  %i.za = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.3990, ptr noundef nonnull @.str.13, i32 noundef 6271, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings11testReplaceEv, i1 noundef zeroext %.0.i.i186) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(22) %33, i8 0, i64 22, i1 false)
  %i.zb = call noundef nonnull align 1 dereferenceable(22) ptr @_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE6assignIPKcEENSt9enable_ifIXsr6detail17is_input_iteratorIT_EE5valueERS4_E4typeES9_S9_(ptr noundef nonnull align 1 dereferenceable(22) %33, ptr noundef nonnull @.str.1353, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.1353, i64 10)) ; 0 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %33, i64 1 ; 3 uses
  %i.zd = load i8, ptr %33, align 8, !tbaa !82
  %i.ze = zext i8 %i.zd to i64
  %i.zf = getelementptr inbounds nuw i8, ptr %i.zc, i64 %i.ze
  %i.zg = getelementptr inbounds nuw i8, ptr %33, i64 11
  %i.zh = load i8, ptr %i.zf, align 1
  store i8 %i.zh, ptr %i.zg, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i8 114, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %33, i64 9
  store i8 108, ptr %.sroa.11.0..sroa_idx, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %33, i64 10
  store i8 100, ptr %.sroa.12.0..sroa_idx, align 2
  store <8 x i8> <i8 10, i8 104, i8 101, i8 108, i8 108, i8 111, i8 119, i8 111>, ptr %33, align 8
  %i.zi = load i64, ptr %i.zc, align 1
  %i.zj = xor i64 %i.zi, 8245940763182785896
  %i.zk = getelementptr i8, ptr %i.zc, i64 8
  %i.zl = load i16, ptr %i.zk, align 1
  %i.zm = zext i16 %i.zl to i64
  %i.zn = xor i64 %i.zm, 25708
  %i.zo = or i64 %i.zj, %i.zn
  %i.zp = icmp ne i64 %i.zo, 0
  %i.zq = zext i1 %i.zp to i32
  %i.zr = icmp eq i32 %i.zq, 0
  %i.zs = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.3992, ptr noundef nonnull @.str.13, i32 noundef 6276, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings11testReplaceEv, i1 noundef zeroext %i.zr) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #32
  %i.zt = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 6 uses
  store ptr %i.zt, ptr %35, align 8, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.zt, ptr noundef nonnull align 1 dereferenceable(6) @.str.3993, i64 6, i1 false)
  %i.zu = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 6, ptr %i.zu, align 8, !tbaa !89
  %i.zv = getelementptr inbounds nuw i8, ptr %35, i64 22
  store i8 0, ptr %i.zv, align 2, !tbaa !24
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %34, ptr noundef nonnull align 8 dereferenceable(32) %35, i32 noundef 24)
          to label %bb.bl unwind label %bb.br

bb.bl:                                            ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit188
  %i.zw = load ptr, ptr %35, align 8, !tbaa !87   ; 2 uses
  %i.zx = icmp eq ptr %i.zw, %i.zt
  br i1 %i.zx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bl
  %i.zy = load i64, ptr %i.zt, align 8, !tbaa !24
  %i.zz = add i64 %i.zy, 1
  call void @_ZdlPvm(ptr noundef %i.zw, i64 noundef %i.zz) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %36, i8 0, i64 32, i1 false)
  %i.aaa = invoke noundef nonnull align 1 dereferenceable(32) ptr @_ZN5boost14static_strings19basic_static_stringILm30EcSt11char_traitsIcEE6assignIPKcEENSt9enable_ifIXsr6detail17is_input_iteratorIT_EE5valueERS4_E4typeES9_S9_(ptr noundef nonnull align 1 dereferenceable(32) %36, ptr noundef nonnull @.str.3994, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3994, i64 16))
          to label %_ZN5boost14static_strings19basic_static_stringILm30EcSt11char_traitsIcEEC2EPKc.exit unwind label %bb.bs ; 0 uses

_ZN5boost14static_strings19basic_static_stringILm30EcSt11char_traitsIcEEC2EPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %34, ptr %37, align 8, !tbaa !118
  %i.aab = getelementptr inbounds nuw i8, ptr %37, i64 9 ; 2 uses
  store i8 1, ptr %i.aab, align 1, !tbaa !119
  %i.aac = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.aad = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 1 dereferenceable(1) %i.aac)
          to label %.noexc198 unwind label %bb.bs ; 2 uses

.noexc198:                                        ; preds = %_ZN5boost14static_strings19basic_static_stringILm30EcSt11char_traitsIcEEC2EPKc.exit
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !53
  %i.aaf = getelementptr i8, ptr %i.aae, i64 -24
  %i.aag = load i64, ptr %i.aaf, align 8
  %i.aah = getelementptr inbounds i8, ptr %i.aad, i64 %i.aag
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 32
  %i.aaj = load i32, ptr %i.aai, align 8, !tbaa !63
  %i.aak = and i32 %i.aaj, 5
  %.not1.i.i = icmp eq i32 %i.aak, 0
  br i1 %.not1.i.i, label %_ZNSt16istream_iteratorIccSt11char_traitsIcElEC2ERSi.exit, label %bb.bm

bb.bm:                                            ; preds = %.noexc198
  store ptr null, ptr %37, align 8, !tbaa !118
  store i8 0, ptr %i.aab, align 1, !tbaa !119
  br label %_ZNSt16istream_iteratorIccSt11char_traitsIcElEC2ERSi.exit

_ZNSt16istream_iteratorIccSt11char_traitsIcElEC2ERSi.exit: ; preds = %bb.bm, %.noexc198
  %i.aal = getelementptr inbounds nuw i8, ptr %36, i64 10
  %i.aam = getelementptr inbounds nuw i8, ptr %36, i64 4
  store ptr null, ptr %38, align 8, !tbaa !118
  %i.aan = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i8 0, ptr %i.aan, align 8, !tbaa !120
  %i.aao = getelementptr inbounds nuw i8, ptr %38, i64 9
  store i8 0, ptr %i.aao, align 1, !tbaa !119
  %i.aap = invoke noundef nonnull align 1 dereferenceable(32) ptr @_ZN5boost14static_strings19basic_static_stringILm30EcSt11char_traitsIcEE7replaceISt16istream_iteratorIccS3_lEEENSt9enable_ifIXaasr6detail17is_input_iteratorIT_EE5valuentsr6detail19is_forward_iteratorIS9_EE5valueERS4_E4typeEPKcSE_S9_S9_(ptr noundef nonnull align 1 dereferenceable(32) %36, ptr noundef nonnull %i.aam, ptr noundef nonnull %i.aal, ptr noundef nonnull align 8 dead_on_return %37, ptr noundef nonnull align 8 dead_on_return %38)
          to label %bb.bn unwind label %bb.bs     ; 2 uses

bb.bn:                                            ; preds = %_ZNSt16istream_iteratorIccSt11char_traitsIcElEC2ERSi.exit
  %i.aaq = load i8, ptr %i.aap, align 1, !tbaa !122
  %or.cond.not.i199 = icmp eq i8 %i.aaq, 16
  br i1 %or.cond.not.i199, label %bb.bo, label %_ZN5boost14static_stringseqILm30EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit

bb.bo:                                            ; preds = %bb.bn
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aap, i64 1
  %i.aas = load i128, ptr %i.aar, align 1
  %i.aat = icmp ne i128 %i.aas, 149452120213688298009235146691947225697
  %i.aau = zext i1 %i.aat to i32
  %i.aav = icmp eq i32 %i.aau, 0
  br label %_ZN5boost14static_stringseqILm30EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit

_ZN5boost14static_stringseqILm30EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit: ; preds = %bb.bn, %bb.bo
  %.0.i.i200 = phi i1 [ false, %bb.bn ], [ %i.aav, %bb.bo ]
  %i.aaw = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.3995, ptr noundef nonnull @.str.13, i32 noundef 6285, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings11testReplaceEv, i1 noundef zeroext %.0.i.i200)
          to label %bb.bp unwind label %bb.bs     ; 0 uses

bb.bp:                                            ; preds = %_ZN5boost14static_stringseqILm30EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #32
  %i.aax = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.aax, ptr %34, align 8, !tbaa !53
  %i.aay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.aaz = getelementptr i8, ptr %i.aax, i64 -24
  %i.aba = load i64, ptr %i.aaz, align 8
  %i.abb = getelementptr inbounds i8, ptr %34, i64 %i.aba
  store ptr %i.aay, ptr %i.abb, align 8, !tbaa !53
  %i.abc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.abd = getelementptr inbounds nuw i8, ptr %34, i64 16
  store ptr %i.abc, ptr %i.abd, align 8, !tbaa !53
  %i.abe = getelementptr inbounds nuw i8, ptr %34, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.abe, align 8, !tbaa !53
  %i.abf = getelementptr inbounds nuw i8, ptr %34, i64 96
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !87 ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %34, i64 112 ; 2 uses
  %i.abi = icmp eq ptr %i.abg, %i.abh
  br i1 %i.abi, label %_ZN5boost14static_stringseqILm400EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit298, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.bp
  %i.abj = load i64, ptr %i.abh, align 8, !tbaa !24
  %i.abk = add i64 %i.abj, 1
  call void @_ZdlPvm(ptr noundef %i.abg, i64 noundef %i.abk) #34
  br label %_ZN5boost14static_stringseqILm400EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit298

_ZN5boost14static_stringseqILm400EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit298: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.abe, align 8, !tbaa !53
  %i.abl = getelementptr inbounds nuw i8, ptr %34, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.abl) #32
  %i.abm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.abm, ptr %34, align 8, !tbaa !53
  %i.abn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.abo = getelementptr i8, ptr %i.abm, i64 -24
  %i.abp = load i64, ptr %i.abo, align 8
  %i.abq = getelementptr inbounds i8, ptr %34, i64 %i.abp
  store ptr %i.abn, ptr %i.abq, align 8, !tbaa !53
  %i.abr = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 0, ptr %i.abr, align 8, !tbaa !124
  %i.abs = getelementptr inbounds nuw i8, ptr %34, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.abs) #32
end_hunk_0
