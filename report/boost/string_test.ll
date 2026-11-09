Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/string_test?download=true
inline.NumInlined: 7799
inline.NumDeleted: 1796
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 98
begin_hunk_0_@_Z11string_testIwEiv:bb.a
  %2 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<wchar_t>, void>::short_t", align 4 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.boost::container::vec_iterator.45", align 8 ; 3 uses
  %.sroa.0.i.i.i.i.i = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<wchar_t>, void>::short_t", align 8 ; 4 uses
  %4 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<wchar_t>, void>::short_t", align 4 ; 4 uses
  %5 = alloca %"class.boost::container::vec_iterator.43", align 8 ; 3 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.boost::container::vec_iterator.45", align 8 ; 3 uses
  %7 = alloca %"class.boost::container::vec_iterator.43", align 8 ; 3 uses
  %8 = alloca %"class.boost::container::basic_string.3", align 16 ; 105 uses
  %9 = alloca %"class.std::__cxx11::basic_string.38", align 8 ; 48 uses
  %i.c = alloca [20 x i32], align 16              ; 27 uses
  %10 = alloca %"class.boost::container::vec_iterator.43", align 8 ; 4 uses
  %11 = alloca %"class.boost::container::vec_iterator.45", align 8 ; 4 uses
  %12 = alloca %"class.boost::container::vec_iterator.43", align 8 ; 4 uses
  %13 = alloca %"class.boost::container::vec_iterator.45", align 8 ; 4 uses
  %14 = alloca %"class.boost::container::basic_string.3", align 16 ; 25 uses
  %15 = alloca %"class.std::__cxx11::basic_string.38", align 8 ; 16 uses
  %16 = alloca %struct.StringEqual, align 1       ; 4 uses
  %17 = alloca %struct.StringEqual, align 1       ; 4 uses
  %18 = alloca %struct.StringEqual, align 1       ; 4 uses
  %19 = alloca %"class.std::__cxx11::basic_string.38", align 8 ; 7 uses
  %20 = alloca %struct.StringEqual, align 1       ; 4 uses
  %21 = alloca %struct.StringEqual, align 1       ; 4 uses
  %22 = alloca %"class.std::__cxx11::basic_string.38", align 8 ; 7 uses
  %23 = alloca %struct.StringEqual, align 1       ; 4 uses
  %24 = alloca %"class.boost::container::basic_string.3", align 8 ; 8 uses
  %25 = alloca %"class.std::__cxx11::basic_string.38", align 8 ; 7 uses
  %26 = alloca %struct.StringEqual, align 1       ; 4 uses
  %27 = alloca %struct.StringEqual, align 1       ; 4 uses
  %28 = alloca %"class.std::__cxx11::basic_string.38", align 8 ; 7 uses
  %29 = alloca %struct.StringEqual, align 1       ; 4 uses
  %30 = alloca %"class.std::__cxx11::basic_string.38", align 8 ; 7 uses
  %31 = alloca %struct.StringEqual, align 1       ; 4 uses
  %32 = alloca %"class.boost::container::vec_iterator.43", align 8 ; 2 uses
  %33 = alloca %"class.boost::container::vec_iterator.43", align 8 ; 2 uses
  %34 = alloca %"class.boost::container::vec_iterator.45", align 8 ; 2 uses
  %35 = alloca %"class.boost::container::vec_iterator.45", align 8 ; 2 uses
  %36 = alloca %"class.boost::container::vec_iterator.43", align 8 ; 2 uses
  %37 = alloca %"class.boost::container::vec_iterator.43", align 8 ; 2 uses
  %38 = alloca %"class.boost::container::vec_iterator.45", align 8 ; 2 uses
  %39 = alloca %"class.boost::container::vec_iterator.45", align 8 ; 2 uses
  %40 = alloca %"class.boost::container::vec_iterator.44", align 8 ; 2 uses
  %41 = alloca %"class.boost::container::vec_iterator.43", align 8 ; 5 uses
  %42 = alloca %"class.boost::container::vec_iterator.43", align 8 ; 2 uses
  %43 = alloca %"class.boost::container::vec_iterator.43", align 8 ; 2 uses
  %44 = alloca %"class.boost::container::vec_iterator.44", align 8 ; 2 uses
  %45 = alloca %"class.boost::container::vec_iterator.43", align 8 ; 4 uses
  %46 = alloca %"class.boost::container::vec_iterator.46", align 8 ; 2 uses
  %47 = alloca %"class.boost::container::vec_iterator.45", align 8 ; 5 uses
  %48 = alloca %"class.boost::container::vec_iterator.45", align 8 ; 2 uses
  %49 = alloca %"class.boost::container::vec_iterator.45", align 8 ; 2 uses
  %50 = alloca %"class.boost::container::vec_iterator.46", align 8 ; 2 uses
  %51 = alloca %"class.boost::container::vec_iterator.45", align 8 ; 4 uses
  %52 = alloca %"class.boost::container::basic_string.3", align 16 ; 38 uses
  %53 = alloca %"class.std::__cxx11::basic_string.38", align 8 ; 26 uses
  %54 = alloca %"class.std::allocator.39", align 1 ; 4 uses
  %55 = alloca %"class.boost::container::basic_string.3", align 8 ; 11 uses
  %56 = alloca %"class.std::__cxx11::basic_string.38", align 8 ; 9 uses
  %57 = alloca %"class.std::allocator.39", align 1 ; 4 uses
  %58 = alloca %"class.boost::container::basic_string.3", align 8 ; 39 uses
  %59 = alloca %"class.std::__cxx11::basic_string.38", align 8 ; 34 uses
  %60 = alloca %struct.StringEqual, align 1       ; 4 uses
  %61 = alloca %"class.boost::container::basic_string.3", align 8 ; 8 uses
  %62 = alloca %"class.boost::container::basic_string.3", align 8 ; 12 uses
  %63 = alloca %"class.std::__cxx11::basic_string.38", align 8 ; 7 uses
  %64 = alloca %"class.std::__cxx11::basic_string.38", align 8 ; 9 uses
  %65 = alloca %struct.StringEqual, align 1       ; 4 uses
  %66 = alloca %"class.boost::container::basic_string.3", align 8 ; 8 uses
  %67 = alloca %"class.boost::container::basic_string.3", align 8 ; 12 uses
  %68 = alloca %"class.std::__cxx11::basic_string.38", align 8 ; 7 uses
  %69 = alloca %"class.std::__cxx11::basic_string.38", align 8 ; 9 uses
  %70 = alloca %struct.StringEqual, align 1       ; 4 uses
  %71 = alloca %"class.boost::container::basic_string.3", align 8 ; 8 uses
  %72 = alloca %"class.boost::container::basic_string.3", align 8 ; 12 uses
  %73 = alloca %"class.std::__cxx11::basic_string.38", align 8 ; 7 uses
  %74 = alloca %"class.std::__cxx11::basic_string.38", align 8 ; 9 uses
  %75 = alloca %struct.StringEqual, align 1       ; 4 uses
  %76 = alloca %"class.boost::container::basic_string.3", align 8 ; 8 uses
  %77 = alloca %"class.boost::container::basic_string.3", align 8 ; 12 uses
  %78 = alloca %"class.std::__cxx11::basic_string.38", align 8 ; 7 uses
  %79 = alloca %"class.std::__cxx11::basic_string.38", align 8 ; 9 uses
  %80 = alloca %struct.StringEqual, align 1       ; 4 uses
  %81 = alloca %"class.boost::container::basic_string.3", align 8 ; 8 uses
  %82 = alloca %"class.boost::container::basic_string.3", align 16 ; 13 uses
  %83 = alloca %"class.std::__cxx11::basic_string.38", align 8 ; 7 uses
  %84 = alloca %struct.StringEqual, align 1       ; 4 uses
  %85 = alloca %"class.boost::container::basic_string.3", align 8 ; 8 uses
  %86 = alloca %"class.boost::container::basic_string.3", align 16 ; 13 uses
  %87 = alloca %"class.std::__cxx11::basic_string.38", align 8 ; 7 uses
  %88 = alloca %struct.StringEqual, align 1       ; 4 uses
  %89 = alloca %"class.boost::container::basic_string.3", align 8 ; 8 uses
  %90 = alloca %"class.boost::container::basic_string.3", align 8 ; 8 uses
  %91 = alloca %"class.std::__cxx11::basic_string.38", align 8 ; 7 uses
  %92 = alloca %struct.StringEqual, align 1       ; 4 uses
  %93 = alloca %"class.boost::container::basic_string.3", align 8 ; 8 uses
  %94 = alloca %"class.boost::container::basic_string.3", align 8 ; 8 uses
  %95 = alloca %"class.std::__cxx11::basic_string.38", align 8 ; 7 uses
  %96 = alloca %struct.StringEqual, align 1       ; 4 uses
  %97 = alloca %"class.boost::container::basic_string.3", align 8 ; 8 uses
  %98 = alloca %"class.boost::container::basic_string.3", align 8 ; 8 uses
  %99 = alloca %"class.std::__cxx11::basic_string.38", align 8 ; 7 uses
  %100 = alloca %struct.StringEqual, align 1      ; 4 uses
  %101 = alloca %"class.boost::container::basic_string.3", align 8 ; 8 uses
  %102 = alloca %"class.boost::container::basic_string.3", align 8 ; 8 uses
  %103 = alloca %"class.std::__cxx11::basic_string.38", align 8 ; 7 uses
  %104 = alloca %struct.StringEqual, align 1      ; 4 uses
  %105 = alloca %struct.StringEqual, align 1      ; 4 uses
  %106 = alloca %"class.std::__cxx11::basic_string.38", align 8 ; 11 uses
  %107 = alloca %"class.std::allocator.39", align 1 ; 4 uses
  %108 = alloca %"class.boost::container::basic_string.3", align 8 ; 8 uses
  %109 = alloca %struct.StringEqual, align 1      ; 3 uses
  %i.d = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32 ; 38 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.e = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32 ; 38 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  store i8 1, ptr %8, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 18 uses
  store i32 0, ptr %i.f, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 21 uses
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.h, ptr %9, align 8, !tbaa !122
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 14 uses
  store i64 0, ptr %i.i, align 8, !tbaa !124
  store i32 0, ptr %i.h, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 16 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  %.sroa.gep703 = getelementptr inbounds nuw i8, ptr %8, i64 28 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN5boost9container6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvvE9push_backERKS7_.exit221
  %.0167655 = phi i64 [ 0, %bb.a ], [ %i.cl, %_ZN5boost9container6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvvE9push_backERKS7_.exit221 ] ; 2 uses
  %i.n = invoke noundef zeroext i1 @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef 6)
          to label %.noexc225 unwind label %.loopexit.split-lp636.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc225:                                        ; preds = %bb.b
  br i1 %i.n, label %bb.c, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i.i.i

bb.c:                                             ; preds = %.noexc225
  %i.o = load i8, ptr %8, align 16, !tbaa !51     ; 2 uses
  %i.p = trunc i8 %i.o to i1
  %i.q = lshr i8 %i.o, 1
  %i.r = zext nneg i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.r
  %i.t = load ptr, ptr %i.g, align 16
  %i.u = load i64, ptr %8, align 16
  %i.v = lshr i64 %i.u, 1
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.v
  %i.x = select i1 %i.p, ptr %i.s, ptr %i.w
  store i32 0, ptr %i.x, align 4, !tbaa !94
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i.i.i

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i.i.i: ; preds = %bb.c, %.noexc225
  %i.y = load i8, ptr %8, align 16, !tbaa !51
  %i.z = trunc i8 %i.y to i1                      ; 2 uses
  %i.aa = load ptr, ptr %i.g, align 16            ; 2 uses
  %i.ab = select i1 %i.z, ptr %i.f, ptr %i.aa
  %i.ac = call ptr @wmemcpy(ptr noundef %i.ab, ptr noundef nonnull @.str.475, i64 noundef 6) #27 ; 0 uses
  %.sroa.gep704 = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.sel = select i1 %i.z, ptr %.sroa.gep703, ptr %.sroa.gep704
  store i32 0, ptr %.sroa.sel, align 4, !tbaa !94
  %i.ad = load i8, ptr %8, align 16, !tbaa !51
  %i.ae = trunc i8 %i.ad to i1
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i.i.i
  store i8 13, ptr %8, align 16
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEPKw.exit

bb.e:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i.i.i
  %i.af = load i64, ptr %8, align 16
  %i.ag = and i64 %i.af, 1
  %i.ah = or disjoint i64 %i.ag, 12
  store i64 %i.ah, ptr %8, align 16
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEPKw.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEPKw.exit: ; preds = %bb.e, %bb.d
  %i.ai = load i64, ptr %i.i, align 8, !tbaa !124
  %i.aj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef %i.ai, ptr noundef nonnull @.str.475, i64 noundef 6)
          to label %.critedge.i unwind label %.loopexit.split-lp636.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.critedge.i:                                      ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEPKw.exit, %.critedge.i
  %.0912.i = phi ptr [ %i.ao, %.critedge.i ], [ %i.c, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEPKw.exit ] ; 2 uses
  %.01011.i = phi i64 [ %i.al, %.critedge.i ], [ %.0167655, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEPKw.exit ] ; 3 uses
  %i.ak = urem i64 %.01011.i, 10
  %i.al = udiv i64 %.01011.i, 10
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @.str.476, i64 %i.ak
  %i.an = load i32, ptr %i.am, align 4, !tbaa !94
  store i32 %i.an, ptr %.0912.i, align 4, !tbaa !94
  %i.ao = getelementptr inbounds nuw i8, ptr %.0912.i, i64 4 ; 2 uses
  %.not.i = icmp samesign ugt i64 %.01011.i, 9
  br i1 %.not.i, label %.critedge.i, label %_ZN15string_literalsIwE14sprintf_numberEPwy.exit

_ZN15string_literalsIwE14sprintf_numberEPwy.exit: ; preds = %.critedge.i
  store i32 0, ptr %i.ao, align 4, !tbaa !94
  %i.ap = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.c) #28
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ap
  %i.ar = load i8, ptr %8, align 16, !tbaa !51    ; 2 uses
  %i.as = trunc i8 %i.ar to i1
  %i.at = lshr i8 %i.ar, 1
  %i.au = zext nneg i8 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.au
  %i.aw = load ptr, ptr %i.g, align 16
  %i.ax = load i64, ptr %8, align 16
  %i.ay = lshr i64 %i.ax, 1
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ay
  %i.ba = select i1 %i.as, ptr %i.av, ptr %i.az
  %i.bb = invoke noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6insertIPKwEEPwS7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %i.ba, ptr noundef nonnull %i.c, ptr noundef nonnull %i.aq, ptr noundef null)
          to label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEpLEPKw.exit unwind label %.loopexit.split-lp636.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEpLEPKw.exit: ; preds = %_ZN15string_literalsIwE14sprintf_numberEPwy.exit
  %i.bc = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.c) #28 ; 2 uses
  %i.bd = load i64, ptr %i.i, align 8, !tbaa !124
  %i.be = sub i64 1152921504606846975, %i.bd
  %i.bf = icmp ult i64 %i.be, %i.bc
  br i1 %i.bf, label %.invoke, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKw.exit.i

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKw.exit.i: ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEpLEPKw.exit
  %i.bg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_appendEPKwm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull %i.c, i64 noundef %i.bc)
          to label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEPKw.exit unwind label %.loopexit.split-lp636.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEPKw.exit: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKw.exit.i
  %i.bh = load i64, ptr %i.j, align 8, !tbaa !128 ; 3 uses
  %i.bi = load i64, ptr %i.k, align 8, !tbaa !129
  %.not.i230 = icmp eq i64 %i.bh, %i.bi
  br i1 %.not.i230, label %bb.g, label %bb.f, !prof !72

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEPKw.exit
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !130, !nonnull !85, !noundef !85
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %i.bh
  invoke void @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %.noexc231 unwind label %.loopexit.split-lp636.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc231:                                        ; preds = %bb.f
  %i.bl = load i64, ptr %i.j, align 8, !tbaa !128
  %i.bm = add i64 %i.bl, 1
  store i64 %i.bm, ptr %i.j, align 8, !tbaa !128
  br label %_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE9push_backERKS5_.exit

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEPKw.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !130
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.bh
  invoke void @_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS5_EEJRKS5_EEEEENS0_12vec_iteratorIPS5_Lb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.43") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef %i.bo, i64 noundef 1, ptr nonnull align 8 dereferenceable(24) %8)
          to label %.noexc232 unwind label %.loopexit.split-lp636.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc232:                                        ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE9push_backERKS5_.exit

_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE9push_backERKS5_.exit: ; preds = %.noexc232, %.noexc231
  %i.bp = load i64, ptr %i.l, align 8, !tbaa !134 ; 3 uses
  %i.bq = load i64, ptr %i.m, align 8, !tbaa !135
  %.not.i233 = icmp eq i64 %i.bp, %i.bq
  br i1 %.not.i233, label %bb.k, label %bb.h, !prof !72

bb.h:                                             ; preds = %_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE9push_backERKS5_.exit
  %i.br = load ptr, ptr %i.e, align 8, !tbaa !136, !nonnull !85, !noundef !85
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %i.br, i64 %i.bp ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 3 uses
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !122
  %i.bu = load ptr, ptr %9, align 8, !tbaa !137   ; 2 uses
  %i.bv = load i64, ptr %i.i, align 8, !tbaa !124 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 %i.bv, ptr %i.b, align 8, !tbaa !56
  %i.bw = icmp ugt i64 %i.bv, 3
  br i1 %i.bw, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.h
  %i.bx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc235 unwind label %.loopexit.split-lp636.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc235:                                        ; preds = %.noexc.i.i.i.i
  store ptr %i.bx, ptr %i.bs, align 8, !tbaa !137
  %i.by = load i64, ptr %i.b, align 8, !tbaa !56  ; 2 uses
  store i64 %i.by, ptr %i.bt, align 8, !tbaa !51
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc235, %bb.h
  %i.bz = phi i64 [ %i.by, %.noexc235 ], [ %i.bv, %bb.h ] ; 2 uses
  %i.ca = phi ptr [ %i.bx, %.noexc235 ], [ %i.bt, %bb.h ] ; 4 uses
  switch i64 %i.bv, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE9constructIS8_JRKS8_EEEvRS9_PT_DpOT0_.exit.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.cb = load i32, ptr %i.bu, align 4, !tbaa !94
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !94
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE9constructIS8_JRKS8_EEEvRS9_PT_DpOT0_.exit.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.cc = call ptr @wmemcpy(ptr noundef %i.ca, ptr noundef %i.bu, i64 noundef %i.bv) #27 ; 0 uses
  %.pre6.i.i.i.i.i = load i64, ptr %i.b, align 8, !tbaa !56
  %.pre7.i.i.i.i.i = load ptr, ptr %i.bs, align 8, !tbaa !137
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE9constructIS8_JRKS8_EEEvRS9_PT_DpOT0_.exit.i

