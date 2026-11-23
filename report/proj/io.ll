Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/io?download=true
inline.NumInlined: 17817
inline.NumDeleted: 4455
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 47
loop-unroll.NumUnrolledNotLatch: 4
begin_hunk_0_@_ZN5osgeo4proj2io9WKTParser7Private23addExtensionProj4ToPropEPKNS1_7WKTNode7PrivateERNS0_4util11PropertyMapE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %i.q = load ptr, ptr %2, align 8, !tbaa !163    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7
  %i.t = load i64, ptr %i.r, align 8, !tbaa !166
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  resume { ptr, i32 } %i.l

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %i.v = load ptr, ptr %2, align 8, !tbaa !163    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.d
  %i.y = load i64, ptr %i.w, align 8, !tbaa !166
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj2io9WKTParser7Private16buildGeodeticCRSERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEEb(ptr dead_on_unwind noalias writable sret(%"class.dropbox::oxygen::nn.347") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, i1 noundef zeroext %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 20 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.osgeo::proj::common::UnitOfMeasure", align 8 ; 13 uses
  %7 = alloca %"class.dropbox::oxygen::nn.190", align 16 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.dropbox::oxygen::nn.121", align 8 ; 7 uses
  %14 = alloca %"class.dropbox::oxygen::nn.125", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::shared_ptr.196", align 16 ; 12 uses
  %20 = alloca %"class.dropbox::oxygen::nn.195", align 16 ; 5 uses
  %21 = alloca %"class.std::shared_ptr.244", align 16 ; 12 uses
  %22 = alloca %"class.dropbox::oxygen::nn.243", align 16 ; 5 uses
  %23 = alloca %"class.dropbox::oxygen::nn.298", align 16 ; 18 uses
  %24 = alloca %"class.std::shared_ptr.69", align 8 ; 9 uses
  %25 = alloca %"class.dropbox::oxygen::nn.121", align 8 ; 7 uses
  %26 = alloca %"class.dropbox::oxygen::nn.125", align 16 ; 7 uses
  %27 = alloca %"class.dropbox::oxygen::nn.347", align 8 ; 6 uses
  %28 = alloca %"class.dropbox::oxygen::nn.302", align 16 ; 7 uses
  %29 = alloca %"class.std::shared_ptr.307", align 16 ; 11 uses
  %30 = alloca %"class.dropbox::oxygen::nn.383", align 16 ; 12 uses
  %31 = alloca %"class.dropbox::oxygen::nn.306", align 8 ; 7 uses
  %32 = alloca %"class.std::shared_ptr.22", align 16 ; 11 uses
  %33 = alloca %"class.dropbox::oxygen::nn.121", align 8 ; 7 uses
  %34 = alloca %"class.dropbox::oxygen::nn.125", align 8 ; 7 uses
  %35 = alloca %"class.dropbox::oxygen::nn.383", align 16 ; 7 uses
  %36 = alloca %"class.std::shared_ptr", align 8  ; 7 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %38 = alloca %"class.dropbox::oxygen::nn.383", align 16 ; 7 uses
  %39 = alloca %"class.dropbox::oxygen::nn.306", align 16 ; 7 uses
  %40 = alloca %"class.dropbox::oxygen::nn.306", align 16 ; 9 uses
  %41 = alloca %"class.dropbox::oxygen::nn.306", align 16 ; 14 uses
  %42 = alloca %"class.dropbox::oxygen::nn.306", align 8 ; 6 uses
  %43 = alloca %"class.std::shared_ptr", align 8  ; 7 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %45 = alloca %"class.std::allocator", align 1   ; 4 uses
  %46 = alloca %"class.dropbox::oxygen::nn.383", align 16 ; 7 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %49 = alloca %"class.std::allocator", align 1   ; 5 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %52 = alloca %"class.std::shared_ptr.303", align 8 ; 10 uses
  %53 = alloca %"class.dropbox::oxygen::nn.302", align 8 ; 7 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %56 = alloca %"class.std::allocator", align 1   ; 5 uses
  %57 = alloca %"class.std::shared_ptr.332", align 8 ; 9 uses
  %58 = alloca %"class.dropbox::oxygen::nn.331", align 8 ; 7 uses
  %59 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %61 = alloca %"class.std::allocator", align 1   ; 5 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %63 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !245
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !247  ; 18 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 9 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !249  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !249  ; 2 uses
  %.not28.i = icmp eq ptr %i.g, %i.i
  br i1 %.not28.i, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %.sroa.019.029.i = phi ptr [ %i.o, %bb.d ], [ %i.g, %bb.a ] ; 5 uses
  %i.j = load ptr, ptr %.sroa.019.029.i, align 8, !tbaa !245
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !247  ; 3 uses
  %i.l = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants5DATUMB5cxx11E) #41
  br i1 %i.l, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.m = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants13GEODETICDATUMB5cxx11E) #41
  br i1 %i.m, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants3TRFB5cxx11E) #41
  br i1 %i.n, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.019.029.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.o, %i.i
  br i1 %.not.i, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_.exit, label %.lr.ph.i

_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_.exit: ; preds = %.lr.ph.i, %bb.b, %bb.c, %bb.d
  %.ph735 = phi ptr [ %.sroa.019.029.i, %bb.c ], [ %.sroa.019.029.i, %.lr.ph.i ], [ %.sroa.019.029.i, %bb.b ], [ @_ZN5osgeo4proj2ioL9null_nodeE, %bb.d ] ; 3 uses
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !249 ; 2 uses
  %.pre741 = load ptr, ptr %i.h, align 8, !tbaa !249 ; 2 uses
  %.not18.i = icmp eq ptr %.pre, %.pre741
  br i1 %.not18.i, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i220

.lr.ph.i220:                                      ; preds = %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_.exit, %bb.e
  %.sroa.013.019.i = phi ptr [ %i.s, %bb.e ], [ %.pre, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_.exit ] ; 3 uses
  %i.p = load ptr, ptr %.sroa.013.019.i, align 8, !tbaa !245
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !247
  %i.r = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants8ENSEMBLEB5cxx11E) #41
  br i1 %i.r, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i220
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.019.i, i64 8 ; 2 uses
  %.not.i221 = icmp eq ptr %i.s, %.pre741
  br i1 %.not.i221, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i220

_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i220, %bb.e, %bb.a, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_.exit
  %i.t = phi ptr [ %.ph735, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_.exit ], [ @_ZN5osgeo4proj2ioL9null_nodeE, %bb.a ], [ %.ph735, %bb.e ], [ %.ph735, %.lr.ph.i220 ] ; 2 uses
  %i.u = phi ptr [ @_ZN5osgeo4proj2ioL9null_nodeE, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_.exit ], [ @_ZN5osgeo4proj2ioL9null_nodeE, %bb.a ], [ %.sroa.013.019.i, %.lr.ph.i220 ], [ @_ZN5osgeo4proj2ioL9null_nodeE, %bb.e ] ; 2 uses
  %i.v = icmp eq ptr %i.t, @_ZN5osgeo4proj2ioL9null_nodeE ; 2 uses
  %i.w = icmp eq ptr %i.u, @_ZN5osgeo4proj2ioL9null_nodeE ; 2 uses
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.x = tail call ptr @__cxa_allocate_exception(i64 40) #41 ; 3 uses
  invoke void @_ZN5osgeo4proj2io16ParsingExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull @.str.135)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.x) #41
  br label %bb.qc

bb.i:                                             ; preds = %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj2io9WKTParser7Private15buildPropertiesERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEEbb(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext false, i1 noundef zeroext true)
  call void @_ZN5osgeo4proj4util11PropertyMapC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !249 ; 2 uses
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !249 ; 2 uses
  %.not18.i222 = icmp eq ptr %i.aa, %i.ab
  br i1 %.not18.i222, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit231.thread, label %.lr.ph.i223

.lr.ph.i223:                                      ; preds = %bb.i, %bb.j
  %.sroa.013.019.i224 = phi ptr [ %i.af, %bb.j ], [ %i.aa, %bb.i ] ; 3 uses
  %i.ac = load ptr, ptr %.sroa.013.019.i224, align 8, !tbaa !245
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !247
  %i.ae = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants7DYNAMICB5cxx11E) #41
  br i1 %i.ae, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit226, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i223
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.013.019.i224, i64 8 ; 2 uses
  %.not.i225 = icmp eq ptr %i.af, %i.ab
  br i1 %.not.i225, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit226, label %.lr.ph.i223

_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit226: ; preds = %.lr.ph.i223, %bb.j
  %.ph = phi ptr [ @_ZN5osgeo4proj2ioL9null_nodeE, %bb.j ], [ %.sroa.013.019.i224, %.lr.ph.i223 ] ; 4 uses
  %.pre742 = load ptr, ptr %i.f, align 8, !tbaa !249 ; 2 uses
  %.pre743 = load ptr, ptr %i.h, align 8, !tbaa !249 ; 2 uses
  %.not18.i227 = icmp eq ptr %.pre742, %.pre743
  br i1 %.not18.i227, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit231.thread, label %.lr.ph.i228

.lr.ph.i228:                                      ; preds = %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit226, %bb.k
  %.sroa.013.019.i229 = phi ptr [ %i.aj, %bb.k ], [ %.pre742, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit226 ] ; 4 uses
  %i.ag = load ptr, ptr %.sroa.013.019.i229, align 8, !tbaa !245
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !247
  %i.ai = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants3CS_B5cxx11E) #41
  br i1 %i.ai, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit231, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i228
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.013.019.i229, i64 8 ; 2 uses
  %.not.i230 = icmp eq ptr %i.aj, %.pre743
  br i1 %.not.i230, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit231.thread, label %.lr.ph.i228

_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit231: ; preds = %.lr.ph.i228
  %i.ak = icmp eq ptr %.sroa.013.019.i229, @_ZN5osgeo4proj2ioL9null_nodeE
  br i1 %i.ak, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit231.thread, label %bb.r

_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit231.thread: ; preds = %bb.k, %bb.i, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit226, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit231
  %i.al = phi ptr [ @_ZN5osgeo4proj2ioL9null_nodeE, %bb.i ], [ %.ph, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit231 ], [ %.ph, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit226 ], [ %.ph, %bb.k ] ; 4 uses
  %i.am = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants6GEOGCSB5cxx11E) #41
  br i1 %i.am, label %bb.r, label %bb.l

bb.l:                                             ; preds = %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit231.thread
  %i.an = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants6GEOCCSB5cxx11E) #41
  br i1 %i.an, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants11BASEGEODCRSB5cxx11E) #41
  br i1 %i.ao, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants11BASEGEOGCRSB5cxx11E) #41
  br i1 %i.ap, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke fastcc void @_ZN5osgeo4proj2ioL12ThrowMissingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants3CS_B5cxx11E) #42
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.qb

bb.r:                                             ; preds = %bb.n, %bb.m, %bb.l, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit231.thread, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit231
  %i.ar = phi ptr [ %i.al, %bb.n ], [ %i.al, %bb.m ], [ %i.al, %bb.l ], [ %i.al, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit231.thread ], [ %.ph, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit231 ]
  %i.as = phi i1 [ true, %bb.n ], [ true, %bb.m ], [ true, %bb.l ], [ true, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit231.thread ], [ false, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit231 ] ; 2 uses
  %i.at = phi ptr [ @_ZN5osgeo4proj2ioL9null_nodeE, %bb.n ], [ @_ZN5osgeo4proj2ioL9null_nodeE, %bb.m ], [ @_ZN5osgeo4proj2ioL9null_nodeE, %bb.l ], [ @_ZN5osgeo4proj2ioL9null_nodeE, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit231.thread ], [ %.sroa.013.019.i229, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit231 ]
  %i.au = load ptr, ptr %i.f, align 8, !tbaa !249 ; 2 uses
  %i.av = load ptr, ptr %i.h, align 8, !tbaa !249 ; 2 uses
  %.not25.i = icmp eq ptr %i.au, %i.av
  br i1 %.not25.i, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_.exit.thread, label %.lr.ph.i232

.lr.ph.i232:                                      ; preds = %bb.r, %bb.t
  %.sroa.017.026.i = phi ptr [ %i.ba, %bb.t ], [ %i.au, %bb.r ] ; 4 uses
  %i.aw = load ptr, ptr %.sroa.017.026.i, align 8, !tbaa !245
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !247 ; 2 uses
  %i.ay = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants6PRIMEMB5cxx11E) #41
  br i1 %i.ay, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_.exit, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i232
  %i.az = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants13PRIMEMERIDIANB5cxx11E) #41
  br i1 %i.az, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.017.026.i, i64 8 ; 2 uses
  %.not.i233 = icmp eq ptr %i.ba, %i.av
  br i1 %.not.i233, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_.exit.thread, label %.lr.ph.i232

_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_.exit: ; preds = %.lr.ph.i232, %bb.s
  %i.bb = icmp eq ptr %.sroa.017.026.i, @_ZN5osgeo4proj2ioL9null_nodeE
  br i1 %i.bb, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_.exit.thread, label %bb.ag

_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_.exit.thread: ; preds = %bb.t, %bb.r, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_.exit
  %i.bc = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants6GEOGCSB5cxx11E) #41
  br i1 %i.bc, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_.exit.thread
  %i.bd = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants6GEOCCSB5cxx11E) #41
  br i1 %i.bd, label %bb.v, label %bb.ag

