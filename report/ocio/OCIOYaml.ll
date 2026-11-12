Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/OCIOYaml?download=true
inline.NumInlined: 7690
inline.NumDeleted: 1573
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN11StringUtils5SplitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc:bb.a
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !43
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #27
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cy, align 8, !tbaa !42
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.df) #26
  %i.dg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.dg, ptr %4, align 8, !tbaa !42
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.di = getelementptr i8, ptr %i.dg, i64 -24
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = getelementptr inbounds i8, ptr %4, i64 %i.dj
  store ptr %i.dh, ptr %i.dk, align 8, !tbaa !42
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.dl, align 8, !tbaa !171
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.dm) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.w

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %bb.r, %bb.m
  %.pn20 = phi { ptr, i32 } [ %i.bc, %bb.m ], [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %i.ch, %bb.r ]
  %i.dn = load ptr, ptr %5, align 8, !tbaa !50    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.ac
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.u
  %i.dp = load i64, ptr %i.ac, align 8, !tbaa !43
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #26
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %bb.l
  %.pn20.pn = phi { ptr, i32 } [ %.pn20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %i.bb, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #26
  br label %bb.x

bb.w:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.x:                                             ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.pn23.pn = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %.pn20.pn, %bb.v ]
  resume { ptr, i32 } %.pn23.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !93     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !94   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !50 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !43
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !93
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !95
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #27
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !89
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.109) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.d, ptr %i.a, align 8, !tbaa !98
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !50
  %i.g = load i64, ptr %i.a, align 8, !tbaa !98
  store i64 %i.g, ptr %i.b, align 8, !tbaa !43
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !43
  store i8 %i.i, ptr %i.h, align 1, !tbaa !43
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !98   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !90
  %i.l = load ptr, ptr %0, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0 align 2

; Function Attrs: inlinehint mustprogress noreturn uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_110throwErrorERKN4YAML4NodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.103, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.b = load i8, ptr %0, align 8, !tbaa !57, !range !58, !noundef !59
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.d = call ptr @__cxa_allocate_exception(i64 64) #26 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN4YAML11InvalidNodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %.invoke unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.d) #26
  br label %.body

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !60   ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNK4YAML4Node4MarkEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !63
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !66
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.sroa.04.0.copyload.i = load i64, ptr %i.k, align 4, !tbaa !44
  %4 = lshr i64 %.sroa.04.0.copyload.i, 32
  %5 = trunc nuw i64 %4 to i32
  %i.l = add nsw i32 %5, 1
  br label %_ZNK4YAML4Node4MarkEv.exit

_ZNK4YAML4Node4MarkEv.exit:                       ; preds = %bb.e, %bb.d
  %.fca.1.insert.merged.i = phi i32 [ %i.l, %bb.e ], [ 0, %bb.d ]
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %.fca.1.insert.merged.i)
          to label %bb.f unwind label %bb.n       ; 2 uses

bb.f:                                             ; preds = %_ZNK4YAML4Node4MarkEv.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.104, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %bb.f
  %i.o = load i8, ptr %0, align 8, !tbaa !57, !range !58, !noundef !59
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.q = call ptr @__cxa_allocate_exception(i64 64) #26 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN4YAML11InvalidNodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %.invoke unwind label %bb.h

.invoke:                                          ; preds = %bb.g, %bb.b
  %i.s = phi ptr [ %i.d, %bb.b ], [ %i.q, %bb.g ]
  invoke void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTIN4YAML11InvalidNodeE, ptr nonnull @_ZN4YAML11InvalidNodeD1Ev) #28
          to label %.cont unwind label %bb.n

.cont:                                            ; preds = %.invoke
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.q) #26
  br label %.body

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !60   ; 2 uses
  %.not.i14 = icmp eq ptr %i.u, null
  br i1 %.not.i14, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !66
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  br label %_ZNK4YAML4Node3TagB5cxx11Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4YAML6detail9node_data12empty_scalarB5cxx11Ev()
          to label %_ZNK4YAML4Node3TagB5cxx11Ev.exit unwind label %bb.n

_ZNK4YAML4Node3TagB5cxx11Ev.exit:                 ; preds = %bb.j, %bb.k
  %i.z = phi ptr [ %i.x, %bb.j ], [ %i.y, %bb.k ] ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !50
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !90
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.aa, i64 noundef %i.ac)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.n ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNK4YAML4Node3TagB5cxx11Ev.exit
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.113, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.af = load ptr, ptr %1, align 8, !tbaa !50
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !90
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef %i.af, i64 noundef %i.ah)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit23 unwind label %bb.n ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit23: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21
  %i.aj = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.l unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.l:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit23
  %i.ak = load ptr, ptr %3, align 8, !tbaa !50
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef %i.ak)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #28
          to label %bb.q unwind label %bb.o

