Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/static_string?download=true
inline.NumInlined: 13637
inline.NumDeleted: 1357
loop-unroll.NumCompletelyUnrolled: 5361
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 5371
loop-unroll.NumUnrolledNotLatch: 27
begin_hunk_0_@_ZN5boost14static_strings11testReplaceEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %6, i8 0, i64 22, i1 false)
  %i.fo = call noundef nonnull align 1 dereferenceable(22) ptr @_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE6assignIPKcEENSt9enable_ifIXsr6detail17is_input_iteratorIT_EE5valueERS4_E4typeES9_S9_(ptr noundef nonnull align 1 dereferenceable(22) %6, ptr noundef nonnull @.str.3951, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3951, i64 10)) ; 0 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %6, i64 1 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.fr = load i8, ptr %6, align 1, !tbaa !84     ; 3 uses
  %i.fs = icmp ult i8 %i.fr, 5
  br i1 %i.fs, label %bb.q, label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit70

bb.q:                                             ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit68
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.3) #31
  unreachable

_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit70: ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit68
  %i.ft = zext i8 %i.fr to i64                    ; 2 uses
  %i.fu = add nsw i64 %i.ft, -5                   ; 2 uses
  %.sroa.speculated.i.i69 = call noundef i64 @llvm.umin.i64(i64 %i.fu, i64 2) ; 6 uses
  %i.fv = sub nuw nsw i64 %i.ft, %.sroa.speculated.i.i69
  %.not.i451 = icmp samesign ult i64 %i.fv, 15
  br i1 %.not.i451, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i466, label %.critedge.i452

.critedge.i452:                                   ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit70
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.7) #31
  unreachable

_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i466:    ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit70
  %i.fw = getelementptr inbounds nuw i8, ptr %6, i64 6 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.sroa.speculated.i.i69
  %.sroa.speculated.i465 = add nuw nsw i64 %.sroa.speculated.i.i69, 2 ; 3 uses
  %i.fy = sub nuw nsw i64 %i.fu, %.sroa.speculated.i.i69
  %i.fz = add nuw nsw i64 %i.fy, 1
  %i.ga = getelementptr inbounds nuw i8, ptr %6, i64 11
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ga, ptr noundef nonnull align 1 dereferenceable(1) %i.fx, i64 %i.fz, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fw, ptr noundef nonnull align 1 dereferenceable(1) %i.fq, i64 %.sroa.speculated.i465, i1 false)
  %i.gb = xor i64 %.sroa.speculated.i.i69, 3      ; 2 uses
  %i.gc = getelementptr i8, ptr %i.fp, i64 %i.gb
  %i.gd = getelementptr i8, ptr %i.gc, i64 5
  %i.ge = getelementptr i8, ptr %i.gd, i64 %.sroa.speculated.i465
  %i.gf = getelementptr i8, ptr %i.fw, i64 %.sroa.speculated.i465
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.gf, ptr align 1 %i.ge, i64 %i.gb, i1 false)
  %i.gg = trunc nuw nsw i64 %.sroa.speculated.i.i69 to i8
  %reass.sub642 = sub nuw i8 %i.fr, %i.gg
  %i.gh = add nuw i8 %reass.sub642, 5             ; 2 uses
  store i8 %i.gh, ptr %6, align 1, !tbaa !84
  %or.cond.not.i71 = icmp eq i8 %i.gh, 13
  br i1 %or.cond.not.i71, label %bb.r, label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit74

bb.r:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i466
  %i.gi = load i64, ptr %i.fp, align 1
  %i.gj = xor i64 %i.gi, 3833745482089378096
  %i.gk = getelementptr i8, ptr %i.fp, i64 5
  %i.gl = load i64, ptr %i.gk, align 1
  %i.gm = xor i64 %i.gl, 4123106169129874483
  %i.gn = or i64 %i.gj, %i.gm
  %i.go = icmp ne i64 %i.gn, 0
  %i.gp = zext i1 %i.go to i32
  %i.gq = icmp eq i32 %i.gp, 0
  br label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit74

