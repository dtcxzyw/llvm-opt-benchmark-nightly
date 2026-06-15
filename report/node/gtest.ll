inline.NumInlined: 6561
inline.NumDeleted: 2145
begin_hunk_0_@_ZN7testing8TestInfoD2Ev:bb.a
  %i.ak = load i64, ptr %i.ai, align 8
  %i.al = add i64 %i.ak, 1
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZN7testing8internal23MakeAndRegisterTestInfoENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcS8_S8_NS0_12CodeLocationEPKvPFvvESD_PNS0_15TestFactoryBaseE(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #2 {
bb.a:
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #45 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr %i.b, ptr %9, align 8
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 3 uses
  %i.h = icmp ult i64 %i.g, 16
  call void @llvm.assume(i1 %i.h)
  %i.i = add nuw nsw i64 %i.g, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.c, ptr %9, align 8
  %i.j = load i64, ptr %i.d, align 8
  store i64 %i.j, ptr %i.b, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.k = phi i64 [ %i.g, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.k, ptr %i.m, align 8
  store ptr %i.d, ptr %0, align 8
  store i64 0, ptr %i.l, align 8
  store i8 0, ptr %i.d, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr %i.n, ptr %10, align 8
  %i.o = icmp eq ptr %1, null
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.325) #43
  unreachable

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.p = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #44 ; 8 uses
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %bb.e, label %._crit_edge.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = icmp slt i64 %i.p, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.326) #43
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.s = add nuw i64 %i.p, 1                      ; 2 uses
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !5

bb.h:                                             ; preds = %bb.g
  call void @_ZSt17__throw_bad_allocv() #43
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.g
  %i.u = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #45 ; 2 uses
  store ptr %i.u, ptr %10, align 8
  store i64 %i.p, ptr %i.n, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.d
  %i.v = phi ptr [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.n, %bb.d ] ; 3 uses
  switch i64 %i.p, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.w = load i8, ptr %1, align 1
  store i8 %i.w, ptr %i.v, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.j:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull align 1 %1, i64 %i.p, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.i, %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.p, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.p
  store i8 0, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.z, ptr %11, align 8
  %i.aa = load ptr, ptr %4, align 8               ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ae = load i64, ptr %i.ad, align 8            ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.ae, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.ag, i1 false)
  br label %_ZN7testing8internal12CodeLocationC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  store ptr %i.aa, ptr %11, align 8
  %i.ah = load i64, ptr %i.ab, align 8
  store i64 %i.ah, ptr %i.z, align 8
  %.phi.trans.insert13 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre14 = load i64, ptr %.phi.trans.insert13, align 8
  br label %_ZN7testing8internal12CodeLocationC2EOS1_.exit