bb.v:                                             ; preds = %bb.u, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  %i.be = load ptr, ptr %i.e, align 8, !tbaa !163, !noalias !1097
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !164, !noalias !1097 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.bh, ptr %5, align 8, !tbaa !160, !alias.scope !1098
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 0, ptr %i.bi, align 8, !tbaa !164, !alias.scope !1098
  store i8 0, ptr %i.bh, align 8, !tbaa !166, !alias.scope !1098
  %i.bj = add i64 %i.bg, 26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.bj)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !164, !alias.scope !1098
  %i.bl = sub i64 4611686018427387903, %i.bk
  %i.bm = icmp ult i64 %i.bl, %i.bg
  br i1 %i.bm, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.w
  %i.bn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.be, i64 noundef %i.bg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.x ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bo = load i64, ptr %i.bi, align 8, !tbaa !164, !alias.scope !1098
  %i.bp = add i64 %i.bo, -4611686018427387878
  %i.bq = icmp ult i64 %i.bp, 26
  br i1 %i.bq, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.689) #42
          to label %.cont.i.i unwind label %bb.x

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.br = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.136, i64 noundef 26)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.x ; 0 uses

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.v
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = load ptr, ptr %5, align 8, !tbaa !163, !alias.scope !1098 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.bh
  br i1 %i.bu, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.bv = load i8, ptr %1, align 8, !tbaa !270, !range !221, !noundef !222
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.bx = call ptr @__cxa_allocate_exception(i64 40) #41 ; 4 uses
  invoke void @_ZN5osgeo4proj4util9ExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj2io16ParsingExceptionE, i64 16), ptr %i.bx, align 8, !tbaa !156
  invoke void @__cxa_throw(ptr nonnull %i.bx, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
          to label %.noexc unwind label %bb.af

.noexc:                                           ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bx) #41
  br label %.body234

bb.ab:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ca = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #43
          to label %.noexc553 unwind label %bb.af ; 5 uses

.noexc553:                                        ; preds = %bb.ab
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 32 ; 3 uses
  store ptr %i.cc, ptr %i.cb, align 8, !tbaa !160
  %i.cd = load ptr, ptr %5, align 8, !tbaa !163   ; 2 uses
  %i.ce = load i64, ptr %i.bi, align 8, !tbaa !164 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  store i64 %i.ce, ptr %i.b, align 8, !tbaa !165
  %i.cf = icmp ugt i64 %i.ce, 15
  br i1 %i.cf, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.noexc553
  %i.cg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.cb, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i.i unwind label %_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit9.i.i ; 2 uses

.noexc.i.i:                                       ; preds = %.noexc.i.i.i
  store ptr %i.cg, ptr %i.cb, align 8, !tbaa !163
  %i.ch = load i64, ptr %i.b, align 8, !tbaa !165
  store i64 %i.ch, ptr %i.cc, align 8, !tbaa !166
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i, %.noexc553
  %i.ci = phi ptr [ %i.cg, %.noexc.i.i ], [ %i.cc, %.noexc553 ] ; 2 uses
  switch i64 %i.ce, label %bb.ad [
    i64 1, label %bb.ac
    i64 0, label %bb.ae
  ]

bb.ac:                                            ; preds = %._crit_edge.i.i.i.i
  %i.cj = load i8, ptr %i.cd, align 1, !tbaa !166
  store i8 %i.cj, ptr %i.ci, align 1, !tbaa !166
  br label %bb.ae

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ci, ptr align 1 %i.cd, i64 %i.ce, i1 false)
  br label %bb.ae

_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit9.i.i: ; preds = %.noexc.i.i.i
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef 48) #44
  br label %.body234

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i, %bb.ac, %bb.ad
  %i.cl = load i64, ptr %i.b, align 8, !tbaa !165 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !164
  %i.cn = load ptr, ptr %i.cb, align 8, !tbaa !163
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cl
  store i8 0, ptr %i.co, align 1, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %i.bz) #41
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !279
  %i.cr = add i64 %i.cq, 1
  store i64 %i.cr, ptr %i.cp, align 8, !tbaa !279
  %i.cs = load ptr, ptr %5, align 8, !tbaa !163   ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.bh
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ae
  %i.cu = load i64, ptr %i.bh, align 8, !tbaa !166
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  br label %bb.ag

bb.af:                                            ; preds = %bb.ab, %bb.z
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body234

.body234:                                         ; preds = %bb.af, %_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit9.i.i, %bb.aa
  %eh.lpad-body235 = phi { ptr, i32 } [ %i.by, %bb.aa ], [ %i.cw, %bb.af ], [ %i.ck, %_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit9.i.i ] ; 2 uses
  %i.cx = load ptr, ptr %5, align 8, !tbaa !163   ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.bh
  br i1 %i.cy, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body234, %bb.x
  %.sink = phi ptr [ %i.bt, %bb.x ], [ %i.cx, %.body234 ]
  %.pn.ph = phi { ptr, i32 } [ %i.bs, %bb.x ], [ %eh.lpad-body235, %.body234 ]
  %i.cz = load i64, ptr %i.bh, align 8, !tbaa !166
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.da) #44
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body234, %bb.x
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.x ], [ %eh.lpad-body235, %.body234 ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  br label %bb.qb

bb.ag:                                            ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_.exit
  %i.db = phi i1 [ true, %bb.u ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_.exit ]
  %i.dc = phi ptr [ @_ZN5osgeo4proj2ioL9null_nodeE, %bb.u ], [ @_ZN5osgeo4proj2ioL9null_nodeE, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.017.026.i, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.dd = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants6GEOGCSB5cxx11E) #41
  %i.de = select i1 %i.dd, i32 2, i32 0
  invoke void @_ZN5osgeo4proj2io9WKTParser7Private18buildUnitInSubNodeERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEENS0_6common13UnitOfMeasure4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.osgeo::proj::common::UnitOfMeasure") align 8 %6, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.de)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.df = call noundef i32 @_ZNK5osgeo4proj6common13UnitOfMeasure4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #45
  %.not = icmp eq i32 %i.df, 2
  br i1 %.not, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dg = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5osgeo4proj6common13UnitOfMeasureaSERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) @_ZN5osgeo4proj6common13UnitOfMeasure4NONEE)
          to label %bb.al unwind label %bb.ak     ; 0 uses

bb.aj:                                            ; preds = %bb.ag
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.qa

bb.ak:                                            ; preds = %bb.ai
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.pz

bb.al:                                            ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  br i1 %i.db, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN5osgeo4proj2io9WKTParser7Private18buildPrimeMeridianERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEERKNS0_6common13UnitOfMeasureE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.190") align 8 %7, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEEC2ERKS8_.exit unwind label %bb.as

bb.an:                                            ; preds = %bb.al
  %i.dj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5osgeo4proj5datum13PrimeMeridian9GREENWICHE, i64 8), align 8, !tbaa !209 ; 2 uses
  %i.dk = load <2 x ptr>, ptr @_ZN5osgeo4proj5datum13PrimeMeridian9GREENWICHE, align 8, !tbaa !208
  store <2 x ptr> %i.dk, ptr %7, align 16, !tbaa !208
  %.not.i.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.i, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEEC2ERKS8_.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 3 uses
  %i.dm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i.i = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !213
  %i.do = add nsw i32 %i.dn, 1
  store i32 %i.do, ptr %i.dl, align 4, !tbaa !213
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEEC2ERKS8_.exit

bb.aq:                                            ; preds = %bb.ao
  %i.dp = atomicrmw volatile add ptr %i.dl, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEEC2ERKS8_.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEEC2ERKS8_.exit: ; preds = %bb.aq, %bb.ap, %bb.an, %bb.am
  %i.dq = call noundef zeroext i1 @_ZNK5osgeo4proj6common13UnitOfMeasureeqERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) @_ZN5osgeo4proj6common13UnitOfMeasure4NONEE) #45
  br i1 %i.dq, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEEC2ERKS8_.exit
  %i.dr = load ptr, ptr %7, align 16, !tbaa !354
  %i.ds = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj5datum13PrimeMeridian9longitudeEv(ptr noundef nonnull align 8 dereferenceable(64) %i.dr) #45
  %i.dt = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj6common7Measure4unitEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ds) #45
  %i.du = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5osgeo4proj6common13UnitOfMeasureaSERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.dt)
          to label %bb.au unwind label %bb.at     ; 0 uses

bb.as:                                            ; preds = %bb.am
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.py

bb.at:                                            ; preds = %bb.au, %bb.ar
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.px

bb.au:                                            ; preds = %bb.ar, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEEC2ERKS8_.exit
  invoke void @_ZN5osgeo4proj2io9WKTParser7Private23addExtensionProj4ToPropEPKNS1_7WKTNode7PrivateERNS0_4util11PropertyMapE(ptr noundef nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.av unwind label %bb.at

bb.av:                                            ; preds = %bb.au
  %i.dx = load ptr, ptr %i.f, align 8, !tbaa !249 ; 2 uses
  %i.dy = load ptr, ptr %i.h, align 8, !tbaa !249 ; 2 uses
  %.not18.i240 = icmp eq ptr %i.dx, %i.dy
  br i1 %.not18.i240, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit244.thread, label %.lr.ph.i241

.lr.ph.i241:                                      ; preds = %bb.av, %bb.aw
  %.sroa.013.019.i242 = phi ptr [ %i.ec, %bb.aw ], [ %i.dx, %bb.av ] ; 3 uses
  %i.dz = load ptr, ptr %.sroa.013.019.i242, align 8, !tbaa !245
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !247
  %i.eb = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.ea, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants4AXISB5cxx11E) #41
  br i1 %i.eb, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit244, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i241
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.013.019.i242, i64 8 ; 2 uses
  %.not.i243 = icmp eq ptr %i.ec, %i.dy
  br i1 %.not.i243, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit244.thread, label %.lr.ph.i241

_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit244: ; preds = %.lr.ph.i241
  %i.ed = icmp eq ptr %.sroa.013.019.i242, @_ZN5osgeo4proj2ioL9null_nodeE
  br i1 %i.ed, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit244.thread, label %bb.az

_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit244.thread: ; preds = %bb.aw, %bb.av, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit244
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.ee = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.ee, ptr %8, align 8, !tbaa !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.ee, ptr noundef nonnull align 1 dereferenceable(11) @.str.137, i64 11, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 11, ptr %i.ef, align 8, !tbaa !164
  %i.eg = getelementptr inbounds nuw i8, ptr %8, i64 27
  store i8 0, ptr %i.eg, align 1, !tbaa !166
  %i.eh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj4util11PropertyMap3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(32) %8, i1 noundef zeroext true)
          to label %bb.ax unwind label %bb.ay     ; 0 uses

bb.ax:                                            ; preds = %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit244.thread
  %i.ei = load ptr, ptr %8, align 8, !tbaa !163   ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.ee
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246: ; preds = %bb.ax
  %i.ek = load i64, ptr %i.ee, align 8, !tbaa !166
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  br label %bb.az

bb.ay:                                            ; preds = %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit244.thread
  %i.em = landingpad { ptr, i32 }
          cleanup
  %i.en = load ptr, ptr %8, align 8, !tbaa !163   ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.ee
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249: ; preds = %bb.ay
  %i.ep = load i64, ptr %i.ee, align 8, !tbaa !166
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  br label %bb.px

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit244
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  %i.er = load ptr, ptr %i.f, align 8, !tbaa !251
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !245, !noalias !1099
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !247, !noalias !1099
  invoke void @_ZN5osgeo4proj8internal11stripQuotesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %i.et)
          to label %_ZN5osgeo4proj2io9WKTParser7Private11stripQuotesB5cxx11ERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEE.exit unwind label %bb.bo

_ZN5osgeo4proj2io9WKTParser7Private11stripQuotesB5cxx11ERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEE.exit: ; preds = %bb.az
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ev = load i8, ptr %i.eu, align 8, !tbaa !294, !range !221, !noundef !222
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.ba, label %bb.ca

bb.ba:                                            ; preds = %_ZN5osgeo4proj2io9WKTParser7Private11stripQuotesB5cxx11ERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEE.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !278 ; 2 uses
  %.not713 = icmp eq ptr %i.ey, null
  br i1 %.not713, label %bb.ca, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  %i.ez = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.ez, ptr %10, align 8, !tbaa !160
  %i.fa = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.fa, align 8, !tbaa !164
  store i8 0, ptr %i.ez, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  %i.fb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.fb, ptr %11, align 8, !tbaa !160
  %i.fc = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.fc, align 8, !tbaa !164
  store i8 0, ptr %i.fb, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %i.fd = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.fd, ptr %12, align 8, !tbaa !160
  %i.fe = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.fe, align 8, !tbaa !164
  store i8 0, ptr %i.fd, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #41
  store ptr %i.ey, ptr %14, align 8, !tbaa !278
  %i.ff = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !209 ; 3 uses
  store ptr %i.fh, ptr %i.ff, align 8, !tbaa !209
  %.not.i.i.i.i253 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i.i253, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 3 uses
  %i.fj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i.i254 = icmp eq i8 %i.fj, 0
end_hunk_0
begin_hunk_1_@_ZN5osgeo4proj2io16PROJStringParser20createFromPROJStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
bb.ww:                                            ; preds = %bb.hh, %bb.ha, %bb.cy
  unreachable
}

