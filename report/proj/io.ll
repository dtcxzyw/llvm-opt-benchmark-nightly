Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/io?download=true
inline.NumInlined: 17817
inline.NumDeleted: 4455
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 47
loop-unroll.NumUnrolledNotLatch: 4
begin_hunk_0_@_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum5DatumEEEESaIS9_EED2Ev:bb.a

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum5DatumEEEEEvPT_.exit.i.i, !prof !214

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #41
  br label %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum5DatumEEEEEvPT_.exit.i.i

_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum5DatumEEEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum5DatumEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !37

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum5DatumEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum5DatumEEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !387
  br label %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum5DatumEEEES9_EvT_SB_RSaIT0_E.exit

_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum5DatumEEEES9_EvT_SB_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum5DatumEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum5DatumEEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum5DatumEEEESaIS9_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum5DatumEEEES9_EvT_SB_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !375
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #44
  br label %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum5DatumEEEESaIS9_EED2Ev.exit

_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum5DatumEEEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum5DatumEEEES9_EvT_SB_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj2io9WKTParser7Private13buildMeridianERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEE(ptr dead_on_unwind noalias writable sret(%"class.dropbox::oxygen::nn.288") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.osgeo::proj::common::UnitOfMeasure", align 8 ; 7 uses
  %4 = alloca %"class.osgeo::proj::common::Angle", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !245
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !247  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !252
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !251
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ult i64 %i.i, 9
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5osgeo4proj2ioL22ThrowNotEnoughChildrenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.b) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @_ZN5osgeo4proj2io9WKTParser7Private18buildUnitInSubNodeERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEENS0_6common13UnitOfMeasure4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.osgeo::proj::common::UnitOfMeasure") align 8 %3, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 2)
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !251
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !245
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !247
  %i.n = invoke noundef double @_ZN5osgeo4proj8internal13c_locale_stodERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_ZN5osgeo4proj2io9WKTParser7Private8asDoubleERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEE.exit unwind label %bb.f

_ZN5osgeo4proj2io9WKTParser7Private8asDoubleERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEE.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  invoke void @_ZN5osgeo4proj6common5AngleC1EdRKNS1_13UnitOfMeasureE(ptr noundef nonnull align 8 dereferenceable(24) %4, double noundef %i.n, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZN5osgeo4proj2io9WKTParser7Private8asDoubleERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEE.exit
  invoke void @_ZN5osgeo4proj2cs8Meridian6createERKNS0_6common5AngleE(ptr dead_on_unwind writable sret(%"class.dropbox::oxygen::nn.288") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @_ZN5osgeo4proj6common5AngleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @_ZN5osgeo4proj6common13UnitOfMeasureD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  ret void

bb.f:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.j

bb.g:                                             ; preds = %_ZN5osgeo4proj2io9WKTParser7Private8asDoubleERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEE.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN5osgeo4proj6common5AngleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #41
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.q, %bb.h ], [ %i.p, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.i ], [ %i.o, %bb.f ] ; 3 uses
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 1
  %i.r = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.s = icmp eq i32 %.1, %i.r
  br i1 %i.s, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %.113 = extractvalue { ptr, i32 } %.pn.pn, 0
  %i.t = call ptr @__cxa_begin_catch(ptr %.113) #41
  %i.u = call ptr @__cxa_allocate_exception(i64 40) #41 ; 3 uses
  invoke fastcc void @_ZN5osgeo4proj2ioL12buildRethrowEPKcRKSt9exception(ptr dead_on_unwind noalias writable align 8 %i.u, ptr noundef nonnull @__FUNCTION__._ZN5osgeo4proj2io9WKTParser7Private13buildMeridianERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEE, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr %i.u, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr nonnull @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
          to label %bb.r unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %i.u) #41
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn18 = phi { ptr, i32 } [ %i.w, %bb.n ], [ %i.v, %bb.m ]
  invoke void @__cxa_end_catch()
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.j
  %.merged = phi { ptr, i32 } [ %.pn.pn, %bb.j ], [ %.pn18, %bb.o ]
  call void @_ZN5osgeo4proj6common13UnitOfMeasureD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  resume { ptr, i32 } %.merged

bb.q:                                             ; preds = %bb.o
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #40
  unreachable

bb.r:                                             ; preds = %bb.l
  unreachable
}

declare void @_ZN5osgeo4proj2cs8Meridian6createERKNS0_6common5AngleE(ptr dead_on_unwind writable sret(%"class.dropbox::oxygen::nn.288") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj2io9WKTParser7Private9buildAxisERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEERKNS0_6common13UnitOfMeasureERKNSG_4TypeEbi(ptr dead_on_unwind noalias writable sret(%"class.dropbox::oxygen::nn.292") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, i1 noundef zeroext %5, i32 noundef %6) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 32 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 34 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.osgeo::proj::common::UnitOfMeasure", align 8 ; 10 uses
  %20 = alloca %"class.osgeo::proj::util::optional.296", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.osgeo::proj::util::optional.296", align 8 ; 7 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %24 = alloca %"class.osgeo::proj::util::optional.297", align 8 ; 7 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.osgeo::proj::util::optional.297", align 8 ; 9 uses
  %27 = alloca %"class.std::shared_ptr.289", align 16 ; 8 uses
  %28 = alloca %"class.dropbox::oxygen::nn.288", align 16 ; 9 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !245
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !247  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !252  ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !251  ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = icmp ult i64 %i.p, 9
  br i1 %i.q, label %bb.b, label %.lr.ph.i

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5osgeo4proj2ioL22ThrowNotEnoughChildrenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.i) #42
  unreachable

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.sroa.013.019.i = phi ptr [ %i.u, %bb.c ], [ %i.m, %bb.a ] ; 4 uses
  %i.r = load ptr, ptr %.sroa.013.019.i, align 8, !tbaa !245
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !247
  %i.t = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants5ORDERB5cxx11E) #41
  br i1 %i.t, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.013.019.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.u, %i.l
  br i1 %.not.i, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.lr.ph.i

_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i
  %i.v = icmp eq ptr %.sroa.013.019.i, @_ZN5osgeo4proj2ioL9null_nodeE
  br i1 %i.v, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.w = load ptr, ptr %.sroa.013.019.i, align 8, !tbaa !245
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !247  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !252
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !251 ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %.not = icmp eq i64 %i.ae, 8
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_ZN5osgeo4proj2ioL22ThrowNotEnoughChildrenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants5ORDERB5cxx11E) #42
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !245
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !247 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !163 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #41
  %i.ai = tail call ptr @__errno_location() #46   ; 6 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !213 ; 2 uses
  store i32 0, ptr %i.ai, align 4, !tbaa !213
  %i.ak = call noundef i64 @__isoc23_strtol(ptr noundef %i.ah, ptr noundef nonnull %i.g, i32 noundef 10) ; 2 uses
  %i.al = load ptr, ptr %i.g, align 8, !tbaa !391
  %i.am = icmp eq ptr %i.al, %i.ah
  br i1 %i.am, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.631) #42
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %.critedge.i.i, %bb.g
  %i.an = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.ao = load i32, ptr %i.ai, align 4, !tbaa !213
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.j, label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

