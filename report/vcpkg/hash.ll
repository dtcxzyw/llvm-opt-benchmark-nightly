inline.NumInlined: 374
inline.NumDeleted: 76
begin_hunk_0_@_ZL19C_A_T_C_H_T_E_S_T_4v:bb.a
  %i.me = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.de unwind label %bb.ds

bb.dd:                                            ; preds = %bb.cu, %bb.ct
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.de:                                            ; preds = %bb.dc, %bb.dd
  %.pn50 = phi { ptr, i32 } [ %i.mf, %bb.dd ], [ %i.me, %bb.dc ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %45) #16
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.cr
  %.pn50.pn = phi { ptr, i32 } [ %.pn50, %bb.de ], [ %i.kr, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #16
  %i.mg = load ptr, ptr %44, align 8, !tbaa !21   ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 2 uses
  %i.mi = icmp eq ptr %i.mg, %i.mh
  br i1 %i.mi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %bb.df
  %i.mj = load i64, ptr %i.mh, align 8, !tbaa !43
  %i.mk = add i64 %i.mj, 1
  call void @_ZdlPvm(ptr noundef %i.mg, i64 noundef %i.mk) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  br label %bb.dr

bb.dg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117
  %i.ml = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #16
  br label %bb.dq

bb.dh:                                            ; preds = %bb.da
  %i.mm = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %55) #16
  %.21 = extractvalue { ptr, i32 } %i.mm, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #16
  %i.mn = call ptr @__cxa_begin_catch(ptr %.21) #16 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %51)
          to label %bb.di unwind label %bb.dn

bb.di:                                            ; preds = %bb.dh
  invoke void @__cxa_end_catch()
          to label %bb.dj unwind label %bb.do

bb.dj:                                            ; preds = %bb.di, %bb.db
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %51)
          to label %bb.dk unwind label %bb.do

bb.dk:                                            ; preds = %bb.dj
  %i.mo = getelementptr inbounds nuw i8, ptr %51, i64 58
  %i.mp = load i8, ptr %i.mo, align 2, !tbaa !32, !range !39, !noundef !40
  %i.mq = trunc nuw i8 %i.mp to i1
  br i1 %i.mq, label %_ZN5Catch16AssertionHandlerD2Ev.exit124, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.mr = getelementptr inbounds nuw i8, ptr %51, i64 64
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !41, !nonnull !40, !align !42 ; 2 uses
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !26
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 112
  %i.mv = load ptr, ptr %i.mu, align 8
  invoke void %i.mv(ptr noundef nonnull align 8 dereferenceable(8) %i.ms, ptr noundef nonnull align 8 dereferenceable(72) %51)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit124 unwind label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.mw = landingpad { ptr, i32 }
          catch ptr null
  %i.mx = extractvalue { ptr, i32 } %i.mw, 0
  call void @__clang_call_terminate(ptr %i.mx) #17
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit124:          ; preds = %bb.dk, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #16
  %i.my = load ptr, ptr %50, align 8, !tbaa !21   ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 2 uses
  %i.na = icmp eq ptr %i.my, %i.mz
  br i1 %i.na, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit124
  %i.nb = load i64, ptr %i.mz, align 8, !tbaa !43
  %i.nc = add i64 %i.nb, 1
  call void @_ZdlPvm(ptr noundef %i.my, i64 noundef %i.nc) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit124, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  ret void

bb.dn:                                            ; preds = %bb.dh
  %i.nd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.dp unwind label %bb.ds

bb.do:                                            ; preds = %bb.dj, %bb.di
  %i.ne = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.dp:                                            ; preds = %bb.dn, %bb.do
  %.pn54 = phi { ptr, i32 } [ %i.ne, %bb.do ], [ %i.nd, %bb.dn ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %51) #16
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.dg
  %.pn54.pn = phi { ptr, i32 } [ %.pn54, %bb.dp ], [ %i.ml, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #16
  %i.nf = load ptr, ptr %50, align 8, !tbaa !21   ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 2 uses
  %i.nh = icmp eq ptr %i.nf, %i.ng
  br i1 %i.nh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %bb.dq
  %i.ni = load i64, ptr %i.ng, align 8, !tbaa !43
  %i.nj = add i64 %i.ni, 1
  call void @_ZdlPvm(ptr noundef %i.nf, i64 noundef %i.nj) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  br label %bb.dr

bb.dr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %.pn54.pn.pn = phi { ptr, i32 } [ %.pn54.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130 ], [ %.pn50.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123 ], [ %.pn46.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ], [ %.pn42.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ], [ %.pn38.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %.pn34.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ], [ %.pn30.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %.pn26.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ]
  resume { ptr, i32 } %.pn54.pn.pn

bb.ds:                                            ; preds = %bb.dn, %bb.dc, %bb.cn, %bb.by, %bb.bj, %bb.au, %bb.af, %bb.q
  %i.nk = landingpad { ptr, i32 }
          catch ptr null
  %i.nl = extractvalue { ptr, i32 } %i.nk, 0
  call void @__clang_call_terminate(ptr %i.nl) #17
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL19C_A_T_C_H_T_E_S_T_6v() #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %1 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %2 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %3 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %4 = alloca %"class.std::unique_ptr", align 8   ; 20 uses
  %i.a = alloca [512 x i8], align 16              ; 8 uses
  %5 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %6 = alloca %"class.Catch::StringRef", align 8  ; 6 uses
  %7 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %8 = alloca %"class.Catch::StringRef", align 8  ; 3 uses
  %9 = alloca %"class.Catch::BinaryExpr", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = alloca [512 x i8], align 16              ; 6 uses
  %11 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %12 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %13 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %14 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %15 = alloca %"class.Catch::BinaryExpr", align 8 ; 13 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = alloca [512 x i8], align 16              ; 6 uses
  %17 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %18 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %19 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %20 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %21 = alloca %"class.Catch::BinaryExpr", align 8 ; 13 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.d = alloca [512 x i8], align 16              ; 8 uses
  %23 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %24 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %25 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %26 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %27 = alloca %"class.Catch::BinaryExpr", align 8 ; 13 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @_ZN5vcpkg4Hash14get_hasher_forENS0_9AlgorithmE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %4, i32 noundef 0)
  %i.e = load ptr, ptr %4, align 8, !tbaa !104    ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.j = icmp ult i64 %i.r, 512
  br i1 %i.j, label %.thread, label %bb.c, !llvm.loop !106