_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit74: ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i466, %bb.r
  %.0.i.i72 = phi i1 [ false, %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i466 ], [ %i.gq, %bb.r ]
  %i.gr = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.3959, ptr noundef nonnull @.str.13, i32 noundef 6165, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings11testReplaceEv, i1 noundef zeroext %.0.i.i72) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %7, i8 0, i64 22, i1 false)
  %i.gs = call noundef nonnull align 1 dereferenceable(22) ptr @_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE6assignIPKcEENSt9enable_ifIXsr6detail17is_input_iteratorIT_EE5valueERS4_E4typeES9_S9_(ptr noundef nonnull align 1 dereferenceable(22) %7, ptr noundef nonnull @.str.3951, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3951, i64 10)) ; 0 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %7, i64 1 ; 3 uses
  %.ptr643 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.gu = load i8, ptr %7, align 1, !tbaa !84     ; 4 uses
  %i.gv = icmp ult i8 %i.gu, 5
  br i1 %i.gv, label %bb.s, label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit76

bb.s:                                             ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit74
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.3) #31
  unreachable

_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit76: ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit74
  %i.gw = zext i8 %i.gu to i64                    ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %7, i64 6 ; 4 uses
  %i.gy = add nsw i64 %i.gw, -5                   ; 3 uses
  %.sroa.speculated.i.i75 = call noundef i64 @llvm.umin.i64(i64 %i.gy, i64 2) ; 7 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 %.sroa.speculated.i.i75 ; 2 uses
  %i.ha = sub nuw nsw i64 %i.gw, %.sroa.speculated.i.i75
  %.not.i471 = icmp samesign ult i64 %i.ha, 17
  br i1 %.not.i471, label %bb.t, label %.critedge.i472

.critedge.i472:                                   ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit76
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.7) #31
  unreachable

bb.t:                                             ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit76
  %i.hb = icmp ugt i8 %i.gu, 7
  br i1 %i.hb, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i486, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i476

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i476:      ; preds = %bb.t
  %i.hc = sub nuw nsw i64 %i.gy, %.sroa.speculated.i.i75
  %i.hd = add nuw nsw i64 %i.hc, 1
  %i.he = getelementptr inbounds nuw i8, ptr %7, i64 9
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.he, ptr noundef nonnull align 1 dereferenceable(1) %i.gz, i64 %i.hd, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.gx, ptr noundef nonnull align 1 dereferenceable(3) %.ptr643, i64 3, i1 false), !tbaa !26
  br label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit489

_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i486:    ; preds = %bb.t
  %i.hf = add nsw i64 %.sroa.speculated.i.i75, -2 ; 2 uses
  %.sroa.speculated.i485 = call i64 @llvm.umin.i64(i64 %i.hf, i64 3) ; 3 uses
  %i.hg = sub nuw nsw i64 %i.gy, %.sroa.speculated.i.i75
  %i.hh = add nuw nsw i64 %i.hg, 1
  %i.hi = getelementptr inbounds nuw i8, ptr %7, i64 9
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.hi, ptr noundef nonnull align 1 dereferenceable(1) %i.gz, i64 %i.hh, i1 false)
  %cond = icmp eq i64 %i.hf, 0
  br i1 %cond, label %bb.u, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit77.i487

_ZNSt11char_traitsIcE4moveEPcPKcm.exit77.i487:    ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i486
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gx, ptr nonnull align 1 %.ptr643, i64 %.sroa.speculated.i485, i1 false)
  br label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit489

bb.u:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i486
  %i.hj = xor i64 %.sroa.speculated.i.i75, 7
  %i.hk = getelementptr i8, ptr %i.gt, i64 %i.hj
  %i.hl = getelementptr i8, ptr %i.hk, i64 3
  %i.hm = getelementptr i8, ptr %i.hl, i64 %.sroa.speculated.i485
  %i.hn = getelementptr i8, ptr %i.gx, i64 %.sroa.speculated.i485
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.hn, ptr noundef nonnull align 1 dereferenceable(3) %i.hm, i64 3, i1 false)
  br label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit489

_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit489: ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit77.i487, %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i476, %bb.u
  %i.ho = trunc nuw nsw i64 %.sroa.speculated.i.i75 to i8
  %i.hp = xor i8 %i.ho, 3
  %i.hq = add i8 %i.hp, %i.gu                     ; 2 uses
  store i8 %i.hq, ptr %7, align 1, !tbaa !84
  %or.cond.not.i77 = icmp eq i8 %i.hq, 11
  br i1 %or.cond.not.i77, label %bb.v, label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit80