bb.j:                                             ; preds = %bb.i
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !213
  br label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #41
  %i.aq = extractvalue { ptr, i32 } %i.an, 0      ; 2 uses
  %i.ar = extractvalue { ptr, i32 } %i.an, 1      ; 2 uses
  %i.as = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #41
  %i.at = icmp eq i32 %i.ar, %i.as
  br i1 %i.at, label %bb.p, label %bb.gn

bb.k:                                             ; preds = %bb.f
  %i.au = load i32, ptr %i.ai, align 4, !tbaa !213 ; 2 uses
  %i.av = icmp eq i32 %i.au, 34
  %i.aw = add i64 %i.ak, -2147483648
  %i.ax = icmp ult i64 %i.aw, -4294967296
  %or.cond.i.i = or i1 %i.ax, %i.av
  br i1 %or.cond.i.i, label %.critedge.i.i, label %bb.m

.critedge.i.i:                                    ; preds = %bb.k
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.631) #42
          to label %bb.l unwind label %bb.i

bb.l:                                             ; preds = %.critedge.i.i
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ay = icmp eq i32 %i.au, 0
  br i1 %i.ay, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !213
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.az = trunc nsw i64 %i.ak to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #41
  %.not135 = icmp eq i32 %6, %i.az
  br i1 %.not135, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %bb.v

