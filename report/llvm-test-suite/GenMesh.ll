inline.NumInlined: 678
inline.NumDeleted: 216
begin_hunk_0_@_ZN7GenMesh8generateERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_:bb.a
  %i.az = sdiv i32 %i.aw, %i.av                   ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !36
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %i.bc = mul nsw i32 %i.bb, %i.ax
  %i.bd = sdiv i32 %i.bc, %i.av                   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !37
  %i.bf = add nsw i32 %i.ax, 1
  %i.bg = mul nsw i32 %i.bb, %i.bf
  %i.bh = sdiv i32 %i.bg, %i.av
  %i.bi = sub nsw i32 %i.bh, %i.bd
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.bi, ptr %i.bj, align 8, !tbaa !38
  %i.bk = load i32, ptr %i.b, align 4, !tbaa !27  ; 2 uses
  %i.bl = mul nsw i32 %i.bk, %i.az
  %i.bm = sdiv i32 %i.bl, %i.au                   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !39
  %i.bo = add nsw i32 %i.az, 1
  %i.bp = mul nsw i32 %i.bk, %i.bo
  %i.bq = sdiv i32 %i.bp, %i.au
  %i.br = sub nsw i32 %i.bq, %i.bm
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !40
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !12 ; 3 uses
  switch i64 %i.bu, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread38 [
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZN7GenMesh9calcNumPEEv.exit
  %i.bv = load ptr, ptr %0, align 8, !tbaa !16    ; 3 uses
  %i.bw = load i16, ptr %i.bv, align 1
  %i.bx = xor i16 %i.bw, 26992
  %i.by = getelementptr i8, ptr %i.bv, i64 2
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = zext i8 %i.bz to i16
  %i.cb = xor i16 %i.ca, 101
  %i.cc = or i16 %i.bx, %i.cb
  %i.cd = icmp ne i16 %i.cc, 0
  %i.ce = zext i1 %i.cd to i32
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  tail call void @_ZN7GenMesh11generatePieERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %5, ptr noundef nonnull align 1 %6, ptr noundef nonnull align 1 %7, ptr noundef nonnull align 1 %8, ptr noundef nonnull align 1 %9, ptr noundef nonnull align 1 %10)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread38

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33: ; preds = %_ZN7GenMesh9calcNumPEEv.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !16
  %bcmp.i32 = tail call i32 @bcmp(ptr %.pre, ptr nonnull @.str.4, i64 %i.bu)
  %i.cg = icmp eq i32 %bcmp.i32, 0
  br i1 %i.cg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread38

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33
  tail call void @_ZN7GenMesh12generateRectERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %5, ptr noundef nonnull align 1 %6, ptr noundef nonnull align 1 %7, ptr noundef nonnull align 1 %8, ptr noundef nonnull align 1 %9, ptr noundef nonnull align 1 %10)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread38

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %bcmp.i34 = tail call i32 @bcmp(ptr nonnull %i.bv, ptr nonnull @.str.5, i64 %i.bu)
  %i.ch = icmp eq i32 %bcmp.i34, 0
  br i1 %i.ch, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread38

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35
  tail call void @_ZN7GenMesh11generateHexERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %5, ptr noundef nonnull align 1 %6, ptr noundef nonnull align 1 %7, ptr noundef nonnull align 1 %8, ptr noundef nonnull align 1 %9, ptr noundef nonnull align 1 %10)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread38

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread38: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33, %_ZN7GenMesh9calcNumPEEv.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define dso_local void @_ZN7GenMesh9calcNumPEEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load <2 x i32>, ptr %i.a, align 8, !tbaa !4
  %i.c = sitofp <2 x i32> %i.b to <2 x double>    ; 2 uses
  %i.d = extractelement <2 x double> %i.c, i64 0  ; 3 uses
  %i.e = extractelement <2 x double> %i.c, i64 1  ; 3 uses
  %i.f = fcmp ogt double %i.d, %i.e               ; 3 uses
  %.037 = select i1 %i.f, double %i.d, double %i.e ; 2 uses
  %.036 = select i1 %i.f, double %i.e, double %i.d ; 2 uses
  %i.g = load i32, ptr @_ZN8Parallel5numpeE, align 4, !tbaa !4
  %i.h = sitofp i32 %i.g to double
  %i.i = fmul nnan double %.036, %i.h
  %i.j = fdiv double %i.i, %.037
  %i.k = tail call double @sqrt(double noundef %i.j) #15, !tbaa !4 ; 2 uses
  %i.l = fadd double %i.k, f0x3D719799812DEA11
  %i.m = tail call double @llvm.floor.f64(double %i.l)
  %i.n = fptosi double %i.m to i32
  %.sroa.speculated20 = tail call i32 @llvm.smax.i32(i32 %i.n, i32 1)
  %i.o = load i32, ptr @_ZN8Parallel5numpeE, align 4, !tbaa !4 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.038 = phi i32 [ %.sroa.speculated20, %bb.a ], [ %i.r, %bb.b ] ; 5 uses
  %i.p = srem i32 %i.o, %.038
  %i.q = sdiv i32 %i.o, %.038
  %.not = icmp eq i32 %i.p, 0
  %i.r = add nsw i32 %.038, -1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !30

bb.c:                                             ; preds = %bb.b
  %i.s = fadd double %i.k, f0xBD719799812DEA11
  %i.t = tail call double @llvm.ceil.f64(double %i.s)
  %i.u = fptosi double %i.t to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %i.u, %bb.c ], [ %i.x, %bb.d ]  ; 5 uses
  %i.v = srem i32 %i.o, %.0
  %i.w = sdiv i32 %i.o, %.0
  %.not11 = icmp eq i32 %i.v, 0
  %i.x = add nsw i32 %.0, 1
  br i1 %.not11, label %bb.e, label %bb.d, !llvm.loop !32

bb.e:                                             ; preds = %bb.d
  %i.y = insertelement <2 x i32> poison, i32 %.038, i64 0
  %i.z = insertelement <2 x i32> %i.y, i32 %.0, i64 1
  %i.aa = sitofp <2 x i32> %i.z to <2 x double>
  %i.ab = insertelement <2 x double> poison, double %.036, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = fdiv <2 x double> %i.ac, %i.aa          ; 2 uses
  %i.ae = insertelement <2 x i32> poison, i32 %i.q, i64 0
  %i.af = insertelement <2 x i32> %i.ae, i32 %i.w, i64 1
  %i.ag = sitofp <2 x i32> %i.af to <2 x double>
  %i.ah = insertelement <2 x double> poison, double %.037, i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = fdiv <2 x double> %i.ai, %i.ag          ; 2 uses
  %i.ak = fcmp olt <2 x double> %i.ad, %i.aj
  %i.al = select <2 x i1> %i.ak, <2 x double> %i.aj, <2 x double> %i.ad ; 2 uses
  %i.am = extractelement <2 x double> %i.al, i64 0
  %i.an = extractelement <2 x double> %i.al, i64 1
  %i.ao = fcmp ole double %i.am, %i.an
  %i.ap = select i1 %i.ao, i32 %.038, i32 %.0     ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !33
  %i.ar = sdiv i32 %i.o, %i.ap                    ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !34
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.ar, ptr %i.aq, align 8, !tbaa !4
  store i32 %i.ap, ptr %i.as, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.at = phi i32 [ %i.ar, %bb.f ], [ %i.ap, %bb.e ] ; 2 uses
  %i.au = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !4 ; 2 uses
  %i.av = srem i32 %i.au, %i.at
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !35
  %i.ax = sdiv i32 %i.au, %i.at
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !36
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7GenMesh11generatePieERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 1 %1, ptr nofree noundef nonnull align 1 captures(none) %2, ptr nofree noundef nonnull align 1 captures(none) %3, ptr nofree noundef nonnull align 1 captures(none) %4, ptr nofree noundef nonnull align 1 captures(none) %5, ptr nofree noundef nonnull align 1 captures(none) %6, ptr nofree noundef nonnull align 1 captures(none) %7, ptr nofree noundef nonnull align 1 captures(none) %8, ptr nofree noundef nonnull align 1 captures(none) %9, ptr nofree noundef nonnull align 1 captures(none) %10) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %struct.double2, align 8           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !38   ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !40   ; 9 uses
  %i.e = mul nsw i32 %i.d, %i.b                   ; 3 uses
  %i.f = add nsw i32 %i.b, 1                      ; 11 uses
  %i.g = add i32 %i.d, 1                          ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 13 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !36
  %i.j = icmp eq i32 %i.i, 0
  %i.k = mul nsw i32 %i.f, %i.d                   ; 2 uses
  %i.l = add nsw i32 %i.k, 1
  %i.m = mul nsw i32 %i.g, %i.f                   ; 2 uses
  %i.n = select i1 %i.j, i32 %i.l, i32 %i.m       ; 2 uses
  %i.o = sext i32 %i.n to i64                     ; 3 uses
  %i.p = icmp slt i32 %i.n, 0
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.s = load ptr, ptr %1, align 8, !tbaa !44     ; 13 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64                 ; 4 uses
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 4
  %i.x = icmp ult i64 %i.w, %i.o
  br i1 %i.x, label %_ZNSt12_Vector_baseI7double2SaIS0_EE11_M_allocateEm.exit.i.i, label %_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit

_ZNSt12_Vector_baseI7double2SaIS0_EE11_M_allocateEm.exit.i.i: ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !45   ; 4 uses
  %i.aa = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ab = sub i64 %i.aa, %i.u
  %i.ac = shl nuw nsw i64 %i.o, 4
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #19 ; 12 uses
  %.not13.i.i.i.i.i.i = icmp eq ptr %i.s, %i.z
  br i1 %.not13.i.i.i.i.i.i, label %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNSt12_Vector_baseI7double2SaIS0_EE11_M_allocateEm.exit.i.i
  %12 = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %12, %i.u
  %13 = add i64 %i.ae, -16                        ; 2 uses
  %i.af = lshr i64 %13, 4
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %13, 400
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader844, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.ah = add i64 %i.aa, -16
  %i.ai = sub i64 %i.ah, %i.u
  %i.aj = and i64 %i.ai, -16                      ; 2 uses
  %i.ak = or disjoint i64 %i.aj, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ad, i64 %i.ak
  %scevgep791 = getelementptr i8, ptr %i.s, i64 %i.ak
  %scevgep792 = getelementptr i8, ptr %i.ad, i64 8
  %i.al = add i64 %i.aj, 16                       ; 2 uses
  %scevgep793 = getelementptr i8, ptr %i.ad, i64 %i.al
  %scevgep794 = getelementptr i8, ptr %i.s, i64 8
  %scevgep795 = getelementptr i8, ptr %i.s, i64 %i.al
  %bound0 = icmp ult ptr %i.ad, %scevgep791
  %bound1 = icmp ult ptr %i.s, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0796 = icmp ult ptr %scevgep792, %scevgep795
  %bound1797 = icmp ult ptr %scevgep794, %scevgep793
  %found.conflict798 = and i1 %bound0796, %bound1797
  %conflict.rdx = or i1 %found.conflict, %found.conflict798
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.i.preheader844, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 2305843009213693950     ; 3 uses
  %i.am = shl i64 %n.vec, 4                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.ad, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.s, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 4                       ; 3 uses
  %i.aq = or disjoint i64 %i.ap, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.ap
  %next.gep799 = getelementptr i8, ptr %i.ad, i64 %i.aq
  %next.gep800 = getelementptr i8, ptr %i.s, i64 %i.ap
  %next.gep801 = getelementptr i8, ptr %i.s, i64 %i.aq
  %wide.load = load <2 x double>, ptr %next.gep800, align 8
  %wide.load802 = load <2 x double>, ptr %next.gep801, align 8
  store <2 x double> %wide.load, ptr %next.gep, align 8
  store <2 x double> %wide.load802, ptr %next.gep799, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader844

.lr.ph.i.i.i.i.i.i.preheader844:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.015.i.i.i.i.i.i.ph = phi ptr [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  %.01214.i.i.i.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader844, %.lr.ph.i.i.i.i.i.i
  %.015.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader844 ] ; 2 uses
  %.01214.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader844 ] ; 2 uses
  %i.as = load <2 x double>, ptr %.01214.i.i.i.i.i.i, align 8, !tbaa !23
  store <2 x double> %i.as, ptr %.015.i.i.i.i.i.i, align 8, !tbaa !23
  %i.at = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i = icmp eq ptr %i.at, %i.z
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !49

_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseI7double2SaIS0_EE11_M_allocateEm.exit.i.i
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.v) #16
  br label %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i

_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i
  store ptr %i.ad, ptr %1, align 8, !tbaa !44
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store ptr %i.av, ptr %i.y, align 8, !tbaa !45
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.o
  store ptr %i.aw, ptr %i.q, align 8, !tbaa !41
  br label %_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit

_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit:     ; preds = %bb.c, %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.az = load <2 x double>, ptr %i.ax, align 8, !tbaa !23
  %i.ba = load <2 x i32>, ptr %i.ay, align 8, !tbaa !4
  %i.bb = sitofp <2 x i32> %i.ba to <2 x double>
  %i.bc = fdiv <2 x double> %i.az, %i.bb          ; 2 uses
  %.not532 = icmp slt i32 %i.d, 0
  br i1 %.not532, label %._crit_edge, label %.lr.ph534

.lr.ph534:                                        ; preds = %_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 84
  %.not152530 = icmp slt i32 %i.b, 0
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.bg = extractelement <2 x double> %i.bc, i64 1
  %i.bh = extractelement <2 x double> %i.bc, i64 0
  br label %bb.m

._crit_edge:                                      ; preds = %.loopexit, %_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit
  %i.bi = sext i32 %i.e to i64                    ; 6 uses
  %i.bj = icmp slt i32 %i.e, 0
  br i1 %i.bj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #18
  unreachable

bb.f:                                             ; preds = %._crit_edge
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !50
  %i.bm = load ptr, ptr %2, align 8, !tbaa !53    ; 4 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = ashr exact i64 %i.bp, 2
  %i.br = icmp ult i64 %i.bq, %i.bi
  br i1 %i.br, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !54
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.bo                    ; 3 uses
  %i.bw = shl nuw nsw i64 %i.bi, 2
  %i.bx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #19 ; 4 uses
  %i.by = icmp sgt i64 %i.bv, 0
  br i1 %i.by, label %bb.g, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bx, ptr align 4 %i.bm, i64 %i.bv, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.g, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.bm, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #16
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  store ptr %i.bx, ptr %2, align 8, !tbaa !53
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bv
  store ptr %i.bz, ptr %i.bs, align 8, !tbaa !54
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.bi
  store ptr %i.ca, ptr %i.bk, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, %bb.f
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !50
  %i.cd = load ptr, ptr %3, align 8, !tbaa !53    ; 4 uses
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.cg = sub i64 %i.ce, %i.cf                    ; 2 uses
  %i.ch = ashr exact i64 %i.cg, 2
  %i.ci = icmp ult i64 %i.ch, %i.bi
  br i1 %i.ci, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i154, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit158

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i154: ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !54
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = sub i64 %i.cl, %i.cf                    ; 3 uses
  %i.cn = shl nuw nsw i64 %i.bi, 2
  %i.co = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #19 ; 4 uses
  %i.cp = icmp sgt i64 %i.cm, 0
  br i1 %i.cp, label %bb.i, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i155

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i154
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.co, ptr align 4 %i.cd, i64 %i.cm, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i155

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i155: ; preds = %bb.i, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i154
  %.not.i8.i156 = icmp eq ptr %i.cd, null
  br i1 %.not.i8.i156, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i157, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i155
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.cg) #16
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i157

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i157: ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i155
  store ptr %i.co, ptr %3, align 8, !tbaa !53
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cm
  store ptr %i.cq, ptr %i.cj, align 8, !tbaa !54
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.bi
  store ptr %i.cr, ptr %i.cb, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit158

_ZNSt6vectorIiSaIiEE7reserveEm.exit158:           ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i157
  %i.cs = shl nsw i32 %i.e, 2
  %i.ct = zext nneg i32 %i.cs to i64              ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !50
  %i.cw = load ptr, ptr %4, align 8, !tbaa !53    ; 4 uses
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cw to i64               ; 2 uses
  %i.cz = sub i64 %i.cx, %i.cy                    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN7GenMesh11generatePieERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_:bb.a
bb.gy:                                            ; preds = %bb.gx
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #18
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i404: ; preds = %bb.gx
  %i.anf = ashr exact i64 %i.and, 2               ; 3 uses
  %.sroa.speculated.i.i.i405 = call i64 @llvm.umax.i64(i64 %i.anf, i64 1)
  %i.ang = add nsw i64 %.sroa.speculated.i.i.i405, %i.anf ; 2 uses
  %i.anh = icmp ult i64 %i.ang, %i.anf
  %i.ani = call i64 @llvm.umin.i64(i64 %i.ang, i64 2305843009213693951)
  %i.anj = select i1 %i.anh, i64 2305843009213693951, i64 %i.ani ; 3 uses
  %.not.i.i.i406 = icmp ne i64 %i.anj, 0
  call void @llvm.assume(i1 %.not.i.i.i406)
  %i.ank = shl nuw nsw i64 %i.anj, 2
  %i.anl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ank) #19 ; 4 uses
  %i.anm = getelementptr inbounds i8, ptr %i.anl, i64 %i.and ; 2 uses
  store i32 %spec.select526, ptr %i.anm, align 4, !tbaa !4
  %i.ann = icmp sgt i64 %i.and, 0
  br i1 %i.ann, label %bb.gz, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i407

bb.gz:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i404
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.anl, ptr align 4 %i.ana, i64 %i.and, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i407

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i407: ; preds = %bb.gz, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i404
  %i.ano = getelementptr inbounds nuw i8, ptr %i.anm, i64 4
  %.not.i17.i.i408 = icmp eq ptr %i.ana, null
  br i1 %.not.i17.i.i408, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i409, label %bb.ha

bb.ha:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i407
  call void @_ZdlPvm(ptr noundef nonnull %i.ana, i64 noundef %i.and) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i409

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i409: ; preds = %bb.ha, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i407
  store ptr %i.anl, ptr %10, align 8, !tbaa !53
  store ptr %i.ano, ptr %i.amw, align 8, !tbaa !54
  %i.anp = getelementptr inbounds nuw [4 x i8], ptr %i.anl, i64 %i.anj
  store ptr %i.anp, ptr %i.ol, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit410

_ZNSt6vectorIiSaIiEE9push_backERKi.exit410:       ; preds = %bb.gw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i409
  %i.anq = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.anr = load ptr, ptr %i.anq, align 8, !tbaa !54 ; 4 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ant = load ptr, ptr %i.ans, align 8, !tbaa !50
  %.not.i411 = icmp eq ptr %i.anr, %i.ant
  br i1 %.not.i411, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit410
  store i32 %i.ams, ptr %i.anr, align 4, !tbaa !4
  %i.anu = getelementptr inbounds nuw i8, ptr %i.anr, i64 4
  store ptr %i.anu, ptr %i.anq, align 8, !tbaa !54
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit418