_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE9constructIS8_JRKS8_EEEvRS9_PT_DpOT0_.exit.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i.i
  %i.cd = phi ptr [ %i.ca, %._crit_edge.i.i.i.i.i ], [ %i.ca, %bb.i ], [ %.pre7.i.i.i.i.i, %bb.j ]
  %i.ce = phi i64 [ %i.bz, %._crit_edge.i.i.i.i.i ], [ %i.bz, %bb.i ], [ %.pre6.i.i.i.i.i, %bb.j ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !124
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ce
  store i32 0, ptr %i.cg, align 4, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.ch = load i64, ptr %i.l, align 8, !tbaa !134
  %i.ci = add i64 %i.ch, 1
  store i64 %i.ci, ptr %i.l, align 8, !tbaa !134
  br label %_ZN5boost9container6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvvE9push_backERKS7_.exit221

bb.k:                                             ; preds = %_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE9push_backERKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.cj = load ptr, ptr %i.e, align 8, !tbaa !136
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %i.cj, i64 %i.bp
  invoke void @_ZN5boost9container6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS7_EEJRKS7_EEEEENS0_12vec_iteratorIPS7_Lb0EEESI_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.45") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef %i.ck, i64 noundef 1, ptr nonnull align 8 dereferenceable(32) %9)
          to label %.noexc236 unwind label %.loopexit.split-lp636.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc236:                                        ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %_ZN5boost9container6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvvE9push_backERKS7_.exit221

_ZN5boost9container6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvvE9push_backERKS7_.exit221: ; preds = %.noexc236, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE9constructIS8_JRKS8_EEEvRS9_PT_DpOT0_.exit.i
  %i.cl = add nuw nsw i64 %.0167655, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.cl, 100
  br i1 %exitcond.not, label %bb.l, label %bb.b, !llvm.loop !583

bb.l:                                             ; preds = %_ZN5boost9container6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvvE9push_backERKS7_.exit221
  %i.cm = load ptr, ptr %i.d, align 8, !tbaa !130, !noalias !674 ; 2 uses
  %i.cn = load i64, ptr %i.j, align 8, !tbaa !128, !noalias !675 ; 2 uses
  %.idx.i = mul nsw i64 %i.cn, 24
  %i.co = getelementptr inbounds i8, ptr %i.cm, i64 %.idx.i
  %.not4.i.i = icmp eq i64 %i.cn, 0
  br i1 %.not4.i.i, label %_Z22CheckEqualStringVectorIN5boost9container6vectorINS1_12basic_stringIwSt11char_traitsIwEvvEEvvEENS2_INSt7__cxx1112basic_stringIwS5_SaIwEEEvvEEEbPT_PT0_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.l
  %i.cp = load ptr, ptr %i.e, align 8, !tbaa !136, !noalias !676
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread.i.i, %.lr.ph.i.preheader.i
  %i.cq = phi ptr [ %i.dn, %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread.i.i ], [ %i.cp, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.cr = phi ptr [ %i.dm, %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread.i.i ], [ %i.cm, %.lr.ph.i.preheader.i ] ; 5 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !51  ; 2 uses
  %i.ct = trunc i8 %i.cs to i1
  %i.cu = lshr i8 %i.cs, 1
  %i.cv = zext nneg i8 %i.cu to i64
  %i.cw = load i64, ptr %i.cr, align 8            ; 2 uses
  %i.cx = lshr i64 %i.cw, 1                       ; 3 uses
  %i.cy = select i1 %i.ct, i64 %i.cv, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !124
  %.not.i.i.i = icmp eq i64 %i.cy, %i.da
  br i1 %.not.i.i.i, label %bb.m, label %_Z22CheckEqualStringVectorIN5boost9container6vectorINS1_12basic_stringIwSt11char_traitsIwEvvEEvvEENS2_INSt7__cxx1112basic_stringIwS5_SaIwEEEvvEEEbPT_PT0_.exit321

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.db = trunc i64 %i.cw to i1                   ; 2 uses
  %i.dc = and i64 %i.cx, 127
  %i.dd = select i1 %i.db, i64 %i.dc, i64 %i.cx   ; 2 uses
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread.i.i, label %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.i.i

_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.i.i: ; preds = %bb.m
  %i.df = load ptr, ptr %i.cq, align 8, !tbaa !137
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = select i1 %i.db, ptr %i.dg, ptr %i.di
  %i.dk = call i32 @wmemcmp(ptr noundef %i.dj, ptr noundef %i.df, i64 noundef %i.dd) #28
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread.i.i, label %_Z22CheckEqualStringVectorIN5boost9container6vectorINS1_12basic_stringIwSt11char_traitsIwEvvEEvvEENS2_INSt7__cxx1112basic_stringIwS5_SaIwEEEvvEEEbPT_PT0_.exit321

_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread.i.i: ; preds = %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.i.i, %bb.m
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cr, i64 24 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %.not.i.i = icmp eq ptr %i.dm, %i.co
  br i1 %.not.i.i, label %_Z22CheckEqualStringVectorIN5boost9container6vectorINS1_12basic_stringIwSt11char_traitsIwEvvEEvvEENS2_INSt7__cxx1112basic_stringIwS5_SaIwEEEvvEEEbPT_PT0_.exit, label %.lr.ph.i.i, !llvm.loop !6

_Z22CheckEqualStringVectorIN5boost9container6vectorINS1_12basic_stringIwSt11char_traitsIwEvvEEvvEENS2_INSt7__cxx1112basic_stringIwS5_SaIwEEEvvEEEbPT_PT0_.exit: ; preds = %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread.i.i, %bb.l
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.p

bb.n:                                             ; preds = %_ZN5boost9container6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvvE9push_backERKS7_.exit
  %i.dp = load ptr, ptr %i.d, align 8, !tbaa !130, !noalias !677 ; 2 uses
  %i.dq = load i64, ptr %i.j, align 8, !tbaa !128, !noalias !678 ; 2 uses
  %.idx.i237 = mul nsw i64 %i.dq, 24
  %i.dr = getelementptr inbounds i8, ptr %i.dp, i64 %.idx.i237
  %.not4.i.i238 = icmp eq i64 %i.dq, 0
  br i1 %.not4.i.i238, label %_Z22CheckEqualStringVectorIN5boost9container6vectorINS1_12basic_stringIwSt11char_traitsIwEvvEEvvEENS2_INSt7__cxx1112basic_stringIwS5_SaIwEEEvvEEEbPT_PT0_.exit246.preheader, label %.lr.ph.i.preheader.i239

_Z22CheckEqualStringVectorIN5boost9container6vectorINS1_12basic_stringIwSt11char_traitsIwEvvEEvvEENS2_INSt7__cxx1112basic_stringIwS5_SaIwEEEvvEEEbPT_PT0_.exit246.preheader: ; preds = %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread.i.i244, %bb.n
  br label %_Z22CheckEqualStringVectorIN5boost9container6vectorINS1_12basic_stringIwSt11char_traitsIwEvvEEvvEENS2_INSt7__cxx1112basic_stringIwS5_SaIwEEEvvEEEbPT_PT0_.exit246

.lr.ph.i.preheader.i239:                          ; preds = %bb.n
  %i.ds = load ptr, ptr %i.e, align 8, !tbaa !136, !noalias !679
  br label %.lr.ph.i.i240

.lr.ph.i.i240:                                    ; preds = %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread.i.i244, %.lr.ph.i.preheader.i239
  %i.dt = phi ptr [ %i.eq, %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread.i.i244 ], [ %i.ds, %.lr.ph.i.preheader.i239 ] ; 3 uses
  %i.du = phi ptr [ %i.ep, %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread.i.i244 ], [ %i.dp, %.lr.ph.i.preheader.i239 ] ; 5 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !51  ; 2 uses
  %i.dw = trunc i8 %i.dv to i1
  %i.dx = lshr i8 %i.dv, 1
  %i.dy = zext nneg i8 %i.dx to i64
  %i.dz = load i64, ptr %i.du, align 8            ; 2 uses
  %i.ea = lshr i64 %i.dz, 1                       ; 3 uses
  %i.eb = select i1 %i.dw, i64 %i.dy, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !124
  %.not.i.i.i241 = icmp eq i64 %i.eb, %i.ed
  br i1 %.not.i.i.i241, label %bb.o, label %_Z22CheckEqualStringVectorIN5boost9container6vectorINS1_12basic_stringIwSt11char_traitsIwEvvEEvvEENS2_INSt7__cxx1112basic_stringIwS5_SaIwEEEvvEEEbPT_PT0_.exit321

bb.o:                                             ; preds = %.lr.ph.i.i240
  %i.ee = trunc i64 %i.dz to i1                   ; 2 uses
  %i.ef = and i64 %i.ea, 127
  %i.eg = select i1 %i.ee, i64 %i.ef, i64 %i.ea   ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread.i.i244, label %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.i.i243

_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.i.i243: ; preds = %bb.o
  %i.ei = load ptr, ptr %i.dt, align 8, !tbaa !137
  %i.ej = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = select i1 %i.ee, ptr %i.ej, ptr %i.el
  %i.en = call i32 @wmemcmp(ptr noundef %i.em, ptr noundef %i.ei, i64 noundef %i.eg) #28
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread.i.i244, label %_Z22CheckEqualStringVectorIN5boost9container6vectorINS1_12basic_stringIwSt11char_traitsIwEvvEEvvEENS2_INSt7__cxx1112basic_stringIwS5_SaIwEEEvvEEEbPT_PT0_.exit321

_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread.i.i244: ; preds = %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.i.i243, %bb.o
  %i.ep = getelementptr inbounds nuw i8, ptr %i.du, i64 24 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %.not.i.i245 = icmp eq ptr %i.ep, %i.dr
  br i1 %.not.i.i245, label %_Z22CheckEqualStringVectorIN5boost9container6vectorINS1_12basic_stringIwSt11char_traitsIwEvvEEvvEENS2_INSt7__cxx1112basic_stringIwS5_SaIwEEEvvEEEbPT_PT0_.exit246.preheader, label %.lr.ph.i.i240, !llvm.loop !6

bb.p:                                             ; preds = %_Z22CheckEqualStringVectorIN5boost9container6vectorINS1_12basic_stringIwSt11char_traitsIwEvvEEvvEENS2_INSt7__cxx1112basic_stringIwS5_SaIwEEEvvEEEbPT_PT0_.exit, %_ZN5boost9container6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvvE9push_backERKS7_.exit
  %.0177656 = phi i64 [ 0, %_Z22CheckEqualStringVectorIN5boost9container6vectorINS1_12basic_stringIwSt11char_traitsIwEvvEEvvEENS2_INSt7__cxx1112basic_stringIwS5_SaIwEEEvvEEEbPT_PT0_.exit ], [ %i.hz, %_ZN5boost9container6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvvE9push_backERKS7_.exit ] ; 2 uses
  %i.er = invoke noundef zeroext i1 @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef 6)
          to label %.noexc250 unwind label %.loopexit.split-lp636.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc250:                                        ; preds = %bb.p
  br i1 %i.er, label %bb.q, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i.i.i248

bb.q:                                             ; preds = %.noexc250
  %i.es = load i8, ptr %8, align 16, !tbaa !51    ; 2 uses
  %i.et = trunc i8 %i.es to i1
  %i.eu = lshr i8 %i.es, 1
  %i.ev = zext nneg i8 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ev
  %i.ex = load ptr, ptr %i.g, align 16
  %i.ey = load i64, ptr %8, align 16
  %i.ez = lshr i64 %i.ey, 1
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.ez
  %i.fb = select i1 %i.et, ptr %i.ew, ptr %i.fa
  store i32 0, ptr %i.fb, align 4, !tbaa !94
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i.i.i248

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i.i.i248: ; preds = %bb.q, %.noexc250
  %i.fc = load i8, ptr %8, align 16, !tbaa !51
  %i.fd = trunc i8 %i.fc to i1                    ; 2 uses
  %i.fe = load ptr, ptr %i.g, align 16            ; 2 uses
  %i.ff = select i1 %i.fd, ptr %i.f, ptr %i.fe
  %i.fg = call ptr @wmemcpy(ptr noundef %i.ff, ptr noundef nonnull @.str.475, i64 noundef 6) #27 ; 0 uses
  %.sroa.gep706 = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %.sroa.sel707 = select i1 %i.fd, ptr %.sroa.gep703, ptr %.sroa.gep706
  store i32 0, ptr %.sroa.sel707, align 4, !tbaa !94
  %i.fh = load i8, ptr %8, align 16, !tbaa !51
  %i.fi = trunc i8 %i.fh to i1
  br i1 %i.fi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i.i.i248
  store i8 13, ptr %8, align 16
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEPKw.exit251

bb.s:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i.i.i248
  %i.fj = load i64, ptr %8, align 16
  %i.fk = and i64 %i.fj, 1
  %i.fl = or disjoint i64 %i.fk, 12
  store i64 %i.fl, ptr %8, align 16
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEPKw.exit251

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEPKw.exit251: ; preds = %bb.s, %bb.r
  %i.fm = load i64, ptr %i.i, align 8, !tbaa !124
  %i.fn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef %i.fm, ptr noundef nonnull @.str.475, i64 noundef 6)
          to label %.critedge.i254 unwind label %.loopexit.split-lp636.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.critedge.i254:                                   ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEPKw.exit251, %.critedge.i254
  %.0912.i255 = phi ptr [ %i.fs, %.critedge.i254 ], [ %i.c, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEPKw.exit251 ] ; 2 uses
  %.01011.i256 = phi i64 [ %i.fp, %.critedge.i254 ], [ %.0177656, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEPKw.exit251 ] ; 3 uses
  %i.fo = urem i64 %.01011.i256, 10
  %i.fp = udiv i64 %.01011.i256, 10
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr @.str.476, i64 %i.fo
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !94
  store i32 %i.fr, ptr %.0912.i255, align 4, !tbaa !94
  %i.fs = getelementptr inbounds nuw i8, ptr %.0912.i255, i64 4 ; 2 uses
  %.not.i257 = icmp samesign ugt i64 %.01011.i256, 9
  br i1 %.not.i257, label %.critedge.i254, label %_ZN15string_literalsIwE14sprintf_numberEPwy.exit258

_ZN15string_literalsIwE14sprintf_numberEPwy.exit258: ; preds = %.critedge.i254
  store i32 0, ptr %i.fs, align 4, !tbaa !94
  %i.ft = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.c) #28
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ft
  %i.fv = load i8, ptr %8, align 16, !tbaa !51    ; 2 uses
  %i.fw = trunc i8 %i.fv to i1
  %i.fx = lshr i8 %i.fv, 1
  %i.fy = zext nneg i8 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fy
  %i.ga = load ptr, ptr %i.g, align 16
  %i.gb = load i64, ptr %8, align 16
  %i.gc = lshr i64 %i.gb, 1
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.gc
  %i.ge = select i1 %i.fw, ptr %i.fz, ptr %i.gd
  %i.gf = invoke noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6insertIPKwEEPwS7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %i.ge, ptr noundef nonnull %i.c, ptr noundef nonnull %i.fu, ptr noundef null)
          to label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEpLEPKw.exit260 unwind label %.loopexit.split-lp636.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEpLEPKw.exit260: ; preds = %_ZN15string_literalsIwE14sprintf_numberEPwy.exit258
  %i.gg = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.c) #28 ; 2 uses
  %i.gh = load i64, ptr %i.i, align 8, !tbaa !124
  %i.gi = sub i64 1152921504606846975, %i.gh
  %i.gj = icmp ult i64 %i.gi, %i.gg
  br i1 %i.gj, label %.invoke, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKw.exit.i261

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKw.exit.i261: ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEpLEPKw.exit260
  %i.gk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_appendEPKwm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull %i.c, i64 noundef %i.gg)
          to label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEPKw.exit264 unwind label %.loopexit.split-lp636.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEPKw.exit264: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKw.exit.i261
  %i.gl = load i64, ptr %i.j, align 8, !tbaa !128 ; 3 uses
  %i.gm = load i64, ptr %i.k, align 8, !tbaa !129
  %.not.i265 = icmp eq i64 %i.gl, %i.gm
  br i1 %.not.i265, label %bb.w, label %bb.t, !prof !72

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEPKw.exit264
  %i.gn = load ptr, ptr %i.d, align 8, !tbaa !130, !nonnull !85, !noundef !85
  %i.go = getelementptr inbounds nuw [24 x i8], ptr %i.gn, i64 %i.gl ; 9 uses
  store i8 1, ptr %i.go, align 4
  %i.gp = load i8, ptr %8, align 16, !tbaa !51
  %i.gq = trunc i8 %i.gp to i1
  br i1 %i.gq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.go, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.go, ptr noundef nonnull align 16 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.go, i64 24, i1 false), !tbaa.struct !138
  %i.gr = load i64, ptr %i.go, align 8
  %i.gs = and i64 %i.gr, -2
  store i64 %i.gs, ptr %i.go, align 8
  %i.gt = load i64, ptr %8, align 16
  %i.gu = and i64 %i.gt, -2
  store i64 %i.gu, ptr %i.go, align 8
  %i.gv = load i64, ptr %i.do, align 8, !tbaa !98
  %i.gw = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store i64 %i.gv, ptr %i.gw, align 8, !tbaa !98
  %i.gx = load ptr, ptr %i.g, align 16, !tbaa !97
  %i.gy = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  store ptr %i.gx, ptr %i.gy, align 8, !tbaa !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, ptr noundef nonnull align 4 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !138
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i

_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i: ; preds = %bb.v, %bb.u
  %i.gz = load i64, ptr %i.j, align 8, !tbaa !128
  %i.ha = add i64 %i.gz, 1
  store i64 %i.ha, ptr %i.j, align 8, !tbaa !128
  br label %_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE9push_backEOS5_.exit

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEPKw.exit264
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.hb = load ptr, ptr %i.d, align 8, !tbaa !130
  %i.hc = getelementptr inbounds nuw [24 x i8], ptr %i.hb, i64 %i.gl
  invoke void @_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS5_EEJS5_EEEEENS0_12vec_iteratorIPS5_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.43") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef %i.hc, i64 noundef 1, ptr nonnull align 8 dereferenceable(24) %8)
          to label %.noexc267 unwind label %.loopexit.split-lp636.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc267:                                        ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE9push_backEOS5_.exit

_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE9push_backEOS5_.exit: ; preds = %.noexc267, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE9constructIS6_JS6_EEEvRS7_PT_DpOT0_.exit.i
  %i.hd = load i64, ptr %i.l, align 8, !tbaa !134 ; 3 uses
  %i.he = load i64, ptr %i.m, align 8, !tbaa !135
  %.not.i268 = icmp eq i64 %i.hd, %i.he
  br i1 %.not.i268, label %bb.aa, label %bb.x, !prof !72

bb.x:                                             ; preds = %_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE9push_backEOS5_.exit
  %i.hf = load ptr, ptr %i.e, align 8, !tbaa !136, !nonnull !85, !noundef !85
  %i.hg = getelementptr inbounds nuw [32 x i8], ptr %i.hf, i64 %i.hd ; 6 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16 ; 3 uses
  store ptr %i.hh, ptr %i.hg, align 8, !tbaa !122
  %i.hi = load ptr, ptr %9, align 8, !tbaa !137   ; 2 uses
  %i.hj = load i64, ptr %i.i, align 8, !tbaa !124 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.hj, ptr %i.a, align 8, !tbaa !56
  %i.hk = icmp ugt i64 %i.hj, 3
  br i1 %i.hk, label %.noexc.i.i.i.i274, label %._crit_edge.i.i.i.i.i269

.noexc.i.i.i.i274:                                ; preds = %bb.x
  %i.hl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.hg, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc275 unwind label %.loopexit.split-lp636.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc275:                                        ; preds = %.noexc.i.i.i.i274
  store ptr %i.hl, ptr %i.hg, align 8, !tbaa !137
  %i.hm = load i64, ptr %i.a, align 8, !tbaa !56  ; 2 uses
  store i64 %i.hm, ptr %i.hh, align 8, !tbaa !51
  br label %._crit_edge.i.i.i.i.i269

._crit_edge.i.i.i.i.i269:                         ; preds = %.noexc275, %bb.x
  %i.hn = phi i64 [ %i.hm, %.noexc275 ], [ %i.hj, %bb.x ] ; 2 uses
  %i.ho = phi ptr [ %i.hl, %.noexc275 ], [ %i.hh, %bb.x ] ; 4 uses
  switch i64 %i.hj, label %bb.z [
    i64 1, label %bb.y
    i64 0, label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE9constructIS8_JRKS8_EEEvRS9_PT_DpOT0_.exit.i270
  ]

bb.y:                                             ; preds = %._crit_edge.i.i.i.i.i269
  %i.hp = load i32, ptr %i.hi, align 4, !tbaa !94
  store i32 %i.hp, ptr %i.ho, align 4, !tbaa !94
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE9constructIS8_JRKS8_EEEvRS9_PT_DpOT0_.exit.i270

bb.z:                                             ; preds = %._crit_edge.i.i.i.i.i269
  %i.hq = call ptr @wmemcpy(ptr noundef %i.ho, ptr noundef %i.hi, i64 noundef %i.hj) #27 ; 0 uses
  %.pre6.i.i.i.i.i272 = load i64, ptr %i.a, align 8, !tbaa !56
  %.pre7.i.i.i.i.i273 = load ptr, ptr %i.hg, align 8, !tbaa !137
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE9constructIS8_JRKS8_EEEvRS9_PT_DpOT0_.exit.i270

_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE9constructIS8_JRKS8_EEEvRS9_PT_DpOT0_.exit.i270: ; preds = %bb.z, %bb.y, %._crit_edge.i.i.i.i.i269
  %i.hr = phi ptr [ %i.ho, %._crit_edge.i.i.i.i.i269 ], [ %i.ho, %bb.y ], [ %.pre7.i.i.i.i.i273, %bb.z ]
  %i.hs = phi i64 [ %i.hn, %._crit_edge.i.i.i.i.i269 ], [ %i.hn, %bb.y ], [ %.pre6.i.i.i.i.i272, %bb.z ] ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  store i64 %i.hs, ptr %i.ht, align 8, !tbaa !124
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.hs
  store i32 0, ptr %i.hu, align 4, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.hv = load i64, ptr %i.l, align 8, !tbaa !134
  %i.hw = add i64 %i.hv, 1
  store i64 %i.hw, ptr %i.l, align 8, !tbaa !134
  br label %_ZN5boost9container6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvvE9push_backERKS7_.exit

bb.aa:                                            ; preds = %_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE9push_backEOS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.hx = load ptr, ptr %i.e, align 8, !tbaa !136
  %i.hy = getelementptr inbounds nuw [32 x i8], ptr %i.hx, i64 %i.hd
  invoke void @_ZN5boost9container6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS7_EEJRKS7_EEEEENS0_12vec_iteratorIPS7_Lb0EEESI_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.45") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef %i.hy, i64 noundef 1, ptr nonnull align 8 dereferenceable(32) %9)
          to label %.noexc276 unwind label %.loopexit.split-lp636.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc276:                                        ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %_ZN5boost9container6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvvE9push_backERKS7_.exit

_ZN5boost9container6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvvE9push_backERKS7_.exit: ; preds = %.noexc276, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE9constructIS8_JRKS8_EEEvRS9_PT_DpOT0_.exit.i270
  %i.hz = add nuw nsw i64 %.0177656, 1            ; 2 uses
  %exitcond686.not = icmp eq i64 %i.hz, 100
  br i1 %exitcond686.not, label %bb.n, label %bb.p, !llvm.loop !596

bb.ab:                                            ; preds = %_ZN5boost9container6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvvE6insertENS0_12vec_iteratorIPS7_Lb1EEERKS7_.exit222
  %i.ia = load ptr, ptr %i.d, align 8, !tbaa !130, !noalias !680 ; 2 uses
  %i.ib = load i64, ptr %i.j, align 8, !tbaa !128, !noalias !681 ; 2 uses
  %.idx.i278 = mul nsw i64 %i.ib, 24
  %i.ic = getelementptr inbounds i8, ptr %i.ia, i64 %.idx.i278
  %.not4.i.i279 = icmp eq i64 %i.ib, 0
  br i1 %.not4.i.i279, label %_Z22CheckEqualStringVectorIN5boost9container6vectorINS1_12basic_stringIwSt11char_traitsIwEvvEEvvEENS2_INSt7__cxx1112basic_stringIwS5_SaIwEEEvvEEEbPT_PT0_.exit287.preheader, label %.lr.ph.i.preheader.i280

_Z22CheckEqualStringVectorIN5boost9container6vectorINS1_12basic_stringIwSt11char_traitsIwEvvEEvvEENS2_INSt7__cxx1112basic_stringIwS5_SaIwEEEvvEEEbPT_PT0_.exit287.preheader: ; preds = %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread.i.i285, %bb.ab
  br label %_Z22CheckEqualStringVectorIN5boost9container6vectorINS1_12basic_stringIwSt11char_traitsIwEvvEEvvEENS2_INSt7__cxx1112basic_stringIwS5_SaIwEEEvvEEEbPT_PT0_.exit287

