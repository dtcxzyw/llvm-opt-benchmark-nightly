Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libphonenumber/original/phonemetadata.pb?download=true
inline.NumInlined: 1073
inline.NumDeleted: 429
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4i18n12phonenumbers13PhoneMetadata9MergeFromERKS1_:bb.a

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i192: ; preds = %bb.cv, %bb.cu
  %.0.i.i.i193 = phi ptr [ %i.qg, %bb.cv ], [ %i.qf, %bb.cu ]
  %i.qh = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN4i18n12phonenumbers15PhoneNumberDescEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i193), !inline_history !2 ; 2 uses
  store ptr %i.qh, ptr %i.py, align 8, !tbaa !27
  br label %_ZN4i18n12phonenumbers13PhoneMetadata30_internal_mutable_sms_servicesEv.exit

_ZN4i18n12phonenumbers13PhoneMetadata30_internal_mutable_sms_servicesEv.exit: ; preds = %bb.ct, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i192
  %i.qi = phi ptr [ %i.qh, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i192 ], [ %i.pz, %bb.ct ]
  %i.qj = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !27 ; 2 uses
  %.not.i194 = icmp eq ptr %i.qk, null
  %i.ql = select i1 %.not.i194, ptr @_ZN4i18n12phonenumbers34_PhoneNumberDesc_default_instance_E, ptr %i.qk
  tail call void @_ZN4i18n12phonenumbers15PhoneNumberDesc9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.qi, ptr noundef nonnull align 8 dereferenceable(72) %i.ql)
  br label %bb.cw

bb.cw:                                            ; preds = %_ZN4i18n12phonenumbers13PhoneMetadata30_internal_mutable_sms_servicesEv.exit, %bb.cs
  %i.qm = and i32 %i.ao, 33554432
  %.not128 = icmp eq i32 %i.qm, 0
  br i1 %.not128, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.qn = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.qo = load i32, ptr %i.qn, align 8, !tbaa !27
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 %i.qo, ptr %i.qp, align 8, !tbaa !27
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.qq = and i32 %i.ao, 67108864
  %.not129 = icmp eq i32 %i.qq, 0
  br i1 %.not129, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.qr = getelementptr inbounds nuw i8, ptr %1, i64 276
  %i.qs = load i8, ptr %i.qr, align 4, !tbaa !27, !range !37, !noundef !38
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 276
  store i8 %i.qs, ptr %i.qt, align 4, !tbaa !27
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.qu = and i32 %i.ao, 134217728
  %.not130 = icmp eq i32 %i.qu, 0
  br i1 %.not130, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 277
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !27, !range !37, !noundef !38
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 277
  store i8 %i.qw, ptr %i.qx, align 1, !tbaa !27
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.qy = and i32 %i.ao, 268435456
  %.not131 = icmp eq i32 %i.qy, 0
  br i1 %.not131, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.qz = getelementptr inbounds nuw i8, ptr %1, i64 278
  %i.ra = load i8, ptr %i.qz, align 2, !tbaa !27, !range !37, !noundef !38
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 278
  store i8 %i.ra, ptr %i.rb, align 2, !tbaa !27
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.rc = load i32, ptr %i.a, align 8, !tbaa !18
  %i.rd = or i32 %i.rc, %i.ao
  store i32 %i.rd, ptr %i.a, align 8, !tbaa !18
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.cr
  %i.re = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rf = load i64, ptr %i.re, align 8, !tbaa !15 ; 2 uses
  %i.rg = trunc i64 %i.rf to i1
  br i1 %i.rg, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit: ; preds = %bb.df
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ri = and i64 %i.rf, -4
  %i.rj = inttoptr i64 %i.ri to ptr
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.rh, ptr noundef nonnull align 8 dereferenceable(32) %i.rk)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit: ; preds = %bb.df, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4i18n12phonenumbers13PhoneMetadata8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(280) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4i18n12phonenumbers13PhoneMetadata5ClearEv(ptr noundef nonnull align 8 dereferenceable(280) %0)
  tail call void @_ZN4i18n12phonenumbers13PhoneMetadata9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(280) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK4i18n12phonenumbers13PhoneMetadata13IsInitializedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18
  %i.c = and i32 %i.b, 1
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN6google8protobuf8internal17AllAreInitializedIN4i18n12phonenumbers12NumberFormatEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !28   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp slt i32 %i.f, 1
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.j = zext nneg i32 %i.f to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.k = add nsw i64 %indvars.iv.i9, -1           ; 2 uses
  %i.l = trunc nuw i64 %i.k to i32
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %._crit_edge, label %bb.d, !llvm.loop !3

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv.i9 = phi i64 [ %i.j, %.lr.ph ], [ %i.k, %bb.c ] ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv.i9
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i32, ptr %i.p, align 4, !tbaa !18
  %i.r = and i32 %i.q, 3
  %.not.i.i = icmp eq i32 %i.r, 3
  br i1 %.not.i.i, label %bb.c, label %_ZN6google8protobuf8internal17AllAreInitializedIN4i18n12phonenumbers12NumberFormatEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, !llvm.loop !3

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load i32, ptr %i.s, align 8, !tbaa !28   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp slt i32 %i.t, 1
  br i1 %i.w, label %_ZN6google8protobuf8internal17AllAreInitializedIN4i18n12phonenumbers12NumberFormatEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %.lr.ph12

