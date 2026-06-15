inline.NumInlined: 6620
inline.NumDeleted: 2684
begin_hunk_0_@_ZN4node14options_parser17GetBashCompletionB5cxx11Ev:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #26
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 328
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 336
  store i8 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 337
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.f, ptr %1, align 8
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.h = getelementptr i8, ptr %i.f, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i
  store ptr %i.g, ptr %i.j, align 8
  %i.k = load ptr, ptr %1, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %1, i64 %i.m
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.n, ptr noundef null) #26
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %1, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #26
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 16, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  store ptr %i.t, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 0, ptr %i.u, align 8
  store i8 0, ptr %i.t, align 8
  %i.v = load ptr, ptr %1, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %1, i64 %i.x
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.y, ptr noundef nonnull %i.o) #26
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.487, i64 noundef 151) #26 ; 0 uses
  %.sroa.010.014 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4node14options_parserL14_ppop_instanceE, i64 24), align 8 ; 2 uses
  %i.aa = icmp eq ptr %.sroa.010.014, null
  br i1 %i.aa, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %bb.c, %bb.a
  %.sroa.06.016 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4node14options_parserL14_ppop_instanceE, i64 80), align 8 ; 2 uses
  %i.ab = icmp eq ptr %.sroa.06.016, null
  br i1 %i.ab, label %._crit_edge, label %.lr.ph18

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.010.015 = phi ptr [ %.sroa.010.0, %bb.c ], [ %.sroa.010.014, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.010.015, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1
  %.not5 = icmp eq i8 %i.ae, 91
  br i1 %.not5, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.010.015, i64 16
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.ad, i64 noundef %i.ag) #26
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull @.str.488, i64 noundef 1) #26 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.sroa.010.0 = load ptr, ptr %.sroa.010.015, align 8 ; 2 uses
  %i.aj = icmp eq ptr %.sroa.010.0, null
  br i1 %i.aj, label %.preheader, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %i.ak = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4node14options_parserL14_ppop_instanceE, i64 88), align 8
  %.not = icmp eq i64 %i.ak, 0
  br i1 %.not, label %bb.g, label %bb.f

.lr.ph18:                                         ; preds = %.preheader, %bb.e
  %.sroa.06.017 = phi ptr [ %.sroa.06.0, %bb.e ], [ %.sroa.06.016, %.preheader ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.06.017, i64 8
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = load i8, ptr %i.am, align 1
  %.not4 = icmp eq i8 %i.an, 91
  br i1 %.not4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph18
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.06.017, i64 16
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.am, i64 noundef %i.ap) #26
  %i.ar = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.488, i64 noundef 1) #26 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph18
  %.sroa.06.0 = load ptr, ptr %.sroa.06.017, align 8 ; 2 uses
  %i.as = icmp eq ptr %.sroa.06.0, null
  br i1 %i.as, label %._crit_edge, label %.lr.ph18

bb.f:                                             ; preds = %._crit_edge
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5seekpElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef -1, i32 noundef 1) #26 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.489, i64 noundef 185) #26 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !403)
  call void @llvm.experimental.noalias.scope.decl(metadata !406)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.av, ptr %0, align 8, !alias.scope !409
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.aw, align 8, !alias.scope !409
  store i8 0, ptr %i.av, align 8, !alias.scope !409
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !409 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ay, null
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !409 ; 2 uses
  %i.bb = icmp ugt ptr %i.ay, %i.ba
  %.08.i.i.i = select i1 %i.bb, ptr %i.ay, ptr %i.ba ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !409 ; 2 uses
  %i.be = ptrtoint ptr %.08.i.i.i to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.bd, i64 noundef %i.bg) ; 0 uses
  br label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.i:                                             ; preds = %bb.g
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.s)
  br label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.h, %bb.i
  %i.bi = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bi, ptr %1, align 8
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bk = getelementptr i8, ptr %i.bi, i64 -24
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds i8, ptr %1, i64 %i.bl
  store ptr %i.bj, ptr %i.bm, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.bn = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.t
  br i1 %i.bo, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bp = load i64, ptr %i.t, align 8
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #26
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @uv_mutex_unlock(ptr noundef nonnull @_ZN4node11per_process17cli_options_mutexE) #26
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5seekpElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node14options_parser26MapEnvOptionsFlagInputTypeB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::unordered_map.170") align 8 %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"struct.node::options_parser::OptionMappingDetails", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %.sroa.07.010 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4node14options_parserL14_ppop_instanceE, i64 24), align 8 ; 2 uses
  %i.f = icmp eq ptr %.sroa.07.010, null
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.k, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.07.011 = phi ptr [ %.sroa.07.010, %.lr.ph ], [ %.sroa.07.0, %bb.k ] ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 16
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %2 = load ptr, ptr %i.j, align 8
  %3 = load i8, ptr %2, align 1
  %4 = icmp ne i8 %3, 91
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 64
  %i.o = load i32, ptr %i.n, align 8
  %i.p = icmp eq i32 %i.o, 0
  %or.cond = select i1 %4, i1 %i.p, i1 false
  br i1 %or.cond, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.r = load i32, ptr %i.q, align 8
  store i32 %i.r, ptr %1, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 72
  store ptr %i.h, ptr %i.g, align 8
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 80
  %i.v = load i64, ptr %i.u, align 8              ; 8 uses
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %bb.e, label %._crit_edge.i.i