bb.v:                                             ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit489
  %i.hr = load i64, ptr %i.gt, align 1
  %i.hs = xor i64 %i.hr, 4123106156194443568
  %i.ht = getelementptr i8, ptr %i.gt, i64 3
  %i.hu = load i64, ptr %i.ht, align 1
  %i.hv = xor i64 %i.hu, 4123106177753494579
  %i.hw = or i64 %i.hs, %i.hv
  %i.hx = icmp ne i64 %i.hw, 0
  %i.hy = zext i1 %i.hx to i32
  %i.hz = icmp eq i32 %i.hy, 0
  br label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit80

_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit80: ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit489, %bb.v
  %.0.i.i78 = phi i1 [ false, %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit489 ], [ %i.hz, %bb.v ]
  %i.ia = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.3961, ptr noundef nonnull @.str.13, i32 noundef 6169, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings11testReplaceEv, i1 noundef zeroext %.0.i.i78) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %8, i8 0, i64 22, i1 false)
  %i.ib = call noundef nonnull align 1 dereferenceable(22) ptr @_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE6assignIPKcEENSt9enable_ifIXsr6detail17is_input_iteratorIT_EE5valueERS4_E4typeES9_S9_(ptr noundef nonnull align 1 dereferenceable(22) %8, ptr noundef nonnull @.str.3951, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3951, i64 10)) ; 0 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %8, i64 1 ; 3 uses
  %.ptr644 = getelementptr inbounds nuw i8, ptr %8, i64 5 ; 3 uses
  %i.id = load i8, ptr %8, align 1, !tbaa !84     ; 5 uses
  %i.ie = icmp ult i8 %i.id, 3
  br i1 %i.ie, label %bb.w, label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit82

bb.w:                                             ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit80
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.3) #31
  unreachable

_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit82: ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit80
  %i.if = zext i8 %i.id to i64                    ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 5 uses
  %i.ih = add nsw i64 %i.if, -3                   ; 3 uses
  %.sroa.speculated.i.i81 = call noundef i64 @llvm.umin.i64(i64 %i.ih, i64 5) ; 8 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.sroa.speculated.i.i81 ; 3 uses
  %i.ij = sub nuw nsw i64 %i.if, %.sroa.speculated.i.i81
  %.not.i491 = icmp samesign ult i64 %i.ij, 18
  br i1 %.not.i491, label %bb.x, label %.critedge.i492

.critedge.i492:                                   ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit82
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.7) #31
  unreachable

bb.x:                                             ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit82
  %i.ik = icmp ugt i8 %i.id, 4
  br i1 %i.ik, label %bb.y, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i496

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i496:      ; preds = %bb.x
  %i.il = sub nuw nsw i64 %i.ih, %.sroa.speculated.i.i81
  %i.im = add nuw nsw i64 %i.il, 1
  %i.in = getelementptr inbounds nuw i8, ptr %8, i64 6
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.in, ptr noundef nonnull align 1 dereferenceable(1) %i.ii, i64 %i.im, i1 false)
  %i.io = load i16, ptr %.ptr644, align 1, !tbaa !26
  store i16 %i.io, ptr %i.ig, align 1, !tbaa !26
  br label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit509

bb.y:                                             ; preds = %bb.x
  %.not71.i503.not = icmp eq i8 %i.id, 5
  %i.ip = sub nuw nsw i64 %i.ih, %.sroa.speculated.i.i81
  %i.iq = add nuw nsw i64 %i.ip, 1                ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %8, i64 6 ; 2 uses
  br i1 %.not71.i503.not, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i506, label %bb.aa

_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i506:    ; preds = %bb.y
  %i.is = add nsw i64 %.sroa.speculated.i.i81, -1 ; 4 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ir, ptr noundef nonnull align 1 dereferenceable(1) %i.ii, i64 %i.iq, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ig, ptr nonnull align 1 %.ptr644, i64 %i.is, i1 false)
  %45 = icmp ugt i64 %i.is, 1
  br i1 %45, label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit509, label %bb.z