_ZN7testing8internal12CodeLocationC2EOS1_.exit:   ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ai = phi i64 [ %i.ae, %bb.k ], [ %.pre14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.ai, ptr %i.ak, align 8
  store ptr %i.ab, ptr %4, align 8
  store i64 0, ptr %i.aj, align 8
  store i8 0, ptr %i.ab, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.an = load i32, ptr %i.am, align 8
  store i32 %i.an, ptr %i.al, align 8
  call void @_ZN7testing8TestInfoC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_PKcS8_NS_8internal12CodeLocationEPKvPNS9_15TestFactoryBaseE(ptr noundef nonnull align 8 dereferenceable(272) %i.a, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %11, ptr noundef %5, ptr noundef %8)
  %i.ao = load ptr, ptr %11, align 8              ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.z
  br i1 %i.ap, label %_ZN7testing8internal12CodeLocationD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing8internal12CodeLocationC2EOS1_.exit
  %i.aq = load i64, ptr %i.z, align 8
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #46
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit

_ZN7testing8internal12CodeLocationD2Ev.exit:      ; preds = %_ZN7testing8internal12CodeLocationC2EOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.as = load ptr, ptr %10, align 8              ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.n
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit
  %i.au = load i64, ptr %i.n, align 8
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  %i.aw = load ptr, ptr %9, align 8               ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.b
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ay = load i64, ptr %i.b, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  %i.ba = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.l, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !6

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %i.bc = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #44
  %.not.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN7testing8UnitTestC2Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
  %i.bd = call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD2Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #44
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %bb.l, %bb.m
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8
  call void @_ZN7testing8internal12UnitTestImpl11AddTestInfoEPFvvES3_PNS_8TestInfoE(ptr noundef nonnull align 8 dereferenceable(713) %i.be, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %i.a)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal12UnitTestImpl11AddTestInfoEPFvvES3_PNS_8TestInfoE(ptr noundef nonnull align 8 dereferenceable(713) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.testing::internal::FilePath", align 8 ; 14 uses
  %5 = alloca %"class.testing::internal::GTestLog", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  call void @_ZN7testing8internal8FilePath13GetCurrentDirEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::internal::FilePath") align 8 %4) #44
  %i.e = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  %i.h = load ptr, ptr %4, align 8                ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.j = icmp eq ptr %i.h, %i.i                   ; 2 uses
  br i1 %i.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  br i1 %i.j, label %bb.c, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.b
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  switch i64 %i.l, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = load i8, ptr %i.h, align 1
  store i8 %i.n, ptr %i.e, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.e, ptr align 1 %i.h, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.o = load i64, ptr %i.k, align 8              ; 2 uses
  store i64 %i.o, ptr %i.b, align 8
  %i.p = load ptr, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store i8 0, ptr %i.q, align 1
  %.pre.i.i = load ptr, ptr %4, align 8
  br label %_ZN7testing8internal8FilePathaSEOS1_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.h, ptr %i.a, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load <2 x i64>, ptr %i.r, align 8
  store <2 x i64> %i.s, ptr %i.b, align 8
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.t = load i64, ptr %i.f, align 8
  store ptr %i.h, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = load <2 x i64>, ptr %i.u, align 8
  store <2 x i64> %i.v, ptr %i.b, align 8
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.e, ptr %4, align 8
  store i64 %i.t, ptr %i.i, align 8
  br label %_ZN7testing8internal8FilePathaSEOS1_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.i, ptr %4, align 8
  br label %_ZN7testing8internal8FilePathaSEOS1_.exit

_ZN7testing8internal8FilePathaSEOS1_.exit:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.f, %bb.g
  %6 = phi ptr [ %i.e, %bb.f ], [ %i.i, %bb.g ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.w, align 8
  store i8 0, ptr %6, align 1
  %i.x = load ptr, ptr %4, align 8                ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN7testing8internal8FilePathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing8internal8FilePathaSEOS1_.exit
  %i.aa = load i64, ptr %i.y, align 8
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #46
  br label %_ZN7testing8internal8FilePathD2Ev.exit

_ZN7testing8internal8FilePathD2Ev.exit:           ; preds = %_ZN7testing8internal8FilePathaSEOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  %i.ac = load i64, ptr %i.b, align 8
  %.not = icmp eq i64 %i.ac, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN7testing8internal8FilePathD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %5, i32 noundef 3, ptr noundef nonnull @.str.360, i32 noundef 688) #44
  %i.ad = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.361, i64 noundef 51) #44 ; 0 uses
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.362, i64 noundef 44) #44 ; 0 uses
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %5) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN7testing8internal8FilePathD2Ev.exit, %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i6, label %_ZNK7testing8TestInfo10type_paramEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = load ptr, ptr %i.ag, align 8
  br label %_ZNK7testing8TestInfo10type_paramEv.exit