declare void @_ZNK5osgeo4proj3crs10DerivedCRS18derivingConversionEv(ptr dead_on_unwind writable sret(%"class.dropbox::oxygen::nn.409") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #10

; Function Attrs: nounwind
declare noundef ptr @_ZN5osgeo4proj9operation18getMappingFromWKT1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj2cs20CoordinateSystemAxis9directionEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #19

declare noundef ptr @_ZN5osgeo4proj9operation18getMappingFromWKT1EPKNS1_13MethodMappingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK5osgeo4proj9operation18OperationParameter11getEPSGCodeEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj2io9WKTParser7Private17buildProjectedCRSERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEE(ptr dead_on_unwind noalias writable sret(%"class.dropbox::oxygen::nn.580") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.69", align 8 ; 8 uses
  %4 = alloca %"class.dropbox::oxygen::nn.121", align 8 ; 7 uses
  %5 = alloca %"class.dropbox::oxygen::nn.125", align 16 ; 7 uses
  %6 = alloca %"class.dropbox::oxygen::nn.580", align 8 ; 6 uses
  %7 = alloca %"class.dropbox::oxygen::nn.121", align 8 ; 7 uses
  %8 = alloca %"class.dropbox::oxygen::nn.125", align 16 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::list.261", align 8 ; 9 uses
  %11 = alloca %"class.std::vector.266", align 8  ; 12 uses
  %12 = alloca %"class.dropbox::oxygen::nn.409", align 8 ; 7 uses
  %13 = alloca %"class.osgeo::proj::common::UnitOfMeasure", align 8 ; 12 uses
  %14 = alloca %"class.dropbox::oxygen::nn.302", align 16 ; 5 uses
  %15 = alloca %"class.dropbox::oxygen::nn.347", align 8 ; 23 uses
  %16 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 14 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 22 uses
  %18 = alloca %"class.dropbox::oxygen::nn.298", align 16 ; 11 uses
  %19 = alloca %"class.std::shared_ptr.303", align 16 ; 27 uses
  %20 = alloca %"class.dropbox::oxygen::nn.121", align 8 ; 7 uses
  %21 = alloca %"class.dropbox::oxygen::nn.125", align 8 ; 7 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.dropbox::oxygen::nn.580", align 8 ; 8 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %25 = alloca %"class.dropbox::oxygen::nn.121", align 8 ; 7 uses
  %26 = alloca %"class.dropbox::oxygen::nn.125", align 16 ; 7 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %28 = alloca %"class.std::__cxx11::list.582", align 8 ; 9 uses
  %29 = alloca %"class.std::vector.266", align 8  ; 12 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %33 = alloca %"class.dropbox::oxygen::nn.121", align 8 ; 8 uses
  %34 = alloca %"class.dropbox::oxygen::nn.125", align 8 ; 7 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %42 = alloca %"class.std::allocator", align 1   ; 4 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %44 = alloca %"class.std::allocator", align 1   ; 4 uses
  %45 = alloca %"class.dropbox::oxygen::nn.302", align 8 ; 7 uses
  %46 = alloca %"class.dropbox::oxygen::nn.302", align 16 ; 7 uses
  %47 = alloca %"class.osgeo::proj::common::UnitOfMeasure", align 8 ; 18 uses
  %48 = alloca %"class.dropbox::oxygen::nn.409", align 8 ; 11 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %50 = alloca %"class.dropbox::oxygen::nn.302", align 16 ; 7 uses
  %51 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %52 = alloca %"class.dropbox::oxygen::nn.292", align 8 ; 7 uses
  %53 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %54 = alloca %"class.std::shared_ptr.289", align 8 ; 7 uses
  %55 = alloca %"class.dropbox::oxygen::nn.292", align 8 ; 7 uses
  %56 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %57 = alloca %"class.std::shared_ptr.289", align 8 ; 7 uses
  %58 = alloca %"class.dropbox::oxygen::nn.302", align 16 ; 7 uses
  %59 = alloca %"class.dropbox::oxygen::nn.302", align 8 ; 6 uses
  %60 = alloca %"class.dropbox::oxygen::nn.302", align 8 ; 6 uses
  %61 = alloca %"class.dropbox::oxygen::nn.302", align 8 ; 6 uses
  %62 = alloca %"class.dropbox::oxygen::nn.302", align 16 ; 7 uses
  %63 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %64 = alloca %"class.std::allocator", align 1   ; 3 uses
  %65 = alloca %"class.dropbox::oxygen::nn.405", align 8 ; 7 uses
  %66 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %67 = alloca %"class.dropbox::oxygen::nn.302", align 16 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !245
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !247  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !249  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !249  ; 2 uses
  %.not18.i = icmp eq ptr %i.d, %i.f
  br i1 %.not18.i, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit160, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.sroa.013.019.i = phi ptr [ %i.j, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.g = load ptr, ptr %.sroa.013.019.i, align 8, !tbaa !245
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !247
  %i.i = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants10CONVERSIONB5cxx11E) #41
  br i1 %i.i, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.019.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.j, %i.f
  br i1 %.not.i, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i

_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i, %bb.b
  %.ph525 = phi ptr [ @_ZN5osgeo4proj2ioL9null_nodeE, %bb.b ], [ %.sroa.013.019.i, %.lr.ph.i ] ; 3 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !249 ; 2 uses
  %.pre533 = load ptr, ptr %i.e, align 8, !tbaa !249 ; 2 uses
  %.not18.i156 = icmp eq ptr %.pre, %.pre533
  br i1 %.not18.i156, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit160, label %.lr.ph.i157

.lr.ph.i157:                                      ; preds = %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.c
  %.sroa.013.019.i158 = phi ptr [ %i.n, %bb.c ], [ %.pre, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 3 uses
  %i.k = load ptr, ptr %.sroa.013.019.i158, align 8, !tbaa !245
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !247
  %i.m = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants10PROJECTIONB5cxx11E) #41
  br i1 %i.m, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit160, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i157
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.019.i158, i64 8 ; 2 uses
  %.not.i159 = icmp eq ptr %i.n, %.pre533
  br i1 %.not.i159, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit160, label %.lr.ph.i157

_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit160: ; preds = %.lr.ph.i157, %bb.c, %bb.a, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.o = phi ptr [ %.ph525, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ @_ZN5osgeo4proj2ioL9null_nodeE, %bb.a ], [ %.ph525, %bb.c ], [ %.ph525, %.lr.ph.i157 ] ; 3 uses
  %i.p = phi ptr [ @_ZN5osgeo4proj2ioL9null_nodeE, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ @_ZN5osgeo4proj2ioL9null_nodeE, %bb.a ], [ %.sroa.013.019.i158, %.lr.ph.i157 ], [ @_ZN5osgeo4proj2ioL9null_nodeE, %bb.c ] ; 5 uses
  %i.q = icmp eq ptr %i.o, @_ZN5osgeo4proj2ioL9null_nodeE ; 4 uses
  %i.r = icmp eq ptr %i.p, @_ZN5osgeo4proj2ioL9null_nodeE
  %or.cond = and i1 %i.q, %i.r
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit160
  tail call fastcc void @_ZN5osgeo4proj2ioL12ThrowMissingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants10CONVERSIONB5cxx11E) #42
  unreachable

bb.e:                                             ; preds = %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit160
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !249  ; 2 uses
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !249  ; 2 uses
  %.not28.i = icmp eq ptr %i.s, %i.t
  br i1 %.not28.i, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_.exit.thread, label %.lr.ph.i161

.lr.ph.i161:                                      ; preds = %bb.e, %bb.h
  %.sroa.019.029.i = phi ptr [ %i.z, %bb.h ], [ %i.s, %bb.e ] ; 4 uses
  %i.u = load ptr, ptr %.sroa.019.029.i, align 8, !tbaa !245
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !247  ; 3 uses
  %i.w = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants11BASEGEODCRSB5cxx11E) #41
  br i1 %i.w, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i161
  %i.x = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants11BASEGEOGCRSB5cxx11E) #41
  br i1 %i.x, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants6GEOGCSB5cxx11E) #41
  br i1 %i.y, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.019.029.i, i64 8 ; 2 uses
  %.not.i162 = icmp eq ptr %i.z, %i.t
  br i1 %.not.i162, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_.exit.thread, label %.lr.ph.i161

_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_.exit: ; preds = %.lr.ph.i161, %bb.f, %bb.g
  %i.aa = icmp eq ptr %.sroa.019.029.i, @_ZN5osgeo4proj2ioL9null_nodeE
  br i1 %i.aa, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_.exit.thread, label %bb.k

_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_.exit.thread: ; preds = %bb.h, %bb.e, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_.exit
  %i.ab = tail call ptr @__cxa_allocate_exception(i64 40) #41 ; 3 uses
  invoke void @_ZN5osgeo4proj2io16ParsingExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull @.str.206)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_.exit.thread
  tail call void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
  unreachable

bb.j:                                             ; preds = %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_.exit.thread
  %i.ac = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ab) #41
  br label %bb.rr

bb.k:                                             ; preds = %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #41
  call void @_ZN5osgeo4proj2io9WKTParser7Private16buildGeodeticCRSERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEEb(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.347") align 8 %15, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.019.029.i, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #41
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj2io9WKTParser7Private15buildPropertiesERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEEbb(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5osgeo4proj4util11PropertyMapC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !249 ; 2 uses
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !249 ; 2 uses
  %.not18.i163 = icmp eq ptr %i.ae, %i.af
  br i1 %.not18.i163, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit167.thread, label %.lr.ph.i164

.lr.ph.i164:                                      ; preds = %bb.m, %bb.n
  %.sroa.013.019.i165 = phi ptr [ %i.aj, %bb.n ], [ %i.ae, %bb.m ] ; 4 uses
  %i.ag = load ptr, ptr %.sroa.013.019.i165, align 8, !tbaa !245
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !247
  %i.ai = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants3CS_B5cxx11E) #41
  br i1 %i.ai, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit167, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i164
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.013.019.i165, i64 8 ; 2 uses
  %.not.i166 = icmp eq ptr %i.aj, %i.af
  br i1 %.not.i166, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit167.thread, label %.lr.ph.i164

_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit167: ; preds = %.lr.ph.i164
  %i.ak = icmp eq ptr %.sroa.013.019.i165, @_ZN5osgeo4proj2ioL9null_nodeE
  br i1 %i.ak, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit167.thread, label %bb.t

_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit167.thread: ; preds = %bb.n, %bb.m, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit167
  %i.al = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants6PROJCSB5cxx11E) #41
  br i1 %i.al, label %bb.t, label %bb.o

bb.o:                                             ; preds = %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit167.thread
  %i.am = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants11BASEPROJCRSB5cxx11E) #41
  br i1 %i.am, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @_ZN5osgeo4proj2ioL12ThrowMissingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants3CS_B5cxx11E) #42
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.l, %bb.k
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.rq

bb.s:                                             ; preds = %bb.p
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.rp

bb.t:                                             ; preds = %bb.o, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit167.thread, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit167
  %i.ap = phi i1 [ true, %bb.o ], [ true, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit167.thread ], [ false, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit167 ] ; 2 uses
  %i.aq = phi ptr [ @_ZN5osgeo4proj2ioL9null_nodeE, %bb.o ], [ @_ZN5osgeo4proj2ioL9null_nodeE, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit167.thread ], [ %.sroa.013.019.i165, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit167 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #41
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !251
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !245, !noalias !1432
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !247, !noalias !1432
  invoke void @_ZN5osgeo4proj8internal11stripQuotesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %i.at)
          to label %_ZN5osgeo4proj2io9WKTParser7Private11stripQuotesB5cxx11ERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEE.exit unwind label %bb.fj

_ZN5osgeo4proj2io9WKTParser7Private11stripQuotesB5cxx11ERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEE.exit: ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #41
  call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  br i1 %i.ap, label %bb.u, label %bb.dr

bb.u:                                             ; preds = %_ZN5osgeo4proj2io9WKTParser7Private11stripQuotesB5cxx11ERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEE.exit
  %i.au = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants11BASEPROJCRSB5cxx11E) #41, !noalias !1433
  %.not = xor i1 %i.au, true
  %brmerge = or i1 %i.q, %.not
  br i1 %brmerge, label %bb.dr, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !278, !noalias !1433
  %.not.i168 = icmp eq ptr %i.aw, null
  br i1 %.not.i168, label %._crit_edge.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !249, !noalias !1433 ; 2 uses
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !249, !noalias !1433 ; 2 uses
  %.not18.i.i = icmp eq ptr %i.ax, %i.ay
  br i1 %.not18.i.i, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %bb.x
  %.sroa.013.019.i.i = phi ptr [ %i.bc, %bb.x ], [ %i.ax, %bb.w ] ; 4 uses
  %i.az = load ptr, ptr %.sroa.013.019.i.i, align 8, !tbaa !245, !noalias !1433
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !247, !noalias !1433
  %i.bb = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants2IDB5cxx11E) #41, !noalias !1433
  br i1 %i.bb, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.013.019.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bc, %i.ay
  br i1 %.not.i.i, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i, label %.lr.ph.i.i

_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %.lr.ph.i.i
  %i.bd = icmp eq ptr %.sroa.013.019.i.i, @_ZN5osgeo4proj2ioL9null_nodeE
  br i1 %i.bd, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i, label %bb.y

bb.y:                                             ; preds = %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41, !noalias !1433
  invoke void @_ZN5osgeo4proj2io9WKTParser7Private7buildIdERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEESE_bb(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.69") align 8 %3, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.013.019.i.i, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.z unwind label %bb.bg, !noalias !1433

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41, !noalias !1433
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41, !noalias !1433
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !209, !noalias !1433 ; 2 uses
  %i.bh = load <2 x ptr>, ptr %i.av, align 8, !tbaa !208, !noalias !1433
  store <2 x ptr> %i.bh, ptr %5, align 16, !tbaa !208, !noalias !1433
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 3 uses
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166, !noalias !1433
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !213, !noalias !1433
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !213, !noalias !1433
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.bm = atomicrmw volatile add ptr %i.bi, i32 1 acq_rel, align 4, !noalias !1433 ; 0 uses
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.i

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.i: ; preds = %bb.ac, %bb.ab, %bb.z
  %i.bn = load ptr, ptr %3, align 8, !tbaa !287, !noalias !1433
  %i.bo = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5osgeo4proj8metadata10Identifier9codeSpaceB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.bn) #45, !noalias !1433
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  invoke void @_ZN5osgeo4proj2io16AuthorityFactory6createERKN7dropbox6oxygen2nnISt10shared_ptrINS1_15DatabaseContextEEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.121") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.bp)
          to label %bb.ad unwind label %bb.bh, !noalias !1433