bb.p:                                             ; preds = %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i
  %i.ba = call ptr @__cxa_begin_catch(ptr %i.aq) #41 ; 0 uses
  %i.bb = call ptr @__cxa_allocate_exception(i64 40) #41 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  invoke void @_ZN5osgeo4proj8internal6concatEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull @.str.99, ptr noundef nonnull align 8 dereferenceable(32) %i.ag)
          to label %bb.q unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN5osgeo4proj4util9ExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj2io16ParsingExceptionE, i64 16), ptr %i.bb, align 8, !tbaa !156
  invoke void @__cxa_throw(ptr nonnull %i.bb, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr nonnull @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
          to label %bb.gp unwind label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.p
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.0101366 = extractvalue { ptr, i32 } %i.bc, 1
  %.0103367 = extractvalue { ptr, i32 } %i.bc, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  br label %bb.t

bb.s:                                             ; preds = %bb.q, %bb.r
  %.099 = phi i1 [ false, %bb.r ], [ true, %bb.q ] ; 2 uses
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.be = load ptr, ptr %7, align 8, !tbaa !163   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.s
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !166
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #44
  %.0101372 = extractvalue { ptr, i32 } %i.bd, 1  ; 2 uses
  %.0103373 = extractvalue { ptr, i32 } %i.bd, 0  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  br i1 %.099, label %bb.t, label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s
  %.0101 = extractvalue { ptr, i32 } %i.bd, 1     ; 2 uses
  %.0103 = extractvalue { ptr, i32 } %i.bd, 0     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  br i1 %.099, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0103371 = phi ptr [ %.0103367, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %.0103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.0103373, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %.0101369 = phi i32 [ %.0101366, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %.0101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.0101372, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.bb) #41
  br label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0103370 = phi ptr [ %.0103371, %bb.t ], [ %.0103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.0103373, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %.0101368 = phi i32 [ %.0101369, %bb.t ], [ %.0101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.0101372, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  invoke void @__cxa_end_catch()
          to label %bb.gn unwind label %bb.go

bb.v:                                             ; preds = %bb.o
  %i.bj = call ptr @__cxa_allocate_exception(i64 40) #41 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  invoke void @_ZN5osgeo4proj8internal6concatEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull @.str.100, ptr noundef nonnull align 8 dereferenceable(32) %i.ag)
          to label %bb.w unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169.thread

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN5osgeo4proj4util9ExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj2io16ParsingExceptionE, i64 16), ptr %i.bj, align 8, !tbaa !156
  invoke void @__cxa_throw(ptr nonnull %i.bj, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr nonnull @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
          to label %bb.gp unwind label %bb.y

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169.thread: ; preds = %bb.v
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.1102376 = extractvalue { ptr, i32 } %i.bk, 1
  %.1104377 = extractvalue { ptr, i32 } %i.bk, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  br label %bb.z

bb.y:                                             ; preds = %bb.w, %bb.x
  %.097 = phi i1 [ false, %bb.x ], [ true, %bb.w ] ; 2 uses
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bm = load ptr, ptr %8, align 8, !tbaa !163   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %bb.y
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !166
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #44
  %.1102380 = extractvalue { ptr, i32 } %i.bl, 1  ; 2 uses
  %.1104381 = extractvalue { ptr, i32 } %i.bl, 0  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  br i1 %.097, label %bb.z, label %bb.gn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169: ; preds = %bb.y
  %.1102 = extractvalue { ptr, i32 } %i.bl, 1     ; 2 uses
  %.1104 = extractvalue { ptr, i32 } %i.bl, 0     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  br i1 %.097, label %bb.z, label %bb.gn

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169
  %.1104379 = phi ptr [ %.1104377, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169.thread ], [ %.1104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169 ], [ %.1104381, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167 ]
  %.1102378 = phi i32 [ %.1102376, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169.thread ], [ %.1102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169 ], [ %.1102380, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167 ]
  call void @__cxa_free_exception(ptr %i.bj) #41
  br label %bb.gn

_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %bb.c, %bb.o, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  %i.br = load ptr, ptr %i.j, align 8, !tbaa !251
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !245, !noalias !1063
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !247, !noalias !1063
  call void @_ZN5osgeo4proj8internal11stripQuotesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bt)
  %i.bu = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.90, i64 noundef 0, i64 noundef 2) #41 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 10 uses
  store ptr %i.bv, ptr %10, align 8, !tbaa !160
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 10 uses
  store i64 0, ptr %i.bw, align 8, !tbaa !164
  store i8 0, ptr %i.bv, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  %i.bx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 10 uses
  store ptr %i.bx, ptr %11, align 8, !tbaa !160
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 12 uses
  store i64 0, ptr %i.by, align 8, !tbaa !164
  store i8 0, ptr %i.bx, align 8, !tbaa !166
  %.not138 = icmp eq i64 %i.bu, -1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !164 ; 6 uses
  br i1 %.not138, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread._crit_edge, label %bb.aa

bb.aa:                                            ; preds = %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %i.bz = load ptr, ptr %9, align 8, !tbaa !163   ; 3 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 %.pre
  %i.cb = getelementptr i8, ptr %i.ca, i64 -1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !166
  %i.cd = icmp eq i8 %i.cc, 41
  br i1 %i.cd, label %bb.ab, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread._crit_edge

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  %i.ce = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.ce, ptr %13, align 8, !tbaa !160, !alias.scope !1064
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bu, i64 %.pre) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #41, !noalias !1064
  store i64 %spec.select.i.i.i, ptr %i.f, align 8, !tbaa !165, !noalias !1064
  %i.cf = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.cf, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.ab
  %i.cg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc unwind label %bb.au    ; 2 uses

.noexc:                                           ; preds = %.noexc10.i.i
  store ptr %i.cg, ptr %13, align 8, !tbaa !163, !alias.scope !1064
  %i.ch = load i64, ptr %i.f, align 8, !tbaa !165, !noalias !1064
  store i64 %i.ch, ptr %i.ce, align 8, !tbaa !166, !alias.scope !1064
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.ab
  %i.ci = phi ptr [ %i.cg, %.noexc ], [ %i.ce, %bb.ab ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.ad [
    i64 1, label %bb.ac
    i64 0, label %bb.ae
  ]

bb.ac:                                            ; preds = %._crit_edge.i.i.i
  %i.cj = load i8, ptr %i.bz, align 1, !tbaa !166
  store i8 %i.cj, ptr %i.ci, align 1, !tbaa !166
  br label %bb.ae

bb.ad:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ci, ptr nonnull align 1 %i.bz, i64 %spec.select.i.i.i, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %._crit_edge.i.i.i
  %i.ck = load i64, ptr %i.f, align 8, !tbaa !165, !noalias !1064 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !164, !alias.scope !1064
  %i.cm = load ptr, ptr %13, align 8, !tbaa !163, !alias.scope !1064
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ck
  store i8 0, ptr %i.cn, align 1, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41, !noalias !1064
  invoke void @_ZN5osgeo4proj2cs20CoordinateSystemAxis17normalizeAxisNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.af unwind label %bb.av

bb.af:                                            ; preds = %bb.ae
  %i.co = load ptr, ptr %10, align 8, !tbaa !163  ; 6 uses
  %i.cp = icmp eq ptr %i.co, %i.bv
  %i.cq = load ptr, ptr %12, align 8, !tbaa !163  ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr                ; 2 uses
  br i1 %i.cp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.af
  br i1 %i.cs, label %bb.ag, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.af
  br i1 %i.cs, label %bb.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ct = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !164 ; 3 uses
  %i.cv = icmp ult i64 %i.cu, 16
  call void @llvm.assume(i1 %i.cv)
  switch i64 %i.cu, label %bb.ai [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ah
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.cw = load i8, ptr %i.cq, align 1, !tbaa !166
  store i8 %i.cw, ptr %i.co, align 1, !tbaa !166
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr align 1 %i.cq, i64 %i.cu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.cx = load i64, ptr %i.ct, align 8, !tbaa !164 ; 2 uses
  store i64 %i.cx, ptr %i.bw, align 8, !tbaa !164
  %i.cy = load ptr, ptr %10, align 8, !tbaa !163
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cx
  store i8 0, ptr %i.cz, align 1, !tbaa !166
  %.pre.i = load ptr, ptr %12, align 8, !tbaa !163
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.cq, ptr %10, align 8, !tbaa !163
  %i.da = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.db = load <2 x i64>, ptr %i.da, align 8, !tbaa !166
  store <2 x i64> %i.db, ptr %i.bw, align 8, !tbaa !166
  br label %bb.ak

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.dc = load i64, ptr %i.bv, align 8, !tbaa !166
  store ptr %i.cq, ptr %10, align 8, !tbaa !163
  %i.dd = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.de = load <2 x i64>, ptr %i.dd, align 8, !tbaa !166
  store <2 x i64> %i.de, ptr %i.bw, align 8, !tbaa !166
  %.not.i170 = icmp eq ptr %i.co, null
  br i1 %.not.i170, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.co, ptr %12, align 8, !tbaa !163
  store i64 %i.dc, ptr %i.cr, align 8, !tbaa !166
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.cr, ptr %12, align 8, !tbaa !163
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.aj, %bb.ak
  %i.df = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.co, %bb.aj ], [ %i.cr, %bb.ak ]
  %i.dg = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.dg, align 8, !tbaa !164
  store i8 0, ptr %i.df, align 1, !tbaa !166
  %i.dh = load ptr, ptr %12, align 8, !tbaa !163  ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !166
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171
  %i.dm = load ptr, ptr %13, align 8, !tbaa !163  ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.ce
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173
  %i.do = load i64, ptr %i.ce, align 8, !tbaa !166
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #41
  %i.dq = add i64 %i.bu, 2                        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1065)
  %i.dr = load i64, ptr %.phi.trans.insert, align 8, !tbaa !164, !noalias !1065 ; 3 uses
  %i.ds = icmp ugt i64 %i.dq, %i.dr
  br i1 %i.ds, label %bb.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.688, ptr noundef nonnull @.str.912, i64 noundef %i.dq, i64 noundef %i.dr) #42
          to label %.noexc180 unwind label %bb.aw

.noexc180:                                        ; preds = %bb.al
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
  %i.dt = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 9 uses
  store ptr %i.dt, ptr %14, align 8, !tbaa !160, !alias.scope !1065
  %i.du = load ptr, ptr %9, align 8, !tbaa !163, !noalias !1065
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dq ; 2 uses
  %i.dw = sub nuw i64 %i.dr, %i.dq                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41, !noalias !1065
  store i64 %i.dw, ptr %i.e, align 8, !tbaa !165, !noalias !1065
  %i.dx = icmp ugt i64 %i.dw, 15
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEESaIS9_EEC2ESt16initializer_listIS9_ERKSA_:_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEESaIS9_EE17_S_check_init_lenEmRKSA_.exit.i
  %.idx6 = shl nuw nsw i64 %2, 4                  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx6
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEESaIS9_EE11_M_allocateEm.exit.thread.i, label %.lr.ph.i.i.i.i.preheader.i

_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEESaIS9_EE11_M_allocateEm.exit.thread.i: ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEESaIS9_EE17_S_check_init_lenEmRKSA_.exit.i
  %i.b = getelementptr inbounds nuw i8, ptr null, i64 %.idx6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !618
  br label %.loopexit

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEESaIS9_EE17_S_check_init_lenEmRKSA_.exit.i
  %i.d = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx6) #43
          to label %.noexc3 unwind label %bb.d    ; 3 uses

