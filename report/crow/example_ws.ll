Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/crow/original/example_ws?download=true
inline.NumInlined: 16068
inline.NumDeleted: 5763
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN4crow14routing_paramsC2ERKS0_:bb.a
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit

bb.v:                                             ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i14
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.w:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i18
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.r, %bb.s, %bb.w
  %eh.lpad-body = phi { ptr, i32 } [ %i.co, %bb.w ], [ %i.cg, %bb.s ], [ %i.cg, %bb.r ] ; 2 uses
  %i.cp = load ptr, ptr %i.as, align 8, !tbaa !1403 ; 3 uses
  %.not.i.i.i21 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %.body
  %i.cq = load ptr, ptr %i.bf, align 8, !tbaa !1404
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.cp to i64
  %i.ct = sub i64 %i.cr, %i.cs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.ct) #41
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.x, %.body, %bb.v
  %.pn = phi { ptr, i32 } [ %i.cn, %bb.v ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.x ] ; 2 uses
  %i.cu = load ptr, ptr %i.v, align 8, !tbaa !1406 ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.cv = load ptr, ptr %i.ai, align 8, !tbaa !1407
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.cu to i64
  %i.cy = sub i64 %i.cw, %i.cx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.cy) #41
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.y, %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.cm, %bb.u ], [ %.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit ], [ %.pn, %bb.y ]
  %i.cz = load ptr, ptr %0, align 8, !tbaa !1409  ; 3 uses
  %.not.i.i.i23 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i23, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.da = load ptr, ptr %i.l, align 8, !tbaa !1410
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.cz to i64
  %i.dd = sub i64 %i.db, %i.dc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dd) #41
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.z
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 8 uses
  %.sroa.08.013 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.b, ptr %.014, align 8, !tbaa !160
  %i.c = load ptr, ptr %.sroa.08.013, align 8, !tbaa !164 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !166  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %i.e, ptr %i.a, align 8, !tbaa !162
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.014, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.014, align 8, !tbaa !164
  %i.h = load i64, ptr %i.a, align 8, !tbaa !162
  store i64 %i.h, ptr %i.b, align 8, !tbaa !165
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !165
  store i8 %i.j, ptr %i.i, align 1, !tbaa !165
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !162  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !166
  %i.m = load ptr, ptr %.014, align 8, !tbaa !164
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3253

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #40 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.014)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #39
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #42
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4crow4Trie4findERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4NodeEmPNS_14routing_paramsEPSt6vectorImSaImEE(ptr dead_on_unwind noalias writable sret(%"struct.crow::routing_handle_result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"struct.crow::routing_params", align 8 ; 26 uses
  %8 = alloca %"class.std::vector.209", align 8   ; 15 uses
  %9 = alloca %"struct.crow::routing_params", align 8 ; 21 uses
  %10 = alloca %"struct.crow::routing_params", align 8 ; 12 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %11 = alloca %"struct.crow::routing_handle_result", align 8 ; 9 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %12 = alloca %"struct.crow::routing_handle_result", align 8 ; 9 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %13 = alloca %"struct.crow::routing_handle_result", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %15 = alloca %"struct.crow::routing_handle_result", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %17 = alloca %"struct.crow::routing_handle_result", align 8 ; 9 uses
  %18 = alloca %"struct.crow::routing_handle_result", align 8 ; 9 uses
  %19 = alloca %"struct.crow::routing_params", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %7, i8 0, i64 96, i1 false)
  %i.f = icmp eq ptr %5, null                     ; 12 uses
  %spec.store.select = select i1 %i.f, ptr %7, ptr %5 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.g = icmp eq ptr %6, null                     ; 7 uses
  %spec.store.select27 = select i1 %i.g, ptr %8, ptr %6 ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %9, i8 0, i64 96, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !166
  %i.j = icmp eq i64 %4, %i.i
  br i1 %i.j, label %_ZNSt6vectorImSaImEEaSEOS1_.exit, label %bb.t

_ZNSt6vectorImSaImEEaSEOS1_.exit:                 ; preds = %bb.a
  %i.k = load ptr, ptr %spec.store.select27, align 8, !tbaa !1406 ; 5 uses
  %spec.store.select27.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.g, ptr %8, ptr %6
  %spec.store.select27.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select27.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %spec.store.select27.sroa.sel500.v.sroa.sel.v.sroa.sel.v = select i1 %i.g, ptr %8, ptr %6
  %spec.store.select27.sroa.sel500.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select27.sroa.sel500.v.sroa.sel.v.sroa.sel.v, i64 16
  %i.l = load ptr, ptr %spec.store.select27.sroa.sel500.v.sroa.sel.v.sroa.sel, align 8, !tbaa !1407 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %spec.store.select27, i8 0, i64 24, i1 false)
  %i.m = load i64, ptr %3, align 8, !tbaa !526
  %i.n = load ptr, ptr %spec.store.select27.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !1471 ; 7 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEEC2ERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorImSaImEEaSEOS1_.exit
  %i.p = icmp ugt ptr %i.n, inttoptr (i64 9223372036854775800 to ptr)
  br i1 %i.p, label %.noexc.i.i, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i, !prof !316

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #39
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #43
          to label %_ZNSt6vectorImSaImEEC2ERKS1_.exit unwind label %bb.o

