inline.NumInlined: 27259
inline.NumDeleted: 5979
begin_hunk_0_@_ZN8facebook5velox13exportToArrowERKSt10shared_ptrINS0_10BaseVectorEER11ArrowSchemaRK12ArrowOptions:bb.a
  %.not = icmp eq i64 %i.sd, 0
  br i1 %.not, label %_ZNSt10unique_ptrIN8facebook5velox12_GLOBAL__N_130VeloxToArrowSchemaBridgeHolderESt14default_deleteIS3_EED2Ev.exit, label %.lr.ph

bb.fe:                                            ; preds = %bb.es, %bb.ep
  %i.ug = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

.lr.ph:                                           ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit320, %bb.fl
  %.0116383 = phi i64 [ %i.vl, %bb.fl ], [ 0, %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit320 ] ; 7 uses
  %i.uh = load ptr, ptr %i.sp, align 8, !tbaa !376
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.uh, i64 %.0116383 ; 4 uses
  %i.uj = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #46
          to label %bb.ff unwind label %bb.fm     ; 2 uses

bb.ff:                                            ; preds = %.lr.ph
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.uj, i8 0, i64 72, i1 false), !noalias !407
  %i.uk = load ptr, ptr %i.ui, align 8, !tbaa !364 ; 2 uses
  store ptr %i.uj, ptr %i.ui, align 8, !tbaa !364
  %.not.i.i.i.i323 = icmp eq ptr %i.uk, null
  br i1 %.not.i.i.i.i323, label %_ZNSt10unique_ptrI11ArrowSchemaSt14default_deleteIS0_EED2Ev.exit328, label %_ZNKSt14default_deleteI11ArrowSchemaEclEPS0_.exit.i.i.i.i324

_ZNKSt14default_deleteI11ArrowSchemaEclEPS0_.exit.i.i.i.i324: ; preds = %bb.ff
  tail call void @_ZdlPvm(ptr noundef nonnull %i.uk, i64 noundef 72) #45
  br label %_ZNSt10unique_ptrI11ArrowSchemaSt14default_deleteIS0_EED2Ev.exit328

_ZNSt10unique_ptrI11ArrowSchemaSt14default_deleteIS0_EED2Ev.exit328: ; preds = %_ZNKSt14default_deleteI11ArrowSchemaEclEPS0_.exit.i.i.i.i324, %bb.ff
  %i.ul = trunc i64 %.0116383 to i32              ; 2 uses
  %i.um = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8facebook5velox9RowVector7childAtEj(ptr noundef nonnull align 8 dereferenceable(152) %i.sb, i32 noundef %i.ul)
          to label %bb.fg unwind label %.loopexit373

bb.fg:                                            ; preds = %_ZNSt10unique_ptrI11ArrowSchemaSt14default_deleteIS0_EED2Ev.exit328
  %i.un = load ptr, ptr %i.ui, align 8, !tbaa !364
  invoke void @_ZN8facebook5velox13exportToArrowERKSt10shared_ptrINS0_10BaseVectorEER11ArrowSchemaRK12ArrowOptions(ptr noundef nonnull align 8 dereferenceable(16) %i.um, ptr noundef nonnull align 8 dereferenceable(72) %i.un, ptr noundef nonnull align 8 dereferenceable(51) %2)
          to label %bb.fh unwind label %.loopexit373

bb.fh:                                            ; preds = %bb.fg
  %i.uo = load ptr, ptr %i.tl, align 8, !tbaa !206 ; 2 uses
  %i.up = and i64 %.0116383, 4294967295           ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.uo, i64 24
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uo, i64 32
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !198
  %i.ut = load ptr, ptr %i.uq, align 8, !tbaa !194 ; 2 uses
  %i.uu = ptrtoint ptr %i.us to i64
  %i.uv = ptrtoint ptr %i.ut to i64
  %i.uw = sub i64 %i.uu, %i.uv
  %i.ux = ashr exact i64 %i.uw, 5                 ; 2 uses
  %.not.i329 = icmp ugt i64 %i.ux, %i.up
  br i1 %.not.i329, label %bb.fl, label %bb.fi, !prof !156

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38, !noalias !410
  store i32 %i.ul, ptr %3, align 16, !tbaa !139, !alias.scope !413, !noalias !410
  %i.uy = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.ux, ptr %i.uy, align 16, !tbaa !139, !alias.scope !413, !noalias !410
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.32, i64 11, i64 66, ptr nonnull %3)
          to label %.noexc330 unwind label %.loopexit.split-lp

