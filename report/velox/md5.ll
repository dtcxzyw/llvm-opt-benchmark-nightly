inline.NumInlined: 515
inline.NumDeleted: 254
begin_hunk_0_@_ZN5folly11toAppendFitIJoPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSC_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSB_:bb.a

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.v ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.t, 1
  br i1 %cond.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = load i8, ptr %i.a, align 16, !tbaa !9
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !9
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvoPT_.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr nonnull align 16 %i.a, i64 %i.t, i1 false)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvoPT_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef %i.v, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.t)
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvoPT_.exit

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvoPT_.exit: ; preds = %bb.f, %bb.h, %bb.i, %bb.j
  store i64 %i.y, ptr %i.u, align 8, !tbaa !19
  %i.ah = load ptr, ptr %i.q, align 8, !tbaa !24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.y
  store i8 0, ptr %i.ai, align 1, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = icmp eq ptr %i.a, %i.b                   ; 2 uses
  %i.d = load i64, ptr %i.b, align 8              ; 2 uses
  %i.e = select i1 %i.c, i64 15, i64 %i.d         ; 2 uses
  %.not = icmp ugt i64 %1, %i.e
  br i1 %.not, label %bb.a, label %bb.g

bb.a:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.f = icmp slt i64 %1, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = shl nuw i64 %i.e, 1                      ; 2 uses
  %i.h = icmp ult i64 %1, %i.g
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 9223372036854775807)
  %.0 = select i1 %i.h, i64 %spec.store.select.i, i64 %1 ; 2 uses
  %i.i = add nuw i64 %.0, 1                       ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !35

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.c
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #26 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !19   ; 2 uses
  %i.n = add i64 %i.m, 1                          ; 2 uses
  switch i64 %i.n, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  ]

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = load i8, ptr %i.a, align 1, !tbaa !9
  store i8 %i.o, ptr %i.k, align 1, !tbaa !9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.a, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.e, %bb.f
  br i1 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.p = icmp ult i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.q = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.q) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.k, ptr %0, align 8, !tbaa !24
  store i64 %.0, ptr %i.b, align 8, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5folly6detail18unsafeTelescope128EPcS1_o(ptr noundef %0, ptr noundef %1, i128 noundef %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca i64, align 8                      ; 11 uses
  %3 = alloca %class.anon, align 8                ; 8 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !28
  store ptr %1, ptr %i.b, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 0, ptr %i.c, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %i.c, ptr %3, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.d, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.b, ptr %i.e, align 8, !tbaa !39
  %.not = icmp ult i128 %2, 18446744073709551616
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = udiv i128 %2, 10000000000000000000       ; 3 uses
  %i.g = mul i128 %i.f, 10000000000000000000
  %.decomposed = sub i128 %2, %i.g
  %i.h = trunc nuw i128 %.decomposed to i64       ; 20 uses
  %.not13 = icmp ult i128 %2, -155814926183842947303374607431768211456
  br i1 %.not13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = urem i128 %i.f, 10000000000000000000
  %i.j = trunc nuw i128 %i.i to i64               ; 10 uses
  %i.k = udiv i128 %2, 100000000000000000000000000000000000000
  call void @_ZZN5folly6detail18unsafeTelescope128EPcS1_oENKUloE_clEo(ptr noundef nonnull align 8 dereferenceable(24) %3, i128 noundef %i.k)
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.m = load i64, ptr %i.c, align 8, !tbaa !36
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m ; 10 uses
  %i.o = udiv i64 %i.j, 100
  %i.p = urem i64 %i.j, 100
  %i.q = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !42
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 17
  store i16 %i.r, ptr %i.s, align 1
  %i.t = udiv i64 %i.j, 10000
  %i.u = urem i64 %i.o, 100
  %i.v = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2, !tbaa !42
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 15
  store i16 %i.w, ptr %i.x, align 1
  %i.y = udiv i64 %i.j, 1000000
  %i.z = urem i64 %i.t, 100
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !42
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 13
  store i16 %i.ab, ptr %i.ac, align 1
  %i.ad = udiv i64 %i.j, 100000000
  %i.ae = urem i64 %i.y, 100
  %i.af = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !42
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 11
  store i16 %i.ag, ptr %i.ah, align 1
  %i.ai = udiv i64 %i.j, 10000000000
  %i.aj = urem i64 %i.ad, 100
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !42
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  store i16 %i.al, ptr %i.am, align 1
  %i.an = udiv i64 %i.j, 1000000000000
  %.lhs.trunc.i = trunc nuw nsw i64 %i.ai to i32
  %i.ao = urem i32 %.lhs.trunc.i, 100
  %.zext.i = zext nneg i32 %i.ao to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.zext.i
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !42
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 7
  store i16 %i.aq, ptr %i.ar, align 1
  %i.as = udiv i64 %i.j, 100000000000000
  %.lhs.trunc5.i = trunc nuw nsw i64 %i.an to i32
  %i.at = urem i32 %.lhs.trunc5.i, 100
  %.zext6.i = zext nneg i32 %i.at to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.zext6.i
  %i.av = load i16, ptr %i.au, align 2, !tbaa !42
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  store i16 %i.av, ptr %i.aw, align 1
  %i.ax = udiv i64 %i.j, 10000000000000000
  %.lhs.trunc7.i = trunc nuw nsw i64 %i.as to i32
  %i.ay = urem i32 %.lhs.trunc7.i, 100
  %.zext8.i = zext nneg i32 %i.ay to i64
  %i.az = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.zext8.i
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !42
  %i.bb = getelementptr inbounds nuw i8, ptr %i.n, i64 3
  store i16 %i.ba, ptr %i.bb, align 1
  %.lhs.trunc9.i = trunc nuw nsw i64 %i.ax to i16
  %i.bc = urem i16 %.lhs.trunc9.i, 100
  %.zext10.i = zext nneg i16 %i.bc to i64
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.zext10.i
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !42
  %i.bf = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i16 %i.be, ptr %i.bf, align 1
  %i.bg = udiv i64 %i.j, 1000000000000000000
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.bg
  %4 = load i16, ptr %i.bh, align 2, !tbaa !42
  %5 = lshr i16 %4, 8
  %6 = trunc nuw i16 %5 to i8
  store i8 %6, ptr %i.n, align 1, !tbaa !9
  %i.bi = load i64, ptr %i.c, align 8, !tbaa !36
  %i.bj = add i64 %i.bi, 19                       ; 2 uses
  store i64 %i.bj, ptr %i.c, align 8, !tbaa !36
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bj ; 10 uses
  %i.bm = udiv i64 %i.h, 100
  %i.bn = urem i64 %i.h, 100
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !42
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 17
  store i16 %i.bp, ptr %i.bq, align 1
  %i.br = udiv i64 %i.h, 10000
  %i.bs = urem i64 %i.bm, 100
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !42
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 15
  store i16 %i.bu, ptr %i.bv, align 1
  %i.bw = udiv i64 %i.h, 1000000
  %i.bx = urem i64 %i.br, 100
  %i.by = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !42
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 13
  store i16 %i.bz, ptr %i.ca, align 1
  %i.cb = udiv i64 %i.h, 100000000
  %i.cc = urem i64 %i.bw, 100
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.cc
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !42
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bl, i64 11
  store i16 %i.ce, ptr %i.cf, align 1
  %i.cg = udiv i64 %i.h, 10000000000
  %i.ch = urem i64 %i.cb, 100
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.ch
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !42
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bl, i64 9
  store i16 %i.cj, ptr %i.ck, align 1
  %i.cl = udiv i64 %i.h, 1000000000000
  %.lhs.trunc.i14 = trunc nuw nsw i64 %i.cg to i32
  %i.cm = urem i32 %.lhs.trunc.i14, 100
  %.zext.i15 = zext nneg i32 %i.cm to i64
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.zext.i15
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !42
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bl, i64 7
  store i16 %i.co, ptr %i.cp, align 1
  %i.cq = udiv i64 %i.h, 100000000000000
  %.lhs.trunc5.i16 = trunc nuw nsw i64 %i.cl to i32
  %i.cr = urem i32 %.lhs.trunc5.i16, 100
  %.zext6.i17 = zext nneg i32 %i.cr to i64
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.zext6.i17
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !42
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bl, i64 5
  store i16 %i.ct, ptr %i.cu, align 1
  %i.cv = udiv i64 %i.h, 10000000000000000
  %.lhs.trunc7.i18 = trunc nuw nsw i64 %i.cq to i32
  %i.cw = urem i32 %.lhs.trunc7.i18, 100
  %.zext8.i19 = zext nneg i32 %i.cw to i64
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.zext8.i19
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !42
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  store i16 %i.cy, ptr %i.cz, align 1
  %.lhs.trunc9.i20 = trunc nuw nsw i64 %i.cv to i16
  %i.da = urem i16 %.lhs.trunc9.i20, 100
  %.zext10.i21 = zext nneg i16 %i.da to i64
  %i.db = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.zext10.i21
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !42
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store i16 %i.dc, ptr %i.dd, align 1
  %i.de = udiv i64 %i.h, 1000000000000000000
  %i.df = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.de
  %7 = load i16, ptr %i.df, align 2, !tbaa !42
  %8 = lshr i16 %7, 8
  %9 = trunc nuw i16 %8 to i8
  store i8 %9, ptr %i.bl, align 1, !tbaa !9
  %i.dg = load i64, ptr %i.c, align 8, !tbaa !36
  %i.dh = add i64 %i.dg, 19
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @_ZZN5folly6detail18unsafeTelescope128EPcS1_oENKUloE_clEo(ptr noundef nonnull align 8 dereferenceable(24) %3, i128 noundef %i.f)
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.dj = load i64, ptr %i.c, align 8, !tbaa !36
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dj ; 10 uses
  %i.dl = udiv i64 %i.h, 100
  %i.dm = urem i64 %i.h, 100
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.dm
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !42
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 17
  store i16 %i.do, ptr %i.dp, align 1
  %i.dq = udiv i64 %i.h, 10000
  %i.dr = urem i64 %i.dl, 100
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.dr
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !42
  %i.du = getelementptr inbounds nuw i8, ptr %i.dk, i64 15
  store i16 %i.dt, ptr %i.du, align 1
  %i.dv = udiv i64 %i.h, 1000000
  %i.dw = urem i64 %i.dq, 100
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.dw
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !42
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dk, i64 13
  store i16 %i.dy, ptr %i.dz, align 1
  %i.ea = udiv i64 %i.h, 100000000
  %i.eb = urem i64 %i.dv, 100
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.eb
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !42
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dk, i64 11
  store i16 %i.ed, ptr %i.ee, align 1
  %i.ef = udiv i64 %i.h, 10000000000
  %i.eg = urem i64 %i.ea, 100
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.eg
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !42
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dk, i64 9
  store i16 %i.ei, ptr %i.ej, align 1
  %i.ek = udiv i64 %i.h, 1000000000000
  %.lhs.trunc.i23 = trunc nuw nsw i64 %i.ef to i32
  %i.el = urem i32 %.lhs.trunc.i23, 100
  %.zext.i24 = zext nneg i32 %i.el to i64
  %i.em = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.zext.i24
  %i.en = load i16, ptr %i.em, align 2, !tbaa !42
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dk, i64 7
  store i16 %i.en, ptr %i.eo, align 1
  %i.ep = udiv i64 %i.h, 100000000000000
  %.lhs.trunc5.i25 = trunc nuw nsw i64 %i.ek to i32
  %i.eq = urem i32 %.lhs.trunc5.i25, 100
  %.zext6.i26 = zext nneg i32 %i.eq to i64
  %i.er = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.zext6.i26
  %i.es = load i16, ptr %i.er, align 2, !tbaa !42
  %i.et = getelementptr inbounds nuw i8, ptr %i.dk, i64 5
  store i16 %i.es, ptr %i.et, align 1
  %i.eu = udiv i64 %i.h, 10000000000000000
  %.lhs.trunc7.i27 = trunc nuw nsw i64 %i.ep to i32
  %i.ev = urem i32 %.lhs.trunc7.i27, 100
  %.zext8.i28 = zext nneg i32 %i.ev to i64
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.zext8.i28
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !42
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dk, i64 3
  store i16 %i.ex, ptr %i.ey, align 1
  %.lhs.trunc9.i29 = trunc nuw nsw i64 %i.eu to i16
  %i.ez = urem i16 %.lhs.trunc9.i29, 100
  %.zext10.i30 = zext nneg i16 %i.ez to i64
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.zext10.i30
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !42
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  store i16 %i.fb, ptr %i.fc, align 1
  %i.fd = udiv i64 %i.h, 1000000000000000000
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.fd
  %10 = load i16, ptr %i.fe, align 2, !tbaa !42
  %11 = lshr i16 %10, 8
  %12 = trunc nuw i16 %11 to i8
  store i8 %12, ptr %i.dk, align 1, !tbaa !9
  %i.ff = load i64, ptr %i.c, align 8, !tbaa !36
  %i.fg = add i64 %i.ff, 19
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @_ZZN5folly6detail18unsafeTelescope128EPcS1_oENKUloE_clEo(ptr noundef nonnull align 8 dereferenceable(24) %3, i128 noundef %2)
  %.1.pre = load i64, ptr %i.c, align 8, !tbaa !36
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.1 = phi i64 [ %i.dh, %bb.c ], [ %i.fg, %bb.d ], [ %.1.pre, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  ret i64 %.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN5folly6detail18unsafeTelescope128EPcS1_oENKUloE_clEo(ptr noundef nonnull align 8 dereferenceable(24) %0, i128 noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44, !nonnull !46, !align !47
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48, !nonnull !46, !align !47
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28   ; 2 uses
  %i.g = trunc i128 %1 to i64                     ; 22 uses
  %i.h = load i64, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, align 8, !tbaa !36
  %i.i = icmp ugt i64 %i.h, %i.g
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 8), align 8
  %i.k = icmp ugt i64 %i.j, %i.g
  %or.cond = select i1 %i.i, i1 true, i1 %i.k, !prof !49
  br i1 %or.cond, label %.loopexit, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 16), align 8, !tbaa !36
  %i.m = icmp ugt i64 %i.l, %i.g
  br i1 %i.m, label %.loopexit, label %bb.c, !prof !35

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 24), align 8, !tbaa !36
  %i.o = icmp ugt i64 %i.n, %i.g
  br i1 %i.o, label %.loopexit, label %bb.d, !prof !35

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 32), align 8, !tbaa !36
  %i.q = icmp ugt i64 %i.p, %i.g
  br i1 %i.q, label %.loopexit, label %bb.e, !prof !35

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 40), align 8, !tbaa !36
  %i.s = icmp ugt i64 %i.r, %i.g
  br i1 %i.s, label %.loopexit, label %bb.f, !prof !35

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 48), align 8, !tbaa !36
  %i.u = icmp ugt i64 %i.t, %i.g
  br i1 %i.u, label %.loopexit, label %bb.g, !prof !35

