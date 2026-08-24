Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpMa57TSolverInterface?download=true
inline.NumInlined: 485
inline.NumDeleted: 120
begin_hunk_0_@_ZN5Ipopt17INVALID_WARMSTARTC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_i
define linkonce_odr void @_ZN5Ipopt17INVALID_WARMSTARTC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_i(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 17, ptr %i.a, align 8, !tbaa !54
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !56
  %i.d = load i64, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.c, ptr noundef nonnull align 1 dereferenceable(17) @.str.86, i64 17, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !59
  %i.f = load ptr, ptr %4, align 8, !tbaa !56
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  invoke void @_ZN5Ipopt14IpoptExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iS8_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc.i
  %i.h = load ptr, ptr %4, align 8, !tbaa !56     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.b, align 8, !tbaa !58
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Ipopt17INVALID_WARMSTARTE, i64 16), ptr %0, align 8, !tbaa !10
  ret void

bb.b:                                             ; preds = %.noexc.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !56     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.b
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.b
  %i.o = load i64, ptr %i.b, align 8, !tbaa !58
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt14IpoptExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Ipopt14IpoptExceptionE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !58
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !56   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !58
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !56   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.q = load i64, ptr %i.o, align 8, !tbaa !58
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 5) i32 @_ZN5Ipopt20Ma57TSolverInterface10MultiSolveEbPKiS2_iPdbi(ptr noundef nonnull align 8 dereferenceable(656) %0, i1 noundef zeroext %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, i32 noundef %4, ptr noundef %5, i1 noundef zeroext %6, i32 noundef %7) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 117 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !32, !range !71, !noundef !72
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 1, !tbaa !32
  br i1 %1, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 118
  store i8 1, ptr %i.d, align 2, !tbaa !33
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 118
  %i.f = load i8, ptr %i.e, align 2, !range !71
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond = select i1 %1, i1 true, i1 %i.g
  br i1 %or.cond, label %.critedge, label %bb.e

.critedge:                                        ; preds = %bb.b, %bb.d
  %i.h = tail call noundef i32 @_ZN5Ipopt20Ma57TSolverInterface13FactorizationEPKiS2_bi(ptr noundef nonnull align 8 dereferenceable(656) %0, ptr poison, ptr poison, i1 noundef zeroext %6, i32 noundef %7) ; 2 uses
  %.not.not = icmp eq i32 %i.h, 0
  br i1 %.not.not, label %.thread, label %bb.f