bb.n:                                             ; preds = %.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNK4YAML4Node3TagB5cxx11Ev.exit, %bb.k, %bb.f, %bb.a, %_ZNK4YAML4Node4MarkEv.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit23
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.l
  %.0 = phi i1 [ false, %bb.m ], [ true, %bb.l ]  ; 2 uses
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ao = load ptr, ptr %3, align 8, !tbaa !50    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !43
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %.0, label %bb.p, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %.0, label %bb.p, label %.body

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn26 = phi { ptr, i32 } [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.aj) #26
  br label %.body

.body:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c, %bb.h, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %.pn26, %bb.p ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %bb.c ], [ %i.al, %bb.n ], [ %i.t, %bb.h ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.at = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.at, ptr %2, align 8, !tbaa !42
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.av = getelementptr i8, ptr %i.at, i64 -24
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %2, i64 %i.aw
  store ptr %i.au, ptr %i.ax, align 8, !tbaa !42
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ay, align 8, !tbaa !42
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !50 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.body
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !43
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #27
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ay, align 8, !tbaa !42
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bf) #26
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bg) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %.pn.pn

bb.q:                                             ; preds = %bb.m
  unreachable
}

declare void @_ZN16OpenColorIO_v2_56Config10setVersionEjj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN16OpenColorIO_v2_510GetVersionEv() local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNK16OpenColorIO_v2_56Config12getFileRulesEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.14") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare void @_ZNK16OpenColorIO_v2_59FileRules18createEditableCopyEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.11") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59FileRulesELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !40
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !15
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !15
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

end_hunk_0
begin_hunk_1_@_ZNK4YAML6detail13iterator_baseIKNS0_14iterator_valueEEptEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.y
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEE5proxyD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt4pairIN4YAML4NodeES1_ED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !40
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #26, !inline_history !17
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #26, !inline_history !17
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !45

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #26
  br label %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.c, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !50   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN4YAML6detail14iterator_valueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !43
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #27
  br label %_ZN4YAML6detail14iterator_valueD2Ev.exit

_ZN4YAML6detail14iterator_valueD2Ev.exit:         ; preds = %_ZNSt12__shared_ptrIN4YAML6detail13memory_holderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !90   ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !50
  %bcmp = tail call i32 @bcmp(ptr %i.f, ptr nonnull %1, i64 %i.b)
  %i.g = icmp eq i32 %bcmp, 0
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.c ], [ true, %bb.b ]
  ret i1 %i.h
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK4YAML4Node4TypeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !57, !range !58, !noundef !59
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 64) #26 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN4YAML11InvalidNodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN4YAML11InvalidNodeE, ptr nonnull @_ZN4YAML11InvalidNodeD1Ev) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #26
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !60   ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !66   ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !88, !range !58, !noundef !59
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load i32, ptr %i.l, align 8
  %i.n = select i1 %i.k, i32 %i.m, i32 0
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.o = phi i32 [ %i.n, %bb.f ], [ 1, %bb.e ]
  ret i32 %i.o
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115throwValueErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN4YAML4NodeES8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !90
  store i8 0, ptr %i.a, align 8, !tbaa !43
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_14loadERKN4YAML4NodeERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.c unwind label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.103, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  %i.d = load i8, ptr %1, align 8, !tbaa !57, !range !58, !noundef !59
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.f = call ptr @__cxa_allocate_exception(i64 64) #26 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN4YAML11InvalidNodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN4YAML11InvalidNodeE, ptr nonnull @_ZN4YAML11InvalidNodeD1Ev) #28
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.f) #26
  br label %.body

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !60   ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNK4YAML4Node4MarkEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !63
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !66
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.04.0.copyload.i = load i64, ptr %i.m, align 4, !tbaa !44
  %6 = lshr i64 %.sroa.04.0.copyload.i, 32
  %7 = trunc nuw i64 %6 to i32
  %i.n = add nsw i32 %7, 1
  br label %_ZNK4YAML4Node4MarkEv.exit

_ZNK4YAML4Node4MarkEv.exit:                       ; preds = %bb.h, %bb.g
  %.fca.1.insert.merged.i = phi i32 [ %i.n, %bb.h ], [ 0, %bb.g ]
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %.fca.1.insert.merged.i)
          to label %bb.i unwind label %bb.n       ; 2 uses

bb.i:                                             ; preds = %_ZNK4YAML4Node4MarkEv.exit
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.118, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18: ; preds = %bb.i
  %i.q = load ptr, ptr %3, align 8, !tbaa !50
  %i.r = load i64, ptr %i.b, align 8, !tbaa !90
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef %i.q, i64 noundef %i.r)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.n ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.119, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !50
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !90
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef %i.u, i64 noundef %i.w)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit23 unwind label %bb.n ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit23: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.120, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit23
  %i.z = load ptr, ptr %2, align 8, !tbaa !50
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !90
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef %i.z, i64 noundef %i.ab)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27 unwind label %bb.n ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25
  %i.ad = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.j:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27
  %i.ae = load ptr, ptr %5, align 8, !tbaa !50
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef %i.ae)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #28
          to label %bb.s unwind label %bb.o

