inline.NumInlined: 1268
inline.NumDeleted: 249
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK2OT4cff120accelerator_subset_t19get_seac_componentsEjPjS2_:bb.a

bb.g:                                             ; preds = %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.i.i.i.i
  %i.ai = add nuw nsw i32 %i.v, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i.i
  %.223.i.i.i.i = phi i32 [ %i.ai, %bb.g ], [ %.0214.i.i.i.i, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i.i ] ; 2 uses
  %.2.i.i.i.i = phi i32 [ %.0205.i.i.i.i, %bb.g ], [ %i.ah, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.thread.i.i.i.i ] ; 2 uses
  %.not.not.i.i.i.i = icmp sgt i32 %.223.i.i.i.i, %.2.i.i.i.i
  br i1 %.not.not.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !58

.loopexit.i.i:                                    ; preds = %bb.h, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit.i.i
  %.not.i4.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %.not.i4.not.i.i, label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE6get_fdEj.exit.i, label %bb.i, !prof !49

bb.i:                                             ; preds = %.loopexit.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !55
  %i.aj = zext i16 %i.r to i64
  %i.ak = getelementptr [3 x i8], ptr %i.o, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 -1
  br label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE6get_fdEj.exit.i

_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE6get_fdEj.exit.i: ; preds = %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.i.i.i.i, %bb.i, %.loopexit.i.i
  %.pn.i.i = phi ptr [ @_hb_NullPool, %.loopexit.i.i ], [ %i.al, %bb.i ], [ %i.y, %_ZN3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE10_cmp_rangeEPKvS7_.exit.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !53
  br label %_ZNK3CFF8FDSelect6get_fdEj.exit

_ZNK3CFF8FDSelect6get_fdEj.exit:                  ; preds = %bb.b, %bb.c, %bb.d, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE6get_fdEj.exit.i
  %.0.shrunk.i = phi i8 [ %i.an, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE6get_fdEj.exit.i ], [ 0, %bb.b ], [ %i.n, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.0.i = zext i8 %.0.shrunk.i to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !157
  %i.aq = tail call { ptr, i64 } @_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEEixEj(ptr noundef nonnull align 1 dereferenceable(4) %i.ap, i32 noundef %1) ; 2 uses
  %i.ar = extractvalue { ptr, i64 } %i.aq, 0      ; 2 uses
  %i.as = extractvalue { ptr, i64 } %i.aq, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !158 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !159
  %.not.i.i = icmp ugt i32 %i.aw, %.0.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = zext i8 %.0.shrunk.i to i64
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %i.ay, i64 %i.az
  %.0.i.i = select i1 %.not.i.i, ptr %i.ba, ptr @_hb_NullPool, !prof !51
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !160 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4108) %i.bd, i8 0, i64 4108, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 0, ptr %i.be, align 8
  store ptr %i.ar, ptr %4, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.as, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.bf, align 4, !tbaa !68
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 4128
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 4168
  store i8 0, ptr %i.bh, align 8, !tbaa !71
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 4172
  %.ptr.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 4200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.1.i.i.i.i, i8 0, i64 16, i1 false)
  %.ptr.2.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 4224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.2.i.i.i.i, i8 0, i64 16, i1 false)
  %.ptr.3.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 4248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.3.i.i.i.i, i8 0, i64 16, i1 false)
  %.ptr.4.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 4272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.4.i.i.i.i, i8 0, i64 16, i1 false)
  %.ptr.5.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 4296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.5.i.i.i.i, i8 0, i64 16, i1 false)
  %.ptr.6.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 4320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.6.i.i.i.i, i8 0, i64 16, i1 false)
  %.ptr.7.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 4344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.7.i.i.i.i, i8 0, i64 16, i1 false)
  %.ptr.8.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 4368
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.8.i.i.i.i, i8 0, i64 16, i1 false)
  %.ptr.9.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 4392
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.9.i.i.i.i, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bi, i8 0, i64 20, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 4448
  %.sroa.2.12.insert.mask.i.i = and i64 %i.as, 4294967295
  store ptr %i.ar, ptr %i.bg, align 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 4136
  store i64 %.sroa.2.12.insert.mask.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 4144
  store i32 0, ptr %i.bk, align 8, !tbaa !73
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 4148
  store i32 0, ptr %i.bl, align 4, !tbaa !76
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 4153
  store i8 1, ptr %i.bm, align 1, !tbaa !77
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 4154
  store i8 0, ptr %i.bn, align 2, !tbaa !85
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 4156
  store i32 0, ptr %i.bo, align 4, !tbaa !86
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 4160
  store i32 0, ptr %i.bp, align 8, !tbaa !87
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 4164
  store i32 0, ptr %i.bq, align 4, !tbaa !88
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 4416
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 4424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false)
  store ptr %i.au, ptr %i.bs, align 8, !tbaa !89
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %_ZN3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE4initEPKS5_.exit.i.i, label %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9get_countEv.exit.i.i.i