.lr.ph.i.preheader.i280:                          ; preds = %bb.ab
  %i.id = load ptr, ptr %i.e, align 8, !tbaa !136, !noalias !682
  br label %.lr.ph.i.i281

.lr.ph.i.i281:                                    ; preds = %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread.i.i285, %.lr.ph.i.preheader.i280
  %i.ie = phi ptr [ %i.jb, %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread.i.i285 ], [ %i.id, %.lr.ph.i.preheader.i280 ] ; 3 uses
  %i.if = phi ptr [ %i.ja, %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread.i.i285 ], [ %i.ia, %.lr.ph.i.preheader.i280 ] ; 5 uses
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !51  ; 2 uses
  %i.ih = trunc i8 %i.ig to i1
  %i.ii = lshr i8 %i.ig, 1
  %i.ij = zext nneg i8 %i.ii to i64
  %i.ik = load i64, ptr %i.if, align 8            ; 2 uses
  %i.il = lshr i64 %i.ik, 1                       ; 3 uses
  %i.im = select i1 %i.ih, i64 %i.ij, i64 %i.il
  %i.in = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.io = load i64, ptr %i.in, align 8, !tbaa !124
  %.not.i.i.i282 = icmp eq i64 %i.im, %i.io
  br i1 %.not.i.i.i282, label %bb.ac, label %_Z22CheckEqualStringVectorIN5boost9container6vectorINS1_12basic_stringIwSt11char_traitsIwEvvEEvvEENS2_INSt7__cxx1112basic_stringIwS5_SaIwEEEvvEEEbPT_PT0_.exit321

bb.ac:                                            ; preds = %.lr.ph.i.i281
  %i.ip = trunc i64 %i.ik to i1                   ; 2 uses
  %i.iq = and i64 %i.il, 127
  %i.ir = select i1 %i.ip, i64 %i.iq, i64 %i.il   ; 2 uses
  %i.is = icmp eq i64 %i.ir, 0
  br i1 %i.is, label %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread.i.i285, label %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.i.i284

_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.i.i284: ; preds = %bb.ac
  %i.it = load ptr, ptr %i.ie, align 8, !tbaa !137
  %i.iu = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  %i.iv = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8
  %i.ix = select i1 %i.ip, ptr %i.iu, ptr %i.iw
  %i.iy = call i32 @wmemcmp(ptr noundef %i.ix, ptr noundef %i.it, i64 noundef %i.ir) #28
  %i.iz = icmp eq i32 %i.iy, 0
  br i1 %i.iz, label %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread.i.i285, label %_Z22CheckEqualStringVectorIN5boost9container6vectorINS1_12basic_stringIwSt11char_traitsIwEvvEEvvEENS2_INSt7__cxx1112basic_stringIwS5_SaIwEEEvvEEEbPT_PT0_.exit321

_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread.i.i285: ; preds = %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.i.i284, %bb.ac
  %i.ja = getelementptr inbounds nuw i8, ptr %i.if, i64 24 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ie, i64 32
  %.not.i.i286 = icmp eq ptr %i.ja, %i.ic
  br i1 %.not.i.i286, label %_Z22CheckEqualStringVectorIN5boost9container6vectorINS1_12basic_stringIwSt11char_traitsIwEvvEEvvEENS2_INSt7__cxx1112basic_stringIwS5_SaIwEEEvvEEEbPT_PT0_.exit287.preheader, label %.lr.ph.i.i281, !llvm.loop !6

_Z22CheckEqualStringVectorIN5boost9container6vectorINS1_12basic_stringIwSt11char_traitsIwEvvEEvvEENS2_INSt7__cxx1112basic_stringIwS5_SaIwEEEvvEEEbPT_PT0_.exit246: ; preds = %_Z22CheckEqualStringVectorIN5boost9container6vectorINS1_12basic_stringIwSt11char_traitsIwEvvEEvvEENS2_INSt7__cxx1112basic_stringIwS5_SaIwEEEvvEEEbPT_PT0_.exit246.preheader, %_ZN5boost9container6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvvE6insertENS0_12vec_iteratorIPS7_Lb1EEERKS7_.exit222
  %.0176657 = phi i64 [ %i.lc, %_ZN5boost9container6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvvE6insertENS0_12vec_iteratorIPS7_Lb1EEERKS7_.exit222 ], [ 0, %_Z22CheckEqualStringVectorIN5boost9container6vectorINS1_12basic_stringIwSt11char_traitsIwEvvEEvvEENS2_INSt7__cxx1112basic_stringIwS5_SaIwEEEvvEEEbPT_PT0_.exit246.preheader ] ; 2 uses
  %i.jc = invoke noundef zeroext i1 @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef 6)
          to label %.noexc291 unwind label %.loopexit.split-lp636.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc291:                                        ; preds = %_Z22CheckEqualStringVectorIN5boost9container6vectorINS1_12basic_stringIwSt11char_traitsIwEvvEEvvEENS2_INSt7__cxx1112basic_stringIwS5_SaIwEEEvvEEEbPT_PT0_.exit246
  br i1 %i.jc, label %bb.ad, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i.i.i289

bb.ad:                                            ; preds = %.noexc291
  %i.jd = load i8, ptr %8, align 16, !tbaa !51    ; 2 uses
  %i.je = trunc i8 %i.jd to i1
  %i.jf = lshr i8 %i.jd, 1
  %i.jg = zext nneg i8 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.jg
  %i.ji = load ptr, ptr %i.g, align 16
  %i.jj = load i64, ptr %8, align 16
  %i.jk = lshr i64 %i.jj, 1
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %i.jk
  %i.jm = select i1 %i.je, ptr %i.jh, ptr %i.jl
  store i32 0, ptr %i.jm, align 4, !tbaa !94
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i.i.i289

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i.i.i289: ; preds = %bb.ad, %.noexc291
  %i.jn = load i8, ptr %8, align 16, !tbaa !51
  %i.jo = trunc i8 %i.jn to i1                    ; 2 uses
  %i.jp = load ptr, ptr %i.g, align 16            ; 2 uses
  %i.jq = select i1 %i.jo, ptr %i.f, ptr %i.jp
  %i.jr = call ptr @wmemcpy(ptr noundef %i.jq, ptr noundef nonnull @.str.475, i64 noundef 6) #27 ; 0 uses
  %.sroa.gep709 = getelementptr inbounds nuw i8, ptr %i.jp, i64 24
  %.sroa.sel710 = select i1 %i.jo, ptr %.sroa.gep703, ptr %.sroa.gep709
  store i32 0, ptr %.sroa.sel710, align 4, !tbaa !94
  %i.js = load i8, ptr %8, align 16, !tbaa !51
  %i.jt = trunc i8 %i.js to i1
  br i1 %i.jt, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i.i.i289
  store i8 13, ptr %8, align 16
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEPKw.exit292

bb.af:                                            ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i.i.i289
  %i.ju = load i64, ptr %8, align 16
  %i.jv = and i64 %i.ju, 1
  %i.jw = or disjoint i64 %i.jv, 12
  store i64 %i.jw, ptr %8, align 16
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEPKw.exit292

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEPKw.exit292: ; preds = %bb.af, %bb.ae
  %i.jx = load i64, ptr %i.i, align 8, !tbaa !124
  %i.jy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef %i.jx, ptr noundef nonnull @.str.475, i64 noundef 6)
          to label %.critedge.i295 unwind label %.loopexit.split-lp636.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.critedge.i295:                                   ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEPKw.exit292, %.critedge.i295
  %.0912.i296 = phi ptr [ %i.kd, %.critedge.i295 ], [ %i.c, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEPKw.exit292 ] ; 2 uses
  %.01011.i297 = phi i64 [ %i.ka, %.critedge.i295 ], [ %.0176657, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEPKw.exit292 ] ; 3 uses
  %i.jz = urem i64 %.01011.i297, 10
  %i.ka = udiv i64 %.01011.i297, 10
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr @.str.476, i64 %i.jz
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !94
  store i32 %i.kc, ptr %.0912.i296, align 4, !tbaa !94
  %i.kd = getelementptr inbounds nuw i8, ptr %.0912.i296, i64 4 ; 2 uses
  %.not.i298 = icmp samesign ugt i64 %.01011.i297, 9
  br i1 %.not.i298, label %.critedge.i295, label %_ZN15string_literalsIwE14sprintf_numberEPwy.exit299

_ZN15string_literalsIwE14sprintf_numberEPwy.exit299: ; preds = %.critedge.i295
  store i32 0, ptr %i.kd, align 4, !tbaa !94
  %i.ke = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.c) #28
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ke
  %i.kg = load i8, ptr %8, align 16, !tbaa !51    ; 2 uses
  %i.kh = trunc i8 %i.kg to i1
  %i.ki = lshr i8 %i.kg, 1
  %i.kj = zext nneg i8 %i.ki to i64
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.kj
  %i.kl = load ptr, ptr %i.g, align 16
  %i.km = load i64, ptr %8, align 16
  %i.kn = lshr i64 %i.km, 1
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %i.kn
  %i.kp = select i1 %i.kh, ptr %i.kk, ptr %i.ko
  %i.kq = invoke noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6insertIPKwEEPwS7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %i.kp, ptr noundef nonnull %i.c, ptr noundef nonnull %i.kf, ptr noundef null)
          to label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEpLEPKw.exit301 unwind label %.loopexit.split-lp636.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEpLEPKw.exit301: ; preds = %_ZN15string_literalsIwE14sprintf_numberEPwy.exit299
  %i.kr = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.c) #28 ; 2 uses
  %i.ks = load i64, ptr %i.i, align 8, !tbaa !124
  %i.kt = sub i64 1152921504606846975, %i.ks
  %i.ku = icmp ult i64 %i.kt, %i.kr
  br i1 %i.ku, label %.invoke, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKw.exit.i302

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKw.exit.i302: ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEpLEPKw.exit301
  %i.kv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_appendEPKwm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull %i.c, i64 noundef %i.kr)
          to label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEPKw.exit305 unwind label %.loopexit.split-lp636.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEPKw.exit305: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKw.exit.i302
  %i.kw = load ptr, ptr %i.d, align 8, !tbaa !130, !noalias !683 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.kx = load i64, ptr %i.k, align 8, !tbaa !129, !noalias !684
  %i.ky = load i64, ptr %i.j, align 8, !tbaa !128, !noalias !684
  %.not.i.i306 = icmp eq i64 %i.kx, %i.ky
  br i1 %.not.i.i306, label %bb.ah, label %bb.ag, !prof !72

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEPKw.exit305
  invoke void @_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS5_EEJRKS5_EEEEEvPS5_mT_NS_11move_detail17integral_constantIbLb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef %i.kw, i64 noundef 1, ptr nonnull align 8 dereferenceable(24) %8)
          to label %_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE6insertENS0_12vec_iteratorIPS5_Lb1EEERKS5_.exit unwind label %bb.ak

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEPKw.exit305
  invoke void @_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS5_EEJRKS5_EEEEENS0_12vec_iteratorIPS5_Lb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.43") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef %i.kw, i64 noundef 1, ptr nonnull align 8 dereferenceable(24) %8)
          to label %_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE6insertENS0_12vec_iteratorIPS5_Lb1EEERKS5_.exit unwind label %bb.ak

_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE6insertENS0_12vec_iteratorIPS5_Lb1EEERKS5_.exit: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.kz = load ptr, ptr %i.e, align 8, !tbaa !136, !noalias !685 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.la = load i64, ptr %i.m, align 8, !tbaa !135, !noalias !686
  %i.lb = load i64, ptr %i.l, align 8, !tbaa !134, !noalias !686
  %.not.i.i309 = icmp eq i64 %i.la, %i.lb
  br i1 %.not.i.i309, label %bb.aj, label %bb.ai, !prof !72

bb.ai:                                            ; preds = %_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE6insertENS0_12vec_iteratorIPS5_Lb1EEERKS5_.exit
  invoke void @_ZN5boost9container6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS7_EEJRKS7_EEEEEvPS7_mT_NS_11move_detail17integral_constantIbLb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef %i.kz, i64 noundef 1, ptr nonnull align 8 dereferenceable(32) %9)
          to label %_ZN5boost9container6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvvE6insertENS0_12vec_iteratorIPS7_Lb1EEERKS7_.exit222 unwind label %bb.al

bb.aj:                                            ; preds = %_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE6insertENS0_12vec_iteratorIPS5_Lb1EEERKS5_.exit
  invoke void @_ZN5boost9container6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS7_EEJRKS7_EEEEENS0_12vec_iteratorIPS7_Lb0EEESI_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.45") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef %i.kz, i64 noundef 1, ptr nonnull align 8 dereferenceable(32) %9)
          to label %_ZN5boost9container6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvvE6insertENS0_12vec_iteratorIPS7_Lb1EEERKS7_.exit222 unwind label %bb.al

_ZN5boost9container6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvvE6insertENS0_12vec_iteratorIPS7_Lb1EEERKS7_.exit222: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  %i.lc = add nuw nsw i64 %.0176657, 1            ; 2 uses
  %exitcond687.not = icmp eq i64 %i.lc, 100
  br i1 %exitcond687.not, label %bb.ab, label %_Z22CheckEqualStringVectorIN5boost9container6vectorINS1_12basic_stringIwSt11char_traitsIwEvvEEvvEENS2_INSt7__cxx1112basic_stringIwS5_SaIwEEEvvEEEbPT_PT0_.exit246, !llvm.loop !615

bb.ak:                                            ; preds = %bb.ah, %bb.ag
  %i.ld = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %.loopexit.split-lp636

bb.al:                                            ; preds = %bb.aj, %bb.ai
  %i.le = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %.loopexit.split-lp636

bb.am:                                            ; preds = %_ZN5boost9container6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvvE6insertENS0_12vec_iteratorIPS7_Lb1EEERKS7_.exit
  %i.lf = load ptr, ptr %i.d, align 8, !tbaa !130, !noalias !687 ; 2 uses
  %i.lg = load i64, ptr %i.j, align 8, !tbaa !128, !noalias !688 ; 2 uses
  %.idx.i312 = mul nsw i64 %i.lg, 24
  %i.lh = getelementptr inbounds i8, ptr %i.lf, i64 %.idx.i312
  %.not4.i.i313 = icmp eq i64 %i.lg, 0
  br i1 %.not4.i.i313, label %.loopexit634, label %.lr.ph.i.preheader.i314

.lr.ph.i.preheader.i314:                          ; preds = %bb.am
  %i.li = load ptr, ptr %i.e, align 8, !tbaa !136, !noalias !689
  br label %.lr.ph.i.i315

.lr.ph.i.i315:                                    ; preds = %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread.i.i319, %.lr.ph.i.preheader.i314
  %i.lj = phi ptr [ %i.mg, %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread.i.i319 ], [ %i.li, %.lr.ph.i.preheader.i314 ] ; 3 uses
  %i.lk = phi ptr [ %i.mf, %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread.i.i319 ], [ %i.lf, %.lr.ph.i.preheader.i314 ] ; 5 uses
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !51  ; 2 uses
  %i.lm = trunc i8 %i.ll to i1
  %i.ln = lshr i8 %i.ll, 1
  %i.lo = zext nneg i8 %i.ln to i64
  %i.lp = load i64, ptr %i.lk, align 8            ; 2 uses
  %i.lq = lshr i64 %i.lp, 1                       ; 3 uses
  %i.lr = select i1 %i.lm, i64 %i.lo, i64 %i.lq
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !124
  %.not.i.i.i316 = icmp eq i64 %i.lr, %i.lt
  br i1 %.not.i.i.i316, label %bb.an, label %_Z22CheckEqualStringVectorIN5boost9container6vectorINS1_12basic_stringIwSt11char_traitsIwEvvEEvvEENS2_INSt7__cxx1112basic_stringIwS5_SaIwEEEvvEEEbPT_PT0_.exit321

bb.an:                                            ; preds = %.lr.ph.i.i315
  %i.lu = trunc i64 %i.lp to i1                   ; 2 uses
  %i.lv = and i64 %i.lq, 127
  %i.lw = select i1 %i.lu, i64 %i.lv, i64 %i.lq   ; 2 uses
  %i.lx = icmp eq i64 %i.lw, 0
  br i1 %i.lx, label %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread.i.i319, label %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.i.i318

_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.i.i318: ; preds = %bb.an
  %i.ly = load ptr, ptr %i.lj, align 8, !tbaa !137
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lk, i64 4
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %i.mb = load ptr, ptr %i.ma, align 8
  %i.mc = select i1 %i.lu, ptr %i.lz, ptr %i.mb
  %i.md = call i32 @wmemcmp(ptr noundef %i.mc, ptr noundef %i.ly, i64 noundef %i.lw) #28
  %i.me = icmp eq i32 %i.md, 0
  br i1 %i.me, label %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread.i.i319, label %_Z22CheckEqualStringVectorIN5boost9container6vectorINS1_12basic_stringIwSt11char_traitsIwEvvEEvvEENS2_INSt7__cxx1112basic_stringIwS5_SaIwEEEvvEEEbPT_PT0_.exit321

_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread.i.i319: ; preds = %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.i.i318, %bb.an
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lk, i64 24 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lj, i64 32
  %.not.i.i320 = icmp eq ptr %i.mf, %i.lh
  br i1 %.not.i.i320, label %.loopexit634, label %.lr.ph.i.i315, !llvm.loop !6

_Z22CheckEqualStringVectorIN5boost9container6vectorINS1_12basic_stringIwSt11char_traitsIwEvvEEvvEENS2_INSt7__cxx1112basic_stringIwS5_SaIwEEEvvEEEbPT_PT0_.exit287: ; preds = %_Z22CheckEqualStringVectorIN5boost9container6vectorINS1_12basic_stringIwSt11char_traitsIwEvvEEvvEENS2_INSt7__cxx1112basic_stringIwS5_SaIwEEEvvEEEbPT_PT0_.exit287.preheader, %_ZN5boost9container6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvvE6insertENS0_12vec_iteratorIPS7_Lb1EEERKS7_.exit
  %.0175658 = phi i64 [ %i.oh, %_ZN5boost9container6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvvE6insertENS0_12vec_iteratorIPS7_Lb1EEERKS7_.exit ], [ 0, %_Z22CheckEqualStringVectorIN5boost9container6vectorINS1_12basic_stringIwSt11char_traitsIwEvvEEvvEENS2_INSt7__cxx1112basic_stringIwS5_SaIwEEEvvEEEbPT_PT0_.exit287.preheader ] ; 2 uses
  %i.mh = invoke noundef zeroext i1 @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef 6)
          to label %.noexc325 unwind label %.loopexit.split-lp636.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc325:                                        ; preds = %_Z22CheckEqualStringVectorIN5boost9container6vectorINS1_12basic_stringIwSt11char_traitsIwEvvEEvvEENS2_INSt7__cxx1112basic_stringIwS5_SaIwEEEvvEEEbPT_PT0_.exit287
  br i1 %i.mh, label %bb.ao, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i.i.i323

bb.ao:                                            ; preds = %.noexc325
  %i.mi = load i8, ptr %8, align 16, !tbaa !51    ; 2 uses
  %i.mj = trunc i8 %i.mi to i1
  %i.mk = lshr i8 %i.mi, 1
  %i.ml = zext nneg i8 %i.mk to i64
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ml
  %i.mn = load ptr, ptr %i.g, align 16
  %i.mo = load i64, ptr %8, align 16
  %i.mp = lshr i64 %i.mo, 1
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %i.mp
  %i.mr = select i1 %i.mj, ptr %i.mm, ptr %i.mq
  store i32 0, ptr %i.mr, align 4, !tbaa !94
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i.i.i323

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i.i.i323: ; preds = %bb.ao, %.noexc325
  %i.ms = load i8, ptr %8, align 16, !tbaa !51
  %i.mt = trunc i8 %i.ms to i1                    ; 2 uses
  %i.mu = load ptr, ptr %i.g, align 16            ; 2 uses
  %i.mv = select i1 %i.mt, ptr %i.f, ptr %i.mu
  %i.mw = call ptr @wmemcpy(ptr noundef %i.mv, ptr noundef nonnull @.str.475, i64 noundef 6) #27 ; 0 uses
  %.sroa.gep712 = getelementptr inbounds nuw i8, ptr %i.mu, i64 24
  %.sroa.sel713 = select i1 %i.mt, ptr %.sroa.gep703, ptr %.sroa.gep712
  store i32 0, ptr %.sroa.sel713, align 4, !tbaa !94
  %i.mx = load i8, ptr %8, align 16, !tbaa !51
  %i.my = trunc i8 %i.mx to i1
  br i1 %i.my, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i.i.i323
  store i8 13, ptr %8, align 16
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEPKw.exit326

bb.aq:                                            ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i.i.i323
  %i.mz = load i64, ptr %8, align 16
  %i.na = and i64 %i.mz, 1
  %i.nb = or disjoint i64 %i.na, 12
  store i64 %i.nb, ptr %8, align 16
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEPKw.exit326

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEPKw.exit326: ; preds = %bb.aq, %bb.ap
  %i.nc = load i64, ptr %i.i, align 8, !tbaa !124
  %i.nd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef %i.nc, ptr noundef nonnull @.str.475, i64 noundef 6)
          to label %.critedge.i329 unwind label %.loopexit.split-lp636.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.critedge.i329:                                   ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEPKw.exit326, %.critedge.i329
  %.0912.i330 = phi ptr [ %i.ni, %.critedge.i329 ], [ %i.c, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEPKw.exit326 ] ; 2 uses
  %.01011.i331 = phi i64 [ %i.nf, %.critedge.i329 ], [ %.0175658, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEPKw.exit326 ] ; 3 uses
  %i.ne = urem i64 %.01011.i331, 10
  %i.nf = udiv i64 %.01011.i331, 10
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr @.str.476, i64 %i.ne
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !94
  store i32 %i.nh, ptr %.0912.i330, align 4, !tbaa !94
  %i.ni = getelementptr inbounds nuw i8, ptr %.0912.i330, i64 4 ; 2 uses
  %.not.i332 = icmp samesign ugt i64 %.01011.i331, 9
  br i1 %.not.i332, label %.critedge.i329, label %_ZN15string_literalsIwE14sprintf_numberEPwy.exit333