bb.hc:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit410
  %i.anv = load ptr, ptr %8, align 8, !tbaa !53   ; 4 uses
  %i.anw = ptrtoint ptr %i.anr to i64
  %i.anx = ptrtoint ptr %i.anv to i64
  %i.any = sub i64 %i.anw, %i.anx                 ; 6 uses
  %i.anz = icmp eq i64 %i.any, 9223372036854775804
  br i1 %i.anz, label %bb.hd, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i412

bb.hd:                                            ; preds = %bb.hc
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #18
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i412: ; preds = %bb.hc
  %i.aoa = ashr exact i64 %i.any, 2               ; 3 uses
  %.sroa.speculated.i.i.i413 = call i64 @llvm.umax.i64(i64 %i.aoa, i64 1)
  %i.aob = add nsw i64 %.sroa.speculated.i.i.i413, %i.aoa ; 2 uses
  %i.aoc = icmp ult i64 %i.aob, %i.aoa
  %i.aod = call i64 @llvm.umin.i64(i64 %i.aob, i64 2305843009213693951)
  %i.aoe = select i1 %i.aoc, i64 2305843009213693951, i64 %i.aod ; 3 uses
  %.not.i.i.i414 = icmp ne i64 %i.aoe, 0
  call void @llvm.assume(i1 %.not.i.i.i414)
  %i.aof = shl nuw nsw i64 %i.aoe, 2
  %i.aog = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aof) #19 ; 4 uses
  %i.aoh = getelementptr inbounds i8, ptr %i.aog, i64 %i.any ; 2 uses
  store i32 %i.ams, ptr %i.aoh, align 4, !tbaa !4
  %i.aoi = icmp sgt i64 %i.any, 0
  br i1 %i.aoi, label %bb.he, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i415

bb.he:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i412
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aog, ptr align 4 %i.anv, i64 %i.any, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i415

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i415: ; preds = %bb.he, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i412
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoh, i64 4
  %.not.i17.i.i416 = icmp eq ptr %i.anv, null
  br i1 %.not.i17.i.i416, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i417, label %bb.hf

bb.hf:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i415
  call void @_ZdlPvm(ptr noundef nonnull %i.anv, i64 noundef %i.any) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i417

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i417: ; preds = %bb.hf, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i415
  store ptr %i.aog, ptr %8, align 8, !tbaa !53
  store ptr %i.aoj, ptr %i.anq, align 8, !tbaa !54
  %i.aok = getelementptr inbounds nuw [4 x i8], ptr %i.aog, i64 %i.aoe
  store ptr %i.aok, ptr %i.ans, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit418

_ZNSt6vectorIiSaIiEE9push_backERKi.exit418:       ; preds = %bb.hb, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i417
  %i.aol = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.aom = load ptr, ptr %i.aol, align 8, !tbaa !54 ; 4 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.aoo = load ptr, ptr %i.aon, align 8, !tbaa !50
  %.not.i.i419 = icmp eq ptr %i.aom, %i.aoo
  br i1 %.not.i.i419, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit418
  store i32 1, ptr %i.aom, align 4, !tbaa !4
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aom, i64 4
  store ptr %i.aop, ptr %i.aol, align 8, !tbaa !54
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit426

bb.hh:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit418
  %i.aoq = load ptr, ptr %9, align 8, !tbaa !53   ; 4 uses
  %i.aor = ptrtoint ptr %i.aom to i64
  %i.aos = ptrtoint ptr %i.aoq to i64
  %i.aot = sub i64 %i.aor, %i.aos                 ; 6 uses
  %i.aou = icmp eq i64 %i.aot, 9223372036854775804
  br i1 %i.aou, label %bb.hi, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i420

bb.hi:                                            ; preds = %bb.hh
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #18
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i420: ; preds = %bb.hh
  %i.aov = ashr exact i64 %i.aot, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i421 = call i64 @llvm.umax.i64(i64 %i.aov, i64 1)
  %i.aow = add nsw i64 %.sroa.speculated.i.i.i.i421, %i.aov ; 2 uses
  %i.aox = icmp ult i64 %i.aow, %i.aov
  %i.aoy = call i64 @llvm.umin.i64(i64 %i.aow, i64 2305843009213693951)
  %i.aoz = select i1 %i.aox, i64 2305843009213693951, i64 %i.aoy ; 3 uses
  %.not.i.i.i.i422 = icmp ne i64 %i.aoz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i422)
  %i.apa = shl nuw nsw i64 %i.aoz, 2
  %i.apb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.apa) #19 ; 4 uses
  %i.apc = getelementptr inbounds i8, ptr %i.apb, i64 %i.aot ; 2 uses
  store i32 1, ptr %i.apc, align 4, !tbaa !4
  %i.apd = icmp sgt i64 %i.aot, 0
  br i1 %i.apd, label %bb.hj, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i423

bb.hj:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i420
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.apb, ptr align 4 %i.aoq, i64 %i.aot, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i423

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i423: ; preds = %bb.hj, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i420
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apc, i64 4
  %.not.i17.i.i.i424 = icmp eq ptr %i.aoq, null
  br i1 %.not.i17.i.i.i424, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i425, label %bb.hk

bb.hk:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i423
  call void @_ZdlPvm(ptr noundef nonnull %i.aoq, i64 noundef %i.aot) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i425

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i425: ; preds = %bb.hk, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i423
  store ptr %i.apb, ptr %9, align 8, !tbaa !53
  store ptr %i.ape, ptr %i.aol, align 8, !tbaa !54
  %i.apf = getelementptr inbounds nuw [4 x i8], ptr %i.apb, i64 %i.aoz
  store ptr %i.apf, ptr %i.aon, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit426

_ZNSt6vectorIiSaIiEE9push_backEOi.exit426:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i425, %bb.hg, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit394, %bb.gu, %._crit_edge539
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7GenMesh12generateRectERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef nonnull align 1 captures(none) %1, ptr nofree noundef nonnull align 1 captures(none) %2, ptr nofree noundef nonnull align 1 captures(none) %3, ptr nofree noundef nonnull align 1 captures(none) %4, ptr nofree noundef nonnull align 1 captures(none) %5, ptr nofree noundef nonnull align 1 captures(none) %6, ptr nofree noundef nonnull align 1 captures(none) %7, ptr nofree noundef nonnull align 1 captures(none) %8, ptr nofree noundef nonnull align 1 captures(none) %9, ptr nofree noundef nonnull align 1 captures(none) %10) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !38   ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !40   ; 9 uses
  %i.e = mul nsw i32 %i.d, %i.b                   ; 3 uses
  %i.f = add nsw i32 %i.b, 1                      ; 9 uses
  %i.g = add nsw i32 %i.d, 1                      ; 3 uses
  %i.h = mul nsw i32 %i.g, %i.f                   ; 3 uses
  %i.i = sext i32 %i.h to i64                     ; 3 uses
  %i.j = icmp slt i32 %i.h, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !41   ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !44     ; 14 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64                 ; 4 uses
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %i.q = ashr exact i64 %i.p, 4
  %i.r = icmp ult i64 %i.q, %i.i
  br i1 %i.r, label %_ZNSt12_Vector_baseI7double2SaIS0_EE11_M_allocateEm.exit.i.i, label %_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit

_ZNSt12_Vector_baseI7double2SaIS0_EE11_M_allocateEm.exit.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !45   ; 4 uses
  %i.u = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.v = sub i64 %i.u, %i.o
  %i.w = shl nuw nsw i64 %i.i, 4
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #19 ; 13 uses
  %.not13.i.i.i.i.i.i = icmp eq ptr %i.m, %i.t
  br i1 %.not13.i.i.i.i.i.i, label %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNSt12_Vector_baseI7double2SaIS0_EE11_M_allocateEm.exit.i.i
  %11 = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %11, %i.o
  %12 = add i64 %i.y, -16                         ; 2 uses
  %i.z = lshr i64 %12, 4
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %12, 400
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader696, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.ab = add i64 %i.u, -16
  %i.ac = sub i64 %i.ab, %i.o
  %i.ad = and i64 %i.ac, -16                      ; 2 uses
  %i.ae = or disjoint i64 %i.ad, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.x, i64 %i.ae
  %scevgep639 = getelementptr i8, ptr %i.m, i64 %i.ae
  %scevgep640 = getelementptr i8, ptr %i.x, i64 8
  %i.af = add i64 %i.ad, 16                       ; 2 uses
  %scevgep641 = getelementptr i8, ptr %i.x, i64 %i.af
  %scevgep642 = getelementptr i8, ptr %i.m, i64 8
  %scevgep643 = getelementptr i8, ptr %i.m, i64 %i.af
  %bound0 = icmp ult ptr %i.x, %scevgep639
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0644 = icmp ult ptr %scevgep640, %scevgep643
  %bound1645 = icmp ult ptr %scevgep642, %scevgep641
  %found.conflict646 = and i1 %bound0644, %bound1645
  %conflict.rdx = or i1 %found.conflict, %found.conflict646
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.i.preheader696, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 2305843009213693950     ; 3 uses
  %i.ag = shl i64 %n.vec, 4                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.x, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.m, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 4                       ; 3 uses
  %i.ak = or disjoint i64 %i.aj, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.aj
  %next.gep647 = getelementptr i8, ptr %i.x, i64 %i.ak
  %next.gep648 = getelementptr i8, ptr %i.m, i64 %i.aj
  %next.gep649 = getelementptr i8, ptr %i.m, i64 %i.ak
  %wide.load = load <2 x double>, ptr %next.gep648, align 8
  %wide.load650 = load <2 x double>, ptr %next.gep649, align 8
  store <2 x double> %wide.load, ptr %next.gep, align 8
  store <2 x double> %wide.load650, ptr %next.gep647, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader696

