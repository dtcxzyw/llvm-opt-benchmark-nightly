Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/filter_policy?download=true
inline.NumInlined: 3027
inline.NumDeleted: 1523
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNK7rocksdb19BuiltinFilterPolicy12IsInstanceOfERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br i1 %i.m, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread4

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread4: ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.n = tail call noundef zeroext i1 @_ZNK7rocksdb12Customizable12IsInstanceOfERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread4
  %.0 = phi i1 [ %i.n, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread4 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7rocksdb12Customizable12IsInstanceOfERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !39
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(32) %0) ; 2 uses
  %i.h = load i64, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #37
  %i.j = icmp eq i64 %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.c
  %i.l = load ptr, ptr %1, align 8, !tbaa !40
  %bcmp.i = tail call i32 @bcmp(ptr %i.l, ptr nonnull %i.g, i64 %i.h)
  %i.m = icmp eq i32 %bcmp.i, 0
  br i1 %i.m, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.n = load ptr, ptr %0, align 8, !tbaa !42
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(32) %0) ; 3 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread11, label %bb.d

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10
  %i.r = load i64, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %i.s = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #37
  %i.t = icmp eq i64 %i.r, %i.s
  br i1 %i.t, label %bb.e, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread11

bb.e:                                             ; preds = %bb.d
  %i.u = icmp eq i64 %i.r, 0
  br i1 %i.u, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9: ; preds = %bb.e
  %i.v = load ptr, ptr %1, align 8, !tbaa !40
  %bcmp.i8 = tail call i32 @bcmp(ptr %i.v, ptr nonnull %i.q, i64 %i.r)
  %i.w = icmp eq i32 %bcmp.i8, 0
  br i1 %i.w, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread11

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread11: ; preds = %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread10
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.e, %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread11, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.a
  %.1 = phi i1 [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ false, %bb.a ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9.thread11 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9 ], [ true, %bb.c ], [ true, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZNK7rocksdb19BuiltinFilterPolicy17CompatibilityNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #1 align 2 {
bb.a:
  ret ptr @.str.18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define void @_ZN7rocksdb21BloomLikeFilterPolicyC2Ed(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 49), (56, 64)) %0, double noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN7rocksdb21BloomLikeFilterPolicyE, i64 16), ptr %0, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.b, align 8, !tbaa !363
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.c, align 8, !tbaa !364
  %i.d = fcmp olt double %1, 5.000000e-01
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp olt double %1, 1.000000e+00
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = fcmp olt double %1, 1.000000e+02
  %spec.store.select = select i1 %i.f, double %1, double 1.000000e+02
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi double [ %spec.store.select, %bb.c ], [ 0.000000e+00, %bb.a ], [ 1.000000e+00, %bb.b ] ; 3 uses
  %i.g = tail call double @llvm.fmuladd.f64(double %.0, double 1.000000e+03, double 5.000010e-01)
  %i.h = fptosi double %i.g to i32                ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.h, ptr %i.i, align 8, !tbaa !59
  %i.j = icmp slt i32 %i.h, 2081
  br i1 %i.j, label %_ZN7rocksdb18FastLocalBloomImpl15ChooseNumProbesEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ult i32 %i.h, 3581
  br i1 %i.k, label %_ZN7rocksdb18FastLocalBloomImpl15ChooseNumProbesEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = icmp samesign ult i32 %i.h, 5101
  br i1 %i.l, label %_ZN7rocksdb18FastLocalBloomImpl15ChooseNumProbesEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = icmp samesign ult i32 %i.h, 6641
  br i1 %i.m, label %_ZN7rocksdb18FastLocalBloomImpl15ChooseNumProbesEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = icmp samesign ult i32 %i.h, 8301
  br i1 %i.n, label %_ZN7rocksdb18FastLocalBloomImpl15ChooseNumProbesEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i32 %i.h, 10071
  br i1 %i.o, label %_ZN7rocksdb18FastLocalBloomImpl15ChooseNumProbesEi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = icmp samesign ult i32 %i.h, 11721
  br i1 %i.p, label %_ZN7rocksdb18FastLocalBloomImpl15ChooseNumProbesEi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = icmp samesign ult i32 %i.h, 14002
  br i1 %i.q, label %_ZN7rocksdb18FastLocalBloomImpl15ChooseNumProbesEi.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = icmp samesign ult i32 %i.h, 16051
  br i1 %i.r, label %_ZN7rocksdb18FastLocalBloomImpl15ChooseNumProbesEi.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = icmp samesign ult i32 %i.h, 18301
  br i1 %i.s, label %_ZN7rocksdb18FastLocalBloomImpl15ChooseNumProbesEi.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.t = icmp samesign ult i32 %i.h, 22002
  br i1 %i.t, label %_ZN7rocksdb18FastLocalBloomImpl15ChooseNumProbesEi.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = icmp samesign ult i32 %i.h, 25502
  br i1 %i.u, label %_ZN7rocksdb18FastLocalBloomImpl15ChooseNumProbesEi.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.v = icmp samesign ugt i32 %i.h, 50000
  br i1 %i.v, label %_ZN7rocksdb18FastLocalBloomImpl15ChooseNumProbesEi.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.w = trunc nuw i32 %i.h to i16
  %.lhs.trunc.i = add i16 %i.w, -1
  %i.x = udiv i16 %.lhs.trunc.i, 2000
  %.zext.i = zext nneg i16 %i.x to i32
  %i.y = add nsw i32 %.zext.i, -1
  br label %_ZN7rocksdb18FastLocalBloomImpl15ChooseNumProbesEi.exit