_ZN15string_literalsIwE14sprintf_numberEPwy.exit333: ; preds = %.critedge.i329
  store i32 0, ptr %i.ni, align 4, !tbaa !94
  %i.nj = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.c) #28
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.nj
  %i.nl = load i8, ptr %8, align 16, !tbaa !51    ; 2 uses
  %i.nm = trunc i8 %i.nl to i1
  %i.nn = lshr i8 %i.nl, 1
  %i.no = zext nneg i8 %i.nn to i64
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.no
  %i.nq = load ptr, ptr %i.g, align 16
  %i.nr = load i64, ptr %8, align 16
  %i.ns = lshr i64 %i.nr, 1
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %i.ns
  %i.nu = select i1 %i.nm, ptr %i.np, ptr %i.nt
  %i.nv = invoke noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6insertIPKwEEPwS7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %i.nu, ptr noundef nonnull %i.c, ptr noundef nonnull %i.nk, ptr noundef null)
          to label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEpLEPKw.exit335 unwind label %.loopexit.split-lp636.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEpLEPKw.exit335: ; preds = %_ZN15string_literalsIwE14sprintf_numberEPwy.exit333
  %i.nw = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.c) #28 ; 2 uses
  %i.nx = load i64, ptr %i.i, align 8, !tbaa !124
  %i.ny = sub i64 1152921504606846975, %i.nx
  %i.nz = icmp ult i64 %i.ny, %i.nw
  br i1 %i.nz, label %.invoke, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKw.exit.i336

.invoke:                                          ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEpLEPKw.exit, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEpLEPKw.exit260, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEpLEPKw.exit301, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEpLEPKw.exit335
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.438) #26
          to label %.cont unwind label %.loopexit.split-lp636.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKw.exit.i336: ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEpLEPKw.exit335
  %i.oa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_appendEPKwm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull %i.c, i64 noundef %i.nw)
          to label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEPKw.exit339 unwind label %.loopexit.split-lp636.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEPKw.exit339: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKw.exit.i336
  %i.ob = load ptr, ptr %i.d, align 8, !tbaa !130, !noalias !690 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.oc = load i64, ptr %i.k, align 8, !tbaa !129, !noalias !691
  %i.od = load i64, ptr %i.j, align 8, !tbaa !128, !noalias !691
  %.not.i.i340 = icmp eq i64 %i.oc, %i.od
  br i1 %.not.i.i340, label %bb.as, label %bb.ar, !prof !72

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEPKw.exit339
  invoke void @_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS5_EEJS5_EEEEEvPS5_mT_NS_11move_detail17integral_constantIbLb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef %i.ob, i64 noundef 1, ptr nonnull align 8 dereferenceable(24) %8)
          to label %_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE6insertENS0_12vec_iteratorIPS5_Lb1EEEOS5_.exit unwind label %bb.av

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEpLEPKw.exit339
  invoke void @_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS5_EEJS5_EEEEENS0_12vec_iteratorIPS5_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.43") align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef %i.ob, i64 noundef 1, ptr nonnull align 8 dereferenceable(24) %8)
          to label %_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE6insertENS0_12vec_iteratorIPS5_Lb1EEEOS5_.exit unwind label %bb.av

_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE6insertENS0_12vec_iteratorIPS5_Lb1EEEOS5_.exit: ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  %i.oe = load ptr, ptr %i.e, align 8, !tbaa !136, !noalias !692 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.of = load i64, ptr %i.m, align 8, !tbaa !135, !noalias !693
  %i.og = load i64, ptr %i.l, align 8, !tbaa !134, !noalias !693
  %.not.i.i343 = icmp eq i64 %i.of, %i.og
  br i1 %.not.i.i343, label %bb.au, label %bb.at, !prof !72

bb.at:                                            ; preds = %_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE6insertENS0_12vec_iteratorIPS5_Lb1EEEOS5_.exit
  invoke void @_ZN5boost9container6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS7_EEJRKS7_EEEEEvPS7_mT_NS_11move_detail17integral_constantIbLb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef %i.oe, i64 noundef 1, ptr nonnull align 8 dereferenceable(32) %9)
          to label %_ZN5boost9container6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvvE6insertENS0_12vec_iteratorIPS7_Lb1EEERKS7_.exit unwind label %bb.aw

bb.au:                                            ; preds = %_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE6insertENS0_12vec_iteratorIPS5_Lb1EEEOS5_.exit
  invoke void @_ZN5boost9container6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS7_EEJRKS7_EEEEENS0_12vec_iteratorIPS7_Lb0EEESI_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.45") align 8 %13, ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef %i.oe, i64 noundef 1, ptr nonnull align 8 dereferenceable(32) %9)
          to label %_ZN5boost9container6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvvE6insertENS0_12vec_iteratorIPS7_Lb1EEERKS7_.exit unwind label %bb.aw

_ZN5boost9container6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvvE6insertENS0_12vec_iteratorIPS7_Lb1EEERKS7_.exit: ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  %i.oh = add nuw nsw i64 %.0175658, 1            ; 2 uses
  %exitcond688.not = icmp eq i64 %i.oh, 100
  br i1 %exitcond688.not, label %bb.am, label %_Z22CheckEqualStringVectorIN5boost9container6vectorINS1_12basic_stringIwSt11char_traitsIwEvvEEvvEENS2_INSt7__cxx1112basic_stringIwS5_SaIwEEEvvEEEbPT_PT0_.exit287, !llvm.loop !634

.loopexit.split-lp636.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aa, %.noexc.i.i.i.i274, %bb.w, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKw.exit.i261, %_ZN15string_literalsIwE14sprintf_numberEPwy.exit258, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEPKw.exit251, %bb.p, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKw.exit.i336, %_ZN15string_literalsIwE14sprintf_numberEPwy.exit333, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEPKw.exit326, %_Z22CheckEqualStringVectorIN5boost9container6vectorINS1_12basic_stringIwSt11char_traitsIwEvvEEvvEENS2_INSt7__cxx1112basic_stringIwS5_SaIwEEEvvEEEbPT_PT0_.exit287, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKw.exit.i302, %_ZN15string_literalsIwE14sprintf_numberEPwy.exit299, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEPKw.exit292, %_Z22CheckEqualStringVectorIN5boost9container6vectorINS1_12basic_stringIwSt11char_traitsIwEvvEEvvEENS2_INSt7__cxx1112basic_stringIwS5_SaIwEEEvvEEEbPT_PT0_.exit246, %bb.k, %.noexc.i.i.i.i, %bb.g, %bb.f, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKw.exit.i, %_ZN15string_literalsIwE14sprintf_numberEPwy.exit, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEPKw.exit, %bb.b, %.invoke, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEPKw.exit351, %.loopexit634
  %lpad.loopexit.split-lp960 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp636

bb.av:                                            ; preds = %bb.as, %bb.ar
  %i.oi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %.loopexit.split-lp636

bb.aw:                                            ; preds = %bb.au, %bb.at
  %i.oj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %.loopexit.split-lp636

.loopexit634:                                     ; preds = %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread.i.i319, %bb.am
  %i.ok = invoke noundef zeroext i1 @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef 6)
          to label %.noexc350 unwind label %.loopexit.split-lp636.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc350:                                        ; preds = %.loopexit634
  br i1 %i.ok, label %bb.ax, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i.i.i348

bb.ax:                                            ; preds = %.noexc350
  %i.ol = load i8, ptr %8, align 16, !tbaa !51    ; 2 uses
  %i.om = trunc i8 %i.ol to i1
  %i.on = lshr i8 %i.ol, 1
  %i.oo = zext nneg i8 %i.on to i64
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.oo
  %i.oq = load ptr, ptr %i.g, align 16
  %i.or = load i64, ptr %8, align 16
  %i.os = lshr i64 %i.or, 1
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.os
  %i.ou = select i1 %i.om, ptr %i.op, ptr %i.ot
  store i32 0, ptr %i.ou, align 4, !tbaa !94
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i.i.i348

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i.i.i348: ; preds = %bb.ax, %.noexc350
  %i.ov = load i8, ptr %8, align 16, !tbaa !51
  %i.ow = trunc i8 %i.ov to i1                    ; 2 uses
  %i.ox = load ptr, ptr %i.g, align 16            ; 2 uses
  %i.oy = select i1 %i.ow, ptr %i.f, ptr %i.ox
  %i.oz = call ptr @wmemcpy(ptr noundef %i.oy, ptr noundef nonnull @.str.475, i64 noundef 6) #27 ; 0 uses
  %.sroa.gep715 = getelementptr inbounds nuw i8, ptr %i.ox, i64 24
  %.sroa.sel716 = select i1 %i.ow, ptr %.sroa.gep703, ptr %.sroa.gep715
  store i32 0, ptr %.sroa.sel716, align 4, !tbaa !94
  %i.pa = load i8, ptr %8, align 16, !tbaa !51
  %i.pb = trunc i8 %i.pa to i1
  br i1 %i.pb, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i.i.i348
  store i8 13, ptr %8, align 16
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEPKw.exit351

bb.az:                                            ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i.i.i348
  %i.pc = load i64, ptr %8, align 16
  %i.pd = and i64 %i.pc, 1
  %i.pe = or disjoint i64 %i.pd, 12
  store i64 %i.pe, ptr %8, align 16
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEPKw.exit351

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEPKw.exit351: ; preds = %bb.az, %bb.ay
  %i.pf = load i64, ptr %i.i, align 8, !tbaa !124
  %i.pg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef %i.pf, ptr noundef nonnull @.str.475, i64 noundef 6)
          to label %bb.ba unwind label %.loopexit.split-lp636.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ba:                                            ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEPKw.exit351
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  store i8 1, ptr %14, align 16
  %i.ph = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 0, ptr %i.ph, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.pi = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.pi, ptr %15, align 8, !tbaa !122
  %i.pj = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i64 0, ptr %i.pj, align 8, !tbaa !124
  store i32 0, ptr %i.pi, align 8, !tbaa !94
  %i.pk = load i8, ptr %8, align 16, !tbaa !51
  %i.pl = trunc i8 %i.pk to i1
  br i1 %i.pl, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, ptr noundef nonnull align 16 dereferenceable(24) %14, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %14, ptr noundef nonnull align 16 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE4swapERS4_.exit

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 16 dereferenceable(24) %14, i64 24, i1 false), !tbaa.struct !138
  %i.pm = load <2 x i64>, ptr %8, align 16
  %i.pn = and <2 x i64> %i.pm, <i64 -2, i64 -1>
  store <2 x i64> %i.pn, ptr %14, align 16
  %i.po = load ptr, ptr %i.g, align 16, !tbaa !97
  %i.pp = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.po, ptr %i.pp, align 16, !tbaa !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, ptr noundef nonnull align 4 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !138
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE4swapERS4_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE4swapERS4_.exit: ; preds = %bb.bb, %bb.bc
  call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %9) #27
  %i.pq = load i8, ptr %8, align 16, !tbaa !51    ; 2 uses
  %i.pr = trunc i8 %i.pq to i1
  %i.ps = lshr i8 %i.pq, 1
  %i.pt = zext nneg i8 %i.ps to i64
  %i.pu = load i64, ptr %8, align 16              ; 2 uses
  %i.pv = lshr i64 %i.pu, 1                       ; 3 uses
  %i.pw = select i1 %i.pr, i64 %i.pt, i64 %i.pv
  %i.px = load i64, ptr %i.i, align 8, !tbaa !124
  %.not.i354 = icmp eq i64 %i.pw, %i.px
  br i1 %.not.i354, label %bb.bd, label %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread621

bb.bd:                                            ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE4swapERS4_.exit
  %i.py = trunc i64 %i.pu to i1                   ; 2 uses
  %i.pz = and i64 %i.pv, 127
  %i.qa = select i1 %i.py, i64 %i.pz, i64 %i.pv   ; 2 uses
  %i.qb = icmp eq i64 %i.qa, 0
  br i1 %i.qb, label %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread, label %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit

_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit: ; preds = %bb.bd
  %i.qc = load ptr, ptr %9, align 8, !tbaa !137
  %i.qd = load ptr, ptr %i.g, align 16
  %i.qe = select i1 %i.py, ptr %i.f, ptr %i.qd
  %i.qf = call i32 @wmemcmp(ptr noundef %i.qe, ptr noundef %i.qc, i64 noundef %i.qa) #28
  %i.qg = icmp eq i32 %i.qf, 0
  br i1 %i.qg, label %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread, label %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread621

_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread: ; preds = %bb.bd, %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  %i.qh = invoke noundef zeroext i1 @_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_(ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br i1 %i.qh, label %bb.bg, label %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread621

bb.bf:                                            ; preds = %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread
  %i.qi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %.loopexit.split-lp
end_hunk_0
begin_hunk_1_@_ZSt25__unguarded_linear_insertIN5boost9container12vec_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_:bb.a

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.o = phi i64 [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %.pre16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ] ; 7 uses
  %i.p = phi ptr [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %.sroa.011.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ] ; 18 uses
  %.sroa.011.0 = getelementptr inbounds i8, ptr %i.p, i64 -32 ; 7 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -24 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !67   ; 7 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.r, i64 %i.o) ; 2 uses
  %i.s = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.s, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.t = load ptr, ptr %.sroa.011.0, align 8, !tbaa !66
  %i.u = load ptr, ptr %1, align 8, !tbaa !66
  %i.v = call i32 @memcmp(ptr noundef %i.u, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #27 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5boost9container12vec_iteratorIPS8_Lb0EEEEEbRT_T0_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.w = sub i64 %i.o, %i.r
  %spec.select7.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.w, i64 -2147483648)
  %.08.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5boost9container12vec_iteratorIPS8_Lb0EEEEEbRT_T0_.exit

_ZNK9__gnu_cxx5__ops14_Val_less_iterclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5boost9container12vec_iteratorIPS8_Lb0EEEEEbRT_T0_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.v, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.x = icmp slt i32 %.0.i.i.i, 0
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !66   ; 11 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 7 uses
  %i.aa = icmp eq ptr %i.y, %i.z                  ; 2 uses
  br i1 %i.x, label %bb.d, label %bb.j

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5boost9container12vec_iteratorIPS8_Lb0EEEEEbRT_T0_.exit
  %i.ab = load ptr, ptr %.sroa.011.0, align 8, !tbaa !66 ; 5 uses
  %i.ac = getelementptr inbounds i8, ptr %i.p, i64 -16 ; 6 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac                ; 2 uses
  br i1 %i.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1: ; preds = %bb.d
  br i1 %i.ad, label %bb.e, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.d
  br i1 %i.ad, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ae = icmp ult i64 %i.r, 16
  call void @llvm.assume(i1 %i.ae)
  switch i64 %i.r, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.af = load i8, ptr %i.ab, align 1, !tbaa !51
  store i8 %i.af, ptr %i.y, align 1, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.ab, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !67  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !67
  %i.ai = load ptr, ptr %i.p, align 8, !tbaa !66
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 0, ptr %i.aj, align 1, !tbaa !51
  %.pre.i = load ptr, ptr %.sroa.011.0, align 8, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.ab, ptr %i.p, align 8, !tbaa !66
  store i64 %i.r, ptr %i.ak, align 8, !tbaa !67
  %i.al = load i64, ptr %i.ac, align 8, !tbaa !51
  store i64 %i.al, ptr %i.z, align 8, !tbaa !51
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.am = load i64, ptr %i.z, align 8, !tbaa !51
  store ptr %i.ab, ptr %i.p, align 8, !tbaa !66
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.r, ptr %i.an, align 8, !tbaa !67
  %i.ao = load i64, ptr %i.ac, align 8, !tbaa !51
  store i64 %i.ao, ptr %i.z, align 8, !tbaa !51
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.y, ptr %.sroa.011.0, align 8, !tbaa !66
  store i64 %i.am, ptr %i.ac, align 8, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ac, ptr %.sroa.011.0, align 8, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.h, %bb.i
  %i.ap = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.y, %bb.h ], [ %i.ac, %bb.i ]
  store i64 0, ptr %i.q, align 8, !tbaa !67
  store i8 0, ptr %i.ap, align 1, !tbaa !51
  store ptr %.sroa.011.0, ptr %0, align 8, !tbaa !114
  %.pre16 = load i64, ptr %i.m, align 8, !tbaa !67
  br label %bb.c, !llvm.loop !1077

bb.j:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5boost9container12vec_iteratorIPS8_Lb0EEEEEbRT_T0_.exit
  %i.aq = load ptr, ptr %1, align 8, !tbaa !66    ; 6 uses
  %i.ar = icmp eq ptr %i.aq, %i.b                 ; 2 uses
  br i1 %i.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8: ; preds = %bb.j
  br i1 %i.ar, label %bb.k, label %.thread.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i2: ; preds = %bb.j
  br i1 %i.ar, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i3

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8
  %i.as = icmp ult i64 %i.o, 16
  call void @llvm.assume(i1 %i.as)
  %.not21.i5 = icmp eq ptr %1, %i.p
  br i1 %.not21.i5, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit10, label %bb.l, !prof !72

bb.l:                                             ; preds = %bb.k
  switch i64 %i.o, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i6
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.at = load i8, ptr %i.aq, align 1, !tbaa !51
  store i8 %i.at, ptr %i.y, align 1, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i6

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.aq, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i6: ; preds = %bb.n, %bb.m, %bb.l
  %i.au = load i64, ptr %i.m, align 8, !tbaa !67  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.au, ptr %i.av, align 8, !tbaa !67
  %i.aw = load ptr, ptr %i.p, align 8, !tbaa !66
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.au
  store i8 0, ptr %i.ax, align 1, !tbaa !51
  %.pre.i7 = load ptr, ptr %1, align 8, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit10

.thread.i9:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.aq, ptr %i.p, align 8, !tbaa !66
  store i64 %i.o, ptr %i.ay, align 8, !tbaa !67
  %i.az = load i64, ptr %i.b, align 8, !tbaa !51
  store i64 %i.az, ptr %i.z, align 8, !tbaa !51
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i3: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i2
  %i.ba = load i64, ptr %i.z, align 8, !tbaa !51
  store ptr %i.aq, ptr %i.p, align 8, !tbaa !66
  %i.bb = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.o, ptr %i.bb, align 8, !tbaa !67
  %i.bc = load i64, ptr %i.b, align 8, !tbaa !51
  store i64 %i.bc, ptr %i.z, align 8, !tbaa !51
  %.not.i4 = icmp eq ptr %i.y, null
  br i1 %.not.i4, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i3
  store ptr %i.y, ptr %1, align 8, !tbaa !66
  store i64 %i.ba, ptr %i.b, align 8, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit10

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i3, %.thread.i9
  store ptr %i.b, ptr %1, align 8, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit10: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i6, %bb.o, %bb.p
  %i.bd = phi ptr [ %.pre.i7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i6 ], [ %i.y, %bb.o ], [ %i.b, %bb.p ], [ %i.aq, %bb.k ]
  store i64 0, ptr %i.m, align 8, !tbaa !67
  store i8 0, ptr %i.bd, align 1, !tbaa !51
  %i.be = load ptr, ptr %1, align 8, !tbaa !66    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.b
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit10
  %i.bg = load i64, ptr %i.b, align 8, !tbaa !51
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEPKw(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %1) #28 ; 6 uses
  %.idx.i = shl nuw nsw i64 %i.a, 2
  %i.b = tail call noundef zeroext i1 @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.a)
  br i1 %i.b, label %bb.b, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 8, !tbaa !51      ; 2 uses
  %i.d = trunc i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = lshr i8 %i.c, 1
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i64, ptr %0, align 8
  %i.l = lshr i64 %i.k, 1
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.l
  %i.n = select i1 %i.d, ptr %i.h, ptr %i.m
  store i32 0, ptr %i.n, align 4, !tbaa !94
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i.i

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i.i: ; preds = %bb.b, %bb.a
  %i.o = load i8, ptr %0, align 8, !tbaa !51
  %i.p = trunc i8 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = select i1 %i.p, ptr %i.q, ptr %i.s       ; 2 uses
  %i.u = icmp eq i64 %i.a, 0
  br i1 %i.u, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i.i
  %i.v = tail call ptr @wmemcpy(ptr noundef %i.t, ptr noundef nonnull %1, i64 noundef %i.a) #27 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i