.lr.ph.i.i.i.i.i.i.preheader696:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.015.i.i.i.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.01214.i.i.i.i.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader696, %.lr.ph.i.i.i.i.i.i
  %.015.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader696 ] ; 2 uses
  %.01214.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader696 ] ; 2 uses
  %i.am = load <2 x double>, ptr %.01214.i.i.i.i.i.i, align 8, !tbaa !23
  store <2 x double> %i.am, ptr %.015.i.i.i.i.i.i, align 8, !tbaa !23
  %i.an = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i = icmp eq ptr %i.an, %i.t
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !72

_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseI7double2SaIS0_EE11_M_allocateEm.exit.i.i
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.p) #16
  br label %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i

_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i
  store ptr %i.x, ptr %1, align 8, !tbaa !44
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store ptr %i.ap, ptr %i.s, align 8, !tbaa !45
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.i ; 2 uses
  store ptr %i.aq, ptr %i.k, align 8, !tbaa !41
  br label %_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit

_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit:     ; preds = %bb.c, %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i
  %i.ar = phi ptr [ %i.m, %bb.c ], [ %i.x, %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i ]
  %i.as = phi ptr [ %i.l, %bb.c ], [ %i.aq, %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.av = load <2 x double>, ptr %i.at, align 8, !tbaa !23
  %i.aw = load <2 x i32>, ptr %i.au, align 8, !tbaa !4
  %i.ax = sitofp <2 x i32> %i.aw to <2 x double>
  %i.ay = fdiv <2 x double> %i.av, %i.ax          ; 2 uses
  %.not406 = icmp slt i32 %i.d, 0                 ; 3 uses
  br i1 %.not406, label %._crit_edge409, label %.lr.ph408

.lr.ph408:                                        ; preds = %_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 84
  %.not132404 = icmp slt i32 %i.b, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br i1 %.not132404, label %._crit_edge409, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph408
  %.pre.pre = load ptr, ptr %i.bb, align 8, !tbaa !45
  %i.bc = extractelement <2 x double> %i.ay, i64 1
  %i.bd = extractelement <2 x double> %i.ay, i64 0
  br label %.lr.ph

._crit_edge409:                                   ; preds = %._crit_edge, %.lr.ph408, %_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit
  %i.be = sext i32 %i.e to i64                    ; 6 uses
  %i.bf = icmp slt i32 %i.e, 0
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge409
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #18
  unreachable

bb.f:                                             ; preds = %._crit_edge409
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !50
  %i.bi = load ptr, ptr %2, align 8, !tbaa !53    ; 4 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bl = sub i64 %i.bj, %i.bk                    ; 2 uses
  %i.bm = ashr exact i64 %i.bl, 2
  %i.bn = icmp ult i64 %i.bm, %i.be
  br i1 %i.bn, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !54
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.bk                    ; 3 uses
  %i.bs = shl nuw nsw i64 %i.be, 2
  %i.bt = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #19 ; 4 uses
  %i.bu = icmp sgt i64 %i.br, 0
  br i1 %i.bu, label %bb.g, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bt, ptr align 4 %i.bi, i64 %i.br, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.g, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.bi, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bl) #16
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  store ptr %i.bt, ptr %2, align 8, !tbaa !53
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.br
  store ptr %i.bv, ptr %i.bo, align 8, !tbaa !54
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.be
  store ptr %i.bw, ptr %i.bg, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, %bb.f
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !50
  %i.bz = load ptr, ptr %3, align 8, !tbaa !53    ; 4 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cc = sub i64 %i.ca, %i.cb                    ; 2 uses
  %i.cd = ashr exact i64 %i.cc, 2
  %i.ce = icmp ult i64 %i.cd, %i.be
  br i1 %i.ce, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i133, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit137

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i133: ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !54
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.ch, %i.cb                    ; 3 uses
  %i.cj = shl nuw nsw i64 %i.be, 2
  %i.ck = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #19 ; 4 uses
  %i.cl = icmp sgt i64 %i.ci, 0
  br i1 %i.cl, label %bb.i, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i134

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i133
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ck, ptr align 4 %i.bz, i64 %i.ci, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i134

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i134: ; preds = %bb.i, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i133
  %.not.i8.i135 = icmp eq ptr %i.bz, null
  br i1 %.not.i8.i135, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i136, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i134
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.cc) #16
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i136

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i136: ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i134
  store ptr %i.ck, ptr %3, align 8, !tbaa !53
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ci
  store ptr %i.cm, ptr %i.cf, align 8, !tbaa !54
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.be
  store ptr %i.cn, ptr %i.bx, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit137

_ZNSt6vectorIiSaIiEE7reserveEm.exit137:           ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i136
  %i.co = shl nsw i32 %i.e, 2
  %i.cp = zext nneg i32 %i.co to i64              ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN7GenMesh12generateRectERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_:bb.a
  %i.afy = ashr exact i64 %i.afw, 2               ; 3 uses
  %.sroa.speculated.i.i.i309 = tail call i64 @llvm.umax.i64(i64 %i.afy, i64 1)
  %i.afz = add nsw i64 %.sroa.speculated.i.i.i309, %i.afy ; 2 uses
  %i.aga = icmp ult i64 %i.afz, %i.afy
  %i.agb = tail call i64 @llvm.umin.i64(i64 %i.afz, i64 2305843009213693951)
  %i.agc = select i1 %i.aga, i64 2305843009213693951, i64 %i.agb ; 3 uses
  %.not.i.i.i310 = icmp ne i64 %i.agc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i310)
  %i.agd = shl nuw nsw i64 %i.agc, 2
  %i.age = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.agd) #19 ; 4 uses
  %i.agf = getelementptr inbounds i8, ptr %i.age, i64 %i.afw ; 2 uses
  store i32 %i.afo, ptr %i.agf, align 4, !tbaa !4
  %i.agg = icmp sgt i64 %i.afw, 0
  br i1 %i.agg, label %bb.fb, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i311

bb.fb:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i308
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.age, ptr align 4 %i.aft, i64 %i.afw, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i311

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i311: ; preds = %bb.fb, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i308
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agf, i64 4
  %.not.i17.i.i312 = icmp eq ptr %i.aft, null
  br i1 %.not.i17.i.i312, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i313, label %bb.fc

bb.fc:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i311
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aft, i64 noundef %i.afw) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i313

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i313: ; preds = %bb.fc, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i311
  store ptr %i.age, ptr %10, align 8, !tbaa !53
  store ptr %i.agh, ptr %i.afp, align 8, !tbaa !54
  %i.agi = getelementptr inbounds nuw [4 x i8], ptr %i.age, i64 %i.agc
  store ptr %i.agi, ptr %i.mk, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit314

_ZNSt6vectorIiSaIiEE9push_backERKi.exit314:       ; preds = %bb.ey, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i313
  %i.agj = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.agk = load ptr, ptr %i.agj, align 8, !tbaa !54 ; 4 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.agm = load ptr, ptr %i.agl, align 8, !tbaa !50
  %.not.i315 = icmp eq ptr %i.agk, %i.agm
  br i1 %.not.i315, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit314
  store i32 %i.afn, ptr %i.agk, align 4, !tbaa !4
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agk, i64 4
  store ptr %i.agn, ptr %i.agj, align 8, !tbaa !54
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit322

bb.fe:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit314
  %i.ago = load ptr, ptr %8, align 8, !tbaa !53   ; 4 uses
  %i.agp = ptrtoint ptr %i.agk to i64
  %i.agq = ptrtoint ptr %i.ago to i64
  %i.agr = sub i64 %i.agp, %i.agq                 ; 6 uses
  %i.ags = icmp eq i64 %i.agr, 9223372036854775804
  br i1 %i.ags, label %bb.ff, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i316

bb.ff:                                            ; preds = %bb.fe
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #18
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i316: ; preds = %bb.fe
  %i.agt = ashr exact i64 %i.agr, 2               ; 3 uses
  %.sroa.speculated.i.i.i317 = tail call i64 @llvm.umax.i64(i64 %i.agt, i64 1)
  %i.agu = add nsw i64 %.sroa.speculated.i.i.i317, %i.agt ; 2 uses
  %i.agv = icmp ult i64 %i.agu, %i.agt
  %i.agw = tail call i64 @llvm.umin.i64(i64 %i.agu, i64 2305843009213693951)
  %i.agx = select i1 %i.agv, i64 2305843009213693951, i64 %i.agw ; 3 uses
  %.not.i.i.i318 = icmp ne i64 %i.agx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i318)
  %i.agy = shl nuw nsw i64 %i.agx, 2
  %i.agz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.agy) #19 ; 4 uses
  %i.aha = getelementptr inbounds i8, ptr %i.agz, i64 %i.agr ; 2 uses
  store i32 %i.afn, ptr %i.aha, align 4, !tbaa !4
  %i.ahb = icmp sgt i64 %i.agr, 0
  br i1 %i.ahb, label %bb.fg, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i319

bb.fg:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i316
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.agz, ptr align 4 %i.ago, i64 %i.agr, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i319

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i319: ; preds = %bb.fg, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i316
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.aha, i64 4
  %.not.i17.i.i320 = icmp eq ptr %i.ago, null
  br i1 %.not.i17.i.i320, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i321, label %bb.fh

bb.fh:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i319
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ago, i64 noundef %i.agr) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i321

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i321: ; preds = %bb.fh, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i319
  store ptr %i.agz, ptr %8, align 8, !tbaa !53
  store ptr %i.ahc, ptr %i.agj, align 8, !tbaa !54
  %i.ahd = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %i.agx
  store ptr %i.ahd, ptr %i.agl, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit322

