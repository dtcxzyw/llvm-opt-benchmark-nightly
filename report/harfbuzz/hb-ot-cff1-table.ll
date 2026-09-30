Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-ot-cff1-table?download=true
inline.NumInlined: 1268
inline.NumDeleted: 249
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK2OT4cff120accelerator_subset_t19get_seac_componentsEjPjS2_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !195 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !196
  %.not.i.i = icmp ugt i32 %i.aw, %.0.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = zext i8 %.0.shrunk.i to i64
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %i.ay, i64 %i.az
  %.0.i.i = select i1 %.not.i.i, ptr %i.ba, ptr @_hb_NullPool, !prof !58
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !202 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4108) %i.bd, i8 0, i64 4108, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 0, ptr %i.be, align 8
  store ptr %i.ar, ptr %4, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.as, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.bf, align 4, !tbaa !76
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 4128
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 4168
  store i8 0, ptr %i.bh, align 8, !tbaa !78
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
  store i32 0, ptr %i.bk, align 8, !tbaa !81
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 4148
  store i32 0, ptr %i.bl, align 4, !tbaa !82
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 4153
  store i8 1, ptr %i.bm, align 1, !tbaa !90
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 4154
  store i8 0, ptr %i.bn, align 2, !tbaa !91
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 4156
  store i32 0, ptr %i.bo, align 4, !tbaa !92
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 4160
  store i32 0, ptr %i.bp, align 8, !tbaa !93
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 4164
  store i32 0, ptr %i.bq, align 4, !tbaa !94
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 4416
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 4424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false)
  store ptr %i.au, ptr %i.bs, align 8, !tbaa !95
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %_ZN3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE4initEPKS5_.exit.i.i, label %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9get_countEv.exit.i.i.i

_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9get_countEv.exit.i.i.i: ; preds = %_ZNK3CFF8FDSelect6get_fdEj.exit
  %i.bt = load i16, ptr %i.au, align 1, !tbaa !64
  %i.bu = tail call noundef i16 @llvm.bswap.i16(i16 %i.bt) ; 2 uses
  %i.bv = icmp ult i16 %i.bu, 1240
  br i1 %i.bv, label %_ZN3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE4initEPKS5_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9get_countEv.exit.i.i.i
  %i.bw = icmp ult i16 %i.bu, -31636
  %..i.i.i = select i1 %i.bw, i32 1131, i32 32768
  br label %_ZN3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE4initEPKS5_.exit.i.i

_ZN3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE4initEPKS5_.exit.i.i: ; preds = %bb.j, %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9get_countEv.exit.i.i.i, %_ZNK3CFF8FDSelect6get_fdEj.exit
  %.sink.i.i.i = phi i32 [ %..i.i.i, %bb.j ], [ 107, %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9get_countEv.exit.i.i.i ], [ 107, %_ZNK3CFF8FDSelect6get_fdEj.exit ]
  store i32 %.sink.i.i.i, ptr %i.br, align 8, !tbaa !96
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 4440
  store ptr %i.bc, ptr %i.bx, align 8, !tbaa !95
  %.not.i.i5.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i5.i.i, label %_ZN3CFF20cff1_cs_interp_env_tC2IKN2OT4cff120accelerator_subset_tEEERK10hb_array_tIKhERT_jPKij.exit, label %_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9get_countEv.exit.i6.i.i

_ZNK3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE9get_countEv.exit.i6.i.i: ; preds = %_ZN3CFF14biased_subrs_tINS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE4initEPKS5_.exit.i.i
  %i.by = load i16, ptr %i.bc, align 1, !tbaa !64
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
  store i32 %.sink.i8.i.i, ptr %i.cc, align 8, !tbaa !96
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 4472
  store double 0.000000e+00, ptr %i.cd, align 8, !tbaa !25
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 4464
  store i8 0, ptr %i.ce, align 8, !tbaa !98
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 4465
  store i8 0, ptr %i.cf, align 1, !tbaa !99
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 4468
  store i32 0, ptr %i.cg, align 4, !tbaa !100
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 4480
  store i8 0, ptr %i.ch, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  store ptr %4, ptr %5, align 8, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  store ptr %0, ptr %6, align 8, !tbaa !157
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 0, ptr %i.ci, align 8, !tbaa !158
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i32 0, ptr %i.cj, align 4, !tbaa !159
  %i.ck = call noundef zeroext i1 @_ZN3CFF16cs_interpreter_tINS_20cff1_cs_interp_env_tE20cff1_cs_opset_seac_t16get_seac_param_tE9interpretERS3_Pl(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef null)
  br i1 %i.ck, label %bb.l, label %bb.n, !prof !58