.noexc330:                                        ; preds = %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38, !noalias !410
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox7RowType6nameOfB5cxx11EjE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.32) #47
          to label %bb.fj unwind label %bb.fk

bb.fj:                                            ; preds = %.noexc330
  unreachable

bb.fk:                                            ; preds = %.noexc330
  %i.uz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
  %i.va = load ptr, ptr %4, align 8, !tbaa !143   ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.vc = icmp eq ptr %i.va, %i.vb
  br i1 %i.vc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.fk
  %i.vd = load i64, ptr %i.vb, align 8, !tbaa !139
  %i.ve = add i64 %i.vd, 1
  call void @_ZdlPvm(ptr noundef %i.va, i64 noundef %i.ve) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.fk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %.body331

bb.fl:                                            ; preds = %bb.fh
  %i.vf = getelementptr inbounds nuw [32 x i8], ptr %i.ut, i64 %i.up
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !143
  %i.vh = load ptr, ptr %i.ui, align 8, !tbaa !364 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 8
  store ptr %i.vg, ptr %i.vi, align 8, !tbaa !369
  %i.vj = load ptr, ptr %i.ue, align 8, !tbaa !380
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %.0116383
  store ptr %i.vh, ptr %i.vk, align 8, !tbaa !364
  %i.vl = add nuw i64 %.0116383, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.vl, %i.sd
  br i1 %exitcond.not, label %_ZNSt10unique_ptrIN8facebook5velox12_GLOBAL__N_130VeloxToArrowSchemaBridgeHolderESt14default_deleteIS3_EED2Ev.exit, label %.lr.ph, !llvm.loop !416

bb.fm:                                            ; preds = %.lr.ph
  %i.vm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
  br label %.body331

.loopexit373:                                     ; preds = %_ZNSt10unique_ptrI11ArrowSchemaSt14default_deleteIS0_EED2Ev.exit328, %bb.fg
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
  br label %.body331

.loopexit.split-lp:                               ; preds = %bb.fi
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
  br label %.body331

.body331:                                         ; preds = %.loopexit373, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.fm
  %.pn125 = phi { ptr, i32 } [ %i.vm, %bb.fm ], [ %i.uz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %lpad.loopexit, %.loopexit373 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  %.14111 = extractvalue { ptr, i32 } %.pn125, 1
  %i.vn = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.vo = icmp eq i32 %.14111, %i.vn
  br i1 %i.vo, label %bb.fn, label %bb.ft

bb.fn:                                            ; preds = %.body331
  %.14 = extractvalue { ptr, i32 } %.pn125, 0
  %i.vp = call ptr @__cxa_begin_catch(ptr %.14) #38 ; 0 uses
  %.not386 = icmp eq i64 %.0116383, 0
  br i1 %.not386, label %._crit_edge, label %.lr.ph385

._crit_edge:                                      ; preds = %bb.fo, %bb.fn
  invoke void @__cxa_rethrow() #47
          to label %bb.fv unwind label %bb.fq

.lr.ph385:                                        ; preds = %bb.fn, %bb.fo
  %.0384 = phi i64 [ %i.vv, %bb.fo ], [ 0, %bb.fn ] ; 2 uses
  %i.vq = load ptr, ptr %i.ue, align 8, !tbaa !380
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %i.vq, i64 %.0384
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !364 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 56
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !368
  invoke void %i.vu(ptr noundef nonnull %i.vs)
          to label %bb.fo unwind label %bb.fp

bb.fo:                                            ; preds = %.lr.ph385
  %i.vv = add nuw i64 %.0384, 1                   ; 2 uses
  %exitcond398.not = icmp eq i64 %i.vv, %.0116383
  br i1 %exitcond398.not, label %._crit_edge, label %.lr.ph385, !llvm.loop !417

bb.fp:                                            ; preds = %.lr.ph385
  %i.vw = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.fq:                                            ; preds = %._crit_edge
  %i.vx = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %.pn127 = phi { ptr, i32 } [ %i.vw, %bb.fp ], [ %i.vx, %bb.fq ]
  invoke void @__cxa_end_catch()
          to label %bb.ft unwind label %bb.fu

bb.fs:                                            ; preds = %bb.af
  %i.vy = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vy, i8 0, i64 16, i1 false)
  br label %_ZNSt10unique_ptrIN8facebook5velox12_GLOBAL__N_130VeloxToArrowSchemaBridgeHolderESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN8facebook5velox12_GLOBAL__N_130VeloxToArrowSchemaBridgeHolderESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.fl, %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit320, %bb.g, %bb.d, %_ZNSt10unique_ptrI11ArrowSchemaSt14default_deleteIS0_EED2Ev.exit277, %bb.fs, %_ZNSt10unique_ptrI11ArrowSchemaSt14default_deleteIS0_EED2Ev.exit303, %_ZNSt10unique_ptrI11ArrowSchemaSt14default_deleteIS0_EED2Ev.exit185
  %i.vz = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr @_ZN8facebook5velox12_GLOBAL__N_118releaseArrowSchemaEP11ArrowSchema, ptr %i.vz, align 8, !tbaa !368
  %i.wa = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.h, ptr %i.wa, align 8, !tbaa !418
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  ret void