.noexc3:                                          ; preds = %.lr.ph.i.i.i.i.preheader.i
  store ptr %i.d, ptr %0, align 8, !tbaa !619
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !618
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i, %.noexc3
  %.011.i.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.d, %.noexc3 ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.o, %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %1, %.noexc3 ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !209  ; 2 uses
  %i.i = load <2 x ptr>, ptr %.0810.i.i.i.i.i, align 8, !tbaa !208
  store <2 x ptr> %i.i, ptr %.011.i.i.i.i.i, align 8, !tbaa !208
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.a

bb.a:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %i.j, align 4, !tbaa !213
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.j, align 4, !tbaa !213
  br label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.n = atomicrmw volatile add ptr %i.j, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, %i.a
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2162

.loopexit:                                        ; preds = %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEESaIS9_EE11_M_allocateEm.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEESaIS9_EE11_M_allocateEm.exit.thread.i ], [ %i.p, %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.q, align 8, !tbaa !617
  ret void

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %0, align 8, !tbaa !619    ; 3 uses
  %.not.i.i4 = icmp eq ptr %i.s, null
  br i1 %.not.i.i4, label %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEESaIS9_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !618
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #44
  br label %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEESaIS9_EED2Ev.exit

_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEESaIS9_EED2Ev.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj2io16PROJStringParser7Private17buildProjectedCRSEiRKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs11GeodeticCRSEEEEii(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.dropbox::oxygen::nn.405") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(169) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %7 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 8 uses
  %i.l = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %i.m = alloca i8, align 1                       ; 3 uses
  %i.n = alloca i8, align 1                       ; 3 uses
  %i.o = alloca i8, align 1                       ; 3 uses
  %i.p = alloca i8, align 1                       ; 3 uses
  %i.q = alloca i8, align 1                       ; 3 uses
  %i.r = alloca i8, align 1                       ; 3 uses
  %i.s = alloca i8, align 1                       ; 3 uses
  %i.t = alloca i8, align 1                       ; 3 uses
  %i.u = alloca i64, align 8                      ; 5 uses
  %i.v = alloca i64, align 8                      ; 6 uses
  %i.w = alloca i64, align 8                      ; 6 uses
  %10 = alloca %"class.std::vector.785", align 8  ; 10 uses
  %11 = alloca %"class.std::vector.702", align 8  ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.dropbox::oxygen::nn.190", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %16 = alloca %"struct.osgeo::proj::io::Step::KeyValue", align 8 ; 7 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::allocator", align 1   ; 4 uses
  %19 = alloca %"struct.osgeo::proj::io::Step::KeyValue", align 8 ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::allocator", align 1   ; 4 uses
  %22 = alloca %"struct.osgeo::proj::io::Step::KeyValue", align 8 ; 7 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.osgeo::proj::common::UnitOfMeasure", align 8 ; 14 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %28 = alloca %"class.osgeo::proj::common::UnitOfMeasure", align 8 ; 7 uses
  %29 = alloca %"class.osgeo::proj::common::UnitOfMeasure", align 8 ; 7 uses
  %30 = alloca %"class.std::shared_ptr.410", align 16 ; 14 uses
  %31 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 8 uses
  %32 = alloca %"class.dropbox::oxygen::nn.409", align 16 ; 5 uses
  %33 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 10 uses
  %34 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %35 = alloca %"class.std::vector.457", align 8  ; 13 uses
  %36 = alloca %"class.std::vector.466", align 8  ; 13 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %40 = alloca %"class.osgeo::proj::common::Angle", align 8 ; 6 uses
  %41 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 10 uses
  %42 = alloca %"class.dropbox::oxygen::nn.462", align 16 ; 9 uses
  %43 = alloca %"class.osgeo::proj::common::Length", align 8 ; 6 uses
  %44 = alloca %"class.dropbox::oxygen::nn.471", align 16 ; 9 uses
  %45 = alloca %"class.osgeo::proj::common::Measure", align 8 ; 7 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %48 = alloca %"class.dropbox::oxygen::nn.409", align 16 ; 7 uses
  %49 = alloca %"class.std::vector.457", align 8  ; 18 uses
  %50 = alloca %"class.std::vector.466", align 8  ; 20 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %56 = alloca %"class.dropbox::oxygen::nn.462", align 16 ; 9 uses
  %57 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %58 = alloca %"class.dropbox::oxygen::nn.471", align 16 ; 9 uses
  %59 = alloca %"class.osgeo::proj::common::Measure", align 8 ; 7 uses
  %60 = alloca %"class.dropbox::oxygen::nn.471", align 16 ; 9 uses
  %61 = alloca %"class.osgeo::proj::common::Measure", align 8 ; 7 uses
  %62 = alloca %"class.dropbox::oxygen::nn.471", align 16 ; 9 uses
  %63 = alloca %"class.osgeo::proj::common::Measure", align 8 ; 7 uses
  %64 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %65 = alloca %"class.dropbox::oxygen::nn.409", align 16 ; 7 uses
  %66 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %67 = alloca %"class.std::shared_ptr.22", align 8 ; 20 uses
  %68 = alloca %"class.dropbox::oxygen::nn.449", align 8 ; 7 uses
  %69 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %70 = alloca %"class.dropbox::oxygen::nn.347", align 8 ; 7 uses
  %71 = alloca %"class.dropbox::oxygen::nn.383", align 8 ; 8 uses
  %72 = alloca %"class.dropbox::oxygen::nn.409", align 16 ; 7 uses
  %73 = alloca %"class.dropbox::oxygen::nn.306", align 8 ; 7 uses
  %74 = alloca %"class.std::vector.322", align 8  ; 10 uses
  %75 = alloca %"class.dropbox::oxygen::nn.298", align 8 ; 7 uses
  %76 = alloca %"class.dropbox::oxygen::nn.302", align 16 ; 11 uses
  %77 = alloca %"class.dropbox::oxygen::nn.302", align 16 ; 7 uses
  %78 = alloca %"class.dropbox::oxygen::nn.292", align 8 ; 7 uses
  %79 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %80 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %81 = alloca %"class.dropbox::oxygen::nn.292", align 8 ; 7 uses
  %82 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %83 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %84 = alloca %"class.dropbox::oxygen::nn.292", align 8 ; 7 uses
  %85 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %86 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %87 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 10 uses
  %88 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %89 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %90 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %91 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %92 = alloca %"class.dropbox::oxygen::nn.580", align 8 ; 8 uses
  %93 = alloca %"class.dropbox::oxygen::nn.409", align 16 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 6 uses
  %i.y = sext i32 %2 to i64
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !577
  %i.aa = getelementptr inbounds nuw [64 x i8], ptr %i.z, i64 %i.y ; 122 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  call void @_ZN5osgeo4proj9operation23getMappingsFromPROJNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.785") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
  %i.ab = load ptr, ptr %10, align 8, !tbaa !599  ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !599 ; 3 uses
  %i.ae = icmp eq ptr %i.ab, %i.ad
  br i1 %i.ae, label %.thread.a, label %bb.b

bb.b:                                             ; preds = %bb.a
  %94 = load ptr, ptr %i.ab, align 8, !tbaa !2198
  br label %.thread.a

.thread.a:                                        ; preds = %bb.a, %bb.b
  %95 = phi ptr [ %94, %bb.b ], [ null, %bb.a ]   ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ab to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp ugt i64 %i.ah, 8
  br i1 %i.ai, label %.lr.ph.a, label %bb.y

.lr.ph.a:                                         ; preds = %.thread.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 40 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 48 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.a, %.thread1569
  %.04351867 = phi i1 [ true, %.lr.ph.a ], [ %spec.select, %.thread1569 ]
  %.04381866 = phi i1 [ false, %.lr.ph.a ], [ %.34411575, %.thread1569 ] ; 8 uses
  %.04441865 = phi ptr [ %95, %.lr.ph.a ], [ %.34471574, %.thread1569 ] ; 8 uses
  %.sroa.01545.01864 = phi ptr [ %i.ab, %.lr.ph.a ], [ %i.em, %.thread1569 ] ; 2 uses
  %i.at = load ptr, ptr %.sroa.01545.01864, align 8, !tbaa !2198 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !2199 ; 4 uses
  %i.aw = icmp ne ptr %i.av, null                 ; 2 uses
  %spec.select = select i1 %i.aw, i1 %.04351867, i1 false ; 2 uses
  br i1 %i.aw, label %bb.d, label %.thread1569

bb.d:                                             ; preds = %bb.c
  %i.ax = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.av, i32 noundef 61) #45
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.e, label %_ZN5osgeo4proj2io16PROJStringParser7Private13hasParamValueIPKcEEbRNS1_4StepET_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.az = load ptr, ptr %i.aj, align 8, !tbaa !582 ; 2 uses
  %i.ba = load ptr, ptr %i.ak, align 8, !tbaa !582 ; 2 uses
  %.not36.i = icmp eq ptr %i.az, %i.ba
  br i1 %.not36.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.critedge.i
  %.sroa.027.037.i = phi ptr [ %i.bc, %.critedge.i ], [ %i.az, %bb.e ] ; 3 uses
  %i.bb = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.027.037.i, ptr noundef nonnull %i.av) #41
  br i1 %i.bb, label %.thread1576, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.027.037.i, i64 72 ; 2 uses
  %.not.i = icmp eq ptr %i.bc, %i.ba
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.critedge.i, %bb.e
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !582 ; 2 uses
  %i.be = load ptr, ptr %i.am, align 8, !tbaa !582 ; 2 uses
  %.not3338.i = icmp eq ptr %i.bd, %i.be
  br i1 %.not3338.i, label %_ZN5osgeo4proj2io16PROJStringParser7Private13hasParamValueIPKcEEbRNS1_4StepET_.exit.thread, label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %._crit_edge.i, %.critedge22.i
  %.sroa.023.039.i = phi ptr [ %i.bg, %.critedge22.i ], [ %i.bd, %._crit_edge.i ] ; 3 uses
  %i.bf = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.023.039.i, ptr noundef nonnull %i.av) #41
  br i1 %i.bf, label %.thread1576, label %.critedge22.i