.thread:                                          ; preds = %.critedge
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 118
  store i8 0, ptr %i.i, align 2, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %i.j = tail call noundef i32 @_ZN5Ipopt20Ma57TSolverInterface9BacksolveEiPd(ptr noundef nonnull align 8 dereferenceable(656) %0, i32 noundef %4, ptr noundef %5) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.e, %bb.c
  %.1 = phi i32 [ 0, %bb.e ], [ 3, %bb.c ], [ %i.h, %.critedge ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 5) i32 @_ZN5Ipopt20Ma57TSolverInterface13FactorizationEPKiS2_bi(ptr noundef nonnull align 8 dereferenceable(656) initializes((152, 160)) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca double, align 8                   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42   ; 7 uses
  %.not17 = icmp eq ptr %i.h, null
  br i1 %.not17, label %_ZN5Ipopt9TimedTask5StartEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1176
  %i.j = load i8, ptr %i.i, align 8, !tbaa !76, !range !71, !noundef !72
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %_ZN5Ipopt9TimedTask5StartEv.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 1128
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 1178
  store i8 0, ptr %i.m, align 2, !tbaa !78
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 1177
  store i8 1, ptr %i.n, align 1, !tbaa !79
  %i.o = tail call noundef double @_ZN5Ipopt7CpuTimeEv()
  store double %i.o, ptr %i.l, align 8, !tbaa !80
  %i.p = tail call noundef double @_ZN5Ipopt7SysTimeEv()
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 1144
  store double %i.p, ptr %i.q, align 8, !tbaa !81
  %i.r = tail call noundef double @_ZN5Ipopt13WallclockTimeEv()
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 1160
  store double %i.r, ptr %i.s, align 8, !tbaa !82
  br label %_ZN5Ipopt9TimedTask5StartEv.exit

_ZN5Ipopt9TimedTask5StartEv.exit:                 ; preds = %bb.c, %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.u = load double, ptr %i.t, align 8, !tbaa !67
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store double %i.u, ptr %i.v, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.x = load i32, ptr %i.w, align 8, !tbaa !74
  store i32 %i.x, ptr %i.a, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.z = load i32, ptr %i.y, align 4, !tbaa !75
  store i32 %i.z, ptr %i.b, align 4, !tbaa !68
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 336
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %_ZN5Ipopt9TimedTask5StartEv.exit
  %i.au = load ptr, ptr %i.aa, align 8, !tbaa !62
  %i.av = load ptr, ptr %i.ab, align 8, !tbaa !35
  %i.aw = load ptr, ptr %i.ac, align 8, !tbaa !36
  %i.ax = load ptr, ptr %i.ae, align 8, !tbaa !34
  %i.ay = load ptr, ptr %i.ah, align 8, !tbaa !38
  %i.az = load ptr, ptr %i.ai, align 8, !tbaa !37
  call void %i.au(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.av, ptr noundef %i.aw, ptr noundef nonnull %i.ad, ptr noundef %i.ax, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ag, ptr noundef %i.ay, ptr noundef %i.az, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.v, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al)
  %i.ba = load i32, ptr %i.am, align 4, !tbaa !68
  store i32 %i.ba, ptr %i.an, align 8, !tbaa !83
  %i.bb = load i32, ptr %i.ak, align 8, !tbaa !68 ; 5 uses
  switch i32 %i.bb, label %bb.j [
    i32 0, label %bb.q
    i32 -3, label %bb.d
    i32 -4, label %bb.g
  ]

bb.d:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 0, ptr %i.c, align 4, !tbaa !68
  %i.bc = load i32, ptr %i.at, align 8, !tbaa !68
  %i.bd = sitofp i32 %i.bc to double
  %i.be = load double, ptr %i.ap, align 8, !tbaa !84
  %i.bf = fmul double %i.be, %i.bd
  call void @_ZN5Ipopt18ComputeMemIncreaseIiEEvRT_dS1_PKc(ptr noundef nonnull align 4 dereferenceable(4) %i.ad, double noundef %i.bf, i32 noundef 0, ptr noundef nonnull @.str.69)
  %i.bg = load ptr, ptr %i.aq, align 8, !tbaa !46 ; 2 uses
  %i.bh = load i32, ptr %i.ad, align 8, !tbaa !85
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !10
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  call void (ptr, i32, i32, ptr, ...) %i.bk(ptr noundef nonnull align 8 dereferenceable(40) %i.bg, i32 noundef 4, i32 noundef 7, ptr noundef nonnull @.str.73, i32 noundef %i.bh)
  %i.bl = load i32, ptr %i.ad, align 8, !tbaa !85 ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = icmp slt i32 %i.bl, 0
  %i.bo = shl nsw i64 %i.bm, 3
  %i.bp = select i1 %i.bn, i64 -1, i64 %i.bo
  %i.bq = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bp) #22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.br = load ptr, ptr %i.ar, align 8, !tbaa !64
  %i.bs = load ptr, ptr %i.ah, align 8, !tbaa !38
  %i.bt = load ptr, ptr %i.ac, align 8, !tbaa !36
  %i.bu = load ptr, ptr %i.ae, align 8, !tbaa !34
  call void %i.br(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef %i.bs, ptr noundef %i.bt, ptr noundef nonnull %i.as, ptr noundef nonnull %i.bq, ptr noundef nonnull %i.ad, ptr noundef %i.bu, ptr noundef nonnull %i.as, ptr noundef nonnull %i.d, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ak)
  %i.bv = load ptr, ptr %i.ac, align 8, !tbaa !36 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.bv) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %i.bq, ptr %i.ac, align 8, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %.critedge.backedge

.critedge.backedge:                               ; preds = %bb.f, %bb.i
  br label %.critedge