bb.ad:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.i
  %i.bq = load ptr, ptr %i.be, align 8, !tbaa !209, !noalias !1433 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 4 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8, !noalias !1433 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 4294967297
  %i.bu = trunc i64 %i.bs to i32                  ; 2 uses
  br i1 %i.bt, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.br, align 8, !tbaa !211, !noalias !1433
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 0, ptr %i.bv, align 4, !tbaa !212, !noalias !1433
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !156, !noalias !1433
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !1433
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #41, !noalias !1433, !inline_history !1418
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !156, !noalias !1433
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !1433
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #41, !noalias !1433, !inline_history !1418
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit.i

bb.ag:                                            ; preds = %bb.ae
  %i.cc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166, !noalias !1433
  %.not.i.i.i.i68.i = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i.i68.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cd = add nsw i32 %i.bu, -1
  store i32 %i.cd, ptr %i.br, align 8, !tbaa !213, !noalias !1433
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.ce = atomicrmw volatile add ptr %i.br, i32 -1 acq_rel, align 4, !noalias !1433
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i.i = phi i32 [ %i.bu, %bb.ah ], [ %i.ce, %bb.ai ]
  %i.cf = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cf, label %bb.aj, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit.i, !prof !214

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #41, !noalias !1433
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit.i

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit.i: ; preds = %bb.aj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.af, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41, !noalias !1433
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41, !noalias !1433
  %i.cg = load ptr, ptr %4, align 8, !tbaa !297, !noalias !1433
  %i.ch = load ptr, ptr %3, align 8, !tbaa !287, !noalias !1433
  %i.ci = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj8metadata10Identifier4codeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.ch) #45, !noalias !1433
  invoke void @_ZNK5osgeo4proj2io16AuthorityFactory18createProjectedCRSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.580") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %i.ci)
          to label %bb.ak unwind label %bb.bi, !noalias !1433

bb.ak:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit.i
  %i.cj = load ptr, ptr %6, align 8, !tbaa !491, !noalias !1433
  %i.ck = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj3crs12ProjectedCRS16coordinateSystemEv(ptr noundef nonnull align 8 dereferenceable(104) %i.cj) #45, !noalias !1433 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !209, !noalias !1433 ; 2 uses
  %i.cn = load <2 x ptr>, ptr %i.ck, align 8, !tbaa !208, !noalias !1433
  store <2 x ptr> %i.cn, ptr %18, align 16, !tbaa !208, !alias.scope !1433
  %.not.i.i.i.i69.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i69.i, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEEC2IS2_INS5_11CartesianCSEETnNSt9enable_ifIXsr3std14is_convertibleIT_S7_EE5valueEiE4typeELi0EEERKNS1_ISD_EE.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 3 uses
  %i.cp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166, !noalias !1433
  %.not.i.i.i.i.i70.i = icmp eq i8 %i.cp, 0
  br i1 %.not.i.i.i.i.i70.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !213, !noalias !1433
  %i.cr = add nsw i32 %i.cq, 1
  store i32 %i.cr, ptr %i.co, align 4, !tbaa !213, !noalias !1433
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEEC2IS2_INS5_11CartesianCSEETnNSt9enable_ifIXsr3std14is_convertibleIT_S7_EE5valueEiE4typeELi0EEERKNS1_ISD_EE.exit.i

bb.an:                                            ; preds = %bb.al
  %i.cs = atomicrmw volatile add ptr %i.co, i32 1 acq_rel, align 4, !noalias !1433 ; 0 uses
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEEC2IS2_INS5_11CartesianCSEETnNSt9enable_ifIXsr3std14is_convertibleIT_S7_EE5valueEiE4typeELi0EEERKNS1_ISD_EE.exit.i

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEEC2IS2_INS5_11CartesianCSEETnNSt9enable_ifIXsr3std14is_convertibleIT_S7_EE5valueEiE4typeELi0EEERKNS1_ISD_EE.exit.i: ; preds = %bb.an, %bb.am, %bb.ak
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !209, !noalias !1433 ; 8 uses
  %.not.i.i.i71.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i71.i, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs12ProjectedCRSEEED2Ev.exit.i, label %bb.ao

bb.ao:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEEC2IS2_INS5_11CartesianCSEETnNSt9enable_ifIXsr3std14is_convertibleIT_S7_EE5valueEiE4typeELi0EEERKNS1_ISD_EE.exit.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 4 uses
  %i.cw = load atomic i64, ptr %i.cv acquire, align 8, !noalias !1433 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 4294967297
  %i.cy = trunc i64 %i.cw to i32                  ; 2 uses
  br i1 %i.cx, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.cv, align 8, !tbaa !211, !noalias !1433
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  store i32 0, ptr %i.cz, align 4, !tbaa !212, !noalias !1433
  %i.da = load ptr, ptr %i.cu, align 8, !tbaa !156, !noalias !1433
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !1433
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #41, !noalias !1433, !inline_history !1419
  %i.dd = load ptr, ptr %i.cu, align 8, !tbaa !156, !noalias !1433
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !noalias !1433
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #41, !noalias !1433, !inline_history !1419
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs12ProjectedCRSEEED2Ev.exit.i

bb.aq:                                            ; preds = %bb.ao
  %i.dg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166, !noalias !1433
  %.not.i.i.i.i72.i = icmp eq i8 %i.dg, 0
  br i1 %.not.i.i.i.i72.i, label %bb.as, label %bb.ar
end_hunk_1
begin_hunk_2_@_ZN5osgeo4proj2io9WKTParser7Private16buildVerticalCRSERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  %i.bt = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.bt, ptr %13, align 8, !tbaa !160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.bt, ptr noundef nonnull align 1 dereferenceable(15) @.str.224, i64 15, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 15, ptr %i.bu, align 8, !tbaa !164
  %i.bv = getelementptr inbounds nuw i8, ptr %13, i64 31
  store i8 0, ptr %i.bv, align 1, !tbaa !166
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj4util11PropertyMap3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.227)
          to label %bb.r unwind label %bb.al

bb.r:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #41
  store i8 0, ptr %14, align 8, !tbaa !302
  %i.bx = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 6 uses
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !160
  %i.bz = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 0, ptr %i.bz, align 8, !tbaa !164
  store i8 0, ptr %i.by, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #41
  store i8 0, ptr %15, align 8, !tbaa !380
  %i.ca = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.cb, ptr %8, align 8, !tbaa !160
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.cc, align 8, !tbaa !164
  store i8 0, ptr %i.cb, align 8, !tbaa !166
  invoke void @_ZN5osgeo4proj5datum17RealizationMethodC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cd = load ptr, ptr %8, align 8, !tbaa !163   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.cb
  br i1 %i.ce, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.s
  %i.cf = load i64, ptr %i.cb, align 8, !tbaa !166
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #44
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %8, align 8, !tbaa !163   ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.cb
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.t
  %i.ck = load i64, ptr %i.cb, align 8, !tbaa !166
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  br label %.critedge418

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  invoke void @_ZN5osgeo4proj5datum22VerticalReferenceFrame6createERKNS0_4util11PropertyMapERKNS3_8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKNS7_INS1_17RealizationMethodEEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.256") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 8 dereferenceable(40) %15)
          to label %.critedge400 unwind label %bb.am

bb.u:                                             ; preds = %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit456
  br i1 %i.ad, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #41
  invoke void @_ZN5osgeo4proj2io9WKTParser7Private27buildVerticalReferenceFrameERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEESE_(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.256") align 8 %16, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.bp)
          to label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum22VerticalReferenceFrameEEED2Ev.exit unwind label %bb.ap

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum22VerticalReferenceFrameEEED2Ev.exit: ; preds = %bb.v
  %i.cm = load <2 x ptr>, ptr %16, align 16, !tbaa !208
  store <2 x ptr> %i.cm, ptr %9, align 16, !tbaa !208
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #41
  br label %.critedge412

bb.w:                                             ; preds = %bb.u
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  br label %.critedge412

.critedge400:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.co = load <2 x ptr>, ptr %10, align 16, !tbaa !208
  store ptr null, ptr %i.cn, align 8, !tbaa !209
  store <2 x ptr> %i.co, ptr %9, align 16, !tbaa !208
  store ptr null, ptr %10, align 16, !tbaa !383
  call void @_ZN5osgeo4proj4util8CodeListD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.ca) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #41
  %i.cp = load ptr, ptr %i.bx, align 8, !tbaa !163 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.by
  br i1 %i.cq, label %_ZN5osgeo4proj4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i462

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i462: ; preds = %.critedge400
  %i.cr = load i64, ptr %i.by, align 8, !tbaa !166
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #44
  br label %_ZN5osgeo4proj4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN5osgeo4proj4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %.critedge400, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i462
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  %i.ct = load ptr, ptr %13, align 8, !tbaa !163  ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.bt
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5osgeo4proj4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.cv = load i64, ptr %i.bt, align 8, !tbaa !166
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5osgeo4proj4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  %i.cx = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !209 ; 8 uses
  %.not.i.i.i464 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i464, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameEEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 4 uses
  %i.da = load atomic i64, ptr %i.cz acquire, align 8 ; 2 uses
  %i.db = icmp eq i64 %i.da, 4294967297
  %i.dc = trunc i64 %i.da to i32                  ; 2 uses
  br i1 %i.db, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.cz, align 8, !tbaa !211
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  store i32 0, ptr %i.dd, align 4, !tbaa !212
  %i.de = load ptr, ptr %i.cy, align 8, !tbaa !156
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #41, !inline_history !30
  %i.dh = load ptr, ptr %i.cy, align 8, !tbaa !156
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #41, !inline_history !30
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameEEED2Ev.exit

bb.z:                                             ; preds = %bb.x
  %i.dk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i465 = icmp eq i8 %i.dk, 0
  br i1 %.not.i.i.i.i465, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dl = add nsw i32 %i.dc, -1
  store i32 %i.dl, ptr %i.cz, align 8, !tbaa !213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i466

bb.ab:                                            ; preds = %bb.z
  %i.dm = atomicrmw volatile add ptr %i.cz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i466

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i466: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i467 = phi i32 [ %i.dc, %bb.aa ], [ %i.dm, %bb.ab ]
  %i.dn = icmp eq i32 %.0.i.i.i.i.i467, 1
  br i1 %i.dn, label %bb.ac, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameEEED2Ev.exit, !prof !214

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i466
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #41
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameEEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i466, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  br label %.critedge412

.critedge412:                                     ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum22VerticalReferenceFrameEEED2Ev.exit, %bb.w, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #41
  br i1 %i.af, label %.thread, label %bb.ad

bb.ad:                                            ; preds = %.critedge412
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  invoke void @_ZN5osgeo4proj2io9WKTParser7Private18buildDatumEnsembleERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEERKSt10shared_ptrINS0_5datum13PrimeMeridianEEb(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.243") align 8 %18, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %19, i1 noundef zeroext false)
          to label %_ZNSt12__shared_ptrIN5osgeo4proj5datum13PrimeMeridianELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.aq

.thread:                                          ; preds = %.critedge412
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  br label %.critedge416

_ZNSt12__shared_ptrIN5osgeo4proj5datum13PrimeMeridianELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ad
  %i.do = load <2 x ptr>, ptr %18, align 16, !tbaa !208
  store <2 x ptr> %i.do, ptr %17, align 16, !tbaa !208
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #41
  br label %.critedge416

.critedge416:                                     ; preds = %.thread, %_ZNSt12__shared_ptrIN5osgeo4proj5datum13PrimeMeridianELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dp = load ptr, ptr %i.e, align 8, !tbaa !249 ; 2 uses
  %i.dq = load ptr, ptr %i.g, align 8, !tbaa !249 ; 2 uses
  %.not18.i473 = icmp eq ptr %i.dp, %i.dq
  br i1 %.not18.i473, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit477.thread, label %.lr.ph.i474

.lr.ph.i474:                                      ; preds = %.critedge416, %bb.ae
  %.sroa.013.019.i475 = phi ptr [ %i.du, %bb.ae ], [ %i.dp, %.critedge416 ] ; 4 uses
  %i.dr = load ptr, ptr %.sroa.013.019.i475, align 8, !tbaa !245
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !247
  %i.dt = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants3CS_B5cxx11E) #41
  br i1 %i.dt, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit477, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i474
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.013.019.i475, i64 8 ; 2 uses
  %.not.i476 = icmp eq ptr %i.du, %i.dq
  br i1 %.not.i476, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit477.thread, label %.lr.ph.i474

_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit477: ; preds = %.lr.ph.i474
  %i.dv = icmp eq ptr %.sroa.013.019.i475, @_ZN5osgeo4proj2ioL9null_nodeE
  br i1 %i.dv, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit477.thread, label %bb.as

_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit477.thread: ; preds = %bb.ae, %.critedge416, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit477
  %i.dw = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants7VERT_CSB5cxx11E) #41
  br i1 %i.dw, label %bb.as, label %bb.af

bb.af:                                            ; preds = %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit477.thread
  %i.dx = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants6VERTCSB5cxx11E) #41
  br i1 %i.dx, label %bb.as, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dy = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants11BASEVERTCRSB5cxx11E) #41
  br i1 %i.dy, label %bb.as, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke fastcc void @_ZN5osgeo4proj2ioL12ThrowMissingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants3CS_B5cxx11E) #42
          to label %bb.ai unwind label %bb.ar

bb.ai:                                            ; preds = %bb.ah
  unreachable

bb.aj:                                            ; preds = %bb.p
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %.critedge424