.critedge22.i:                                    ; preds = %.lr.ph41.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.023.039.i, i64 72 ; 2 uses
  %.not33.i = icmp eq ptr %i.bg, %i.be
  br i1 %.not33.i, label %_ZN5osgeo4proj2io16PROJStringParser7Private13hasParamValueIPKcEEbRNS1_4StepET_.exit.thread, label %.lr.ph41.i

.thread1576:                                      ; preds = %.lr.ph.i, %.lr.ph41.i
  %.sroa.023.039.lcssa.sink.i = phi ptr [ %.sroa.023.039.i, %.lr.ph41.i ], [ %.sroa.027.037.i, %.lr.ph.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.023.039.lcssa.sink.i, i64 64
  store i8 1, ptr %i.bh, align 8, !tbaa !584
  br label %.loopexit1710

_ZN5osgeo4proj2io16PROJStringParser7Private13hasParamValueIPKcEEbRNS1_4StepET_.exit.thread: ; preds = %.critedge22.i, %._crit_edge.i, %bb.d
  %.pr = load ptr, ptr %i.au, align 8, !tbaa !2199 ; 5 uses
  %.not472 = icmp eq ptr %.pr, null
  br i1 %.not472, label %.thread1569, label %bb.f

bb.f:                                             ; preds = %_ZN5osgeo4proj2io16PROJStringParser7Private13hasParamValueIPKcEEbRNS1_4StepET_.exit.thread
  %i.bi = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.pr, i32 noundef 61) #45
  %.not473 = icmp eq ptr %i.bi, null
  br i1 %.not473, label %.thread1569, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  store ptr %i.an, ptr %12, align 8, !tbaa !160
  %i.bj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.pr) #41 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #41
  store i64 %i.bj, ptr %i.w, align 8, !tbaa !165
  %i.bk = icmp ugt i64 %i.bj, 15
  br i1 %i.bk, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.g
  %i.bl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.w, i64 noundef 0)
          to label %.noexc640 unwind label %bb.u  ; 2 uses

.noexc640:                                        ; preds = %.noexc.i
  store ptr %i.bl, ptr %12, align 8, !tbaa !163
  %i.bm = load i64, ptr %i.w, align 8, !tbaa !165
  store i64 %i.bm, ptr %i.an, align 8, !tbaa !166
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc640, %bb.g
  %i.bn = phi ptr [ %i.bl, %.noexc640 ], [ %i.an, %bb.g ] ; 2 uses
  switch i64 %i.bj, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.bo = load i8, ptr %.pr, align 1, !tbaa !166
  store i8 %i.bo, ptr %i.bn, align 1, !tbaa !166
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bn, ptr nonnull align 1 %.pr, i64 %i.bj, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i
  %i.bp = load i64, ptr %i.w, align 8, !tbaa !165 ; 2 uses
  store i64 %i.bp, ptr %i.ao, align 8, !tbaa !164
  %i.bq = load ptr, ptr %12, align 8, !tbaa !163
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bp
  store i8 0, ptr %i.br, align 1, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #41
  invoke void @_ZN5osgeo4proj8internal5splitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.702") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %12, i8 noundef signext 61)
          to label %bb.k unwind label %bb.v

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %12, align 8, !tbaa !163  ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.an
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.bu = load i64, ptr %i.an, align 8, !tbaa !166
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  %i.bw = load ptr, ptr %i.ap, align 8, !tbaa !664
  %i.bx = load ptr, ptr %11, align 8, !tbaa !665  ; 3 uses
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = icmp eq i64 %i.ca, 64
  br i1 %i.cb, label %bb.l, label %.thread1563

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.aq, ptr %13, align 8, !tbaa !160
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !163 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !164 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #41
  store i64 %i.ce, ptr %i.v, align 8, !tbaa !165
  %i.cf = icmp ugt i64 %i.ce, 15
  br i1 %i.cf, label %.noexc.i642, label %._crit_edge.i.i641