bb.l:                                             ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.m:                                             ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit23, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18, %bb.i, %bb.e, %bb.c, %_ZNK4YAML4Node4MarkEv.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.p

bb.o:                                             ; preds = %bb.k, %bb.j
  %.0 = phi i1 [ false, %bb.k ], [ true, %bb.j ]  ; 2 uses
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !50    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.an = load i64, ptr %i.al, align 8, !tbaa !43
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br i1 %.0, label %bb.p, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br i1 %.0, label %bb.p, label %.body

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn33 = phi { ptr, i32 } [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.ad) #26
  br label %.body

.body:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %.pn33, %bb.p ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ah, %bb.n ], [ %i.h, %bb.f ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ap = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ap, ptr %4, align 8, !tbaa !42
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ar = getelementptr i8, ptr %i.ap, i64 -24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr %4, i64 %i.as
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !42
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.au, align 8, !tbaa !42
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !50 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.body
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !43
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #27
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.au, align 8, !tbaa !42
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bb) #26
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bc) #26
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %i.ag, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.l
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.q ], [ %i.af, %bb.l ]
  %i.bd = load ptr, ptr %3, align 8, !tbaa !50    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.a
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.r
  %i.bf = load i64, ptr %i.a, align 8, !tbaa !43
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.s:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4YAML4Node3TagB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !57, !range !58, !noundef !59
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 64) #26 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN4YAML11InvalidNodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN4YAML11InvalidNodeE, ptr nonnull @_ZN4YAML11InvalidNodeD1Ev) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #26
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !60   ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !66
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.k = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4YAML6detail9node_data12empty_scalarB5cxx11Ev()
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.l = phi ptr [ %i.j, %bb.f ], [ %i.k, %bb.g ]
  ret ptr %i.l
}

end_hunk_1
begin_hunk_2_@_ZNSt6vectorISt4pairIN4YAML4NodeES2_ESaIS3_EEaSERKS5_:bb.a
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.ag, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt4pairIN4YAML4NodeES4_ESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit ], [ %i.j, %bb.f ]
  %.not4.i.i25 = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.aj
  br i1 %.not4.i.i25, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4YAML4NodeES4_ESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i26.preheader

.lr.ph.i.i26.preheader:                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt4pairIN4YAML4NodeES4_ESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit
  %i.ak = sub i64 %.pre-phi47, %i.l
  %i.al = getelementptr inbounds i8, ptr %i.j, i64 %i.ak
  br label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %.lr.ph.i.i26.preheader, %.lr.ph.i.i26
  %.sroa.01.05.i.i = phi ptr [ %i.am, %.lr.ph.i.i26 ], [ %i.al, %.lr.ph.i.i26.preheader ] ; 2 uses
  tail call void @_ZNSt4pairIN4YAML4NodeES1_ED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %.sroa.01.05.i.i) #26
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 128 ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.am, %i.aj
  br i1 %.not.i.i27, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4YAML4NodeES4_ESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i26, !llvm.loop !1066

bb.g:                                             ; preds = %bb.e
  %i.an = ashr exact i64 %i.ac, 7                 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i29, label %_ZSt4copyIPSt4pairIN4YAML4NodeES2_ES4_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i29:                               ; preds = %bb.g, %.lr.ph.i.i.i.i.i29
  %.012.i.i.i.i.i30 = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i29 ], [ %i.an, %bb.g ] ; 2 uses
  %.0811.i.i.i.i.i31 = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i29 ], [ %i.j, %bb.g ] ; 2 uses
  %.0910.i.i.i.i.i32 = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i29 ], [ %i.c, %bb.g ] ; 2 uses
  %i.ap = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZNSt4pairIN4YAML4NodeES1_EaSERKS2_(ptr noundef nonnull align 8 dereferenceable(128) %.0811.i.i.i.i.i31, ptr noundef nonnull align 8 dereferenceable(128) %.0910.i.i.i.i.i32) ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i32, i64 128
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i31, i64 128
  %i.as = add nsw i64 %.012.i.i.i.i.i30, -1
  %i.at = icmp samesign ugt i64 %.012.i.i.i.i.i30, 1
  br i1 %i.at, label %.lr.ph.i.i.i.i.i29, label %_ZSt4copyIPSt4pairIN4YAML4NodeES2_ES4_ET0_T_S6_S5_.exit.loopexit, !llvm.loop !1067

