Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/io?download=true
inline.NumInlined: 17817
inline.NumDeleted: 4455
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 47
loop-unroll.NumUnrolledNotLatch: 4
begin_hunk_0_@_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata10IdentifierEEED2Ev:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41, !inline_history !7
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !156
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41, !inline_history !7
  br label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata10IdentifierELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata10IdentifierELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !214

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41
  br label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata10IdentifierELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj8metadata10IdentifierELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

; Function Attrs: mustprogress noreturn uwtable
define internal fastcc void @_ZN5osgeo4proj2ioL22ThrowNotEnoughChildrenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #20 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = tail call ptr @__cxa_allocate_exception(i64 40) #41 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  invoke void @_ZN5osgeo4proj8internal6concatEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull @.str.33, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.34)
          to label %bb.b unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5osgeo4proj4util9ExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj2io16ParsingExceptionE, i64 16), ptr %i.a, align 8, !tbaa !156
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr nonnull @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
          to label %bb.g unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.c ], [ true, %bb.b ]  ; 2 uses
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !163    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.g = load i64, ptr %i.e, align 8, !tbaa !166
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  br i1 %.0, label %bb.e, label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  br i1 %.0, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.a) #41
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn8 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.e ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.g:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj2io9WKTParser7Private15buildPropertiesERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEEbb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.osgeo::proj::util::BaseObjectNNPtr", align 8 ; 10 uses
  %5 = alloca %"class.std::shared_ptr.118", align 8 ; 12 uses
  %6 = alloca %"struct.osgeo::proj::util::BaseObjectNNPtr", align 8 ; 8 uses
  %7 = alloca %"class.std::shared_ptr.118", align 8 ; 8 uses
  %8 = alloca %"struct.osgeo::proj::util::BaseObjectNNPtr", align 8 ; 8 uses
  %9 = alloca %"class.std::shared_ptr.118", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %10 = alloca %"class.std::unique_ptr.89", align 8 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.dropbox::oxygen::nn.97", align 8 ; 14 uses
  %14 = alloca %"class.std::shared_ptr.69", align 8 ; 7 uses
  %15 = alloca %"struct.osgeo::proj::util::BaseObjectNNPtr", align 8 ; 8 uses
  %16 = alloca %"class.dropbox::oxygen::nn.88", align 8 ; 7 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 39 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %21 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 9 uses
  %22 = alloca %"struct.osgeo::proj::util::BaseObjectNNPtr", align 16 ; 7 uses
  %23 = alloca %"class.dropbox::oxygen::nn.88", align 16 ; 7 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.dropbox::oxygen::nn.121", align 8 ; 7 uses
  %26 = alloca %"class.dropbox::oxygen::nn.125", align 8 ; 7 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %31 = alloca %"struct.osgeo::proj::util::BaseObjectNNPtr", align 16 ; 7 uses
  %32 = alloca %"class.dropbox::oxygen::nn.88", align 16 ; 7 uses
  %33 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %35 = alloca %"class.dropbox::oxygen::nn.97", align 8 ; 10 uses
  %36 = alloca %"class.std::shared_ptr.134", align 8 ; 7 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %38 = alloca %"struct.osgeo::proj::util::BaseObjectNNPtr", align 8 ; 8 uses
  %39 = alloca %"class.dropbox::oxygen::nn.137", align 8 ; 7 uses
  %40 = alloca %"class.std::shared_ptr.134", align 8 ; 8 uses
  %41 = alloca %"class.dropbox::oxygen::nn.137", align 8 ; 7 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !280
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !281
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ugt i64 %i.j, 8184
  br i1 %i.k, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @__cxa_allocate_exception(i64 40) #41 ; 3 uses
  invoke void @_ZN5osgeo4proj2io16ParsingExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull @.str.35)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr nonnull @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.l) #41
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  tail call void @llvm.experimental.noalias.scope.decl(metadata !935)
  %i.n = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #43, !noalias !935 ; 4 uses
  invoke void @_ZN5osgeo4proj4util11PropertyMapC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %_ZSt11make_uniqueIN5osgeo4proj4util11PropertyMapEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.f, !noalias !935