.thread:                                          ; preds = %bb.b
  %i.k = load ptr, ptr %4, align 8, !tbaa !104    ; 2 uses
  %29 = getelementptr i8, ptr %i.a, i64 %.040111152
  %i.l = getelementptr i8, ptr %29, i64 -512
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !26
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull %i.a, ptr noundef nonnull %i.l) #16
  br label %.loopexit145

bb.c:                                             ; preds = %bb.a, %bb.b
  %.040111152 = phi i64 [ 1000000, %bb.a ], [ %i.r, %bb.b ] ; 2 uses
  %i.o = load ptr, ptr %4, align 8, !tbaa !104    ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.a, ptr noundef nonnull %i.i) #16
  %i.r = add i64 %.040111152, -512                ; 3 uses
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %.loopexit145, label %bb.b, !llvm.loop !106

.loopexit145:                                     ; preds = %bb.c, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store ptr @.str.15, ptr %6, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 7, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store ptr @.str, ptr %7, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 132, ptr %i.t, align 8, !tbaa !14
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull @.str.63) #16
  %i.u = load ptr, ptr %8, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = load i64, ptr %i.v, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr %i.u, i64 %i.w, i32 noundef 1)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %.loopexit145
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.x = load ptr, ptr %4, align 8, !tbaa !104    ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !18, !noalias !108
  %i.ad = icmp eq i64 %i.ac, 64
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %10, align 8, !tbaa !21, !noalias !108
  %bcmp.i.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(64) %i.ae, ptr noundef nonnull align 1 dereferenceable(65) @.str.64, i64 64), !noalias !108
  %i.af = icmp eq i32 %bcmp.i.i.i, 0
  %i.ag = zext i1 %i.af to i8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = phi i8 [ 0, %bb.e ], [ %i.ag, %bb.f ]
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.27) #16, !noalias !108
  %i.ai = load ptr, ptr %3, align 8, !noalias !108
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !108
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 1, ptr %i.al, align 8, !tbaa !22, !alias.scope !108
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 9
  store i8 %i.ah, ptr %i.am, align 1, !tbaa !25, !alias.scope !108
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch10BinaryExprIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA65_KcEE, i64 16), ptr %9, align 8, !tbaa !26, !alias.scope !108
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %10, ptr %i.an, align 8, !tbaa !28, !alias.scope !108
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.ai, ptr %i.ao, align 8, !tbaa !30, !alias.scope !108
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 %i.ak, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !31, !alias.scope !108
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 40
  store ptr @.str.64, ptr %i.ap, align 8, !tbaa !30, !alias.scope !108
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(10) %9)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #16
  %i.aq = load ptr, ptr %10, align 8, !tbaa !21   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !43
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.m

bb.i:                                             ; preds = %.loopexit145
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.u

bb.j:                                             ; preds = %bb.d
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

bb.k:                                             ; preds = %bb.g
  %i.ax = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #16
  %i.ay = load ptr, ptr %10, align 8, !tbaa !21   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.k
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !43
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.j ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65 ], [ %i.ax, %bb.k ]
  %.128 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %i.bd = call ptr @__cxa_begin_catch(ptr %.128) #16 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %5)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %5)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 58
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !32, !range !39, !noundef !40
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !41, !nonnull !40, !align !42 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !26
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 112
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull align 8 dereferenceable(72) %5)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #17
  unreachable

bb.q:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.bo = load ptr, ptr %4, align 8, !tbaa !104   ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !26
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.bo) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.b, i8 90, i64 512, i1 false)
  br label %bb.v

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.cb

bb.s:                                             ; preds = %bb.m, %bb.l
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.pn42 = phi { ptr, i32 } [ %i.bu, %bb.s ], [ %i.bt, %bb.r ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %5) #16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.i
  %.pn42.pn = phi { ptr, i32 } [ %.pn42, %bb.t ], [ %i.av, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.ca

bb.v:                                             ; preds = %bb.v, %bb.q
  %.023112 = phi i64 [ 536870912, %bb.q ], [ %i.by, %bb.v ]
  %i.bv = load ptr, ptr %4, align 8, !tbaa !104   ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !26
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull %i.b, ptr noundef nonnull %i.bs) #16
  %i.by = add i64 %.023112, -512                  ; 2 uses
  %.not46 = icmp eq i64 %i.by, 0
  br i1 %.not46, label %.loopexit144, label %bb.v, !llvm.loop !111

.loopexit144:                                     ; preds = %bb.v
end_hunk_0
begin_hunk_1_@_ZL19C_A_T_C_H_T_E_S_T_6v:bb.a
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.am unwind label %bb.cb

bb.al:                                            ; preds = %bb.af, %bb.ae
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %.pn48 = phi { ptr, i32 } [ %i.eb, %bb.al ], [ %i.ea, %bb.ak ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %11) #16
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ab
  %.pn48.pn = phi { ptr, i32 } [ %.pn48, %bb.am ], [ %i.dc, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.ca

bb.ao:                                            ; preds = %bb.ao, %bb.aj
  %.021113 = phi i64 [ 1090519040, %bb.aj ], [ %i.ef, %bb.ao ]
  %i.ec = load ptr, ptr %4, align 8, !tbaa !104   ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !26
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, ptr noundef nonnull %i.c, ptr noundef nonnull %i.dz) #16
  %i.ef = add i64 %.021113, -512                  ; 2 uses
  %.not52 = icmp eq i64 %i.ef, 0
  br i1 %.not52, label %.loopexit143, label %bb.ao, !llvm.loop !115