bb.e:                                             ; preds = %bb.d
  %i.x = icmp slt i64 %i.v, 0
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #27
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.y = add nuw i64 %i.v, 1                      ; 2 uses
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !5

bb.h:                                             ; preds = %bb.g
  call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.g
  %i.aa = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #28 ; 2 uses
  store ptr %i.aa, ptr %i.g, align 8
  store i64 %i.v, ptr %i.h, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.d
  %i.ab = phi ptr [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.h, %bb.d ] ; 3 uses
  switch i64 %i.v, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ac = load i8, ptr %i.t, align 1
  store i8 %i.ac, ptr %i.ab, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.j:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.i, %bb.j
  store i64 %i.v, ptr %i.i, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.v
  store i8 0, ptr %i.ad, align 1
  %i.ae = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N4node14options_parser20OptionMappingDetailsEESaISC_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.j) ; 2 uses
  %i.af = load i32, ptr %1, align 8
  store i32 %i.af, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
  %i.ah = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.h
  br i1 %i.ai, label %_ZN4node14options_parser20OptionMappingDetailsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.aj = load i64, ptr %i.h, align 8
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #29
  br label %_ZN4node14options_parser20OptionMappingDetailsD2Ev.exit

_ZN4node14options_parser20OptionMappingDetailsD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.k

bb.k:                                             ; preds = %_ZN4node14options_parser20OptionMappingDetailsD2Ev.exit, %bb.c, %bb.b
  %.sroa.07.0 = load ptr, ptr %.sroa.07.011, align 8 ; 2 uses
  %i.al = icmp eq ptr %.sroa.07.0, null
  br i1 %i.al, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node14options_parser22MapAvailableNamespacesB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::vector.8") align 8 initializes((0, 24)) %0) local_unnamed_addr #0 {
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 22 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store ptr %i.a, ptr %1, align 8, !alias.scope !410
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 1953719668, ptr %i.a, align 8, !alias.scope !410
  store i64 4, ptr %i.b, align 8, !alias.scope !410
  store i8 0, ptr %i.g, align 4, !alias.scope !410
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  %i.h = icmp eq ptr %.pre, %i.a
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.a:                                             ; preds = %bb.j, %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #27
  unreachable

bb.b:                                             ; preds = %bb.k, %bb.e
  call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.i = load i64, ptr %i.a, align 8
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.j) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store ptr %i.a, ptr %1, align 8, !alias.scope !410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.556, i64 5, i1 false)
  store i64 5, ptr %i.b, align 8, !alias.scope !410
  store i8 0, ptr %i.d, align 1, !alias.scope !410
  %i.k = load ptr, ptr %i.e, align 8              ; 6 uses
  %i.l = load ptr, ptr %i.f, align 8
  %.not.i.1 = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.1, label %bb.h, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  store ptr %i.m, ptr %i.k, align 8
  %i.n = load ptr, ptr %1, align 8                ; 2 uses
  %i.o = load i64, ptr %i.b, align 8              ; 8 uses
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %bb.d, label %._crit_edge.i.i.i.i.1

bb.d:                                             ; preds = %bb.c
  %i.q = icmp slt i64 %i.o, 0
  br i1 %i.q, label %bb.a, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nuw i64 %i.o, 1                      ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.1, !prof !5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.1: ; preds = %bb.e
  %i.t = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #28 ; 2 uses
  store ptr %i.t, ptr %i.k, align 8
  store i64 %i.o, ptr %i.m, align 8
  br label %._crit_edge.i.i.i.i.1