bb.ft:                                            ; preds = %bb.en, %_ZNSt10unique_ptrI11ArrowSchemaSt14default_deleteIS0_EED2Ev.exit306, %bb.dy, %_ZNSt10unique_ptrI11ArrowSchemaSt14default_deleteIS0_EED2Ev.exit286, %bb.n, %_ZNSt10unique_ptrI11ArrowSchemaSt14default_deleteIS0_EED2Ev.exit191, %bb.fe, %bb.fr, %.body331, %bb.ad, %bb.h, %bb.e
  %.merged = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.aa, %bb.h ], [ %i.cr, %bb.ad ], [ %i.ap, %bb.n ], [ %i.qh, %bb.dy ], [ %.pn127, %bb.fr ], [ %i.ug, %bb.fe ], [ %.pn125, %.body331 ], [ %.pn122, %_ZNSt10unique_ptrI11ArrowSchemaSt14default_deleteIS0_EED2Ev.exit191 ], [ %.pn139.pn, %_ZNSt10unique_ptrI11ArrowSchemaSt14default_deleteIS0_EED2Ev.exit286 ], [ %i.sa, %_ZNSt10unique_ptrI11ArrowSchemaSt14default_deleteIS0_EED2Ev.exit306 ], [ %i.rz, %bb.en ]
  call fastcc void @_ZNSt10unique_ptrIN8facebook5velox12_GLOBAL__N_130VeloxToArrowSchemaBridgeHolderESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  resume { ptr, i32 } %.merged

bb.fu:                                            ; preds = %bb.fr
  %i.wb = landingpad { ptr, i32 }
          catch ptr null
  %i.wc = extractvalue { ptr, i32 } %i.wb, 0
  call void @__clang_call_terminate(ptr %i.wc) #48
  unreachable

bb.fv:                                            ; preds = %._crit_edge
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN8facebook5velox12_GLOBAL__N_120exportArrowFormatStrERKSt10shared_ptrIKNS0_4TypeEERK12ArrowOptionsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(51) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.352", align 16 ; 5 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.268", align 16 ; 5 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.1573", align 16 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !291    ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !124  ; 2 uses
  %i.d = icmp eq ptr %i.c, getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN8facebook5velox16ShortDecimalTypeE, i64 16)
  %i.e = icmp eq ptr %i.c, getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN8facebook5velox15LongDecimalTypeE, i64 16)
  %or.cond = select i1 %i.d, i1 true, i1 %i.e
  br i1 %or.cond, label %_ZNK8facebook5velox4Type9isDecimalEv.exit.thread, label %bb.o

