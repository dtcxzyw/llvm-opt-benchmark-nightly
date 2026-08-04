inline.NumInlined: 1084
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN6duckdb26TerminalProgressBarDisplay21PrintProgressInternalEidb:bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !110 ; 2 uses
  %i.cm = load i64, ptr %i.b, align 8, !tbaa !110
  %i.cn = sub i64 4611686018427387903, %i.cm
  %i.co = icmp ult i64 %i.cn, %i.cl
  br i1 %i.co, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i37

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #23
          to label %.noexc38 unwind label %bb.aa

.noexc38:                                         ; preds = %bb.t
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i37: ; preds = %bb.s
  %i.cp = load ptr, ptr %7, align 8, !tbaa !39
  %i.cq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.cp, i64 noundef %i.cl)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit40 unwind label %bb.aa ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i37
  %i.cr = load ptr, ptr %7, align 8, !tbaa !39    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit40
  call void @_ZdlPv(ptr noundef %i.cr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.cu = load i64, ptr %i.b, align 8, !tbaa !110
  %i.cv = icmp eq i64 %i.cu, 4611686018427387903
  br i1 %i.cv, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i44

.invoke:                                          ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #23
          to label %.cont unwind label %bb.c

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %i.cw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.13, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit47 unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i44
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  invoke void @_ZN6duckdb26TerminalProgressBarDisplay9FormatETAB5cxx11Edb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, double noundef %2, i1 noundef zeroext %3)
          to label %bb.u unwind label %bb.ab

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit47
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !110 ; 2 uses
  %i.cz = load i64, ptr %i.b, align 8, !tbaa !110
  %i.da = sub i64 4611686018427387903, %i.cz
  %i.db = icmp ult i64 %i.da, %i.cy
  br i1 %i.db, label %bb.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i48

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #23
          to label %.noexc49 unwind label %bb.ac