_ZN7rocksdb18FastLocalBloomImpl15ChooseNumProbesEi.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
  %.0.i = phi i32 [ %i.y, %bb.q ], [ 1, %bb.d ], [ 2, %bb.e ], [ 3, %bb.f ], [ 4, %bb.g ], [ 5, %bb.h ], [ 6, %bb.i ], [ 7, %bb.j ], [ 8, %bb.k ], [ 9, %bb.l ], [ 10, %bb.m ], [ 11, %bb.n ], [ 12, %bb.o ], [ 24, %bb.p ] ; 2 uses
  %i.z = fcmp ugt double %.0, 0.000000e+00
  br i1 %i.z, label %bb.r, label %_ZN7rocksdb9BloomMath16CacheLocalFpRateEdii.exit

bb.r:                                             ; preds = %_ZN7rocksdb18FastLocalBloomImpl15ChooseNumProbesEi.exit
  %i.aa = fdiv double 5.120000e+02, %.0           ; 3 uses
  %i.ab = tail call double @sqrt(double noundef %i.aa) #37 ; 2 uses
  %i.ac = sub nsw i32 0, %.0.i
  %i.ad = sitofp i32 %i.ac to double
  %i.ae = uitofp nneg i32 %.0.i to double         ; 2 uses
  %i.af = fsub double %i.aa, %i.ab
  %i.ag = fadd double %i.aa, %i.ab
  %i.ah = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ai = insertelement <2 x double> %i.ah, double %i.af, i64 1
  %i.aj = fdiv <2 x double> splat (double 5.120000e+02), %i.ai
  %i.ak = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = fdiv <2 x double> %i.al, %i.aj          ; 2 uses
  %i.an = extractelement <2 x double> %i.am, i64 0
  %i.ao = tail call double @exp(double noundef %i.an) #37
  %i.ap = fsub double 1.000000e+00, %i.ao
  %i.aq = tail call noundef double @pow(double noundef %i.ap, double noundef %i.ae) #37
  %i.ar = extractelement <2 x double> %i.am, i64 1
  %i.as = tail call double @exp(double noundef %i.ar) #37
  %i.at = fsub double 1.000000e+00, %i.as
  %i.au = tail call noundef double @pow(double noundef %i.at, double noundef %i.ae) #37
  %i.av = fadd double %i.aq, %i.au
  %i.aw = fmul double %i.av, 5.000000e-01
  br label %_ZN7rocksdb9BloomMath16CacheLocalFpRateEdii.exit