bb.g:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store i32 1, ptr %i.e, align 4, !tbaa !68
  %i.bx = load i32, ptr %i.ao, align 4, !tbaa !68
  %i.by = sitofp i32 %i.bx to double
  %i.bz = load double, ptr %i.ap, align 8, !tbaa !84
  %i.ca = fmul double %i.bz, %i.by
  call void @_ZN5Ipopt18ComputeMemIncreaseIiEEvRT_dS1_PKc(ptr noundef nonnull align 4 dereferenceable(4) %i.af, double noundef %i.ca, i32 noundef 0, ptr noundef nonnull @.str.70)
  %i.cb = load i32, ptr %i.af, align 8, !tbaa !86 ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = icmp slt i32 %i.cb, 0
  %i.ce = shl nsw i64 %i.cc, 2
  %i.cf = select i1 %i.cd, i64 -1, i64 %i.ce
  %i.cg = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cf) #22 ; 2 uses
  %i.ch = load ptr, ptr %i.aq, align 8, !tbaa !46 ; 2 uses
  %5 = load i32, ptr %i.af, align 8, !tbaa !86
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !10
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  call void (ptr, i32, i32, ptr, ...) %i.ck(ptr noundef nonnull align 8 dereferenceable(40) %i.ch, i32 noundef 6, i32 noundef 7, ptr noundef nonnull @.str.74, i32 noundef %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.cl = load ptr, ptr %i.ar, align 8, !tbaa !64
  %i.cm = load ptr, ptr %i.ah, align 8, !tbaa !38
  %i.cn = load ptr, ptr %i.ac, align 8, !tbaa !36
  %i.co = load ptr, ptr %i.ae, align 8, !tbaa !34
  call void %i.cl(ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, ptr noundef %i.cm, ptr noundef %i.cn, ptr noundef nonnull %i.as, ptr noundef nonnull %i.f, ptr noundef nonnull %i.af, ptr noundef %i.co, ptr noundef nonnull %i.as, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ak)
  %i.cp = load ptr, ptr %i.ae, align 8, !tbaa !34 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.cp) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store ptr %i.cg, ptr %i.ae, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %.critedge.backedge

bb.j:                                             ; preds = %.critedge
  %i.cr = icmp slt i32 %i.bb, 0
  br i1 %i.cr, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cs = load ptr, ptr %i.aq, align 8, !tbaa !46 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !10
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8
  call void (ptr, i32, i32, ptr, ...) %i.cv(ptr noundef nonnull align 8 dereferenceable(40) %i.cs, i32 noundef 1, i32 noundef 7, ptr noundef nonnull @.str.75, i32 noundef %i.bb)
  %i.cw = load ptr, ptr %i.aq, align 8, !tbaa !46 ; 2 uses
  %i.cx = load i32, ptr %i.ak, align 8, !tbaa !68
  %i.cy = sub nsw i32 0, %i.cx
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [8 x i8], ptr @_ZN5Ipopt12ma57_err_msgE, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !87
  %i.dc = load ptr, ptr %i.cw, align 8, !tbaa !10
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  call void (ptr, i32, i32, ptr, ...) %i.de(ptr noundef nonnull align 8 dereferenceable(40) %i.cw, i32 noundef 6, i32 noundef 7, ptr noundef nonnull @.str.76, ptr noundef %i.db)
  br label %bb.v

bb.l:                                             ; preds = %bb.j
  %i.df = icmp eq i32 %i.bb, 4
  br i1 %i.df, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.dg = load ptr, ptr %i.g, align 8, !tbaa !42  ; 10 uses
  %.not19 = icmp eq ptr %i.dg, null
  br i1 %.not19, label %_ZN5Ipopt9TimedTask3EndEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 1176
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !76, !range !71, !noundef !72
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.o, label %_ZN5Ipopt9TimedTask3EndEv.exit

bb.o:                                             ; preds = %bb.n
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 1128
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 1178
  store i8 1, ptr %i.dl, align 2, !tbaa !78
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 1177
  store i8 0, ptr %i.dm, align 1, !tbaa !79
  %i.dn = call noundef double @_ZN5Ipopt7CpuTimeEv()
  %i.do = load double, ptr %i.dk, align 8, !tbaa !80
  %i.dp = fsub double %i.dn, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 1136 ; 2 uses
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !88
  %i.ds = fadd double %i.dr, %i.dp
  store double %i.ds, ptr %i.dq, align 8, !tbaa !88
  %i.dt = call noundef double @_ZN5Ipopt7SysTimeEv()
  %i.du = getelementptr inbounds nuw i8, ptr %i.dg, i64 1144
  %i.dv = load double, ptr %i.du, align 8, !tbaa !81
  %i.dw = fsub double %i.dt, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dg, i64 1152 ; 2 uses
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !89
  %i.dz = fadd double %i.dy, %i.dw
  store double %i.dz, ptr %i.dx, align 8, !tbaa !89
  %i.ea = call noundef double @_ZN5Ipopt13WallclockTimeEv()
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dg, i64 1160
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !82
  %i.ed = fsub double %i.ea, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dg, i64 1168 ; 2 uses
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !90
  %i.eg = fadd double %i.ef, %i.ed
  store double %i.eg, ptr %i.ee, align 8, !tbaa !90
  br label %_ZN5Ipopt9TimedTask3EndEv.exit