.noexc.i642:                                      ; preds = %bb.l
  %i.cg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.v, i64 noundef 0)
          to label %.noexc643 unwind label %bb.w  ; 2 uses

.noexc643:                                        ; preds = %.noexc.i642
  store ptr %i.cg, ptr %13, align 8, !tbaa !163
  %i.ch = load i64, ptr %i.v, align 8, !tbaa !165
  store i64 %i.ch, ptr %i.aq, align 8, !tbaa !166
  br label %._crit_edge.i.i641

._crit_edge.i.i641:                               ; preds = %.noexc643, %bb.l
  %i.ci = phi ptr [ %i.cg, %.noexc643 ], [ %i.aq, %bb.l ] ; 2 uses
  switch i64 %i.ce, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i641
  %i.cj = load i8, ptr %i.cc, align 1, !tbaa !166
  store i8 %i.cj, ptr %i.ci, align 1, !tbaa !166
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i641
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ci, ptr align 1 %i.cc, i64 %i.ce, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i641
  %i.ck = load i64, ptr %i.v, align 8, !tbaa !165 ; 2 uses
  store i64 %i.ck, ptr %i.ar, align 8, !tbaa !164
  %i.cl = load ptr, ptr %13, align 8, !tbaa !163
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ck
  store i8 0, ptr %i.cm, align 1, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #41
  %i.cn = load ptr, ptr %i.aj, align 8, !tbaa !582 ; 2 uses
  %i.co = load ptr, ptr %i.ak, align 8, !tbaa !582 ; 2 uses
  %.not41.i = icmp eq ptr %i.cn, %i.co
  br i1 %.not41.i, label %._crit_edge.i646, label %.lr.ph.i644

.lr.ph.i644:                                      ; preds = %bb.o, %bb.p
  %.sroa.025.042.i = phi ptr [ %i.cq, %bb.p ], [ %i.cn, %bb.o ] ; 3 uses
  %i.cp = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.025.042.i, ptr noundef nonnull align 8 dereferenceable(32) %13) #41
  br i1 %i.cp, label %.loopexit.sink.split.i648, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i644
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.025.042.i, i64 72 ; 2 uses
  %.not.i645 = icmp eq ptr %i.cq, %i.co
  br i1 %.not.i645, label %._crit_edge.i646, label %.lr.ph.i644

._crit_edge.i646:                                 ; preds = %bb.p, %bb.o
  %i.cr = load ptr, ptr %i.al, align 8, !tbaa !582 ; 2 uses
  %i.cs = load ptr, ptr %i.am, align 8, !tbaa !582 ; 2 uses
  %.not3843.i = icmp eq ptr %i.cr, %i.cs
  br i1 %.not3843.i, label %_ZN5osgeo4proj2io16PROJStringParser7Private13getParamValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKSA_RNS1_4StepET_.exit, label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %._crit_edge.i646, %bb.q
  %.sroa.021.044.i = phi ptr [ %i.cu, %bb.q ], [ %i.cr, %._crit_edge.i646 ] ; 3 uses
  %i.ct = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.021.044.i, ptr noundef nonnull align 8 dereferenceable(32) %13) #41
  br i1 %i.ct, label %.loopexit.sink.split.i648, label %bb.q

bb.q:                                             ; preds = %.lr.ph46.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.021.044.i, i64 72 ; 2 uses
  %.not38.i = icmp eq ptr %i.cu, %i.cs
  br i1 %.not38.i, label %_ZN5osgeo4proj2io16PROJStringParser7Private13getParamValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKSA_RNS1_4StepET_.exit, label %.lr.ph46.i

.loopexit.sink.split.i648:                        ; preds = %.lr.ph.i644, %.lr.ph46.i
  %.sroa.021.044.lcssa.sink56.i = phi ptr [ %.sroa.021.044.i, %.lr.ph46.i ], [ %.sroa.025.042.i, %.lr.ph.i644 ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.021.044.lcssa.sink56.i, i64 64
  store i8 1, ptr %i.cv, align 8, !tbaa !584
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.021.044.lcssa.sink56.i, i64 32
  br label %_ZN5osgeo4proj2io16PROJStringParser7Private13getParamValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKSA_RNS1_4StepET_.exit

_ZN5osgeo4proj2io16PROJStringParser7Private13getParamValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKSA_RNS1_4StepET_.exit: ; preds = %bb.q, %._crit_edge.i646, %.loopexit.sink.split.i648
  %.6.i647 = phi ptr [ @_ZL11emptyStringB5cxx11, %._crit_edge.i646 ], [ %i.cw, %.loopexit.sink.split.i648 ], [ @_ZL11emptyStringB5cxx11, %bb.q ] ; 2 uses
  %i.cx = load ptr, ptr %11, align 8, !tbaa !665  ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.cz = getelementptr inbounds nuw i8, ptr %.6.i647, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !164 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !164
  %i.dd = icmp eq i64 %i.da, %i.dc
  br i1 %i.dd, label %bb.r, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.r:                                             ; preds = %_ZN5osgeo4proj2io16PROJStringParser7Private13getParamValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKSA_RNS1_4StepET_.exit
  %i.de = icmp eq i64 %i.da, 0
  br i1 %i.de, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.df = load ptr, ptr %i.cy, align 8, !tbaa !163
  %i.dg = load ptr, ptr %.6.i647, align 8, !tbaa !163
  %bcmp.i = call i32 @bcmp(ptr %i.dg, ptr %i.df, i64 %i.da)
  %bcmp.i.fr = freeze i32 %bcmp.i
  %i.dh = icmp eq i32 %bcmp.i.fr, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.r, %bb.s
  %cond.fr15551557 = phi i1 [ true, %bb.r ], [ %i.dh, %bb.s ] ; 2 uses
  %i.di = load ptr, ptr %13, align 8, !tbaa !163  ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.aq
  br i1 %i.dj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i650, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %_ZN5osgeo4proj2io16PROJStringParser7Private13getParamValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKSA_RNS1_4StepET_.exit
  %i.dk = load ptr, ptr %13, align 8, !tbaa !163  ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.aq
  br i1 %i.dl, label %.thread1563, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.dm = load i64, ptr %i.aq, align 8, !tbaa !166
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #44
  br label %.thread1563

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i650: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  br i1 %cond.fr15551557, label %.split1565, label %.thread1563

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.do = load i64, ptr %i.aq, align 8, !tbaa !166
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dp) #44
  br i1 %cond.fr15551557, label %.split1565, label %.thread1563

.split1565:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i650, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649
  br label %.thread1563