._crit_edge.i.i.i.i.1:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.1, %bb.c
  %i.u = phi ptr [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.1 ], [ %i.m, %bb.c ] ; 3 uses
  switch i64 %i.o, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.1
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.1
  %i.v = load i8, ptr %i.n, align 1
  store i8 %i.v, ptr %i.u, align 1
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.1

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %i.n, i64 %i.o, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.1

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.1: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i.1
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.o, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.o
  store i8 0, ptr %i.x, align 1
  %i.y = load ptr, ptr %i.e, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr %i.z, ptr %i.e, align 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.1

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.k, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.1

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.1: ; preds = %bb.h, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.1
  %i.aa = load ptr, ptr %1, align 8               ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.a
  br i1 %i.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.1
  %i.ac = load i64, ptr %i.a, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.1: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store ptr %i.a, ptr %1, align 8, !alias.scope !410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.a, ptr noundef nonnull align 1 dereferenceable(10) @.str.557, i64 10, i1 false)
  store i64 10, ptr %i.b, align 8, !alias.scope !410
  store i8 0, ptr %i.c, align 2, !alias.scope !410
  %i.ae = load ptr, ptr %i.e, align 8             ; 6 uses
  %i.af = load ptr, ptr %i.f, align 8
  %.not.i.2 = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i.2, label %bb.n, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 3 uses
  store ptr %i.ag, ptr %i.ae, align 8
  %i.ah = load ptr, ptr %1, align 8               ; 2 uses
  %i.ai = load i64, ptr %i.b, align 8             ; 8 uses
  %i.aj = icmp ugt i64 %i.ai, 15
  br i1 %i.aj, label %bb.j, label %._crit_edge.i.i.i.i.2

bb.j:                                             ; preds = %bb.i
  %i.ak = icmp slt i64 %i.ai, 0
  br i1 %i.ak, label %bb.a, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = add nuw i64 %i.ai, 1                    ; 2 uses
  %i.am = icmp slt i64 %i.al, 0
  br i1 %i.am, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.2, !prof !5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.2: ; preds = %bb.k
  %i.an = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #28 ; 2 uses
  store ptr %i.an, ptr %i.ae, align 8
  store i64 %i.ai, ptr %i.ag, align 8
  br label %._crit_edge.i.i.i.i.2

._crit_edge.i.i.i.i.2:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.2, %bb.i
  %i.ao = phi ptr [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.2 ], [ %i.ag, %bb.i ] ; 3 uses
  switch i64 %i.ai, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.2
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.2
  %i.ap = load i8, ptr %i.ah, align 1
  store i8 %i.ap, ptr %i.ao, align 1
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.2

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr align 1 %i.ah, i64 %i.ai, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.2

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.2: ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i.i.2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %i.ai, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ai
  store i8 0, ptr %i.ar, align 1
  %i.as = load ptr, ptr %i.e, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store ptr %i.at, ptr %i.e, align 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.2

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.1
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.2

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.2: ; preds = %bb.n, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.2
  %i.au = load ptr, ptr %1, align 8               ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.a
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.2
  %i.aw = load i64, ptr %i.a, align 8
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node14options_parser21MapOptionsByNamespaceENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::unordered_map.170") align 8 %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
end_hunk_0
begin_hunk_1_@_ZN4node14options_parser18GetEmbedderOptionsERKN2v820FunctionCallbackInfoINS1_5ValueEEE:_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i
  %2 = alloca %"struct.std::array.569", align 8   ; 7 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %i.c) #26 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.e = tail call noundef i32 @_ZN2v87Context29GetNumberOfEmbedderDataFieldsEv(ptr noundef nonnull align 1 dereferenceable(1) %i.d) #26 ; 0 uses
  %i.f = load i64, ptr %i.d, align 8
  %i.g = add i64 %i.f, 47
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8
  %i.j = add i64 %i.i, 271
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr %i.k, align 8
  %i.m = inttoptr i64 %i.l to ptr                 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 3008
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 692
  %i.q = load i8, ptr %i.p, align 4, !range !26, !noundef !29
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 200
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = tail call ptr @_ZN4node32ERR_OPTIONS_BEFORE_BOOTSTRAPPINGIJEEEN2v85LocalINS1_6ObjectEEEPNS1_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.t, i64 53, ptr nonnull @.str.490)
  %i.v = tail call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr %i.u) #26 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i
  %i.w = load ptr, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 200 ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.aa, ptr noundef nonnull @.str.497, i32 noundef 1, i32 noundef 26) #26 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.c, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm27EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #26
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm27EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit

_ZN4node21FIXED_ONE_BYTE_STRINGILm27EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit: ; preds = %bb.b, %bb.c
  %i.ad = ptrtoint ptr %i.ab to i64
  store i64 %i.ad, ptr %1, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.z, align 8
  %i.ag = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.af, ptr noundef nonnull @.str.498, i32 noundef 1, i32 noundef 19) #26 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.d, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm20EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, !prof !5

bb.d:                                             ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm27EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #26
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm20EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit

_ZN4node21FIXED_ONE_BYTE_STRINGILm20EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit: ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm27EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, %bb.d
  %i.ai = ptrtoint ptr %i.ag to i64
  store i64 %i.ai, ptr %i.ae, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = load ptr, ptr %i.z, align 8
  %i.al = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.ak, ptr noundef nonnull @.str.499, i32 noundef 1, i32 noundef 16) #26 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.e, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm17EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, !prof !5

bb.e:                                             ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm20EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #26
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm17EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit

_ZN4node21FIXED_ONE_BYTE_STRINGILm17EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit: ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm20EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, %bb.e
  %i.an = ptrtoint ptr %i.al to i64
  store i64 %i.an, ptr %i.aj, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load ptr, ptr %i.z, align 8
  %i.aq = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.ap, ptr noundef nonnull @.str.500, i32 noundef 1, i32 noundef 18) #26 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.f, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm19EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, !prof !5

bb.f:                                             ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm17EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #26
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm19EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit

_ZN4node21FIXED_ONE_BYTE_STRINGILm19EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit: ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm17EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, %bb.f
  %i.as = ptrtoint ptr %i.aq to i64
  store i64 %i.as, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 2312
  %i.au = load i64, ptr %i.at, align 8            ; 3 uses
  %i.av = and i64 %i.au, 8
  %.not = icmp eq i64 %i.av, 0
  %i.aw = ptrtoint ptr %i.y to i64                ; 3 uses
  %i.ax = add i64 %i.aw, 672                      ; 3 uses
  %i.ay = add i64 %i.aw, 680                      ; 3 uses
  %.sroa.0.0.i33.v = select i1 %.not, i64 %i.ay, i64 %i.ax
  store i64 %.sroa.0.0.i33.v, ptr %2, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ba = and i64 %i.au, 128
  %.not.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i, label %_ZNK4node11Environment22no_global_search_pathsEv.exit, label %_ZN2v87Boolean3NewEPNS_7IsolateEb.exit32

_ZNK4node11Environment22no_global_search_pathsEv.exit: ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm19EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 1944
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 299
  %i.be = load i8, ptr %i.bd, align 1, !range !26, !noundef !29
  %i.bf = trunc nuw i8 %i.be to i1
  %spec.select = select i1 %i.bf, i64 680, i64 672
  br label %_ZN2v87Boolean3NewEPNS_7IsolateEb.exit32

_ZN2v87Boolean3NewEPNS_7IsolateEb.exit32:         ; preds = %_ZNK4node11Environment22no_global_search_pathsEv.exit, %_ZN4node21FIXED_ONE_BYTE_STRINGILm19EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  %.sink = phi i64 [ %spec.select, %_ZNK4node11Environment22no_global_search_pathsEv.exit ], [ 672, %_ZN4node21FIXED_ONE_BYTE_STRINGILm19EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit ]
  %i.bg = getelementptr i8, ptr %i.y, i64 %.sink
  %i.bh = ptrtoint ptr %i.bg to i64
  store i64 %i.bh, ptr %i.az, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = and i64 %i.au, 256
  %.not78 = icmp eq i64 %i.bj, 0
  %.sroa.0.0.i29.v = select i1 %.not78, i64 %i.ay, i64 %i.ax
  store i64 %.sroa.0.0.i29.v, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 3200
  %i.bm = load ptr, ptr %i.bl, align 8
  %.not.i.i.not.i.not = icmp eq ptr %i.bm, null
  %.sroa.0.0.i.v = select i1 %.not.i.i.not.i.not, i64 %i.ay, i64 %i.ax
  store i64 %.sroa.0.0.i.v, ptr %i.bk, align 8
  %i.bn = add i64 %i.aw, 664
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = call ptr @_ZN2v86Object3NewEPNS_7IsolateENS_5LocalINS_5ValueEEEPNS3_INS_4NameEEEPS5_m(ptr noundef %i.y, ptr %i.bo, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef 4) #26 ; 2 uses
  %i.bq = load ptr, ptr %0, align 8               ; 2 uses
  %i.br = icmp eq ptr %i.bp, null
  br i1 %i.br, label %bb.g, label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit, !prof !5