_ZNSt6vectorImSaImEEC2ERKS1_.exit:                ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorImSaImEEaSEOS1_.exit
  %i.r = phi ptr [ null, %_ZNSt6vectorImSaImEEaSEOS1_.exit ], [ %i.q, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  invoke void @_ZN4crow14routing_paramsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %10, ptr noundef nonnull align 8 dereferenceable(96) %spec.store.select)
          to label %bb.c unwind label %bb.p

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEEC2ERKS1_.exit
  store i8 0, ptr %0, align 8, !tbaa !1466
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.s, align 8, !tbaa !1465
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i241 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i241, label %.thread658, label %bb.d

.thread658:                                       ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr null, i64 %i.o ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store ptr %i.v, ptr %i.w, align 8, !tbaa !1407
  br label %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i

bb.d:                                             ; preds = %bb.c
  %i.x = icmp ugt ptr %i.n, inttoptr (i64 9223372036854775800 to ptr)
  br i1 %i.x, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i, !prof !316

.noexc.i.i.i:                                     ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #39
          to label %.noexc243 unwind label %bb.q

.noexc243:                                        ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #43
          to label %.noexc244 unwind label %bb.q  ; 5 uses

.noexc244:                                        ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.y, ptr %i.t, align 8, !tbaa !1406
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !1471
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.o ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !1407
  %i.ac = icmp ugt ptr %i.n, inttoptr (i64 8 to ptr)
  br i1 %i.ac, label %bb.e, label %bb.f, !prof !1133

bb.e:                                             ; preds = %.noexc244
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %i.r, i64 %i.o, i1 false)
  br label %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i

bb.f:                                             ; preds = %.noexc244
  %i.ad = icmp eq ptr %i.n, inttoptr (i64 8 to ptr)
  br i1 %i.ad, label %bb.g, label %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ae = load i64, ptr %i.r, align 8, !tbaa !162
  store i64 %i.ae, ptr %i.y, align 8, !tbaa !162
  br label %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i

_ZNSt6vectorImSaImEEC2ERKS1_.exit.i:              ; preds = %.thread658, %bb.g, %bb.f, %bb.e
  %i.af = phi ptr [ %i.ab, %bb.g ], [ %i.ab, %bb.f ], [ %i.ab, %bb.e ], [ %i.w, %.thread658 ]
  %i.ag = phi ptr [ %i.aa, %bb.g ], [ %i.aa, %bb.f ], [ %i.aa, %bb.e ], [ %i.v, %.thread658 ]
  %i.ah = phi ptr [ %i.z, %bb.g ], [ %i.z, %bb.f ], [ %i.z, %bb.e ], [ %i.u, %.thread658 ]
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !1471
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZN4crow14routing_paramsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %i.ai, ptr noundef nonnull align 8 dereferenceable(96) %10)
          to label %_ZN4crow21routing_handle_resultC2EmSt6vectorImSaImEENS_14routing_paramsE.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %i.t, align 8, !tbaa !1406 ; 3 uses
  %.not.i.i.i.i242 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i242, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !1407
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ao) #41
  br label %.body

