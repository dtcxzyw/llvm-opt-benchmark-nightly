inline.NumInlined: 128
inline.NumDeleted: 78
begin_hunk_0_@_ZN4absl13time_internal4cctz17FixedOffsetToNameB5cxx11ERKNSt6chrono8durationIlSt5ratioILl1ELl1EEEE:bb.a
  %i.ai = sext i8 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr @_ZN4absl13time_internal4cctz12_GLOBAL__N_17kDigitsE, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i8 %i.ak, ptr %i.ag, align 1
  %i.am = srem i8 %.lhs.trunc, 10
  %i.an = sext i8 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr @_ZN4absl13time_internal4cctz12_GLOBAL__N_17kDigitsE, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  store i8 %i.ap, ptr %i.al, align 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 58, ptr %i.aq, align 1
  %.lhs.trunc47 = trunc nsw i32 %.1 to i8         ; 2 uses
  %i.as = sdiv i8 %.lhs.trunc47, 10
  %i.at = sext i8 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr @_ZN4absl13time_internal4cctz12_GLOBAL__N_17kDigitsE, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 %i.av, ptr %i.ar, align 16
  %i.ax = srem i8 %.lhs.trunc47, 10
  %i.ay = sext i8 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr @_ZN4absl13time_internal4cctz12_GLOBAL__N_17kDigitsE, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i8 %i.ba, ptr %i.aw, align 1
  store i8 0, ptr %i.bb, align 2
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bc, ptr %0, align 8
  %i.bd = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #9 ; 8 uses
  %i.be = icmp ugt i64 %i.bd, 15
  br i1 %i.be, label %bb.f, label %._crit_edge.i.i36

bb.f:                                             ; preds = %bb.e
  %i.bf = icmp slt i64 %i.bd, 0
  br i1 %i.bf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #10
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.bg = add nuw i64 %i.bd, 1                    ; 2 uses
  %i.bh = icmp slt i64 %i.bg, 0
  br i1 %i.bh, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i37, !prof !5

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt17__throw_bad_allocv() #10
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i37: ; preds = %bb.h
  %i.bi = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #11 ; 2 uses
  store ptr %i.bi, ptr %0, align 8
  store i64 %i.bd, ptr %i.bc, align 8
  br label %._crit_edge.i.i36

._crit_edge.i.i36:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i37, %bb.e
  %i.bj = phi ptr [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i37 ], [ %i.bc, %bb.e ] ; 3 uses
  switch i64 %i.bd, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit38
  ]

bb.j:                                             ; preds = %._crit_edge.i.i36
  store i8 70, ptr %i.bj, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit38

bb.k:                                             ; preds = %._crit_edge.i.i36
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull align 16 %i.a, i64 %i.bd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit38: ; preds = %._crit_edge.i.i36, %bb.j, %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bd, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bd
  store i8 0, ptr %i.bl, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit38, %.critedge, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4absl13time_internal4cctz17FixedOffsetToAbbrB5cxx11ERKNSt6chrono8durationIlSt5ratioILl1ELl1EEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #3 {
bb.a:
  tail call void @_ZN4absl13time_internal4cctz17FixedOffsetToNameB5cxx11ERKNSt6chrono8durationIlSt5ratioILl1ELl1EEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 18
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.d, ptr noundef nonnull align 1 dereferenceable(9) %i.e, i64 9, i1 false)
  %i.f = load i64, ptr %i.a, align 8
  %i.g = add i64 %i.f, -9                         ; 2 uses
  store i64 %i.g, ptr %i.a, align 8
  %i.h = load ptr, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.g
  store i8 0, ptr %i.i, align 1
  %i.j = load i64, ptr %i.a, align 8              ; 5 uses
  %i.k = icmp ult i64 %i.j, 6
  br i1 %i.k, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i64 noundef 6, i64 noundef %i.j) #10
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
  %i.l = icmp ne i64 %i.j, 6
  %spec.select.i.i2 = zext i1 %i.l to i64         ; 2 uses
  %i.m = icmp ugt i64 %i.j, 7
  br i1 %i.m, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit4

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
  %i.n = add i64 %i.j, -7                         ; 2 uses
  %i.o = load ptr, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 6 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %spec.select.i.i2 ; 2 uses
  %cond = icmp eq i64 %i.n, 1
  br i1 %cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load i8, ptr %i.q, align 1
  store i8 %i.r, ptr %i.p, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit4

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 1 %i.q, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit4: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i, %bb.d, %bb.e
  %i.s = load i64, ptr %i.a, align 8
  %i.t = sub i64 %i.s, %spec.select.i.i2          ; 2 uses
  store i64 %i.t, ptr %i.a, align 8
  %i.u = load ptr, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store i8 0, ptr %i.v, align 1
  %i.w = load i64, ptr %i.a, align 8              ; 5 uses
  %i.x = icmp ult i64 %i.w, 3
  br i1 %i.x, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i5

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit4
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i64 noundef 3, i64 noundef %i.w) #10
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit4
  %i.y = icmp ne i64 %i.w, 3
  %spec.select.i.i6 = zext i1 %i.y to i64         ; 2 uses
  %i.z = icmp ugt i64 %i.w, 4
  br i1 %i.z, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit8

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i5
  %i.aa = add i64 %i.w, -4                        ; 2 uses
  %i.ab = load ptr, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 3 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %spec.select.i.i6 ; 2 uses
  %cond28 = icmp eq i64 %i.aa, 1
  br i1 %cond28, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = load i8, ptr %i.ad, align 1
  store i8 %i.ae, ptr %i.ac, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit8

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 1 %i.ad, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit8: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i5, %bb.h, %bb.i
  %i.af = load i64, ptr %i.a, align 8
  %i.ag = sub i64 %i.af, %spec.select.i.i6        ; 2 uses
  store i64 %i.ag, ptr %i.a, align 8
  %i.ah = load ptr, ptr %0, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  store i8 0, ptr %i.ai, align 1
  %i.aj = load ptr, ptr %0, align 8               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 5 ; 4 uses
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = icmp eq i8 %i.al, 48
  br i1 %i.am, label %bb.j, label %bb.v

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit8
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 6
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = icmp eq i8 %i.ao, 48
  br i1 %i.ap, label %bb.k, label %bb.v