.thread1563:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i650, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.split1565
  %i.dq = phi i1 [ true, %.split1565 ], [ %.04381866, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.04381866, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649 ], [ %.04381866, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i650 ], [ %.04381866, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649.thread ], [ %.04381866, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ] ; 2 uses
  %.not1647 = phi i1 [ false, %.split1565 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649 ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i650 ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649.thread ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ]
  %i.dr = phi ptr [ %i.at, %.split1565 ], [ %.04441865, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.04441865, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649 ], [ %.04441865, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i650 ], [ %.04441865, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649.thread ], [ %.04441865, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ] ; 2 uses
  %i.ds = load ptr, ptr %11, align 8, !tbaa !665  ; 3 uses
  %i.dt = load ptr, ptr %i.ap, align 8, !tbaa !664 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ds, %i.dt
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.thread1563, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dz, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ds, %.thread1563 ] ; 3 uses
  %i.du = load ptr, ptr %.05.i.i.i, align 8, !tbaa !163 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !166
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #44
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dz, %i.dt
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !124

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %11, align 8, !tbaa !665
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %.thread1563
  %i.ea = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ds, %.thread1563 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.eb = load ptr, ptr %i.as, align 8, !tbaa !696
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.ea to i64
  %i.ee = sub i64 %i.ec, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef %i.ee) #44
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  br i1 %.not1647, label %.thread1569, label %.loopexit1710

bb.u:                                             ; preds = %.noexc.i
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654

bb.v:                                             ; preds = %bb.j
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eh = load ptr, ptr %12, align 8, !tbaa !163  ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.an
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652: ; preds = %bb.v
  %i.ej = load i64, ptr %i.an, align 8, !tbaa !166
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652, %bb.u
  %.pn = phi { ptr, i32 } [ %i.ef, %bb.u ], [ %i.eg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652 ], [ %i.eg, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  br label %bb.x

bb.w:                                             ; preds = %.noexc.i642
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #41
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654
  %.pn475 = phi { ptr, i32 } [ %i.el, %bb.w ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  br label %bb.acm

.thread1569:                                      ; preds = %bb.c, %bb.f, %_ZN5osgeo4proj2io16PROJStringParser7Private13hasParamValueIPKcEEbRNS1_4StepET_.exit.thread, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %.34411575 = phi i1 [ %.04381866, %bb.c ], [ %i.dq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ], [ %.04381866, %_ZN5osgeo4proj2io16PROJStringParser7Private13hasParamValueIPKcEEbRNS1_4StepET_.exit.thread ], [ %.04381866, %bb.f ] ; 2 uses
  %.34471574 = phi ptr [ %.04441865, %bb.c ], [ %i.dr, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ], [ %.04441865, %_ZN5osgeo4proj2io16PROJStringParser7Private13hasParamValueIPKcEEbRNS1_4StepET_.exit.thread ], [ %.04441865, %bb.f ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.01545.01864, i64 8 ; 2 uses
  %.not1651 = icmp eq ptr %i.em, %i.ad
  br i1 %.not1651, label %.loopexit1710, label %bb.c

.loopexit1710:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %.thread1569, %.thread1576
  %.4448 = phi ptr [ %i.at, %.thread1576 ], [ %.34471574, %.thread1569 ], [ %i.dr, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ]
  %.4442 = phi i1 [ true, %.thread1576 ], [ %.34411575, %.thread1569 ], [ %i.dq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 2 uses
  %.not = xor i1 %spec.select, true
  %or.cond = select i1 %.not, i1 true, i1 %.4442
  %spec.select610 = select i1 %or.cond, ptr %.4448, ptr null
  br label %bb.y

bb.y:                                             ; preds = %.loopexit1710, %.thread.a
  %.6450 = phi ptr [ %spec.select610, %.loopexit1710 ], [ %95, %.thread.a ] ; 3 uses
  %.5443 = phi i1 [ %.4442, %.loopexit1710 ], [ false, %.thread.a ]
  %i.en = icmp eq ptr %.6450, null
  %or.cond8 = select i1 %i.en, i1 true, i1 %.5443
  br i1 %or.cond8, label %.thread2421, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.val633 = load ptr, ptr %3, align 8
  %i.eo = call fastcc noundef ptr @_ZN5osgeo4proj2ioL28selectSphericalOrEllipsoidalEPKNS0_9operation13MethodMappingERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs11GeodeticCRSEEEE(ptr noundef nonnull %.6450, ptr %.val633)
  br label %.thread2421

.thread2421:                                      ; preds = %bb.z, %bb.y
  %.7451 = phi ptr [ %.6450, %bb.y ], [ %i.eo, %bb.z ] ; 6 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 136
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #41
  invoke void @_ZN5osgeo4proj2io16PROJStringParser7Private18buildPrimeMeridianERNS1_4StepE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.190") align 8 %14, ptr noundef nonnull align 8 dereferenceable(169) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.aa)
          to label %bb.aa unwind label %bb.ak

bb.aa:                                            ; preds = %.thread2421
  %i.eq = load ptr, ptr %14, align 8, !tbaa !354
  %i.er = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj5datum13PrimeMeridian9longitudeEv(ptr noundef nonnull align 8 dereferenceable(64) %i.eq) #45
  %i.es = load ptr, ptr %3, align 8, !tbaa !440
  %i.et = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj3crs11GeodeticCRS13primeMeridianEv(ptr noundef nonnull align 8 dereferenceable(16) %i.es) #45
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !354
  %i.ev = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj5datum13PrimeMeridian9longitudeEv(ptr noundef nonnull align 8 dereferenceable(64) %i.eu) #45
  %i.ew = invoke noundef zeroext i1 @_ZNK5osgeo4proj6common7Measure15_isEquivalentToERKS2_NS0_4util11IComparable9CriterionEd(ptr noundef nonnull align 8 dereferenceable(24) %i.er, ptr noundef nonnull align 8 dereferenceable(24) %i.ev, i32 noundef 1, double noundef 1.000000e-10)
          to label %bb.ab unwind label %bb.al

bb.ab:                                            ; preds = %bb.aa
  %i.ex = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !209 ; 8 uses
  %.not.i.i.i655 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i655, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 4 uses
  %i.fa = load atomic i64, ptr %i.ez acquire, align 8 ; 2 uses
  %i.fb = icmp eq i64 %i.fa, 4294967297
  %i.fc = trunc i64 %i.fa to i32                  ; 2 uses
  br i1 %i.fb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.ez, align 8, !tbaa !211
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  store i32 0, ptr %i.fd, align 4, !tbaa !212
  %i.fe = load ptr, ptr %i.ey, align 8, !tbaa !156
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(16) %i.ey) #41, !inline_history !33
  %i.fh = load ptr, ptr %i.ey, align 8, !tbaa !156
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(16) %i.ey) #41, !inline_history !33
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEED2Ev.exit

bb.ae:                                            ; preds = %bb.ac
  %i.fk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i = icmp eq i8 %i.fk, 0
  br i1 %.not.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fl = add nsw i32 %i.fc, -1
  store i32 %i.fl, ptr %i.ez, align 8, !tbaa !213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.fm = atomicrmw volatile add ptr %i.ez, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i = phi i32 [ %i.fc, %bb.af ], [ %i.fm, %bb.ag ]
  %i.fn = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.fn, label %bb.ah, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEED2Ev.exit, !prof !214

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ey) #41
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEED2Ev.exit: ; preds = %bb.ab, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  br i1 %i.ew, label %.noexc.i658, label %bb.ai

bb.ai:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEED2Ev.exit
  %i.fo = call ptr @__cxa_allocate_exception(i64 40) #41 ; 4 uses
  invoke void @_ZN5osgeo4proj4util9ExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.fo, ptr noundef nonnull @.str.541)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %bb.ai
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj2io16ParsingExceptionE, i64 16), ptr %i.fo, align 8, !tbaa !156
  invoke void @__cxa_throw(ptr nonnull %i.fo, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr nonnull @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
          to label %bb.acp unwind label %bb.ao

bb.ak:                                            ; preds = %.thread2421
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %bb.aa
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #41
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.pn477 = phi { ptr, i32 } [ %i.fq, %bb.al ], [ %i.fp, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  br label %bb.acm

bb.an:                                            ; preds = %bb.ai
  %i.fr = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fo) #41
  br label %bb.acm

bb.ao:                                            ; preds = %bb.aj
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.acm

.noexc.i658:                                      ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #41
  %i.ft = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.ft, ptr %15, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #41
  store i64 24, ptr %i.u, align 8, !tbaa !165
  %i.fu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.u, i64 noundef 0)
          to label %.noexc659 unwind label %bb.au ; 2 uses