_ZNK7testing8TestInfo10type_paramEv.exit:         ; preds = %bb.i, %bb.j
  %.0.i = phi ptr [ %i.ah, %bb.j ], [ null, %bb.i ]
  %i.ai = call noundef ptr @_ZN7testing8internal12UnitTestImpl12GetTestSuiteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcPFvvESD_(ptr noundef nonnull align 8 dereferenceable(713) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %.0.i, ptr noundef %1, ptr noundef %2)
  call void @_ZN7testing9TestSuite11AddTestInfoEPNS_8TestInfoE(ptr noundef nonnull align 8 dereferenceable(264) %i.ai, ptr noundef nonnull %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8internal26ReportInvalidTestSuiteTypeEPKcRKNS0_12CodeLocationE(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %"class.testing::Message", align 8  ; 4 uses
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  call void @_ZN7testing7MessageC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.a = load ptr, ptr %2, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 14 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.120, i64 noundef 37) #44 ; 0 uses
  %i.d = icmp eq ptr %0, null                     ; 2 uses
  br i1 %i.d, label %bb.b, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.96, i64 noundef 6) #44 ; 0 uses
  br label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.a
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #44
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %0, i64 noundef %i.f) #44 ; 0 uses
  br label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit:         ; preds = %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.121, i64 noundef 2) #44 ; 0 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.101, i64 noundef 64) #44 ; 0 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.110, i64 noundef 31) #44 ; 0 uses
  br i1 %i.d, label %bb.c, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i2

bb.c:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.96, i64 noundef 6) #44 ; 0 uses
  br label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit3

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i2: ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit
  %i.l = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #44
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %0, i64 noundef %i.l) #44 ; 0 uses
  br label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit3

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit3:        ; preds = %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i2
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.122, i64 noundef 12) #44 ; 0 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.123, i64 noundef 62) #44 ; 0 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.124, i64 noundef 61) #44 ; 0 uses
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.125, i64 noundef 61) #44 ; 0 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.126, i64 noundef 67) #44 ; 0 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.127, i64 noundef 12) #44 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 2, ptr noundef nonnull @.str.43, i32 noundef 2845) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  %i.t = load ptr, ptr %1, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load i32, ptr %i.u, align 8
  call void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef %i.t, i32 noundef %i.v) #44
  %i.w = load ptr, ptr %4, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = load i64, ptr %i.x, align 8
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.w, i64 noundef %i.y) #44 ; 2 uses
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.128, i64 noundef 1) #44 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  call void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull %i.a)
  %i.ab = load ptr, ptr %5, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef %i.ab, i64 noundef %i.ad) #44 ; 0 uses
  %i.af = load ptr, ptr %5, align 8               ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit3
  %i.ai = load i64, ptr %i.ag, align 8
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #44
  %i.ak = load ptr, ptr %4, align 8               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #46
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  %i.ap = load ptr, ptr %i.a, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(128) %i.a) #44, !inline_history !12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  ret void
}

declare void @_ZN7testing8internal18FormatFileLocationB5cxx11EPKci(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8internal12UnitTestImpl26RegisterParameterizedTestsEv(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(713) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !9, !noundef !10
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %_ZN7testing8internal30ParameterizedTestSuiteRegistry13RegisterTestsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.04.07.i = phi ptr [ %i.m, %.lr.ph.i ], [ %i.e, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %.sroa.04.07.i, align 8    ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #44, !inline_history !279
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 8 ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.g
  br i1 %i.n, label %_ZN7testing8internal30ParameterizedTestSuiteRegistry13RegisterTestsEv.exit, label %.lr.ph.i

_ZN7testing8internal30ParameterizedTestSuiteRegistry13RegisterTestsEv.exit: ; preds = %.lr.ph.i, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 368
  tail call void @_ZN7testing8internal34TypeParameterizedTestSuiteRegistry22CheckForInstantiationsEv(ptr noundef nonnull align 8 dereferenceable(48) %i.o)
  store i8 1, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal30ParameterizedTestSuiteRegistry13RegisterTestsEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8TestInfo3RunEv(ptr noundef nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #44
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7testing8UnitTestC2Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD2Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #44 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #44
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

end_hunk_0