.noexc49:                                         ; preds = %bb.v
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i48: ; preds = %bb.u
  %i.dc = load ptr, ptr %8, align 8, !tbaa !39
  %i.dd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.dc, i64 noundef %i.cy)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit51 unwind label %bb.ac ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i48
  %i.de = load ptr, ptr %8, align 8, !tbaa !39    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit51
  call void @_ZdlPv(ptr noundef %i.de) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  invoke void @_ZN6duckdb7Printer8RawPrintENS_12OutputStreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i8 noundef zeroext 1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.w unwind label %bb.c

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %i.dh = load ptr, ptr %4, align 8, !tbaa !39    ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.a
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.w
  call void @_ZdlPv(ptr noundef %i.dh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i24, %bb.o
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.r
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dl = load ptr, ptr %5, align 8, !tbaa !39    ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.bk
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.y
  call void @_ZdlPv(ptr noundef %i.dl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58, %bb.x
  %.pn = phi { ptr, i32 } [ %i.dj, %bb.x ], [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ], [ %i.dk, %bb.y ]
  %i.dn = load ptr, ptr %6, align 8, !tbaa !39    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.z
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  call void @_ZdlPv(ptr noundef %i.dn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.ad

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit36
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i37, %bb.t
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = load ptr, ptr %7, align 8, !tbaa !39    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.aa
  call void @_ZdlPv(ptr noundef %i.dr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64, %bb.z
  %.pn13 = phi { ptr, i32 } [ %i.dp, %bb.z ], [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ], [ %i.dq, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.ad

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit47
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i48, %bb.v
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dw = load ptr, ptr %8, align 8, !tbaa !39    ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.dw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %bb.ab
  %.pn15 = phi { ptr, i32 } [ %i.du, %bb.ab ], [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %i.dv, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %bb.c
  %.pn17 = phi { ptr, i32 } [ %i.h, %bb.c ], [ %.pn15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ]
  %i.dz = load ptr, ptr %4, align 8, !tbaa !39    ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.a
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %bb.ad
  call void @_ZdlPv(ptr noundef %i.dz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn17
}

declare void @_ZN6duckdb7Printer8RawPrintENS_12OutputStreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i8 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb26TerminalProgressBarDisplay6UpdateEd(ptr noundef nonnull align 8 dereferenceable(272) %0, double noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::TerminalProgressBarDisplayedProgressInfo", align 8 ; 6 uses
  %i.a = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.b, align 8, !tbaa !63
  %i.c = sub nsw i64 %i.a, %.sroa.0.0.copyload.i2.i.i
  %i.d = sitofp i64 %i.c to double
  %3 = fdiv double %i.d, 1.000000e+09             ; 4 uses
  %4 = fdiv double %1, 1.000000e+02               ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !146
  %i.h = fmul double %4, %i.g                     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !160, !range !98, !noundef !99
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = fcmp oeq double %i.h, 0.000000e+00
  %i.m = fcmp oeq double %3, 0.000000e+00
  %or.cond.i.i = or i1 %i.l, %i.m
  br i1 %or.cond.i.i, label %_ZN6duckdb21UnscentedKalmanFilter6UpdateEdd.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = fdiv double 1.000000e-01, %i.h           ; 2 uses
  %i.o = fcmp ogt double %i.n, 1.000000e+00
  %.sroa.speculated.i.i = select i1 %i.o, double %i.n, double 1.000000e+00 ; 2 uses
  store double %.sroa.speculated.i.i, ptr %i.f, align 8, !tbaa !146
  %i.p = fmul double %i.h, %.sroa.speculated.i.i  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef 0)
  store double %i.p, ptr %i.r, align 8, !tbaa !161
  %i.s = fdiv double %i.p, %3
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef 1)
  store double %i.s, ptr %i.t, align 8, !tbaa !161
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 216
  store double %3, ptr %i.u, align 8, !tbaa !162
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 232
  store double %i.p, ptr %i.v, align 8, !tbaa !163
  store i8 1, ptr %i.i, align 8, !tbaa !160
  br label %_ZN6duckdb21UnscentedKalmanFilter6UpdateEdd.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb21UnscentedKalmanFilter7PredictEd(ptr noundef nonnull align 8 dereferenceable(184) %i.e, double noundef %3)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !163
  %i.y = fcmp une double %i.x, %i.h
  br i1 %i.y, label %bb.e, label %_ZN6duckdb21UnscentedKalmanFilter6UpdateEdd.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN6duckdb21UnscentedKalmanFilter14UpdateInternalEd(ptr noundef nonnull align 8 dereferenceable(184) %i.e, double noundef %i.h)
  store double %i.h, ptr %i.w, align 8, !tbaa !163
  br label %_ZN6duckdb21UnscentedKalmanFilter6UpdateEdd.exit

_ZN6duckdb21UnscentedKalmanFilter6UpdateEdd.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.z = fcmp ogt double %4, f0x3FEFAE147AE147AE
  br i1 %i.z, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb21UnscentedKalmanFilter6UpdateEdd.exit
  %i.aa = load i8, ptr %i.i, align 8, !tbaa !160, !range !98, !noundef !99
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.g, label %_ZNK6duckdb21UnscentedKalmanFilter28GetEstimatedRemainingSecondsEv.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 noundef 1)
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !161
  %i.af = fcmp ugt double %i.ae, 0.000000e+00
  br i1 %i.af, label %bb.h, label %_ZNK6duckdb21UnscentedKalmanFilter28GetEstimatedRemainingSecondsEv.exit

bb.h:                                             ; preds = %bb.g
  %i.ag = load double, ptr %i.f, align 8, !tbaa !146
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 noundef 0)
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !161
  %i.aj = fsub double %i.ag, %i.ai
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 noundef 1)
  %i.al = load double, ptr %i.ak, align 8, !tbaa !161
  %i.am = fdiv double %i.aj, %i.al                ; 2 uses
  %i.an = fcmp olt double %i.am, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.an, double 0.000000e+00, double %i.am
  br label %_ZNK6duckdb21UnscentedKalmanFilter28GetEstimatedRemainingSecondsEv.exit

_ZNK6duckdb21UnscentedKalmanFilter28GetEstimatedRemainingSecondsEv.exit: ; preds = %bb.f, %bb.g, %bb.h
  %.0.i = phi double [ f0x41DFFFFFFFC00000, %bb.f ], [ %.sroa.speculated.i, %bb.h ], [ +inf, %bb.g ] ; 2 uses
  %i.ao = fcmp ogt double %.0.i, f0x41DFFFFFFFC00000
  %.sroa.speculated = select i1 %i.ao, double f0x41DFFFFFFFC00000, double %.0.i
  br label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb21UnscentedKalmanFilter6UpdateEdd.exit, %_ZNK6duckdb21UnscentedKalmanFilter28GetEstimatedRemainingSecondsEv.exit
  %.0 = phi double [ %.sroa.speculated, %_ZNK6duckdb21UnscentedKalmanFilter28GetEstimatedRemainingSecondsEv.exit ], [ 5.000000e-01, %_ZN6duckdb21UnscentedKalmanFilter6UpdateEdd.exit ] ; 2 uses
  %i.ap = fcmp ogt double %1, 1.000000e+02
  br i1 %i.ap, label %_ZN6duckdb26TerminalProgressBarDisplay19NormalizePercentageEd.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = fcmp olt double %1, 0.000000e+00
  br i1 %i.aq, label %_ZN6duckdb26TerminalProgressBarDisplay19NormalizePercentageEd.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = fptosi double %1 to i32
  br label %_ZN6duckdb26TerminalProgressBarDisplay19NormalizePercentageEd.exit

_ZN6duckdb26TerminalProgressBarDisplay19NormalizePercentageEd.exit: ; preds = %bb.i, %bb.j, %bb.k
  %.0.i9 = phi i32 [ %i.ar, %bb.k ], [ 100, %bb.i ], [ 0, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.as = sext i32 %.0.i9 to i64
  call void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.au = fptoui double %.0 to i64
  call void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %i.at, i64 noundef %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !164
  %i.ax = load i64, ptr %2, align 8, !tbaa !164
  %i.ay = icmp ne i64 %i.aw, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = load i64, ptr %i.at, align 8
  %i.bc = icmp ne i64 %i.ba, %i.bb
  %.not3.i = select i1 %i.ay, i1 true, i1 %i.bc
  br i1 %.not3.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN6duckdb26TerminalProgressBarDisplay19NormalizePercentageEd.exit
  %i.bd = load ptr, ptr %0, align 8, !tbaa !52
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %.0.i9, double noundef %.0, i1 noundef zeroext false)
  call void @_ZN6duckdb7Printer5FlushENS_12OutputStreamE(i8 noundef zeroext 1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !166
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN6duckdb26TerminalProgressBarDisplay19NormalizePercentageEd.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21UnscentedKalmanFilter6UpdateEdd(ptr noundef nonnull align 8 dereferenceable(184) %0, double noundef %1, double noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !146
  %i.c = fmul double %1, %i.b                     ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !160, !range !98, !noundef !99
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = fcmp oeq double %i.c, 0.000000e+00
  %i.h = fcmp oeq double %2, 0.000000e+00
  %or.cond.i = or i1 %i.h, %i.g
  br i1 %or.cond.i, label %_ZN6duckdb21UnscentedKalmanFilter10InitializeEdd.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = fdiv double 1.000000e-01, %i.c           ; 2 uses
  %i.j = fcmp ogt double %i.i, 1.000000e+00
  %.sroa.speculated.i = select i1 %i.j, double %i.i, double 1.000000e+00 ; 2 uses
  store double %.sroa.speculated.i, ptr %i.a, align 8, !tbaa !146
  %i.k = fmul double %i.c, %.sroa.speculated.i    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 0)
  store double %i.k, ptr %i.m, align 8, !tbaa !161
  %i.n = fdiv double %i.k, %2
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 1)
  store double %i.n, ptr %i.o, align 8, !tbaa !161
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  store double %2, ptr %i.p, align 8, !tbaa !162
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  store double %i.k, ptr %i.q, align 8, !tbaa !163
  store i8 1, ptr %i.d, align 8, !tbaa !160
  br label %_ZN6duckdb21UnscentedKalmanFilter10InitializeEdd.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb21UnscentedKalmanFilter7PredictEd(ptr noundef nonnull align 8 dereferenceable(184) %0, double noundef %2)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !163
  %i.t = fcmp une double %i.s, %i.c
  br i1 %i.t, label %bb.e, label %_ZN6duckdb21UnscentedKalmanFilter10InitializeEdd.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN6duckdb21UnscentedKalmanFilter14UpdateInternalEd(ptr noundef nonnull align 8 dereferenceable(184) %0, double noundef %i.c)
  store double %i.c, ptr %i.r, align 8, !tbaa !163
  br label %_ZN6duckdb21UnscentedKalmanFilter10InitializeEdd.exit

_ZN6duckdb21UnscentedKalmanFilter10InitializeEdd.exit: ; preds = %bb.c, %bb.b, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK6duckdb21UnscentedKalmanFilter28GetEstimatedRemainingSecondsEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i8, ptr %i.a, align 8, !tbaa !160, !range !98, !noundef !99
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 1)
  %i.f = load double, ptr %i.e, align 8, !tbaa !161
  %i.g = fcmp ugt double %i.f, 0.000000e+00
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.i = load double, ptr %i.h, align 8, !tbaa !146
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
  %i.k = load double, ptr %i.j, align 8, !tbaa !161
  %i.l = fsub double %i.i, %i.k
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 1)
  %i.n = load double, ptr %i.m, align 8, !tbaa !161
  %i.o = fdiv double %i.l, %i.n                   ; 2 uses
  %i.p = fcmp olt double %i.o, 0.000000e+00
  %.sroa.speculated = select i1 %i.p, double 0.000000e+00, double %i.o
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi double [ f0x41DFFFFFFFC00000, %bb.a ], [ %.sroa.speculated, %bb.c ], [ +inf, %bb.b ]
  ret double %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  store i64 %1, ptr %0, align 8, !tbaa !164
  %i.a = icmp eq i64 %1, -1
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !39     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
end_hunk_0