common.resume:                                    ; preds = %bb.d, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.m, %bb.d ], [ %.pn121.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328 ], [ %i.bs, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 8) #44, !noalias !935
  br label %common.resume

_ZSt11make_uniqueIN5osgeo4proj4util11PropertyMapEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.e
  store ptr %i.n, ptr %10, align 8, !tbaa !283, !alias.scope !935
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !280  ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !284
  %.not.i.i = icmp eq ptr %i.p, %i.r
  %i.s = ptrtoint ptr %i.n to i64                 ; 2 uses
  br i1 %.not.i.i, label %bb.g, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit.thread

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit.thread: ; preds = %_ZSt11make_uniqueIN5osgeo4proj4util11PropertyMapEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store i64 %i.s, ptr %i.p, align 8, !tbaa !283
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.t, ptr %i.e, align 8, !tbaa !280
  br label %_ZNSt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS3_EED2Ev.exit

bb.g:                                             ; preds = %_ZSt11make_uniqueIN5osgeo4proj4util11PropertyMapEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !281  ; 10 uses
  %i.v = ptrtoint ptr %i.p to i64                 ; 3 uses
  %i.w = ptrtoint ptr %i.u to i64                 ; 4 uses
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  %i.y = icmp eq i64 %i.x, 9223372036854775800
  br i1 %i.y, label %bb.h, label %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.692) #42
          to label %.noexc331 unwind label %bb.k

.noexc331:                                        ; preds = %bb.h
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.g
  %i.z = ashr exact i64 %i.x, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.aa = add nsw i64 %.sroa.speculated.i.i, %i.z ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 1152921504606846975)
  %i.ad = select i1 %i.ab, i64 1152921504606846975, i64 %i.ac ; 3 uses
  %.not.i.i329 = icmp ne i64 %i.ad, 0
  tail call void @llvm.assume(i1 %.not.i.i329)
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #43
          to label %.noexc332 unwind label %bb.k  ; 10 uses

.noexc332:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.x
  store i64 %i.s, ptr %i.ag, align 8, !tbaa !283
  %.not10.i.i.i.i = icmp eq ptr %i.u, %i.p
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc332
  %i.ah = add i64 %i.v, -8
  %i.ai = sub i64 %i.ah, %i.w                     ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ai, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader537, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %43 = add i64 %i.v, -8
  %44 = sub i64 %43, %i.w
  %i.al = and i64 %44, -8
  %i.am = add i64 %i.al, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.af, i64 %i.am
  %scevgep528 = getelementptr i8, ptr %i.u, i64 %i.am
  %bound0 = icmp ult ptr %i.af, %scevgep528
  %bound1 = icmp ult ptr %i.u, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader537, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ak, 4611686018427387900     ; 3 uses
  %i.an = shl i64 %n.vec, 3                       ; 2 uses
  %i.ao = getelementptr i8, ptr %i.af, i64 %i.an  ; 2 uses
  %i.ap = getelementptr i8, ptr %i.u, i64 %i.an
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.aq ; 2 uses
  %next.gep529 = getelementptr i8, ptr %i.u, i64 %i.aq ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !937)
  %i.ar = getelementptr i8, ptr %next.gep529, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep529, align 8, !tbaa !283, !alias.scope !938, !noalias !936
  %wide.load530 = load <2 x i64>, ptr %i.ar, align 8, !tbaa !283, !alias.scope !938, !noalias !936
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !283, !alias.scope !939, !noalias !938
  store <2 x i64> %wide.load530, ptr %i.as, align 8, !tbaa !283, !alias.scope !939, !noalias !938
  %i.at = getelementptr i8, ptr %next.gep529, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep529, align 8, !tbaa !283, !alias.scope !938, !noalias !936
  store <2 x ptr> splat (ptr null), ptr %i.at, align 8, !tbaa !283, !alias.scope !938, !noalias !936
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !923

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i.preheader537