_ZN5Ipopt9TimedTask3EndEv.exit:                   ; preds = %bb.o, %bb.n, %bb.m
  %i.eh = load ptr, ptr %i.aq, align 8, !tbaa !46 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !68
  %i.ek = load ptr, ptr %i.eh, align 8, !tbaa !10
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.em = load ptr, ptr %i.el, align 8
  call void (ptr, i32, i32, ptr, ...) %i.em(ptr noundef nonnull align 8 dereferenceable(40) %i.eh, i32 noundef 6, i32 noundef 7, ptr noundef nonnull @.str.77, i32 noundef %i.ej)
  br label %bb.v

bb.p:                                             ; preds = %bb.l
  %i.en = load ptr, ptr %i.aq, align 8, !tbaa !46 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !10
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8
  call void (ptr, i32, i32, ptr, ...) %i.eq(ptr noundef nonnull align 8 dereferenceable(40) %i.en, i32 noundef 1, i32 noundef 7, ptr noundef nonnull @.str.78, i32 noundef %i.bb)
  %i.er = load ptr, ptr %i.aq, align 8, !tbaa !46 ; 2 uses
  %i.es = load i32, ptr %i.ak, align 8, !tbaa !68
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr @_ZN5Ipopt12ma57_wrn_msgE, i64 %i.et
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !87
  %i.ew = load ptr, ptr %i.er, align 8, !tbaa !10
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8
  call void (ptr, i32, i32, ptr, ...) %i.ey(ptr noundef nonnull align 8 dereferenceable(40) %i.er, i32 noundef 6, i32 noundef 7, ptr noundef nonnull @.str.79, ptr noundef %i.ev)
  br label %bb.v

bb.q:                                             ; preds = %.critedge
  %i.ez = load i32, ptr %i.ad, align 8, !tbaa !85
  %i.fa = sitofp i32 %i.ez to double
  %i.fb = load i32, ptr %i.af, align 8, !tbaa !86
  %i.fc = sitofp i32 %i.fb to double
  %i.fd = fmul nnan double %i.fc, 4.000000e+00
  %i.fe = call double @llvm.fmuladd.f64(double %i.fa, double 8.000000e+00, double %i.fd)
  %i.ff = load i32, ptr %i.ag, align 8, !tbaa !91
  %i.fg = sitofp i32 %i.ff to double
  %i.fh = call double @llvm.fmuladd.f64(double %i.fg, double 4.000000e+00, double %i.fe)
  %i.fi = fmul double %i.fh, 1.000000e-03
  %i.fj = load ptr, ptr %i.aq, align 8, !tbaa !46 ; 2 uses
  %i.fk = fptoui double %i.fi to i64
  %i.fl = load ptr, ptr %i.fj, align 8, !tbaa !10
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8
  call void (ptr, i32, i32, ptr, ...) %i.fn(ptr noundef nonnull align 8 dereferenceable(40) %i.fj, i32 noundef 6, i32 noundef 7, ptr noundef nonnull @.str.80, i64 noundef %i.fk)
  %i.fo = load ptr, ptr %i.g, align 8, !tbaa !42  ; 10 uses
  %.not18 = icmp eq ptr %i.fo, null
  br i1 %.not18, label %_ZN5Ipopt9TimedTask3EndEv.exit16, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 1176
  %i.fq = load i8, ptr %i.fp, align 8, !tbaa !76, !range !71, !noundef !72
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %bb.s, label %_ZN5Ipopt9TimedTask3EndEv.exit16