bb.ak:                                            ; preds = %bb.q
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.al:                                            ; preds = %._crit_edge.i.i
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5osgeo4proj4util8CodeListD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.ca) #41
  br label %.critedge418

.critedge418:                                     ; preds = %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i
  %.pn.pn.ph = phi { ptr, i32 } [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i ], [ %i.ec, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #41
  %i.ed = load ptr, ptr %i.bx, align 8, !tbaa !163 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.by
  br i1 %i.ee, label %_ZN5osgeo4proj4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit480, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i478

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i478: ; preds = %.critedge418
  %i.ef = load i64, ptr %i.by, align 8, !tbaa !166
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #44
  br label %_ZN5osgeo4proj4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit480

_ZN5osgeo4proj4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit480: ; preds = %.critedge418, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i478
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  br label %bb.an

bb.an:                                            ; preds = %_ZN5osgeo4proj4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit480, %bb.al
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %i.eb, %bb.al ], [ %.pn.pn.ph, %_ZN5osgeo4proj4util8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit480 ]
  %i.eh = load ptr, ptr %13, align 8, !tbaa !163  ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.bt
  br i1 %i.ei, label %.critedge421, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i481

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i481: ; preds = %bb.an
  %i.ej = load i64, ptr %i.bt, align 8, !tbaa !166
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #44
  br label %.critedge421

.critedge421:                                     ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i481
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  br label %bb.ao

bb.ao:                                            ; preds = %.critedge421, %bb.ak
  %.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.ea, %bb.ak ], [ %.pn.pn.pn.ph, %.critedge421 ]
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum22GeodeticReferenceFrameEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #41
  br label %.critedge424

bb.ap:                                            ; preds = %bb.v
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #41
  br label %.critedge426

.critedge424:                                     ; preds = %bb.ao, %bb.aj
  %.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.dz, %bb.aj ], [ %.pn.pn.pn.pn.pn.ph, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  br label %.critedge426

bb.aq:                                            ; preds = %bb.ad
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5osgeo4proj5datum13PrimeMeridianELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #41
  br label %bb.uq

bb.ar:                                            ; preds = %bb.ah
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.up

bb.as:                                            ; preds = %bb.ag, %bb.af, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit477.thread, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit477
  %i.eo = phi ptr [ @_ZN5osgeo4proj2ioL9null_nodeE, %bb.ag ], [ @_ZN5osgeo4proj2ioL9null_nodeE, %bb.af ], [ @_ZN5osgeo4proj2ioL9null_nodeE, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit477.thread ], [ %.sroa.013.019.i475, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit477 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #41
  invoke void @_ZN5osgeo4proj2io9WKTParser7Private7buildCSERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEESE_RKNS0_6common13UnitOfMeasureE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.298") align 8 %21, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.eo, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) @_ZN5osgeo4proj6common13UnitOfMeasure4NONEE)
          to label %bb.at unwind label %bb.bh

bb.at:                                            ; preds = %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !1507)
  %i.ep = load ptr, ptr %21, align 8, !tbaa !443, !noalias !1507 ; 3 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10VerticalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.er = load ptr, ptr %i.ep, align 8, !tbaa !156, !noalias !1507
  %i.es = icmp eq ptr %i.er, getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5osgeo4proj2cs10VerticalCSE, i64 16)
  br i1 %i.es, label %bb.av, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10VerticalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit

bb.av:                                            ; preds = %bb.au
  store ptr %i.ep, ptr %20, align 16, !tbaa !411, !alias.scope !1507
  %i.et = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !209, !noalias !1507 ; 5 uses
  store ptr %i.ev, ptr %i.et, align 8, !tbaa !209, !alias.scope !1507
  %.not.i.i.i.i484 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i.i484, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exitthread-pre-split, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 3 uses
  %i.ex = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166, !noalias !1507
  %.not.i.i.i.i.i = icmp eq i8 %i.ex, 0
  br i1 %.not.i.i.i.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ey = load i32, ptr %i.ew, align 4, !tbaa !213, !noalias !1507
  %i.ez = add nsw i32 %i.ey, 1
  store i32 %i.ez, ptr %i.ew, align 4, !tbaa !213, !noalias !1507
  br label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10VerticalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit.thread

bb.ay:                                            ; preds = %bb.aw
  %i.fa = atomicrmw volatile add ptr %i.ew, i32 1 acq_rel, align 4, !noalias !1507 ; 0 uses
  br label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10VerticalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit.thread

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10VerticalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit: ; preds = %bb.at, %bb.au
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %20, i8 0, i64 16, i1 false), !alias.scope !1507
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %21, i64 8
  %.pre1116 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !209 ; 2 uses
  %.not.i.i.i485 = icmp eq ptr %.pre1116, null
  br i1 %.not.i.i.i485, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10VerticalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit.thread

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10VerticalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit.thread: ; preds = %bb.ax, %bb.ay, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10VerticalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit
  %i.fb = phi ptr [ %.pre1116, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10VerticalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit ], [ %i.ev, %bb.ay ], [ %i.ev, %bb.ax ] ; 7 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 4 uses
  %i.fd = load atomic i64, ptr %i.fc acquire, align 8 ; 2 uses
  %i.fe = icmp eq i64 %i.fd, 4294967297
  %i.ff = trunc i64 %i.fd to i32                  ; 2 uses
  br i1 %i.fe, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10VerticalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit.thread
  store i32 0, ptr %i.fc, align 8, !tbaa !211
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  store i32 0, ptr %i.fg, align 4, !tbaa !212
  %i.fh = load ptr, ptr %i.fb, align 8, !tbaa !156
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #41, !inline_history !58
  %i.fk = load ptr, ptr %i.fb, align 8, !tbaa !156
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #41, !inline_history !58
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exitthread-pre-split

bb.ba:                                            ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10VerticalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit.thread
  %i.fn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i486 = icmp eq i8 %i.fn, 0
  br i1 %.not.i.i.i.i486, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fo = add nsw i32 %i.ff, -1
  store i32 %i.fo, ptr %i.fc, align 8, !tbaa !213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i487

bb.bc:                                            ; preds = %bb.ba
  %i.fp = atomicrmw volatile add ptr %i.fc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i487

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i487: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i.i488 = phi i32 [ %i.ff, %bb.bb ], [ %i.fp, %bb.bc ]
  %i.fq = icmp eq i32 %.0.i.i.i.i.i488, 1
  br i1 %i.fq, label %bb.bd, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exitthread-pre-split, !prof !214

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i487
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fb) #41
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exitthread-pre-split

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exitthread-pre-split: ; preds = %bb.av, %bb.bd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i487, %bb.az
  %.pr1430 = load ptr, ptr %20, align 16, !tbaa !411
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exitthread-pre-split, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10VerticalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit
  %i.fr = phi ptr [ %.pr1430, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exitthread-pre-split ], [ null, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10VerticalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #41
  %.not1087 = icmp eq ptr %i.fr, null
  br i1 %.not1087, label %bb.be, label %bb.bk

bb.be:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.114, ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %bb.bf unwind label %bb.bi

bb.bf:                                            ; preds = %bb.be
  invoke fastcc void @_ZN5osgeo4proj2ioL22ThrowNotExpectedCSTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %22) #42
          to label %bb.bg unwind label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  unreachable

bb.bh:                                            ; preds = %bb.as
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #41
  br label %bb.uo

bb.bi:                                            ; preds = %bb.be
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit491

bb.bj:                                            ; preds = %bb.bf
  %i.fu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fv = load ptr, ptr %22, align 8, !tbaa !163  ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit491, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i489

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i489: ; preds = %bb.bj
  %i.fy = load i64, ptr %i.fw, align 8, !tbaa !166
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fz) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit491

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit491: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i489, %bb.bi
  %.pn310 = phi { ptr, i32 } [ %i.ft, %bb.bi ], [ %i.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i489 ], [ %i.fu, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #41
  br label %bb.un

bb.bk:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit
  %i.ga = load ptr, ptr %9, align 16, !tbaa !383  ; 2 uses
  %.not1088 = icmp eq ptr %i.ga, null
  br i1 %.not1088, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit493.thread1065, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj5datum22VerticalReferenceFrame16getWKT1DatumTypeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.ga)
          to label %bb.bm unwind label %bb.do     ; 2 uses

bb.bm:                                            ; preds = %bb.bl
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !164
  %i.ge = icmp eq i64 %i.gd, 4
  br i1 %i.ge, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit493, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit493.thread1065

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit493: ; preds = %bb.bm
  %i.gf = load ptr, ptr %i.gb, align 8, !tbaa !163
  %i.gg = load i32, ptr %i.gf, align 1
  %i.gh = icmp ne i32 %i.gg, 842018866
  %i.gi = zext i1 %i.gh to i32
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit493.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit493.thread1065

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit493.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit493
  %i.gk = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj2cs16CoordinateSystem8axisListEv(ptr noundef nonnull align 8 dereferenceable(56) %i.fr) #45
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !425
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !424
  %i.gn = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj2cs20CoordinateSystemAxis9directionEv(ptr noundef nonnull align 8 dereferenceable(56) %i.gm) #45
  %i.go = icmp eq ptr %i.gn, @_ZN5osgeo4proj2cs13AxisDirection2UPE
  br i1 %i.go, label %bb.bn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit493.thread1065

bb.bn:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit493.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #41
  invoke void @_ZN5osgeo4proj4util11PropertyMapC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %bb.bo unwind label %bb.cq

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #41
  invoke void @_ZN5osgeo4proj4util11PropertyMapC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %bb.bp unwind label %bb.cr

bb.bp:                                            ; preds = %bb.bo
  %i.gp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj4util11PropertyMap3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj6common16IdentifiedObject8NAME_KEYB5cxx11E, ptr noundef nonnull @.str.228)
          to label %._crit_edge.i.i494 unwind label %bb.cs

._crit_edge.i.i494:                               ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #41
  %i.gq = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 6 uses
  store ptr %i.gq, ptr %28, align 8, !tbaa !160
  store i8 104, ptr %i.gq, align 8, !tbaa !166
  %i.gr = getelementptr inbounds nuw i8, ptr %28, i64 8
end_hunk_2
begin_hunk_3_@_ZN5osgeo4proj2ioL30buildTransformationForBoundCRSERSt10shared_ptrINS1_15DatabaseContextEERKNS0_4util11PropertyMapES9_RKN7dropbox6oxygen2nnIS2_INS0_3crs3CRSEEEESI_RSt6vectorINSC_IS2_INS0_9operation18OperationParameterEEEESaISN_EERSJ_INSC_IS2_INSK_14ParameterValueEEEESaIST_EE:bb.a
bb.aa:                                            ; preds = %bb.x, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bs = load ptr, ptr %i.ax, align 8, !tbaa !209 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj9operation14ParameterValueELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 4 uses
  %i.bu = load atomic i64, ptr %i.bt acquire, align 8 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 4294967297
  %i.bw = trunc i64 %i.bu to i32                  ; 2 uses
  br i1 %i.bv, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.bt, align 8, !tbaa !211
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i32 0, ptr %i.bx, align 4, !tbaa !212
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !156
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #41, !inline_history !74
  %i.cb = load ptr, ptr %i.bs, align 8, !tbaa !156
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #41, !inline_history !74
  br label %_ZNSt12__shared_ptrIN5osgeo4proj9operation14ParameterValueELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %i.ce = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i30 = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i.i30, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cf = add nsw i32 %i.bw, -1
  store i32 %i.cf, ptr %i.bt, align 8, !tbaa !213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.cg = atomicrmw volatile add ptr %i.bt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i = phi i32 [ %i.bw, %bb.ae ], [ %i.cg, %bb.af ]
  %i.ch = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ch, label %bb.ag, label %_ZNSt12__shared_ptrIN5osgeo4proj9operation14ParameterValueELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !214

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #41
  br label %_ZNSt12__shared_ptrIN5osgeo4proj9operation14ParameterValueELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj9operation14ParameterValueELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.aa, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  br label %.critedge

