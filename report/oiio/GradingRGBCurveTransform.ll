inline.NumInlined: 188
inline.NumDeleted: 101
begin_hunk_0_@_ZN16OpenColorIO_v2_5lsERSoRKNS_15GradingRGBCurveE:bb.a
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.15, i64 noundef 7) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.av = load ptr, ptr %1, align 8, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 2)
  %i.ay = load ptr, ptr %4, align 8, !tbaa !97
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_5lsERSoRKNS_19GradingBSplineCurveE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ay)
          to label %bb.p unwind label %bb.af      ; 0 uses

bb.p:                                             ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !16 ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit22, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 4 uses
  %i.bd = load atomic i64, ptr %i.bc acquire, align 8 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 4294967297
  %i.bf = trunc i64 %i.bd to i32                  ; 2 uses
  br i1 %i.be, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bc, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store i32 0, ptr %i.bg, align 4, !tbaa !20
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #20, !inline_history !100
  %i.bk = load ptr, ptr %i.bb, align 8, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #20, !inline_history !100
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit22

bb.s:                                             ; preds = %bb.q
  %i.bn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i19 = icmp eq i8 %i.bn, 0
  br i1 %.not.i.i.i19, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bo = add nsw i32 %i.bf, -1
  store i32 %i.bo, ptr %i.bc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20

bb.u:                                             ; preds = %bb.s
  %i.bp = atomicrmw volatile add ptr %i.bc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i21 = phi i32 [ %i.bf, %bb.t ], [ %i.bp, %bb.u ]
  %i.bq = icmp eq i32 %.0.i.i.i.i21, 1
  br i1 %i.bq, label %bb.v, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit22, !prof !32

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #20
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit22

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit22: ; preds = %bb.p, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.br = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.16, i64 noundef 9) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.bs = load ptr, ptr %1, align 8, !tbaa !7
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 3)
  %i.bv = load ptr, ptr %5, align 8, !tbaa !97
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_5lsERSoRKNS_19GradingBSplineCurveE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bv)
          to label %bb.w unwind label %bb.ag      ; 0 uses

bb.w:                                             ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit22
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !16 ; 8 uses
  %.not.i.i23 = icmp eq ptr %i.by, null
  br i1 %.not.i.i23, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit27, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 4 uses
  %i.ca = load atomic i64, ptr %i.bz acquire, align 8 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 4294967297
  %i.cc = trunc i64 %i.ca to i32                  ; 2 uses
  br i1 %i.cb, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.bz, align 8, !tbaa !18
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  store i32 0, ptr %i.cd, align 4, !tbaa !20
  %i.ce = load ptr, ptr %i.by, align 8, !tbaa !7
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #20, !inline_history !100
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #20, !inline_history !100
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit27

bb.z:                                             ; preds = %bb.x
  %i.ck = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i24 = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.i24, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cl = add nsw i32 %i.cc, -1
  store i32 %i.cl, ptr %i.bz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i25

bb.ab:                                            ; preds = %bb.z
  %i.cm = atomicrmw volatile add ptr %i.bz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i25

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i25: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i26 = phi i32 [ %i.cc, %bb.aa ], [ %i.cm, %bb.ab ]
  %i.cn = icmp eq i32 %.0.i.i.i.i26, 1
  br i1 %i.cn, label %bb.ac, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit27, !prof !32

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i25
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #20
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit27

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit27: ; preds = %bb.w, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i25, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.co = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  ret ptr %0

bb.ad:                                            ; preds = %bb.a
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.ah

bb.ae:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.ah

bb.af:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.ah

bb.ag:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit22
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.cs, %bb.ag ], [ %i.cr, %bb.af ], [ %i.cq, %bb.ae ], [ %i.cp, %bb.ad ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_5lsERSoRKNS_19GradingControlPointE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.8, i64 noundef 3) ; 0 uses
  %i.b = load float, ptr %1, align 4, !tbaa !101
  %i.c = fpext float %i.b to double
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.c) ; 2 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.9, i64 noundef 4) ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !104
  %i.h = fpext float %i.g to double
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, double noundef %i.h)
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_5lsERSoRKNS_19GradingBSplineCurveE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.10, i64 noundef 17) ; 0 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %1) #20 ; 2 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.12, i64 noundef 2) ; 0 uses
  ret ptr %0

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.015 = phi i64 [ %i.ag, %bb.d ], [ 0, %bb.a ]  ; 3 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.k = load ptr, ptr %1, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef nonnull align 4 dereferenceable(8) ptr %i.m(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.015) ; 4 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.8, i64 noundef 3) ; 0 uses
  %i.p = load float, ptr %i.n, align 4, !tbaa !101
  %i.q = fpext float %i.p to double
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %i.q) ; 2 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.9, i64 noundef 4) ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !104
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %.sroa.0.0.copyload = load float, ptr %i.n, align 4, !tbaa !105
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !105
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.8, i64 noundef 3) ; 0 uses
  %3 = fpext float %.sroa.0.0.copyload to double
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %3) ; 2 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.9, i64 noundef 4) ; 0 uses
  %4 = fpext float %.sroa.4.0.copyload to double
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.v, double noundef %4) ; 2 uses
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.11, i64 noundef 6) ; 0 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef float %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.015)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink = phi float [ %i.u, %bb.b ], [ %i.ac, %bb.c ]
  %.sink17 = phi ptr [ %i.r, %bb.b ], [ %i.x, %bb.c ]
  %i.ad = fpext float %.sink to double
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.sink17, double noundef %i.ad)
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.ag = add nuw i64 %.015, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !106
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !20
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !30
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !30
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
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
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !32

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK16OpenColorIO_v2_524GradingRGBCurveTransform16getTransformTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 {
bb.a:
  ret i32 12
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_528GradingRGBCurveTransformImplD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN16OpenColorIO_v2_528GradingRGBCurveTransformImplE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_521GradingRGBCurveOpDataD1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.a) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_528GradingRGBCurveTransformImplD0Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN16OpenColorIO_v2_528GradingRGBCurveTransformImplE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_521GradingRGBCurveOpDataD1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.a) #20, !inline_history !108
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 208) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !109
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !109
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_521GradingRGBCurveOpDataD1Ev(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #7

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_528GradingRGBCurveTransformImplEPFvPNS0_24GradingRGBCurveTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_528GradingRGBCurveTransformImplEPFvPNS0_24GradingRGBCurveTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !110
  invoke void %i.b(ptr noundef %i.d)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #22
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_528GradingRGBCurveTransformImplEPFvPNS0_24GradingRGBCurveTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN16OpenColorIO_v2_528GradingRGBCurveTransformImplEPFvPNS1_24GradingRGBCurveTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_528GradingRGBCurveTransformImplEPFvPNS0_24GradingRGBCurveTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112  ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSPFvPN16OpenColorIO_v2_524GradingRGBCurveTransformEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !31
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
end_hunk_0