bb.s:                                             ; preds = %bb.r
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 1128
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 1178
  store i8 1, ptr %i.ft, align 2, !tbaa !78
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 1177
  store i8 0, ptr %i.fu, align 1, !tbaa !79
  %i.fv = call noundef double @_ZN5Ipopt7CpuTimeEv()
  %i.fw = load double, ptr %i.fs, align 8, !tbaa !80
  %i.fx = fsub double %i.fv, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fo, i64 1136 ; 2 uses
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !88
  %i.ga = fadd double %i.fz, %i.fx
  store double %i.ga, ptr %i.fy, align 8, !tbaa !88
  %i.gb = call noundef double @_ZN5Ipopt7SysTimeEv()
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fo, i64 1144
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !81
  %i.ge = fsub double %i.gb, %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fo, i64 1152 ; 2 uses
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !89
  %i.gh = fadd double %i.gg, %i.ge
  store double %i.gh, ptr %i.gf, align 8, !tbaa !89
  %i.gi = call noundef double @_ZN5Ipopt13WallclockTimeEv()
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fo, i64 1160
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !82
  %i.gl = fsub double %i.gi, %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fo, i64 1168 ; 2 uses
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !90
  %i.go = fadd double %i.gn, %i.gl
  store double %i.go, ptr %i.gm, align 8, !tbaa !90
  br label %_ZN5Ipopt9TimedTask3EndEv.exit16

_ZN5Ipopt9TimedTask3EndEv.exit16:                 ; preds = %bb.s, %bb.r, %bb.q
  br i1 %3, label %bb.t, label %bb.v

bb.t:                                             ; preds = %_ZN5Ipopt9TimedTask3EndEv.exit16
  %i.gp = load i32, ptr %i.an, align 8, !tbaa !83 ; 2 uses
  %.not = icmp eq i32 %4, %i.gp
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gq = load ptr, ptr %i.aq, align 8, !tbaa !46 ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !10
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8
  call void (ptr, i32, i32, ptr, ...) %i.gt(ptr noundef nonnull align 8 dereferenceable(40) %i.gq, i32 noundef 6, i32 noundef 7, ptr noundef nonnull @.str.81, i32 noundef %i.gp, i32 noundef %4)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %_ZN5Ipopt9TimedTask3EndEv.exit16, %bb.p, %_ZN5Ipopt9TimedTask3EndEv.exit, %bb.k
  %.111 = phi i32 [ 4, %bb.k ], [ 1, %_ZN5Ipopt9TimedTask3EndEv.exit ], [ 4, %bb.p ], [ 2, %bb.u ], [ 0, %bb.t ], [ 0, %_ZN5Ipopt9TimedTask3EndEv.exit16 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.111
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5Ipopt20Ma57TSolverInterface9BacksolveEiPd(ptr noundef nonnull align 8 dereferenceable(656) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN5Ipopt20Ma57TSolverInterface9BacksolveEiPd:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZN5Ipopt20Ma57TSolverInterface17GetValuesArrayPtrEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(656) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 5) i32 @_ZN5Ipopt20Ma57TSolverInterface19InitializeStructureEiiPKiS2_(ptr noundef nonnull align 8 dereferenceable(656) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.11", align 1 ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator.11", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load i8, ptr %i.a, align 8, !tbaa !73, !range !71, !noundef !72
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.d, align 8, !tbaa !74
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  store i32 %2, ptr %i.e, align 4, !tbaa !75
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #19
  %.pre = load i32, ptr %i.e, align 4, !tbaa !75
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi i32 [ %.pre, %bb.c ], [ %2, %bb.b ]  ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !35
  %i.j = sext i32 %i.i to i64
  %i.k = icmp slt i32 %i.i, 0
  %i.l = shl nsw i64 %i.j, 3
  %i.m = select i1 %i.k, i64 -1, i64 %i.l
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #22
  store ptr %i.n, ptr %i.f, align 8, !tbaa !35
  %i.o = tail call noundef i32 @_ZN5Ipopt20Ma57TSolverInterface21SymbolicFactorizationEPKiS2_(ptr noundef nonnull align 8 dereferenceable(656) %0, ptr noundef %3, ptr noundef %4) ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.o, label %bb.p

bb.e:                                             ; preds = %bb.a
  %i.p = load i32, ptr %i.d, align 8, !tbaa !74
  %i.q = icmp eq i32 %i.p, %1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp eq i32 %i.s, %2
  %or.cond = select i1 %i.q, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.66, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.60)
          to label %bb.g unwind label %bb.k       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.67)
          to label %bb.h unwind label %bb.k       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.w = call ptr @__cxa_allocate_exception(i64 112) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.62, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5Ipopt17INVALID_WARMSTARTC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_i(ptr noundef nonnull align 8 dereferenceable(112) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 513)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTIN5Ipopt17INVALID_WARMSTARTE, ptr nonnull @_ZN5Ipopt14IpoptExceptionD2Ev) #21
          to label %bb.q unwind label %bb.l