.lr.ph12:                                         ; preds = %._crit_edge
  %i.x = zext nneg i32 %i.t to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.y = add nsw i64 %indvars.iv.i210, -1         ; 2 uses
  %i.z = trunc nuw i64 %i.y to i32
  %i.aa = icmp slt i32 %i.z, 1
  br i1 %i.aa, label %_ZN6google8protobuf8internal17AllAreInitializedIN4i18n12phonenumbers12NumberFormatEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %bb.f, !llvm.loop !3

bb.f:                                             ; preds = %.lr.ph12, %bb.e
  %indvars.iv.i210 = phi i64 [ %i.x, %.lr.ph12 ], [ %i.y, %bb.e ] ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr %i.v, i64 %indvars.iv.i210
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !18
  %i.af = and i32 %i.ae, 3
  %.not.i.i3 = icmp eq i32 %i.af, 3
  br i1 %.not.i.i3, label %bb.e, label %._ZN6google8protobuf8internal17AllAreInitializedIN4i18n12phonenumbers12NumberFormatEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit.loopexit_crit_edge13, !llvm.loop !3

._ZN6google8protobuf8internal17AllAreInitializedIN4i18n12phonenumbers12NumberFormatEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit.loopexit_crit_edge13: ; preds = %bb.f
  br label %_ZN6google8protobuf8internal17AllAreInitializedIN4i18n12phonenumbers12NumberFormatEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, !llvm.loop !3