_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9get_countEv.exit.i.i.i: ; preds = %_ZNK3CFF8FDSelect6get_fdEj.exit
  %i.bt = load i16, ptr %i.au, align 1, !tbaa !56
  %i.bu = tail call noundef i16 @llvm.bswap.i16(i16 %i.bt) ; 2 uses
  %i.bv = icmp ult i16 %i.bu, 1240
  br i1 %i.bv, label %_ZN3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE4initEPKS5_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9get_countEv.exit.i.i.i
  %i.bw = icmp ult i16 %i.bu, -31636
  %..i.i.i = select i1 %i.bw, i32 1131, i32 32768
  br label %_ZN3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE4initEPKS5_.exit.i.i

_ZN3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE4initEPKS5_.exit.i.i: ; preds = %bb.j, %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9get_countEv.exit.i.i.i, %_ZNK3CFF8FDSelect6get_fdEj.exit
  %.sink.i.i.i = phi i32 [ %..i.i.i, %bb.j ], [ 107, %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9get_countEv.exit.i.i.i ], [ 107, %_ZNK3CFF8FDSelect6get_fdEj.exit ]
  store i32 %.sink.i.i.i, ptr %i.br, align 8, !tbaa !90
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 4440
  store ptr %i.bc, ptr %i.bx, align 8, !tbaa !89
  %.not.i.i5.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i5.i.i, label %_ZN3CFF20cff1_cs_interp_env_tC2IKN2OT4cff120accelerator_subset_tEEERK10hb_array_tIKhERT_jPKij.exit, label %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9get_countEv.exit.i6.i.i

_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9get_countEv.exit.i6.i.i: ; preds = %_ZN3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE4initEPKS5_.exit.i.i
  %i.by = load i16, ptr %i.bc, align 1, !tbaa !56
  %i.bz = tail call noundef i16 @llvm.bswap.i16(i16 %i.by) ; 2 uses
  %i.ca = icmp ult i16 %i.bz, 1240
  br i1 %i.ca, label %_ZN3CFF20cff1_cs_interp_env_tC2IKN2OT4cff120accelerator_subset_tEEERK10hb_array_tIKhERT_jPKij.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9get_countEv.exit.i6.i.i
  %i.cb = icmp ult i16 %i.bz, -31636
  %..i7.i.i = select i1 %i.cb, i32 1131, i32 32768
  br label %_ZN3CFF20cff1_cs_interp_env_tC2IKN2OT4cff120accelerator_subset_tEEERK10hb_array_tIKhERT_jPKij.exit