_ZN4crow21routing_handle_resultC2EmSt6vectorImSaImEENS_14routing_paramsE.exit: ; preds = %_ZNSt6vectorImSaImEEC2ERKS1_.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !569 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !570 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.aq, %i.as
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4crow21routing_handle_resultC2EmSt6vectorImSaImEENS_14routing_paramsE.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ay, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.aq, %_ZN4crow21routing_handle_resultC2EmSt6vectorImSaImEENS_14routing_paramsE.exit ] ; 3 uses
  %i.at = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !164 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !165
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #41
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i245 = icmp eq ptr %i.ay, %i.as
  br i1 %.not.i.i.i.i245, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !24

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.ap, align 8, !tbaa !569
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZN4crow21routing_handle_resultC2EmSt6vectorImSaImEENS_14routing_paramsE.exit
  %i.az = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.aq, %_ZN4crow21routing_handle_resultC2EmSt6vectorImSaImEENS_14routing_paramsE.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !571
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #41
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.j, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1403 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1404
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #41
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i:                  ; preds = %bb.k, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1406 ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i246, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1407
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bs) #41
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i246

_ZNSt6vectorImSaImEED2Ev.exit.i246:               ; preds = %bb.l, %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  %i.bt = load ptr, ptr %10, align 8, !tbaa !1409 ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i3.i, label %_ZN4crow14routing_paramsD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i246
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1410
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #41
  br label %_ZN4crow14routing_paramsD2Ev.exit

_ZN4crow14routing_paramsD2Ev.exit:                ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i246, %bb.m
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4crow14routing_paramsD2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.o) #41
  br label %_ZNSt6vectorImSaImEED2Ev.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit248

bb.p:                                             ; preds = %_ZNSt6vectorImSaImEEC2ERKS1_.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.i, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.cb, %bb.q ], [ %i.aj, %bb.i ], [ %i.aj, %bb.h ]
  call void @_ZN4crow14routing_paramsD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %10) #40
  br label %bb.r

bb.r:                                             ; preds = %.body, %bb.p
  %.pn236 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ca, %bb.p ] ; 2 uses
  %.not.i.i.i247 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i247, label %_ZNSt6vectorImSaImEED2Ev.exit248, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.o) #41
  br label %_ZNSt6vectorImSaImEED2Ev.exit248

bb.t:                                             ; preds = %bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1140 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1140 ; 2 uses
  %.not939 = icmp eq ptr %i.cd, %i.cf
  br i1 %.not939, label %._crit_edge948.thread, label %.lr.ph947