bb.z:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i506
  %i.it = sub nuw nsw i64 3, %.sroa.speculated.i.i81
  %i.iu = sub nuw nsw i64 4, %.sroa.speculated.i.i81
  %i.iv = getelementptr i8, ptr %i.ic, i64 %i.iu
  %i.iw = getelementptr i8, ptr %i.iv, i64 2
  %i.ix = getelementptr i8, ptr %i.iw, i64 %i.is
  %i.iy = getelementptr i8, ptr %i.ig, i64 %i.is
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.iy, ptr align 1 %i.ix, i64 %i.it, i1 false)
  br label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit509

bb.aa:                                            ; preds = %bb.y
  %i.iz = load i16, ptr %.ptr644, align 1
  store i16 %i.iz, ptr %i.ig, align 1
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ir, ptr noundef nonnull align 1 dereferenceable(1) %i.ii, i64 %i.iq, i1 false)
  br label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit509

_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit509: ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i496, %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i506, %bb.z, %bb.aa
  %i.ja = trunc nuw nsw i64 %.sroa.speculated.i.i81 to i8
  %reass.sub645 = sub nuw i8 %i.id, %i.ja
  %i.jb = add nuw i8 %reass.sub645, 2             ; 2 uses
  store i8 %i.jb, ptr %8, align 1, !tbaa !84
  %or.cond.not.i83 = icmp eq i8 %i.jb, 7
  br i1 %or.cond.not.i83, label %bb.ab, label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit86

bb.ab:                                            ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit509
  %i.jc = load i32, ptr %i.ic, align 1
  %i.jd = xor i32 %i.jc, 875704624
  %i.je = getelementptr i8, ptr %i.ic, i64 3
  %i.jf = load i32, ptr %i.je, align 1
  %i.jg = xor i32 %i.jf, 959984948
  %i.jh = or i32 %i.jd, %i.jg
  %i.ji = icmp ne i32 %i.jh, 0
  %i.jj = zext i1 %i.ji to i32
  %i.jk = icmp eq i32 %i.jj, 0
  br label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit86

_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit86: ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit509, %bb.ab
  %.0.i.i84 = phi i1 [ false, %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit509 ], [ %i.jk, %bb.ab ]
  %i.jl = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.3963, ptr noundef nonnull @.str.13, i32 noundef 6173, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings11testReplaceEv, i1 noundef zeroext %.0.i.i84) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %9, i8 0, i64 22, i1 false)
  %i.jm = call noundef nonnull align 1 dereferenceable(22) ptr @_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE6assignIPKcEENSt9enable_ifIXsr6detail17is_input_iteratorIT_EE5valueERS4_E4typeES9_S9_(ptr noundef nonnull align 1 dereferenceable(22) %9, ptr noundef nonnull @.str.3951, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3951, i64 10)) ; 0 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %9, i64 1 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %9, i64 2 ; 2 uses
  %i.jp = load i8, ptr %9, align 1, !tbaa !84     ; 4 uses
  %i.jq = icmp ult i8 %i.jp, 3
  br i1 %i.jq, label %bb.ac, label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit88

bb.ac:                                            ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit86
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.3) #31
  unreachable

_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit88: ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit86
  %i.jr = zext i8 %i.jp to i64                    ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 3 uses
  %i.jt = add nsw i64 %i.jr, -3                   ; 4 uses
  %.sroa.speculated.i.i87 = call noundef i64 @llvm.umin.i64(i64 %i.jt, i64 5) ; 6 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 %.sroa.speculated.i.i87 ; 2 uses
  %i.jv = sub nuw nsw i64 %i.jr, %.sroa.speculated.i.i87
  %.not.i511 = icmp samesign ult i64 %i.jv, 17
  br i1 %.not.i511, label %bb.ad, label %.critedge.i512

.critedge.i512:                                   ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit88
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.7) #31
  unreachable

bb.ad:                                            ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceEmmPKcm.exit88
  %.not71.i523 = icmp ugt i8 %i.jp, 6
  br i1 %.not71.i523, label %bb.af, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i526