_ZSt4copyIPSt4pairIN4YAML4NodeES2_ES4_ET0_T_S6_S5_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i29
  %.pre37 = load ptr, ptr %1, align 8, !tbaa !131
  %.pre38 = load ptr, ptr %i.z, align 8, !tbaa !132 ; 2 uses
  %.pre39 = load ptr, ptr %0, align 8, !tbaa !131
  %.pre40 = load ptr, ptr %i.a, align 8, !tbaa !132
  %.pre41 = ptrtoint ptr %.pre38 to i64
  %.pre42 = ptrtoint ptr %.pre39 to i64
  %.pre44 = sub i64 %.pre41, %.pre42
  br label %_ZSt4copyIPSt4pairIN4YAML4NodeES2_ES4_ET0_T_S6_S5_.exit

_ZSt4copyIPSt4pairIN4YAML4NodeES2_ES4_ET0_T_S6_S5_.exit: ; preds = %_ZSt4copyIPSt4pairIN4YAML4NodeES2_ES4_ET0_T_S6_S5_.exit.loopexit, %bb.g
  %.pre-phi45 = phi i64 [ %.pre44, %_ZSt4copyIPSt4pairIN4YAML4NodeES2_ES4_ET0_T_S6_S5_.exit.loopexit ], [ %i.ac, %bb.g ]
  %i.au = phi ptr [ %.pre40, %_ZSt4copyIPSt4pairIN4YAML4NodeES2_ES4_ET0_T_S6_S5_.exit.loopexit ], [ %i.b, %bb.g ] ; 2 uses
  %i.av = phi ptr [ %.pre38, %_ZSt4copyIPSt4pairIN4YAML4NodeES2_ES4_ET0_T_S6_S5_.exit.loopexit ], [ %i.aa, %bb.g ] ; 3 uses
  %i.aw = phi ptr [ %.pre37, %_ZSt4copyIPSt4pairIN4YAML4NodeES2_ES4_ET0_T_S6_S5_.exit.loopexit ], [ %i.c, %bb.g ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.pre-phi45 ; 2 uses
  %.not14.i.i.i.i = icmp eq ptr %i.ax, %i.au
  br i1 %.not14.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4YAML4NodeES4_ESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPSt4pairIN4YAML4NodeES2_ES4_ET0_T_S6_S5_.exit, %_ZSt10_ConstructISt4pairIN4YAML4NodeES2_EJRS3_EEvPT_DpOT0_.exit.i.i.i.i
  %.016.i.i.i.i = phi ptr [ %i.az, %_ZSt10_ConstructISt4pairIN4YAML4NodeES2_EJRS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.av, %_ZSt4copyIPSt4pairIN4YAML4NodeES2_ES4_ET0_T_S6_S5_.exit ] ; 4 uses
  %.01215.i.i.i.i = phi ptr [ %i.ay, %_ZSt10_ConstructISt4pairIN4YAML4NodeES2_EJRS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.ax, %_ZSt4copyIPSt4pairIN4YAML4NodeES2_ES4_ET0_T_S6_S5_.exit ] ; 2 uses
  invoke void @_ZNSt4pairIN4YAML4NodeES1_EC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(128) %.016.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(128) %.01215.i.i.i.i)
          to label %_ZSt10_ConstructISt4pairIN4YAML4NodeES2_EJRS3_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.h

_ZSt10_ConstructISt4pairIN4YAML4NodeES2_EJRS3_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i, i64 128 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 128
  %.not.i.i.i.i = icmp eq ptr %i.ay, %i.au
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4YAML4NodeES4_ESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1068

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  %i.bc = tail call ptr @__cxa_begin_catch(ptr %i.bb) #26 ; 0 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.av, %.016.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIN4YAML4NodeES2_EEvT_S5_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i ], [ %i.av, %bb.h ] ; 2 uses
  tail call void @_ZNSt4pairIN4YAML4NodeES1_ED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %.05.i.i.i.i.i.i) #26
  %i.bd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bd, %.016.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIN4YAML4NodeES2_EEvT_S5_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !10

_ZSt8_DestroyIPSt4pairIN4YAML4NodeES2_EEvT_S5_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.h
  invoke void @__cxa_rethrow() #28
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4YAML4NodeES2_EEvT_S5_.exit.i.i.i.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.be

bb.k:                                             ; preds = %bb.i
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  tail call void @__clang_call_terminate(ptr %i.bg) #29
  unreachable