.loopexit143:                                     ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  store ptr @.str.15, ptr %18, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 7, ptr %i.eg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  store ptr @.str, ptr %19, align 8, !tbaa !9
  %i.eh = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 134, ptr %i.eh, align 8, !tbaa !14
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull @.str.67) #16
  %i.ei = load ptr, ptr %20, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ek = load i64, ptr %i.ej, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %17, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr %i.ei, i64 %i.ek, i32 noundef 1)
          to label %bb.ap unwind label %bb.au

bb.ap:                                            ; preds = %.loopexit143
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #16
  %i.el = load ptr, ptr %4, align 8, !tbaa !104   ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !26
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.en, align 8
  invoke void %i.eo(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(8) %i.el)
          to label %bb.aq unwind label %bb.av

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.ep = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !18, !noalias !116
  %i.er = icmp eq i64 %i.eq, 64
  br i1 %i.er, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.es = load ptr, ptr %22, align 8, !tbaa !21, !noalias !116
  %bcmp.i.i.i79 = call i32 @bcmp(ptr noundef nonnull dereferenceable(64) %i.es, ptr noundef nonnull align 1 dereferenceable(65) @.str.68, i64 64), !noalias !116
  %i.et = icmp eq i32 %bcmp.i.i.i79, 0
  %i.eu = zext i1 %i.et to i8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.ev = phi i8 [ 0, %bb.aq ], [ %i.eu, %bb.ar ]
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.27) #16, !noalias !116
  %i.ew = load ptr, ptr %1, align 8, !noalias !116
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !noalias !116
  %i.ez = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i8 1, ptr %i.ez, align 8, !tbaa !22, !alias.scope !116
  %i.fa = getelementptr inbounds nuw i8, ptr %21, i64 9
  store i8 %i.ev, ptr %i.fa, align 1, !tbaa !25, !alias.scope !116
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch10BinaryExprIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA65_KcEE, i64 16), ptr %21, align 8, !tbaa !26, !alias.scope !116
  %i.fb = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %22, ptr %i.fb, align 8, !tbaa !28, !alias.scope !116
  %i.fc = getelementptr inbounds nuw i8, ptr %21, i64 24
  store ptr %i.ew, ptr %i.fc, align 8, !tbaa !30, !alias.scope !116
  %.sroa.2.0..sroa_idx.i.i78 = getelementptr inbounds nuw i8, ptr %21, i64 32
  store i64 %i.ey, ptr %.sroa.2.0..sroa_idx.i.i78, align 8, !tbaa !31, !alias.scope !116
  %i.fd = getelementptr inbounds nuw i8, ptr %21, i64 40
  store ptr @.str.68, ptr %i.fd, align 8, !tbaa !30, !alias.scope !116
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %17, ptr noundef nonnull align 8 dereferenceable(10) %21)
          to label %bb.at unwind label %bb.aw

bb.at:                                            ; preds = %bb.as
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %21) #16
  %i.fe = load ptr, ptr %22, align 8, !tbaa !21   ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %bb.at
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !43
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  br label %bb.ay

bb.au:                                            ; preds = %.loopexit143
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  br label %bb.bh

bb.av:                                            ; preds = %bb.ap
  %i.fk = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

bb.aw:                                            ; preds = %bb.as
  %i.fl = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %21) #16
  %i.fm = load ptr, ptr %22, align 8, !tbaa !21   ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.aw
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !43
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84, %bb.av
  %.pn53.pn = phi { ptr, i32 } [ %i.fk, %bb.av ], [ %i.fl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84 ], [ %i.fl, %bb.aw ]
  %.1138 = extractvalue { ptr, i32 } %.pn53.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  %i.fr = call ptr @__cxa_begin_catch(ptr %.1138) #16 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %17)
          to label %bb.ax unwind label %bb.be

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  invoke void @__cxa_end_catch()
          to label %bb.ay unwind label %bb.bf

bb.ay:                                            ; preds = %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %17)
          to label %bb.az unwind label %bb.bf

bb.az:                                            ; preds = %bb.ay
  %i.fs = getelementptr inbounds nuw i8, ptr %17, i64 58
  %i.ft = load i8, ptr %i.fs, align 2, !tbaa !32, !range !39, !noundef !40
  %i.fu = trunc nuw i8 %i.ft to i1
  br i1 %i.fu, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fv = getelementptr inbounds nuw i8, ptr %17, i64 64
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !41, !nonnull !40, !align !42 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !26
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 112
  %i.fz = load ptr, ptr %i.fy, align 8
  invoke void %i.fz(ptr noundef nonnull align 8 dereferenceable(8) %i.fw, ptr noundef nonnull align 8 dereferenceable(72) %17)
          to label %bb.bc unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ga = landingpad { ptr, i32 }
          catch ptr null
  %i.gb = extractvalue { ptr, i32 } %i.ga, 0
  call void @__clang_call_terminate(ptr %i.gb) #17
  unreachable

bb.bc:                                            ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  %i.gc = load ptr, ptr %4, align 8, !tbaa !104   ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !26
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8
  call void %i.gf(ptr noundef nonnull align 8 dereferenceable(8) %i.gc) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.gg = getelementptr inbounds nuw i8, ptr %i.d, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.d, i8 66, i64 512, i1 false)
  br label %bb.bi

bb.bd:                                            ; preds = %bb.bi
  %i.gh = icmp ult i64 %i.gr, 512
  br i1 %i.gh, label %.thread140, label %bb.bi, !llvm.loop !119

.thread140:                                       ; preds = %bb.bd
  %i.gi = load ptr, ptr %4, align 8, !tbaa !104   ; 2 uses
  %30 = getelementptr i8, ptr %i.d, i64 %.0114153
  %i.gj = getelementptr i8, ptr %30, i64 -512
  %i.gk = load ptr, ptr %i.gi, align 8, !tbaa !26
  %i.gl = load ptr, ptr %i.gk, align 8
  call void %i.gl(ptr noundef nonnull align 8 dereferenceable(8) %i.gi, ptr noundef nonnull %i.d, ptr noundef nonnull %i.gj) #16
  br label %.loopexit

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bg unwind label %bb.cb