_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i526:    ; preds = %bb.ad
  %.not646.not = icmp eq i64 %i.jt, 0             ; 2 uses
  %.sroa.speculated.i525 = select i1 %.not646.not, i64 2, i64 3
  %i.jw = sub nuw nsw i64 %i.jt, %.sroa.speculated.i.i87
  %i.jx = add nuw nsw i64 %i.jw, 1
  %i.jy = getelementptr inbounds nuw i8, ptr %9, i64 7
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.jy, ptr noundef nonnull align 1 dereferenceable(1) %i.ju, i64 %i.jx, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2) %i.js, ptr noundef nonnull align 1 dereferenceable(2) %i.jo, i64 %.sroa.speculated.i525, i1 false)
  br i1 %.not646.not, label %bb.ae, label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit529

bb.ae:                                            ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i526
  %i.jz = sub nuw nsw i64 1, %.sroa.speculated.i.i87
  %i.ka = getelementptr i8, ptr %i.jn, i64 %i.jz
  %.sroa.gep684.a = getelementptr i8, ptr %i.ka, i64 5
  %.sroa.gep686 = getelementptr inbounds nuw i8, ptr %9, i64 6
  %i.kb = load i8, ptr %.sroa.gep684.a, align 1
  store i8 %i.kb, ptr %.sroa.gep686, align 1
  br label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit529

bb.af:                                            ; preds = %bb.ad
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.js, ptr noundef nonnull align 1 dereferenceable(3) %i.jo, i64 3, i1 false)
  %i.kc = sub nuw nsw i64 %i.jt, %.sroa.speculated.i.i87
  %i.kd = add nuw nsw i64 %i.kc, 1
  %i.ke = getelementptr inbounds nuw i8, ptr %9, i64 7
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ke, ptr noundef nonnull align 1 dereferenceable(1) %i.ju, i64 %i.kd, i1 false)
  br label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit529

_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit529: ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76.i526, %bb.ae, %bb.af
  %i.kf = trunc nuw nsw i64 %.sroa.speculated.i.i87 to i8
  %reass.sub647 = sub nuw i8 %i.jp, %i.kf
  %i.kg = add nuw i8 %reass.sub647, 3             ; 2 uses
  store i8 %i.kg, ptr %9, align 1, !tbaa !84
  %or.cond.not.i89 = icmp eq i8 %i.kg, 8
  %i.kh = load i64, ptr %i.jn, align 1
  %i.ki = icmp ne i64 %i.kh, 4123101749524443440
  %i.kj = zext i1 %i.ki to i32
  %i.kk = icmp eq i32 %i.kj, 0
  %.0.i.i90 = select i1 %or.cond.not.i89, i1 %i.kk, i1 false
  %i.kl = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.3965, ptr noundef nonnull @.str.13, i32 noundef 6177, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings11testReplaceEv, i1 noundef zeroext %.0.i.i90) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %10, i8 0, i64 22, i1 false)
  %i.km = call noundef nonnull align 1 dereferenceable(22) ptr @_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE6assignIPKcEENSt9enable_ifIXsr6detail17is_input_iteratorIT_EE5valueERS4_E4typeES9_S9_(ptr noundef nonnull align 1 dereferenceable(22) %10, ptr noundef nonnull @.str.3951, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3951, i64 10)) ; 0 uses
  %.ptr649 = getelementptr inbounds nuw i8, ptr %10, i64 1 ; 4 uses
  %i.kn = load i8, ptr %10, align 1, !tbaa !84    ; 5 uses
  %i.ko = zext i8 %i.kn to i64                    ; 2 uses
  %.sroa.speculated.i.i93 = call noundef i64 @llvm.umin.i64(i64 %i.ko, i64 10) ; 6 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.ptr649, i64 %.sroa.speculated.i.i93 ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %10, i64 11 ; 2 uses
  %i.kr = sub nuw nsw i64 %i.ko, %.sroa.speculated.i.i93 ; 2 uses
  %.not.i531 = icmp samesign ult i64 %i.kr, 10
  br i1 %.not.i531, label %bb.ag, label %.critedge.i532

.critedge.i532:                                   ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit529
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.7) #31
  unreachable

bb.ag:                                            ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit529
  %i.ks = icmp ugt i8 %i.kn, 9
  br i1 %i.ks, label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit549, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not648 = icmp eq i8 %i.kn, 0
  br i1 %.not648, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i536, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit77.i547.thread

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i536:      ; preds = %bb.ah
  %i.kt = load i8, ptr %i.kp, align 1
  store i8 %i.kt, ptr %i.kq, align 1
  br label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit.i542