bb.l:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4YAML4NodeES2_EEvT_S5_.exit.i.i.i.i
  unreachable

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4YAML4NodeES4_ESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit: ; preds = %.lr.ph.i.i26, %_ZSt10_ConstructISt4pairIN4YAML4NodeES2_EJRS3_EEvPT_DpOT0_.exit.i.i.i.i, %_ZSt4copyIPSt4pairIN4YAML4NodeES2_ES4_ET0_T_S6_S5_.exit, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt4pairIN4YAML4NodeES4_ESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, %_ZNSt12_Vector_baseISt4pairIN4YAML4NodeES2_ESaIS3_EE13_M_deallocateEPS3_m.exit
  %i.bh = load ptr, ptr %0, align 8, !tbaa !131
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.f
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !132
  br label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4YAML4NodeES4_ESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_116CustomKeysLoaderD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !131    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !132  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairIN4YAML4NodeES2_ES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZNSt4pairIN4YAML4NodeES1_ED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %.05.i.i.i) #26
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairIN4YAML4NodeES2_ES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !10

_ZSt8_DestroyIPSt4pairIN4YAML4NodeES2_ES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !131
  br label %_ZSt8_DestroyIPSt4pairIN4YAML4NodeES2_ES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairIN4YAML4NodeES2_ES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairIN4YAML4NodeES2_ES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.e = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairIN4YAML4NodeES2_ES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairIN4YAML4NodeES2_ESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4YAML4NodeES2_ES3_EvT_S5_RSaIT0_E.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !133
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #27
  br label %_ZNSt6vectorISt4pairIN4YAML4NodeES2_ESaIS3_EED2Ev.exit

_ZNSt6vectorISt4pairIN4YAML4NodeES2_ESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIN4YAML4NodeES2_ES3_EvT_S5_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_120LogUnknownKeyWarningERKN4YAML4NodeES4_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !90
  store i8 0, ptr %i.a, align 8, !tbaa !43
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_14loadERKN4YAML4NodeERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.r

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.c unwind label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.103, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  %i.d = load i8, ptr %1, align 8, !tbaa !57, !range !58, !noundef !59
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.f = call ptr @__cxa_allocate_exception(i64 64) #26 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN4YAML11InvalidNodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %.invoke unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.f) #26
  br label %.body

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !60   ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNK4YAML4Node4MarkEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !63
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !66
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.04.0.copyload.i = load i64, ptr %i.m, align 4, !tbaa !44
  %5 = lshr i64 %.sroa.04.0.copyload.i, 32
  %6 = trunc nuw i64 %5 to i32
  %i.n = add nsw i32 %6, 1
  br label %_ZNK4YAML4Node4MarkEv.exit

_ZNK4YAML4Node4MarkEv.exit:                       ; preds = %bb.g, %bb.f
  %.fca.1.insert.merged.i = phi i32 [ %i.n, %bb.g ], [ 0, %bb.f ]
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %.fca.1.insert.merged.i)
          to label %bb.h unwind label %bb.t       ; 2 uses

bb.h:                                             ; preds = %_ZNK4YAML4Node4MarkEv.exit
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.148, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14: ; preds = %bb.h
  %i.q = load ptr, ptr %2, align 8, !tbaa !50
  %i.r = load i64, ptr %i.b, align 8, !tbaa !90
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef %i.q, i64 noundef %i.r)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.t ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.149, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.u = load i8, ptr %0, align 8, !tbaa !57, !range !58, !noundef !59
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %i.w = call ptr @__cxa_allocate_exception(i64 64) #26 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN4YAML11InvalidNodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %.invoke unwind label %bb.j

.invoke:                                          ; preds = %bb.i, %bb.d
  %i.y = phi ptr [ %i.f, %bb.d ], [ %i.w, %bb.i ]
  invoke void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTIN4YAML11InvalidNodeE, ptr nonnull @_ZN4YAML11InvalidNodeD1Ev) #28
          to label %.cont unwind label %bb.t

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.w) #26
  br label %.body

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !60 ; 2 uses
  %.not.i18 = icmp eq ptr %i.ab, null
  br i1 %.not.i18, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !63
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !66
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  br label %_ZNK4YAML4Node3TagB5cxx11Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.af = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4YAML6detail9node_data12empty_scalarB5cxx11Ev()
          to label %_ZNK4YAML4Node3TagB5cxx11Ev.exit unwind label %bb.t