bb.bf:                                            ; preds = %bb.ay, %bb.ax
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %.pn54 = phi { ptr, i32 } [ %i.gn, %bb.bf ], [ %i.gm, %bb.be ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %17) #16
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.au
  %.pn54.pn = phi { ptr, i32 } [ %.pn54, %bb.bg ], [ %i.fj, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %bb.ca

bb.bi:                                            ; preds = %bb.bc, %bb.bd
  %.0114153 = phi i64 [ 1610612798, %bb.bc ], [ %i.gr, %bb.bd ] ; 2 uses
  %i.go = load ptr, ptr %4, align 8, !tbaa !104   ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !26
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(8) %i.go, ptr noundef nonnull %i.d, ptr noundef nonnull %i.gg) #16
  %i.gr = add i64 %.0114153, -512                 ; 3 uses
  %.not58 = icmp eq i64 %i.gr, 0
  br i1 %.not58, label %.loopexit, label %bb.bd, !llvm.loop !119

.loopexit:                                        ; preds = %bb.bi, %.thread140
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #16
  store ptr @.str.15, ptr %24, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 7, ptr %i.gs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #16
  store ptr @.str, ptr %25, align 8, !tbaa !9
  %i.gt = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 135, ptr %i.gt, align 8, !tbaa !14
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull @.str.69) #16
  %i.gu = load ptr, ptr %26, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.gw = load i64, ptr %i.gv, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %23, ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 8 dereferenceable(16) %25, ptr %i.gu, i64 %i.gw, i32 noundef 1)
          to label %bb.bj unwind label %bb.bo

bb.bj:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #16
  %i.gx = load ptr, ptr %4, align 8, !tbaa !104   ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !26
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8
  invoke void %i.ha(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(8) %i.gx)
          to label %bb.bk unwind label %bb.bp

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  %i.hb = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !18, !noalias !120
  %i.hd = icmp eq i64 %i.hc, 64
  br i1 %i.hd, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.he = load ptr, ptr %28, align 8, !tbaa !21, !noalias !120
  %bcmp.i.i.i89 = call i32 @bcmp(ptr noundef nonnull dereferenceable(64) %i.he, ptr noundef nonnull align 1 dereferenceable(65) @.str.70, i64 64), !noalias !120
  %i.hf = icmp eq i32 %bcmp.i.i.i89, 0
  %i.hg = zext i1 %i.hf to i8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.hh = phi i8 [ 0, %bb.bk ], [ %i.hg, %bb.bl ]
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.27) #16, !noalias !120
  %i.hi = load ptr, ptr %0, align 8, !noalias !120
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !noalias !120
  %i.hl = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i8 1, ptr %i.hl, align 8, !tbaa !22, !alias.scope !120
  %i.hm = getelementptr inbounds nuw i8, ptr %27, i64 9
  store i8 %i.hh, ptr %i.hm, align 1, !tbaa !25, !alias.scope !120
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch10BinaryExprIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA65_KcEE, i64 16), ptr %27, align 8, !tbaa !26, !alias.scope !120
  %i.hn = getelementptr inbounds nuw i8, ptr %27, i64 16
  store ptr %28, ptr %i.hn, align 8, !tbaa !28, !alias.scope !120
  %i.ho = getelementptr inbounds nuw i8, ptr %27, i64 24
  store ptr %i.hi, ptr %i.ho, align 8, !tbaa !30, !alias.scope !120
  %.sroa.2.0..sroa_idx.i.i88 = getelementptr inbounds nuw i8, ptr %27, i64 32
  store i64 %i.hk, ptr %.sroa.2.0..sroa_idx.i.i88, align 8, !tbaa !31, !alias.scope !120
  %i.hp = getelementptr inbounds nuw i8, ptr %27, i64 40
  store ptr @.str.70, ptr %i.hp, align 8, !tbaa !30, !alias.scope !120
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %23, ptr noundef nonnull align 8 dereferenceable(10) %27)
          to label %bb.bn unwind label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %27) #16
  %i.hq = load ptr, ptr %28, align 8, !tbaa !21   ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.hs = icmp eq ptr %i.hq, %i.hr
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.bn
  %i.ht = load i64, ptr %i.hr, align 8, !tbaa !43
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.hu) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #16
  br label %bb.bs

bb.bo:                                            ; preds = %.loopexit
  %i.hv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #16
  br label %bb.bz

bb.bp:                                            ; preds = %bb.bj
  %i.hw = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

bb.bq:                                            ; preds = %bb.bm
  %i.hx = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %27) #16
  %i.hy = load ptr, ptr %28, align 8, !tbaa !21   ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.ia = icmp eq ptr %i.hy, %i.hz
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %bb.bq
  %i.ib = load i64, ptr %i.hz, align 8, !tbaa !43
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ic) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %bb.bp
  %.pn59.pn = phi { ptr, i32 } [ %i.hw, %bb.bp ], [ %i.hx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %i.hx, %bb.bq ]
  %.16 = extractvalue { ptr, i32 } %.pn59.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #16
  %i.id = call ptr @__cxa_begin_catch(ptr %.16) #16 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %23)
          to label %bb.br unwind label %bb.bw

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  invoke void @__cxa_end_catch()
          to label %bb.bs unwind label %bb.bx

bb.bs:                                            ; preds = %bb.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %23)
          to label %bb.bt unwind label %bb.bx

bb.bt:                                            ; preds = %bb.bs
  %i.ie = getelementptr inbounds nuw i8, ptr %23, i64 58
  %i.if = load i8, ptr %i.ie, align 2, !tbaa !32, !range !39, !noundef !40
  %i.ig = trunc nuw i8 %i.if to i1
  br i1 %i.ig, label %_ZN5Catch16AssertionHandlerD2Ev.exit97, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ih = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !41, !nonnull !40, !align !42 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !26
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 112
  %i.il = load ptr, ptr %i.ik, align 8
  invoke void %i.il(ptr noundef nonnull align 8 dereferenceable(8) %i.ii, ptr noundef nonnull align 8 dereferenceable(72) %23)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit97 unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.im = landingpad { ptr, i32 }
          catch ptr null
  %i.in = extractvalue { ptr, i32 } %i.im, 0
  call void @__clang_call_terminate(ptr %i.in) #17
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit97:           ; preds = %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  %i.io = load ptr, ptr %4, align 8, !tbaa !104   ; 3 uses
  %.not.i = icmp eq ptr %i.io, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5vcpkg4Hash6HasherESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5vcpkg4Hash6HasherEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5vcpkg4Hash6HasherEEclEPS2_.exit.i: ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit97
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !26
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  %i.ir = load ptr, ptr %i.iq, align 8
  call void %i.ir(ptr noundef nonnull align 8 dereferenceable(8) %i.io) #16, !inline_history !123
  br label %_ZNSt10unique_ptrIN5vcpkg4Hash6HasherESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg4Hash6HasherESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit97, %_ZNKSt14default_deleteIN5vcpkg4Hash6HasherEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  %i.is = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.by unwind label %bb.cb