bb.k:                                             ; preds = %bb.j
  %i.aq = load i64, ptr %i.a, align 8             ; 5 uses
  %i.ar = icmp ult i64 %i.aq, 5
  br i1 %i.ar, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i9

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i64 noundef 5, i64 noundef %i.aq) #10
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i9: ; preds = %bb.k
  %i.as = add i64 %i.aq, -5                       ; 2 uses
  %spec.select.i.i10 = tail call noundef i64 @llvm.umin.i64(i64 %i.as, i64 2) ; 3 uses
  %i.at = add nuw nsw i64 %spec.select.i.i10, 5   ; 2 uses
  %2 = icmp ne i64 %i.aq, %i.at
  %3 = icmp ne i64 %i.as, 0
  %or.cond.i.i11 = and i1 %3, %2
  br i1 %or.cond.i.i11, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit12

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i9
  %i.au = sub i64 %i.aq, %i.at                    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 %spec.select.i.i10 ; 2 uses
  switch i64 %i.au, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit12
  ]

bb.n:                                             ; preds = %bb.m
  %i.aw = load i8, ptr %i.av, align 1
  store i8 %i.aw, ptr %i.ak, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit12

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull align 1 %i.av, i64 %i.au, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit12: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i9, %bb.m, %bb.n, %bb.o
  %i.ax = load i64, ptr %i.a, align 8
  %i.ay = sub i64 %i.ax, %spec.select.i.i10       ; 2 uses
  store i64 %i.ay, ptr %i.a, align 8
  %i.az = load ptr, ptr %0, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ay
  store i8 0, ptr %i.ba, align 1
  %i.bb = load ptr, ptr %0, align 8               ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 3 ; 4 uses
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = icmp eq i8 %i.bd, 48
  br i1 %i.be, label %bb.p, label %bb.v

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = icmp eq i8 %i.bg, 48
  br i1 %i.bh, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.bi = load i64, ptr %i.a, align 8             ; 5 uses
  %i.bj = icmp ult i64 %i.bi, 3
  br i1 %i.bj, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i13

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i64 noundef 3, i64 noundef %i.bi) #10
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i13: ; preds = %bb.q
  %i.bk = add i64 %i.bi, -3                       ; 2 uses
  %spec.select.i.i14 = tail call noundef i64 @llvm.umin.i64(i64 %i.bk, i64 2) ; 3 uses
  %i.bl = add nuw nsw i64 %spec.select.i.i14, 3   ; 2 uses
  %4 = icmp ne i64 %i.bi, %i.bl
  %5 = icmp ne i64 %i.bk, 0
  %or.cond.i.i15 = and i1 %5, %4
  br i1 %or.cond.i.i15, label %bb.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit16

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i13
  %i.bm = sub i64 %i.bi, %i.bl                    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 %spec.select.i.i14 ; 2 uses
  switch i64 %i.bm, label %bb.u [
    i64 1, label %bb.t
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit16
  ]

bb.t:                                             ; preds = %bb.s
  %i.bo = load i8, ptr %i.bn, align 1
  store i8 %i.bo, ptr %i.bc, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit16

bb.u:                                             ; preds = %bb.s
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr nonnull align 1 %i.bn, i64 %i.bm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit16: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i13, %bb.s, %bb.t, %bb.u
  %i.bp = load i64, ptr %i.a, align 8
  %i.bq = sub i64 %i.bp, %spec.select.i.i14       ; 2 uses
  store i64 %i.bq, ptr %i.a, align 8
  %i.br = load ptr, ptr %0, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bq
  store i8 0, ptr %i.bs, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit12, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit16, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_0