_ZNK8facebook5velox4Type9isDecimalEv.exit.thread: ; preds = %bb.a
  %i.f = tail call i16 @_ZN8facebook5velox24getDecimalPrecisionScaleERKNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(18) %i.b) ; 3 uses
  %.sroa.5.0.extract.shift = lshr i16 %i.f, 8     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 50
  %i.h = load i8, ptr %i.g, align 2, !tbaa !419, !range !39, !noundef !40
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %_ZNK8facebook5velox4Type9isDecimalEv.exit.thread
  %.sroa.5.0.extract.trunc = zext nneg i16 %.sroa.5.0.extract.shift to i32
  %i.j = load ptr, ptr %0, align 8, !tbaa !291
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !124
  %i.l = icmp eq ptr %i.k, getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN8facebook5velox16ShortDecimalTypeE, i64 16)
  %i.m = select i1 %i.l, i32 64, i32 128
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38, !noalias !420
  %i.n = and i16 %i.f, 255
  %i.o = zext nneg i16 %i.n to i32
  store i32 %i.o, ptr %5, align 16, !tbaa !139, !noalias !420
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %.sroa.5.0.extract.trunc, ptr %i.p, align 16, !tbaa !139, !noalias !420
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %i.m, ptr %i.q, align 16, !tbaa !139, !noalias !420
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.242, i64 10, i64 290, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38, !noalias !420
  %i.r = load ptr, ptr %2, align 8, !tbaa !143    ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  %i.u = load ptr, ptr %6, align 8, !tbaa !143    ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.w = icmp eq ptr %i.u, %i.v                   ; 2 uses
  br i1 %i.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.b
  br i1 %i.w, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.b
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !193  ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  call void @llvm.assume(i1 %i.z)
  %.not21.i = icmp eq ptr %6, %2
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %9, !prof !132

9:                                                ; preds = %bb.c
  switch i64 %i.y, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %9
  %i.aa = load i8, ptr %i.u, align 1, !tbaa !139
  store i8 %i.aa, ptr %i.r, align 1, !tbaa !139
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.u, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %9
  %i.ab = load i64, ptr %i.x, align 8, !tbaa !193 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !193
  %i.ad = load ptr, ptr %2, align 8, !tbaa !143
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !139
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !143
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.u, ptr %2, align 8, !tbaa !143
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ah = load <2 x i64>, ptr %i.ag, align 8, !tbaa !139
  store <2 x i64> %i.ah, ptr %i.af, align 8, !tbaa !139
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ai = load i64, ptr %i.s, align 8, !tbaa !139
  store ptr %i.u, ptr %2, align 8, !tbaa !143
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.al = load <2 x i64>, ptr %i.aj, align 8, !tbaa !139
  store <2 x i64> %i.al, ptr %i.ak, align 8, !tbaa !139
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.r, ptr %6, align 8, !tbaa !143
  store i64 %i.ai, ptr %i.v, align 8, !tbaa !139
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.v, ptr %6, align 8, !tbaa !143
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %10 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.r, %bb.f ], [ %i.v, %bb.g ], [ %i.u, %bb.c ]
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.am, align 8, !tbaa !193
  store i8 0, ptr %10, align 1, !tbaa !139
  %i.an = load ptr, ptr %6, align 8, !tbaa !143   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !139
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  br label %bb.n

bb.h:                                             ; preds = %_ZNK8facebook5velox4Type9isDecimalEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38, !noalias !423
  %.sroa.051.0.extract.trunc.mask = and i16 %i.f, 255
  %i.as = zext nneg i16 %.sroa.051.0.extract.trunc.mask to i32
  store i32 %i.as, ptr %4, align 16, !tbaa !139, !noalias !423
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.au = zext nneg i16 %.sroa.5.0.extract.shift to i32
  store i32 %i.au, ptr %i.at, align 16, !tbaa !139, !noalias !423
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull @.str.243, i64 7, i64 34, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38, !noalias !423
  %i.av = load ptr, ptr %2, align 8, !tbaa !143   ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  %i.ay = load ptr, ptr %7, align 8, !tbaa !143   ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ba = icmp eq ptr %i.ay, %i.az                ; 2 uses
  br i1 %i.ax, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i33: ; preds = %bb.h
  br i1 %i.ba, label %bb.i, label %.thread.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i27: ; preds = %bb.h
  br i1 %i.ba, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i28

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i33
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !193 ; 3 uses
  %i.bd = icmp ult i64 %i.bc, 16
  call void @llvm.assume(i1 %i.bd)
  %.not21.i30 = icmp eq ptr %7, %2
  br i1 %.not21.i30, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit35, label %11, !prof !132

11:                                               ; preds = %bb.i
  switch i64 %i.bc, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i31
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %11
  %i.be = load i8, ptr %i.ay, align 1, !tbaa !139
  store i8 %i.be, ptr %i.av, align 1, !tbaa !139
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i31