bb.bx:                                            ; preds = %bb.bs, %bb.br
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.by:                                            ; preds = %bb.bw, %bb.bx
  %.pn60 = phi { ptr, i32 } [ %i.it, %bb.bx ], [ %i.is, %bb.bw ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %23) #16
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bo
  %.pn60.pn = phi { ptr, i32 } [ %.pn60, %bb.by ], [ %i.hv, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bh, %bb.an, %bb.u
  %.pn60.pn.pn.pn = phi { ptr, i32 } [ %.pn60.pn, %bb.bz ], [ %.pn54.pn, %bb.bh ], [ %.pn48.pn, %bb.an ], [ %.pn42.pn, %bb.u ]
  %i.iu = load ptr, ptr %4, align 8, !tbaa !104   ; 3 uses
  %.not.i98 = icmp eq ptr %i.iu, null
  br i1 %.not.i98, label %_ZNSt10unique_ptrIN5vcpkg4Hash6HasherESt14default_deleteIS2_EED2Ev.exit100, label %_ZNKSt14default_deleteIN5vcpkg4Hash6HasherEEclEPS2_.exit.i99

_ZNKSt14default_deleteIN5vcpkg4Hash6HasherEEclEPS2_.exit.i99: ; preds = %bb.ca
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !26
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 32
  %i.ix = load ptr, ptr %i.iw, align 8
  call void %i.ix(ptr noundef nonnull align 8 dereferenceable(8) %i.iu) #16, !inline_history !123
  br label %_ZNSt10unique_ptrIN5vcpkg4Hash6HasherESt14default_deleteIS2_EED2Ev.exit100

_ZNSt10unique_ptrIN5vcpkg4Hash6HasherESt14default_deleteIS2_EED2Ev.exit100: ; preds = %bb.ca, %_ZNKSt14default_deleteIN5vcpkg4Hash6HasherEEclEPS2_.exit.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  resume { ptr, i32 } %.pn60.pn.pn.pn

bb.cb:                                            ; preds = %bb.bw, %bb.be, %bb.ak, %bb.r
  %i.iy = landingpad { ptr, i32 }
          catch ptr null
  %i.iz = extractvalue { ptr, i32 } %i.iy, 0
  call void @__clang_call_terminate(ptr %i.iz) #17
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL19C_A_T_C_H_T_E_S_T_8v() #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %1 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %2 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %3 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %4 = alloca %"class.std::unique_ptr", align 8   ; 20 uses
  %i.a = alloca [512 x i8], align 16              ; 8 uses
  %5 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %6 = alloca %"class.Catch::StringRef", align 8  ; 6 uses
  %7 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %8 = alloca %"class.Catch::StringRef", align 8  ; 3 uses
  %9 = alloca %"class.Catch::BinaryExpr.0", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = alloca [512 x i8], align 16              ; 6 uses
  %11 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %12 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %13 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %14 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %15 = alloca %"class.Catch::BinaryExpr.0", align 8 ; 13 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = alloca [512 x i8], align 16              ; 6 uses
  %17 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %18 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %19 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %20 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %21 = alloca %"class.Catch::BinaryExpr.0", align 8 ; 13 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.d = alloca [512 x i8], align 16              ; 8 uses
  %23 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %24 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %25 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %26 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %27 = alloca %"class.Catch::BinaryExpr.0", align 8 ; 13 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @_ZN5vcpkg4Hash14get_hasher_forENS0_9AlgorithmE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %4, i32 noundef 1)
  %i.e = load ptr, ptr %4, align 8, !tbaa !104    ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.j = icmp ult i64 %i.r, 512
  br i1 %i.j, label %.thread, label %bb.c, !llvm.loop !124

.thread:                                          ; preds = %bb.b
  %i.k = load ptr, ptr %4, align 8, !tbaa !104    ; 2 uses
  %29 = getelementptr i8, ptr %i.a, i64 %.040111152
  %i.l = getelementptr i8, ptr %29, i64 -512
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !26
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull %i.a, ptr noundef nonnull %i.l) #16
  br label %.loopexit145

bb.c:                                             ; preds = %bb.a, %bb.b
  %.040111152 = phi i64 [ 1000000, %bb.a ], [ %i.r, %bb.b ] ; 2 uses
  %i.o = load ptr, ptr %4, align 8, !tbaa !104    ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.a, ptr noundef nonnull %i.i) #16
  %i.r = add i64 %.040111152, -512                ; 3 uses
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %.loopexit145, label %bb.b, !llvm.loop !124