bb.g:                                             ; preds = %bb.f
  %i.v = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 56), align 8, !tbaa !36
  %i.w = icmp ugt i64 %i.v, %i.g
  br i1 %i.w, label %.loopexit, label %bb.h, !prof !35

bb.h:                                             ; preds = %bb.g
  %i.x = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 64), align 8, !tbaa !36
  %i.y = icmp ugt i64 %i.x, %i.g
  br i1 %i.y, label %.loopexit, label %bb.i, !prof !35

bb.i:                                             ; preds = %bb.h
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 72), align 8, !tbaa !36
  %i.aa = icmp ugt i64 %i.z, %i.g
  br i1 %i.aa, label %.loopexit, label %bb.j, !prof !35

bb.j:                                             ; preds = %bb.i
  %i.ab = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 80), align 8, !tbaa !36
  %i.ac = icmp ugt i64 %i.ab, %i.g
  br i1 %i.ac, label %.loopexit, label %bb.k, !prof !35

bb.k:                                             ; preds = %bb.j
  %i.ad = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 88), align 8, !tbaa !36
  %i.ae = icmp ugt i64 %i.ad, %i.g
  br i1 %i.ae, label %.loopexit, label %bb.l, !prof !35

bb.l:                                             ; preds = %bb.k
  %i.af = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 96), align 8, !tbaa !36
  %i.ag = icmp ugt i64 %i.af, %i.g
  br i1 %i.ag, label %.loopexit, label %bb.m, !prof !35