.lr.ph.i.i.i.i.preheader537:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i.preheader ], [ %i.ap, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader537, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader537 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader537 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !937)
  %i.av = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !283, !alias.scope !937, !noalias !936
  store i64 %i.av, ptr %.012.i.i.i.i, align 8, !tbaa !283, !alias.scope !936, !noalias !937
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !283, !alias.scope !937, !noalias !936
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i330 = icmp eq ptr %i.aw, %i.p
  br i1 %.not.i.i.i.i330, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !924

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc332
  %.0.lcssa.i.i.i.i = phi ptr [ %i.af, %.noexc332 ], [ %i.ao, %middle.block ], [ %i.ax, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.u, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  %i.az = load ptr, ptr %i.q, align 8, !tbaa !284
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.bb) #44
  br label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, %bb.i
  store ptr %i.af, ptr %i.d, align 8, !tbaa !281
  store ptr %i.ay, ptr %i.e, align 8, !tbaa !280
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ad
  store ptr %i.bc, ptr %i.q, align 8, !tbaa !284
  br label %_ZNSt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit.thread
  %i.bd = phi ptr [ %i.p, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit.thread ], [ %.0.lcssa.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !283 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.bf, ptr %11, align 8, !tbaa !160
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i64 0, ptr %i.bg, align 8, !tbaa !164
  store i8 0, ptr %i.bf, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.bh, ptr %12, align 8, !tbaa !160
  %i.bi = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 0, ptr %i.bi, align 8, !tbaa !164
  store i8 0, ptr %i.bh, align 8, !tbaa !166
  %i.bj = load ptr, ptr %1, align 8, !tbaa !245
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !247 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  invoke void @_ZN5osgeo4proj4util17ArrayOfBaseObject6createEv(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.97") align 8 %13)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %_ZNSt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS3_EED2Ev.exit
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !249 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 40 ; 5 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !249 ; 2 uses
  %.not362373 = icmp eq ptr %i.bm, %i.bo
  br i1 %.not362373, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %bb.am, %bb.j
  br i1 %3, label %bb.an, label %bb.ea

bb.k:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i, %bb.h
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  br label %common.resume

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS3_EED2Ev.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.iw

bb.m:                                             ; preds = %.lr.ph, %bb.am
  %.sroa.0340.0374 = phi ptr [ %i.bm, %.lr.ph ], [ %i.dv, %bb.am ] ; 3 uses
  %i.bu = load ptr, ptr %.sroa.0340.0374, align 8, !tbaa !245
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !247 ; 2 uses
  %i.bw = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants2IDB5cxx11E) #41
  br i1 %i.bw, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants9AUTHORITYB5cxx11E) #41
  br i1 %i.bx, label %bb.o, label %bb.am

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #41
  invoke void @_ZN5osgeo4proj2io9WKTParser7Private7buildIdERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEESE_bb(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.69") align 8 %14, ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0340.0374, i1 noundef zeroext true, i1 noundef zeroext %2)
          to label %bb.p unwind label %bb.ac

bb.p:                                             ; preds = %bb.o
  %i.by = load ptr, ptr %14, align 8, !tbaa !287  ; 4 uses
  %.not368 = icmp eq ptr %i.by, null
  %.pre387 = load ptr, ptr %i.bq, align 8, !tbaa !209 ; 5 uses
  br i1 %.not368, label %bb.ae, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = load ptr, ptr %13, align 8, !tbaa !290
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #41
  store ptr %i.by, ptr %16, align 8, !tbaa !287
  store ptr %.pre387, ptr %i.bp, align 8, !tbaa !209
  %.not.i.i.i.i = icmp eq ptr %.pre387, null
  br i1 %.not.i.i.i.i, label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_8metadata10IdentifierEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre387, i64 8 ; 3 uses
  %i.cb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i.i = icmp eq i8 %i.cb, 0
  br i1 %.not.i.i.i.i.i, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata10IdentifierEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata10IdentifierEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.thread506

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata10IdentifierEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.thread506: ; preds = %bb.r
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !213
  %i.cd = add nsw i32 %i.cc, 1
  store i32 %i.cd, ptr %i.ca, align 4, !tbaa !213
  br label %bb.s

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata10IdentifierEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit: ; preds = %bb.r
  %i.ce = atomicrmw volatile add ptr %i.ca, i32 1 acq_rel, align 4 ; 0 uses
  %.pr344.pre = load ptr, ptr %i.bp, align 8, !tbaa !209 ; 2 uses
  %.pre = load ptr, ptr %16, align 8, !tbaa !287  ; 2 uses
  %.not.i.i.i.i.i127 = icmp eq ptr %.pr344.pre, null
  br i1 %.not.i.i.i.i.i127, label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_8metadata10IdentifierEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit, label %bb.s

bb.s:                                             ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata10IdentifierEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.thread506, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata10IdentifierEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit
  %.pr344509 = phi ptr [ %.pre387, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata10IdentifierEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.thread506 ], [ %.pr344.pre, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata10IdentifierEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit ] ; 3 uses
  %i.cf = phi ptr [ %i.by, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata10IdentifierEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.thread506 ], [ %.pre, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata10IdentifierEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.pr344509, i64 8 ; 3 uses
  %i.ch = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ch, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !213
  %i.cj = add nsw i32 %i.ci, 1
  store i32 %i.cj, ptr %i.cg, align 4, !tbaa !213
  br label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_8metadata10IdentifierEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit

bb.u:                                             ; preds = %bb.s
  %i.ck = atomicrmw volatile add ptr %i.cg, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_8metadata10IdentifierEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit

_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_8metadata10IdentifierEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit: ; preds = %bb.q, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata10IdentifierEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit, %bb.t, %bb.u
  %i.cl = phi ptr [ %i.cf, %bb.u ], [ %.pre, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata10IdentifierEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit ], [ %i.cf, %bb.t ], [ %i.by, %bb.q ]
  %i.cm = phi ptr [ %.pr344509, %bb.u ], [ null, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata10IdentifierEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit ], [ %.pr344509, %bb.t ], [ null, %bb.q ]
  store ptr %i.cl, ptr %15, align 8, !tbaa !293
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb:bb.a
  %i.cz = add i64 %i.cy, %i.cv                    ; 2 uses
  %i.da = icmp sgt i64 %i.cz, 0
  br i1 %i.da, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt14_Bit_referenceaSEb.exit53, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66
  %.024.i.i.i.i.i62 = phi i64 [ %i.dq, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %i.cz, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 2 uses
  %.sroa.07.023.i.i.i.i.i63 = phi ptr [ %.sroa.07.1.i.i.i.i.i72, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %.sroa.082.0, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 4 uses
  %.sroa.59.022.i.i.i.i.i64 = phi i32 [ %.sroa.59.1.i.i.i.i.i70, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %.sroa.683.0, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 3 uses
  %.sroa.516.021.i.i.i.i.i = phi i32 [ %spec.select19.i.i.i.i.i69, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %2, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 3 uses
  %.sroa.013.020.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i68, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ], [ %1, %_ZNSt14_Bit_referenceaSEb.exit53 ] ; 2 uses
  %i.db = zext nneg i32 %.sroa.516.021.i.i.i.i.i to i64
  %i.dc = shl nuw i64 1, %i.db
  %i.dd = zext nneg i32 %.sroa.59.022.i.i.i.i.i64 to i64
  %i.de = shl nuw i64 1, %i.dd                    ; 2 uses
  %i.df = load i64, ptr %.sroa.013.020.i.i.i.i.i, align 8, !tbaa !165
  %i.dg = and i64 %i.df, %i.dc
  %.not.i.i.i.i.i.i65 = icmp eq i64 %i.dg, 0
  br i1 %.not.i.i.i.i.i.i65, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dh = load i64, ptr %.sroa.07.023.i.i.i.i.i63, align 8, !tbaa !165
  %i.di = or i64 %i.dh, %i.de
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dj = xor i64 %i.de, -1
  %i.dk = load i64, ptr %.sroa.07.023.i.i.i.i.i63, align 8, !tbaa !165
  %i.dl = and i64 %i.dk, %i.dj
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66:    ; preds = %bb.s, %bb.r
  %storemerge.i.i.i.i.i67 = phi i64 [ %i.di, %bb.r ], [ %i.dl, %bb.s ]
  store i64 %storemerge.i.i.i.i.i67, ptr %.sroa.07.023.i.i.i.i.i63, align 8, !tbaa !165
  %i.dm = add i32 %.sroa.516.021.i.i.i.i.i, 1
  %i.dn = icmp eq i32 %.sroa.516.021.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i = select i1 %i.dn, i64 8, i64 0
  %spec.select.i.i.i.i.i68 = getelementptr inbounds nuw i8, ptr %.sroa.013.020.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i
  %spec.select19.i.i.i.i.i69 = select i1 %i.dn, i32 0, i32 %i.dm
  %i.do = add i32 %.sroa.59.022.i.i.i.i.i64, 1
  %i.dp = icmp eq i32 %.sroa.59.022.i.i.i.i.i64, 63 ; 2 uses
  %.sroa.59.1.i.i.i.i.i70 = select i1 %i.dp, i32 0, i32 %i.do ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i71 = select i1 %i.dp, i64 8, i64 0
  %.sroa.07.1.i.i.i.i.i72 = getelementptr inbounds nuw i8, ptr %.sroa.07.023.i.i.i.i.i63, i64 %.sroa.07.1.idx.i.i.i.i.i71 ; 2 uses
  %i.dq = add nsw i64 %.024.i.i.i.i.i62, -1
  %i.dr = icmp sgt i64 %.024.i.i.i.i.i62, 1
  br i1 %i.dr, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !142

_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit:  ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66, %_ZNSt14_Bit_referenceaSEb.exit53
  %.sroa.59.0.lcssa.i.i.i.i.i58 = phi i32 [ %.sroa.683.0, %_ZNSt14_Bit_referenceaSEb.exit53 ], [ %.sroa.59.1.i.i.i.i.i70, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ]
  %.sroa.07.0.lcssa.i.i.i.i.i59 = phi ptr [ %.sroa.082.0, %_ZNSt14_Bit_referenceaSEb.exit53 ], [ %.sroa.07.1.i.i.i.i.i72, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ]
  %.not.i73 = icmp eq ptr %i.bj, null
  br i1 %.not.i73, label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.ds = load ptr, ptr %i.c, align 8, !tbaa !232 ; 2 uses
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = sub i64 %i.dt, %i.bl                    ; 2 uses
  %i.dv = ashr exact i64 %i.du, 3
  %i.dw = sub nsw i64 0, %i.dv
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.dw
  tail call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.du) #44
  br label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit

_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit: ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, %bb.t
  %i.dy = lshr i64 %i.bf, 6
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.dy
  store ptr %i.dz, ptr %i.c, align 8, !tbaa !232
  store ptr %i.bi, ptr %0, align 8
  %.sroa.587.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.587.0..sroa_idx88, align 8
  store ptr %.sroa.07.0.lcssa.i.i.i.i.i59, ptr %i.a, align 8
  store i32 %.sroa.59.0.lcssa.i.i.i.i.i58, ptr %i.e, align 8
  br label %_ZNSt13_Bit_iteratorppEv.exit

_ZNSt13_Bit_iteratorppEv.exit:                    ; preds = %bb.g, %_ZNSt14_Bit_referenceaSEb.exit, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE17_M_realloc_insertIJRKS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !202  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !203    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.692) #42
  unreachable

_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #43 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !209  ; 2 uses
  %i.t = load <2 x ptr>, ptr %2, align 8, !tbaa !208
  store <2 x ptr> %i.t, ptr %i.q, align 8, !tbaa !208
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEC2ERKS8_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.u, align 4, !tbaa !213
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !213
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEC2ERKS8_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEC2ERKS8_.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEC2ERKS8_.exit: ; preds = %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEC2ERKS8_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.p, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEC2ERKS8_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEC2ERKS8_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2581)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2582)
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aa = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !208, !alias.scope !2582, !noalias !2581
  store ptr null, ptr %i.z, align 8, !tbaa !209, !alias.scope !2582, !noalias !2581
  store <2 x ptr> %i.aa, ptr %.012.i.i.i, align 8, !tbaa !208, !alias.scope !2581, !noalias !2582
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !309, !alias.scope !2582, !noalias !2581
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit, label %.lr.ph.i.i.i, !llvm.loop !2577

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit: ; preds = %.lr.ph.i.i.i, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEC2ERKS8_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEC2ERKS8_.exit ], [ %i.ac, %.lr.ph.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ah, %.lr.ph.i.i.i17 ], [ %i.ad, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2583)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2584)
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.af = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !208, !alias.scope !2584, !noalias !2583
  store ptr null, ptr %i.ae, align 8, !tbaa !209, !alias.scope !2584, !noalias !2583
  store <2 x ptr> %i.af, ptr %.012.i.i.i18, align 8, !tbaa !208, !alias.scope !2583, !noalias !2584
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !309, !alias.scope !2584, !noalias !2583
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !2577

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ad, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit ], [ %i.ah, %.lr.ph.i.i.i17 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE13_M_deallocateEPS9_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !233
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #44
  br label %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE13_M_deallocateEPS9_m.exit

_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE13_M_deallocateEPS9_m.exit: ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj6common13UnitOfMeasureEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit22, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !203
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !202
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !233
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE17_M_realloc_insertIJSB_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !252  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !251    ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.692) #42
  unreachable

_ZNKSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #43 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !245
  store i64 %i.r, ptr %i.q, align 8, !tbaa !245
  store ptr null, ptr %2, align 8, !tbaa !245
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE12_M_check_lenEmPKc.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader61, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %3 = add i64 %i.m, -8
  %4 = sub i64 %3, %i.e
  %i.w = and i64 %4, -8
  %i.x = add i64 %i.w, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.x
  %scevgep35 = getelementptr i8, ptr %i.c, i64 %i.x
  %bound0 = icmp ult ptr %i.p, %scevgep35
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader61, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.p, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ab ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.c, i64 %i.ab ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2602)
  %i.ac = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !tbaa !245, !alias.scope !2603, !noalias !2601
  %wide.load37 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !245, !alias.scope !2603, !noalias !2601
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !245, !alias.scope !2604, !noalias !2603
  store <2 x i64> %wide.load37, ptr %i.ad, align 8, !tbaa !245, !alias.scope !2604, !noalias !2603
  %i.ae = getelementptr i8, ptr %next.gep36, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep36, align 8, !tbaa !245, !alias.scope !2603, !noalias !2601
  store <2 x ptr> splat (ptr null), ptr %i.ae, align 8, !tbaa !245, !alias.scope !2603, !noalias !2601
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !2591

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit, label %.lr.ph.i.i.i.preheader61