_ZN7rocksdb9BloomMath16CacheLocalFpRateEdii.exit: ; preds = %bb.r, %_ZN7rocksdb18FastLocalBloomImpl15ChooseNumProbesEi.exit
  %.0.i8 = phi double [ %i.aw, %bb.r ], [ 1.000000e+00, %_ZN7rocksdb18FastLocalBloomImpl15ChooseNumProbesEi.exit ]
  %i.ax = fdiv double 1.000000e+00, %.0.i8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.ax, ptr %i.ay, align 8, !tbaa !60
  %i.az = add nsw i32 %i.h, 500
  %2 = sdiv i32 %i.az, 1000
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %2, ptr %i.ba, align 4, !tbaa !61
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN7rocksdb21BloomLikeFilterPolicyD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @llvm.trap() #38
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN7rocksdb21BloomLikeFilterPolicy10kClassNameEv() local_unnamed_addr #1 align 2 {
bb.a:
  ret ptr @.str.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK7rocksdb21BloomLikeFilterPolicy12IsInstanceOfERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !39
  switch i64 %i.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread4.i [
    i64 32, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 30, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !40
  %i.d = load i256, ptr %i.c, align 1
  %i.e = icmp ne i256 %i.d, 51742919817372202779441201925464086905776695785138413979897255212718345121650
  %i.f = zext i1 %i.e to i32
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZNK7rocksdb19BuiltinFilterPolicy12IsInstanceOfERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread4.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.i = load i128, ptr %i.h, align 1
  %i.j = xor i128 %i.i, 144062516468514463651054477162156617586
  %i.k = getelementptr i8, ptr %i.h, i64 14
  %i.l = load i128, ptr %i.k, align 1
  %i.m = xor i128 %i.l, 152058774850929074480057918802141015137
  %i.n = or i128 %i.j, %i.m
  %i.o = icmp ne i128 %i.n, 0
  %i.p = zext i1 %i.o to i32
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZNK7rocksdb19BuiltinFilterPolicy12IsInstanceOfERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread4.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread4.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.r = tail call noundef zeroext i1 @_ZNK7rocksdb12Customizable12IsInstanceOfERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZNK7rocksdb19BuiltinFilterPolicy12IsInstanceOfERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNK7rocksdb19BuiltinFilterPolicy12IsInstanceOfERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread4.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.0 = phi i1 [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %i.r, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread4.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN7rocksdb27ReadOnlyBuiltinFilterPolicy10kClassNameEv() local_unnamed_addr #1 align 2 {
bb.a:
  ret ptr @.str.18
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7rocksdb21BloomLikeFilterPolicy5GetIdB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @_ZNK7rocksdb21BloomLikeFilterPolicy19GetBitsPerKeySuffixB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #37, !noalias !367
  %i.f = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %i.d, i64 noundef %i.e)
          to label %.noexc unwind label %bb.d     ; 6 uses

.noexc:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !62, !alias.scope !367
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !40   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !39   ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.h, ptr %0, align 8, !tbaa !40, !alias.scope !367
  %i.o = load i64, ptr %i.i, align 8, !tbaa !63
  store i64 %i.o, ptr %i.g, align 8, !tbaa !63, !alias.scope !367
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.p = phi i64 [ %i.l, %bb.b ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.r, align 8, !tbaa !39, !alias.scope !367
  store ptr %i.i, ptr %i.f, align 8, !tbaa !40
  store i64 0, ptr %i.q, align 8, !tbaa !39
  store i8 0, ptr %i.i, align 8, !tbaa !63
  %i.s = load ptr, ptr %2, align 8, !tbaa !40     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.c
  %i.v = load i64, ptr %i.t, align 8, !tbaa !63
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret void

bb.d:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %2, align 8, !tbaa !40     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.d
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !63
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7rocksdb21BloomLikeFilterPolicy19GetBitsPerKeySuffixB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.c = sdiv i32 %i.b, 1000
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.d = tail call i32 @llvm.abs.i32(i32 %i.c, i1 true) ; 5 uses
  %i.e = icmp samesign ult i32 %i.d, 10
  br i1 %i.e, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.g
  %.030.i.i = phi i32 [ %i.m, %bb.g ], [ 1, %bb.a ] ; 4 uses
  %.02329.i.i = phi i32 [ %i.l, %bb.g ], [ %i.d, %bb.a ] ; 5 uses
  %i.f = icmp samesign ult i32 %.02329.i.i, 100
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = add i32 %.030.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.h = icmp samesign ult i32 %.02329.i.i, 1000
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = add i32 %.030.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.e:                                             ; preds = %bb.c
  %i.j = icmp samesign ult i32 %.02329.i.i, 10000
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = add i32 %.030.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.g:                                             ; preds = %bb.e
  %i.l = udiv i32 %.02329.i.i, 10000
  %i.m = add i32 %.030.i.i, 4                     ; 2 uses
  %i.n = icmp samesign ult i32 %.02329.i.i, 100000
  br i1 %i.n, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !0

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.g, %bb.f, %bb.d, %bb.b, %bb.a
end_hunk_0