bb.l:                                             ; preds = %_ZN3CFF20cff1_cs_interp_env_tC2IKN2OT4cff120accelerator_subset_tEEERK10hb_array_tIKhERT_jPKij.exit
  %i.cl = load i32, ptr %i.ci, align 8, !tbaa !158 ; 2 uses
  %.not.i = icmp ne i32 %i.cl, 0
  %i.cm = load i32, ptr %i.cj, align 4            ; 2 uses
  %i.cn = icmp ne i32 %i.cm, 0
  %i.co = select i1 %.not.i, i1 %i.cn, i1 false
  br i1 %i.co, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.cl, ptr %2, align 4, !tbaa !28
  store i32 %i.cm, ptr %3, align 4, !tbaa !28
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
  %i.a = load i16, ptr %0, align 1, !tbaa !64
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %i.a)
  %i.c = zext i16 %i.b to i32
  %.not = icmp ult i32 %1, %i.c
  br i1 %.not, label %bb.b, label %.critedge, !prof !58

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !62
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !61    ; 3 uses
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
  %i.i = load i8, ptr %i.h, align 1, !tbaa !61
  %i.j = zext i8 %i.i to i32
  %i.k = zext nneg i32 %1 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !61
  %i.o = zext i8 %i.n to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread17: ; preds = %bb.b
  %i.p = zext nneg i32 %1 to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.p
  %i.r = load i16, ptr %i.q, align 1, !tbaa !64
  %i.s = tail call noundef i16 @llvm.bswap.i16(i16 %i.r)
  %i.t = zext i16 %i.s to i32
  %i.u = zext nneg i32 %1 to i64
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.x = load i16, ptr %i.w, align 1, !tbaa !64
  %i.y = tail call noundef i16 @llvm.bswap.i16(i16 %i.x)
  %i.z = zext i16 %i.y to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread20: ; preds = %bb.b
  %i.aa = zext nneg i32 %1 to i64
  %i.ab = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %i.aa ; 2 uses
  %2 = load i16, ptr %i.ab, align 1
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %i.ac = zext i16 %3 to i32
  %i.ad = shl nuw nsw i32 %i.ac, 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !16
  %i.ag = zext i8 %i.af to i32
  %i.ah = or disjoint i32 %i.ad, %i.ag
  %i.ai = zext nneg i32 %1 to i64
  %i.aj = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 3
  %4 = load i16, ptr %i.ak, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %i.al = zext i16 %5 to i32
  %i.am = shl nuw nsw i32 %i.al, 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 5
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !16
  %i.ap = zext i8 %i.ao to i32
  %i.aq = or disjoint i32 %i.am, %i.ap
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread23: ; preds = %bb.b
  %i.ar = zext nneg i32 %1 to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 1, !tbaa !161
  %i.au = tail call noundef i32 @llvm.bswap.i32(i32 %i.at)
  %i.av = zext nneg i32 %1 to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = load i32, ptr %i.ax, align 1, !tbaa !161
  %i.az = tail call noundef i32 @llvm.bswap.i32(i32 %i.ay)
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11: ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread17, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread20, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread23
  %.0.i16 = phi i32 [ %i.au, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread23 ], [ %i.j, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread ], [ %i.t, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread17 ], [ %i.ah, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread20 ] ; 2 uses
  %.0.i10 = phi i32 [ %i.az, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread23 ], [ %i.o, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread ], [ %i.z, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread17 ], [ %i.aq, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit.thread20 ] ; 2 uses
  %i.ba = icmp ult i32 %.0.i10, %.0.i16
  br i1 %i.ba, label %.critedge, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread, !prof !204

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread: ; preds = %bb.b, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11
  %.0.i1029 = phi i32 [ %.0.i10, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11 ], [ 0, %bb.b ] ; 2 uses
  %.0.i1628 = phi i32 [ %.0.i16, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11 ], [ 0, %bb.b ] ; 2 uses
  %i.bb = load i16, ptr %0, align 1, !tbaa !64
  %i.bc = tail call noundef i16 @llvm.bswap.i16(i16 %i.bb) ; 5 uses
  switch i8 %i.e, label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13 [
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.c:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread
  %i.bd = zext i16 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !61
  %i.bg = zext i8 %i.bf to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13

bb.d:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread
  %i.bh = zext i16 %i.bc to i64
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 1, !tbaa !64
  %i.bk = tail call noundef i16 @llvm.bswap.i16(i16 %i.bj)
  %i.bl = zext i16 %i.bk to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13

bb.e:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread
  %i.bm = zext i16 %i.bc to i64
  %i.bn = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %i.bm ; 2 uses
  %6 = load i16, ptr %i.bn, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %i.bo = zext i16 %7 to i32
  %i.bp = shl nuw nsw i32 %i.bo, 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !16
  %i.bs = zext i8 %i.br to i32
  %i.bt = or disjoint i32 %i.bp, %i.bs
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13

bb.f:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread
  %i.bu = zext i16 %i.bc to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 1, !tbaa !161
  %i.bx = tail call noundef i32 @llvm.bswap.i32(i32 %i.bw)
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13

_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13: ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i12 = phi i32 [ %i.bx, %bb.f ], [ %i.bg, %bb.c ], [ %i.bl, %bb.d ], [ %i.bt, %bb.e ], [ 0, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11.thread ]
  %i.by = icmp ugt i32 %.0.i1029, %.0.i12
  br i1 %i.by, label %.critedge, label %bb.g, !prof !56

bb.g:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13
  %i.bz = zext i8 %i.e to i64
  %i.ca = zext i16 %i.bc to i64
  %i.cb = add nuw nsw i64 %i.ca, 1
  %i.cc = mul nuw nsw i64 %i.cb, %i.bz
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cc
  %i.ce = zext i32 %.0.i1628 to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ce
  %i.cg = sub i32 %.0.i1029, %.0.i1628
  %.sroa.6.8.insert.ext = zext i32 %i.cg to i64
  br label %.critedge

.critedge:                                        ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11, %bb.a, %bb.g
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.cf, %bb.g ], [ null, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11 ], [ null, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13 ]
  %.sroa.6.0 = phi i64 [ 0, %bb.a ], [ %.sroa.6.8.insert.ext, %bb.g ], [ 0, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit11 ], [ 0, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EtLj2EEEE9offset_atEj.exit13 ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3CFF16cs_interpreter_tINS_20cff1_cs_interp_env_tE20cff1_cs_opset_seac_t16get_seac_param_tE9interpretERS3_Pl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !207, !nonnull !111, !align !208 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4152
  store i8 0, ptr %i.b, align 8, !tbaa !107
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !76
  %.phi.trans.insert20 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre21 = load i32, ptr %.phi.trans.insert20, align 8, !tbaa !114
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %bb.a
  %i.c = phi i32 [ %.pre21, %bb.a ], [ %i.ao, %bb.k ] ; 2 uses
  %i.d = phi i32 [ %.pre, %bb.a ], [ %i.am, %bb.k ] ; 3 uses
  %i.e = phi ptr [ %i.a, %bb.a ], [ %i.ah, %bb.k ] ; 14 uses
  %.0 = phi i32 [ 200000, %bb.a ], [ %i.au, %bb.k ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  %i.g = add i32 %i.d, 1                          ; 3 uses
  %.not.i = icmp ugt i32 %i.g, %i.c
  br i1 %.not.i, label %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit.thread, label %bb.c, !prof !56

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !108  ; 2 uses
  %i.i = zext i32 %i.d to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !16    ; 2 uses
  %i.l = zext i8 %i.k to i32
  store i32 %i.g, ptr %i.f, align 4, !tbaa !76
  %i.m = icmp eq i8 %i.k, 12
  br i1 %i.m, label %bb.d, label %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit

bb.d:                                             ; preds = %bb.c
  %i.n = add i32 %i.d, 2                          ; 2 uses
  %.not5.i = icmp ugt i32 %i.n, %i.c
  br i1 %.not5.i, label %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit.thread, label %bb.e, !prof !56

bb.e:                                             ; preds = %bb.d
  %i.o = zext i32 %i.g to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !16
  %i.r = zext i8 %i.q to i32
  %i.s = or disjoint i32 %i.r, 256
  store i32 %i.n, ptr %i.f, align 4, !tbaa !76
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
  store i32 0, ptr %i.u, align 4, !tbaa !100
  store i32 0, ptr %i.t, align 4, !tbaa !109
  br label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE10process_opEjRS4_RS2_.exit

bb.g:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 4464 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8, !tbaa !98, !range !110, !noundef !111
  %i.x = trunc nuw i8 %i.w to i1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 2 uses
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !109 ; 2 uses
  br i1 %i.x, label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = trunc i32 %.pre.i to i1
  br i1 %i.y, label %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i.i, label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i.i, !prof !112

_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i.i: ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 4472
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !113
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !113
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 4465
  store i8 1, ptr %i.ac, align 1, !tbaa !99
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 4468
  store i32 1, ptr %i.ad, align 4, !tbaa !100
  br label %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i.i

_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i.i: ; preds = %_ZN3CFF11cff_stack_tINS_8number_tELi513EEixEj.exit.i.i.i, %bb.h
  store i8 1, ptr %i.v, align 8, !tbaa !98
  br label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit.i

_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit.i: ; preds = %_ZN3CFF20cff1_cs_interp_env_t9set_widthEb.exit.i.i, %bb.g
  %i.ae = icmp ugt i32 %.pre.i, 3
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit.i
  tail call void @_ZN20cff1_cs_opset_seac_t12process_seacERN3CFF20cff1_cs_interp_env_tER16get_seac_param_t(ptr noundef nonnull align 8 dereferenceable(4481) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE11check_widthEjRS4_RS2_.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 4468
  store i32 0, ptr %i.af, align 4, !tbaa !100
  store i32 0, ptr %.phi.trans.insert.i, align 4, !tbaa !109
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 4152
  store i8 1, ptr %i.ag, align 8, !tbaa !107
  br label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE10process_opEjRS4_RS2_.exit

_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit.thread: ; preds = %bb.b, %bb.d, %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit
  %.03.i10 = phi i32 [ %.03.i, %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit ], [ 65535, %bb.d ], [ 65535, %bb.b ]
  tail call void @_ZN3CFF10cs_opset_tINS_8number_tE20cff1_cs_opset_seac_tNS_20cff1_cs_interp_env_tE16get_seac_param_tNS_17path_procs_null_tIS3_S4_EEE10process_opEjRS3_RS4_(i32 noundef %.03.i10, ptr noundef nonnull align 8 dereferenceable(4481) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE10process_opEjRS4_RS2_.exit

_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE10process_opEjRS4_RS2_.exit: ; preds = %bb.f, %bb.j, %_ZN3CFF12interp_env_tINS_8number_tEE8fetch_opEv.exit.thread
  %i.ah = load ptr, ptr %0, align 8, !tbaa !207, !nonnull !111, !align !208 ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4168
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !78, !range !110, !noundef !111
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE10process_opEjRS4_RS2_.exit..thread_crit_edge, label %_ZNK3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE8in_errorEv.exit

_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE10process_opEjRS4_RS2_.exit..thread_crit_edge: ; preds = %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE10process_opEjRS4_RS2_.exit
  %.phi.trans.insert22 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.pre23 = load i32, ptr %.phi.trans.insert22, align 8, !tbaa !114
  br label %.thread

_ZNK3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE8in_errorEv.exit: ; preds = %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE10process_opEjRS4_RS2_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !76 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !114 ; 3 uses
  %i.ap = icmp ugt i32 %i.am, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ar = load i8, ptr %i.aq, align 8, !range !110
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = select i1 %i.ap, i1 true, i1 %i.as
  %cond.fr = freeze i1 %i.at                      ; 2 uses
  %i.au = add i32 %.0, -1                         ; 4 uses
  %.not = icmp eq i32 %i.au, 0
  %brmerge = select i1 %cond.fr, i1 true, i1 %.not, !prof !115
  br i1 %brmerge, label %.thread.loopexit, label %bb.k, !prof !115

.thread.loopexit:                                 ; preds = %_ZNK3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE8in_errorEv.exit
  %.0.mux = select i1 %cond.fr, i32 %.0, i32 %i.au, !prof !115
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE10process_opEjRS4_RS2_.exit..thread_crit_edge
  %i.av = phi i32 [ %.pre23, %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE10process_opEjRS4_RS2_.exit..thread_crit_edge ], [ %i.ao, %.thread.loopexit ]
  %i.aw = phi i32 [ %.0, %_ZN3CFF15cff1_cs_opset_tI20cff1_cs_opset_seac_t16get_seac_param_tNS_17path_procs_null_tINS_20cff1_cs_interp_env_tES2_EEE10process_opEjRS4_RS2_.exit..thread_crit_edge ], [ %.0.mux, %.thread.loopexit ]
  %i.ax = add i32 %i.av, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !76
  br label %.loopexit

bb.k:                                             ; preds = %_ZNK3CFF15cs_interp_env_tINS_8number_tENS_5SubrsIN2OT7NumTypeILb1EtLj2EEEEEE8in_errorEv.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 4152
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !107, !range !110, !noundef !111
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %.loopexit, label %bb.b, !llvm.loop !205

.loopexit:                                        ; preds = %bb.k, %.thread
  %.06 = phi i1 [ false, %.thread ], [ true, %bb.k ]
  %i.bc = phi i32 [ %i.aw, %.thread ], [ %i.au, %bb.k ]
  %.not8 = icmp eq ptr %2, null
  br i1 %.not8, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.bd = sub i32 200000, %i.bc
  %i.be = zext i32 %i.bd to i64
  %i.bf = load i64, ptr %2, align 8, !tbaa !117
  %i.bg = sub nsw i64 %i.bf, %i.be
  store i64 %i.bg, ptr %2, align 8, !tbaa !117
end_hunk_0