.lr.ph.i.i.i.preheader61:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader61, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2602)
  %i.ag = load i64, ptr %.0911.i.i.i, align 8, !tbaa !245, !alias.scope !2602, !noalias !2601
  store i64 %i.ag, ptr %.012.i.i.i, align 8, !tbaa !245, !alias.scope !2601, !noalias !2602
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !245, !alias.scope !2602, !noalias !2601
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit, label %.lr.ph.i.i.i, !llvm.loop !2592

_ZNSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE12_M_check_lenEmPKc.exit ], [ %i.z, %middle.block ], [ %i.ai, %.lr.ph.i.i.i ] ; 2 uses
  %i.aj = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit
  %i.ak = add i64 %i.d, -8
  %i.al = sub i64 %i.ak, %i.m                     ; 2 uses
  %i.am = lshr i64 %i.al, 3
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check46 = icmp ult i64 %i.al, 152
  br i1 %min.iters.check46, label %.lr.ph.i.i.i17.preheader60, label %vector.memcheck39

vector.memcheck39:                                ; preds = %.lr.ph.i.i.i17.preheader
  %5 = add i64 %i.d, -8
  %6 = sub i64 %5, %i.m
  %i.ao = and i64 %6, -8                          ; 2 uses
  %i.ap = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.ao
  %scevgep40 = getelementptr i8, ptr %i.ap, i64 16
  %i.aq = getelementptr i8, ptr %1, i64 %i.ao
  %scevgep41 = getelementptr i8, ptr %i.aq, i64 8
  %bound042 = icmp ult ptr %i.aj, %scevgep41
  %bound143 = icmp ult ptr %1, %scevgep40
  %found.conflict44 = and i1 %bound042, %bound143
  br i1 %found.conflict44, label %.lr.ph.i.i.i17.preheader60, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec48 = and i64 %i.an, 4611686018427387900   ; 3 uses
  %i.ar = shl i64 %n.vec48, 3                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.aj, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next55, %vector.body49 ] ; 2 uses
  %i.au = shl i64 %index50, 3                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.aj, i64 %i.au ; 2 uses
  %next.gep52 = getelementptr i8, ptr %1, i64 %i.au ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2606)
  %i.av = getelementptr i8, ptr %next.gep52, i64 16
  %wide.load53 = load <2 x i64>, ptr %next.gep52, align 8, !tbaa !245, !alias.scope !2607, !noalias !2605
  %wide.load54 = load <2 x i64>, ptr %i.av, align 8, !tbaa !245, !alias.scope !2607, !noalias !2605
  %i.aw = getelementptr i8, ptr %next.gep51, i64 16
  store <2 x i64> %wide.load53, ptr %next.gep51, align 8, !tbaa !245, !alias.scope !2608, !noalias !2607
  store <2 x i64> %wide.load54, ptr %i.aw, align 8, !tbaa !245, !alias.scope !2608, !noalias !2607
  %i.ax = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep52, align 8, !tbaa !245, !alias.scope !2607, !noalias !2605
  store <2 x ptr> splat (ptr null), ptr %i.ax, align 8, !tbaa !245, !alias.scope !2607, !noalias !2605
  %index.next55 = add nuw i64 %index50, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next55, %n.vec48
  br i1 %i.ay, label %middle.block56, label %vector.body49, !llvm.loop !2599