bb.k:                                             ; preds = %bb.g, %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.i
  %.0 = phi i1 [ false, %bb.j ], [ true, %bb.i ]  ; 2 uses
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.aa = load ptr, ptr %7, align 8, !tbaa !56    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !58
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br i1 %.0, label %bb.m, label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br i1 %.0, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn33 = phi { ptr, i32 } [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.w) #20
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.m, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn33, %bb.m ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.x, %bb.k ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.af = load ptr, ptr %5, align 8, !tbaa !56    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.n
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !58
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %.pn.pn

bb.o:                                             ; preds = %bb.e, %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i8 1, ptr %i.ak, align 4, !tbaa !16
  br label %bb.p

bb.p:                                             ; preds = %bb.d, %bb.o
  %.019 = phi i32 [ 0, %bb.o ], [ %i.o, %bb.d ]
  ret i32 %.019

bb.q:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 5) i32 @_ZN5Ipopt20Ma57TSolverInterface21SymbolicFactorizationEPKiS2_(ptr noundef nonnull align 8 dereferenceable(656) initializes((152, 160), (592, 596), (600, 616)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42   ; 7 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %_ZN5Ipopt9TimedTask5StartEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1120
  %i.f = load i8, ptr %i.e, align 8, !tbaa !76, !range !71, !noundef !72
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZN5Ipopt9TimedTask5StartEv.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 1072
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1122
  store i8 0, ptr %i.i, align 2, !tbaa !78
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 1121
  store i8 1, ptr %i.j, align 1, !tbaa !79
  %i.k = tail call noundef double @_ZN5Ipopt7CpuTimeEv()
  store double %i.k, ptr %i.h, align 8, !tbaa !80
  %i.l = tail call noundef double @_ZN5Ipopt7SysTimeEv()
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 1088
  store double %i.l, ptr %i.m, align 8, !tbaa !81
  %i.n = tail call noundef double @_ZN5Ipopt13WallclockTimeEv()
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 1104
  store double %i.n, ptr %i.o, align 8, !tbaa !82
  br label %_ZN5Ipopt9TimedTask5StartEv.exit

_ZN5Ipopt9TimedTask5StartEv.exit:                 ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = load i32, ptr %i.p, align 8, !tbaa !74   ; 4 uses
  store i32 %i.q, ptr %i.a, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.s = load i32, ptr %i.r, align 4, !tbaa !75   ; 3 uses
  store i32 %i.s, ptr %i.b, align 4, !tbaa !68
  %i.t = mul nsw i32 %i.q, 5                      ; 2 uses
  %3 = tail call i32 @llvm.smax.i32(i32 %i.q, i32 %i.s)
  %4 = add i32 %i.t, 42
  %i.u = add i32 %4, %i.s
  %i.v = add i32 %i.u, %3
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 4 uses
  store i32 %i.v, ptr %i.w, align 8, !tbaa !91
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.y = load double, ptr %i.x, align 8, !tbaa !67
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152
  store double %i.y, ptr %i.z, align 8, !tbaa !69
  %i.aa = sext i32 %i.t to i64
  %i.ab = icmp slt i32 %i.q, 0
  %i.ac = shl nsw i64 %i.aa, 2
  %i.ad = select i1 %i.ab, i64 -1, i64 %i.ac
  %i.ae = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ad) #22
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !37
  %5 = load i32, ptr %i.w, align 8, !tbaa !91     ; 2 uses
  %i.ag = sext i32 %5 to i64
  %i.ah = icmp slt i32 %5, 0
  %i.ai = shl nsw i64 %i.ag, 2
  %i.aj = select i1 %i.ah, i64 -1, i64 %i.ai
  %i.ak = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aj) #22 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 600
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !38
  %6 = load i32, ptr %i.w, align 8, !tbaa !91     ; 2 uses
  %i.am = icmp sgt i32 %6, 0
  br i1 %i.am, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN5Ipopt9TimedTask5StartEv.exit
  %i.an = zext nneg i32 %6 to i64
  %i.ao = shl nuw nsw i64 %i.an, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ak, i8 0, i64 %i.ao, i1 false), !tbaa !68
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %_ZN5Ipopt9TimedTask5StartEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %7 = load ptr, ptr %i.ap, align 8, !tbaa !61
  %i.aq = load ptr, ptr %i.af, align 8, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 432
  call void %7(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.w, ptr noundef nonnull %i.ak, ptr noundef %i.aq, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.as, ptr noundef nonnull %i.at)
  %i.au = load i32, ptr %i.as, align 8, !tbaa !68 ; 2 uses
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !46 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !10
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  call void (ptr, i32, i32, ptr, ...) %i.ba(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, i32 noundef 1, i32 noundef 7, ptr noundef nonnull @.str.68, i32 noundef %i.au)
  br label %_ZN5Ipopt9TimedTask3EndEv.exit