_ZNSt6vectorIiSaIiEE9push_backERKi.exit322:       ; preds = %bb.fd, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i321
  %i.ahe = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.ahf = load ptr, ptr %i.ahe, align 8, !tbaa !54 ; 4 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !50
  %.not.i.i323 = icmp eq ptr %i.ahf, %i.ahh
  br i1 %.not.i.i323, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit322
  store i32 1, ptr %i.ahf, align 4, !tbaa !4
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahf, i64 4
  store ptr %i.ahi, ptr %i.ahe, align 8, !tbaa !54
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit330

bb.fj:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit322
  %i.ahj = load ptr, ptr %9, align 8, !tbaa !53   ; 4 uses
  %i.ahk = ptrtoint ptr %i.ahf to i64
  %i.ahl = ptrtoint ptr %i.ahj to i64
  %i.ahm = sub i64 %i.ahk, %i.ahl                 ; 6 uses
  %i.ahn = icmp eq i64 %i.ahm, 9223372036854775804
  br i1 %i.ahn, label %bb.fk, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i324

bb.fk:                                            ; preds = %bb.fj
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #18
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i324: ; preds = %bb.fj
  %i.aho = ashr exact i64 %i.ahm, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i325 = tail call i64 @llvm.umax.i64(i64 %i.aho, i64 1)
  %i.ahp = add nsw i64 %.sroa.speculated.i.i.i.i325, %i.aho ; 2 uses
  %i.ahq = icmp ult i64 %i.ahp, %i.aho
  %i.ahr = tail call i64 @llvm.umin.i64(i64 %i.ahp, i64 2305843009213693951)
  %i.ahs = select i1 %i.ahq, i64 2305843009213693951, i64 %i.ahr ; 3 uses
  %.not.i.i.i.i326 = icmp ne i64 %i.ahs, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i326)
  %i.aht = shl nuw nsw i64 %i.ahs, 2
  %i.ahu = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aht) #19 ; 4 uses
  %i.ahv = getelementptr inbounds i8, ptr %i.ahu, i64 %i.ahm ; 2 uses
  store i32 1, ptr %i.ahv, align 4, !tbaa !4
  %i.ahw = icmp sgt i64 %i.ahm, 0
  br i1 %i.ahw, label %bb.fl, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i327

bb.fl:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i324
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ahu, ptr align 4 %i.ahj, i64 %i.ahm, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i327

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i327: ; preds = %bb.fl, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i324
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahv, i64 4
  %.not.i17.i.i.i328 = icmp eq ptr %i.ahj, null
  br i1 %.not.i17.i.i.i328, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i329, label %bb.fm

bb.fm:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i327
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ahj, i64 noundef %i.ahm) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i329

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i329: ; preds = %bb.fm, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i327
  store ptr %i.ahu, ptr %9, align 8, !tbaa !53
  store ptr %i.ahx, ptr %i.ahe, align 8, !tbaa !54
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %i.ahu, i64 %i.ahs
  store ptr %i.ahy, ptr %i.ahg, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit330

_ZNSt6vectorIiSaIiEE9push_backEOi.exit330:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i329, %bb.fi, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit298, %bb.ew, %._crit_edge414
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7GenMesh11generateHexERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 1 %1, ptr nofree noundef nonnull align 1 captures(none) %2, ptr nofree noundef nonnull align 1 captures(none) %3, ptr noundef nonnull align 1 %4, ptr nofree noundef nonnull align 1 captures(none) %5, ptr nofree noundef nonnull align 1 captures(none) %6, ptr nofree noundef nonnull align 1 captures(none) %7, ptr nofree noundef nonnull align 1 captures(none) %8, ptr nofree noundef nonnull align 1 captures(none) %9, ptr nofree noundef nonnull align 1 captures(none) %10) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %struct.double2, align 8           ; 6 uses
  %12 = alloca %struct.double2, align 8           ; 6 uses
  %13 = alloca %struct.double2, align 8           ; 6 uses
  %14 = alloca %struct.double2, align 8           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !38   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 8 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !40   ; 5 uses
  %i.e = mul nsw i32 %i.d, %i.b                   ; 3 uses
  %i.f = add nsw i32 %i.b, 1                      ; 3 uses
  %i.g = add nsw i32 %i.d, 1                      ; 8 uses
  %i.h = shl nsw i32 %i.f, 1
  %i.i = mul nsw i32 %i.h, %i.g                   ; 2 uses
  %i.j = sext i32 %i.i to i64                     ; 3 uses
  %i.k = icmp slt i32 %i.i, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41
  %i.n = load ptr, ptr %1, align 8, !tbaa !44     ; 14 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64                 ; 4 uses
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 4
  %i.s = icmp ult i64 %i.r, %i.j
  br i1 %i.s, label %_ZNSt12_Vector_baseI7double2SaIS0_EE11_M_allocateEm.exit.i.i, label %_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit

_ZNSt12_Vector_baseI7double2SaIS0_EE11_M_allocateEm.exit.i.i: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !45   ; 4 uses
  %i.v = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.w = sub i64 %i.v, %i.p
  %i.x = shl nuw nsw i64 %i.j, 4
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #19 ; 13 uses
  %.not13.i.i.i.i.i.i = icmp eq ptr %i.n, %i.u
  br i1 %.not13.i.i.i.i.i.i, label %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNSt12_Vector_baseI7double2SaIS0_EE11_M_allocateEm.exit.i.i
  %15 = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %15, %i.p
  %16 = add i64 %i.z, -16                         ; 2 uses
  %i.aa = lshr i64 %16, 4
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %16, 400
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader1354, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.ac = add i64 %i.v, -16
  %i.ad = sub i64 %i.ac, %i.p
  %i.ae = and i64 %i.ad, -16                      ; 2 uses
  %i.af = or disjoint i64 %i.ae, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.y, i64 %i.af
  %scevgep1295 = getelementptr i8, ptr %i.n, i64 %i.af
  %scevgep1296 = getelementptr i8, ptr %i.y, i64 8
  %i.ag = add i64 %i.ae, 16                       ; 2 uses
  %scevgep1297 = getelementptr i8, ptr %i.y, i64 %i.ag
  %scevgep1298 = getelementptr i8, ptr %i.n, i64 8
  %scevgep1299 = getelementptr i8, ptr %i.n, i64 %i.ag
  %bound0 = icmp ult ptr %i.y, %scevgep1295
  %bound1 = icmp ult ptr %i.n, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound01300 = icmp ult ptr %scevgep1296, %scevgep1299
  %bound11301 = icmp ult ptr %scevgep1298, %scevgep1297
  %found.conflict1302 = and i1 %bound01300, %bound11301
  %conflict.rdx = or i1 %found.conflict, %found.conflict1302
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.i.preheader1354, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 2305843009213693950     ; 3 uses
  %i.ah = shl i64 %n.vec, 4                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.y, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.n, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 4                       ; 3 uses
  %i.al = or disjoint i64 %i.ak, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.ak
  %next.gep1303 = getelementptr i8, ptr %i.y, i64 %i.al
  %next.gep1304 = getelementptr i8, ptr %i.n, i64 %i.ak
  %next.gep1305 = getelementptr i8, ptr %i.n, i64 %i.al
  %wide.load = load <2 x double>, ptr %next.gep1304, align 8
  %wide.load1306 = load <2 x double>, ptr %next.gep1305, align 8
  store <2 x double> %wide.load, ptr %next.gep, align 8
  store <2 x double> %wide.load1306, ptr %next.gep1303, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader1354

.lr.ph.i.i.i.i.i.i.preheader1354:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.015.i.i.i.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.01214.i.i.i.i.i.i.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader1354, %.lr.ph.i.i.i.i.i.i
  %.015.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader1354 ] ; 2 uses
  %.01214.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader1354 ] ; 2 uses
  %i.an = load <2 x double>, ptr %.01214.i.i.i.i.i.i, align 8, !tbaa !23
  store <2 x double> %i.an, ptr %.015.i.i.i.i.i.i, align 8, !tbaa !23
  %i.ao = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.u
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !84

_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseI7double2SaIS0_EE11_M_allocateEm.exit.i.i
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.q) #16
  br label %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i

_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i
  store ptr %i.y, ptr %1, align 8, !tbaa !44
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store ptr %i.aq, ptr %i.t, align 8, !tbaa !45
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.j
  store ptr %i.ar, ptr %i.l, align 8, !tbaa !41
  br label %_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit

_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit:     ; preds = %bb.c, %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i
  %i.as = phi ptr [ %i.n, %bb.c ], [ %i.y, %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ax = load <2 x double>, ptr %i.at, align 8, !tbaa !23
  %i.ay = load <2 x i32>, ptr %i.au, align 8, !tbaa !4
  %i.az = add nsw <2 x i32> %i.ay, splat (i32 -1)
  %i.ba = sitofp <2 x i32> %i.az to <2 x double>
  %i.bb = fdiv <2 x double> %i.ax, %i.ba          ; 3 uses
  %i.bc = sext i32 %i.g to i64                    ; 3 uses
  %i.bd = icmp slt i32 %i.d, -1
  br i1 %i.bd, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #18
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit
  %.not.i.i.i.i = icmp eq i32 %i.g, 0             ; 3 uses
  br i1 %.not.i.i.i.i, label %._crit_edge904, label %.noexc277

.noexc277:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.be = shl nuw nsw i64 %i.bc, 2
  %i.bf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #19 ; 11 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bc ; 7 uses
  store i32 0, ptr %i.bf, align 4, !tbaa !4
  %i.bh = add nsw i64 %i.bc, -1                   ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %.lr.ph903, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc277
  %i.bj = getelementptr i8, ptr %i.bf, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bh, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bj, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !4
  br label %.lr.ph903

.lr.ph903:                                        ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc277
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 12 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 84
  %.not260899 = icmp slt i32 %i.b, 0
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bn = fdiv <2 x double> %i.bb, splat (double 6.000000e+00) ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 8
  %wide.trip.count = zext nneg i32 %i.g to i64
  %i.bs = extractelement <2 x double> %i.bn, i64 1 ; 2 uses
  %i.bt = extractelement <2 x double> %i.bb, i64 1
  %i.bu = extractelement <2 x double> %i.bn, i64 0 ; 4 uses
  %i.bv = extractelement <2 x double> %i.bb, i64 0
  br label %bb.h

._crit_edge904.loopexit:                          ; preds = %._crit_edge
  %.pre1016 = load ptr, ptr %1, align 8, !tbaa !44
  br label %._crit_edge904

._crit_edge904:                                   ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %._crit_edge904.loopexit
  %.sroa.0802.01267 = phi ptr [ %i.bf, %._crit_edge904.loopexit ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 24 uses
  %.sroa.15.01263 = phi ptr [ %i.bg, %._crit_edge904.loopexit ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 14 uses
  %i.bw = phi ptr [ %.pre1016, %._crit_edge904.loopexit ], [ %i.as, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !45
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = lshr exact i64 %i.cb, 4
  %i.cd = trunc i64 %i.cc to i32                  ; 4 uses
  %i.ce = sext i32 %i.e to i64                    ; 6 uses
  %i.cf = icmp slt i32 %i.e, 0
  br i1 %i.cf, label %.invoke, label %bb.e

bb.e:                                             ; preds = %._crit_edge904
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !50
  %i.ci = load ptr, ptr %2, align 8, !tbaa !53    ; 4 uses
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64               ; 2 uses
  %i.cl = sub i64 %i.cj, %i.ck                    ; 2 uses
  %i.cm = ashr exact i64 %i.cl, 2
  %i.cn = icmp ult i64 %i.cm, %i.ce
  br i1 %i.cn, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.e
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !54
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = sub i64 %i.cq, %i.ck                    ; 3 uses
  %i.cs = shl nuw nsw i64 %i.ce, 2
  %i.ct = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #19
          to label %.noexc279 unwind label %bb.an ; 4 uses

.noexc279:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.cu = icmp sgt i64 %i.cr, 0
  br i1 %i.cu, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.f:                                             ; preds = %.noexc279
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ct, ptr align 4 %i.ci, i64 %i.cr, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.f, %.noexc279
  %.not.i8.i = icmp eq ptr %i.ci, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cl) #16
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  store ptr %i.ct, ptr %2, align 8, !tbaa !53
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cr
  store ptr %i.cv, ptr %i.co, align 8, !tbaa !54
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.ce
  store ptr %i.cw, ptr %i.cg, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

bb.h:                                             ; preds = %.lr.ph903, %._crit_edge
end_hunk_2
begin_hunk_3_@_ZN7GenMesh11generateHexERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_:bb.a
bb.in:                                            ; preds = %bb.im
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #18
          to label %.noexc623 unwind label %bb.ix

.noexc623:                                        ; preds = %bb.in
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i617: ; preds = %bb.im
  %i.ars = ashr exact i64 %i.arq, 2               ; 3 uses
  %.sroa.speculated.i.i.i618 = call i64 @llvm.umax.i64(i64 %i.ars, i64 1)
  %i.art = add nsw i64 %.sroa.speculated.i.i.i618, %i.ars ; 2 uses
  %i.aru = icmp ult i64 %i.art, %i.ars
  %i.arv = call i64 @llvm.umin.i64(i64 %i.art, i64 2305843009213693951)
  %i.arw = select i1 %i.aru, i64 2305843009213693951, i64 %i.arv ; 3 uses
  %.not.i.i.i619 = icmp ne i64 %i.arw, 0
  call void @llvm.assume(i1 %.not.i.i.i619)
  %i.arx = shl nuw nsw i64 %i.arw, 2
  %i.ary = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.arx) #19
          to label %.noexc624 unwind label %bb.ix ; 4 uses

.noexc624:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i617
  %i.arz = getelementptr inbounds i8, ptr %i.ary, i64 %i.arq ; 2 uses
  store i32 %i.aps, ptr %i.arz, align 4, !tbaa !4
  %i.asa = icmp sgt i64 %i.arq, 0
  br i1 %i.asa, label %bb.io, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i620

bb.io:                                            ; preds = %.noexc624
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ary, ptr align 4 %i.arn, i64 %i.arq, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i620

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i620: ; preds = %bb.io, %.noexc624
  %i.asb = getelementptr inbounds nuw i8, ptr %i.arz, i64 4
  %.not.i17.i.i621 = icmp eq ptr %i.arn, null
  br i1 %.not.i17.i.i621, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i622, label %bb.ip

bb.ip:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i620
  call void @_ZdlPvm(ptr noundef nonnull %i.arn, i64 noundef %i.arq) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i622

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i622: ; preds = %bb.ip, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i620
  store ptr %i.ary, ptr %8, align 8, !tbaa !53
  store ptr %i.asb, ptr %i.ari, align 8, !tbaa !54
  %i.asc = getelementptr inbounds nuw [4 x i8], ptr %i.ary, i64 %i.arw
  store ptr %i.asc, ptr %i.ark, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit625

_ZNSt6vectorIiSaIiEE9push_backERKi.exit625:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i622, %bb.il
  %i.asd = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.ase = load ptr, ptr %i.asd, align 8, !tbaa !54 ; 4 uses
  %i.asf = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.asg = load ptr, ptr %i.asf, align 8, !tbaa !50
  %.not.i.i626 = icmp eq ptr %i.ase, %i.asg
  br i1 %.not.i.i626, label %bb.ir, label %bb.iq

bb.iq:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit625
  store i32 2, ptr %i.ase, align 4, !tbaa !4
  %i.ash = getelementptr inbounds nuw i8, ptr %i.ase, i64 4
  store ptr %i.ash, ptr %i.asd, align 8, !tbaa !54
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit635

bb.ir:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit625
  %i.asi = load ptr, ptr %9, align 8, !tbaa !53   ; 4 uses
  %i.asj = ptrtoint ptr %i.ase to i64
  %i.ask = ptrtoint ptr %i.asi to i64
  %i.asl = sub i64 %i.asj, %i.ask                 ; 6 uses
  %i.asm = icmp eq i64 %i.asl, 9223372036854775804
  br i1 %i.asm, label %bb.is, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i627

bb.is:                                            ; preds = %bb.ir
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #18
          to label %.noexc633 unwind label %bb.iy

.noexc633:                                        ; preds = %bb.is
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i627: ; preds = %bb.ir
  %i.asn = ashr exact i64 %i.asl, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i628 = call i64 @llvm.umax.i64(i64 %i.asn, i64 1)
  %i.aso = add nsw i64 %.sroa.speculated.i.i.i.i628, %i.asn ; 2 uses
  %i.asp = icmp ult i64 %i.aso, %i.asn
  %i.asq = call i64 @llvm.umin.i64(i64 %i.aso, i64 2305843009213693951)
  %i.asr = select i1 %i.asp, i64 2305843009213693951, i64 %i.asq ; 3 uses
  %.not.i.i.i.i629 = icmp ne i64 %i.asr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i629)
  %i.ass = shl nuw nsw i64 %i.asr, 2
  %i.ast = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ass) #19
          to label %.noexc634 unwind label %bb.iy ; 4 uses

.noexc634:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i627
  %i.asu = getelementptr inbounds i8, ptr %i.ast, i64 %i.asl ; 2 uses
  store i32 2, ptr %i.asu, align 4, !tbaa !4
  %i.asv = icmp sgt i64 %i.asl, 0
  br i1 %i.asv, label %bb.it, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i630

bb.it:                                            ; preds = %.noexc634
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ast, ptr align 4 %i.asi, i64 %i.asl, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i630

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i630: ; preds = %bb.it, %.noexc634
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asu, i64 4
  %.not.i17.i.i.i631 = icmp eq ptr %i.asi, null
  br i1 %.not.i17.i.i.i631, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i632, label %bb.iu

bb.iu:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i630
  call void @_ZdlPvm(ptr noundef nonnull %i.asi, i64 noundef %i.asl) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i632

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i632: ; preds = %bb.iu, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i630
  store ptr %i.ast, ptr %9, align 8, !tbaa !53
  store ptr %i.asw, ptr %i.asd, align 8, !tbaa !54
  %i.asx = getelementptr inbounds nuw [4 x i8], ptr %i.ast, i64 %i.asr
  store ptr %i.asx, ptr %i.asf, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit635

bb.iv:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i597, %bb.id
  %i.asy = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit873

bb.iw:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i607, %bb.ii
  %i.asz = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit873

bb.ix:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i617, %bb.in
  %i.ata = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit873

bb.iy:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i627, %bb.is
  %i.atb = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit873

_ZNSt6vectorIiSaIiEE9push_backEOi.exit635:        ; preds = %bb.iq, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i632, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit595, %bb.hz, %._crit_edge910
  %.not.i.i.i636 = icmp eq ptr %.sroa.0802.01267, null
  br i1 %.not.i.i.i636, label %_ZNSt6vectorIiSaIiEED2Ev.exit637, label %bb.iz

bb.iz:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit635
  %i.atc = ptrtoint ptr %.sroa.15.01263 to i64
  %i.atd = ptrtoint ptr %.sroa.0802.01267 to i64
  %i.ate = sub i64 %i.atc, %i.atd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0802.01267, i64 noundef %i.ate) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit637

_ZNSt6vectorIiSaIiEED2Ev.exit637:                 ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit635, %bb.iz
  ret void

