Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/dep_intervals?download=true
inline.NumInlined: 1878
inline.NumDeleted: 208
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK16interval_managerIN13dep_intervals9im_configEE8containsERKNS1_8intervalERK3mpq:bb.a
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.dl = load i8, ptr %i.dk, align 4
  %i.dm = and i8 %i.dl, 1
  %i.dn = icmp eq i8 %i.dm, 0
  br i1 %i.dn, label %bb.r, label %_ZN11mpq_managerILb0EE2eqERK3mpqS3_.exit16

bb.r:                                             ; preds = %bb.q
  %i.do = load i8, ptr %i.bs, align 4
  %i.dp = and i8 %i.do, 1
  %i.dq = icmp eq i8 %i.dp, 0
  br i1 %i.dq, label %.split21, label %_ZN11mpq_managerILb0EE2eqERK3mpqS3_.exit16

.split21:                                         ; preds = %bb.r
  %i.dr = load i32, ptr %i.dj, align 8, !tbaa !17
  %i.ds = load i32, ptr %i.br, align 8, !tbaa !17
  %i.dt = icmp eq i32 %i.dr, %i.ds
  br i1 %i.dt, label %bb.s, label %_ZN11mpq_managerILb0EE2eqERK3mpqS3_.exit16.thread

_ZN11mpq_managerILb0EE2eqERK3mpqS3_.exit16:       ; preds = %bb.q, %bb.r
  %i.du = tail call noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %i.dj, ptr noundef nonnull align 8 dereferenceable(16) %i.br)
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.s, label %_ZN11mpq_managerILb0EE2eqERK3mpqS3_.exit16.thread

bb.s:                                             ; preds = %.split21, %_ZN11mpq_managerILb0EE2eqERK3mpqS3_.exit16
  %i.dw = load i8, ptr %i.a, align 8
  %i.dx = and i8 %i.dw, 2
  %.not23 = icmp eq i8 %i.dx, 0
  br i1 %.not23, label %_ZN11mpq_managerILb0EE2eqERK3mpqS3_.exit16.thread, label %bb.t

_ZN11mpq_managerILb0EE2eqERK3mpqS3_.exit16.thread: ; preds = %.split.i15, %_ZN11mpq_managerILb0EE2eqERK3mpzS3_.exit.i14, %.split21, %_ZN11mpq_managerILb0EE2eqERK3mpqS3_.exit16, %bb.s, %_ZN11mpq_managerILb0EE2eqERK3mpqS3_.exit.thread
  br label %bb.t

bb.t:                                             ; preds = %.split20, %.split19, %.split17, %.split, %bb.s, %_ZN11mpq_managerILb0EE2gtERK3mpqS3_.exit, %bb.j, %_ZN11mpq_managerILb0EE2ltERK3mpqS3_.exit, %_ZN11mpq_managerILb0EE2eqERK3mpqS3_.exit16.thread
  %.0 = phi i1 [ true, %_ZN11mpq_managerILb0EE2eqERK3mpqS3_.exit16.thread ], [ false, %bb.j ], [ false, %_ZN11mpq_managerILb0EE2gtERK3mpqS3_.exit ], [ false, %_ZN11mpq_managerILb0EE2ltERK3mpqS3_.exit ], [ false, %bb.s ], [ false, %.split ], [ false, %.split17 ], [ false, %.split19 ], [ false, %.split20 ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZNK16interval_managerIN13dep_intervals9im_configEE7displayERSoRKNS1_8intervalE(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc i8 %i.b to i1
  %.str.1..str.2 = select i1 %i.c, ptr @.str.1, ptr @.str.2
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.1..str.2, i64 noundef 1) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i8, ptr %i.a, align 8
  %i.g = and i8 %i.f, 4
  %.not.i.not = icmp eq i8 %i.g, 0
  br i1 %.not.i.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.17, i64 noundef 3) ; 0 uses
  br label %_Z7displayI11mpq_managerILb0EEEvRSoRT_RKNS3_7numeralE16ext_numeral_kind.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !12, !nonnull !13, !align !14
  tail call void @_ZNK11mpq_managerILb0EE7displayERSoRK3mpq(ptr noundef nonnull align 8 dereferenceable(728) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br label %_Z7displayI11mpq_managerILb0EEEvRSoRT_RKNS3_7numeralE16ext_numeral_kind.exit

_Z7displayI11mpq_managerILb0EEEvRSoRT_RKNS3_7numeralE16ext_numeral_kind.exit: ; preds = %bb.b, %bb.c
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.10, i64 noundef 2) ; 0 uses
  %i.k = load i8, ptr %i.a, align 8
  %i.l = and i8 %i.k, 8
  %.not.i12 = icmp eq i8 %i.l, 0
  br i1 %.not.i12, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_Z7displayI11mpq_managerILb0EEEvRSoRT_RKNS3_7numeralE16ext_numeral_kind.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !12, !nonnull !13, !align !14
  tail call void @_ZNK11mpq_managerILb0EE7displayERSoRK3mpq(ptr noundef nonnull align 8 dereferenceable(728) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.m)
  br label %_Z7displayI11mpq_managerILb0EEEvRSoRT_RKNS3_7numeralE16ext_numeral_kind.exit13