_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i:       ; preds = %bb.c, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i
  store i32 0, ptr %i.w, align 4, !tbaa !94
  %i.x = load i8, ptr %0, align 8, !tbaa !51
  %i.y = trunc i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i
  %i.z = trunc i64 %i.a to i8
  %i.aa = shl i8 %i.z, 1
  %i.ab = or disjoint i8 %i.aa, 1
  store i8 %i.ab, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6assignEPKw.exit

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i.i
  %i.ac = load i64, ptr %0, align 8
  %i.ad = shl nuw nsw i64 %i.a, 1
  %i.ae = and i64 %i.ac, 1
  %i.af = or disjoint i64 %i.ae, %i.ad
  store i64 %i.af, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6assignEPKw.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6assignEPKw.exit: ; preds = %bb.d, %bb.e
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEPKw(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_Z22CheckEqualStringVectorIN5boost9container6vectorINS1_12basic_stringIwSt11char_traitsIwEvvEEvvEENS2_INSt7__cxx1112basic_stringIwS5_SaIwEEEvvEEEbPT_PT0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !130, !noalias !1084 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !128, !noalias !1085 ; 2 uses
  %.idx = mul nsw i64 %i.c, 24
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %.idx
  %.not4.i = icmp eq i64 %i.c, 0
  br i1 %.not4.i, label %_ZN5boost9intrusive10algo_equalINS_9container12vec_iteratorIPNS2_12basic_stringIwSt11char_traitsIwEvvEELb0EEENS3_IPNSt7__cxx1112basic_stringIwS6_SaIwEEELb0EEE11StringEqualEEbT_SH_T0_T1_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !136, !noalias !1086
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread.i
  %i.f = phi ptr [ %i.ac, %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread.i ], [ %i.e, %.lr.ph.i.preheader ] ; 3 uses
  %i.g = phi ptr [ %i.ab, %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread.i ], [ %i.a, %.lr.ph.i.preheader ] ; 5 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !51    ; 2 uses
  %i.i = trunc i8 %i.h to i1
  %i.j = lshr i8 %i.h, 1
  %i.k = zext nneg i8 %i.j to i64
  %i.l = load i64, ptr %i.g, align 8              ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 3 uses
  %i.n = select i1 %i.i, i64 %i.k, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !124
  %.not.i.i = icmp eq i64 %i.n, %i.p
  br i1 %.not.i.i, label %bb.b, label %_ZN5boost9intrusive10algo_equalINS_9container12vec_iteratorIPNS2_12basic_stringIwSt11char_traitsIwEvvEELb0EEENS3_IPNSt7__cxx1112basic_stringIwS6_SaIwEEELb0EEE11StringEqualEEbT_SH_T0_T1_.exit

bb.b:                                             ; preds = %.lr.ph.i
  %i.q = trunc i64 %i.l to i1                     ; 2 uses
  %i.r = and i64 %i.m, 127
  %i.s = select i1 %i.q, i64 %i.r, i64 %i.m       ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread.i, label %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.i

_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.i: ; preds = %bb.b
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !137
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = select i1 %i.q, ptr %i.v, ptr %i.x
  %i.z = tail call i32 @wmemcmp(ptr noundef %i.y, ptr noundef %i.u, i64 noundef %i.s) #28
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread.i, label %_ZN5boost9intrusive10algo_equalINS_9container12vec_iteratorIPNS2_12basic_stringIwSt11char_traitsIwEvvEELb0EEENS3_IPNSt7__cxx1112basic_stringIwS6_SaIwEEELb0EEE11StringEqualEEbT_SH_T0_T1_.exit

_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread.i: ; preds = %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.i, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.not.i = icmp eq ptr %i.ab, %i.d
  br i1 %.not.i, label %_ZN5boost9intrusive10algo_equalINS_9container12vec_iteratorIPNS2_12basic_stringIwSt11char_traitsIwEvvEELb0EEENS3_IPNSt7__cxx1112basic_stringIwS6_SaIwEEELb0EEE11StringEqualEEbT_SH_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !6

_ZN5boost9intrusive10algo_equalINS_9container12vec_iteratorIPNS2_12basic_stringIwSt11char_traitsIwEvvEELb0EEENS3_IPNSt7__cxx1112basic_stringIwS6_SaIwEEELb0EEE11StringEqualEEbT_SH_T0_T1_.exit: ; preds = %.lr.ph.i, %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.i, %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread.i, %bb.a
  %.not.lcssa.i = phi i1 [ true, %bb.a ], [ false, %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.i ], [ true, %_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_.exit.thread.i ], [ false, %.lr.ph.i ]
  ret i1 %.not.lcssa.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<wchar_t>, void>::short_t", align 8 ; 4 uses
  %2 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<wchar_t>, void>::short_t", align 4 ; 4 uses
  %3 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<wchar_t>, void>::short_t", align 4 ; 4 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !51
  %i.b = trunc i8 %i.a to i1
  %i.c = load i8, ptr %1, align 8, !tbaa !51
  %i.d = trunc i8 %i.c to i1                      ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9swap_dataERS5_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !138
  %i.e = load i64, ptr %0, align 8
  %i.f = and i64 %i.e, -2
  store i64 %i.f, ptr %0, align 8
  %i.g = load i64, ptr %1, align 8
  %i.h = and i64 %i.g, -2
  store i64 %i.h, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !98
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !98
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !97
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !138
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9swap_dataERS5_.exit

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %i.d, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !138
  %i.p = load i64, ptr %1, align 8
  %i.q = and i64 %i.p, -2
  store i64 %i.q, ptr %1, align 8
  %i.r = load i64, ptr %0, align 8
  %i.s = and i64 %i.r, -2
  store i64 %i.s, ptr %1, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !98
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !98
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !97
  store ptr %i.x, ptr %i.o, align 8, !tbaa !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !138
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9swap_dataERS5_.exit

bb.g:                                             ; preds = %bb.e
  %i.y = load i64, ptr %0, align 8                ; 2 uses
  %i.z = and i64 %i.y, -2
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !98
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !97
  %i.ae = load i64, ptr %1, align 8
  %i.af = and i64 %i.ae, -2
  %i.ag = and i64 %i.y, 1
  %i.ah = or disjoint i64 %i.af, %i.ag
  store i64 %i.ah, ptr %0, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !98
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !98
  %i.ak = load ptr, ptr %i.o, align 8, !tbaa !97
  store ptr %i.ak, ptr %i.ac, align 8, !tbaa !97
  %i.al = load i64, ptr %1, align 8
  %i.am = and i64 %i.al, 1
  %i.an = or disjoint i64 %i.am, %i.z
  store i64 %i.an, ptr %1, align 8
  store i64 %i.ab, ptr %i.ai, align 8, !tbaa !98
  store ptr %i.ad, ptr %i.o, align 8, !tbaa !97
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9swap_dataERS5_.exit

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9swap_dataERS5_.exit: ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK11StringEqualclIN5boost9container12basic_stringIwSt11char_traitsIwEvvEENSt7__cxx1112basic_stringIwS5_SaIwEEEEEbRKT_RKT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !51      ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %1, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_1
begin_hunk_2_@_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE13shrink_to_fitEv:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = add nuw nsw i64 %i.h, 1
  %i.m = tail call ptr @wmemcpy(ptr noundef nonnull %i.k, ptr noundef %i.j, i64 noundef %i.l) #27 ; 0 uses
  %i.n = load i8, ptr %0, align 8
  %i.o = or i8 %i.n, 1
  store i8 %i.o, ptr %0, align 8
  %i.p = shl i64 %i.d, 2
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.p) #27
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE33priv_shrink_to_fit_dynamic_bufferINS_11move_detail17integral_constantIjLj1EEEEEvT_PNS6_9enable_ifINS6_7is_sameIS9_S8_EENS6_13enable_if_natEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef null)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0 align 2

declare void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.c, label %bb.b, !prof !72

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE16priv_move_assignEOS4_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0

bb.d:                                             ; preds = %bb.b
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #30
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZSt4sortIN5boost9container12vec_iteratorIPNS1_12basic_stringIwSt11char_traitsIwEvvEELb0EEEEvT_S9_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #1 comdat {
bb.a:
  %2 = alloca %"class.boost::container::vec_iterator.43", align 8 ; 4 uses
  %3 = alloca %"class.boost::container::vec_iterator.43", align 8 ; 4 uses
  %4 = alloca %"class.boost::container::vec_iterator.43", align 8 ; 4 uses
  %5 = alloca %"class.boost::container::vec_iterator.43", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::vec_iterator.43", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::vec_iterator.43", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::vec_iterator.43", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !143    ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !143    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %.not.i = icmp eq ptr %i.a, %i.b
  br i1 %.not.i, label %_ZSt6__sortIN5boost9container12vec_iteratorIPNS1_12basic_stringIwSt11char_traitsIwEvvEELb0EEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %7, align 8, !tbaa !140
  store ptr %i.b, ptr %8, align 8, !tbaa !140
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = sdiv exact i64 %i.e, 24
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = xor i64 %i.h, 126
  call void @_ZSt16__introsort_loopIN5boost9container12vec_iteratorIPNS1_12basic_stringIwSt11char_traitsIwEvvEELb0EEElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, i64 noundef %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.j = icmp sgt i64 %i.e, 384
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %3, align 8, !tbaa !140
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 384 ; 3 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !140, !alias.scope !1090
  call void @_ZSt16__insertion_sortIN5boost9container12vec_iteratorIPNS1_12basic_stringIwSt11char_traitsIwEvvEELb0EEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SC_T0_(ptr noundef nonnull align 8 dead_on_return %3, ptr noundef nonnull align 8 dead_on_return %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.not3.i.i.i = icmp eq ptr %i.k, %i.b
  br i1 %.not3.i.i.i, label %_ZSt26__unguarded_insertion_sortIN5boost9container12vec_iteratorIPNS1_12basic_stringIwSt11char_traitsIwEvvEELb0EEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SC_T0_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.sroa.0.04.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  store ptr %.sroa.0.04.i.i.i, ptr %2, align 8, !tbaa !140
  call void @_ZSt25__unguarded_linear_insertIN5boost9container12vec_iteratorIPNS1_12basic_stringIwSt11char_traitsIwEvvEELb0EEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef nonnull align 8 dead_on_return %2)
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.b
  br i1 %.not.i.i.i, label %_ZSt26__unguarded_insertion_sortIN5boost9container12vec_iteratorIPNS1_12basic_stringIwSt11char_traitsIwEvvEELb0EEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SC_T0_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1089

_ZSt26__unguarded_insertion_sortIN5boost9container12vec_iteratorIPNS1_12basic_stringIwSt11char_traitsIwEvvEELb0EEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SC_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZSt22__final_insertion_sortIN5boost9container12vec_iteratorIPNS1_12basic_stringIwSt11char_traitsIwEvvEELb0EEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SC_T0_.exit.i

bb.d:                                             ; preds = %bb.b
  store ptr %i.a, ptr %5, align 8, !tbaa !140
  store ptr %i.b, ptr %6, align 8, !tbaa !140
  call void @_ZSt16__insertion_sortIN5boost9container12vec_iteratorIPNS1_12basic_stringIwSt11char_traitsIwEvvEELb0EEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SC_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6)
  br label %_ZSt22__final_insertion_sortIN5boost9container12vec_iteratorIPNS1_12basic_stringIwSt11char_traitsIwEvvEELb0EEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SC_T0_.exit.i

_ZSt22__final_insertion_sortIN5boost9container12vec_iteratorIPNS1_12basic_stringIwSt11char_traitsIwEvvEELb0EEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SC_T0_.exit.i: ; preds = %bb.d, %_ZSt26__unguarded_insertion_sortIN5boost9container12vec_iteratorIPNS1_12basic_stringIwSt11char_traitsIwEvvEELb0EEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SC_T0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt6__sortIN5boost9container12vec_iteratorIPNS1_12basic_stringIwSt11char_traitsIwEvvEELb0EEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SC_T0_.exit

_ZSt6__sortIN5boost9container12vec_iteratorIPNS1_12basic_stringIwSt11char_traitsIwEvvEELb0EEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SC_T0_.exit: ; preds = %bb.a, %_ZSt22__final_insertion_sortIN5boost9container12vec_iteratorIPNS1_12basic_stringIwSt11char_traitsIwEvvEELb0EEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SC_T0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZSt4sortIN5boost9container12vec_iteratorIPNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0EEEEvT_SB_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #1 comdat {
bb.a:
  %2 = alloca %"class.boost::container::vec_iterator.45", align 8 ; 4 uses
  %3 = alloca %"class.boost::container::vec_iterator.45", align 8 ; 4 uses
  %4 = alloca %"class.boost::container::vec_iterator.45", align 8 ; 4 uses
  %5 = alloca %"class.boost::container::vec_iterator.45", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::vec_iterator.45", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::vec_iterator.45", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::vec_iterator.45", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !146    ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !146    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %.not.i = icmp eq ptr %i.a, %i.b
  br i1 %.not.i, label %_ZSt6__sortIN5boost9container12vec_iteratorIPNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0EEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SE_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %7, align 8, !tbaa !142
  store ptr %i.b, ptr %8, align 8, !tbaa !142
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ashr exact i64 %i.e, 5
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = xor i64 %i.h, 126
  call void @_ZSt16__introsort_loopIN5boost9container12vec_iteratorIPNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0EEElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SE_T0_T1_(ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, i64 noundef %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.j = icmp sgt i64 %i.e, 512
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %3, align 8, !tbaa !142
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 512 ; 3 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !142, !alias.scope !1094
  call void @_ZSt16__insertion_sortIN5boost9container12vec_iteratorIPNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0EEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SE_T0_(ptr noundef nonnull align 8 dead_on_return %3, ptr noundef nonnull align 8 dead_on_return %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.not3.i.i.i = icmp eq ptr %i.k, %i.b
  br i1 %.not3.i.i.i, label %_ZSt26__unguarded_insertion_sortIN5boost9container12vec_iteratorIPNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0EEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SE_T0_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.sroa.0.04.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  store ptr %.sroa.0.04.i.i.i, ptr %2, align 8, !tbaa !142
  call void @_ZSt25__unguarded_linear_insertIN5boost9container12vec_iteratorIPNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0EEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef nonnull align 8 dead_on_return %2)
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.b
  br i1 %.not.i.i.i, label %_ZSt26__unguarded_insertion_sortIN5boost9container12vec_iteratorIPNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0EEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SE_T0_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1093

_ZSt26__unguarded_insertion_sortIN5boost9container12vec_iteratorIPNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0EEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SE_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZSt22__final_insertion_sortIN5boost9container12vec_iteratorIPNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0EEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SE_T0_.exit.i

bb.d:                                             ; preds = %bb.b
  store ptr %i.a, ptr %5, align 8, !tbaa !142
  store ptr %i.b, ptr %6, align 8, !tbaa !142
  call void @_ZSt16__insertion_sortIN5boost9container12vec_iteratorIPNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0EEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SE_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6)
  br label %_ZSt22__final_insertion_sortIN5boost9container12vec_iteratorIPNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0EEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SE_T0_.exit.i

_ZSt22__final_insertion_sortIN5boost9container12vec_iteratorIPNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0EEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SE_T0_.exit.i: ; preds = %bb.d, %_ZSt26__unguarded_insertion_sortIN5boost9container12vec_iteratorIPNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0EEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SE_T0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt6__sortIN5boost9container12vec_iteratorIPNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0EEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SE_T0_.exit

_ZSt6__sortIN5boost9container12vec_iteratorIPNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0EEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SE_T0_.exit: ; preds = %bb.a, %_ZSt22__final_insertion_sortIN5boost9container12vec_iteratorIPNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0EEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SE_T0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6appendEPKw(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %1) #28
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.a
  %i.c = load i8, ptr %0, align 8, !tbaa !51      ; 2 uses
  %i.d = trunc i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = lshr i8 %i.c, 1
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i64, ptr %0, align 8
  %i.l = lshr i64 %i.k, 1
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.l
  %i.n = select i1 %i.d, ptr %i.h, ptr %i.m
  %i.o = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6insertIPKwEEPwS7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.n, ptr noundef nonnull %1, ptr noundef nonnull %i.b, ptr noundef null) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKw(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6insertIPKwEEPwS7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = load i8, ptr %0, align 8, !tbaa !51      ; 2 uses
  %i.d = trunc i8 %i.c to i1                      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.h = ptrtoint ptr %1 to i64                   ; 9 uses
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %3 to i64                   ; 4 uses
  %i.j = ptrtoint ptr %2 to i64                   ; 7 uses
  %i.k = sub i64 %i.i, %i.j                       ; 4 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 10 uses
  %i.m = lshr i8 %i.c, 1
  %i.n = zext nneg i8 %i.m to i64
  %i.o = load i64, ptr %0, align 8                ; 3 uses
  %i.p = lshr i64 %i.o, 1                         ; 2 uses
  %i.q = select i1 %i.d, i64 %i.n, i64 %i.p       ; 14 uses
  %i.r = trunc i64 %i.o to i1                     ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = add i64 %i.t, -1
  %i.v = select i1 %i.r, i64 4, i64 %i.u          ; 4 uses
  %i.w = sub i64 %i.v, %i.q
  %i.x = select i1 %i.r, ptr %i.e, ptr %i.g       ; 16 uses
  %i.y = ptrtoaddr ptr %i.x to i64                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 0, ptr %i.a, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store ptr null, ptr %i.b, align 8, !tbaa !173
  %.not178 = icmp ult i64 %i.w, %i.l
  br i1 %.not178, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.z = add i64 %i.v, 1                          ; 5 uses
  %i.aa = lshr i64 %i.o, 1
  %i.ab = and i64 %i.aa, 127
  %i.ac = select i1 %i.r, i64 %i.ab, i64 %i.p
  %.neg.i = sub i64 %i.ac, %i.v
  %i.ad = sub i64 2305843009213693950, %i.v
  %i.ae = add i64 %.neg.i, %i.l                   ; 2 uses
  %i.af = icmp ult i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.423) #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ag = icmp ult i64 %i.z, 2305843009213693952
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = shl nuw i64 %i.z, 3
  %i.ai = udiv i64 %i.ah, 5
  br label %_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE12next_storageEmm.exit

bb.g:                                             ; preds = %bb.e
  %i.aj = icmp ugt i64 %i.z, -6917529027641081857
  %i.ak = shl i64 %i.z, 3
  %spec.select.i.i = select i1 %i.aj, i64 -1, i64 %i.ak
  br label %_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE12next_storageEmm.exit