bb.ah:                                            ; preds = %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.br, %bb.z ], [ %i.bq, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  br label %bb.au

.critedge:                                        ; preds = %bb.k, %bb.m, %bb.r, %_ZNSt12__shared_ptrIN5osgeo4proj9operation14ParameterValueELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.l, %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !209 ; 8 uses
  %.not.i.i.i31 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i31, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %.critedge
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 4 uses
  %i.cl = load atomic i64, ptr %i.ck acquire, align 8 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 4294967297
  %i.cn = trunc i64 %i.cl to i32                  ; 2 uses
  br i1 %i.cm, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.ck, align 8, !tbaa !211
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  store i32 0, ptr %i.co, align 4, !tbaa !212
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !156
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #41, !inline_history !63
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !156
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #41, !inline_history !63
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit

bb.ak:                                            ; preds = %bb.ai
  %i.cv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i32 = icmp eq i8 %i.cv, 0
  br i1 %.not.i.i.i.i32, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cw = add nsw i32 %i.cn, -1
  store i32 %i.cw, ptr %i.ck, align 8, !tbaa !213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.cx = atomicrmw volatile add ptr %i.ck, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i.i = phi i32 [ %i.cn, %bb.al ], [ %i.cx, %bb.am ]
  %i.cy = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.cy, label %bb.an, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit, !prof !214

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #41
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit: ; preds = %.critedge, %bb.aj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !209 ; 8 uses
  %.not.i.i33 = icmp eq ptr %i.da, null
  br i1 %.not.i.i33, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 4 uses
  %i.dc = load atomic i64, ptr %i.db acquire, align 8 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 4294967297
  %i.de = trunc i64 %i.dc to i32                  ; 2 uses
  br i1 %i.dd, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.db, align 8, !tbaa !211
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 0, ptr %i.df, align 4, !tbaa !212
  %i.dg = load ptr, ptr %i.da, align 8, !tbaa !156
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #41, !inline_history !66
  %i.dj = load ptr, ptr %i.da, align 8, !tbaa !156
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #41, !inline_history !66
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aq:                                            ; preds = %bb.ao
  %i.dm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i34 = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i34, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dn = add nsw i32 %i.de, -1
  store i32 %i.dn, ptr %i.db, align 8, !tbaa !213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i35

bb.as:                                            ; preds = %bb.aq
  %i.do = atomicrmw volatile add ptr %i.db, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i35

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i35: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i36 = phi i32 [ %i.de, %bb.ar ], [ %i.do, %bb.as ]
  %i.dp = icmp eq i32 %.0.i.i.i.i36, 1
  br i1 %i.dp, label %bb.at, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !214

bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i35
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #41
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit, %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i35, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  ret void

bb.au:                                            ; preds = %bb.ah, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ah ], [ %i.al, %bb.p ]
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation14TransformationEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #41
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.au ], [ %i.ak, %bb.o ]
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #41
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.av ], [ %i.aj, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  call void @_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare void @_ZN5osgeo4proj3crs8BoundCRS6createERKNS0_4util11PropertyMapERKN7dropbox6oxygen2nnISt10shared_ptrINS1_3CRSEEEESF_RKNS9_ISA_INS0_9operation14TransformationEEEE(ptr dead_on_unwind writable sret(%"class.dropbox::oxygen::nn.630") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj2io9WKTParser7Private15buildTemporalCSERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.dropbox::oxygen::nn.647") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.dropbox::oxygen::nn.298", align 8 ; 8 uses
  %4 = alloca %"class.std::shared_ptr.648", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !245
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !247  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !249  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !249  ; 2 uses
  %.not18.i = icmp eq ptr %i.d, %i.f
  br i1 %.not18.i, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.sroa.013.019.i = phi ptr [ %i.j, %bb.b ], [ %i.d, %bb.a ] ; 4 uses
  %i.g = load ptr, ptr %.sroa.013.019.i, align 8, !tbaa !245
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !247
  %i.i = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants3CS_B5cxx11E) #41
  br i1 %i.i, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.019.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.j, %i.f
  br i1 %.not.i, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.lr.ph.i

_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i
  %i.k = icmp eq ptr %.sroa.013.019.i, @_ZN5osgeo4proj2ioL9null_nodeE
  br i1 %i.k, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %bb.d

_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %bb.b, %bb.a, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.l = load ptr, ptr %2, align 8, !tbaa !245
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !247
  %i.n = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants11BASETIMECRSB5cxx11E) #41
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  tail call fastcc void @_ZN5osgeo4proj2ioL12ThrowMissingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants3CS_B5cxx11E) #42
  unreachable

bb.d:                                             ; preds = %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.o = phi ptr [ @_ZN5osgeo4proj2ioL9null_nodeE, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ], [ %.sroa.013.019.i, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @_ZN5osgeo4proj2io9WKTParser7Private7buildCSERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEESE_RKNS0_6common13UnitOfMeasureE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.298") align 8 %3, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) @_ZN5osgeo4proj6common13UnitOfMeasure4NONEE)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1550)
  %i.p = load ptr, ptr %3, align 8, !tbaa !443, !noalias !1550 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10TemporalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit.thread33, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = tail call ptr @__dynamic_cast(ptr nonnull %i.p, ptr nonnull @_ZTIN5osgeo4proj2cs16CoordinateSystemE, ptr nonnull @_ZTIN5osgeo4proj2cs10TemporalCSE, i64 0) #41, !noalias !1550 ; 4 uses
  %.not.i11 = icmp eq ptr %i.r, null
  br i1 %.not.i11, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10TemporalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit.thread33, label %bb.f

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10TemporalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit.thread33: ; preds = %bb.d, %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !alias.scope !1550
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.r, ptr %4, align 8, !tbaa !622, !alias.scope !1550
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !209, !noalias !1550 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !209, !alias.scope !1550
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10TemporalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166, !noalias !1550
  %.not.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10TemporalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load i32, ptr %i.v, align 4, !tbaa !213, !noalias !1550
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.v, align 4, !tbaa !213, !noalias !1550
  br label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10TemporalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit.thread

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10TemporalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit: ; preds = %bb.g
  %i.z = atomicrmw volatile add ptr %i.v, i32 1 acq_rel, align 4, !noalias !1550 ; 0 uses
  %.pr.pre = load ptr, ptr %4, align 8, !tbaa !622 ; 2 uses
  %.not = icmp eq ptr %.pr.pre, null
  br i1 %.not, label %bb.i, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10TemporalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit.thread

bb.i:                                             ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10TemporalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit.thread33, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10TemporalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.122, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_ZN5osgeo4proj2ioL22ThrowNotExpectedCSTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %5) #42
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.m:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %5, align 8, !tbaa !163   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !166
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.l
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.l ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ab, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @_ZNSt12__shared_ptrIN5osgeo4proj2cs10TemporalCSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  resume { ptr, i32 } %.pn

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10TemporalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit.thread: ; preds = %bb.h, %bb.f, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10TemporalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit
  %i.ah = phi ptr [ %.pr.pre, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10TemporalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit ], [ %i.r, %bb.f ], [ %i.r, %bb.h ]
  store ptr %i.ah, ptr %0, align 8, !tbaa !622
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !209 ; 4 uses
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !209
  %.not.i.i.i.i12 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i12, label %_ZNSt12__shared_ptrIN5osgeo4proj2cs10TemporalCSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10TemporalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit.thread
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i.i13 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i.i13, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs10TemporalCSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs10TemporalCSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.thread

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs10TemporalCSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.thread: ; preds = %bb.n
  %i.an = load i32, ptr %i.al, align 4, !tbaa !213
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.al, align 4, !tbaa !213
  br label %bb.o

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs10TemporalCSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit: ; preds = %bb.n
  %i.ap = atomicrmw volatile add ptr %i.al, i32 1 acq_rel, align 4 ; 0 uses
  %.pr16.pre = load ptr, ptr %i.aj, align 8, !tbaa !209 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr16.pre, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj2cs10TemporalCSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs10TemporalCSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.thread, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs10TemporalCSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit
  %.pr1637 = phi ptr [ %i.ak, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs10TemporalCSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.thread ], [ %.pr16.pre, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs10TemporalCSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit ] ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.pr1637, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.aq, align 8, !tbaa !211
  %i.au = getelementptr inbounds nuw i8, ptr %.pr1637, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !212
  %i.av = load ptr, ptr %.pr1637, align 8, !tbaa !156
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %.pr1637) #41, !inline_history !100
  %i.ay = load ptr, ptr %.pr1637, align 8, !tbaa !156
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %.pr1637) #41, !inline_history !100
  br label %_ZNSt12__shared_ptrIN5osgeo4proj2cs10TemporalCSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i = phi i32 [ %i.at, %bb.r ], [ %i.bd, %bb.s ]
  %i.be = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.be, label %bb.t, label %_ZNSt12__shared_ptrIN5osgeo4proj2cs10TemporalCSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !214

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr1637) #41
  br label %_ZNSt12__shared_ptrIN5osgeo4proj2cs10TemporalCSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj2cs10TemporalCSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs10TemporalCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit.thread, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs10TemporalCSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !209 ; 8 uses
  %.not.i.i.i14 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i14, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj2cs10TemporalCSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 4 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 4294967297
  %i.bk = trunc i64 %i.bi to i32                  ; 2 uses
  br i1 %i.bj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.bh, align 8, !tbaa !211
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 0, ptr %i.bl, align 4, !tbaa !212
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !156
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  tail call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #41, !inline_history !58
  %i.bp = load ptr, ptr %i.bg, align 8, !tbaa !156
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #41, !inline_history !58
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i15 = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i.i.i15, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = add nsw i32 %i.bk, -1
  store i32 %i.bt, ptr %i.bh, align 8, !tbaa !213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.bu = atomicrmw volatile add ptr %i.bh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
end_hunk_3
begin_hunk_4_@_ZN5osgeo4proj2io9WKTParser7Private23buildDerivedTemporalCRSERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEE:bb.a

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation10ConversionEEED2Ev.exit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs10TemporalCSEEED2Ev.exit, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i21, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !209 ; 8 uses
  %.not.i.i.i23 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i23, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11TemporalCRSEEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation10ConversionEEED2Ev.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.ba, align 8, !tbaa !211
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !212
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !156
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41, !inline_history !103
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !156
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41, !inline_history !103
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11TemporalCRSEEED2Ev.exit

bb.v:                                             ; preds = %bb.t
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i24 = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i.i24, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i25

bb.x:                                             ; preds = %bb.v
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i25

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i25: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i26 = phi i32 [ %i.bd, %bb.w ], [ %i.bn, %bb.x ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i26, 1
  br i1 %i.bo, label %bb.y, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11TemporalCRSEEED2Ev.exit, !prof !214

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i25
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11TemporalCRSEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11TemporalCRSEEED2Ev.exit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation10ConversionEEED2Ev.exit, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i25, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  ret void

bb.z:                                             ; preds = %bb.d
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.aa:                                            ; preds = %bb.e
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.f
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs10TemporalCSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #41
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.br, %bb.ab ], [ %i.bq, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation10ConversionEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #41
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ac ], [ %i.bp, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11TemporalCRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN5osgeo4proj3crs18DerivedCRSTemplateINS1_24DerivedTemporalCRSTraitsEE6createERKNS0_4util11PropertyMapERKN7dropbox6oxygen2nnISt10shared_ptrINS1_11TemporalCRSEEEERKNSB_ISC_INS0_9operation10ConversionEEEERKNSB_ISC_INS0_2cs10TemporalCSEEEE(ptr dead_on_unwind writable sret(%"class.dropbox::oxygen::nn.655") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11TemporalCRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !209  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs11TemporalCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !211
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !212
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !156
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41, !inline_history !104
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !156
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41, !inline_history !104
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs11TemporalCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

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
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs11TemporalCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !214

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs11TemporalCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj3crs11TemporalCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj2io9WKTParser7Private19buildEngineeringCRSERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEE(ptr dead_on_unwind noalias writable sret(%"class.dropbox::oxygen::nn.659") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.dropbox::oxygen::nn.298", align 8 ; 7 uses
  %4 = alloca %"class.dropbox::oxygen::nn.605", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !245
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !247  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !249  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !249  ; 2 uses
  %.not25.i = icmp eq ptr %i.d, %i.f
  br i1 %.not25.i, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.sroa.017.026.i = phi ptr [ %i.k, %bb.c ], [ %i.d, %bb.a ] ; 4 uses
  %i.g = load ptr, ptr %.sroa.017.026.i, align 8, !tbaa !245
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !247  ; 2 uses
  %i.i = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants6EDATUMB5cxx11E) #41
  br i1 %i.i, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants16ENGINEERINGDATUMB5cxx11E) #41
  br i1 %i.j, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.017.026.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.k, %i.f
  br i1 %.not.i, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_.exit.thread, label %.lr.ph.i

_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_.exit: ; preds = %.lr.ph.i, %bb.b
  %i.l = icmp eq ptr %.sroa.017.026.i, @_ZN5osgeo4proj2ioL9null_nodeE
  br i1 %i.l, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_.exit.thread, label %bb.f

_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_.exit.thread: ; preds = %bb.c, %bb.a, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_.exit
  %i.m = tail call ptr @__cxa_allocate_exception(i64 40) #41 ; 3 uses
  invoke void @_ZN5osgeo4proj2io16ParsingExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull @.str.252)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_.exit.thread
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
  unreachable

bb.e:                                             ; preds = %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_.exit.thread
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.m) #41
  br label %bb.ad

bb.f:                                             ; preds = %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_.exit
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !249  ; 2 uses
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !249  ; 2 uses
  %.not18.i = icmp eq ptr %i.o, %i.p
  br i1 %.not18.i, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %bb.f, %bb.g
  %.sroa.013.019.i = phi ptr [ %i.t, %bb.g ], [ %i.o, %bb.f ] ; 4 uses
  %i.q = load ptr, ptr %.sroa.013.019.i, align 8, !tbaa !245
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !247
  %i.s = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants3CS_B5cxx11E) #41
  br i1 %i.s, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i19
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.019.i, i64 8 ; 2 uses
  %.not.i20 = icmp eq ptr %i.t, %i.p
  br i1 %.not.i20, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.lr.ph.i19

_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i19
  %i.u = icmp eq ptr %.sroa.013.019.i, @_ZN5osgeo4proj2ioL9null_nodeE
  br i1 %i.u, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %bb.i

_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %bb.g, %bb.f, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.v = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants10BASEENGCRSB5cxx11E) #41
  br i1 %i.v, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  tail call fastcc void @_ZN5osgeo4proj2ioL12ThrowMissingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants3CS_B5cxx11E) #42
  unreachable