bb.e:                                             ; preds = %_Z7displayI11mpq_managerILb0EEEvRSoRT_RKNS3_7numeralE16ext_numeral_kind.exit
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.18, i64 noundef 3) ; 0 uses
  br label %_Z7displayI11mpq_managerILb0EEEvRSoRT_RKNS3_7numeralE16ext_numeral_kind.exit13

_Z7displayI11mpq_managerILb0EEEvRSoRT_RKNS3_7numeralE16ext_numeral_kind.exit13: ; preds = %bb.d, %bb.e
  %i.p = load i8, ptr %i.a, align 8
  %i.q = and i8 %i.p, 2
  %.not = icmp eq i8 %i.q, 0
  %i.r = select i1 %.not, ptr @.str.6, ptr @.str.5
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.r, i64 noundef 1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZNK16interval_managerIN13dep_intervals9im_configEE10display_ppERSoRKNS1_8intervalE(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc i8 %i.b to i1
  %.str.1..str.2 = select i1 %i.c, ptr @.str.1, ptr @.str.2
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.1..str.2, i64 noundef 1) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i8, ptr %i.a, align 8
  %i.g = and i8 %i.f, 4
  %.not.i.not = icmp eq i8 %i.g, 0
  br i1 %.not.i.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.19, i64 noundef 8) ; 0 uses
  br label %_Z10display_ppI11mpq_managerILb0EEEvRSoRT_RKNS3_7numeralE16ext_numeral_kind.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !12, !nonnull !13, !align !14
  tail call void @_ZNK11mpq_managerILb0EE7displayERSoRK3mpq(ptr noundef nonnull align 8 dereferenceable(728) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br label %_Z10display_ppI11mpq_managerILb0EEEvRSoRT_RKNS3_7numeralE16ext_numeral_kind.exit

_Z10display_ppI11mpq_managerILb0EEEvRSoRT_RKNS3_7numeralE16ext_numeral_kind.exit: ; preds = %bb.b, %bb.c
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.10, i64 noundef 2) ; 0 uses
  %i.k = load i8, ptr %i.a, align 8
  %i.l = and i8 %i.k, 8
  %.not.i12 = icmp eq i8 %i.l, 0
  br i1 %.not.i12, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_Z10display_ppI11mpq_managerILb0EEEvRSoRT_RKNS3_7numeralE16ext_numeral_kind.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !12, !nonnull !13, !align !14
  tail call void @_ZNK11mpq_managerILb0EE7displayERSoRK3mpq(ptr noundef nonnull align 8 dereferenceable(728) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.m)
  br label %_Z10display_ppI11mpq_managerILb0EEEvRSoRT_RKNS3_7numeralE16ext_numeral_kind.exit13

bb.e:                                             ; preds = %_Z10display_ppI11mpq_managerILb0EEEvRSoRT_RKNS3_7numeralE16ext_numeral_kind.exit
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.20, i64 noundef 8) ; 0 uses
  br label %_Z10display_ppI11mpq_managerILb0EEEvRSoRT_RKNS3_7numeralE16ext_numeral_kind.exit13