.loopexit145:                                     ; preds = %bb.c, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store ptr @.str.15, ptr %6, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 7, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store ptr @.str, ptr %7, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 144, ptr %i.t, align 8, !tbaa !14
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull @.str.71) #16
  %i.u = load ptr, ptr %8, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = load i64, ptr %i.v, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr %i.u, i64 %i.w, i32 noundef 1)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %.loopexit145
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.x = load ptr, ptr %4, align 8, !tbaa !104    ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !125)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !18, !noalias !125
  %i.ad = icmp eq i64 %i.ac, 128
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %10, align 8, !tbaa !21, !noalias !125
  %bcmp.i.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(128) %i.ae, ptr noundef nonnull align 1 dereferenceable(129) @.str.72, i64 128), !noalias !125
  %i.af = icmp eq i32 %bcmp.i.i.i, 0
  %i.ag = zext i1 %i.af to i8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = phi i8 [ 0, %bb.e ], [ %i.ag, %bb.f ]
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.27) #16, !noalias !125
  %i.ai = load ptr, ptr %3, align 8, !noalias !125
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !125
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 1, ptr %i.al, align 8, !tbaa !22, !alias.scope !125
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 9
  store i8 %i.ah, ptr %i.am, align 1, !tbaa !25, !alias.scope !125
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch10BinaryExprIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA129_KcEE, i64 16), ptr %9, align 8, !tbaa !26, !alias.scope !125
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %10, ptr %i.an, align 8, !tbaa !28, !alias.scope !125
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.ai, ptr %i.ao, align 8, !tbaa !30, !alias.scope !125
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 %i.ak, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !31, !alias.scope !125
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 40
  store ptr @.str.72, ptr %i.ap, align 8, !tbaa !30, !alias.scope !125
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(10) %9)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #16
  %i.aq = load ptr, ptr %10, align 8, !tbaa !21   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !43
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.m

bb.i:                                             ; preds = %.loopexit145
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.u

bb.j:                                             ; preds = %bb.d
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

bb.k:                                             ; preds = %bb.g
  %i.ax = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #16
  %i.ay = load ptr, ptr %10, align 8, !tbaa !21   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.k
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !43
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.j ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65 ], [ %i.ax, %bb.k ]
  %.128 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %i.bd = call ptr @__cxa_begin_catch(ptr %.128) #16 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %5)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %5)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 58
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !32, !range !39, !noundef !40
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !41, !nonnull !40, !align !42 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !26
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 112
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull align 8 dereferenceable(72) %5)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #17
  unreachable

bb.q:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.bo = load ptr, ptr %4, align 8, !tbaa !104   ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !26
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.bo) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.b, i8 90, i64 512, i1 false)
  br label %bb.v

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.cb

bb.s:                                             ; preds = %bb.m, %bb.l
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.pn42 = phi { ptr, i32 } [ %i.bu, %bb.s ], [ %i.bt, %bb.r ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %5) #16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.i
  %.pn42.pn = phi { ptr, i32 } [ %.pn42, %bb.t ], [ %i.av, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.ca

bb.v:                                             ; preds = %bb.v, %bb.q
  %.023112 = phi i64 [ 536870912, %bb.q ], [ %i.by, %bb.v ]
  %i.bv = load ptr, ptr %4, align 8, !tbaa !104   ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !26
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull %i.b, ptr noundef nonnull %i.bs) #16
  %i.by = add i64 %.023112, -512                  ; 2 uses
  %.not46 = icmp eq i64 %i.by, 0
  br i1 %.not46, label %.loopexit144, label %bb.v, !llvm.loop !128

.loopexit144:                                     ; preds = %bb.v
end_hunk_1
begin_hunk_2_@_ZL19C_A_T_C_H_T_E_S_T_8v:bb.a
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.am unwind label %bb.cb

bb.al:                                            ; preds = %bb.af, %bb.ae
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %.pn48 = phi { ptr, i32 } [ %i.eb, %bb.al ], [ %i.ea, %bb.ak ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %11) #16
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ab
  %.pn48.pn = phi { ptr, i32 } [ %.pn48, %bb.am ], [ %i.dc, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.ca

bb.ao:                                            ; preds = %bb.ao, %bb.aj
  %.021113 = phi i64 [ 1090519040, %bb.aj ], [ %i.ef, %bb.ao ]
  %i.ec = load ptr, ptr %4, align 8, !tbaa !104   ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !26
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, ptr noundef nonnull %i.c, ptr noundef nonnull %i.dz) #16
  %i.ef = add i64 %.021113, -512                  ; 2 uses
  %.not52 = icmp eq i64 %i.ef, 0
  br i1 %.not52, label %.loopexit143, label %bb.ao, !llvm.loop !132

.loopexit143:                                     ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  store ptr @.str.15, ptr %18, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 7, ptr %i.eg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  store ptr @.str, ptr %19, align 8, !tbaa !9
  %i.eh = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 152, ptr %i.eh, align 8, !tbaa !14
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull @.str.75) #16
  %i.ei = load ptr, ptr %20, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ek = load i64, ptr %i.ej, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %17, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr %i.ei, i64 %i.ek, i32 noundef 1)
          to label %bb.ap unwind label %bb.au

bb.ap:                                            ; preds = %.loopexit143
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #16
  %i.el = load ptr, ptr %4, align 8, !tbaa !104   ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !26
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.en, align 8
  invoke void %i.eo(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(8) %i.el)
          to label %bb.aq unwind label %bb.av

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.ep = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !18, !noalias !133
  %i.er = icmp eq i64 %i.eq, 128
  br i1 %i.er, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.es = load ptr, ptr %22, align 8, !tbaa !21, !noalias !133
  %bcmp.i.i.i79 = call i32 @bcmp(ptr noundef nonnull dereferenceable(128) %i.es, ptr noundef nonnull align 1 dereferenceable(129) @.str.76, i64 128), !noalias !133
  %i.et = icmp eq i32 %bcmp.i.i.i79, 0
  %i.eu = zext i1 %i.et to i8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.ev = phi i8 [ 0, %bb.aq ], [ %i.eu, %bb.ar ]
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.27) #16, !noalias !133
  %i.ew = load ptr, ptr %1, align 8, !noalias !133
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !noalias !133
  %i.ez = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i8 1, ptr %i.ez, align 8, !tbaa !22, !alias.scope !133
  %i.fa = getelementptr inbounds nuw i8, ptr %21, i64 9
  store i8 %i.ev, ptr %i.fa, align 1, !tbaa !25, !alias.scope !133
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch10BinaryExprIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA129_KcEE, i64 16), ptr %21, align 8, !tbaa !26, !alias.scope !133
  %i.fb = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %22, ptr %i.fb, align 8, !tbaa !28, !alias.scope !133
  %i.fc = getelementptr inbounds nuw i8, ptr %21, i64 24
  store ptr %i.ew, ptr %i.fc, align 8, !tbaa !30, !alias.scope !133
  %.sroa.2.0..sroa_idx.i.i78 = getelementptr inbounds nuw i8, ptr %21, i64 32
  store i64 %i.ey, ptr %.sroa.2.0..sroa_idx.i.i78, align 8, !tbaa !31, !alias.scope !133
  %i.fd = getelementptr inbounds nuw i8, ptr %21, i64 40
  store ptr @.str.76, ptr %i.fd, align 8, !tbaa !30, !alias.scope !133
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %17, ptr noundef nonnull align 8 dereferenceable(10) %21)
          to label %bb.at unwind label %bb.aw