_ZNK4YAML4Node3TagB5cxx11Ev.exit:                 ; preds = %bb.l, %bb.m
  %i.ag = phi ptr [ %i.ae, %bb.l ], [ %i.af, %bb.m ] ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !50
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !90
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef %i.ah, i64 noundef %i.aj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit24 unwind label %bb.t

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit24: ; preds = %_ZNK4YAML4Node3TagB5cxx11Ev.exit
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull @.str.27, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.am, ptr %4, align 8, !tbaa !89, !alias.scope !1075
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.an, align 8, !tbaa !90, !alias.scope !1075
  store i8 0, ptr %i.am, align 8, !tbaa !43, !alias.scope !1075
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !103, !noalias !1075 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ap, null
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !1075 ; 2 uses
  %i.as = icmp ugt ptr %i.ap, %i.ar
  %.08.i.i.i = select i1 %i.as, ptr %i.ap, ptr %i.ar ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !104, !noalias !1075 ; 2 uses
  %i.av = ptrtoint ptr %.08.i.i.i to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.au, i64 noundef %i.ax)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.p, %bb.n
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %4, align 8, !tbaa !50, !alias.scope !1075 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.am
  br i1 %i.bb, label %.body27, label %.body27.sink.split

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.bc)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.o

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.p, %bb.n
  invoke void @_ZN16OpenColorIO_v2_510LogWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bd = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.am
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.bf = load i64, ptr %i.am, align 8, !tbaa !43
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.bh = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bh, ptr %3, align 8, !tbaa !42
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bj = getelementptr i8, ptr %i.bh, i64 -24
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds i8, ptr %3, i64 %i.bk
  store ptr %i.bi, ptr %i.bl, align 8, !tbaa !42
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bm, align 8, !tbaa !42
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !50 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !43
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #27
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bm, align 8, !tbaa !42
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bt) #26
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bu) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.bv = load ptr, ptr %2, align 8, !tbaa !50    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.a
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !43
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.r:                                             ; preds = %bb.a
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.s:                                             ; preds = %bb.b
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.t:                                             ; preds = %.invoke, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit24, %_ZNK4YAML4Node3TagB5cxx11Ev.exit, %bb.m, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14, %bb.h, %bb.c, %_ZNK4YAML4Node4MarkEv.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.am
  br i1 %i.ce, label %.body27, label %.body27.sink.split

.body27.sink.split:                               ; preds = %bb.u, %bb.o
  %.sink = phi ptr [ %i.ba, %bb.o ], [ %i.cd, %bb.u ]
  %.pn.ph = phi { ptr, i32 } [ %i.az, %bb.o ], [ %i.cc, %bb.u ]
  %i.cf = load i64, ptr %i.am, align 8, !tbaa !43
end_hunk_2
begin_hunk_3_@_ZN16OpenColorIO_v2_512_GLOBAL__N_19loadClampERKN4YAML4NodeES4_RdRbS5_S6_:bb.a

_ZNK4YAML6detail18node_iterator_baseINS0_4nodeEE10is_definedEN9__gnu_cxx17__normal_iteratorIPSt4pairIPS2_S7_ESt6vectorIS8_SaIS8_EEEE.exit.thread.i.i.i: ; preds = %_ZNK4YAML6detail18node_iterator_baseINS0_4nodeEE10is_definedEN9__gnu_cxx17__normal_iteratorIPSt4pairIPS2_S7_ESt6vectorIS8_SaIS8_EEEE.exit.i.i.i, %.lr.ph.i.i.i
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i.i, i64 16 ; 3 uses
  %.not.i.i.i124 = icmp eq ptr %i.mk, %i.ly
  br i1 %.not.i.i.i124, label %_ZN4YAML6detail18node_iterator_baseINS0_4nodeEE23increment_until_definedEN9__gnu_cxx17__normal_iteratorIPSt4pairIPS2_S7_ESt6vectorIS8_SaIS8_EEEE.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !9

_ZN4YAML6detail18node_iterator_baseINS0_4nodeEE23increment_until_definedEN9__gnu_cxx17__normal_iteratorIPSt4pairIPS2_S7_ESt6vectorIS8_SaIS8_EEEE.exit.i.i: ; preds = %_ZNK4YAML6detail18node_iterator_baseINS0_4nodeEE10is_definedEN9__gnu_cxx17__normal_iteratorIPSt4pairIPS2_S7_ESt6vectorIS8_SaIS8_EEEE.exit.thread.i.i.i, %_ZNK4YAML6detail18node_iterator_baseINS0_4nodeEE10is_definedEN9__gnu_cxx17__normal_iteratorIPSt4pairIPS2_S7_ESt6vectorIS8_SaIS8_EEEE.exit.i.i.i, %bb.du
  %.sroa.0.0.lcssa.i.i.i = phi ptr [ %i.lx, %bb.du ], [ %.sroa.0.04.i.i.i, %_ZNK4YAML6detail18node_iterator_baseINS0_4nodeEE10is_definedEN9__gnu_cxx17__normal_iteratorIPSt4pairIPS2_S7_ESt6vectorIS8_SaIS8_EEEE.exit.i.i.i ], [ %i.mk, %_ZNK4YAML6detail18node_iterator_baseINS0_4nodeEE10is_definedEN9__gnu_cxx17__normal_iteratorIPSt4pairIPS2_S7_ESt6vectorIS8_SaIS8_EEEE.exit.thread.i.i.i ]
  store ptr %.sroa.0.0.lcssa.i.i.i, ptr %.sink10.i.i.i.sroa.gep148, align 8, !tbaa !120
  br label %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEEppEv.exit.backedge