_ZN3CFF20cff1_cs_interp_env_tC2IKN2OT4cff120accelerator_subset_tEEERK10hb_array_tIKhERT_jPKij.exit: ; preds = %_ZN3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE4initEPKS5_.exit.i.i, %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9get_countEv.exit.i6.i.i, %bb.k
  %.sink.i8.i.i = phi i32 [ %..i7.i.i, %bb.k ], [ 107, %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9get_countEv.exit.i6.i.i ], [ 107, %_ZN3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE4initEPKS5_.exit.i.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 4432
  store i32 %.sink.i8.i.i, ptr %i.cc, align 8, !tbaa !90
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 4472
  store double 0.000000e+00, ptr %i.cd, align 8, !tbaa !16
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 4464
  store i8 0, ptr %i.ce, align 8, !tbaa !91
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 4465
  store i8 0, ptr %i.cf, align 1, !tbaa !93
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 4468
  store i32 0, ptr %i.cg, align 4, !tbaa !94
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 4480
  store i8 0, ptr %i.ch, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  store ptr %4, ptr %5, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  store ptr %0, ptr %6, align 8, !tbaa !168
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 0, ptr %i.ci, align 8, !tbaa !171
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i32 0, ptr %i.cj, align 4, !tbaa !172
  %i.ck = call noundef zeroext i1 @_ZN3CFF16cs_interpreter_tINS_20cff1_cs_interp_env_tE20cff1_cs_opset_seac_t16get_seac_param_tE9interpretERS3_Pl(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef null)
  br i1 %i.ck, label %bb.l, label %bb.n, !prof !51

bb.l:                                             ; preds = %_ZN3CFF20cff1_cs_interp_env_tC2IKN2OT4cff120accelerator_subset_tEEERK10hb_array_tIKhERT_jPKij.exit
  %i.cl = load i32, ptr %i.ci, align 8, !tbaa !171 ; 2 uses
  %.not.i = icmp ne i32 %i.cl, 0
  %i.cm = load i32, ptr %i.cj, align 4            ; 2 uses
  %i.cn = icmp ne i32 %i.cm, 0
  %i.co = select i1 %.not.i, i1 %i.cn, i1 false
  br i1 %i.co, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.cl, ptr %2, align 4, !tbaa !21
  store i32 %i.cm, ptr %3, align 4, !tbaa !21
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %_ZN3CFF20cff1_cs_interp_env_tC2IKN2OT4cff120accelerator_subset_tEEERK10hb_array_tIKhERT_jPKij.exit, %bb.m
  %.0 = phi i1 [ false, %_ZN3CFF20cff1_cs_interp_env_tC2IKN2OT4cff120accelerator_subset_tEEERK10hb_array_tIKhERT_jPKij.exit ], [ true, %bb.m ], [ false, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.n
  %.1 = phi i1 [ %.0, %bb.n ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEEixEj(ptr noundef nonnull align 1 dereferenceable(4) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 1, !tbaa !56
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %i.a)
  %i.c = zext i16 %i.b to i32
  %.not = icmp ult i32 %1, %i.c
  br i1 %.not, label %bb.b, label %.critedge, !prof !51

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !55
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !53    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 12 uses
  switch i8 %i.e, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread [
    i8 1, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread
    i8 2, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread17
    i8 3, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread20
    i8 4, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread23
  ]

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread: ; preds = %bb.b
  %i.g = zext nneg i32 %1 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !53
  %i.j = zext i8 %i.i to i32
  %2 = zext nneg i32 %1 to i64
  %3 = getelementptr inbounds nuw i8, ptr %i.f, i64 %2
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !53
  %i.m = zext i8 %i.l to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread17: ; preds = %bb.b
  %i.n = zext nneg i32 %1 to i64
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.n
  %i.p = load i16, ptr %i.o, align 1, !tbaa !56
  %i.q = tail call noundef i16 @llvm.bswap.i16(i16 %i.p)
  %i.r = zext i16 %i.q to i32
  %4 = zext nneg i32 %1 to i64
  %5 = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %4
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.t = load i16, ptr %i.s, align 1, !tbaa !56
  %i.u = tail call noundef i16 @llvm.bswap.i16(i16 %i.t)
  %i.v = zext i16 %i.u to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread20: ; preds = %bb.b
  %i.w = zext nneg i32 %1 to i64
  %i.x = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %i.w ; 3 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !8
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !8
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 8
  %i.af = or disjoint i32 %i.ae, %i.aa
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  %i.ai = zext i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.af, %i.ai
  %6 = zext nneg i32 %1 to i64
  %7 = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %6 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 3
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !8
  %i.am = zext i8 %i.al to i32
  %i.an = shl nuw nsw i32 %i.am, 16
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !8
  %i.aq = zext i8 %i.ap to i32
  %i.ar = shl nuw nsw i32 %i.aq, 8
  %i.as = or disjoint i32 %i.ar, %i.an
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 5
  %i.au = load i8, ptr %i.at, align 1, !tbaa !8
  %i.av = zext i8 %i.au to i32
  %i.aw = or disjoint i32 %i.as, %i.av
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread23: ; preds = %bb.b
  %i.ax = zext nneg i32 %1 to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 1, !tbaa !173
  %i.ba = tail call noundef i32 @llvm.bswap.i32(i32 %i.az)
  %8 = zext nneg i32 %1 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %8
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.bc = load i32, ptr %i.bb, align 1, !tbaa !173
  %i.bd = tail call noundef i32 @llvm.bswap.i32(i32 %i.bc)
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11: ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread17, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread20, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread23
  %.0.i16 = phi i32 [ %i.ba, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread23 ], [ %i.j, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread ], [ %i.r, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread17 ], [ %i.aj, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread20 ] ; 2 uses
  %.0.i10 = phi i32 [ %i.bd, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread23 ], [ %i.m, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread ], [ %i.v, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread17 ], [ %i.aw, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread20 ] ; 2 uses
  %i.be = icmp ult i32 %.0.i10, %.0.i16
  br i1 %i.be, label %.critedge, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread, !prof !175

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread: ; preds = %bb.b, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11
  %.0.i1029 = phi i32 [ %.0.i10, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11 ], [ 0, %bb.b ] ; 2 uses
  %.0.i1628 = phi i32 [ %.0.i16, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11 ], [ 0, %bb.b ] ; 2 uses
  %i.bf = load i16, ptr %0, align 1, !tbaa !56
  %i.bg = tail call noundef i16 @llvm.bswap.i16(i16 %i.bf) ; 5 uses
  switch i8 %i.e, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13 [
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.c:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread
  %i.bh = zext i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !53
  %i.bk = zext i8 %i.bj to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13

bb.d:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread
  %i.bl = zext i16 %i.bg to i64
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 1, !tbaa !56
  %i.bo = tail call noundef i16 @llvm.bswap.i16(i16 %i.bn)
  %i.bp = zext i16 %i.bo to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13

bb.e:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread
  %i.bq = zext i16 %i.bg to i64
  %i.br = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %i.bq ; 3 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !8
  %i.bt = zext i8 %i.bs to i32
  %i.bu = shl nuw nsw i32 %i.bt, 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !8
  %i.bx = zext i8 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 8
  %i.bz = or disjoint i32 %i.by, %i.bu
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !8
  %i.cc = zext i8 %i.cb to i32
  %i.cd = or disjoint i32 %i.bz, %i.cc
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13

bb.f:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread
  %i.ce = zext i16 %i.bg to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 1, !tbaa !173
  %i.ch = tail call noundef i32 @llvm.bswap.i32(i32 %i.cg)
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13: ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i12 = phi i32 [ %i.ch, %bb.f ], [ %i.bk, %bb.c ], [ %i.bp, %bb.d ], [ %i.cd, %bb.e ], [ 0, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread ]
  %i.ci = icmp ugt i32 %.0.i1029, %.0.i12
  br i1 %i.ci, label %.critedge, label %bb.g, !prof !49

bb.g:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13
  %i.cj = zext i8 %i.e to i64
  %i.ck = zext i16 %i.bg to i64
  %i.cl = add nuw nsw i64 %i.ck, 1
  %i.cm = mul nuw nsw i64 %i.cl, %i.cj
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.co = zext i32 %.0.i1628 to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.co
  %i.cq = sub i32 %.0.i1029, %.0.i1628
  %.sroa.6.8.insert.ext = zext i32 %i.cq to i64
  br label %.critedge

.critedge:                                        ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11, %bb.a, %bb.g
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.cp, %bb.g ], [ null, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11 ], [ null, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13 ]
  %.sroa.6.0 = phi i64 [ 0, %bb.a ], [ %.sroa.6.8.insert.ext, %bb.g ], [ 0, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11 ], [ 0, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13 ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3CFF16cs_interpreter_tINS_20cff1_cs_interp_env_tE20cff1_cs_opset_seac_t16get_seac_param_tE9interpretERS3_Pl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !176, !nonnull !105, !align !178 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4152
  store i8 0, ptr %i.b, align 8, !tbaa !101
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !68
  %.phi.trans.insert20 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre21 = load i32, ptr %.phi.trans.insert20, align 8, !tbaa !109
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %bb.a
  %i.c = phi i32 [ %.pre21, %bb.a ], [ %i.ao, %bb.k ] ; 2 uses
  %i.d = phi i32 [ %.pre, %bb.a ], [ %i.am, %bb.k ] ; 3 uses
  %i.e = phi ptr [ %i.a, %bb.a ], [ %i.ah, %bb.k ] ; 14 uses
  %.0 = phi i32 [ 200000, %bb.a ], [ %i.au, %bb.k ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  %i.g = add i32 %i.d, 1                          ; 3 uses
  %.not.i = icmp ugt i32 %i.g, %i.c
  br i1 %.not.i, label %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit.thread, label %bb.c, !prof !49

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !102  ; 2 uses
  %i.i = zext i32 %i.d to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !8     ; 2 uses
  %i.l = zext i8 %i.k to i32
  store i32 %i.g, ptr %i.f, align 4, !tbaa !68
  %i.m = icmp eq i8 %i.k, 12
  br i1 %i.m, label %bb.d, label %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit

bb.d:                                             ; preds = %bb.c
  %i.n = add i32 %i.d, 2                          ; 2 uses
  %.not5.i = icmp ugt i32 %i.n, %i.c
  br i1 %.not5.i, label %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit.thread, label %bb.e, !prof !49

bb.e:                                             ; preds = %bb.d
  %i.o = zext i32 %i.g to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8
  %i.r = zext i8 %i.q to i32
  %i.s = or disjoint i32 %i.r, 256
  store i32 %i.n, ptr %i.f, align 4, !tbaa !68
  br label %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit

_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit: ; preds = %bb.c, %bb.e
  %.03.i = phi i32 [ %i.s, %bb.e ], [ %i.l, %bb.c ] ; 2 uses
  switch i32 %.03.i, label %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit.thread [
    i32 256, label %bb.f
    i32 14, label %bb.g
  ]

bb.f:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 4468
  store i32 0, ptr %i.u, align 4, !tbaa !94
  store i32 0, ptr %i.t, align 4, !tbaa !103
  br label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE10process_opEjRS4_RS2_.exit

bb.g:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 4464 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8, !tbaa !91, !range !104, !noundef !105
  %i.x = trunc nuw i8 %i.w to i1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 2 uses
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !103 ; 2 uses
  br i1 %i.x, label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = trunc i32 %.pre.i to i1
  br i1 %i.y, label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i.i, label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i.i, !prof !106

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i.i: ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 4472
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !107
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !107
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 4465
  store i8 1, ptr %i.ac, align 1, !tbaa !93
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 4468
  store i32 1, ptr %i.ad, align 4, !tbaa !94
  br label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i.i

_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i.i: ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i.i, %bb.h
  store i8 1, ptr %i.v, align 8, !tbaa !91
  br label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit.i

_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit.i: ; preds = %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i.i, %bb.g
  %i.ae = icmp ugt i32 %.pre.i, 3
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit.i
  tail call void @_ZN20cff1_cs_opset_seac_t12process_seacERN3CFF20cff1_cs_interp_env_tER16get_seac_param_t(ptr noundef nonnull align 8 dereferenceable(4481) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 4468
  store i32 0, ptr %i.af, align 4, !tbaa !94
  store i32 0, ptr %.phi.trans.insert.i, align 4, !tbaa !103
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 4152
  store i8 1, ptr %i.ag, align 8, !tbaa !101
  br label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE10process_opEjRS4_RS2_.exit

_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit.thread: ; preds = %bb.b, %bb.d, %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit
  %.03.i10 = phi i32 [ %.03.i, %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit ], [ 65535, %bb.d ], [ 65535, %bb.b ]
  tail call void @_ZN3CFF10cs_opset_tINS_8number_tE20cff1_cs_opset_seac_tNS_20cff1_cs_interp_env_tE16get_seac_param_tNS_17path_procs_null_tIS3_S4_EEE10process_opEjRS3_RS4_(i32 noundef %.03.i10, ptr noundef nonnull align 8 dereferenceable(4481) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE10process_opEjRS4_RS2_.exit

_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE10process_opEjRS4_RS2_.exit: ; preds = %bb.f, %bb.j, %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit.thread
  %i.ah = load ptr, ptr %0, align 8, !tbaa !176, !nonnull !105, !align !178 ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4168
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !71, !range !104, !noundef !105
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE10process_opEjRS4_RS2_.exit..thread_crit_edge, label %_ZNK3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE8in_errorEv.exit
end_hunk_0