_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE12next_storageEmm.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi i64 [ %i.ai, %bb.f ], [ %spec.select.i.i, %bb.g ]
  %i.al = add i64 %i.ae, %i.z
  %i.am = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.an = tail call noundef i64 @llvm.umax.i64(i64 %i.al, i64 %i.am)
  store i64 %i.an, ptr %i.a, align 8, !tbaa !56
  %i.ao = add i64 %i.q, %i.l                      ; 3 uses
  %i.ap = add i64 %i.ao, 1
  %spec.store.select = select i1 %i.r, ptr null, ptr %i.g
  store ptr %spec.store.select, ptr %i.b, align 8, !tbaa !173
  %spec.select = select i1 %i.r, i32 1, i32 7
  %i.aq = call noundef ptr @_ZN5boost9container3dtl24allocator_version_traitsINS0_13new_allocatorIwEELj1EE18allocation_commandERS4_jmRmRPw(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %spec.select, i64 noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 15 uses
  %i.ar = ptrtoaddr ptr %i.aq to i64              ; 4 uses
  %i.as = icmp eq ptr %i.x, %i.aq
  br i1 %i.as, label %bb.h, label %bb.r

bb.h:                                             ; preds = %_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE12next_storageEmm.exit
  %i.at = load i64, ptr %i.a, align 8, !tbaa !56
  store i64 %i.at, ptr %i.s, align 8, !tbaa !98
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %i.au = ptrtoint ptr %i.x to i64
  %i.av = sub i64 %i.h, %i.au                     ; 3 uses
  %i.aw = ashr exact i64 %i.av, 2
  %i.ax = sub i64 %i.q, %i.aw                     ; 4 uses
  %.not118 = icmp ult i64 %i.ax, %i.l
  br i1 %.not118, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.idx179 = shl i64 %i.q, 2                      ; 2 uses
  %i.ay = getelementptr i8, ptr %i.x, i64 %.idx179 ; 4 uses
  %i.az = sub i64 %i.q, %i.l
  %.idx = shl i64 %i.az, 2                        ; 2 uses
  %.not9.i = icmp eq i64 %.idx, %.idx179
  br i1 %.not9.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPwS6_EEmT_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.j
  %i.ba = getelementptr i8, ptr %i.x, i64 %.idx   ; 3 uses
  %i.bb = add i64 %i.k, -4                        ; 2 uses
  %i.bc = lshr i64 %i.bb, 2
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check289 = icmp ult i64 %i.bb, 28
  br i1 %min.iters.check289, label %.lr.ph.i.preheader345, label %vector.ph290

vector.ph290:                                     ; preds = %.lr.ph.i.preheader
  %n.vec291 = and i64 %i.bd, 9223372036854775800  ; 3 uses
  %i.be = shl i64 %n.vec291, 2                    ; 2 uses
  %i.bf = getelementptr i8, ptr %i.ay, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.ba, i64 %i.be
  br label %vector.body292

vector.body292:                                   ; preds = %vector.body292, %vector.ph290
  %index293 = phi i64 [ 0, %vector.ph290 ], [ %index.next298, %vector.body292 ] ; 2 uses
  %i.bh = shl i64 %index293, 2                    ; 2 uses
  %next.gep294 = getelementptr i8, ptr %i.ay, i64 %i.bh ; 2 uses
  %next.gep295 = getelementptr i8, ptr %i.ba, i64 %i.bh ; 2 uses
  %i.bi = getelementptr i8, ptr %next.gep294, i64 4
  %i.bj = getelementptr i8, ptr %next.gep295, i64 4
  %i.bk = getelementptr i8, ptr %next.gep295, i64 20
  %wide.load296 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !94
  %wide.load297 = load <4 x i32>, ptr %i.bk, align 4, !tbaa !94
  %i.bl = getelementptr i8, ptr %next.gep294, i64 20
  store <4 x i32> %wide.load296, ptr %i.bi, align 4, !tbaa !94
  store <4 x i32> %wide.load297, ptr %i.bl, align 4, !tbaa !94
  %index.next298 = add nuw i64 %index293, 8       ; 2 uses
  %i.bm = icmp eq i64 %index.next298, %n.vec291
  br i1 %i.bm, label %middle.block299, label %vector.body292, !llvm.loop !1095

middle.block299:                                  ; preds = %vector.body292
  %cmp.n300 = icmp eq i64 %i.bd, %n.vec291
  br i1 %cmp.n300, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPwS6_EEmT_S7_T0_.exit, label %.lr.ph.i.preheader345

.lr.ph.i.preheader345:                            ; preds = %.lr.ph.i.preheader, %middle.block299
  %.0711.i.pn.ph = phi ptr [ %i.ay, %.lr.ph.i.preheader ], [ %i.bf, %middle.block299 ]
  %.0810.i.pn.ph = phi ptr [ %i.ba, %.lr.ph.i.preheader ], [ %i.bg, %middle.block299 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader345, %.lr.ph.i
  %.0711.i.pn = phi ptr [ %.0711.i, %.lr.ph.i ], [ %.0711.i.pn.ph, %.lr.ph.i.preheader345 ]
  %.0810.i.pn = phi ptr [ %.0810.i, %.lr.ph.i ], [ %.0810.i.pn.ph, %.lr.ph.i.preheader345 ]
  %.0711.i = getelementptr i8, ptr %.0711.i.pn, i64 4 ; 2 uses
  %.0810.i = getelementptr i8, ptr %.0810.i.pn, i64 4 ; 3 uses
  %i.bn = load i32, ptr %.0810.i, align 4, !tbaa !94
  store i32 %i.bn, ptr %.0711.i, align 4, !tbaa !94
  %.not.i = icmp eq ptr %.0810.i, %i.ay
  br i1 %.not.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPwS6_EEmT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !1096

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPwS6_EEmT_S7_T0_.exit: ; preds = %.lr.ph.i, %middle.block299, %bb.j
  %i.bo = sub nuw i64 %i.ax, %i.l
  %i.bp = add i64 %i.bo, 1                        ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyEPKwS6_Pw.exit135.sink.split, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPwS6_EEmT_S7_T0_.exit
  %i.br = getelementptr inbounds i8, ptr %1, i64 %i.k
  %i.bs = call ptr @wmemmove(ptr noundef nonnull %i.br, ptr noundef %1, i64 noundef %i.bp) #27 ; 0 uses
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyEPKwS6_Pw.exit135.sink.split

bb.l:                                             ; preds = %bb.i
  %.idx180 = shl i64 %i.ax, 2
  %i.bt = add i64 %.idx180, 4                     ; 3 uses
  %i.bu = getelementptr i8, ptr %2, i64 %i.bt     ; 5 uses
  %i.bv = getelementptr [4 x i8], ptr %i.x, i64 %i.q ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 4      ; 5 uses
  %.not9.i120 = icmp eq ptr %i.bu, %3
  br i1 %.not9.i120, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit, label %.lr.ph.i121.preheader

.lr.ph.i121.preheader:                            ; preds = %bb.l
  %i.bx = shl i64 %i.q, 2
  %i.by = add i64 %i.av, %i.i
  %i.bz = add i64 %i.by, -8
  %i.ca = add i64 %i.bx, %i.j
  %i.cb = sub i64 %i.bz, %i.ca                    ; 2 uses
  %i.cc = lshr i64 %i.cb, 2
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check306 = icmp ult i64 %i.cb, 60
  br i1 %min.iters.check306, label %.lr.ph.i121.preheader344, label %vector.memcheck307

vector.memcheck307:                               ; preds = %.lr.ph.i121.preheader
  %i.ce = add i64 %i.av, %i.y
  %i.cf = sub i64 %i.j, %i.ce
  %diff.check308 = icmp ugt i64 %i.cf, -32
  br i1 %diff.check308, label %.lr.ph.i121.preheader344, label %vector.ph309

end_hunk_2
begin_hunk_3_@_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6insertIPKwEEPwS7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE:bb.a
  %.0810.i157.ph = phi ptr [ %1, %vector.memcheck269 ], [ %1, %.lr.ph.i154.preheader ], [ %i.gh, %middle.block282 ]
  br label %.lr.ph.i154

.lr.ph.i154:                                      ; preds = %.lr.ph.i154.preheader346, %.lr.ph.i154
  %.012.i155 = phi i64 [ %i.gq, %.lr.ph.i154 ], [ %.012.i155.ph, %.lr.ph.i154.preheader346 ]
  %.0711.i156 = phi ptr [ %i.go, %.lr.ph.i154 ], [ %.0711.i156.ph, %.lr.ph.i154.preheader346 ] ; 2 uses
  %.0810.i157 = phi ptr [ %i.gp, %.lr.ph.i154 ], [ %.0810.i157.ph, %.lr.ph.i154.preheader346 ] ; 2 uses
  %i.gn = load i32, ptr %.0810.i157, align 4, !tbaa !94
  store i32 %i.gn, ptr %.0711.i156, align 4, !tbaa !94
  %i.go = getelementptr inbounds nuw i8, ptr %.0711.i156, i64 4
  %i.gp = getelementptr inbounds nuw i8, ptr %.0810.i157, i64 4 ; 2 uses
  %i.gq = add nuw nsw i64 %.012.i155, 1           ; 2 uses
  %.not.i158 = icmp eq ptr %i.gp, %i.fu
  br i1 %.not.i158, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit160, label %.lr.ph.i154, !llvm.loop !1106

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit160: ; preds = %.lr.ph.i154, %middle.block282, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit152
  %.0.lcssa.i159 = phi i64 [ 0, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit152 ], [ %i.gm, %middle.block282 ], [ %i.gq, %.lr.ph.i154 ]
  %i.gr = add i64 %.0.lcssa.i159, %i.ft           ; 2 uses
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.gr
  store i32 0, ptr %i.gs, align 4, !tbaa !94
  %i.gt = load i8, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.gu = trunc i8 %i.gt to i1                    ; 2 uses
  %i.gv = load ptr, ptr %i.f, align 8
  %i.gw = select i1 %i.gu, ptr %i.e, ptr %i.gv    ; 2 uses
  %i.gx = load i64, ptr %i.s, align 8
  %i.gy = select i1 %i.gu, i64 5, i64 %i.gx       ; 2 uses
  %i.gz = icmp ne ptr %i.gw, null
  %i.ha = icmp ugt i64 %i.gy, 5
  %or.cond.i.i = and i1 %i.gz, %i.ha
  br i1 %or.cond.i.i, label %bb.t, label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE16deallocate_blockEv.exit

bb.t:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit160
  %i.hb = shl i64 %i.gy, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.gw, i64 noundef %i.hb) #27
  %.pre186 = load i8, ptr %0, align 8, !tbaa !51
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE16deallocate_blockEv.exit

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE16deallocate_blockEv.exit: ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit160, %bb.t
  %i.hc = phi i8 [ %i.gt, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit160 ], [ %.pre186, %bb.t ]
  %i.hd = trunc i8 %i.hc to i1
  %.pre187 = load i64, ptr %0, align 8
  store ptr %i.aq, ptr %i.f, align 8, !tbaa !97
  %i.he = shl i64 %i.gr, 1
  %i.hf = and i64 %.pre187, 1
  %i.hg = select i1 %i.hd, i64 0, i64 %i.hf
  %i.hh = or disjoint i64 %i.hg, %i.he            ; 2 uses
  store i64 %i.hh, ptr %0, align 8
  %i.hi = load i64, ptr %i.a, align 8, !tbaa !56
  store i64 %i.hi, ptr %i.s, align 8, !tbaa !98
  %i.hj = trunc i64 %i.hh to i8
  br label %bb.x

bb.u:                                             ; preds = %bb.r
  %i.hk = ptrtoint ptr %i.x to i64                ; 2 uses
  %i.hl = sub i64 %i.h, %i.hk                     ; 2 uses
  %i.hm = ashr exact i64 %i.hl, 2                 ; 3 uses
  %i.hn = icmp eq ptr %1, %i.x
  br i1 %i.hn, label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit162, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ho = call ptr @wmemmove(ptr noundef %i.aq, ptr noundef %i.x, i64 noundef %i.hm) #27 ; 0 uses
  br label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit162

_ZNSt11char_traitsIwE4moveEPwPKwm.exit162:        ; preds = %bb.u, %bb.v
  %i.hp = getelementptr i8, ptr %i.aq, i64 %i.hl  ; 5 uses
  %i.hq = icmp eq i64 %i.q, %i.hm
  br i1 %i.hq, label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit164, label %bb.w

bb.w:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit162
  %i.hr = sub i64 %i.q, %i.hm
  %i.hs = getelementptr i8, ptr %i.hp, i64 %i.k
  %i.ht = call ptr @wmemmove(ptr noundef %i.hs, ptr noundef %1, i64 noundef %i.hr) #27 ; 0 uses
  br label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit164

_ZNSt11char_traitsIwE4moveEPwPKwm.exit164:        ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit162, %bb.w
  %i.hu = add i64 %i.i, -4
  %i.hv = sub i64 %i.hu, %i.j                     ; 2 uses
  %i.hw = lshr i64 %i.hv, 2
  %i.hx = add nuw nsw i64 %i.hw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.hv, 76
  br i1 %min.iters.check, label %.lr.ph.i166.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit164
  %i.hy = add i64 %i.ar, %i.h
  %i.hz = add i64 %i.hk, %i.j
  %i.ia = sub i64 %i.hz, %i.hy
  %diff.check = icmp ugt i64 %i.ia, -32
  br i1 %diff.check, label %.lr.ph.i166.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.hx, 9223372036854775800     ; 3 uses
  %i.ib = shl i64 %n.vec, 2                       ; 2 uses
  %i.ic = getelementptr i8, ptr %i.hp, i64 %i.ib
  %i.id = getelementptr i8, ptr %2, i64 %i.ib
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ie = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.hp, i64 %i.ie ; 2 uses
  %next.gep219 = getelementptr i8, ptr %2, i64 %i.ie ; 2 uses
  %i.if = getelementptr i8, ptr %next.gep219, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep219, align 4, !tbaa !94
  %wide.load220 = load <4 x i32>, ptr %i.if, align 4, !tbaa !94
  %i.ig = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !94
  store <4 x i32> %wide.load220, ptr %i.ig, align 4, !tbaa !94
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ih = icmp eq i64 %index.next, %n.vec
  br i1 %i.ih, label %middle.block, label %vector.body, !llvm.loop !1107

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hx, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit172, label %.lr.ph.i166.preheader

.lr.ph.i166.preheader:                            ; preds = %vector.memcheck, %_ZNSt11char_traitsIwE4moveEPwPKwm.exit164, %middle.block
  %.0711.i168.ph = phi ptr [ %i.hp, %vector.memcheck ], [ %i.hp, %_ZNSt11char_traitsIwE4moveEPwPKwm.exit164 ], [ %i.ic, %middle.block ]
  %.0810.i169.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %_ZNSt11char_traitsIwE4moveEPwPKwm.exit164 ], [ %i.id, %middle.block ]
  br label %.lr.ph.i166

.lr.ph.i166:                                      ; preds = %.lr.ph.i166.preheader, %.lr.ph.i166
  %.0711.i168 = phi ptr [ %i.ij, %.lr.ph.i166 ], [ %.0711.i168.ph, %.lr.ph.i166.preheader ] ; 2 uses
  %.0810.i169 = phi ptr [ %i.ik, %.lr.ph.i166 ], [ %.0810.i169.ph, %.lr.ph.i166.preheader ] ; 2 uses
  %i.ii = load i32, ptr %.0810.i169, align 4, !tbaa !94
  store i32 %i.ii, ptr %.0711.i168, align 4, !tbaa !94
  %i.ij = getelementptr inbounds nuw i8, ptr %.0711.i168, i64 4
  %i.ik = getelementptr inbounds nuw i8, ptr %.0810.i169, i64 4 ; 2 uses
  %.not.i170 = icmp eq ptr %i.ik, %3
  br i1 %.not.i170, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit172, label %.lr.ph.i166, !llvm.loop !1108

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit172: ; preds = %.lr.ph.i166, %middle.block
  %i.il = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.ao
  store i32 0, ptr %i.il, align 4, !tbaa !94
  %i.im = load i8, ptr %0, align 8, !tbaa !51
  %i.in = trunc i8 %i.im to i1
  %.pre = load i64, ptr %0, align 8
  store ptr %i.aq, ptr %i.f, align 8, !tbaa !97
  %i.io = shl i64 %i.ao, 1
  %i.ip = and i64 %.pre, 1
  %i.iq = select i1 %i.in, i64 0, i64 %i.ip
  %i.ir = or disjoint i64 %i.iq, %i.io            ; 2 uses
  store i64 %i.ir, ptr %0, align 8
  %i.is = load i64, ptr %i.a, align 8, !tbaa !56
  store i64 %i.is, ptr %i.s, align 8, !tbaa !98
  %i.it = trunc i64 %i.ir to i8
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE16deallocate_blockEv.exit, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit172, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit136
  %.pre189 = phi ptr [ %i.aq, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE16deallocate_blockEv.exit ], [ %i.aq, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit172 ], [ %.pre189.pre, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit136 ]
  %.pre188 = phi i8 [ %i.hj, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE16deallocate_blockEv.exit ], [ %i.it, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit172 ], [ %.pre188.pre, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit136 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.pre192 = trunc i8 %.pre188 to i1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.a
  %.pre-phi = phi i1 [ %.pre192, %bb.x ], [ %i.d, %bb.a ]
  %i.iu = phi ptr [ %.pre189, %bb.x ], [ %i.g, %bb.a ]
  %i.iv = select i1 %i.d, ptr %i.e, ptr %i.g
  %i.iw = ptrtoint ptr %i.iv to i64
  %i.ix = sub i64 %i.h, %i.iw
  %i.iy = select i1 %.pre-phi, ptr %i.e, ptr %i.iu
  %i.iz = getelementptr inbounds i8, ptr %i.iy, i64 %i.ix
  ret ptr %i.iz
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6insertIPKwvEEN9__gnu_cxx17__normal_iteratorIPwS4_EENS9_IS7_S4_EET_SD_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !137
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr exact i64 %i.d, 2                   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !124  ; 2 uses
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7replaceEN9__gnu_cxx17__normal_iteratorIPKwS4_EES9_S8_S8_.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.440, ptr noundef nonnull @.str.467, i64 noundef %i.e, i64 noundef %i.g) #26
  unreachable

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7replaceEN9__gnu_cxx17__normal_iteratorIPKwS4_EES9_S8_S8_.exit: ; preds = %bb.a
  %i.i = ptrtoint ptr %3 to i64
  %i.j = ptrtoint ptr %2 to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 2
  %i.m = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.e, i64 noundef 0, ptr noundef %2, i64 noundef %i.l) ; 0 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !137
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.d
  ret ptr %i.o
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7replaceEPKwS6_S6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.d = tail call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %3) #28 ; 2 uses
  %.idx = shl i64 %i.d, 2                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %.idx ; 3 uses
  %i.f = icmp ne ptr %1, %2
  %i.g = icmp ne i64 %i.d, 0
  %i.h = and i1 %i.f, %i.g
  br i1 %i.h, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.i = add i64 %i.c, -4
  %i.j = sub i64 %i.i, %i.b
  %i.k = lshr i64 %i.j, 2
  %i.l = add i64 %.idx, -4
  %i.m = lshr exact i64 %i.l, 2
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.m) ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.n, 11
  br i1 %min.iters.check, label %.lr.ph.i.preheader17, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.preheader
  %i.p = sub i64 %i.c, %i.b
  %i.q = and i64 %i.p, 3
  %ident.check.not = icmp ne i64 %i.q, 0
  %i.r = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.r, -32
  %or.cond = or i1 %ident.check.not, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader17, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.o, 9223372036854775800      ; 3 uses
  %i.s = shl i64 %n.vec, 2                        ; 2 uses
  %i.t = getelementptr i8, ptr %1, i64 %i.s       ; 2 uses
  %i.u = getelementptr i8, ptr %3, i64 %i.s       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.v  ; 2 uses
  %next.gep14 = getelementptr i8, ptr %3, i64 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep14, align 4, !tbaa !94
  %wide.load15 = load <4 x i32>, ptr %i.w, align 4, !tbaa !94
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !94
  store <4 x i32> %wide.load15, ptr %i.x, align 4, !tbaa !94
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !1109

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader17

.lr.ph.i.preheader17:                             ; preds = %vector.scevcheck, %.lr.ph.i.preheader, %middle.block
  %.019.i.ph = phi ptr [ %1, %vector.scevcheck ], [ %1, %.lr.ph.i.preheader ], [ %i.t, %middle.block ]
  %.01618.i.ph = phi ptr [ %3, %vector.scevcheck ], [ %3, %.lr.ph.i.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader17, %.lr.ph.i
  %.019.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.019.i.ph, %.lr.ph.i.preheader17 ] ; 2 uses
  %.01618.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %.01618.i.ph, %.lr.ph.i.preheader17 ] ; 2 uses
  %i.z = load i32, ptr %.01618.i, align 4, !tbaa !94
  store i32 %i.z, ptr %.019.i, align 4, !tbaa !94
  %i.aa = getelementptr inbounds nuw i8, ptr %.019.i, i64 4 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4 ; 3 uses
  %i.ac = icmp ne ptr %i.aa, %2
  %i.ad = icmp ne ptr %i.ab, %i.e
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %i.ae, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1110

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.a
  %.016.lcssa.i = phi ptr [ %3, %bb.a ], [ %i.u, %middle.block ], [ %i.ab, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.t, %middle.block ], [ %i.aa, %.lr.ph.i ] ; 3 uses
  %i.af = icmp eq ptr %.016.lcssa.i, %i.e
  br i1 %i.af, label %bb.b, label %bb.g

bb.b:                                             ; preds = %._crit_edge.i
  %.not.i.i = icmp eq ptr %.0.lcssa.i, %2
  br i1 %.not.i.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7replaceIPKwEERS4_S7_S7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ah = ptrtoint ptr %.0.lcssa.i to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 2
  %i.ak = load i8, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.al = trunc i8 %i.ak to i1
  %i.am = lshr i8 %i.ak, 1
  %i.an = zext nneg i8 %i.am to i64
  %i.ao = load i64, ptr %0, align 8               ; 3 uses
  %i.ap = lshr i64 %i.ao, 1
  %i.aq = select i1 %i.al, i64 %i.an, i64 %i.ap   ; 2 uses
  %i.ar = trunc i64 %i.ao to i8
  %i.as = trunc i64 %i.ao to i1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = select i1 %i.as, ptr %i.at, ptr %i.av
  %i.ax = add nuw i64 %i.aq, 1                    ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ag, %i.ay
  %i.ba = ashr exact i64 %i.az, 2                 ; 2 uses
  %i.bb = icmp eq i64 %i.ax, %i.ba
  br i1 %i.bb, label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bc = sub i64 %i.ax, %i.ba
  %i.bd = tail call ptr @wmemmove(ptr noundef %.0.lcssa.i, ptr noundef %2, i64 noundef %i.bc) #27 ; 0 uses
  %.pre.i.i = load i8, ptr %0, align 8, !tbaa !51
  br label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i

_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i:       ; preds = %bb.d, %bb.c
  %i.be = phi i8 [ %i.ar, %bb.c ], [ %.pre.i.i, %bb.d ]
  %i.bf = sub i64 %i.aq, %i.aj                    ; 2 uses
  %i.bg = trunc i8 %i.be to i1
  br i1 %i.bg, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i
  %i.bh = trunc i64 %i.bf to i8
  %i.bi = shl i8 %i.bh, 1
  %i.bj = or disjoint i8 %i.bi, 1
  store i8 %i.bj, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7replaceIPKwEERS4_S7_S7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE.exit

bb.f:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i
  %i.bk = load i64, ptr %0, align 8
  %i.bl = shl i64 %i.bf, 1
  %i.bm = and i64 %i.bk, 1
  %i.bn = or disjoint i64 %i.bm, %i.bl
  store i64 %i.bn, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7replaceIPKwEERS4_S7_S7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.bo = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6insertIPKwEEPwS7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, ptr noundef nonnull %.016.lcssa.i, ptr noundef nonnull %i.e, ptr noundef null) ; 0 uses
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7replaceIPKwEERS4_S7_S7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7replaceIPKwEERS4_S7_S7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7replaceEN9__gnu_cxx17__normal_iteratorIPKwS4_EES9_S8_(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE5eraseENS0_12vec_iteratorIPS5_Lb1EEES9_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.43") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !145    ; 5 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !145    ; 4 uses
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !130
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !128
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.e ; 3 uses
  %.not9.i = icmp eq ptr %i.b, %i.f
  br i1 %.not9.i, label %.lr.ph.i10.preheader, label %.lr.ph.i

.lr.ph.i10.preheader:                             ; preds = %bb.b
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 24                  ; 2 uses
  br label %.lr.ph.i10

.lr.ph.i:                                         ; preds = %bb.b, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEOS4_.exit.i
  %.011.i = phi ptr [ %i.n, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEOS4_.exit.i ], [ %i.a, %bb.b ] ; 3 uses
  %.0710.i = phi ptr [ %i.m, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEOS4_.exit.i ], [ %i.b, %bb.b ] ; 3 uses
  %.not.i.i = icmp eq ptr %.011.i, %.0710.i
  br i1 %.not.i.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEOS4_.exit.i, label %bb.c, !prof !72

bb.c:                                             ; preds = %.lr.ph.i
  invoke void @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE16priv_move_assignEOS4_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %.011.i, ptr noundef nonnull align 8 dereferenceable(24) %.0710.i)
          to label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEOS4_.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #30
  unreachable

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEOS4_.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.0710.i, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.011.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.m, %i.f
  br i1 %.not.i, label %_ZN5boost9container4moveIPNS0_12basic_stringIwSt11char_traitsIwEvvEES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_S9_SA_.exit, label %.lr.ph.i, !llvm.loop !1111

_ZN5boost9container4moveIPNS0_12basic_stringIwSt11char_traitsIwEvvEES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_S9_SA_.exit: ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEOS4_.exit.i
  %i.o = ptrtoint ptr %i.f to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = sdiv exact i64 %i.q, 24
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit

.lr.ph.i10:                                       ; preds = %.lr.ph.i10.preheader, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE7destroyIS6_EEvRS7_PT_.exit.i
  %.05.i = phi i64 [ %i.s, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE7destroyIS6_EEvRS7_PT_.exit.i ], [ %i.j, %.lr.ph.i10.preheader ]
  %storemerge4.i = phi ptr [ %i.ac, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE7destroyIS6_EEvRS7_PT_.exit.i ], [ %i.a, %.lr.ph.i10.preheader ] ; 4 uses
  %i.s = add i64 %.05.i, -1                       ; 2 uses
  %i.t = load i8, ptr %storemerge4.i, align 1, !tbaa !51
  %i.u = trunc i8 %i.t to i1
  br i1 %i.u, label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE7destroyIS6_EEvRS7_PT_.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i10
  %i.v = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !97   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !98   ; 2 uses
  %i.z = icmp ne ptr %i.w, null
  %i.aa = icmp ugt i64 %i.y, 5
  %or.cond.i.i.i.i.i = and i1 %i.z, %i.aa
  br i1 %or.cond.i.i.i.i.i, label %bb.f, label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE7destroyIS6_EEvRS7_PT_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ab = shl i64 %i.y, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #27
  br label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE7destroyIS6_EEvRS7_PT_.exit.i

_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE7destroyIS6_EEvRS7_PT_.exit.i: ; preds = %bb.f, %bb.e, %.lr.ph.i10
  %i.ac = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 24
  %.not.i11 = icmp eq i64 %i.s, 0
  br i1 %.not.i11, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit, label %.lr.ph.i10, !llvm.loop !12

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit: ; preds = %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE7destroyIS6_EEvRS7_PT_.exit.i, %_ZN5boost9container4moveIPNS0_12basic_stringIwSt11char_traitsIwEvvEES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_S9_SA_.exit
  %i.ad = phi i64 [ %i.r, %_ZN5boost9container4moveIPNS0_12basic_stringIwSt11char_traitsIwEvvEES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_S9_SA_.exit ], [ %i.j, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE7destroyIS6_EEvRS7_PT_.exit.i ]
  %i.ae = load i64, ptr %i.d, align 8, !tbaa !205
  %i.af = sub i64 %i.ae, %i.ad
  store i64 %i.af, ptr %i.d, align 8, !tbaa !205
  %.pre = load ptr, ptr %2, align 8, !tbaa !143
  br label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit, %bb.a
  %i.ag = phi ptr [ %.pre, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit ], [ %i.a, %bb.a ]
  store ptr %i.ag, ptr %0, align 8, !tbaa !140
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z6uniqueIN5boost9container12vec_iteratorIPNS1_12basic_stringIwSt11char_traitsIwEvvEELb0EEEET_S9_S9_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.43") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !140    ; 5 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !140    ; 4 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %.preheader12.preheader, label %.thread

.preheader12.preheader:                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.b
  br i1 %i.e, label %.thread, label %.lr.ph43

.preheader:                                       ; preds = %_ZN5boost9containereqIwSt11char_traitsIwEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EESB_.exit, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.01442, i64 48 ; 2 uses
  %.not15 = icmp eq ptr %i.f, %i.h
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph43:                                         ; preds = %.preheader12.preheader, %_ZN5boost9containereqIwSt11char_traitsIwEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EESB_.exit.thread10
  %i.g = phi ptr [ %i.ao, %_ZN5boost9containereqIwSt11char_traitsIwEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EESB_.exit.thread10 ], [ %i.d, %.preheader12.preheader ] ; 5 uses
  %.sroa.0.01442 = phi ptr [ %i.g, %_ZN5boost9containereqIwSt11char_traitsIwEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EESB_.exit.thread10 ], [ %i.a, %.preheader12.preheader ] ; 3 uses
  %i.h = phi ptr [ %.pre, %_ZN5boost9containereqIwSt11char_traitsIwEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EESB_.exit.thread10 ], [ %i.b, %.preheader12.preheader ]
  %i.i = phi ptr [ %i.an, %_ZN5boost9containereqIwSt11char_traitsIwEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EESB_.exit.thread10 ], [ %i.a, %.preheader12.preheader ] ; 6 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !51    ; 2 uses
  %i.k = trunc i8 %i.j to i1
  %i.l = lshr i8 %i.j, 1
  %i.m = zext nneg i8 %i.l to i64
  %i.n = load i64, ptr %i.i, align 8              ; 2 uses
  %i.o = lshr i64 %i.n, 1                         ; 3 uses
  %i.p = select i1 %i.k, i64 %i.m, i64 %i.o
  %i.q = load i8, ptr %i.g, align 1, !tbaa !51    ; 2 uses
  %i.r = trunc i8 %i.q to i1
  %i.s = lshr i8 %i.q, 1
  %i.t = zext nneg i8 %i.s to i64
  %i.u = load i64, ptr %i.g, align 8              ; 2 uses
  %i.v = lshr i64 %i.u, 1
  %i.w = select i1 %i.r, i64 %i.t, i64 %i.v
  %i.x = icmp eq i64 %i.p, %i.w
  br i1 %i.x, label %bb.b, label %_ZN5boost9containereqIwSt11char_traitsIwEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EESB_.exit.thread10

bb.b:                                             ; preds = %.lr.ph43
  %i.y = trunc i64 %i.n to i1                     ; 2 uses
  %i.z = and i64 %i.o, 127
  %i.aa = select i1 %i.y, i64 %i.z, i64 %i.o      ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.preheader, label %_ZN5boost9containereqIwSt11char_traitsIwEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EESB_.exit

_ZN5boost9containereqIwSt11char_traitsIwEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EESB_.exit: ; preds = %bb.b
  %i.ac = trunc i64 %i.u to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.01442, i64 28
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.01442, i64 40
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = select i1 %i.ac, ptr %i.ad, ptr %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = select i1 %i.y, ptr %i.ah, ptr %i.aj
  %i.al = tail call i32 @wmemcmp(ptr noundef %i.ak, ptr noundef %i.ag, i64 noundef %i.aa) #28
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.preheader, label %_ZN5boost9containereqIwSt11char_traitsIwEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EESB_.exit.thread10

_ZN5boost9containereqIwSt11char_traitsIwEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EESB_.exit.thread10: ; preds = %.lr.ph43, %_ZN5boost9containereqIwSt11char_traitsIwEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EESB_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  store ptr %i.an, ptr %1, align 8, !tbaa !140
  %.pre = load ptr, ptr %2, align 8, !tbaa !140   ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %.pre
  br i1 %i.ap, label %.thread, label %.lr.ph43

.lr.ph:                                           ; preds = %.preheader, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEOS4_.exit
  %i.aq = phi ptr [ %i.bz, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEOS4_.exit ], [ %i.f, %.preheader ] ; 5 uses
  %.sroa.0.116 = phi ptr [ %i.aq, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEOS4_.exit ], [ %i.g, %.preheader ] ; 3 uses
  %i.ar = load ptr, ptr %1, align 8, !tbaa !140   ; 6 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !51  ; 2 uses
  %i.at = trunc i8 %i.as to i1
  %i.au = lshr i8 %i.as, 1
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = load i64, ptr %i.ar, align 8            ; 2 uses
  %i.ax = lshr i64 %i.aw, 1                       ; 3 uses
  %i.ay = select i1 %i.at, i64 %i.av, i64 %i.ax
  %i.az = load i8, ptr %i.aq, align 1, !tbaa !51  ; 2 uses
  %i.ba = trunc i8 %i.az to i1
  %i.bb = lshr i8 %i.az, 1
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = load i64, ptr %i.aq, align 8            ; 2 uses
  %i.be = lshr i64 %i.bd, 1
  %i.bf = select i1 %i.ba, i64 %i.bc, i64 %i.be
  %i.bg = icmp eq i64 %i.ay, %i.bf
  br i1 %i.bg, label %bb.c, label %_ZN5boost9containereqIwSt11char_traitsIwEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EESB_.exit3.thread11

bb.c:                                             ; preds = %.lr.ph
  %i.bh = trunc i64 %i.aw to i1                   ; 2 uses
  %i.bi = and i64 %i.ax, 127
  %i.bj = select i1 %i.bh, i64 %i.bi, i64 %i.ax   ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEOS4_.exit, label %_ZN5boost9containereqIwSt11char_traitsIwEvvEEbRKNS0_12basic_stringIT_T0_T1_T2_EESB_.exit3
end_hunk_3
begin_hunk_4_@_ZN5boost9container6vectorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvvE5eraseENS0_12vec_iteratorIPS7_Lb1EEESB_:bb.a
  br i1 %.not.i9, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEPS8_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SD_m.exit, label %.lr.ph.i8, !llvm.loop !13

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEPS8_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SD_m.exit: ; preds = %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEE7destroyIS8_EEvRS9_PT_.exit.i, %_ZN5boost9container4moveIPNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES8_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_SB_SC_.exit
  %i.au = load i64, ptr %i.d, align 8, !tbaa !206
  %i.av = sub i64 %i.au, %i.al
  store i64 %i.av, ptr %i.d, align 8, !tbaa !206
  %.pre = load ptr, ptr %2, align 8, !tbaa !146
  br label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEPS8_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SD_m.exit, %bb.a
  %i.aw = phi ptr [ %.pre, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEPS8_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SD_m.exit ], [ %i.a, %bb.a ]
  store ptr %i.aw, ptr %0, align 8, !tbaa !142
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_Z6uniqueIN5boost9container12vec_iteratorIPNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0EEEET_SB_SB_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.45") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !142    ; 5 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !142    ; 4 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %.preheader12.preheader, label %.thread

.preheader12.preheader:                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.b
  br i1 %i.e, label %.thread, label %.lr.ph55

.preheader:                                       ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.01454, i64 64 ; 2 uses
  %.not15 = icmp eq ptr %i.f, %i.h
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph55:                                         ; preds = %.preheader12.preheader, %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10
  %i.g = phi ptr [ %i.u, %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10 ], [ %i.d, %.preheader12.preheader ] ; 4 uses
  %.sroa.0.01454 = phi ptr [ %i.g, %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10 ], [ %i.a, %.preheader12.preheader ] ; 2 uses
  %i.h = phi ptr [ %.pre, %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10 ], [ %i.b, %.preheader12.preheader ] ; 2 uses
  %i.i = phi ptr [ %i.t, %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10 ], [ %i.a, %.preheader12.preheader ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !124  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.01454, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !124
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %bb.b, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10

bb.b:                                             ; preds = %.lr.ph55
  %i.o = icmp eq i64 %i.k, 0
  br i1 %i.o, label %.preheader, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.b
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !137
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !137
  %i.r = tail call i32 @wmemcmp(ptr noundef %i.q, ptr noundef %i.p, i64 noundef %i.k) #28
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.preheader, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10

_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10: ; preds = %.lr.ph55, %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  store ptr %i.t, ptr %1, align 8, !tbaa !142
  %.pre = load ptr, ptr %2, align 8, !tbaa !142   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.v = icmp eq ptr %i.u, %.pre
  br i1 %i.v, label %.thread, label %.lr.ph55

.lr.ph:                                           ; preds = %.preheader, %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit3.thread
  %i.w = phi ptr [ %i.bd, %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit3.thread ], [ %i.h, %.preheader ] ; 2 uses
  %i.x = phi ptr [ %i.be, %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit3.thread ], [ %i.f, %.preheader ] ; 7 uses
  %.sroa.0.116 = phi ptr [ %i.x, %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit3.thread ], [ %i.g, %.preheader ] ; 3 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !142    ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !124 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.116, i64 40 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !124 ; 7 uses
  %i.ad = icmp eq i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.c, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit3.thread11

bb.c:                                             ; preds = %.lr.ph
  %i.ae = icmp eq i64 %i.aa, 0
  br i1 %i.ae, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit3.thread, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit3

_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit3: ; preds = %bb.c
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !137
  %i.ag = load ptr, ptr %i.y, align 8, !tbaa !137
  %i.ah = tail call i32 @wmemcmp(ptr noundef %i.ag, ptr noundef %i.af, i64 noundef %i.aa) #28
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit3.thread, label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit3.thread11

_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit3.thread11: ; preds = %.lr.ph, %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 5 uses
  store ptr %i.aj, ptr %1, align 8, !tbaa !142
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !137 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 4 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  %i.an = load ptr, ptr %i.x, align 8, !tbaa !137 ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.116, i64 48 ; 6 uses
  %i.ap = icmp eq ptr %i.an, %i.ao                ; 2 uses
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i: ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit3.thread11
  br i1 %i.ap, label %bb.d, label %.thread.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i: ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit3.thread11
  br i1 %i.ap, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i
  %i.aq = icmp ult i64 %i.ac, 4
  tail call void @llvm.assume(i1 %i.aq)
  %.not21.i = icmp eq ptr %.sroa.0.116, %i.y
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit, label %bb.e, !prof !72

bb.e:                                             ; preds = %bb.d
  switch i64 %i.ac, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.ar = load i32, ptr %i.an, align 4, !tbaa !94
  store i32 %i.ar, ptr %i.ak, align 4, !tbaa !94
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i

bb.g:                                             ; preds = %bb.e
  %i.as = tail call ptr @wmemcpy(ptr noundef %i.ak, ptr noundef %i.an, i64 noundef %i.ac) #27 ; 0 uses
  %.pre.i = load i64, ptr %i.ab, align 8, !tbaa !124
  %.pre30.i = load ptr, ptr %i.aj, align 8, !tbaa !137
  %.pre31.pre.i = load ptr, ptr %i.x, align 8, !tbaa !137
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %.pre31.i = phi ptr [ %i.an, %bb.e ], [ %.pre31.pre.i, %bb.g ], [ %i.an, %bb.f ]
  %i.at = phi ptr [ %i.ak, %bb.e ], [ %.pre30.i, %bb.g ], [ %i.ak, %bb.f ]
  %i.au = phi i64 [ %i.ac, %bb.e ], [ %.pre.i, %bb.g ], [ 1, %bb.f ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store i64 %i.au, ptr %i.av, align 8, !tbaa !124
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.au
  store i32 0, ptr %i.aw, align 4, !tbaa !94
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !137
  store i64 %i.ac, ptr %i.ax, align 8, !tbaa !124
  %i.ay = load i64, ptr %i.ao, align 8, !tbaa !51
  store i64 %i.ay, ptr %i.al, align 8, !tbaa !51
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i
  %i.az = load i64, ptr %i.al, align 8, !tbaa !51
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !137
  %i.ba = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store i64 %i.ac, ptr %i.ba, align 8, !tbaa !124
  %i.bb = load i64, ptr %i.ao, align 8, !tbaa !51
  store i64 %i.bb, ptr %i.al, align 8, !tbaa !51
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ak, ptr %i.x, align 8, !tbaa !137
  store i64 %i.az, ptr %i.ao, align 8, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ao, ptr %i.x, align 8, !tbaa !137
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i, %bb.h, %bb.i
  %i.bc = phi ptr [ %.pre31.i, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i ], [ %i.ak, %bb.h ], [ %i.ao, %bb.i ], [ %i.an, %bb.d ]
  store i64 0, ptr %i.ab, align 8, !tbaa !124
  store i32 0, ptr %i.bc, align 4, !tbaa !94
  %.pre21 = load ptr, ptr %2, align 8, !tbaa !142
  br label %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit3.thread

_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit3.thread: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit, %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit3
  %i.bd = phi ptr [ %i.w, %bb.c ], [ %.pre21, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit ], [ %i.w, %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit3 ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.be, %i.bd
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !1114

._crit_edge.loopexit:                             ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit3.thread
  %.pre22 = load ptr, ptr %1, align 8, !tbaa !142
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bf = phi ptr [ %.pre22, %._crit_edge.loopexit ], [ %i.i, %.preheader ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  br label %.thread

.thread:                                          ; preds = %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10, %.preheader12.preheader, %bb.a, %._crit_edge
  %storemerge = phi ptr [ %i.a, %bb.a ], [ %i.bg, %._crit_edge ], [ %i.b, %.preheader12.preheader ], [ %.pre, %_ZSteqIwSt11char_traitsIwESaIwEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread10 ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !142
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEC2EPKw(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !94
  %i.c = tail call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %1) #28 ; 6 uses
  %.idx = shl nuw nsw i64 %i.c, 2
  %i.d = invoke noundef zeroext i1 @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.a
  br i1 %i.d, label %bb.b, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i

bb.b:                                             ; preds = %.noexc
  %i.e = load i8, ptr %0, align 8, !tbaa !51      ; 2 uses
  %i.f = trunc i8 %i.e to i1
  %i.g = lshr i8 %i.e, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.h
  %i.j = load ptr, ptr %i.b, align 8
  %i.k = load i64, ptr %0, align 8
  %i.l = lshr i64 %i.k, 1
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.l
  %i.n = select i1 %i.f, ptr %i.i, ptr %i.m
  store i32 0, ptr %i.n, align 4, !tbaa !94
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i: ; preds = %bb.b, %.noexc
  %i.o = load i8, ptr %0, align 8, !tbaa !51
  %i.p = trunc i8 %i.o to i1
  %i.q = load ptr, ptr %i.b, align 8
  %i.r = select i1 %i.p, ptr %i.a, ptr %i.q       ; 2 uses
  %i.s = icmp eq i64 %i.c, 0
  br i1 %i.s, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i
  %i.t = tail call ptr @wmemcpy(ptr noundef %i.r, ptr noundef nonnull %1, i64 noundef %i.c) #27 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i

_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i:         ; preds = %bb.c, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx
  store i32 0, ptr %i.u, align 4, !tbaa !94
  %i.v = load i8, ptr %0, align 8, !tbaa !51
  %i.w = trunc i8 %i.v to i1
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.x = trunc i64 %i.c to i8
  %i.y = shl i8 %i.x, 1
  %i.z = or disjoint i8 %i.y, 1
  store i8 %i.z, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6assignEPKwS6_.exit

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.aa = load i64, ptr %0, align 8
  %i.ab = shl nuw nsw i64 %i.c, 1
  %i.ac = and i64 %i.aa, 1
  %i.ad = or disjoint i64 %i.ac, %i.ab
  store i64 %i.ad, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6assignEPKwS6_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6assignEPKwS6_.exit: ; preds = %bb.e, %bb.d
  ret void

bb.f:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #27
  resume { ptr, i32 } %i.ae
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2IS3_EEPKwRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !122
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.414) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %1) #28 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.d, ptr %i.a, align 8, !tbaa !56
  %i.e = icmp ugt i64 %i.d, 3
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !137
  %i.g = load i64, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  store i64 %i.g, ptr %i.b, align 8, !tbaa !51
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi i64 [ %i.g, %.noexc ], [ %i.d, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 4 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.j = load i32, ptr %1, align 4, !tbaa !94
  store i32 %i.j, ptr %i.i, align 4, !tbaa !94
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.k = call ptr @wmemcpy(ptr noundef %i.i, ptr noundef nonnull %1, i64 noundef %i.d) #27 ; 0 uses
  %.pre6.i = load i64, ptr %i.a, align 8, !tbaa !56
  %.pre7.i = load ptr, ptr %0, align 8, !tbaa !137
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.l = phi ptr [ %i.i, %._crit_edge.i ], [ %i.i, %bb.d ], [ %.pre7.i, %bb.e ]
  %i.m = phi i64 [ %i.h, %._crit_edge.i ], [ %i.h, %bb.d ], [ %.pre6.i, %bb.e ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !124
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.m
  store i32 0, ptr %i.o, align 4, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9containerplIwSt11char_traitsIwEvvEENS0_12basic_stringIT_T0_T1_T2_EERKS9_SB_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::basic_string.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !51      ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %1, align 8
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = load i8, ptr %2, align 8, !tbaa !51      ; 2 uses
  %i.i = trunc i8 %i.h to i1
  %i.j = lshr i8 %i.h, 1
  %i.k = zext nneg i8 %i.j to i64
  %i.l = load i64, ptr %2, align 8
  %i.m = lshr i64 %i.l, 1
  %i.n = select i1 %i.i, i64 %i.k, i64 %i.m
  %i.o = add nuw i64 %i.n, %i.g
  tail call void @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEC2ENS4_9reserve_tEmRKNS0_13new_allocatorIwEE(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.o, ptr noundef nonnull align 1 dereferenceable(1) %1)
  %i.p = load i8, ptr %1, align 8, !tbaa !51      ; 2 uses
  %i.q = trunc i8 %i.p to i1                      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = select i1 %i.q, ptr %i.r, ptr %i.t
  %i.v = lshr i8 %i.p, 1
  %i.w = zext nneg i8 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.w
  %i.y = load i64, ptr %1, align 8
  %i.z = lshr i64 %i.y, 1
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.z
  %i.ab = select i1 %i.q, ptr %i.x, ptr %i.aa
  %i.ac = load i8, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.ad = trunc i8 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.af = lshr i8 %i.ac, 1
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = load i64, ptr %0, align 8
  %i.al = lshr i64 %i.ak, 1
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.al
  %i.an = select i1 %i.ad, ptr %i.ah, ptr %i.am
  %i.ao = invoke noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6insertIPKwEEPwS7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.an, ptr noundef %i.u, ptr noundef %i.ab, ptr noundef null)
          to label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6appendERKS4_.exit unwind label %bb.b ; 0 uses

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6appendERKS4_.exit: ; preds = %bb.a
  %i.ap = load i8, ptr %2, align 8, !tbaa !51     ; 2 uses
  %i.aq = trunc i8 %i.ap to i1                    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = select i1 %i.aq, ptr %i.ar, ptr %i.at
  %i.av = lshr i8 %i.ap, 1
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.aw
  %i.ay = load i64, ptr %2, align 8
  %i.az = lshr i64 %i.ay, 1
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.az
  %i.bb = select i1 %i.aq, ptr %i.ax, ptr %i.ba
  %i.bc = load i8, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.bd = trunc i8 %i.bc to i1
  %i.be = lshr i8 %i.bc, 1
  %i.bf = zext nneg i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.bf
  %i.bh = load ptr, ptr %i.ai, align 8
  %i.bi = load i64, ptr %0, align 8
  %i.bj = lshr i64 %i.bi, 1
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bj
  %i.bl = select i1 %i.bd, ptr %i.bg, ptr %i.bk
  %i.bm = invoke noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6insertIPKwEEPwS7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.bl, ptr noundef %i.au, ptr noundef %i.bb, ptr noundef null)
          to label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6appendERKS4_.exit7 unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6appendERKS4_.exit, %bb.a
  %i.bn = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #27
  resume { ptr, i32 } %i.bn

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6appendERKS4_.exit7: ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6appendERKS4_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIwSt11char_traitsIwESaIwEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.38") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !137
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !124  ; 3 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !137
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !124  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !122, !alias.scope !1117
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.h, align 8, !tbaa !124, !alias.scope !1117
  store i32 0, ptr %i.g, align 8, !tbaa !94, !alias.scope !1117
  %i.i = add i64 %i.f, %i.c
  invoke void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.i)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.h, align 8, !tbaa !124, !alias.scope !1117
  %i.k = sub i64 1152921504606846975, %i.j
  %i.l = icmp ult i64 %i.k, %i.c
  br i1 %i.l, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.b
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_appendEPKwm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKwm.exit.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKwm.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i.i
  %i.n = load i64, ptr %i.h, align 8, !tbaa !124, !alias.scope !1117
  %i.o = sub i64 1152921504606846975, %i.n
  %i.p = icmp ult i64 %i.o, %i.f
  br i1 %i.p, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i10.i

.invoke.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKwm.exit.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.438) #26
          to label %.cont.i unwind label %bb.c

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i10.i: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKwm.exit.i
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_appendEPKwm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.d, i64 noundef %i.f)
          to label %_ZSt12__str_concatINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i10.i, %.invoke.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i.i, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %0, align 8, !tbaa !137, !alias.scope !1117 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.g
  br i1 %i.t, label %.body, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.u = load i64, ptr %i.g, align 8, !tbaa !51, !alias.scope !1117
  %i.v = shl i64 %i.u, 2
  %i.w = add i64 %i.v, 4
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #29
  br label %.body