bb.i:                                             ; preds = %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.w = phi ptr [ @_ZN5osgeo4proj2ioL9null_nodeE, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ], [ %.sroa.013.019.i, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @_ZN5osgeo4proj2io9WKTParser7Private7buildCSERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEESE_RKNS0_6common13UnitOfMeasureE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.298") align 8 %3, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) @_ZN5osgeo4proj6common13UnitOfMeasure4NONEE)
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj2io9WKTParser7Private15buildPropertiesERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEEbb(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.y

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  invoke void @_ZN5osgeo4proj2io9WKTParser7Private21buildEngineeringDatumERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.605") align 8 %4, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.017.026.i)
          to label %bb.k unwind label %bb.z

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5osgeo4proj3crs14EngineeringCRS6createERKNS0_4util11PropertyMapERKN7dropbox6oxygen2nnISt10shared_ptrINS0_5datum16EngineeringDatumEEEERKNS9_ISA_INS0_2cs16CoordinateSystemEEEE(ptr dead_on_unwind writable sret(%"class.dropbox::oxygen::nn.659") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.l unwind label %bb.aa

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !209  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum16EngineeringDatumEEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.aa, align 8, !tbaa !211
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !212
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !156
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #41, !inline_history !105
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !156
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #41, !inline_history !105
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum16EngineeringDatumEEED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = add nsw i32 %i.ad, -1
  store i32 %i.am, ptr %i.aa, align 8, !tbaa !213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.an = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi i32 [ %i.ad, %bb.p ], [ %i.an, %bb.q ]
  %i.ao = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ao, label %bb.r, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum16EngineeringDatumEEED2Ev.exit, !prof !214

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #41
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum16EngineeringDatumEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum16EngineeringDatumEEED2Ev.exit: ; preds = %bb.l, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !209 ; 8 uses
  %.not.i.i.i21 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i21, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum16EngineeringDatumEEED2Ev.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 4 uses
  %i.as = load atomic i64, ptr %i.ar acquire, align 8 ; 2 uses
  %i.at = icmp eq i64 %i.as, 4294967297
  %i.au = trunc i64 %i.as to i32                  ; 2 uses
  br i1 %i.at, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.ar, align 8, !tbaa !211
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 0, ptr %i.av, align 4, !tbaa !212
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !156
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #41, !inline_history !58
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !156
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #41, !inline_history !58
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i22 = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i.i22, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bd = add nsw i32 %i.au, -1
  store i32 %i.bd, ptr %i.ar, align 8, !tbaa !213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23

bb.w:                                             ; preds = %bb.u
  %i.be = atomicrmw volatile add ptr %i.ar, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i24 = phi i32 [ %i.au, %bb.v ], [ %i.be, %bb.w ]
  %i.bf = icmp eq i32 %.0.i.i.i.i.i24, 1
  br i1 %i.bf, label %bb.x, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit, !prof !214

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #41
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum16EngineeringDatumEEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i23, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  ret void

bb.y:                                             ; preds = %bb.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.z:                                             ; preds = %bb.j
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum16EngineeringDatumEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #41
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.aa ], [ %i.bh, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ab ], [ %i.bg, %bb.y ]
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.e
  %.pn17 = phi { ptr, i32 } [ %i.n, %bb.e ], [ %.pn.pn, %bb.ac ]
  resume { ptr, i32 } %.pn17
}

declare void @_ZN5osgeo4proj3crs14EngineeringCRS6createERKNS0_4util11PropertyMapERKN7dropbox6oxygen2nnISt10shared_ptrINS0_5datum16EngineeringDatumEEEERKNS9_ISA_INS0_2cs16CoordinateSystemEEEE(ptr dead_on_unwind writable sret(%"class.dropbox::oxygen::nn.659") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum16EngineeringDatumEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !209  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj5datum16EngineeringDatumELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !211
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !212
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !156
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41, !inline_history !1552
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !156
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41, !inline_history !1552
  br label %_ZNSt12__shared_ptrIN5osgeo4proj5datum16EngineeringDatumELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

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
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5osgeo4proj5datum16EngineeringDatumELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !214
end_hunk_4
begin_hunk_5_@_ZN5osgeo4proj2io9WKTParser7Private26buildDerivedEngineeringCRSERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEE:bb.a
bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.aw, align 8, !tbaa !211
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i32 0, ptr %i.ba, align 4, !tbaa !212
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !156
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #41, !inline_history !64
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !156
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #41, !inline_history !64
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation10ConversionEEED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i34 = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i.i34, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bi = add nsw i32 %i.az, -1
  store i32 %i.bi, ptr %i.aw, align 8, !tbaa !213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i35

bb.z:                                             ; preds = %bb.x
  %i.bj = atomicrmw volatile add ptr %i.aw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i35

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i35: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i36 = phi i32 [ %i.az, %bb.y ], [ %i.bj, %bb.z ]
  %i.bk = icmp eq i32 %.0.i.i.i.i.i36, 1
  br i1 %i.bk, label %bb.aa, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation10ConversionEEED2Ev.exit, !prof !214

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i35
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #41
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation10ConversionEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation10ConversionEEED2Ev.exit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i35, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !209 ; 8 uses
  %.not.i.i.i37 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i37, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs14EngineeringCRSEEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation10ConversionEEED2Ev.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 4 uses
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 4294967297
  %i.bq = trunc i64 %i.bo to i32                  ; 2 uses
  br i1 %i.bp, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.bn, align 8, !tbaa !211
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !212
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !156
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #41, !inline_history !106
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !156
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #41, !inline_history !106
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs14EngineeringCRSEEED2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i38 = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i38, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bz = add nsw i32 %i.bq, -1
  store i32 %i.bz, ptr %i.bn, align 8, !tbaa !213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i39

bb.af:                                            ; preds = %bb.ad
  %i.ca = atomicrmw volatile add ptr %i.bn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i39

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i39: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i40 = phi i32 [ %i.bq, %bb.ae ], [ %i.ca, %bb.af ]
  %i.cb = icmp eq i32 %.0.i.i.i.i.i40, 1
  br i1 %i.cb, label %bb.ag, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs14EngineeringCRSEEED2Ev.exit, !prof !214

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i39
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #41
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs14EngineeringCRSEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs14EngineeringCRSEEED2Ev.exit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation10ConversionEEED2Ev.exit, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i39, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  ret void

bb.ah:                                            ; preds = %bb.l
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %bb.n, %bb.m
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #41
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.cd, %bb.ai ], [ %i.cc, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.k
  %.pn18 = phi { ptr, i32 } [ %i.ab, %bb.k ], [ %.pn, %bb.aj ]
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation10ConversionEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #41
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.j
  %.pn18.pn = phi { ptr, i32 } [ %.pn18, %bb.ak ], [ %i.aa, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.e
  %.pn21 = phi { ptr, i32 } [ %i.s, %bb.e ], [ %.pn18.pn, %bb.al ]
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs14EngineeringCRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  resume { ptr, i32 } %.pn21
}

declare void @_ZN5osgeo4proj3crs18DerivedCRSTemplateINS1_27DerivedEngineeringCRSTraitsEE6createERKNS0_4util11PropertyMapERKN7dropbox6oxygen2nnISt10shared_ptrINS1_14EngineeringCRSEEEERKNSB_ISC_INS0_9operation10ConversionEEEERKNSB_ISC_INS0_2cs16CoordinateSystemEEEE(ptr dead_on_unwind writable sret(%"class.dropbox::oxygen::nn.664") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs14EngineeringCRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !209  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs14EngineeringCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !211
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !212
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !156
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41, !inline_history !107
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !156
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41, !inline_history !107
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs14EngineeringCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

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
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs14EngineeringCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !214

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs14EngineeringCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj3crs14EngineeringCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj2io9WKTParser7Private17buildParametricCSERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.dropbox::oxygen::nn.314") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.dropbox::oxygen::nn.298", align 8 ; 8 uses
  %4 = alloca %"class.std::shared_ptr.315", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !245
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !247  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !249  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !249  ; 2 uses
  %.not18.i = icmp eq ptr %i.d, %i.f
  br i1 %.not18.i, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.sroa.013.019.i = phi ptr [ %i.j, %bb.b ], [ %i.d, %bb.a ] ; 4 uses
  %i.g = load ptr, ptr %.sroa.013.019.i, align 8, !tbaa !245
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !247
  %i.i = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants3CS_B5cxx11E) #41
  br i1 %i.i, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.019.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.j, %i.f
  br i1 %.not.i, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.lr.ph.i

_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i
  %i.k = icmp eq ptr %.sroa.013.019.i, @_ZN5osgeo4proj2ioL9null_nodeE
  br i1 %i.k, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %bb.d

_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %bb.b, %bb.a, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.l = load ptr, ptr %2, align 8, !tbaa !245
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !247
  %i.n = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants12BASEPARAMCRSB5cxx11E) #41
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  tail call fastcc void @_ZN5osgeo4proj2ioL12ThrowMissingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants3CS_B5cxx11E) #42
  unreachable

bb.d:                                             ; preds = %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.o = phi ptr [ @_ZN5osgeo4proj2ioL9null_nodeE, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ], [ %.sroa.013.019.i, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @_ZN5osgeo4proj2io9WKTParser7Private7buildCSERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEESE_RKNS0_6common13UnitOfMeasureE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.298") align 8 %3, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) @_ZN5osgeo4proj6common13UnitOfMeasure4NONEE)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1555)
  %i.p = load ptr, ptr %3, align 8, !tbaa !443, !noalias !1555 ; 5 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs12ParametricCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit.thread31, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !156, !noalias !1555
  %i.s = icmp eq ptr %i.r, getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5osgeo4proj2cs12ParametricCSE, i64 16)
  br i1 %i.s, label %bb.f, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs12ParametricCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit.thread31

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs12ParametricCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit.thread31: ; preds = %bb.d, %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !alias.scope !1555
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.p, ptr %4, align 8, !tbaa !414, !alias.scope !1555
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !209, !noalias !1555 ; 3 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !209, !alias.scope !1555
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs12ParametricCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166, !noalias !1555
  %.not.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs12ParametricCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load i32, ptr %i.w, align 4, !tbaa !213, !noalias !1555
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.w, align 4, !tbaa !213, !noalias !1555
  br label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs12ParametricCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit.thread

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs12ParametricCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit: ; preds = %bb.g
  %i.aa = atomicrmw volatile add ptr %i.w, i32 1 acq_rel, align 4, !noalias !1555 ; 0 uses
  %.pr.pre = load ptr, ptr %4, align 8, !tbaa !414 ; 2 uses
  %.not = icmp eq ptr %.pr.pre, null
  br i1 %.not, label %bb.i, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs12ParametricCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit.thread

bb.i:                                             ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs12ParametricCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit.thread31, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs12ParametricCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.120, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_ZN5osgeo4proj2ioL22ThrowNotExpectedCSTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %5) #42
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.m:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %5, align 8, !tbaa !163   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !166
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.l ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ac, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @_ZNSt12__shared_ptrIN5osgeo4proj2cs12ParametricCSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  resume { ptr, i32 } %.pn

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs12ParametricCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit.thread: ; preds = %bb.h, %bb.f, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs12ParametricCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit
  %i.ai = phi ptr [ %.pr.pre, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs12ParametricCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit ], [ %i.p, %bb.f ], [ %i.p, %bb.h ]
  store ptr %i.ai, ptr %0, align 8, !tbaa !414
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !209 ; 4 uses
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !209
  %.not.i.i.i.i11 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i11, label %_ZNSt12__shared_ptrIN5osgeo4proj2cs12ParametricCSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs12ParametricCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i.i12 = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i.i12, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs12ParametricCSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs12ParametricCSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.thread

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs12ParametricCSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.thread: ; preds = %bb.n
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !213
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !213
  br label %bb.o

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs12ParametricCSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit: ; preds = %bb.n
  %i.aq = atomicrmw volatile add ptr %i.am, i32 1 acq_rel, align 4 ; 0 uses
  %.pr15.pre = load ptr, ptr %i.ak, align 8, !tbaa !209 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr15.pre, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj2cs12ParametricCSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs12ParametricCSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.thread, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs12ParametricCSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit
  %.pr1535 = phi ptr [ %i.al, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs12ParametricCSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.thread ], [ %.pr15.pre, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs12ParametricCSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit ] ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.pr1535, i64 8 ; 4 uses
  %i.as = load atomic i64, ptr %i.ar acquire, align 8 ; 2 uses
  %i.at = icmp eq i64 %i.as, 4294967297
  %i.au = trunc i64 %i.as to i32                  ; 2 uses
  br i1 %i.at, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.ar, align 8, !tbaa !211
  %i.av = getelementptr inbounds nuw i8, ptr %.pr1535, i64 12
  store i32 0, ptr %i.av, align 4, !tbaa !212
  %i.aw = load ptr, ptr %.pr1535, align 8, !tbaa !156
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %.pr1535) #41, !inline_history !49
  %i.az = load ptr, ptr %.pr1535, align 8, !tbaa !156
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %.pr1535) #41, !inline_history !49
  br label %_ZNSt12__shared_ptrIN5osgeo4proj2cs12ParametricCSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = add nsw i32 %i.au, -1
  store i32 %i.bd, ptr %i.ar, align 8, !tbaa !213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.be = atomicrmw volatile add ptr %i.ar, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i = phi i32 [ %i.au, %bb.r ], [ %i.be, %bb.s ]
  %i.bf = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bf, label %bb.t, label %_ZNSt12__shared_ptrIN5osgeo4proj2cs12ParametricCSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !214

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr1535) #41
  br label %_ZNSt12__shared_ptrIN5osgeo4proj2cs12ParametricCSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj2cs12ParametricCSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj2cs12ParametricCSENS4_16CoordinateSystemEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit.thread, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs12ParametricCSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !209 ; 8 uses
  %.not.i.i.i13 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i13, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj2cs12ParametricCSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 4 uses
  %i.bj = load atomic i64, ptr %i.bi acquire, align 8 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 4294967297
  %i.bl = trunc i64 %i.bj to i32                  ; 2 uses
  br i1 %i.bk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.bi, align 8, !tbaa !211
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store i32 0, ptr %i.bm, align 4, !tbaa !212
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !156
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #41, !inline_history !58
  %i.bq = load ptr, ptr %i.bh, align 8, !tbaa !156
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  tail call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #41, !inline_history !58
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs16CoordinateSystemEEED2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.bt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i14 = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i.i14, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bu = add nsw i32 %i.bl, -1
  store i32 %i.bu, ptr %i.bi, align 8, !tbaa !213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.bv = atomicrmw volatile add ptr %i.bi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