bb.m:                                             ; preds = %bb.l
  %i.ah = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 104), align 8, !tbaa !36
  %i.ai = icmp ugt i64 %i.ah, %i.g
  br i1 %i.ai, label %.loopexit, label %bb.n, !prof !35

bb.n:                                             ; preds = %bb.m
  %i.aj = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 112), align 8, !tbaa !36
  %i.ak = icmp ugt i64 %i.aj, %i.g
  br i1 %i.ak, label %.loopexit, label %bb.o, !prof !35

bb.o:                                             ; preds = %bb.n
  %i.al = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 120), align 8, !tbaa !36
  %i.am = icmp ugt i64 %i.al, %i.g
  br i1 %i.am, label %.loopexit, label %bb.p, !prof !35

bb.p:                                             ; preds = %bb.o
  %i.an = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 128), align 8, !tbaa !36
  %i.ao = icmp ugt i64 %i.an, %i.g
  br i1 %i.ao, label %.loopexit, label %bb.q, !prof !35

bb.q:                                             ; preds = %bb.p
  %i.ap = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 136), align 8, !tbaa !36
  %i.aq = icmp ugt i64 %i.ap, %i.g
  br i1 %i.aq, label %.loopexit, label %bb.r, !prof !35

bb.r:                                             ; preds = %bb.q
  %i.ar = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 144), align 8, !tbaa !36
  %i.as = icmp ugt i64 %i.ar, %i.g
  br i1 %i.as, label %.loopexit, label %bb.s, !prof !35