_ZNSt11char_traitsIcE4moveEPcPKcm.exit77.i547.thread: ; preds = %bb.ah
  %i.ku = add nuw nsw i64 %i.kr, 1
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.kq, ptr noundef nonnull align 1 dereferenceable(1) %i.kp, i64 %i.ku, i1 false)
  %i.kv = sub nuw nsw i64 10, %.sroa.speculated.i.i93
  %i.kw = sub nsw i64 0, %.sroa.speculated.i.i93
  %i.kx = getelementptr i8, ptr %.ptr649, i64 %i.kw
  %i.ky = getelementptr i8, ptr %i.kx, i64 10
  %i.kz = getelementptr i8, ptr %i.ky, i64 %.sroa.speculated.i.i93
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.kp, ptr align 1 %i.kz, i64 %i.kv, i1 false)
  br label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit.i542

_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit.i542: ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i536, %_ZNSt11char_traitsIcE4moveEPcPKcm.exit77.i547.thread
  %i.la = trunc nuw nsw i64 %.sroa.speculated.i.i93 to i8
  %reass.sub650 = sub nuw nsw i8 %i.kn, %i.la
  %i.lb = add nuw nsw i8 %reass.sub650, 10        ; 2 uses
  store i8 %i.lb, ptr %10, align 1, !tbaa !84
  br label %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit549

_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit549: ; preds = %bb.ag, %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit.i542
  %i.lc = phi i8 [ %i.lb, %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit.i542 ], [ %i.kn, %bb.ag ]
  %or.cond.not.i94 = icmp eq i8 %i.lc, 10
  br i1 %or.cond.not.i94, label %bb.ai, label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit97

bb.ai:                                            ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit549
  %i.ld = load i64, ptr %.ptr649, align 1
  %i.le = xor i64 %i.ld, 3978425819141910832
  %i.lf = getelementptr i8, ptr %.ptr649, i64 8
  %i.lg = load i16, ptr %i.lf, align 1
  %i.lh = zext i16 %i.lg to i64
  %i.li = xor i64 %i.lh, 14648
  %i.lj = or i64 %i.le, %i.li
  %i.lk = icmp ne i64 %i.lj, 0
  %i.ll = zext i1 %i.lk to i32
  %i.lm = icmp eq i32 %i.ll, 0
  br label %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit97

_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit97: ; preds = %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit549, %bb.ai
  %.0.i.i95 = phi i1 [ false, %_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_.exit549 ], [ %i.lm, %bb.ai ]
  %i.ln = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.3967, ptr noundef nonnull @.str.13, i32 noundef 6181, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost14static_strings11testReplaceEv, i1 noundef zeroext %.0.i.i95) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %11, i8 0, i64 22, i1 false)
  %i.lo = call noundef nonnull align 1 dereferenceable(22) ptr @_ZN5boost14static_strings19basic_static_stringILm20EcSt11char_traitsIcEE6assignIPKcEENSt9enable_ifIXsr6detail17is_input_iteratorIT_EE5valueERS4_E4typeES9_S9_(ptr noundef nonnull align 1 dereferenceable(22) %11, ptr noundef nonnull @.str.3951, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.3951, i64 10)) ; 0 uses
  %.ptr652 = getelementptr inbounds nuw i8, ptr %11, i64 1 ; 4 uses
  %i.lp = load i8, ptr %11, align 1, !tbaa !84    ; 5 uses
  %i.lq = zext i8 %i.lp to i64                    ; 2 uses
  %.sroa.speculated.i.i98 = call noundef i64 @llvm.umin.i64(i64 %i.lq, i64 10) ; 6 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.ptr652, i64 %.sroa.speculated.i.i98 ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %11, i64 6 ; 2 uses
  %i.lt = sub nuw nsw i64 %i.lq, %.sroa.speculated.i.i98 ; 2 uses
  %.not.i551 = icmp samesign ult i64 %i.lt, 15
  br i1 %.not.i551, label %bb.aj, label %.critedge.i552

.critedge.i552:                                   ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit97
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.7) #31
  unreachable

bb.aj:                                            ; preds = %_ZN5boost14static_stringseqILm20EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET0_T1_EEPKS5_.exit97
end_hunk_0