_Z10display_ppI11mpq_managerILb0EEEvRSoRT_RKNS3_7numeralE16ext_numeral_kind.exit13: ; preds = %bb.d, %bb.e
  %i.p = load i8, ptr %i.a, align 8
  %i.q = and i8 %i.p, 2
  %.not = icmp eq i8 %i.q, 0
  %i.r = select i1 %.not, ptr @.str.6, ptr @.str.5
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.r, i64 noundef 1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK16interval_managerIN13dep_intervals9im_configEE15check_invariantERKNS1_8intervalE(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12, !nonnull !13, !align !14 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load i8, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = and i8 %i.d, 12
  %brmerge.not = icmp eq i8 %i.f, 0
  br i1 %brmerge.not, label %bb.b, label %_Z2eqI11mpq_managerILb0EEEbRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i8, ptr %i.g, align 4
  %i.i = and i8 %i.h, 1
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.c, label %_ZN11mpq_managerILb0EE2eqERK3mpzS3_.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, 1
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %.split.i.i, label %_ZN11mpq_managerILb0EE2eqERK3mpzS3_.exit.i.i

.split.i.i:                                       ; preds = %bb.c
  %i.o = load i32, ptr %1, align 8, !tbaa !17
  %i.p = load i32, ptr %i.e, align 8, !tbaa !17
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.d, label %_Z2eqI11mpq_managerILb0EEEbRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_.exit

_ZN11mpq_managerILb0EE2eqERK3mpzS3_.exit.i.i:     ; preds = %bb.c, %bb.b
  %i.r = tail call noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.d, label %_Z2eqI11mpq_managerILb0EEEbRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_.exit

bb.d:                                             ; preds = %_ZN11mpq_managerILb0EE2eqERK3mpzS3_.exit.i.i, %.split.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.w = load i8, ptr %i.v, align 4
  %i.x = and i8 %i.w, 1
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.aa = load i8, ptr %i.z, align 4
  %i.ab = and i8 %i.aa, 1
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %_Z2eqI11mpq_managerILb0EEEbRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = tail call noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.u) ; 0 uses
  br label %_Z2eqI11mpq_managerILb0EEEbRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_.exit

_Z2eqI11mpq_managerILb0EEEbRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_.exit: ; preds = %bb.e, %bb.a, %.split.i.i, %_ZN11mpq_managerILb0EE2eqERK3mpzS3_.exit.i.i, %bb.f
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN16interval_managerIN13dep_intervals9im_configEE3negERKNS1_8intervalERS3_R26interval_deps_combine_rule(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 2 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %4 = load <16 x i8>, ptr %i.a, align 8
  %i.b = shufflevector <16 x i8> %4, <16 x i8> poison, <2 x i32> zeroinitializer
  %i.c = and <2 x i8> %i.b, <i8 8, i8 4>
  %i.d = icmp eq <2 x i8> %i.c, zeroinitializer
  %i.e = select <2 x i1> %i.d, <2 x i16> <i16 2, i16 1>, <2 x i16> zeroinitializer
  store <2 x i16> %i.e, ptr %3, align 2, !tbaa !64
  tail call void @_ZN16interval_managerIN13dep_intervals9im_configEE3negERKNS1_8intervalERS3_(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(88) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN16interval_managerIN13dep_intervals9im_configEE7neg_jstERKNS1_8intervalER26interval_deps_combine_rule(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 2 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %3 = load <16 x i8>, ptr %i.a, align 8
  %i.b = shufflevector <16 x i8> %3, <16 x i8> poison, <2 x i32> zeroinitializer
  %i.c = and <2 x i8> %i.b, <i8 8, i8 4>
  %i.d = icmp eq <2 x i8> %i.c, zeroinitializer
  %i.e = select <2 x i1> %i.d, <2 x i16> <i16 2, i16 1>, <2 x i16> zeroinitializer
  store <2 x i16> %i.e, ptr %2, align 2, !tbaa !64
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN16interval_managerIN13dep_intervals9im_configEE3negERKNS1_8intervalERS3_(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8               ; 2 uses
  %i.c = and i8 %i.b, 4
  %.not = icmp eq i8 %i.c, 0
  %i.d = and i8 %i.b, 8
  %.not47 = icmp eq i8 %i.d, 0                    ; 2 uses
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12, !nonnull !13, !align !14 ; 4 uses
  br i1 %.not47, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.f, ptr noundef nonnull align 8 dereferenceable(88) %2)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.g)
  store i32 1, ptr %i.g, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4
  %i.j = and i8 %i.i, -2
  store i8 %i.j, ptr %i.h, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %i.l = load i8, ptr %i.k, align 8
  %i.m = or i8 %i.l, 5
  store i8 %i.m, ptr %i.k, align 8
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !12, !nonnull !13, !align !14 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
  store i32 1, ptr %i.p, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %i.r = load i8, ptr %i.q, align 4
  %i.s = and i8 %i.r, -2
  store i8 %i.s, ptr %i.q, align 4
  %i.t = load i8, ptr %i.k, align 8
  %i.u = or i8 %i.t, 10
  store i8 %i.u, ptr %i.k, align 8
  br label %bb.z

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.x = load i8, ptr %i.w, align 4
  %i.y = and i8 %i.x, 1
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = load i32, ptr %i.v, align 8, !tbaa !17
  store i32 %i.aa, ptr %2, align 8, !tbaa !17
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 4
  %i.ad = and i8 %i.ac, -2
  store i8 %i.ad, ptr %i.ab, align 4
  br label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.v)
  br label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i

_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i:     ; preds = %bb.f, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ah = load i8, ptr %i.ag, align 4
  %i.ai = and i8 %i.ah, 1
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i
  %i.ak = load i32, ptr %i.af, align 8, !tbaa !17
  store i32 %i.ak, ptr %i.ae, align 8, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.am = load i8, ptr %i.al, align 4
  %i.an = and i8 %i.am, -2
  store i8 %i.an, ptr %i.al, align 4
  br label %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit

bb.h:                                             ; preds = %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.af)
  br label %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit

_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit:       ; preds = %bb.g, %bb.h
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !12, !nonnull !13, !align !14
  tail call void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  %i.aq = load i8, ptr %i.ap, align 8             ; 2 uses
  %i.ar = and i8 %i.aq, -5
  store i8 %i.ar, ptr %i.ap, align 8
  %i.as = load i8, ptr %i.a, align 8
  %i.at = lshr i8 %i.as, 1
  %.lobit49 = and i8 %i.at, 1
  %i.au = and i8 %i.aq, -6
  %i.av = or disjoint i8 %.lobit49, %i.au
  store i8 %i.av, ptr %i.ap, align 8
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !12, !nonnull !13, !align !14 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.ay)
  store i32 1, ptr %i.ay, align 8, !tbaa !17
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 4
  %i.bb = and i8 %i.ba, -2
  store i8 %i.bb, ptr %i.az, align 4
  %i.bc = load i8, ptr %i.ap, align 8
  %i.bd = or i8 %i.bc, 10
  store i8 %i.bd, ptr %i.ap, align 8
  br label %bb.z

bb.i:                                             ; preds = %bb.a
  br i1 %.not47, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !12, !nonnull !13, !align !14 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bi = load i8, ptr %i.bh, align 4
  %i.bj = and i8 %i.bi, 1
  %i.bk = icmp eq i8 %i.bj, 0
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bl = load i32, ptr %1, align 8, !tbaa !17
  store i32 %i.bl, ptr %i.bg, align 8, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 4
  %i.bo = and i8 %i.bn, -2
  store i8 %i.bo, ptr %i.bm, align 4
  br label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i41

bb.l:                                             ; preds = %bb.j
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i41

_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i41:   ; preds = %bb.l, %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bs = load i8, ptr %i.br, align 4
  %i.bt = and i8 %i.bs, 1
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i41
  %i.bv = load i32, ptr %i.bq, align 8, !tbaa !17
  store i32 %i.bv, ptr %i.bp, align 8, !tbaa !17
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 4
  %i.by = and i8 %i.bx, -2
  store i8 %i.by, ptr %i.bw, align 4
  br label %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit42

bb.n:                                             ; preds = %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i41
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %i.bq)
  br label %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit42

_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit42:     ; preds = %bb.m, %bb.n
  %i.bz = load ptr, ptr %i.be, align 8, !tbaa !12, !nonnull !13, !align !14
  tail call void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %i.bg)
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  %i.cb = load i8, ptr %i.ca, align 8             ; 2 uses
  %i.cc = and i8 %i.cb, -9
  store i8 %i.cc, ptr %i.ca, align 8
  %i.cd = load i8, ptr %i.a, align 8
  %i.ce = shl i8 %i.cd, 1
  %i.cf = and i8 %i.ce, 2
  %i.cg = and i8 %i.cb, -11
  %i.ch = or disjoint i8 %i.cf, %i.cg
  store i8 %i.ch, ptr %i.ca, align 8
  %i.ci = load ptr, ptr %i.be, align 8, !tbaa !12, !nonnull !13, !align !14 ; 2 uses
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ci, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %i.cj)
  store i32 1, ptr %i.cj, align 8, !tbaa !17
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 4
  %i.cm = and i8 %i.cl, -2
  store i8 %i.cm, ptr %i.ck, align 4
  %i.cn = load i8, ptr %i.ca, align 8
  %i.co = or i8 %i.cn, 5
  store i8 %i.co, ptr %i.ca, align 8
  br label %bb.z

bb.o:                                             ; preds = %bb.i
  %i.cp = icmp eq ptr %1, %2
  br i1 %i.cp, label %bb.p, label %bb.q
end_hunk_0