bb.e:                                             ; preds = %._crit_edge
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 4 uses
  store i32 0, ptr %i.bb, align 8, !tbaa !85
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 4 uses
  store i32 0, ptr %i.bc, align 8, !tbaa !86
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !68
  %i.bf = sitofp i32 %i.be to double
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !84
  %i.bi = fmul double %i.bh, %i.bf
  call void @_ZN5Ipopt18ComputeMemIncreaseIiEEvRT_dS1_PKc(ptr noundef nonnull align 4 dereferenceable(4) %i.bb, double noundef %i.bi, i32 noundef 0, ptr noundef nonnull @.str.69)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !68
  %i.bl = sitofp i32 %i.bk to double
  %i.bm = load double, ptr %i.bg, align 8, !tbaa !84
  %i.bn = fmul double %i.bm, %i.bl
  call void @_ZN5Ipopt18ComputeMemIncreaseIiEEvRT_dS1_PKc(ptr noundef nonnull align 4 dereferenceable(4) %i.bc, double noundef %i.bn, i32 noundef 0, ptr noundef nonnull @.str.70)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !36 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.bp) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr null, ptr %i.bo, align 8, !tbaa !36
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !34 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.bs) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store ptr null, ptr %i.br, align 8, !tbaa !34
  %i.bu = load i32, ptr %i.bb, align 8, !tbaa !85 ; 2 uses
  %i.bv = sext i32 %i.bu to i64
  %i.bw = icmp slt i32 %i.bu, 0
  %i.bx = shl nsw i64 %i.bv, 3
  %i.by = select i1 %i.bw, i64 -1, i64 %i.bx
  %i.bz = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.by) #22
  store ptr %i.bz, ptr %i.bo, align 8, !tbaa !36
  %i.ca = load i32, ptr %i.bc, align 8, !tbaa !86 ; 2 uses
  %i.cb = sext i32 %i.ca to i64
  %i.cc = icmp slt i32 %i.ca, 0
  %i.cd = shl nsw i64 %i.cb, 2
  %i.ce = select i1 %i.cc, i64 -1, i64 %i.cd
  %i.cf = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ce) #22
  store ptr %i.cf, ptr %i.br, align 8, !tbaa !34
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !46 ; 2 uses
  %i.ci = load double, ptr %i.bg, align 8, !tbaa !84
  %8 = load i32, ptr %i.bb, align 8, !tbaa !85
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !10
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  call void (ptr, i32, i32, ptr, ...) %i.cl(ptr noundef nonnull align 8 dereferenceable(40) %i.ch, i32 noundef 6, i32 noundef 7, ptr noundef nonnull @.str.71, double noundef %i.ci, i32 noundef %8)
  %i.cm = load ptr, ptr %i.cg, align 8, !tbaa !46 ; 2 uses
  %i.cn = load double, ptr %i.bg, align 8, !tbaa !84
  %i.co = load i32, ptr %i.bc, align 8, !tbaa !86
  %i.cp = load ptr, ptr %i.cm, align 8, !tbaa !10
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  call void (ptr, i32, i32, ptr, ...) %i.cr(ptr noundef nonnull align 8 dereferenceable(40) %i.cm, i32 noundef 6, i32 noundef 7, ptr noundef nonnull @.str.72, double noundef %i.cn, i32 noundef %i.co)
  %i.cs = load ptr, ptr %i.c, align 8, !tbaa !42  ; 10 uses
  %.not11 = icmp eq ptr %i.cs, null
  br i1 %.not11, label %_ZN5Ipopt9TimedTask3EndEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 1120
  %i.cu = load i8, ptr %i.ct, align 8, !tbaa !76, !range !71, !noundef !72
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.k, label %_ZN5Ipopt9TimedTask3EndEv.exit