bb.k:                                             ; preds = %11
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %i.ay, i64 %i.bc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i31: ; preds = %bb.k, %bb.j, %11
  %i.bf = load i64, ptr %i.bb, align 8, !tbaa !193 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !193
  %i.bh = load ptr, ptr %2, align 8, !tbaa !143
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bf
  store i8 0, ptr %i.bi, align 1, !tbaa !139
  %.pre.i32 = load ptr, ptr %7, align 8, !tbaa !143
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit35

.thread.i34:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i33
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ay, ptr %2, align 8, !tbaa !143
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bl = load <2 x i64>, ptr %i.bk, align 8, !tbaa !139
  store <2 x i64> %i.bl, ptr %i.bj, align 8, !tbaa !139
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i28: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i27
  %i.bm = load i64, ptr %i.aw, align 8, !tbaa !139
  store ptr %i.ay, ptr %2, align 8, !tbaa !143
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bp = load <2 x i64>, ptr %i.bn, align 8, !tbaa !139
  store <2 x i64> %i.bp, ptr %i.bo, align 8, !tbaa !139
  %.not.i29 = icmp eq ptr %i.av, null
  br i1 %.not.i29, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i28
  store ptr %i.av, ptr %7, align 8, !tbaa !143
  store i64 %i.bm, ptr %i.az, align 8, !tbaa !139
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit35

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i28, %.thread.i34
  store ptr %i.az, ptr %7, align 8, !tbaa !143
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit35: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i31, %bb.l, %bb.m
  %12 = phi ptr [ %.pre.i32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i31 ], [ %i.av, %bb.l ], [ %i.az, %bb.m ], [ %i.ay, %bb.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.bq, align 8, !tbaa !193
  store i8 0, ptr %12, align 1, !tbaa !139
  %i.br = load ptr, ptr %7, align 8, !tbaa !143   ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit35
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !139
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bw = load ptr, ptr %2, align 8, !tbaa !143
  br label %bb.am

bb.o:                                             ; preds = %bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !316 ; 2 uses
  switch i8 %i.by, label %bb.aj [
    i8 0, label %bb.am
    i8 1, label %bb.p
    i8 2, label %bb.q
    i8 3, label %_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
    i8 4, label %_ZNSt12__shared_ptrIKN8facebook5velox8TimeTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
    i8 5, label %bb.r
    i8 6, label %bb.s
    i8 7, label %bb.t
    i8 8, label %bb.u
    i8 33, label %bb.w
    i8 9, label %bb.x
    i8 30, label %bb.ag
    i8 31, label %bb.ah
    i8 32, label %bb.ai
  ]

bb.p:                                             ; preds = %bb.o
  br label %bb.am

bb.q:                                             ; preds = %bb.o
  br label %bb.am

_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.o
  %i.bz = icmp eq ptr %i.b, @_ZZN8facebook5velox8DateType3getEvE9kInstance
  br i1 %i.bz, label %bb.am, label %_ZNSt12__shared_ptrIKN8facebook5velox21IntervalYearMonthTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox21IntervalYearMonthTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ca = icmp eq ptr %i.b, @_ZZN8facebook5velox21IntervalYearMonthType3getEvE9kInstance
  %.str.248..str = select i1 %i.ca, ptr @.str.248, ptr @.str
  br label %bb.am

_ZNSt12__shared_ptrIKN8facebook5velox8TimeTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.o
  %i.cb = icmp eq ptr %i.b, @_ZZN8facebook5velox8TimeType3getEvE9kInstance
  %.str.249..str.250 = select i1 %i.cb, ptr @.str.249, ptr @.str.250
  br label %bb.am

bb.r:                                             ; preds = %bb.o
  br label %bb.am

bb.s:                                             ; preds = %bb.o
  br label %bb.am

bb.t:                                             ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !426, !range !39, !noundef !40
  %i.ce = trunc nuw i8 %i.cd to i1
  %.str.253..str.254 = select i1 %i.ce, ptr @.str.253, ptr @.str.254
  br label %bb.am

bb.u:                                             ; preds = %bb.o
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !427, !range !39, !noundef !40
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.am, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !426, !range !39, !noundef !40
  %i.ck = trunc nuw i8 %i.cj to i1
  %.str.255..str.256 = select i1 %i.ck, ptr @.str.255, ptr @.str.256
  br label %bb.am

bb.w:                                             ; preds = %bb.o
  br label %bb.am

bb.x:                                             ; preds = %bb.o
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.cm = load i8, ptr %i.cl, align 2, !tbaa !428 ; 3 uses
  %i.cn = icmp ult i8 %i.cm, 10
  %switch.maskindex = zext nneg i8 %i.cm to i16
  %switch.shifted = lshr i16 585, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond92 = select i1 %i.cn, i1 %switch.lobit, i1 false
  br i1 %or.cond92, label %switch.lookup, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12_GLOBAL__N_129exportArrowFormatTimestampStrERK12ArrowOptionsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18veloxCheckFailArgs) #47
  unreachable