bb.at:                                            ; preds = %bb.as
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %21) #16
  %i.fe = load ptr, ptr %22, align 8, !tbaa !21   ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %bb.at
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !43
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  br label %bb.ay

bb.au:                                            ; preds = %.loopexit143
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  br label %bb.bh

bb.av:                                            ; preds = %bb.ap
  %i.fk = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

bb.aw:                                            ; preds = %bb.as
  %i.fl = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %21) #16
  %i.fm = load ptr, ptr %22, align 8, !tbaa !21   ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.aw
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !43
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84, %bb.av
  %.pn53.pn = phi { ptr, i32 } [ %i.fk, %bb.av ], [ %i.fl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84 ], [ %i.fl, %bb.aw ]
  %.1138 = extractvalue { ptr, i32 } %.pn53.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  %i.fr = call ptr @__cxa_begin_catch(ptr %.1138) #16 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %17)
          to label %bb.ax unwind label %bb.be

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  invoke void @__cxa_end_catch()
          to label %bb.ay unwind label %bb.bf

bb.ay:                                            ; preds = %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %17)
          to label %bb.az unwind label %bb.bf

bb.az:                                            ; preds = %bb.ay
  %i.fs = getelementptr inbounds nuw i8, ptr %17, i64 58
  %i.ft = load i8, ptr %i.fs, align 2, !tbaa !32, !range !39, !noundef !40
  %i.fu = trunc nuw i8 %i.ft to i1
  br i1 %i.fu, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fv = getelementptr inbounds nuw i8, ptr %17, i64 64
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !41, !nonnull !40, !align !42 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !26
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 112
  %i.fz = load ptr, ptr %i.fy, align 8
  invoke void %i.fz(ptr noundef nonnull align 8 dereferenceable(8) %i.fw, ptr noundef nonnull align 8 dereferenceable(72) %17)
          to label %bb.bc unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ga = landingpad { ptr, i32 }
          catch ptr null
  %i.gb = extractvalue { ptr, i32 } %i.ga, 0
  call void @__clang_call_terminate(ptr %i.gb) #17
  unreachable

bb.bc:                                            ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  %i.gc = load ptr, ptr %4, align 8, !tbaa !104   ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !26
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8
  call void %i.gf(ptr noundef nonnull align 8 dereferenceable(8) %i.gc) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.gg = getelementptr inbounds nuw i8, ptr %i.d, i64 512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.d, i8 66, i64 512, i1 false)
  br label %bb.bi

bb.bd:                                            ; preds = %bb.bi
  %i.gh = icmp ult i64 %i.gr, 512
  br i1 %i.gh, label %.thread140, label %bb.bi, !llvm.loop !136

.thread140:                                       ; preds = %bb.bd
  %i.gi = load ptr, ptr %4, align 8, !tbaa !104   ; 2 uses
  %30 = getelementptr i8, ptr %i.d, i64 %.0114153
  %i.gj = getelementptr i8, ptr %30, i64 -512
  %i.gk = load ptr, ptr %i.gi, align 8, !tbaa !26
  %i.gl = load ptr, ptr %i.gk, align 8
  call void %i.gl(ptr noundef nonnull align 8 dereferenceable(8) %i.gi, ptr noundef nonnull %i.d, ptr noundef nonnull %i.gj) #16
  br label %.loopexit

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bg unwind label %bb.cb

bb.bf:                                            ; preds = %bb.ay, %bb.ax
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %.pn54 = phi { ptr, i32 } [ %i.gn, %bb.bf ], [ %i.gm, %bb.be ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %17) #16
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.au
  %.pn54.pn = phi { ptr, i32 } [ %.pn54, %bb.bg ], [ %i.fj, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %bb.ca

bb.bi:                                            ; preds = %bb.bc, %bb.bd
  %.0114153 = phi i64 [ 1610612798, %bb.bc ], [ %i.gr, %bb.bd ] ; 2 uses
  %i.go = load ptr, ptr %4, align 8, !tbaa !104   ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !26
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(8) %i.go, ptr noundef nonnull %i.d, ptr noundef nonnull %i.gg) #16
  %i.gr = add i64 %.0114153, -512                 ; 3 uses
  %.not58 = icmp eq i64 %i.gr, 0
  br i1 %.not58, label %.loopexit, label %bb.bd, !llvm.loop !136

.loopexit:                                        ; preds = %bb.bi, %.thread140
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #16
  store ptr @.str.15, ptr %24, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 7, ptr %i.gs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #16
  store ptr @.str, ptr %25, align 8, !tbaa !9
  %i.gt = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 156, ptr %i.gt, align 8, !tbaa !14
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull @.str.77) #16
  %i.gu = load ptr, ptr %26, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.gw = load i64, ptr %i.gv, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %23, ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 8 dereferenceable(16) %25, ptr %i.gu, i64 %i.gw, i32 noundef 1)
          to label %bb.bj unwind label %bb.bo