_ZSt12__str_concatINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i10.i
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.r
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9containerplIwSt11char_traitsIwEvvEENS0_12basic_stringIT_T0_T1_T2_EERKS9_OS9_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::basic_string.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<wchar_t>, void>::short_t", align 8 ; 4 uses
  %3 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<wchar_t>, void>::short_t", align 4 ; 4 uses
  %i.a = load i8, ptr %2, align 8, !tbaa !51
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
end_hunk_4
begin_hunk_5_@_ZN5boost9containerplIwSt11char_traitsIwEvvEENS0_12basic_stringIT_T0_T1_T2_EEOS9_SA_
define linkonce_odr hidden void @_ZN5boost9containerplIwSt11char_traitsIwEvvEENS0_12basic_stringIT_T0_T1_T2_EEOS9_SA_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::basic_string.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<wchar_t>, void>::short_t", align 8 ; 4 uses
  %3 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<wchar_t>, void>::short_t", align 4 ; 4 uses
  %i.a = load i8, ptr %2, align 8, !tbaa !51      ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e
  %i.g = lshr i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.h
  %i.j = load i64, ptr %2, align 8
  %i.k = lshr i64 %i.j, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k
  %i.m = select i1 %i.b, ptr %i.i, ptr %i.l
  %i.n = load i8, ptr %1, align 8, !tbaa !51      ; 2 uses
  %i.o = trunc i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = lshr i8 %i.n, 1
  %i.r = zext nneg i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load i64, ptr %1, align 8
  %i.w = lshr i64 %i.v, 1
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.w
  %i.y = select i1 %i.o, ptr %i.s, ptr %i.x
  %i.z = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6insertIPKwEEPwS7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.y, ptr noundef %i.f, ptr noundef %i.m, ptr noundef null) ; 0 uses
  store i8 1, ptr %0, align 8
  %i.aa = load i8, ptr %1, align 8, !tbaa !51
  %i.ab = trunc i8 %i.aa to i1
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEC2EOS4_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !138
  %i.ac = load <2 x i64>, ptr %1, align 8
  %i.ad = and <2 x i64> %i.ac, <i64 -2, i64 -1>
  store <2 x i64> %i.ad, ptr %0, align 8
  %i.ae = load ptr, ptr %i.t, align 8, !tbaa !97
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !138
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEC2EOS4_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEC2EOS4_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIwSt11char_traitsIwESaIwEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.38") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !124  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !124  ; 4 uses
  %i.e = add i64 %i.d, %i.b                       ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !137    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, 4
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.g, align 8, !tbaa !51
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i
  %i.k = phi i64 [ %i.j, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i ], [ 3, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i ]
  %i.l = icmp ugt i64 %i.e, %i.k
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit
  %i.m = load ptr, ptr %2, align 8, !tbaa !137
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i13, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i12

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i13: ; preds = %bb.b
  %i.p = icmp ult i64 %i.d, 4
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i12: ; preds = %bb.b
  %i.q = load i64, ptr %i.n, align 8, !tbaa !51
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit14: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i13, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i12
  %i.r = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i12 ], [ 3, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i13 ]
  %.not = icmp ugt i64 %i.e, %i.r
  br i1 %.not, label %bb.d, label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit14
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.b) ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !122
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !137  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i15

bb.c:                                             ; preds = %.critedge
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !124  ; 2 uses
  %i.z = icmp ult i64 %i.y, 4
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  %i.ab = tail call ptr @wmemcpy(ptr noundef nonnull %i.t, ptr noundef nonnull %i.v, i64 noundef %i.aa) #27 ; 0 uses
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i15: ; preds = %.critedge
  store ptr %i.u, ptr %0, align 8, !tbaa !137
  %i.ac = load i64, ptr %i.v, align 8, !tbaa !51
  store i64 %i.ac, ptr %i.t, align 8, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i15
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !124
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !124
  store ptr %i.v, ptr %i.s, align 8, !tbaa !137
  store i64 0, ptr %i.ad, align 8, !tbaa !124
  store i32 0, ptr %i.v, align 8, !tbaa !94
  br label %bb.g

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit14, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit
  %i.ag = sub i64 1152921504606846975, %i.b
  %i.ah = icmp ult i64 %i.ag, %i.d
  br i1 %i.ah, label %bb.e, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendERKS4_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.438) #26
  unreachable

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendERKS4_.exit: ; preds = %bb.d
  %i.ai = load ptr, ptr %2, align 8, !tbaa !137
  %i.aj = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_appendEPKwm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ai, i64 noundef %i.d) ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ak, ptr %0, align 8, !tbaa !122
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !137 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 5 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i16

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendERKS4_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !124 ; 2 uses
  %i.aq = icmp ult i64 %i.ap, 4
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  %i.as = tail call ptr @wmemcpy(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.am, i64 noundef %i.ar) #27 ; 0 uses
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit17

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i16: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendERKS4_.exit
  store ptr %i.al, ptr %0, align 8, !tbaa !137
  %i.at = load i64, ptr %i.am, align 8, !tbaa !51
  store i64 %i.at, ptr %i.ak, align 8, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit17

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit17: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i16
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !124
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !124
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !137
  store i64 0, ptr %i.au, align 8, !tbaa !124
  store i32 0, ptr %i.am, align 8, !tbaa !94
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit17
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9containerplIwSt11char_traitsIwEvvEENS0_12basic_stringIT_T0_T1_T2_EEPKS5_S9_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::basic_string.3") align 8 %0, ptr noundef %1, ptr noundef align 8 %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<wchar_t>, void>::short_t", align 8 ; 4 uses
  %3 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<wchar_t>, void>::short_t", align 4 ; 4 uses
  %i.a = load i8, ptr %2, align 8, !tbaa !51
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e
  %i.g = tail call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %1) #28
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.g
  %i.i = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6insertIPKwEEPwS7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.f, ptr noundef nonnull %1, ptr noundef nonnull %i.h, ptr noundef null) ; 0 uses
  store i8 1, ptr %0, align 8
  %i.j = load i8, ptr %2, align 8, !tbaa !51
  %i.k = trunc i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEC2EOS4_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !138
  %i.l = load <2 x i64>, ptr %2, align 8
  %i.m = and <2 x i64> %i.l, <i64 -2, i64 -1>
  store <2 x i64> %i.m, ptr %0, align 8
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !97
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !138
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEC2EOS4_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEC2EOS4_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIwSt11char_traitsIwESaIwEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.38") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %1) #28
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.a) ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !122
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !137  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !124  ; 2 uses
  %i.i = icmp ult i64 %i.h, 4
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  %i.k = tail call ptr @wmemcpy(ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, i64 noundef %i.j) #27 ; 0 uses
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !137
  %i.l = load i64, ptr %i.e, align 8, !tbaa !51
  store i64 %i.l, ptr %i.c, align 8, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !124
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !124
  store ptr %i.e, ptr %i.b, align 8, !tbaa !137
  store i64 0, ptr %i.m, align 8, !tbaa !124
  store i32 0, ptr %i.e, align 8, !tbaa !94
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9containerplIwSt11char_traitsIwEvvEENS0_12basic_stringIT_T0_T1_T2_EES9_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::basic_string.3") align 8 %0, ptr noundef align 8 %1, ptr noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<wchar_t>, void>::short_t", align 8 ; 4 uses
  %3 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<wchar_t>, void>::short_t", align 4 ; 4 uses
  %i.a = tail call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %2) #28
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.a
  %i.c = load i8, ptr %1, align 8, !tbaa !51      ; 2 uses
  %i.d = trunc i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = lshr i8 %i.c, 1
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i64, ptr %1, align 8
  %i.l = lshr i64 %i.k, 1
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.l
  %i.n = select i1 %i.d, ptr %i.h, ptr %i.m
  %i.o = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6insertIPKwEEPwS7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.n, ptr noundef nonnull %2, ptr noundef nonnull %i.b, ptr noundef null) ; 0 uses
  store i8 1, ptr %0, align 8
  %i.p = load i8, ptr %1, align 8, !tbaa !51
  %i.q = trunc i8 %i.p to i1
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEC2EOS4_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !138
  %i.r = load <2 x i64>, ptr %1, align 8
  %i.s = and <2 x i64> %i.r, <i64 -2, i64 -1>
  store <2 x i64> %i.s, ptr %0, align 8
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !97
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.t, ptr %i.u, align 8, !tbaa !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !138
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEC2EOS4_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEC2EOS4_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIwSt11char_traitsIwESaIwEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.38") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %2) #28 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !124
  %i.d = sub i64 1152921504606846975, %i.c
  %i.e = icmp ult i64 %i.d, %i.a
  br i1 %i.e, label %bb.b, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKw.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.438) #26
  unreachable

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKw.exit: ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_appendEPKwm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %2, i64 noundef %i.a) ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !122
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !137  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKw.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !124  ; 2 uses
  %i.m = icmp ult i64 %i.l, 4
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  %i.o = tail call ptr @wmemcpy(ptr noundef nonnull %i.g, ptr noundef nonnull %i.i, i64 noundef %i.n) #27 ; 0 uses
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKw.exit
  store ptr %i.h, ptr %0, align 8, !tbaa !137
  %i.p = load i64, ptr %i.i, align 8, !tbaa !51
  store i64 %i.p, ptr %i.g, align 8, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !124
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !124
  store ptr %i.i, ptr %i.f, align 8, !tbaa !137
  store i64 0, ptr %i.q, align 8, !tbaa !124
  store i32 0, ptr %i.i, align 8, !tbaa !94
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !94
  %i.c = load i8, ptr %1, align 8, !tbaa !51      ; 2 uses
  %i.d = trunc i8 %i.c to i1                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = select i1 %i.d, ptr %i.e, ptr %i.g       ; 3 uses
  %i.i = lshr i8 %i.c, 1
  %i.j = zext nneg i8 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.j
  %i.l = load i64, ptr %1, align 8
  %i.m = lshr i64 %i.l, 1
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.m
  %i.o = select i1 %i.d, ptr %i.k, ptr %i.n       ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.h to i64
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = ashr exact i64 %i.r, 2                   ; 3 uses
  %i.t = invoke noundef zeroext i1 @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.a
  br i1 %i.t, label %bb.b, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i

bb.b:                                             ; preds = %.noexc
  %i.u = load i8, ptr %0, align 8, !tbaa !51      ; 2 uses
  %i.v = trunc i8 %i.u to i1
  %i.w = lshr i8 %i.u, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.x
  %i.z = load ptr, ptr %i.b, align 8
  %i.aa = load i64, ptr %0, align 8
  %i.ab = lshr i64 %i.aa, 1
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ab
  %i.ad = select i1 %i.v, ptr %i.y, ptr %i.ac
  store i32 0, ptr %i.ad, align 4, !tbaa !94
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i: ; preds = %bb.b, %.noexc
  %i.ae = load i8, ptr %0, align 8, !tbaa !51
  %i.af = trunc i8 %i.ae to i1
  %i.ag = load ptr, ptr %i.b, align 8
  %i.ah = select i1 %i.af, ptr %i.a, ptr %i.ag    ; 2 uses
  %i.ai = icmp eq ptr %i.o, %i.h
  br i1 %i.ai, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i
  %i.aj = tail call ptr @wmemcpy(ptr noundef %i.ah, ptr noundef %i.h, i64 noundef %i.s) #27 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i

_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i:         ; preds = %bb.c, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7reserveEm.exit.i
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 %i.r
  store i32 0, ptr %i.ak, align 4, !tbaa !94
  %i.al = load i8, ptr %0, align 8, !tbaa !51
  %i.am = trunc i8 %i.al to i1
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.an = trunc i64 %i.s to i8
  %i.ao = shl i8 %i.an, 1
  %i.ap = or disjoint i8 %i.ao, 1
  store i8 %i.ap, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6assignEPKwS6_.exit

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.aq = load i64, ptr %0, align 8
  %i.ar = ashr exact i64 %i.r, 1
  %i.as = and i64 %i.aq, 1
  %i.at = or disjoint i64 %i.as, %i.ar
  store i64 %i.at, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6assignEPKwS6_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6assignEPKwS6_.exit: ; preds = %bb.e, %bb.d
  ret void

bb.f:                                             ; preds = %bb.a
  %i.au = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #27
  resume { ptr, i32 } %i.au
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIwSt11char_traitsIwESaIwEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.38") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %1) #28 ; 3 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !137
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !124  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !122, !alias.scope !1120
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !124, !alias.scope !1120
  store i32 0, ptr %i.e, align 8, !tbaa !94, !alias.scope !1120
  %i.g = add i64 %i.d, %i.a
  invoke void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !124, !alias.scope !1120
  %i.i = sub i64 1152921504606846975, %i.h
  %i.j = icmp ult i64 %i.i, %i.a
  br i1 %i.j, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_appendEPKwm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %i.a)
          to label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKwm.exit.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKwm.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !124, !alias.scope !1120
  %i.m = sub i64 1152921504606846975, %i.l
  %i.n = icmp ult i64 %i.m, %i.d
  br i1 %i.n, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i10.i

.invoke.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKwm.exit.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.438) #26
          to label %.cont.i unwind label %bb.c

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i10.i: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKwm.exit.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_appendEPKwm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b, i64 noundef %i.d)
          to label %_ZSt12__str_concatINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i10.i, %.invoke.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i.i, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !137, !alias.scope !1120 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.e, align 8, !tbaa !51, !alias.scope !1120
  %i.t = shl i64 %i.s, 2
  %i.u = add i64 %i.t, 4
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #29
  br label %.body

_ZSt12__str_concatINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i10.i
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.p
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIwSt11char_traitsIwESaIwEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.38") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !137
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !124  ; 3 uses
  %i.d = tail call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %2) #28 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !122, !alias.scope !1123
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !124, !alias.scope !1123
  store i32 0, ptr %i.e, align 8, !tbaa !94, !alias.scope !1123
  %i.g = add i64 %i.d, %i.c
  invoke void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !124, !alias.scope !1123
  %i.i = sub i64 1152921504606846975, %i.h
  %i.j = icmp ult i64 %i.i, %i.c
  br i1 %i.j, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_appendEPKwm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKwm.exit.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKwm.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !124, !alias.scope !1123
  %i.m = sub i64 1152921504606846975, %i.l
  %i.n = icmp ult i64 %i.m, %i.d
  br i1 %i.n, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i10.i

.invoke.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKwm.exit.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.438) #26
          to label %.cont.i unwind label %bb.c

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i10.i: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKwm.exit.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_appendEPKwm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %2, i64 noundef %i.d)
          to label %_ZSt12__str_concatINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i10.i, %.invoke.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i.i, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !137, !alias.scope !1123 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.e, align 8, !tbaa !51, !alias.scope !1123
  %i.t = shl i64 %i.s, 2
  %i.u = add i64 %i.t, 4
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #29
  br label %.body

_ZSt12__str_concatINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i10.i
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.p
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9containerplIwSt11char_traitsIwEvvEENS0_12basic_stringIT_T0_T1_T2_EES5_S9_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::basic_string.3") align 8 %0, i32 noundef signext %1, ptr noundef align 8 %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<wchar_t>, void>::short_t", align 8 ; 4 uses
  %3 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<wchar_t>, void>::short_t", align 4 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load i8, ptr %2, align 8, !tbaa !51
  %i.c = trunc i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = select i1 %i.c, ptr %i.d, ptr %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %1, ptr %i.a, align 4, !tbaa !94
  %i.h = call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6insertINS0_17constant_iteratorIwEEEEPwPKwT_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS0_3dtl17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESK_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.g, ptr nonnull %i.a, i64 1, ptr null, i64 0, ptr noundef null) ; 0 uses
  %i.i = load i8, ptr %2, align 8, !tbaa !51
  %i.j = trunc i8 %i.i to i1
  %i.k = load ptr, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 1, ptr %0, align 8
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, i64 24, i1 false), !tbaa.struct !70
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEC2EOS4_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !138
  %i.l = load <2 x i64>, ptr %2, align 8
  %i.m = and <2 x i64> %i.l, <i64 -2, i64 -1>
  store <2 x i64> %i.m, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.n, align 8, !tbaa !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !138
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEC2EOS4_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEC2EOS4_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIwSt11char_traitsIwESaIwEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.38") align 8 %0, i32 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !94
  %i.b = load ptr, ptr %2, align 8, !tbaa !137
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !124  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !122, !alias.scope !1126
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !124, !alias.scope !1126
  store i32 0, ptr %i.e, align 8, !tbaa !94, !alias.scope !1126
  %i.g = add i64 %i.d, 1
  invoke void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !124, !alias.scope !1126
  %i.i = icmp eq i64 %i.h, 1152921504606846975
  br i1 %i.i, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.b
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_appendEPKwm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKwm.exit.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKwm.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i.i
  %i.k = load i64, ptr %i.f, align 8, !tbaa !124, !alias.scope !1126
  %i.l = sub i64 1152921504606846975, %i.k
  %i.m = icmp ult i64 %i.l, %i.d
  br i1 %i.m, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i10.i

.invoke.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKwm.exit.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.438) #26
          to label %.cont.i unwind label %bb.c

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i10.i: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKwm.exit.i
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_appendEPKwm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b, i64 noundef %i.d)
          to label %_ZSt12__str_concatINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i10.i, %.invoke.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i.i, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %0, align 8, !tbaa !137, !alias.scope !1126 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.e
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.e, align 8, !tbaa !51, !alias.scope !1126
  %i.s = shl i64 %i.r, 2
  %i.t = add i64 %i.s, 4
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #29
  br label %.body

_ZSt12__str_concatINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE15_M_check_lengthEmmPKc.exit.i10.i
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.o
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9containerplIwSt11char_traitsIwEvvEENS0_12basic_stringIT_T0_T1_T2_EES9_S5_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::basic_string.3") align 8 %0, ptr noundef align 8 %1, i32 noundef signext %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<wchar_t>, void>::short_t", align 8 ; 4 uses
  %3 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::new_allocator<wchar_t>, void>::short_t", align 4 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load i8, ptr %1, align 8, !tbaa !51      ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %1, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 3 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g       ; 3 uses
  %i.i = trunc i64 %i.f to i1                     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = add i64 %i.k, -1
  %i.m = select i1 %i.i, i64 4, i64 %i.l
  %i.n = icmp ult i64 %i.h, %i.m
  br i1 %i.n, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %i.i, ptr %i.o, ptr %i.q       ; 2 uses
  %i.s = add nuw i64 %i.h, 1                      ; 3 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.s
  store i32 0, ptr %i.t, align 4, !tbaa !94
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.h
  store i32 %2, ptr %i.u, align 4, !tbaa !94
  %i.v = load i8, ptr %1, align 8, !tbaa !51
  %i.w = trunc i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = trunc i64 %i.s to i8
  %i.y = shl i8 %i.x, 1
  %i.z = or disjoint i8 %i.y, 1                   ; 2 uses
  store i8 %i.z, ptr %1, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEpLEw.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = load i64, ptr %1, align 8
  %i.ab = shl i64 %i.s, 1
  %i.ac = and i64 %i.aa, 1
  %i.ad = or disjoint i64 %i.ac, %i.ab            ; 2 uses
  store i64 %i.ad, ptr %1, align 8
  %i.ae = trunc i64 %i.ad to i8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEpLEw.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %2, ptr %i.a, align 4, !tbaa !94
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ag = and i64 %i.g, 127
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.g
  %i.al = select i1 %i.i, ptr %i.ah, ptr %i.ak
  %i.am = call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6insertINS0_17constant_iteratorIwEEEEPwPKwT_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS0_3dtl17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESK_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.al, ptr nonnull %i.a, i64 1, ptr null, i64 0, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre = load i8, ptr %1, align 8, !tbaa !51
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEpLEw.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEpLEw.exit: ; preds = %bb.c, %bb.d, %bb.e
end_hunk_5