switch.lookup:                                    ; preds = %bb.x
  %i.co = zext nneg i8 %i.cm to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN8facebook5velox12_GLOBAL__N_120exportArrowFormatStrERKSt10shared_ptrIKNS0_4TypeEERK12ArrowOptionsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, i64 %i.co
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !193
  %i.cr = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.cq, ptr noundef nonnull %switch.load, i64 noundef 4) ; 0 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !429, !range !39, !noundef !40
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %_ZNKRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i, label %_ZN8facebook5velox12_GLOBAL__N_129exportArrowFormatTimestampStrERK12ArrowOptionsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i: ; preds = %switch.lookup
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !143 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !193 ; 6 uses
  %i.cz = load i64, ptr %i.cp, align 8, !tbaa !193 ; 5 uses
  %i.da = sub i64 9223372036854775807, %i.cz
  %i.db = icmp ult i64 %i.da, %i.cy
  br i1 %i.db, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

bb.z:                                             ; preds = %_ZNKRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.141) #47
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %_ZNKRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit.i
  %i.dc = add i64 %i.cz, %i.cy                    ; 3 uses
  %i.dd = load ptr, ptr %2, align 8, !tbaa !143   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de                ; 2 uses
  br i1 %i.df, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.dg = icmp ult i64 %i.cz, 16
  tail call void @llvm.assume(i1 %i.dg)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.dh = load i64, ptr %i.de, align 8
  %i.di = select i1 %i.df, i64 15, i64 %i.dh
  %.not.i.i.i.i.i = icmp ugt i64 %i.dc, %i.di
  br i1 %.not.i.i.i.i.i, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  %.not8.i.i.i.i.i = icmp eq i64 %i.cy, 0
  br i1 %.not8.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.cz ; 2 uses
  %cond.i.i.i.i.i = icmp eq i64 %i.cy, 1
  br i1 %cond.i.i.i.i.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dk = load i8, ptr %i.cw, align 1, !tbaa !139
  store i8 %i.dk, ptr %i.dj, align 1, !tbaa !139
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i

bb.ae:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dj, ptr align 1 %i.cw, i64 %i.cy, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.cz, i64 noundef 0, ptr noundef %i.cw, i64 noundef %i.cy)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i: ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ab
  store i64 %i.dc, ptr %i.cp, align 8, !tbaa !193
  %i.dl = load ptr, ptr %2, align 8, !tbaa !143
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dc
  store i8 0, ptr %i.dm, align 1, !tbaa !139
  br label %_ZN8facebook5velox12_GLOBAL__N_129exportArrowFormatTimestampStrERK12ArrowOptionsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8facebook5velox12_GLOBAL__N_129exportArrowFormatTimestampStrERK12ArrowOptionsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %switch.lookup, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i
  %i.dn = load ptr, ptr %2, align 8, !tbaa !143
  br label %bb.am

bb.ag:                                            ; preds = %bb.o
  br label %bb.am

bb.ah:                                            ; preds = %bb.o
  br label %bb.am

bb.ai:                                            ; preds = %bb.o
  br label %bb.am

bb.aj:                                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store i8 %i.by, ptr %i.a, align 1, !tbaa !430
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38, !noalias !431
  %i.do = ptrtoint ptr %i.a to i64
  store i64 %i.do, ptr %3, align 16, !noalias !431
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 ptrtoint (ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox8TypeKindENS0_9formatterIS8_cvEEEEvPvRNS0_13parse_contextIcEERS3_ to i64), ptr %.sroa_idx3.i, align 8, !noalias !431
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.262, i64 39, i64 15, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38, !noalias !431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
end_hunk_0