bb.s:                                             ; preds = %bb.r
  %i.at = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 152), align 8, !tbaa !36
  %i.au = icmp ugt i64 %i.at, %i.g
  br i1 %i.au, label %_ZN5folly6detail19to_ascii_size_arrayILm10EEEmm.exit, label %.loopexit, !prof !35

_ZN5folly6detail19to_ascii_size_arrayILm10EEEmm.exit: ; preds = %bb.s
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %_ZN5folly6detail19to_ascii_size_arrayILm10EEEmm.exit
  %i.av = phi i1 [ true, %bb.s ], [ false, %bb.a ], [ true, %_ZN5folly6detail19to_ascii_size_arrayILm10EEEmm.exit ], [ false, %bb.b ], [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.g ], [ true, %bb.h ], [ true, %bb.i ], [ true, %bb.j ], [ true, %bb.k ], [ true, %bb.l ], [ true, %bb.m ], [ true, %bb.n ], [ true, %bb.o ], [ true, %bb.p ], [ true, %bb.q ], [ true, %bb.r ]
  %i.aw = phi i64 [ 20, %bb.s ], [ 1, %bb.a ], [ 19, %_ZN5folly6detail19to_ascii_size_arrayILm10EEEmm.exit ], [ 2, %bb.b ], [ 3, %bb.c ], [ 4, %bb.d ], [ 5, %bb.e ], [ 6, %bb.f ], [ 7, %bb.g ], [ 8, %bb.h ], [ 9, %bb.i ], [ 10, %bb.j ], [ 11, %bb.k ], [ 12, %bb.l ], [ 13, %bb.m ], [ 14, %bb.n ], [ 15, %bb.o ], [ 16, %bb.p ], [ 17, %bb.q ], [ 18, %bb.r ] ; 5 uses
  %i.ax = icmp ult ptr %i.f, %i.c
  %i.ay = ptrtoint ptr %i.f to i64
  %i.az = ptrtoint ptr %i.c to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = icmp ult i64 %i.ba, %i.aw
  %i.bc = select i1 %i.ax, i1 true, i1 %i.bb, !prof !35
  br i1 %i.bc, label %_ZN5folly6detail19to_ascii_with_routeILm10ENS_17to_ascii_alphabetILb0EEEEEmPcPKcm.exit, label %.preheader, !prof !35