bb.k:                                             ; preds = %bb.j
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 1072
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 1122
  store i8 1, ptr %i.cx, align 2, !tbaa !78
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 1121
  store i8 0, ptr %i.cy, align 1, !tbaa !79
  %i.cz = call noundef double @_ZN5Ipopt7CpuTimeEv()
  %i.da = load double, ptr %i.cw, align 8, !tbaa !80
  %i.db = fsub double %i.cz, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 1080 ; 2 uses
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !88
  %i.de = fadd double %i.dd, %i.db
  store double %i.de, ptr %i.dc, align 8, !tbaa !88
  %i.df = call noundef double @_ZN5Ipopt7SysTimeEv()
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cs, i64 1088
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !81
  %i.di = fsub double %i.df, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cs, i64 1096 ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !89
  %i.dl = fadd double %i.dk, %i.di
  store double %i.dl, ptr %i.dj, align 8, !tbaa !89
  %i.dm = call noundef double @_ZN5Ipopt13WallclockTimeEv()
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cs, i64 1104
  %i.do = load double, ptr %i.dn, align 8, !tbaa !82
  %i.dp = fsub double %i.dm, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cs, i64 1112 ; 2 uses
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !90
  %i.ds = fadd double %i.dr, %i.dp
  store double %i.ds, ptr %i.dq, align 8, !tbaa !90
  br label %_ZN5Ipopt9TimedTask3EndEv.exit

_ZN5Ipopt9TimedTask3EndEv.exit:                   ; preds = %bb.k, %bb.j, %bb.i, %bb.d
  %.08 = phi i32 [ 4, %bb.d ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.08
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Ipopt18ComputeMemIncreaseIiEEvRT_dS1_PKc(ptr noundef nonnull align 4 dereferenceable(4) %0, double noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = fcmp ult double %1, f0x41DFFFFFFFC00000
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !68
  %.not = icmp eq i32 %i.b, 2147483647
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.89, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 8589934588)
          to label %_ZNSolsEm.exit unwind label %bb.g ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.90, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16: ; preds = %_ZNSolsEm.exit
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %3)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.91, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17: ; preds = %bb.d
  %i.i = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  invoke void @_ZNSt14overflow_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt14overflow_error, ptr nonnull @_ZNSt14overflow_errorD1Ev) #21
          to label %bb.m unwind label %bb.h

bb.g:                                             ; preds = %bb.d, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i1 [ false, %bb.f ], [ true, %bb.e ]  ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %5, align 8, !tbaa !56     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.p = load i64, ptr %i.n, align 8, !tbaa !58
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.0, label %bb.i, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.0, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn20 = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.i) #20
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn20, %bb.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.j, %bb.g ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %.pn.pn

bb.k:                                             ; preds = %bb.a
  %i.r = fptosi double %1 to i32
  %.sroa.speculated.i = tail call noundef i32 @llvm.smax.i32(i32 %2, i32 %i.r)
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.k
  %storemerge = phi i32 [ %.sroa.speculated.i, %bb.k ], [ 2147483647, %bb.b ]
  store i32 %storemerge, ptr %0, align 4, !tbaa !68
  ret void

bb.m:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK5Ipopt20Ma57TSolverInterface16NumberOfNegEValsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(656) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i32, ptr %i.a, align 8, !tbaa !83
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5Ipopt20Ma57TSolverInterface15IncreaseQualityEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(656) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !67 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !66
  %i.e = fcmp une double %i.b, %i.d               ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 117
  store i8 1, ptr %i.f, align 1, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.k(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i32 noundef 6, i32 noundef 7, ptr noundef nonnull @.str.83, double noundef %i.b)
  %i.l = load double, ptr %i.c, align 8, !tbaa !66 ; 2 uses
  %i.m = load double, ptr %i.a, align 8, !tbaa !67
  %i.n = tail call double @pow(double noundef %i.m, double noundef 7.500000e-01) #20 ; 2 uses
  %i.o = fcmp olt double %i.n, %i.l
  %.sroa.speculated.i = select i1 %i.o, double %i.n, double %i.l ; 2 uses
  store double %.sroa.speculated.i, ptr %i.a, align 8, !tbaa !67
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !46   ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
end_hunk_1