.noexc659:                                        ; preds = %.noexc.i658
  store ptr %i.fu, ptr %15, align 8, !tbaa !163
  %i.fv = load i64, ptr %i.u, align 8, !tbaa !165 ; 3 uses
  store i64 %i.fv, ptr %i.ft, align 8, !tbaa !166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.fu, ptr noundef nonnull align 1 dereferenceable(24) @.str.542, i64 24, i1 false)
  %i.fw = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !164
  %i.fx = load ptr, ptr %15, align 8, !tbaa !163
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fv
  store i8 0, ptr %i.fy, align 1, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #41
  %i.fz = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 10 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !164 ; 2 uses
  %i.gb = icmp eq i64 %i.ga, 5
  br i1 %i.gb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1581

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.noexc659
  %i.gc = load ptr, ptr %i.aa, align 8, !tbaa !163 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 1
  %i.ge = xor i32 %i.gd, 1919249780
  %i.gf = getelementptr i8, ptr %i.gc, i64 4
  %i.gg = load i8, ptr %i.gf, align 1
  %i.gh = zext i8 %i.gg to i32
  %i.gi = xor i32 %i.gh, 99
  %i.gj = or i32 %i.ge, %i.gi
  %i.gk = icmp ne i32 %i.gj, 0
  %i.gl = zext i1 %i.gk to i32
  %i.gm = icmp eq i32 %i.gl, 0
  br i1 %i.gm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %thread-pre-split1584

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !582 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !582 ; 2 uses
  %.not43.i = icmp eq ptr %i.go, %i.gq
  br i1 %.not43.i, label %._crit_edge.i664, label %.lr.ph.i662

.lr.ph.i662:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.ap
  %.sroa.027.044.i = phi ptr [ %i.gs, %bb.ap ], [ %i.go, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 3 uses
  %i.gr = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.027.044.i, ptr noundef nonnull @.str.391) #41
  br i1 %i.gr, label %.loopexit.sink.split.i666, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i662
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.027.044.i, i64 72 ; 2 uses
  %.not.i663 = icmp eq ptr %i.gs, %i.gq
  br i1 %.not.i663, label %._crit_edge.i664, label %.lr.ph.i662

._crit_edge.i664:                                 ; preds = %bb.ap, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.gt = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !582 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !582 ; 2 uses
  %.not4045.i = icmp eq ptr %i.gu, %i.gw
  br i1 %.not4045.i, label %_ZN5osgeo4proj2io16PROJStringParser7Private13getParamValueIPKcEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_4StepET_.exit, label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %._crit_edge.i664, %bb.aq
  %.sroa.023.046.i = phi ptr [ %i.gy, %bb.aq ], [ %i.gu, %._crit_edge.i664 ] ; 3 uses
  %i.gx = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.023.046.i, ptr noundef nonnull @.str.391) #41
  br i1 %i.gx, label %.loopexit.sink.split.i666, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph48.i
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.023.046.i, i64 72 ; 2 uses
  %.not40.i = icmp eq ptr %i.gy, %i.gw
  br i1 %.not40.i, label %_ZN5osgeo4proj2io16PROJStringParser7Private13getParamValueIPKcEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_4StepET_.exit, label %.lr.ph48.i

.loopexit.sink.split.i666:                        ; preds = %.lr.ph.i662, %.lr.ph48.i
  %.sroa.023.046.lcssa.sink58.i = phi ptr [ %.sroa.023.046.i, %.lr.ph48.i ], [ %.sroa.027.044.i, %.lr.ph.i662 ] ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.023.046.lcssa.sink58.i, i64 64
  store i8 1, ptr %i.gz, align 8, !tbaa !584
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.023.046.lcssa.sink58.i, i64 32
  br label %_ZN5osgeo4proj2io16PROJStringParser7Private13getParamValueIPKcEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_4StepET_.exit

_ZN5osgeo4proj2io16PROJStringParser7Private13getParamValueIPKcEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_4StepET_.exit: ; preds = %bb.aq, %._crit_edge.i664, %.loopexit.sink.split.i666
  %.6.i665 = phi ptr [ @_ZL11emptyStringB5cxx11, %._crit_edge.i664 ], [ %i.ha, %.loopexit.sink.split.i666 ], [ @_ZL11emptyStringB5cxx11, %bb.aq ] ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.6.i665, i64 8
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !164
  %i.hd = icmp eq i64 %i.hc, 3
  br i1 %i.hd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit668, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit668.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit668: ; preds = %_ZN5osgeo4proj2io16PROJStringParser7Private13getParamValueIPKcEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_4StepET_.exit
  %i.he = load ptr, ptr %.6.i665, align 8, !tbaa !163 ; 2 uses
  %i.hf = load i16, ptr %i.he, align 1
  %i.hg = xor i16 %i.hf, 29559
  %i.hh = getelementptr i8, ptr %i.he, i64 2
end_hunk_1