bb.g:                                             ; preds = %_ZN2v87Boolean3NewEPNS_7IsolateEb.exit32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = add i64 %i.bu, 648
  %i.bw = inttoptr i64 %i.bv to ptr
  br label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit

_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit: ; preds = %_ZN2v87Boolean3NewEPNS_7IsolateEb.exit32, %bb.g
  %storemerge.in = phi ptr [ %i.bw, %bb.g ], [ %i.bp, %_ZN2v87Boolean3NewEPNS_7IsolateEb.exit32 ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %storemerge = load i64, ptr %storemerge.in, align 8
  store i64 %storemerge, ptr %i.bx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node14options_parser22GetEnvOptionsInputTypeERKN2v820FunctionCallbackInfoINS1_5ValueEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #0 {
_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i:
  %1 = alloca %"struct.node::options_parser::OptionMappingDetails", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.d = tail call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %i.c) #26 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.e = tail call noundef i32 @_ZN2v87Context29GetNumberOfEmbedderDataFieldsEv(ptr noundef nonnull align 1 dereferenceable(1) %i.d) #26 ; 0 uses
  %i.f = load i64, ptr %i.d, align 8
  %i.g = add i64 %i.f, 47
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8
  %i.j = add i64 %i.i, 271
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr %i.k, align 8
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 3008
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 692
  %i.q = load i8, ptr %i.p, align 4, !range !26, !noundef !29
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i
  %i.s = tail call ptr @_ZN4node32ERR_OPTIONS_BEFORE_BOOTSTRAPPINGIJEEEN2v85LocalINS1_6ObjectEEEPNS1_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef nonnull %i.c, i64 53, ptr nonnull @.str.490)
  %i.t = tail call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr %i.s) #26 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i
  tail call void @uv_mutex_lock(ptr noundef nonnull @_ZN4node11per_process17cli_options_mutexE) #26
  %i.u = tail call ptr @_ZN2v86Object3NewEPNS_7IsolateE(ptr noundef nonnull %i.c) #26 ; 3 uses
  %.sroa.027.035 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4node14options_parserL14_ppop_instanceE, i64 24), align 8 ; 2 uses
  %i.v = icmp eq ptr %.sroa.027.035, null
  br i1 %i.v, label %.critedge23, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.027.036 = phi ptr [ %.sroa.027.035, %.lr.ph ], [ %.sroa.027.0, %.critedge ] ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.027.036, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.027.036, i64 16
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %2 = load ptr, ptr %i.z, align 8
  %3 = load i8, ptr %2, align 1
  %4 = icmp ne i8 %3, 91
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.027.036, i64 64
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = icmp eq i32 %i.ae, 0
  %or.cond = select i1 %4, i1 %i.af, i1 false
  br i1 %or.cond, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.027.036, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.ah = load i32, ptr %i.ag, align 8
  store i32 %i.ah, ptr %1, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.027.036, i64 72
  store ptr %i.x, ptr %i.w, align 8
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.027.036, i64 80
  %i.al = load i64, ptr %i.ak, align 8            ; 8 uses
  %i.am = icmp ugt i64 %i.al, 15
  br i1 %i.am, label %bb.f, label %._crit_edge.i.i

bb.f:                                             ; preds = %bb.e
  %i.an = icmp slt i64 %i.al, 0
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #27
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ao = add nuw i64 %i.al, 1                    ; 2 uses
  %i.ap = icmp slt i64 %i.ao, 0
  br i1 %i.ap, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !5