bb.dv:                                            ; preds = %bb.dr, %bb.dg, %bb.cv, %bb.cj
  %.pn50.pn = phi { ptr, i32 } [ %.pn50, %bb.cv ], [ %.pn48, %bb.dg ], [ %.pn46, %bb.dr ], [ %.pn42.pn.pn, %bb.cj ]
  %i.ml = load ptr, ptr %10, align 8, !tbaa !50   ; 2 uses
  %i.mm = icmp eq ptr %i.ml, %i.cb
  br i1 %i.mm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %bb.dv
  %i.mn = load i64, ptr %i.cb, align 8, !tbaa !43
  %i.mo = add i64 %i.mn, 1
  call void @_ZdlPvm(ptr noundef %i.ml, i64 noundef %i.mo) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %bb.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.dw

bb.dw:                                            ; preds = %bb.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, %bb.au
  %.pn54 = phi { ptr, i32 } [ %.pn40, %bb.cf ], [ %i.eq, %bb.au ], [ %.pn50.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127 ]
  call void @_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %common.resume

bb.dx:                                            ; preds = %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEED2Ev.exit74
  %i.mp = load i8, ptr %5, align 1, !tbaa !108, !range !58, !noundef !59
  %i.mq = trunc nuw i8 %i.mp to i1
  br i1 %i.mq, label %bb.ec, label %.noexc.i

.noexc.i:                                         ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.mr = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  store ptr %i.mr, ptr %17, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 50, ptr %i.b, align 8, !tbaa !98
  %i.ms = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc128 unwind label %bb.dy ; 3 uses

.noexc128:                                        ; preds = %.noexc.i
  store ptr %i.ms, ptr %17, align 8, !tbaa !50
  %i.mt = load i64, ptr %i.b, align 8, !tbaa !98  ; 3 uses
  store i64 %i.mt, ptr %i.mr, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(50) %i.ms, ptr noundef nonnull align 1 dereferenceable(50) @.str.263, i64 50, i1 false)
  %i.mu = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.mt, ptr %i.mu, align 8, !tbaa !90
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ms, i64 %i.mt
  store i8 0, ptr %i.mv, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115throwValueErrorERKN4YAML4NodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %.unreachable unwind label %bb.dz

.unreachable:                                     ; preds = %.noexc128
  unreachable

bb.dy:                                            ; preds = %.noexc.i
  %i.mw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

bb.dz:                                            ; preds = %.noexc128
  %i.mx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.my = load ptr, ptr %17, align 8, !tbaa !50   ; 2 uses
  %i.mz = icmp eq ptr %i.my, %i.mr
  br i1 %i.mz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %bb.dz
  %i.na = load i64, ptr %i.mr, align 8, !tbaa !43
  %i.nb = add i64 %i.na, 1
  call void @_ZdlPvm(ptr noundef %i.my, i64 noundef %i.nb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %bb.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132, %bb.dy
  %.pn38 = phi { ptr, i32 } [ %i.mw, %bb.dy ], [ %i.mx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132 ], [ %i.mx, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %common.resume

_ZNK4YAML4Node4TypeEv.exit.thread:                ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.nc = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store ptr %i.nc, ptr %18, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 28, ptr %i.a, align 8, !tbaa !98
  %i.nd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc137 unwind label %bb.ea ; 2 uses

.noexc137:                                        ; preds = %_ZNK4YAML4Node4TypeEv.exit.thread
  store ptr %i.nd, ptr %18, align 8, !tbaa !50
  %i.ne = load i64, ptr %i.a, align 8, !tbaa !98  ; 3 uses
  store i64 %i.ne, ptr %i.nc, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.nd, ptr noundef nonnull align 1 dereferenceable(28) @.str.259, i64 28, i1 false)
  %i.nf = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.ne, ptr %i.nf, align 8, !tbaa !90
  %i.ng = load ptr, ptr %18, align 8, !tbaa !50
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.ne
  store i8 0, ptr %i.nh, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115throwValueErrorERKN4YAML4NodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %.unreachable152 unwind label %bb.eb

.unreachable152:                                  ; preds = %.noexc137
  unreachable

bb.ea:                                            ; preds = %_ZNK4YAML4Node4TypeEv.exit.thread
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

bb.eb:                                            ; preds = %.noexc137
  %i.nj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nk = load ptr, ptr %18, align 8, !tbaa !50   ; 2 uses
  %i.nl = icmp eq ptr %i.nk, %i.nc
  br i1 %i.nl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %bb.eb
  %i.nm = load i64, ptr %i.nc, align 8, !tbaa !43
  %i.nn = add i64 %i.nm, 1
  call void @_ZdlPvm(ptr noundef %i.nk, i64 noundef %i.nn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %bb.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142, %bb.ea
  %.pn = phi { ptr, i32 } [ %i.ni, %bb.ea ], [ %i.nj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142 ], [ %i.nj, %bb.eb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %common.resume

bb.ec:                                            ; preds = %_ZN4YAML6detail13iterator_baseIKNS0_14iterator_valueEED2Ev.exit74, %bb.dx
  ret void
}

declare noundef double @_ZN16OpenColorIO_v2_514GradingPrimary12NoClampBlackEv() local_unnamed_addr #2

declare noundef double @_ZN16OpenColorIO_v2_514GradingPrimary12NoClampWhiteEv() local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress noreturn uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115throwValueErrorERKN4YAML4NodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !90
  store i8 0, ptr %i.a, align 8, !tbaa !43
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_14loadERKN4YAML4NodeERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.c unwind label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.103, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  %i.d = load i8, ptr %0, align 8, !tbaa !57, !range !58, !noundef !59
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.f = call ptr @__cxa_allocate_exception(i64 64) #26 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN4YAML11InvalidNodeC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN4YAML11InvalidNodeE, ptr nonnull @_ZN4YAML11InvalidNodeD1Ev) #28
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.f) #26
  br label %.body

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !60   ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNK4YAML4Node4MarkEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !63
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !66
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.04.0.copyload.i = load i64, ptr %i.m, align 4, !tbaa !44
  %5 = lshr i64 %.sroa.04.0.copyload.i, 32
  %6 = trunc nuw i64 %5 to i32
  %i.n = add nsw i32 %6, 1
  br label %_ZNK4YAML4Node4MarkEv.exit

_ZNK4YAML4Node4MarkEv.exit:                       ; preds = %bb.h, %bb.g
  %.fca.1.insert.merged.i = phi i32 [ %i.n, %bb.h ], [ 0, %bb.g ]
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %.fca.1.insert.merged.i)
          to label %bb.i unwind label %bb.n       ; 2 uses