.lr.ph947:                                        ; preds = %bb.t
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.f, ptr %7, ptr %5
  %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 72 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 11 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  %spec.store.select.sroa.sel.sroa.sel589.v.sroa.sel.v.sroa.sel.v = select i1 %i.f, ptr %7, ptr %5
  %spec.store.select.sroa.sel.sroa.sel589.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel.sroa.sel589.v.sroa.sel.v.sroa.sel.v, i64 80 ; 10 uses
  %spec.store.select.sroa.sel.sroa.sel586.v.sroa.sel.v.sroa.sel.v = select i1 %i.f, ptr %7, ptr %5
  %spec.store.select.sroa.sel.sroa.sel586.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel.sroa.sel586.v.sroa.sel.v.sroa.sel.v, i64 88 ; 2 uses
  %spec.store.select27.sroa.sel554.v.sroa.sel.v.sroa.sel.v = select i1 %i.g, ptr %8, ptr %6
  %spec.store.select27.sroa.sel554.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select27.sroa.sel554.v.sroa.sel.v.sroa.sel.v, i64 8 ; 30 uses
  %spec.store.select27.sroa.sel557.v.sroa.sel.v.sroa.sel.v = select i1 %i.g, ptr %8, ptr %6
  %spec.store.select27.sroa.sel557.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select27.sroa.sel557.v.sroa.sel.v.sroa.sel.v, i64 16 ; 12 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.cm = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 11 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.cq = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %15, i64 40
  %spec.store.select.sroa.sel601.v.sroa.sel.v.sroa.sel.v = select i1 %i.f, ptr %7, ptr %5
  %spec.store.select.sroa.sel601.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel601.v.sroa.sel.v.sroa.sel.v, i64 48 ; 2 uses
  %spec.store.select.sroa.sel601.sroa.sel607.v.sroa.sel.v.sroa.sel.v = select i1 %i.f, ptr %7, ptr %5
  %spec.store.select.sroa.sel601.sroa.sel607.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel601.sroa.sel607.v.sroa.sel.v.sroa.sel.v, i64 56 ; 5 uses
  %spec.store.select.sroa.sel601.sroa.sel604.v.sroa.sel.v.sroa.sel.v = select i1 %i.f, ptr %7, ptr %5
  %spec.store.select.sroa.sel601.sroa.sel604.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel601.sroa.sel604.v.sroa.sel.v.sroa.sel.v, i64 64 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.cu = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %13, i64 40
  %spec.store.select.sroa.sel610.v.sroa.sel.v.sroa.sel.v = select i1 %i.f, ptr %7, ptr %5
  %spec.store.select.sroa.sel610.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel610.v.sroa.sel.v.sroa.sel.v, i64 24 ; 2 uses
  %spec.store.select.sroa.sel610.sroa.sel616.v.sroa.sel.v.sroa.sel.v = select i1 %i.f, ptr %7, ptr %5
  %spec.store.select.sroa.sel610.sroa.sel616.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel610.sroa.sel616.v.sroa.sel.v.sroa.sel.v, i64 32 ; 5 uses
  %spec.store.select.sroa.sel610.sroa.sel613.v.sroa.sel.v.sroa.sel.v = select i1 %i.f, ptr %7, ptr %5
  %spec.store.select.sroa.sel610.sroa.sel613.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel610.sroa.sel613.v.sroa.sel.v.sroa.sel.v, i64 40 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.cy = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %12, i64 40
  %spec.store.select.sroa.sel619.v.sroa.sel.v.sroa.sel.v = select i1 %i.f, ptr %7, ptr %5
  %spec.store.select.sroa.sel619.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel619.v.sroa.sel.v.sroa.sel.v, i64 8 ; 5 uses
  %spec.store.select.sroa.sel622.v.sroa.sel.v.sroa.sel.v = select i1 %i.f, ptr %7, ptr %5
  %spec.store.select.sroa.sel622.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.store.select.sroa.sel622.v.sroa.sel.v.sroa.sel.v, i64 16 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.dc = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.de = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %18, i64 40
  br label %bb.u

._crit_edge948:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread
  br i1 %.10, label %_ZNSt6vectorImSaImEEaSEOS1_.exit375, label %._crit_edge948.thread

bb.u:                                             ; preds = %.lr.ph947, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread
  %.0653.fr945 = phi i64 [ 0, %.lr.ph947 ], [ %.0653.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread ] ; 27 uses
  %.0175944 = phi i1 [ false, %.lr.ph947 ], [ %.10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread ] ; 15 uses
  %.sroa.0469.0943 = phi ptr [ %i.cd, %.lr.ph947 ], [ %i.ts, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread ] ; 16 uses
  %.sroa.34.0942 = phi ptr [ null, %.lr.ph947 ], [ %.sroa.34.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread ] ; 35 uses
  %.sroa.0.0940 = phi ptr [ null, %.lr.ph947 ], [ %i.tr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread ] ; 32 uses
  %i.di = phi <2 x ptr> [ splat (ptr null), %.lr.ph947 ], [ %i.tq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread ] ; 15 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0469.0943, i64 48
  %i.dk = load i8, ptr %i.dj, align 8, !tbaa !528
  switch i8 %i.dk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread [
    i8 5, label %bb.ed
    i8 0, label %bb.v
    i8 1, label %bb.as
    i8 2, label %bb.bp
    i8 3, label %.preheader
    i8 4, label %bb.dh
  ]

.preheader:                                       ; preds = %bb.u
  %i.dl = load i64, ptr %i.h, align 8, !tbaa !166 ; 6 uses
  %i.dm = icmp ult i64 %4, %i.dl
  br i1 %i.dm, label %.lr.ph, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread

.lr.ph:                                           ; preds = %.preheader
  %i.dn = load ptr, ptr %2, align 8, !tbaa !164
  br label %bb.ck

bb.v:                                             ; preds = %bb.u
  %i.do = load ptr, ptr %2, align 8, !tbaa !164
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %4 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !165
  %.fr669 = freeze i8 %i.dq                       ; 2 uses
  %i.dr = add i8 %.fr669, -48
  %or.cond = icmp ult i8 %i.dr, 10
  br i1 %or.cond, label %bb.w, label %switch.early.test