end_hunk_5
begin_hunk_6_@_ZN5osgeo4proj2io9WKTParser7Private25buildDerivedParametricCRSERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEE:bb.a
bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i25
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #41
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13ParametricCRSEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13ParametricCRSEEED2Ev.exit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation10ConversionEEED2Ev.exit, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i25, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  ret void

bb.z:                                             ; preds = %bb.d
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.aa:                                            ; preds = %bb.e
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.f
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2cs12ParametricCSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #41
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.br, %bb.ab ], [ %i.bq, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation10ConversionEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #41
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ac ], [ %i.bp, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13ParametricCRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN5osgeo4proj3crs18DerivedCRSTemplateINS1_26DerivedParametricCRSTraitsEE6createERKNS0_4util11PropertyMapERKN7dropbox6oxygen2nnISt10shared_ptrINS1_13ParametricCRSEEEERKNSB_ISC_INS0_9operation10ConversionEEEERKNSB_ISC_INS0_2cs12ParametricCSEEEE(ptr dead_on_unwind writable sret(%"class.dropbox::oxygen::nn.672") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13ParametricCRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !209  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs13ParametricCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !211
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !212
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !156
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41, !inline_history !111
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !156
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41, !inline_history !111
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs13ParametricCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

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
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs13ParametricCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !214

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #41
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs13ParametricCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj3crs13ParametricCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj2io9WKTParser7Private24buildDerivedProjectedCRSERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEE(ptr dead_on_unwind noalias writable sret(%"class.dropbox::oxygen::nn.676") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.dropbox::oxygen::nn.580", align 8 ; 11 uses
  %4 = alloca %"class.osgeo::proj::common::UnitOfMeasure", align 8 ; 7 uses
  %5 = alloca %"class.dropbox::oxygen::nn.409", align 8 ; 7 uses
  %6 = alloca %"class.dropbox::oxygen::nn.298", align 8 ; 8 uses
  %7 = alloca %"class.dropbox::oxygen::nn.405", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !245
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !247  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !249  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !249  ; 2 uses
  %.not18.i = icmp eq ptr %i.d, %i.f
  br i1 %.not18.i, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.sroa.013.019.i = phi ptr [ %i.j, %bb.b ], [ %i.d, %bb.a ] ; 4 uses
  %i.g = load ptr, ptr %.sroa.013.019.i, align 8, !tbaa !245
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !247
  %i.i = tail call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants11BASEPROJCRSB5cxx11E) #41
  br i1 %i.i, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.019.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.j, %i.f
  br i1 %.not.i, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.lr.ph.i

_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i
  %i.k = icmp eq ptr %.sroa.013.019.i, @_ZN5osgeo4proj2ioL9null_nodeE
  br i1 %i.k, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %bb.c

_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %bb.b, %bb.a, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  tail call fastcc void @_ZN5osgeo4proj2ioL22ThrowNotEnoughChildrenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants11BASEPROJCRSB5cxx11E) #42
  unreachable

bb.c:                                             ; preds = %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @_ZN5osgeo4proj2io9WKTParser7Private17buildProjectedCRSERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.580") align 8 %3, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.013.019.i)
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !249  ; 2 uses
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !249  ; 2 uses
  %.not18.i30 = icmp eq ptr %i.l, %i.m
  br i1 %.not18.i30, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit34.thread, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.c, %bb.d
  %.sroa.013.019.i32 = phi ptr [ %i.q, %bb.d ], [ %i.l, %bb.c ] ; 4 uses
  %i.n = load ptr, ptr %.sroa.013.019.i32, align 8, !tbaa !245
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !247
  %i.p = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants18DERIVINGCONVERSIONB5cxx11E) #41
  br i1 %i.p, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit34, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i31
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.019.i32, i64 8 ; 2 uses
  %.not.i33 = icmp eq ptr %i.q, %i.m
  br i1 %.not.i33, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit34.thread, label %.lr.ph.i31

_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit34: ; preds = %.lr.ph.i31
  %i.r = icmp eq ptr %.sroa.013.019.i32, @_ZN5osgeo4proj2ioL9null_nodeE
  br i1 %i.r, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit34.thread, label %bb.g

_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit34.thread: ; preds = %bb.d, %bb.c, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit34
  invoke fastcc void @_ZN5osgeo4proj2ioL22ThrowNotEnoughChildrenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants18DERIVINGCONVERSIONB5cxx11E) #42
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit34.thread
  unreachable

bb.f:                                             ; preds = %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit34.thread
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.g:                                             ; preds = %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  invoke void @_ZN5osgeo4proj2io9WKTParser7Private18buildUnitInSubNodeERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEENS0_6common13UnitOfMeasure4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.osgeo::proj::common::UnitOfMeasure") align 8 %4, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %3, align 8, !tbaa !491
  %i.u = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj3crs12ProjectedCRS7baseCRSEv(ptr noundef nonnull align 8 dereferenceable(104) %i.t) #45
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !440  ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !156
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %i.v, i64 %i.y
  %i.aa = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj3crs9SingleCRS16coordinateSystemEv(ptr noundef nonnull align 8 dereferenceable(72) %i.z) #45
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !443
  %i.ac = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj2cs16CoordinateSystem8axisListEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ab) #45
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !425
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !424
  %i.af = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj2cs20CoordinateSystemAxis4unitEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ae) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  invoke void @_ZN5osgeo4proj2io9WKTParser7Private15buildConversionERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEERKNS0_6common13UnitOfMeasureESI_(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.409") align 8 %5, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.013.019.i32, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !249 ; 2 uses
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !249 ; 2 uses
  %.not18.i35 = icmp eq ptr %i.ag, %i.ah
  br i1 %.not18.i35, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit39.thread, label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %bb.i, %bb.j
  %.sroa.013.019.i37 = phi ptr [ %i.al, %bb.j ], [ %i.ag, %bb.i ] ; 4 uses
  %i.ai = load ptr, ptr %.sroa.013.019.i37, align 8, !tbaa !245
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !247
  %i.ak = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants3CS_B5cxx11E) #41
  br i1 %i.ak, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit39, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i36
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.013.019.i37, i64 8 ; 2 uses
  %.not.i38 = icmp eq ptr %i.al, %i.ah
  br i1 %.not.i38, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit39.thread, label %.lr.ph.i36

_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit39: ; preds = %.lr.ph.i36
  %i.am = icmp eq ptr %.sroa.013.019.i37, @_ZN5osgeo4proj2ioL9null_nodeE
  br i1 %i.am, label %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit39.thread, label %bb.p

_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit39.thread: ; preds = %bb.j, %bb.i, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit39
  %i.an = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants6PROJCSB5cxx11E) #41
  br i1 %i.an, label %bb.p, label %bb.k

bb.k:                                             ; preds = %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit39.thread
  invoke fastcc void @_ZN5osgeo4proj2ioL12ThrowMissingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj2io12WKTConstants3CS_B5cxx11E) #42
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.n:                                             ; preds = %bb.h
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.o:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.p:                                             ; preds = %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit39.thread, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit39
  %i.ar = phi ptr [ @_ZN5osgeo4proj2ioL9null_nodeE, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit39.thread ], [ %.sroa.013.019.i37, %_ZNK5osgeo4proj2io7WKTNode7Private12lookForChildERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit39 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  invoke void @_ZN5osgeo4proj2io9WKTParser7Private7buildCSERKN7dropbox6oxygen2nnISt10unique_ptrINS1_7WKTNodeESt14default_deleteIS8_EEEESE_RKNS0_6common13UnitOfMeasureE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.298") align 8 %6, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) @_ZN5osgeo4proj6common13UnitOfMeasure4NONEE)
          to label %bb.q unwind label %bb.al

bb.q:                                             ; preds = %bb.p
  %i.as = load ptr, ptr %6, align 8, !tbaa !443
  %i.at = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj2cs16CoordinateSystem8axisListEv(ptr noundef nonnull align 8 dereferenceable(56) %i.as) #45 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !420
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !425
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = icmp eq i64 %i.az, 48
  br i1 %i.ba, label %bb.r, label %bb.ao

bb.r:                                             ; preds = %bb.q
  %i.bb = load ptr, ptr %3, align 8, !tbaa !491   ; 2 uses
  %i.bc = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj3crs12ProjectedCRS16coordinateSystemEv(ptr noundef nonnull align 8 dereferenceable(104) %i.bb) #45
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !408
  %i.be = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj2cs16CoordinateSystem8axisListEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bd) #45 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !420
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !425
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = icmp eq i64 %i.bk, 32
  br i1 %i.bl, label %bb.s, label %bb.ao

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.bn, ptr %8, align 8, !tbaa !160
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.bo, align 8, !tbaa !164
  store i8 0, ptr %i.bn, align 8, !tbaa !166
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke void @_ZNK5osgeo4proj3crs3CRS11promoteTo3DERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrINS0_2io15DatabaseContextEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.405") align 8 %7, ptr noundef nonnull align 8 dereferenceable(64) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.bp)
          to label %bb.t unwind label %bb.an

bb.t:                                             ; preds = %bb.s
  %i.bq = load ptr, ptr %7, align 8, !tbaa !452, !noalias !1560 ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs12ProjectedCRSENS4_3CRSEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !156, !noalias !1560
  %i.bt = icmp eq ptr %i.bs, getelementptr inbounds nuw inrange(-72, 48) (i8, ptr @_ZTVN5osgeo4proj3crs12ProjectedCRSE, i64 208)
  br i1 %i.bt, label %bb.v, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs12ProjectedCRSENS4_3CRSEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit

bb.v:                                             ; preds = %bb.u
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 -32 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !209, !noalias !1560 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs12ProjectedCRSENS4_3CRSEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 3 uses
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166, !noalias !1560
  %.not.i.i.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !213, !noalias !1560
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr %i.bx, align 4, !tbaa !213, !noalias !1560
  br label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs12ProjectedCRSENS4_3CRSEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit

bb.y:                                             ; preds = %bb.w
  %i.cb = atomicrmw volatile add ptr %i.bx, i32 1 acq_rel, align 4, !noalias !1560 ; 0 uses
  br label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs12ProjectedCRSENS4_3CRSEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs12ProjectedCRSENS4_3CRSEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit: ; preds = %bb.t, %bb.u, %bb.v, %bb.x, %bb.y
  %.sroa.0.0 = phi ptr [ %i.bu, %bb.x ], [ %i.bu, %bb.v ], [ %i.bu, %bb.y ], [ null, %bb.u ], [ null, %bb.t ]
  %.sroa.7.0 = phi ptr [ %i.bw, %bb.x ], [ null, %bb.v ], [ %i.bw, %bb.y ], [ null, %bb.u ], [ null, %bb.t ]
  store ptr %.sroa.0.0, ptr %3, align 8, !tbaa !1561
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !209 ; 8 uses
  store ptr %.sroa.7.0, ptr %i.cc, align 8, !tbaa !209
  %.not.i.i.i.i.i40 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i.i40, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs12ProjectedCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs12ProjectedCRSENS4_3CRSEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 4 uses
  %i.cf = load atomic i64, ptr %i.ce acquire, align 8 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 4294967297
  %i.ch = trunc i64 %i.cf to i32                  ; 2 uses
  br i1 %i.cg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.ce, align 8, !tbaa !211
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  store i32 0, ptr %i.ci, align 4, !tbaa !212
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !156
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #41, !inline_history !1559
  %i.cm = load ptr, ptr %i.cd, align 8, !tbaa !156
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #41, !inline_history !1559
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs12ProjectedCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ab:                                            ; preds = %bb.z
  %i.cp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cp, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cq = add nsw i32 %i.ch, -1
  store i32 %i.cq, ptr %i.ce, align 8, !tbaa !213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.cr = atomicrmw volatile add ptr %i.ce, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ch, %bb.ac ], [ %i.cr, %bb.ad ]
  %i.cs = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.cs, label %bb.ae, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs12ProjectedCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !214

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #41
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs12ProjectedCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj3crs12ProjectedCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs12ProjectedCRSENS4_3CRSEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ae
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !209 ; 8 uses
  %.not.i.i.i43 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i43, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs12ProjectedCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 4 uses
  %i.cw = load atomic i64, ptr %i.cv acquire, align 8 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 4294967297
  %i.cy = trunc i64 %i.cw to i32                  ; 2 uses
  br i1 %i.cx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.cv, align 8, !tbaa !211
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  store i32 0, ptr %i.cz, align 4, !tbaa !212
  %i.da = load ptr, ptr %i.cu, align 8, !tbaa !156
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #41, !inline_history !63
  %i.dd = load ptr, ptr %i.cu, align 8, !tbaa !156
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #41, !inline_history !63
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit

bb.ah:                                            ; preds = %bb.af
  %i.dg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i44 = icmp eq i8 %i.dg, 0
  br i1 %.not.i.i.i.i44, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dh = add nsw i32 %i.cy, -1
  store i32 %i.dh, ptr %i.cv, align 8, !tbaa !213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i45

bb.aj:                                            ; preds = %bb.ah
  %i.di = atomicrmw volatile add ptr %i.cv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i45

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i45: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i46 = phi i32 [ %i.cy, %bb.ai ], [ %i.di, %bb.aj ]
  %i.dj = icmp eq i32 %.0.i.i.i.i.i46, 1
  br i1 %i.dj, label %bb.ak, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit, !prof !214

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i45
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #41
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs12ProjectedCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i45, %bb.ak
  %i.dk = load ptr, ptr %8, align 8, !tbaa !163   ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.bn
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit
  %i.dm = load i64, ptr %i.bn, align 8, !tbaa !166
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  br label %bb.ao

bb.al:                                            ; preds = %bb.p
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk
end_hunk_6