_ZN6google8protobuf8internal17AllAreInitializedIN4i18n12phonenumbers12NumberFormatEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit: ; preds = %bb.d, %bb.e, %._crit_edge, %._ZN6google8protobuf8internal17AllAreInitializedIN4i18n12phonenumbers12NumberFormatEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit.loopexit_crit_edge13, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.e ], [ true, %._crit_edge ], [ false, %._ZN6google8protobuf8internal17AllAreInitializedIN4i18n12phonenumbers12NumberFormatEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit.loopexit_crit_edge13 ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4i18n12phonenumbers13PhoneMetadata12InternalSwapEPS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(280) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15
  store i64 %i.d, ptr %i.a, align 8, !tbaa !66
  store i64 %i.b, ptr %i.c, align 8, !tbaa !66
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !18
  %i.h = load i32, ptr %i.f, align 8, !tbaa !18
  store i32 %i.h, ptr %i.e, align 8, !tbaa !18
  store i32 %i.g, ptr %i.f, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !68, !noalias !107
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !68, !noalias !108
  store ptr %i.p, ptr %i.j, align 8, !tbaa !68
  store ptr %i.m, ptr %i.i, align 8, !tbaa !68
  %2 = load <2 x i32>, ptr %i.k, align 8, !tbaa !18, !noalias !107
  %i.q = load <2 x i32>, ptr %i.n, align 8, !tbaa !18, !noalias !108
  store <2 x i32> %i.q, ptr %i.k, align 8, !tbaa !18
  store <2 x i32> %2, ptr %i.n, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.v = load <2 x ptr>, ptr %i.l, align 8, !tbaa !26, !noalias !38
  %i.w = load <2 x ptr>, ptr %i.o, align 8, !tbaa !26, !noalias !38
  store <2 x ptr> %i.w, ptr %i.l, align 8, !tbaa !26
  store <2 x ptr> %i.v, ptr %i.o, align 8, !tbaa !26
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !67, !noalias !109
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !67, !noalias !110
  store ptr %i.y, ptr %i.s, align 8, !tbaa !67
  %3 = load <2 x i32>, ptr %i.r, align 8, !tbaa !18, !noalias !109
  %i.z = load <2 x i32>, ptr %i.t, align 8, !tbaa !18, !noalias !110
  store <2 x i32> %i.z, ptr %i.r, align 8, !tbaa !18
  store <2 x i32> %3, ptr %i.t, align 8, !tbaa !18
  store ptr %i.x, ptr %i.u, align 8, !tbaa !67
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ab, align 8, !tbaa !26
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !26
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !26
  store ptr %.sroa.0.0.copyload.i, ptr %i.aa, align 8, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.sroa.0.0.copyload.i33 = load ptr, ptr %i.ae, align 8, !tbaa !26
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !26
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !26
  store ptr %.sroa.0.0.copyload.i33, ptr %i.ad, align 8, !tbaa !26
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %.sroa.0.0.copyload.i34 = load ptr, ptr %i.ah, align 8, !tbaa !26
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !26
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !26
  store ptr %.sroa.0.0.copyload.i34, ptr %i.ag, align 8, !tbaa !26
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %.sroa.0.0.copyload.i35 = load ptr, ptr %i.ak, align 8, !tbaa !26
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !26
  store i64 %i.al, ptr %i.ak, align 8, !tbaa !26
  store ptr %.sroa.0.0.copyload.i35, ptr %i.aj, align 8, !tbaa !26
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %.sroa.0.0.copyload.i36 = load ptr, ptr %i.an, align 8, !tbaa !26
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !26
  store i64 %i.ao, ptr %i.an, align 8, !tbaa !26
  store ptr %.sroa.0.0.copyload.i36, ptr %i.am, align 8, !tbaa !26
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %.sroa.0.0.copyload.i37 = load ptr, ptr %i.aq, align 8, !tbaa !26
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !26
  store i64 %i.ar, ptr %i.aq, align 8, !tbaa !26
  store ptr %.sroa.0.0.copyload.i37, ptr %i.ap, align 8, !tbaa !26
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %.sroa.0.0.copyload.i38 = load ptr, ptr %i.at, align 8, !tbaa !26
  %i.au = load i64, ptr %i.as, align 8, !tbaa !26
  store i64 %i.au, ptr %i.at, align 8, !tbaa !26
  store ptr %.sroa.0.0.copyload.i38, ptr %i.as, align 8, !tbaa !26
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %.sroa.0.0.copyload.i39 = load ptr, ptr %i.aw, align 8, !tbaa !26
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !26
  store i64 %i.ax, ptr %i.aw, align 8, !tbaa !26
  store ptr %.sroa.0.0.copyload.i39, ptr %i.av, align 8, !tbaa !26
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %.0.copyload.i.i = load i128, ptr %i.ay, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false)
  store i128 %.0.copyload.i.i, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %.0.copyload.i.i.i = load i128, ptr %i.ba, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %.0.copyload.i.i.i.i = load i128, ptr %i.bc, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %.0.copyload.i.i.i.i.i = load i128, ptr %i.be, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i128, ptr %i.bg, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i.i, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i = load i128, ptr %i.bi, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i.i.i, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i = load i128, ptr %i.bk, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i.i.i.i, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i128, ptr %i.bm, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i.i.i.i.i.i, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bo, align 8
  %i.bq = load i64, ptr %i.bp, align 8
  store i64 %i.bq, ptr %i.bo, align 8
  store i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.br, align 8
  %i.bt = load i32, ptr %i.bs, align 8
  store i32 %i.bt, ptr %i.br, align 8
  store i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 276 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.bu, align 4
  %i.bw = load i16, ptr %i.bv, align 4
  store i16 %i.bw, ptr %i.bu, align 4
  store i16 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.bv, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 278 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 278 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.bx, align 2
  %i.bz = load i8, ptr %i.by, align 2
  store i8 %i.bz, ptr %i.bx, align 2
  store i8 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.by, align 2
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4i18n12phonenumbers13PhoneMetadata11GetTypeNameB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 31, ptr %i.a, align 8, !tbaa !66
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !43
  %i.d = load i64, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.c, ptr noundef nonnull align 1 dereferenceable(31) @.str.21, i64 31, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !42
  %i.f = load ptr, ptr %0, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4i18n12phonenumbers23PhoneMetadataCollectionC2EPN6google8protobuf5ArenaEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 44)) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = or i64 %i.b, 2
  %i.d = select i1 %2, i64 %i.c, i64 %i.b
  store i64 %i.d, ptr %i.a, align 8, !tbaa !15
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4i18n12phonenumbers23PhoneMetadataCollectionE, i64 16), ptr %0, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.e, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.f, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4i18n12phonenumbers23PhoneMetadataCollectionC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 40)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !15
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4i18n12phonenumbers23PhoneMetadataCollectionE, i64 16), ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !28   ; 4 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.noexc, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.h = invoke noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i32 noundef %i.d)
          to label %.noexc7 unwind label %bb.c

.noexc7:                                          ; preds = %.noexc.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.l = load i32, ptr %i.k, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !28
  %i.o = sub nsw i32 %i.l, %i.n
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldIN4i18n12phonenumbers13PhoneMetadataEE11TypeHandlerEEEvPPvSB_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef %i.h, ptr noundef nonnull %i.i, i32 noundef %i.d, i32 noundef %i.o)
          to label %.noexc8 unwind label %bb.c

.noexc8:                                          ; preds = %.noexc7
  %i.p = load i32, ptr %i.m, align 8, !tbaa !28
  %i.q = add nsw i32 %i.p, %i.d                   ; 3 uses
  store i32 %i.q, ptr %i.m, align 8, !tbaa !28
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !29   ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !31
  %i.t = icmp slt i32 %i.s, %i.q
  br i1 %i.t, label %bb.b, label %.noexc

bb.b:                                             ; preds = %.noexc8
  store i32 %i.q, ptr %i.r, align 8, !tbaa !31
  br label %.noexc

.noexc:                                           ; preds = %bb.a, %.noexc8, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.u, align 8, !tbaa !20
end_hunk_0