bb.i:                                             ; preds = %_ZNK4YAML4Node4MarkEv.exit
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.118, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17: ; preds = %bb.i
  %i.q = load ptr, ptr %2, align 8, !tbaa !50
  %i.r = load i64, ptr %i.b, align 8, !tbaa !90
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef %i.q, i64 noundef %i.r)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.n ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.120, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.u = load ptr, ptr %1, align 8, !tbaa !50
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !90
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef %i.u, i64 noundef %i.w)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit22 unwind label %bb.n ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit22: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
  %i.y = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.j:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit22
  %i.z = load ptr, ptr %4, align 8, !tbaa !50
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef %i.z)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #28
          to label %bb.s unwind label %bb.o

bb.l:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.m:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17, %bb.i, %bb.e, %bb.c, %_ZNK4YAML4Node4MarkEv.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit22
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.p

bb.o:                                             ; preds = %bb.k, %bb.j
  %.0 = phi i1 [ false, %bb.k ], [ true, %bb.j ]  ; 2 uses
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.af = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !43
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %.0, label %bb.p, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %.0, label %bb.p, label %.body

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn28 = phi { ptr, i32 } [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.y) #26
  br label %.body

.body:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %.pn28, %bb.p ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ac, %bb.n ], [ %i.h, %bb.f ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ak = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ak, ptr %3, align 8, !tbaa !42
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.am = getelementptr i8, ptr %i.ak, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %3, i64 %i.an
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !42
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ap, align 8, !tbaa !42
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !50 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.body
  %i.au = load i64, ptr %i.as, align 8, !tbaa !43
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #27
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ap, align 8, !tbaa !42
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aw) #26
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ax) #26
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %i.ab, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.l
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.q ], [ %i.aa, %bb.l ]
  %i.ay = load ptr, ptr %2, align 8, !tbaa !50    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.a
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.r
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !43
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.s:                                             ; preds = %bb.k
  unreachable
}

declare void @_ZN16OpenColorIO_v2_524GradingRGBCurveTransform6CreateENS_12GradingStyleE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.180") align 8, i32 noundef) local_unnamed_addr #2

declare void @_ZN16OpenColorIO_v2_519GradingBSplineCurve6CreateEm(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.211") align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load <2 x ptr>, ptr %1, align 8, !tbaa !115
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !37   ; 8 uses
  store <2 x ptr> %i.b, ptr %0, align 8, !tbaa !115
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EEaSEOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !40
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #26, !inline_history !1791
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #26, !inline_history !1791
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EEaSEOS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !44
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_519GradingBSplineCurveELN9__gnu_cxx12_Lock_policyE2EEaSEOS4_.exit, !prof !45

end_hunk_3