bb.i:                                             ; preds = %bb.h
  call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.h
  %i.aq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #28 ; 2 uses
  store ptr %i.aq, ptr %i.w, align 8
  store i64 %i.al, ptr %i.x, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.e
  %i.ar = phi ptr [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.x, %bb.e ] ; 3 uses
  switch i64 %i.al, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.as = load i8, ptr %i.aj, align 1
  store i8 %i.as, ptr %i.ar, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.k:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr align 1 %i.aj, i64 %i.al, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.j, %bb.k
  store i64 %i.al, ptr %i.y, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.al
  store i8 0, ptr %i.at, align 1
  %i.au = call fastcc noundef zeroext i1 @_ZN4node14options_parserL21AddOptionTypeToObjectEPN2v87IsolateENS1_5LocalINS1_7ContextEEENS4_INS1_6ObjectEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_20OptionMappingDetailsE(ptr noundef nonnull %i.c, ptr nonnull %i.d, ptr %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.av = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.x
  br i1 %i.aw, label %_ZN4node14options_parser20OptionMappingDetailsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ax = load i64, ptr %i.x, align 8
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #29
  br label %_ZN4node14options_parser20OptionMappingDetailsD2Ev.exit

_ZN4node14options_parser20OptionMappingDetailsD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %i.au, label %.critedge, label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit

.critedge:                                        ; preds = %_ZN4node14options_parser20OptionMappingDetailsD2Ev.exit, %bb.d, %bb.c
  %.sroa.027.0 = load ptr, ptr %.sroa.027.036, align 8 ; 2 uses
  %i.az = icmp eq ptr %.sroa.027.0, null
  br i1 %i.az, label %.critedge23, label %bb.c

.critedge23:                                      ; preds = %.critedge, %bb.b
  %i.ba = load ptr, ptr %0, align 8               ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = icmp eq ptr %i.u, null
  br i1 %i.bc, label %bb.l, label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit.sink.split, !prof !5

bb.l:                                             ; preds = %.critedge23
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = add i64 %i.bf, 648
  %i.bh = inttoptr i64 %i.bg to ptr
  br label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit.sink.split

_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit.sink.split: ; preds = %.critedge23, %bb.l
  %.sink41 = phi ptr [ %i.bh, %bb.l ], [ %i.u, %.critedge23 ]
  %i.bi = load i64, ptr %.sink41, align 8
  store i64 %i.bi, ptr %i.bb, align 8
  br label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit

_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit: ; preds = %_ZN4node14options_parser20OptionMappingDetailsD2Ev.exit, %_ZN2v811ReturnValueINS_5ValueEE3SetINS_6ObjectEEEvNS_5LocalIT_EE.exit.sink.split
  call void @uv_mutex_unlock(ptr noundef nonnull @_ZN4node11per_process17cli_options_mutexE) #26
  ret void
}