.loopexit873:                                     ; preds = %.loopexit828.loopexit, %.loopexit843.loopexit, %.loopexit843.loopexit.split-lp, %.loopexit873.loopexit, %.loopexit873.loopexit.split-lp, %.loopexit823, %.loopexit.split-lp824, %.loopexit, %.loopexit.split-lp, %.loopexit.split-lp829, %.loopexit.split-lp844, %.loopexit868, %.loopexit.split-lp869, %.loopexit863, %.loopexit.split-lp864, %.loopexit.split-lp874, %bb.iv, %bb.iw, %bb.ix, %bb.iy, %bb.hx, %bb.hy, %bb.gr, %bb.gs, %bb.fl, %bb.fm, %bb.ef, %bb.eg, %bb.cx, %bb.cy, %bb.cz, %bb.da, %bb.av, %_ZNSt6vectorIiSaIiEED2Ev.exit348, %bb.an
  %.pn269.pn.pn = phi { ptr, i32 } [ %i.ip, %bb.an ], [ %lpad.loopexit.split-lp846, %.loopexit.split-lp844 ], [ %i.sw, %bb.cx ], [ %lpad.loopexit.split-lp876, %.loopexit.split-lp874 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.atb, %bb.iy ], [ %lpad.loopexit.split-lp831, %.loopexit.split-lp829 ], [ %i.kf, %bb.av ], [ %lpad.loopexit.split-lp994, %.loopexit843.loopexit.split-lp ], [ %lpad.loopexit999, %.loopexit ], [ %lpad.loopexit, %.loopexit823 ], [ %lpad.loopexit957, %.loopexit873.loopexit ], [ %i.apj, %bb.hy ], [ %.pn256, %_ZNSt6vectorIiSaIiEED2Ev.exit348 ], [ %i.sz, %bb.da ], [ %i.sy, %bb.cz ], [ %i.sx, %bb.cy ], [ %i.yi, %bb.ef ], [ %i.yj, %bb.eg ], [ %lpad.loopexit993, %.loopexit843.loopexit ], [ %lpad.loopexit.split-lp866, %.loopexit.split-lp864 ], [ %i.adt, %bb.fl ], [ %i.adu, %bb.fm ], [ %i.ata, %bb.ix ], [ %i.asz, %bb.iw ], [ %i.ajr, %bb.gr ], [ %i.ajs, %bb.gs ], [ %lpad.loopexit.split-lp871, %.loopexit.split-lp869 ], [ %i.asy, %bb.iv ], [ %i.api, %bb.hx ], [ %lpad.loopexit1006, %.loopexit828.loopexit ], [ %lpad.loopexit.split-lp826, %.loopexit.split-lp824 ], [ %lpad.loopexit950, %.loopexit863 ], [ %lpad.loopexit953, %.loopexit868 ], [ %lpad.loopexit.split-lp958, %.loopexit873.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i638 = icmp eq ptr %.sroa.0802.01267, null
  br i1 %.not.i.i.i638, label %_ZNSt6vectorIiSaIiEED2Ev.exit639, label %.thread814

.thread814:                                       ; preds = %.loopexit828.loopexit.split-lp, %.loopexit889, %.loopexit.split-lp890, %bb.ai, %bb.aa, %bb.u, %bb.ah, %.loopexit858.loopexit, %.loopexit858.loopexit.split-lp, %.loopexit838, %.loopexit.split-lp839, %.loopexit833, %.loopexit.split-lp834, %.loopexit853, %.loopexit.split-lp854, %.loopexit848, %.loopexit.split-lp849, %.loopexit.split-lp859, %.loopexit873
  %.sroa.0802.01264 = phi ptr [ %.sroa.0802.01267, %.loopexit873 ], [ %.sroa.0802.01267, %.loopexit.split-lp834 ], [ %.sroa.0802.01267, %.loopexit.split-lp849 ], [ %.sroa.0802.01267, %.loopexit.split-lp859 ], [ %.sroa.0802.01267, %.loopexit.split-lp854 ], [ %.sroa.0802.01267, %.loopexit.split-lp839 ], [ %.sroa.0802.01267, %.loopexit848 ], [ %.sroa.0802.01267, %.loopexit853 ], [ %.sroa.0802.01267, %.loopexit833 ], [ %.sroa.0802.01267, %.loopexit838 ], [ %.sroa.0802.01267, %.loopexit858.loopexit.split-lp ], [ %.sroa.0802.01267, %.loopexit858.loopexit ], [ %.sroa.0802.01267, %.loopexit828.loopexit.split-lp ], [ %i.bf, %.loopexit889 ], [ %i.bf, %.loopexit.split-lp890 ], [ %i.bf, %bb.ai ], [ %i.bf, %bb.aa ], [ %i.bf, %bb.u ], [ %i.bf, %bb.ah ] ; 2 uses
  %.sroa.15.01260 = phi ptr [ %.sroa.15.01263, %.loopexit873 ], [ %.sroa.15.01263, %.loopexit.split-lp834 ], [ %.sroa.15.01263, %.loopexit.split-lp849 ], [ %.sroa.15.01263, %.loopexit.split-lp859 ], [ %.sroa.15.01263, %.loopexit.split-lp854 ], [ %.sroa.15.01263, %.loopexit.split-lp839 ], [ %.sroa.15.01263, %.loopexit848 ], [ %.sroa.15.01263, %.loopexit853 ], [ %.sroa.15.01263, %.loopexit833 ], [ %.sroa.15.01263, %.loopexit838 ], [ %.sroa.15.01263, %.loopexit858.loopexit.split-lp ], [ %.sroa.15.01263, %.loopexit858.loopexit ], [ %.sroa.15.01263, %.loopexit828.loopexit.split-lp ], [ %i.bg, %.loopexit889 ], [ %i.bg, %.loopexit.split-lp890 ], [ %i.bg, %bb.ai ], [ %i.bg, %bb.aa ], [ %i.bg, %bb.u ], [ %i.bg, %bb.ah ]
  %.pn269.pn.pn817 = phi { ptr, i32 } [ %.pn269.pn.pn, %.loopexit873 ], [ %lpad.loopexit.split-lp836, %.loopexit.split-lp834 ], [ %lpad.loopexit.split-lp851, %.loopexit.split-lp849 ], [ %lpad.loopexit.split-lp861, %.loopexit.split-lp859 ], [ %lpad.loopexit.split-lp856, %.loopexit.split-lp854 ], [ %lpad.loopexit.split-lp841, %.loopexit.split-lp839 ], [ %lpad.loopexit967, %.loopexit848 ], [ %lpad.loopexit971, %.loopexit853 ], [ %lpad.loopexit985, %.loopexit833 ], [ %lpad.loopexit989, %.loopexit838 ], [ %lpad.loopexit.split-lp976, %.loopexit858.loopexit.split-lp ], [ %lpad.loopexit975, %.loopexit858.loopexit ], [ %lpad.loopexit.split-lp1007, %.loopexit828.loopexit.split-lp ], [ %lpad.loopexit891, %.loopexit889 ], [ %lpad.loopexit.split-lp892, %.loopexit.split-lp890 ], [ %i.gq, %bb.ai ], [ %i.ge, %bb.aa ], [ %i.fw, %bb.u ], [ %i.gp, %bb.ah ]
  %i.atf = ptrtoint ptr %.sroa.15.01260 to i64
  %i.atg = ptrtoint ptr %.sroa.0802.01264 to i64
  %i.ath = sub i64 %i.atf, %i.atg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0802.01264, i64 noundef %i.ath) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit639

_ZNSt6vectorIiSaIiEED2Ev.exit639:                 ; preds = %.thread814, %.loopexit873
  %.pn269.pn.pn.pn = phi { ptr, i32 } [ %.pn269.pn.pn817, %.thread814 ], [ %.pn269.pn.pn, %.loopexit873 ]
  resume { ptr, i32 } %.pn269.pn.pn.pn
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7double2SaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !44     ; 13 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775792
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorI7double2SaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #18
  unreachable

_ZNKSt6vectorI7double2SaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 576460752303423487)
  %i.m = select i1 %i.k, i64 576460752303423487, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = shl nuw nsw i64 %i.m, 4
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #19 ; 13 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  %i.s = load <2 x double>, ptr %2, align 8, !tbaa !23
  store <2 x double> %i.s, ptr %i.r, align 8, !tbaa !23
  %.not13.i.i.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorI7double2SaIS0_EE12_M_check_lenEmPKc.exit
  %3 = ptrtoint ptr %1 to i64
  %i.t = sub i64 %3, %i.f
  %4 = add i64 %i.t, -16                          ; 2 uses
  %i.u = lshr i64 %4, 4
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 400
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader95, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.w = add i64 %i.a, -16
  %i.x = sub i64 %i.w, %i.f
  %i.y = and i64 %i.x, -16                        ; 2 uses
  %i.z = or disjoint i64 %i.y, 8                  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.z
  %scevgep49 = getelementptr i8, ptr %i.d, i64 %i.z
  %scevgep50 = getelementptr i8, ptr %i.q, i64 8
  %i.aa = add i64 %i.y, 16                        ; 2 uses
  %scevgep51 = getelementptr i8, ptr %i.q, i64 %i.aa
  %scevgep52 = getelementptr i8, ptr %i.d, i64 8
  %scevgep53 = getelementptr i8, ptr %i.d, i64 %i.aa
  %bound0 = icmp ult ptr %i.q, %scevgep49
  %bound1 = icmp ult ptr %i.d, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound054 = icmp ult ptr %scevgep50, %scevgep53
  %bound155 = icmp ult ptr %scevgep52, %scevgep51
  %found.conflict56 = and i1 %bound054, %bound155
  %conflict.rdx = or i1 %found.conflict, %found.conflict56
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.preheader95, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 2305843009213693950      ; 3 uses
  %i.ab = shl i64 %n.vec, 4                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.q, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.d, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 4                       ; 3 uses
  %i.af = or disjoint i64 %i.ae, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.ae
  %next.gep57 = getelementptr i8, ptr %i.q, i64 %i.af
  %next.gep58 = getelementptr i8, ptr %i.d, i64 %i.ae
  %next.gep59 = getelementptr i8, ptr %i.d, i64 %i.af
  %wide.load = load <2 x double>, ptr %next.gep58, align 8
  %wide.load60 = load <2 x double>, ptr %next.gep59, align 8
  store <2 x double> %wide.load, ptr %next.gep, align 8
  store <2 x double> %wide.load60, ptr %next.gep57, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !109

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader95

