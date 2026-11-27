Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/dl_relation_manager?download=true
inline.NumInlined: 1890
inline.NumDeleted: 739
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK7datalog16relation_manager14to_nice_stringB5cxx11ERKP4sortRKP3app:bb.a
  store ptr %i.ao, ptr %i.ar, align 8, !tbaa !50
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.as, ptr %i.at, align 8, !tbaa !50
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.au, align 8, !tbaa !50
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !361 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !363
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #27
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.au, align 8, !tbaa !50
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bb) #26
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bc, ptr %4, align 8, !tbaa !50
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.be = getelementptr i8, ptr %i.bc, i64 -24
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds i8, ptr %4, i64 %i.bf
  store ptr %i.bd, ptr %i.bg, align 8, !tbaa !50
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.bh, align 8, !tbaa !401
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bi) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

.body:                                            ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.d, %bb.i
  %.pn8 = phi { ptr, i32 } [ %.pn, %bb.i ], [ %i.k, %bb.d ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ah, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn8
}

declare void @_ZN7datalog7context19print_constant_nameEP4sortmRSo(ptr noundef nonnull align 8 dereferenceable(3028), ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK7datalog16relation_manager14to_nice_stringB5cxx11ERKP4sort(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %4 = alloca %struct.mk_pp, align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = load ptr, ptr %2, align 8, !tbaa !322
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109, !nonnull !110, !align !111
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !302, !nonnull !110, !align !111
  invoke void @_ZN11mk_ismt2_ppC2EP3astR11ast_managerjjPKc(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(952) %i.d, i32 noundef 0, i32 noundef 0, ptr noundef null)
          to label %_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit unwind label %bb.f

_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit:        ; preds = %bb.a
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK11mk_ismt2_pp(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %bb.b unwind label %bb.g       ; 0 uses

bb.b:                                             ; preds = %_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !587)
  call void @llvm.experimental.noalias.scope.decl(metadata !588)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !358, !alias.scope !589
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !362, !alias.scope !589
  store i8 0, ptr %i.g, align 8, !tbaa !363, !alias.scope !589
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !398, !noalias !589 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.j, null
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !noalias !589 ; 2 uses
  %i.m = icmp ugt ptr %i.j, %i.l
  %.08.i.i.i = select i1 %i.m, ptr %i.j, ptr %i.l ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !399, !noalias !589 ; 2 uses
  %i.p = ptrtoint ptr %.08.i.i.i to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.o, i64 noundef %i.r)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !361, !alias.scope !589 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.g
  br i1 %i.v, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.w = load i64, ptr %i.g, align 8, !tbaa !363, !alias.scope !589
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #27
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.z = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.z, ptr %3, align 8, !tbaa !50
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ab = getelementptr i8, ptr %i.z, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %3, i64 %i.ac
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !50
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8, !tbaa !50
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !361 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !363
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #27
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8, !tbaa !50
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.al) #26
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.am) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.f:                                             ; preds = %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ap) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.g ], [ %i.an, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h
  %.pn6 = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.t, %bb.d ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn6
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK7datalog16relation_manager14to_nice_stringB5cxx11ERKNS_18relation_signatureE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 14 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !358
  store i8 91, ptr %i.a, align 8, !tbaa !363
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  store i64 1, ptr %i.b, align 8, !tbaa !362
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.c, align 1, !tbaa !363
  %i.d = load ptr, ptr %2, align 8, !tbaa !316    ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNK6vectorIP4sortLb0EjE3endEv.exit

_ZNK6vectorIP4sortLb0EjE3endEv.exit:              ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !77   ; 3 uses
  %i.h = zext i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.i
  %.not46 = icmp eq i32 %i.g, 0
  br i1 %.not46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNK6vectorIP4sortLb0EjE3endEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZNK7datalog16relation_manager14to_nice_stringB5cxx11ERKP4sort(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.c unwind label %.loopexit.split-lp53.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %3, align 8, !tbaa !361    ; 3 uses
  %i.n = load i64, ptr %i.k, align 8, !tbaa !362  ; 6 uses
  %i.o = load i64, ptr %i.b, align 8, !tbaa !362  ; 5 uses
  %i.p = sub i64 9223372036854775807, %i.o
  %i.q = icmp ult i64 %i.p, %i.n
  br i1 %i.q, label %.loopexit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.peel: ; preds = %bb.c
  %i.r = add i64 %i.o, %i.n                       ; 3 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !361    ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.a
  br i1 %i.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.peel
  %i.u = load i64, ptr %i.a, align 8, !tbaa !363
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.peel
  %i.v = icmp ult i64 %i.o, 16
  call void @llvm.assume(i1 %i.v)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.peel
  %i.w = phi i64 [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.peel ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.peel ]
  %.not.i.i.i.i.peel = icmp ugt i64 %i.r, %i.w
  br i1 %.not.i.i.i.i.peel, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.peel
  %.not8.i.i.i.i.peel = icmp eq i64 %i.n, 0
  br i1 %.not8.i.i.i.i.peel, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.o ; 2 uses
  %cond.i.i.i.i.peel = icmp eq i64 %i.n, 1
  br i1 %cond.i.i.i.i.peel, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.m, i64 %i.n, i1 false)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.y = load i8, ptr %i.m, align 1, !tbaa !363
  store i8 %i.y, ptr %i.x, align 1, !tbaa !363
  br label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.peel
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.o, i64 noundef 0, ptr noundef %i.m, i64 noundef %i.n)
          to label %bb.i unwind label %.loopexit.split-lp41.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  store i64 %i.r, ptr %i.b, align 8, !tbaa !362
  %i.z = load ptr, ptr %0, align 8, !tbaa !361
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  store i8 0, ptr %i.aa, align 1, !tbaa !363
  %i.ab = load ptr, ptr %3, align 8, !tbaa !361   ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.l
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %bb.i
  %i.ad = load i64, ptr %i.l, align 8, !tbaa !363
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %.not.peel = icmp eq i32 %i.g, 1
  br i1 %.not.peel, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.k

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel
  %.pre = load i64, ptr %i.b, align 8, !tbaa !362 ; 3 uses
  %.pre61 = load ptr, ptr %0, align 8, !tbaa !361 ; 3 uses
  %i.ag = add i64 %.pre, 1                        ; 2 uses
  %i.ah = icmp eq ptr %.pre61, %i.a
  br i1 %i.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.a, %_ZNK6vectorIP4sortLb0EjE3endEv.exit, %._crit_edge
  %i.ai = phi i64 [ %i.ag, %._crit_edge ], [ 2, %_ZNK6vectorIP4sortLb0EjE3endEv.exit ], [ 2, %bb.a ]
  %i.aj = phi i64 [ %.pre, %._crit_edge ], [ 1, %_ZNK6vectorIP4sortLb0EjE3endEv.exit ], [ 1, %bb.a ] ; 2 uses
  %i.ak = phi ptr [ %.pre61, %._crit_edge ], [ %i.a, %_ZNK6vectorIP4sortLb0EjE3endEv.exit ], [ %i.a, %bb.a ]
  %i.al = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.al)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %._crit_edge
  %i.am = load i64, ptr %i.a, align 8, !tbaa !363
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.an = phi i64 [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ] ; 3 uses
  %i.ao = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ] ; 2 uses
  %i.ap = phi ptr [ %.pre61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.aq = phi i64 [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.ar = icmp ugt i64 %i.an, %i.aq
  br i1 %i.ar, label %bb.j, label %bb.u

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ao, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc25:                                         ; preds = %bb.j
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !361
  br label %bb.u

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.peel.next
  %.048 = phi ptr [ %i.af, %.peel.next ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.as = load i64, ptr %i.b, align 8, !tbaa !362 ; 4 uses
  %i.at = add i64 %i.as, 1                        ; 3 uses
  %i.au = load ptr, ptr %0, align 8, !tbaa !361   ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.a
  br i1 %i.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i29: ; preds = %bb.k
  %i.aw = icmp ult i64 %i.as, 16
  call void @llvm.assume(i1 %i.aw)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26: ; preds = %bb.k
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !363
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i29
  %i.ay = phi i64 [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i29 ]
  %i.az = icmp ugt i64 %i.at, %i.ay
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.as, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc30:                                         ; preds = %bb.l
  %.pre.i.i28 = load ptr, ptr %0, align 8, !tbaa !361
  br label %bb.m

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.l, %bb.j
  %lpad.loopexit.split-lp83 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.m:                                             ; preds = %.noexc30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i27
  %i.ba = phi ptr [ %.pre.i.i28, %.noexc30 ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i27 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.as
  store i8 44, ptr %i.bb, align 1, !tbaa !363
  store i64 %i.at, ptr %i.b, align 8, !tbaa !362
  %i.bc = load ptr, ptr %0, align 8, !tbaa !361
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.at
  store i8 0, ptr %i.bd, align 1, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZNK7datalog16relation_manager14to_nice_stringB5cxx11ERKP4sort(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(8) %.048)
          to label %bb.n unwind label %.loopexit.split-lp53.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  %i.be = load ptr, ptr %3, align 8, !tbaa !361   ; 3 uses
  %i.bf = load i64, ptr %i.k, align 8, !tbaa !362 ; 6 uses
  %i.bg = load i64, ptr %i.b, align 8, !tbaa !362 ; 5 uses
  %i.bh = sub i64 9223372036854775807, %i.bg
  %i.bi = icmp ult i64 %i.bh, %i.bf
  br i1 %i.bi, label %.loopexit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

.loopexit56:                                      ; preds = %bb.n, %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #28
          to label %.noexc32 unwind label %.loopexit.split-lp41.loopexit.split-lp.loopexit.split-lp

.noexc32:                                         ; preds = %.loopexit56
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.n
  %i.bj = add i64 %i.bg, %i.bf                    ; 3 uses
  %i.bk = load ptr, ptr %0, align 8, !tbaa !361   ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.a
  br i1 %i.bl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bm = icmp ult i64 %i.bg, 16
  call void @llvm.assume(i1 %i.bm)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bn = load i64, ptr %i.a, align 8, !tbaa !363
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.bo = phi i64 [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.bj, %i.bo
  br i1 %.not.i.i.i.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not8.i.i.i.i, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bg ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.bf, 1
  br i1 %cond.i.i.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bq = load i8, ptr %i.be, align 1, !tbaa !363
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !363
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr align 1 %i.be, i64 %i.bf, i1 false)
  br label %bb.t

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bg, i64 noundef 0, ptr noundef %i.be, i64 noundef %i.bf)
          to label %bb.t unwind label %.loopexit.split-lp41.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.o, %bb.s
  store i64 %i.bj, ptr %i.b, align 8, !tbaa !362
  %i.br = load ptr, ptr %0, align 8, !tbaa !361
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bj
  store i8 0, ptr %i.bs, align 1, !tbaa !363
  %i.bt = load ptr, ptr %3, align 8, !tbaa !361   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.l
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.t
  %i.bv = load i64, ptr %i.l, align 8, !tbaa !363
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.bx = getelementptr inbounds nuw i8, ptr %.048, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bx, %i.j
  br i1 %.not, label %._crit_edge, label %bb.k, !llvm.loop !590

.loopexit.split-lp53.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

.loopexit.split-lp41.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.s, %bb.h, %.loopexit56
  %lpad.loopexit.split-lp87 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.by = load ptr, ptr %3, align 8, !tbaa !361   ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.l
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %.loopexit.split-lp41.loopexit.split-lp.loopexit.split-lp
  %i.ca = load i64, ptr %i.l, align 8, !tbaa !363
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %.loopexit.split-lp41.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp53.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp53.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp87, %.loopexit.split-lp41.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %lpad.loopexit.split-lp83, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.cc = load ptr, ptr %0, align 8, !tbaa !361   ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.a
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %.loopexit.split-lp
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !363
  %i.cf = add i64 %i.ce, 1
end_hunk_0