declare ptr @_ZN2v86Object3NewEPNS_7IsolateE(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN4node14options_parserL21AddOptionTypeToObjectEPN2v87IsolateENS1_5LocalINS1_7ContextEEENS4_INS1_6ObjectEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_20OptionMappingDetailsE(ptr noundef %0, ptr %1, ptr %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"struct.std::array.558", align 8   ; 5 uses
  %7 = alloca %"struct.std::array.561", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.a, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  %i.c = load i32, ptr %4, align 8
  switch i32 %i.c, label %bb.f [
    i32 0, label %.thread
    i32 1, label %.thread
    i32 2, label %bb.b
    i32 3, label %bb.c
    i32 4, label %bb.c
    i32 6, label %bb.c
    i32 5, label %bb.d
    i32 7, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.560, i64 noundef 7) ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.e = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.561, i64 noundef 6) ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.f = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.562, i64 noundef 6) ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.g = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.563, i64 noundef 5) ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node14options_parserL21AddOptionTypeToObjectEPN2v87IsolateENS1_5LocalINS1_7ContextEEENS4_INS1_6ObjectEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_20OptionMappingDetailsEE20error_and_abort_args) #26
  call void @abort() #27
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.pr = load i64, ptr %i.b, align 8
  %i.h = icmp eq i64 %.pr, 0
  br i1 %i.h, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = load ptr, ptr %3, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = trunc i64 %i.k to i32
  %i.m = call ptr @_ZN2v86String11NewFromUtf8EPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef %0, ptr noundef %i.i, i32 noundef 0, i32 noundef %i.l) #26 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = load ptr, ptr %5, align 8
  %i.o = load i64, ptr %i.b, align 8
  %i.p = trunc i64 %i.o to i32
  %i.q = call ptr @_ZN2v86String11NewFromUtf8EPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef %0, ptr noundef %i.n, i32 noundef 0, i32 noundef %i.p) #26 ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64
  %.not43 = icmp eq ptr %i.q, null
  br i1 %.not43, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.v = load i64, ptr %i.u, align 8
  %i.w = trunc i64 %i.v to i32
  %i.x = call ptr @_ZN2v86String11NewFromUtf8EPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef %0, ptr noundef %i.t, i32 noundef 0, i32 noundef %i.w) #26 ; 2 uses
  %.not44 = icmp eq ptr %i.x, null
  br i1 %.not44, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %0 to i64
  %i.aa = add i64 %i.z, 664
  %i.ab = inttoptr i64 %i.aa to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ac = call ptr @_ZN2v86String18NewFromUtf8LiteralEPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef %0, ptr noundef nonnull @.str.566, i32 noundef 0, i32 noundef 4) #26
  %i.ad = ptrtoint ptr %i.ac to i64
  store i64 %i.ad, ptr %6, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.af = call ptr @_ZN2v86String18NewFromUtf8LiteralEPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef %0, ptr noundef nonnull @.str.567, i32 noundef 0, i32 noundef 11) #26
  %i.ag = ptrtoint ptr %i.af to i64
  store i64 %i.ag, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store i64 %i.r, ptr %7, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.y, ptr %i.ah, align 8
  %i.ai = call ptr @_ZN2v86Object3NewEPNS_7IsolateENS_5LocalINS_5ValueEEEPNS3_INS_4NameEEEPS5_m(ptr noundef %0, ptr %i.ab, ptr noundef nonnull %6, ptr noundef nonnull %7, i64 noundef 2) #26
  %i.aj = call i16 @_ZN2v86Object3SetENS_5LocalINS_7ContextEEENS1_INS_5ValueEEES5_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr %1, ptr nonnull %i.m, ptr %i.ai) #26
  %i.ak = trunc i16 %i.aj to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.a, %bb.h, %bb.k, %bb.j, %bb.i, %bb.g
  %.4 = phi i1 [ true, %bb.j ], [ true, %bb.g ], [ true, %bb.h ], [ true, %bb.i ], [ %i.ak, %bb.k ], [ true, %bb.a ], [ true, %bb.a ]
  %i.al = load ptr, ptr %5, align 8               ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.a
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.thread
  %i.an = load i64, ptr %i.a, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node14options_parser28GetNamespaceOptionsInputTypeERKN2v820FunctionCallbackInfoINS1_5ValueEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #0 {
_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i:
  %1 = alloca %"class.std::unordered_map.184", align 8 ; 8 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 7 uses
  %i.d = tail call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %i.c) #26 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.e = tail call noundef i32 @_ZN2v87Context29GetNumberOfEmbedderDataFieldsEv(ptr noundef nonnull align 1 dereferenceable(1) %i.d) #26 ; 0 uses
  %i.f = load i64, ptr %i.d, align 8
  %i.g = add i64 %i.f, 47
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8
  %i.j = add i64 %i.i, 271
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr %i.k, align 8
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 3008
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 692
  %i.q = load i8, ptr %i.p, align 4, !range !26, !noundef !29
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i
  %i.s = tail call ptr @_ZN4node32ERR_OPTIONS_BEFORE_BOOTSTRAPPINGIJEEEN2v85LocalINS1_6ObjectEEEPNS1_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef nonnull %i.c, i64 53, ptr nonnull @.str.490)
  %i.t = tail call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr %i.s) #26 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i
  tail call void @uv_mutex_lock(ptr noundef nonnull @_ZN4node11per_process17cli_options_mutexE) #26
  %i.u = tail call ptr @_ZN2v83Map3NewEPNS_7IsolateE(ptr noundef nonnull %i.c) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @_ZN4node14options_parser31MapNamespaceOptionsAssociationsB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::unordered_map.184") align 8 %1)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.thread70
  %.sroa.055.076 = phi ptr [ %i.am, %.thread70 ], [ %i.w, %bb.b ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.055.076, i64 8
  %i.z = call ptr @_ZN2v86Object3NewEPNS_7IsolateE(ptr noundef nonnull %i.c) #26 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.055.076, i64 56
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph
  %.sroa.050.0.in = phi ptr [ %i.aa, %.lr.ph ], [ %.sroa.050.0, %bb.d ]
  %.sroa.050.0 = load ptr, ptr %.sroa.050.0.in, align 8 ; 4 uses
end_hunk_1