.preheader:                                       ; preds = %.loopexit
  br i1 %i.av, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.0.i28 = phi i64 [ %i.be, %.lr.ph ], [ %i.g, %.preheader ] ; 2 uses
  %.014.i7 = phi i64 [ %i.bd, %.lr.ph ], [ %i.aw, %.preheader ]
  %i.bd = add i64 %.014.i7, -2                    ; 4 uses
  %i.be = udiv i64 %.0.i28, 100                   ; 2 uses
  %i.bf = urem i64 %.0.i28, 100
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !42
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bd
  store i16 %i.bh, ptr %i.bi, align 1
  %i.bj = icmp ugt i64 %i.bd, 2
  br i1 %i.bj, label %.lr.ph, label %._crit_edge, !llvm.loop !50

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.014.i.lcssa = phi i64 [ %i.aw, %.preheader ], [ %i.bd, %.lr.ph ]
  %.0.i2.lcssa = phi i64 [ %i.g, %.preheader ], [ %i.be, %.lr.ph ]
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.0.i2.lcssa
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !42 ; 2 uses
  %i.bm = icmp eq i64 %.014.i.lcssa, 2
  br i1 %i.bm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge
  store i16 %i.bl, ptr %i.c, align 1
  br label %_ZN5folly6detail19to_ascii_with_routeILm10ENS_17to_ascii_alphabetILb0EEEEEmPcPKcm.exit

bb.u:                                             ; preds = %._crit_edge
  %i.bn = lshr i16 %i.bl, 8
  %i.bo = trunc nuw i16 %i.bn to i8
  store i8 %i.bo, ptr %i.c, align 1, !tbaa !9
  br label %_ZN5folly6detail19to_ascii_with_routeILm10ENS_17to_ascii_alphabetILb0EEEEEmPcPKcm.exit

_ZN5folly6detail19to_ascii_with_routeILm10ENS_17to_ascii_alphabetILb0EEEEEmPcPKcm.exit: ; preds = %bb.u, %bb.t, %.loopexit
  %.0.i = phi i64 [ 0, %.loopexit ], [ %i.aw, %bb.t ], [ %i.aw, %bb.u ]
  %i.bp = load ptr, ptr %0, align 8, !tbaa !51, !nonnull !46, !align !47
  store i64 %.0.i, ptr %i.bp, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19   ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !24     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 3 uses
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %i.k = load i64, ptr %i.h, align 8              ; 2 uses
  %i.l = select i1 %i.i, i64 15, i64 %i.k         ; 2 uses
end_hunk_0