.lr.ph.i.i.i.i.i.preheader95:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.015.i.i.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  %.01214.i.i.i.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader95, %.lr.ph.i.i.i.i.i
  %.015.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.015.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader95 ] ; 2 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %.01214.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader95 ] ; 2 uses
  %i.ah = load <2 x double>, ptr %.01214.i.i.i.i.i, align 8, !tbaa !23
  store <2 x double> %i.ah, ptr %.015.i.i.i.i.i, align 8, !tbaa !23
  %i.ai = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !110

_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorI7double2SaIS0_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.q, %_ZNKSt6vectorI7double2SaIS0_EE12_M_check_lenEmPKc.exit ], [ %i.ac, %middle.block ], [ %i.aj, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %i.ak = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 7 uses
  %.not13.i.i.i.i.i28 = icmp eq ptr %1, %i.c
  br i1 %.not13.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34, label %.lr.ph.i.i.i.i.i29.preheader

.lr.ph.i.i.i.i.i29.preheader:                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit
  %5 = ptrtoint ptr %1 to i64
  %i.al = sub i64 %i.e, %5
  %6 = add i64 %i.al, -16                         ; 2 uses
  %i.am = lshr i64 %6, 4
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check77 = icmp ult i64 %6, 464
  br i1 %min.iters.check77, label %.lr.ph.i.i.i.i.i29.preheader94, label %vector.memcheck62

vector.memcheck62:                                ; preds = %.lr.ph.i.i.i.i.i29.preheader
  %i.ao = add i64 %i.e, -16
  %i.ap = sub i64 %i.ao, %i.a
  %i.aq = and i64 %i.ap, -16                      ; 4 uses
  %i.ar = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 %i.aq
  %scevgep63 = getelementptr i8, ptr %i.ar, i64 24
  %i.as = getelementptr i8, ptr %1, i64 %i.aq
  %scevgep64 = getelementptr i8, ptr %i.as, i64 8
  %scevgep65 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %i.at = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 %i.aq
  %scevgep66 = getelementptr i8, ptr %i.at, i64 32
  %scevgep67 = getelementptr i8, ptr %1, i64 8
  %i.au = getelementptr i8, ptr %1, i64 %i.aq
  %scevgep68 = getelementptr i8, ptr %i.au, i64 16
  %bound069 = icmp ult ptr %i.ak, %scevgep64
  %bound170 = icmp ult ptr %1, %scevgep63
  %found.conflict71 = and i1 %bound069, %bound170
  %bound072 = icmp ult ptr %scevgep65, %scevgep68
  %bound173 = icmp ult ptr %scevgep67, %scevgep66
  %found.conflict74 = and i1 %bound072, %bound173
  %conflict.rdx75 = or i1 %found.conflict71, %found.conflict74
  br i1 %conflict.rdx75, label %.lr.ph.i.i.i.i.i29.preheader94, label %vector.ph78

vector.ph78:                                      ; preds = %vector.memcheck62
  %n.vec80 = and i64 %i.an, 2305843009213693950   ; 3 uses
  %i.av = shl i64 %n.vec80, 4                     ; 2 uses
  %i.aw = getelementptr i8, ptr %i.ak, i64 %i.av  ; 2 uses
  %i.ax = getelementptr i8, ptr %1, i64 %i.av
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph78
  %index82 = phi i64 [ 0, %vector.ph78 ], [ %index.next89, %vector.body81 ] ; 2 uses
  %i.ay = shl i64 %index82, 4                     ; 3 uses
  %i.az = or disjoint i64 %i.ay, 16               ; 2 uses
  %next.gep83 = getelementptr i8, ptr %i.ak, i64 %i.ay
  %next.gep84 = getelementptr i8, ptr %i.ak, i64 %i.az
  %next.gep85 = getelementptr i8, ptr %1, i64 %i.ay
  %next.gep86 = getelementptr i8, ptr %1, i64 %i.az
  %wide.load87 = load <2 x double>, ptr %next.gep85, align 8
  %wide.load88 = load <2 x double>, ptr %next.gep86, align 8
  store <2 x double> %wide.load87, ptr %next.gep83, align 8
  store <2 x double> %wide.load88, ptr %next.gep84, align 8
  %index.next89 = add nuw i64 %index82, 2         ; 2 uses
  %i.ba = icmp eq i64 %index.next89, %n.vec80
  br i1 %i.ba, label %middle.block90, label %vector.body81, !llvm.loop !111

middle.block90:                                   ; preds = %vector.body81
  %cmp.n91 = icmp eq i64 %i.an, %n.vec80
  br i1 %cmp.n91, label %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34, label %.lr.ph.i.i.i.i.i29.preheader94

.lr.ph.i.i.i.i.i29.preheader94:                   ; preds = %vector.memcheck62, %.lr.ph.i.i.i.i.i29.preheader, %middle.block90
  %.015.i.i.i.i.i30.ph = phi ptr [ %i.ak, %vector.memcheck62 ], [ %i.ak, %.lr.ph.i.i.i.i.i29.preheader ], [ %i.aw, %middle.block90 ]
  %.01214.i.i.i.i.i31.ph = phi ptr [ %1, %vector.memcheck62 ], [ %1, %.lr.ph.i.i.i.i.i29.preheader ], [ %i.ax, %middle.block90 ]
  br label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %.lr.ph.i.i.i.i.i29.preheader94, %.lr.ph.i.i.i.i.i29
  %.015.i.i.i.i.i30 = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i29 ], [ %.015.i.i.i.i.i30.ph, %.lr.ph.i.i.i.i.i29.preheader94 ] ; 2 uses
  %.01214.i.i.i.i.i31 = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i29 ], [ %.01214.i.i.i.i.i31.ph, %.lr.ph.i.i.i.i.i29.preheader94 ] ; 2 uses
  %i.bb = load <2 x double>, ptr %.01214.i.i.i.i.i31, align 8, !tbaa !23
  store <2 x double> %i.bb, ptr %.015.i.i.i.i.i30, align 8, !tbaa !23
  %i.bc = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i31, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i30, i64 16 ; 2 uses
  %.not.i.i.i.i.i32 = icmp eq ptr %i.bc, %i.c
  br i1 %.not.i.i.i.i.i32, label %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34, label %.lr.ph.i.i.i.i.i29, !llvm.loop !112

_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34: ; preds = %.lr.ph.i.i.i.i.i29, %middle.block90, %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit
  %.0.lcssa.i.i.i.i.i33 = phi ptr [ %i.ak, %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit ], [ %i.aw, %middle.block90 ], [ %i.bd, %.lr.ph.i.i.i.i.i29 ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.d, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !41
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bh) #16
  br label %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit34, %bb.c
  store ptr %i.q, ptr %0, align 8, !tbaa !44
  store ptr %.0.lcssa.i.i.i.i.i33, ptr %i.b, align 8, !tbaa !45
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bi, ptr %i.be, align 8, !tbaa !41
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not70 = icmp eq ptr %2, %3
  br i1 %.not70, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54   ; 12 uses
  %i.i = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 9 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i64 0, %i.d
  %i.q = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = icmp sgt i64 %i.c, 4                     ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f, !prof !102

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.h, ptr nonnull align 4 %i.q, i64 %i.c, i1 false)
  %.pre72 = load ptr, ptr %i.g, align 8, !tbaa !54
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq i64 %i.c, 4
  br i1 %i.t, label %bb.g, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.q, align 4, !tbaa !4
  store i32 %i.u, ptr %i.h, align 4, !tbaa !4
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.v = phi ptr [ %.pre72, %bb.e ], [ %i.h, %bb.f ], [ %i.h, %bb.g ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.c
  store ptr %i.w, ptr %i.g, align 8, !tbaa !54
  %i.x = sub i64 %i.r, %i.l                       ; 3 uses
  %i.y = ashr exact i64 %i.x, 2                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.h, label %bb.i, !prof !102

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.aa = sub nsw i64 0, %i.y
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.aa
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr align 4 %1, i64 %i.x, i1 false)
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.ac = icmp eq i64 %i.x, 4
  br i1 %i.ac, label %bb.j, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.ae = load i32, ptr %1, align 4, !tbaa !4
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !4
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.s, label %bb.k, label %bb.l, !prof !102

bb.k:                                             ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit
  %i.af = icmp eq i64 %i.c, 4
  br i1 %i.af, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.m:                                             ; preds = %bb.l
  %i.ag = load i32, ptr %2, align 4, !tbaa !4
  store i32 %i.ag, ptr %1, align 4, !tbaa !4
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ah = icmp eq i64 %i.m, 4
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.m ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.a, %i.aj                     ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 4
  br i1 %i.al, label %bb.n, label %bb.o, !prof !102

bb.n:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.h, ptr align 4 %i.ai, i64 %i.ak, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !54
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.am = icmp eq i64 %i.ak, 4
  br i1 %i.am, label %bb.p, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.an = load i32, ptr %i.ai, align 4, !tbaa !4
end_hunk_3