middle.block56:                                   ; preds = %vector.body49
  %cmp.n57 = icmp eq i64 %i.an, %n.vec48
  br i1 %cmp.n57, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22, label %.lr.ph.i.i.i17.preheader60

.lr.ph.i.i.i17.preheader60:                       ; preds = %vector.memcheck39, %.lr.ph.i.i.i17.preheader, %middle.block56
  %.012.i.i.i18.ph = phi ptr [ %i.aj, %vector.memcheck39 ], [ %i.aj, %.lr.ph.i.i.i17.preheader ], [ %i.as, %middle.block56 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck39 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.at, %middle.block56 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader60, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bb, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader60 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ba, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader60 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2606)
  %i.az = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !245, !alias.scope !2606, !noalias !2605
  store i64 %i.az, ptr %.012.i.i.i18, align 8, !tbaa !245, !alias.scope !2605, !noalias !2606
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !245, !alias.scope !2606, !noalias !2605
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !2600

_ZNSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block56, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.aj, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit ], [ %i.as, %middle.block56 ], [ %i.bb, %.lr.ph.i.i.i17 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE13_M_deallocateEPSB_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !254
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #44
  br label %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE13_M_deallocateEPSB_m.exit

_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE13_M_deallocateEPSB_m.exit: ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10unique_ptrIN5osgeo4proj2io7WKTNodeESt14default_deleteIS7_EEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !251
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !252
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !254
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5osgeo4proj2io9WKTParser7PrivateD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !281  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !280  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.f, %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !283 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN5osgeo4proj4util11PropertyMapEEclEPS3_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN5osgeo4proj4util11PropertyMapEEclEPS3_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #41
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 8) #44
  br label %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN5osgeo4proj4util11PropertyMapEEclEPS3_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2609

_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !281
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.g = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !284
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #44
  br label %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !209  ; 8 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs13GeographicCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.o, align 8, !tbaa !211
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !212
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !156
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #41, !inline_history !56
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !156
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #41, !inline_history !56
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs13GeographicCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i1 = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.r, %bb.f ], [ %i.ab, %bb.g ]
  %i.ac = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ac, label %bb.h, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs13GeographicCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !214

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #41
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs13GeographicCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj3crs13GeographicCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5osgeo4proj4util11PropertyMapESt14default_deleteIS4_EESaIS7_EED2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !209 ; 8 uses
  %.not.i.i2 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i2, label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs13GeographicCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.af, align 8, !tbaa !211
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !212
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !156
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #41, !inline_history !1
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !156
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #41, !inline_history !1
  br label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

end_hunk_1