bb.bj:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #16
  %i.gx = load ptr, ptr %4, align 8, !tbaa !104   ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !26
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8
  invoke void %i.ha(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(8) %i.gx)
          to label %bb.bk unwind label %bb.bp

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.experimental.noalias.scope.decl(metadata !137)
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  %i.hb = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !18, !noalias !137
  %i.hd = icmp eq i64 %i.hc, 128
  br i1 %i.hd, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.he = load ptr, ptr %28, align 8, !tbaa !21, !noalias !137
  %bcmp.i.i.i89 = call i32 @bcmp(ptr noundef nonnull dereferenceable(128) %i.he, ptr noundef nonnull align 1 dereferenceable(129) @.str.78, i64 128), !noalias !137
  %i.hf = icmp eq i32 %bcmp.i.i.i89, 0
  %i.hg = zext i1 %i.hf to i8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.hh = phi i8 [ 0, %bb.bk ], [ %i.hg, %bb.bl ]
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.27) #16, !noalias !137
  %i.hi = load ptr, ptr %0, align 8, !noalias !137
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !noalias !137
  %i.hl = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i8 1, ptr %i.hl, align 8, !tbaa !22, !alias.scope !137
  %i.hm = getelementptr inbounds nuw i8, ptr %27, i64 9
  store i8 %i.hh, ptr %i.hm, align 1, !tbaa !25, !alias.scope !137
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch10BinaryExprIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA129_KcEE, i64 16), ptr %27, align 8, !tbaa !26, !alias.scope !137
  %i.hn = getelementptr inbounds nuw i8, ptr %27, i64 16
  store ptr %28, ptr %i.hn, align 8, !tbaa !28, !alias.scope !137
  %i.ho = getelementptr inbounds nuw i8, ptr %27, i64 24
  store ptr %i.hi, ptr %i.ho, align 8, !tbaa !30, !alias.scope !137
  %.sroa.2.0..sroa_idx.i.i88 = getelementptr inbounds nuw i8, ptr %27, i64 32
  store i64 %i.hk, ptr %.sroa.2.0..sroa_idx.i.i88, align 8, !tbaa !31, !alias.scope !137
  %i.hp = getelementptr inbounds nuw i8, ptr %27, i64 40
  store ptr @.str.78, ptr %i.hp, align 8, !tbaa !30, !alias.scope !137
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %23, ptr noundef nonnull align 8 dereferenceable(10) %27)
          to label %bb.bn unwind label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %27) #16
  %i.hq = load ptr, ptr %28, align 8, !tbaa !21   ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.hs = icmp eq ptr %i.hq, %i.hr
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.bn
  %i.ht = load i64, ptr %i.hr, align 8, !tbaa !43
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.hu) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #16
  br label %bb.bs

bb.bo:                                            ; preds = %.loopexit
  %i.hv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #16
  br label %bb.bz

bb.bp:                                            ; preds = %bb.bj
  %i.hw = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

bb.bq:                                            ; preds = %bb.bm
  %i.hx = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %27) #16
  %i.hy = load ptr, ptr %28, align 8, !tbaa !21   ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.ia = icmp eq ptr %i.hy, %i.hz
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %bb.bq
  %i.ib = load i64, ptr %i.hz, align 8, !tbaa !43
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ic) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %bb.bp
  %.pn59.pn = phi { ptr, i32 } [ %i.hw, %bb.bp ], [ %i.hx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %i.hx, %bb.bq ]
  %.16 = extractvalue { ptr, i32 } %.pn59.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #16
  %i.id = call ptr @__cxa_begin_catch(ptr %.16) #16 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %23)
          to label %bb.br unwind label %bb.bw

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  invoke void @__cxa_end_catch()
          to label %bb.bs unwind label %bb.bx

bb.bs:                                            ; preds = %bb.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %23)
          to label %bb.bt unwind label %bb.bx

bb.bt:                                            ; preds = %bb.bs
  %i.ie = getelementptr inbounds nuw i8, ptr %23, i64 58
  %i.if = load i8, ptr %i.ie, align 2, !tbaa !32, !range !39, !noundef !40
  %i.ig = trunc nuw i8 %i.if to i1
  br i1 %i.ig, label %_ZN5Catch16AssertionHandlerD2Ev.exit97, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ih = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !41, !nonnull !40, !align !42 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !26
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 112
  %i.il = load ptr, ptr %i.ik, align 8
  invoke void %i.il(ptr noundef nonnull align 8 dereferenceable(8) %i.ii, ptr noundef nonnull align 8 dereferenceable(72) %23)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit97 unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.im = landingpad { ptr, i32 }
          catch ptr null
  %i.in = extractvalue { ptr, i32 } %i.im, 0
  call void @__clang_call_terminate(ptr %i.in) #17
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit97:           ; preds = %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  %i.io = load ptr, ptr %4, align 8, !tbaa !104   ; 3 uses
  %.not.i = icmp eq ptr %i.io, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5vcpkg4Hash6HasherESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5vcpkg4Hash6HasherEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5vcpkg4Hash6HasherEEclEPS2_.exit.i: ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit97
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !26
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  %i.ir = load ptr, ptr %i.iq, align 8
  call void %i.ir(ptr noundef nonnull align 8 dereferenceable(8) %i.io) #16, !inline_history !123
  br label %_ZNSt10unique_ptrIN5vcpkg4Hash6HasherESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg4Hash6HasherESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit97, %_ZNKSt14default_deleteIN5vcpkg4Hash6HasherEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  %i.is = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.by unwind label %bb.cb

bb.bx:                                            ; preds = %bb.bs, %bb.br
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.by:                                            ; preds = %bb.bw, %bb.bx
  %.pn60 = phi { ptr, i32 } [ %i.it, %bb.bx ], [ %i.is, %bb.bw ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %23) #16
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bo
  %.pn60.pn = phi { ptr, i32 } [ %.pn60, %bb.by ], [ %i.hv, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bh, %bb.an, %bb.u
  %.pn60.pn.pn.pn = phi { ptr, i32 } [ %.pn60.pn, %bb.bz ], [ %.pn54.pn, %bb.bh ], [ %.pn48.pn, %bb.an ], [ %.pn42.pn, %bb.u ]
  %i.iu = load ptr, ptr %4, align 8, !tbaa !104   ; 3 uses
  %.not.i98 = icmp eq ptr %i.iu, null
  br i1 %.not.i98, label %_ZNSt10unique_ptrIN5vcpkg4Hash6HasherESt14default_deleteIS2_EED2Ev.exit100, label %_ZNKSt14default_deleteIN5vcpkg4Hash6HasherEEclEPS2_.exit.i99

end_hunk_2