switch.early.test:                                ; preds = %bb.v
  switch i8 %.fr669, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.thread [
    i8 45, label %bb.w
    i8 43, label %bb.w
  ]

bb.w:                                             ; preds = %switch.early.test, %switch.early.test, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  %i.ds = tail call ptr @__errno_location() #44   ; 2 uses
  store i32 0, ptr %i.ds, align 4, !tbaa !276
  %i.dt = call i64 @__isoc23_strtoll(ptr noundef nonnull %i.dp, ptr noundef nonnull %i.c, i32 noundef 10) #40 ; 2 uses
  %i.du = load i32, ptr %i.ds, align 4, !tbaa !276
  %.not229 = icmp eq i32 %i.du, 34
  br i1 %.not229, label %bb.aq, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dv = load ptr, ptr %i.c, align 8, !tbaa !551
  %i.dw = load ptr, ptr %2, align 8, !tbaa !164
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %4
  %.not230 = icmp eq ptr %i.dv, %i.dx
  br i1 %.not230, label %bb.aq, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dy = load ptr, ptr %spec.store.select.sroa.sel619.v.sroa.sel.v.sroa.sel, align 8, !tbaa !1470 ; 4 uses
  %i.dz = load ptr, ptr %spec.store.select.sroa.sel622.v.sroa.sel.v.sroa.sel, align 8, !tbaa !1410
  %.not.i.i = icmp eq ptr %i.dy, %i.dz
  br i1 %.not.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i64 %i.dt, ptr %i.dy, align 8, !tbaa !162
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %i.ea, ptr %spec.store.select.sroa.sel619.v.sroa.sel.v.sroa.sel, align 8, !tbaa !1470
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit

bb.aa:                                            ; preds = %bb.y
  %i.eb = load ptr, ptr %spec.store.select, align 8, !tbaa !1409 ; 4 uses
  %i.ec = ptrtoint ptr %i.dy to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed                    ; 6 uses
  %i.ef = icmp eq i64 %i.ee, 9223372036854775800
  br i1 %i.ef, label %bb.ab, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.259) #39
          to label %.noexc250 unwind label %.loopexit.split-lp703

.noexc250:                                        ; preds = %bb.ab
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aa
  %i.eg = ashr exact i64 %i.ee, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.eg, i64 1)
  %i.eh = add nsw i64 %.sroa.speculated.i.i.i.i, %i.eg ; 2 uses
  %i.ei = icmp ult i64 %i.eh, %i.eg
  %i.ej = call i64 @llvm.umin.i64(i64 %i.eh, i64 1152921504606846975)
  %i.ek = select i1 %i.ei, i64 1152921504606846975, i64 %i.ej ; 3 uses
  %.not.i.i.i.i249 = icmp ne i64 %i.ek, 0
  call void @llvm.assume(i1 %.not.i.i.i.i249)
  %i.el = shl nuw nsw i64 %i.ek, 3
  %i.em = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.el) #43
          to label %.noexc251 unwind label %.loopexit702 ; 4 uses

.noexc251:                                        ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 %i.ee ; 2 uses
  store i64 %i.dt, ptr %i.en, align 8, !tbaa !162
  %i.eo = icmp sgt i64 %i.ee, 0
  br i1 %i.eo, label %bb.ac, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i

bb.ac:                                            ; preds = %.noexc251
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.em, ptr align 8 %i.eb, i64 %i.ee, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ac, %.noexc251
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.ee) #41
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i: ; preds = %bb.ad, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i
  store ptr %i.em, ptr %spec.store.select, align 8, !tbaa !1409
  store ptr %i.ep, ptr %spec.store.select.sroa.sel619.v.sroa.sel.v.sroa.sel, align 8, !tbaa !1470
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.ek
  store ptr %i.eq, ptr %spec.store.select.sroa.sel622.v.sroa.sel.v.sroa.sel, align 8, !tbaa !1410
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit

_ZNSt6vectorIlSaIlEE9push_backEOl.exit:           ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i, %bb.z
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0469.0943, i64 8
  %i.es = load i64, ptr %i.er, align 8, !tbaa !527 ; 3 uses
  %.not231 = icmp eq i64 %i.es, -1
  br i1 %.not231, label %_ZNSt6vectorImSaImEE9push_backERKm.exit, label %bb.ae

end_hunk_0
