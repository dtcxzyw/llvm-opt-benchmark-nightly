Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/GainMap?download=true
inline.NumInlined: 6234
inline.NumDeleted: 2222
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_ZN3fmt3v126detail15write_codepointILm8EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SI_cj:bb.a
  %i.bo = load ptr, ptr %0, align 8, !tbaa !69
  store i64 %.pre-phi.i.i.i.i.3, ptr %i.ad, align 8, !tbaa !81
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bn
  store i8 %i.bh, ptr %i.bp, align 1, !tbaa !63
  %.07.i.ptr.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bq = load i8, ptr %.07.i.ptr.4, align 4, !tbaa !63
  %.not.i.i11.4 = icmp eq i64 %.sroa.4.1, 4
  br i1 %.not.i.i11.4, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.n

bb.n:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3
  %i.br = load i64, ptr %i.ad, align 8, !tbaa !81 ; 2 uses
  %i.bs = add i64 %i.br, 1                        ; 3 uses
  %i.bt = load i64, ptr %i.ae, align 8, !tbaa !70
  %i.bu = icmp ugt i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.o, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4

bb.o:                                             ; preds = %bb.n
  %i.bv = load ptr, ptr %i.af, align 8, !tbaa !68
  tail call void %i.bv(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bs), !inline_history !42
  %.pre.i.i.i.i.4 = load i64, ptr %i.ad, align 8, !tbaa !81 ; 2 uses
  %.pre2.i.i.i.i.4 = add i64 %.pre.i.i.i.i.4, 1
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4: ; preds = %bb.n, %bb.o
  %.pre-phi.i.i.i.i.4 = phi i64 [ %i.bs, %bb.n ], [ %.pre2.i.i.i.i.4, %bb.o ]
  %i.bw = phi i64 [ %i.br, %bb.n ], [ %.pre.i.i.i.i.4, %bb.o ]
  %i.bx = load ptr, ptr %0, align 8, !tbaa !69
  store i64 %.pre-phi.i.i.i.i.4, ptr %i.ad, align 8, !tbaa !81
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw
  store i8 %i.bq, ptr %i.by, align 1, !tbaa !63
  %.07.i.ptr.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.bz = load i8, ptr %.07.i.ptr.5, align 1, !tbaa !63
  %.not.i.i11.5 = icmp eq i64 %.sroa.4.1, 5
  br i1 %.not.i.i11.5, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.p

bb.p:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4
  %i.ca = load i64, ptr %i.ad, align 8, !tbaa !81 ; 2 uses
  %i.cb = add i64 %i.ca, 1                        ; 3 uses
  %i.cc = load i64, ptr %i.ae, align 8, !tbaa !70
  %i.cd = icmp ugt i64 %i.cb, %i.cc
  br i1 %i.cd, label %bb.q, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5

bb.q:                                             ; preds = %bb.p
  %i.ce = load ptr, ptr %i.af, align 8, !tbaa !68
  tail call void %i.ce(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cb), !inline_history !42
  %.pre.i.i.i.i.5 = load i64, ptr %i.ad, align 8, !tbaa !81 ; 2 uses
  %.pre2.i.i.i.i.5 = add i64 %.pre.i.i.i.i.5, 1
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5: ; preds = %bb.p, %bb.q
  %.pre-phi.i.i.i.i.5 = phi i64 [ %i.cb, %bb.p ], [ %.pre2.i.i.i.i.5, %bb.q ]
  %i.cf = phi i64 [ %i.ca, %bb.p ], [ %.pre.i.i.i.i.5, %bb.q ]
  %i.cg = load ptr, ptr %0, align 8, !tbaa !69
  store i64 %.pre-phi.i.i.i.i.5, ptr %i.ad, align 8, !tbaa !81
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cf
  store i8 %i.bz, ptr %i.ch, align 1, !tbaa !63
  %.07.i.ptr.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ci = load i8, ptr %.07.i.ptr.6, align 2, !tbaa !63
  %.not.i.i11.6 = icmp eq i64 %.sroa.4.1, 6
  br i1 %.not.i.i11.6, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.r

bb.r:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5
  %i.cj = load i64, ptr %i.ad, align 8, !tbaa !81 ; 2 uses
  %i.ck = add i64 %i.cj, 1                        ; 3 uses
  %i.cl = load i64, ptr %i.ae, align 8, !tbaa !70
  %i.cm = icmp ugt i64 %i.ck, %i.cl
  br i1 %i.cm, label %bb.s, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6

bb.s:                                             ; preds = %bb.r
  %i.cn = load ptr, ptr %i.af, align 8, !tbaa !68
  tail call void %i.cn(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ck), !inline_history !42
  %.pre.i.i.i.i.6 = load i64, ptr %i.ad, align 8, !tbaa !81 ; 2 uses
  %.pre2.i.i.i.i.6 = add i64 %.pre.i.i.i.i.6, 1
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6: ; preds = %bb.r, %bb.s
  %.pre-phi.i.i.i.i.6 = phi i64 [ %i.ck, %bb.r ], [ %.pre2.i.i.i.i.6, %bb.s ]
  %i.co = phi i64 [ %i.cj, %bb.r ], [ %.pre.i.i.i.i.6, %bb.s ]
  %i.cp = load ptr, ptr %0, align 8, !tbaa !69
  store i64 %.pre-phi.i.i.i.i.6, ptr %i.ad, align 8, !tbaa !81
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.co
  store i8 %i.ci, ptr %i.cq, align 1, !tbaa !63
  %.07.i.ptr.7 = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.cr = load i8, ptr %.07.i.ptr.7, align 1, !tbaa !63
  %.not.i.i11.7 = icmp eq i64 %.sroa.4.1, 7
  br i1 %.not.i.i11.7, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.t

bb.t:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6
  %i.cs = load i64, ptr %i.ad, align 8, !tbaa !81 ; 2 uses
  %i.ct = add i64 %i.cs, 1                        ; 3 uses
  %i.cu = load i64, ptr %i.ae, align 8, !tbaa !70
  %i.cv = icmp ugt i64 %i.ct, %i.cu
  br i1 %i.cv, label %bb.u, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7

bb.u:                                             ; preds = %bb.t
  %i.cw = load ptr, ptr %i.af, align 8, !tbaa !68
  tail call void %i.cw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ct), !inline_history !42
  %.pre.i.i.i.i.7 = load i64, ptr %i.ad, align 8, !tbaa !81 ; 2 uses
  %.pre2.i.i.i.i.7 = add i64 %.pre.i.i.i.i.7, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7:    ; preds = %bb.u, %bb.t
  %.pre-phi.i.i.i.i.7 = phi i64 [ %i.ct, %bb.t ], [ %.pre2.i.i.i.i.7, %bb.u ]
  %i.cx = phi i64 [ %i.cs, %bb.t ], [ %.pre.i.i.i.i.7, %bb.u ]
  %i.cy = load ptr, ptr %0, align 8, !tbaa !69
  store i64 %.pre-phi.i.i.i.i.7, ptr %i.ad, align 8, !tbaa !81
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cx
  store i8 %i.cr, ptr %i.cz, align 1, !tbaa !63
  %i.da = add i64 %.sroa.4.1, -8
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7: ; preds = %_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.1, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.2, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6
  %.sroa.3.1.i.7 = phi i64 [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6 ], [ %i.da, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.2 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.1 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt3__19enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i ], [ 0, %_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %0, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.3.1.i.7, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN7nanogui5ArrayIiLm2EEEEEvPvRNS0_13parse_contextIcEERS3_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #4 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %4 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %5 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %6 = alloca %"struct.fmt::v12::detail::format_arg_store.343", align 16 ; 3 uses
  %7 = alloca %"struct.fmt::v12::detail::format_arg_store.343", align 16 ; 3 uses
  %8 = alloca %"struct.fmt::v12::detail::format_arg_store.343", align 16 ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !77 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  store ptr @.str.47, ptr %5, align 8, !tbaa !71
  %.sroa.2.0..sroa_idx.i16.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %.sroa.2.0..sroa_idx.i16.i.i, align 8, !tbaa !72
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.a, align 8, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.b, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 0, ptr %i.c, align 8, !tbaa !79
  %.sroa.2.0..sroa_idx.i17.i.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %6, ptr %.sroa.2.0..sroa_idx.i17.i.i, align 8, !tbaa !63
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr null, ptr %i.d, align 8, !tbaa !80
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.47, i64 1, ptr noundef nonnull align 8 dereferenceable(56) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %.sroa.2.0..sroa_idx.i16.i32.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.2.0..sroa_idx.i17.i33.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.pre.i = load i32, ptr %0, align 4, !tbaa !130
  %i.i = call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEiTnNSt3__19enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS7_bEE5valuentsr3std7is_sameIS7_T_EE5valueEiE4typeELi0EEET0_SB_S7_(ptr nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i, i32 noundef %.pre.i) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store ptr @.str.114, ptr %3, align 8, !tbaa !71
  store i64 2, ptr %.sroa.2.0..sroa_idx.i16.i32.i, align 8, !tbaa !72
  store i32 0, ptr %i.e, align 8, !tbaa !75
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.f, align 8, !tbaa !77
  store i64 0, ptr %i.g, align 8, !tbaa !79
  store ptr %7, ptr %.sroa.2.0..sroa_idx.i17.i33.i, align 8, !tbaa !63
  store ptr null, ptr %i.h, align 8, !tbaa !80
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.114, i64 2, ptr noundef nonnull align 8 dereferenceable(56) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !130
  %i.l = call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEiTnNSt3__19enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS7_bEE5valuentsr3std7is_sameIS7_T_EE5valueEiE4typeELi0EEET0_SB_S7_(ptr nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i, i32 noundef %i.k) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store ptr @.str.115, ptr %4, align 8, !tbaa !71
  %.sroa.2.0..sroa_idx.i16.i30.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %.sroa.2.0..sroa_idx.i16.i30.i, align 8, !tbaa !72
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.m, align 8, !tbaa !75
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.n, align 8, !tbaa !77
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 0, ptr %i.o, align 8, !tbaa !79
  %.sroa.2.0..sroa_idx.i17.i31.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %8, ptr %.sroa.2.0..sroa_idx.i17.i31.i, align 8, !tbaa !63
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr null, ptr %i.p, align 8, !tbaa !80
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.115, i64 1, ptr noundef nonnull align 8 dereferenceable(56) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  ret void
}

declare void @_ZN3tev10ThreadPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN3tev10ThreadPoolD1Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__123__optional_storage_baseIN3tev16MultiChannelViewIfEELb0EE13__assign_fromB8ne180100INS_27__optional_move_assign_baseIS3_Lb0EEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(145) %0, ptr noundef nonnull align 8 dereferenceable(145) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !96, !range !97, !noundef !98 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.d = load i8, ptr %i.c, align 8, !tbaa !96, !range !97, !noundef !98
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i8 %i.b, 0
  %.not.i.i.i = icmp eq ptr %1, %0
  %or.cond = or i1 %.not.i.i.i, %.not
  br i1 %or.cond, label %_ZN3tev16MultiChannelViewIfEaSEOS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !121  ; 2 uses
  %i.h = icmp ugt i64 %i.g, 5
  %i.i = load ptr, ptr %1, align 8, !tbaa !120    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !119  ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !121  ; 2 uses
  %i.n = icmp ugt i64 %i.m, 5
  br i1 %i.n, label %bb.e, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE19move_assign_pointerILj5EEERS8_RNS1_IS7_XT_EEE.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %0, align 8, !tbaa !120
  %i.p = mul i64 %i.m, 24
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.p) #36
  br label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE19move_assign_pointerILj5EEERS8_RNS1_IS7_XT_EEE.exit.i.i.i.i.i

_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE19move_assign_pointerILj5EEERS8_RNS1_IS7_XT_EEE.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d
  store ptr %i.i, ptr %0, align 8, !tbaa !120
  store i64 %i.g, ptr %i.l, align 8, !tbaa !121
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.k, ptr %i.q, align 8, !tbaa !119
  store i64 5, ptr %i.f, align 8, !tbaa !121
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.r, ptr %1, align 8, !tbaa !120
  store i64 0, ptr %i.j, align 8, !tbaa !119
  br label %_ZN3tev16MultiChannelViewIfEaSEOS1_.exit

bb.f:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds [24 x i8], ptr %i.i, i64 %i.k
  invoke void @_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE17assign_with_rangeINS2_13move_iteratorIPS6_EETnPNS2_9enable_ifIXsr3std13is_assignableIRS6_DTdeclsr3stdE7declvalIT_EEEEE5valueEvE4typeELPv0EEEvSF_SF_NS2_20forward_iterator_tagE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr %i.i, ptr %i.s)
          to label %_ZN3tev16MultiChannelViewIfEaSEOS1_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #39
  unreachable

bb.h:                                             ; preds = %bb.a
  %2 = trunc nuw i8 %i.b to i1
  br i1 %2, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !121  ; 2 uses
  %i.x = icmp ugt i64 %i.w, 5
  br i1 %i.x, label %bb.j, label %_ZNSt3__124__optional_destruct_baseIN3tev16MultiChannelViewIfEELb0EE5resetB8ne180100Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %0, align 8, !tbaa !120
  %i.z = mul i64 %i.w, 24
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.z) #36
  br label %_ZNSt3__124__optional_destruct_baseIN3tev16MultiChannelViewIfEELb0EE5resetB8ne180100Ev.exit

_ZNSt3__124__optional_destruct_baseIN3tev16MultiChannelViewIfEELb0EE5resetB8ne180100Ev.exit: ; preds = %bb.i, %bb.j
  store i8 0, ptr %i.a, align 8, !tbaa !96
  br label %_ZN3tev16MultiChannelViewIfEaSEOS1_.exit

bb.k:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !121 ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, 5
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ad = load ptr, ptr %1, align 8, !tbaa !120
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !119
  store ptr %i.ad, ptr %0, align 8, !tbaa !120
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ab, ptr %i.ag, align 8, !tbaa !121
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !119
  store i64 5, ptr %i.aa, align 8, !tbaa !121
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.ai, ptr %1, align 8, !tbaa !120
  store i64 0, ptr %i.ae, align 8, !tbaa !119
  br label %_ZNSt3__123__optional_storage_baseIN3tev16MultiChannelViewIfEELb0EE11__constructB8ne180100IJS3_EEEvDpOT_.exit

bb.m:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.aj, align 8, !tbaa !121
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.ak, ptr %0, align 8, !tbaa !120
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !119 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18uninitialized_moveIvS6_TnNS2_9enable_ifIXaasr29is_explicitly_move_insertableIT0_EE5valueoontsr3std7is_sameIT_NS8_23strong_exception_policyEEE5valuesr18relocate_with_moveISB_EE5valueEbE4typeELb1EEEPS6_SG_SG_SG_.exit.i.i.i.i.i.i.i, label %.split8.i.i.i.i.i.i.i.i.i.i

.split8.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.m
  %.idx.i.i.i.i.i.i.i = mul nsw i64 %i.am, 24
  %i.an = load ptr, ptr %1, align 8, !tbaa !120
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr align 8 %i.an, i64 %.idx.i.i.i.i.i.i.i, i1 false)
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.al, align 8, !tbaa !119
  br label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18uninitialized_moveIvS6_TnNS2_9enable_ifIXaasr29is_explicitly_move_insertableIT0_EE5valueoontsr3std7is_sameIT_NS8_23strong_exception_policyEEE5valuesr18relocate_with_moveISB_EE5valueEbE4typeELb1EEEPS6_SG_SG_SG_.exit.i.i.i.i.i.i.i

_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18uninitialized_moveIvS6_TnNS2_9enable_ifIXaasr29is_explicitly_move_insertableIT0_EE5valueoontsr3std7is_sameIT_NS8_23strong_exception_policyEEE5valuesr18relocate_with_moveISB_EE5valueEbE4typeELb1EEEPS6_SG_SG_SG_.exit.i.i.i.i.i.i.i: ; preds = %.split8.i.i.i.i.i.i.i.i.i.i, %bb.m
  %i.ao = phi i64 [ 0, %bb.m ], [ %.pre.i.i.i.i.i.i.i, %.split8.i.i.i.i.i.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !119
  br label %_ZNSt3__123__optional_storage_baseIN3tev16MultiChannelViewIfEELb0EE11__constructB8ne180100IJS3_EEEvDpOT_.exit

_ZNSt3__123__optional_storage_baseIN3tev16MultiChannelViewIfEELb0EE11__constructB8ne180100IJS3_EEEvDpOT_.exit: ; preds = %bb.l, %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18uninitialized_moveIvS6_TnNS2_9enable_ifIXaasr29is_explicitly_move_insertableIT0_EE5valueoontsr3std7is_sameIT_NS8_23strong_exception_policyEEE5valuesr18relocate_with_moveISB_EE5valueEbE4typeELb1EEEPS6_SG_SG_SG_.exit.i.i.i.i.i.i.i
  store i8 1, ptr %i.a, align 8, !tbaa !96
  br label %_ZN3tev16MultiChannelViewIfEaSEOS1_.exit

_ZN3tev16MultiChannelViewIfEaSEOS1_.exit:         ; preds = %bb.f, %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE19move_assign_pointerILj5EEERS8_RNS1_IS7_XT_EEE.exit.i.i.i.i.i, %_ZNSt3__124__optional_destruct_baseIN3tev16MultiChannelViewIfEELb0EE5resetB8ne180100Ev.exit, %_ZNSt3__123__optional_storage_baseIN3tev16MultiChannelViewIfEELb0EE11__constructB8ne180100IJS3_EEEvDpOT_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE17assign_with_rangeINS2_13move_iteratorIPS6_EETnPNS2_9enable_ifIXsr3std13is_assignableIRS6_DTdeclsr3stdE7declvalIT_EEEEE5valueEvE4typeELPv0EEEvSF_SF_NS2_20forward_iterator_tagE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr %1, ptr %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = sdiv exact i64 %i.c, 24                  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !121  ; 6 uses
  %i.g = icmp ult i64 %i.f, %i.d
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.d, 768614336404564650
  br i1 %i.h, label %bb.c, label %_ZNK3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE30checked_calculate_new_capacityEm.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE27throw_allocation_size_errorEv() #35
  unreachable

_ZNK3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE30checked_calculate_new_capacityEm.exit: ; preds = %bb.b
  %i.i = sub nuw i64 768614336404564650, %i.f
  %.not.i.i.i = icmp ugt i64 %i.i, %i.f
  %i.j = shl nuw i64 %i.f, 1
  %..i.i.i = tail call i64 @llvm.umax.i64(i64 %i.j, i64 %i.d)
  %.1.i.i.i = select i1 %.not.i.i.i, i64 %..i.i.i, i64 768614336404564650 ; 3 uses
  %i.k = icmp ugt i64 %.1.i.i.i, 768614336404564650
  br i1 %i.k, label %bb.d, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEm.exit

bb.d:                                             ; preds = %_ZNK3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE30checked_calculate_new_capacityEm.exit
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #35
  unreachable

_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEm.exit: ; preds = %_ZNK3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE30checked_calculate_new_capacityEm.exit
  %i.l = mul nuw i64 %.1.i.i.i, 24
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #37 ; 2 uses
  %.not.i.i = icmp eq ptr %2, %1
  br i1 %.not.i.i, label %_ZN3gch6detail19allocator_interfaceINSt3__19allocatorIN3tev11ChannelViewIfEEEEE18uninitialized_copyIPS6_TnNS2_9enable_ifIXsr36is_uninitialized_memcpyable_iteratorIT_EE5valueEbE4typeELb1EEESA_NS2_13move_iteratorISC_EESG_SA_.exit, label %.split8.i.i

.split8.i.i:                                      ; preds = %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr align 8 %1, i64 %i.c, i1 false)
  br label %_ZN3gch6detail19allocator_interfaceINSt3__19allocatorIN3tev11ChannelViewIfEEEEE18uninitialized_copyIPS6_TnNS2_9enable_ifIXsr36is_uninitialized_memcpyable_iteratorIT_EE5valueEbE4typeELb1EEESA_NS2_13move_iteratorISC_EESG_SA_.exit

_ZN3gch6detail19allocator_interfaceINSt3__19allocatorIN3tev11ChannelViewIfEEEEE18uninitialized_copyIPS6_TnNS2_9enable_ifIXsr36is_uninitialized_memcpyable_iteratorIT_EE5valueEbE4typeELb1EEESA_NS2_13move_iteratorISC_EESG_SA_.exit: ; preds = %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEm.exit, %.split8.i.i
  %i.n = load i64, ptr %i.e, align 8, !tbaa !121  ; 2 uses
  %i.o = icmp ugt i64 %i.n, 5
  br i1 %i.o, label %bb.e, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE4wipeEv.exit

bb.e:                                             ; preds = %_ZN3gch6detail19allocator_interfaceINSt3__19allocatorIN3tev11ChannelViewIfEEEEE18uninitialized_copyIPS6_TnNS2_9enable_ifIXsr36is_uninitialized_memcpyable_iteratorIT_EE5valueEbE4typeELb1EEESA_NS2_13move_iteratorISC_EESG_SA_.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !120
  %i.q = mul i64 %i.n, 24
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.q) #36
  br label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE4wipeEv.exit

_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE4wipeEv.exit: ; preds = %_ZN3gch6detail19allocator_interfaceINSt3__19allocatorIN3tev11ChannelViewIfEEEEE18uninitialized_copyIPS6_TnNS2_9enable_ifIXsr36is_uninitialized_memcpyable_iteratorIT_EE5valueEbE4typeELb1EEESA_NS2_13move_iteratorISC_EESG_SA_.exit, %bb.e
  store ptr %i.m, ptr %0, align 8, !tbaa !120
  store i64 %.1.i.i.i, ptr %i.e, align 8, !tbaa !121
  br label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE27overwrite_existing_elementsINS2_13move_iteratorIPS6_EEEEvT_SD_m.exit

bb.f:                                             ; preds = %bb.a
  %i.r = icmp ult i64 %i.d, 6
  %i.s = icmp ugt i64 %i.f, 5
  %or.cond = and i1 %i.r, %i.s
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not.i.i20 = icmp eq ptr %2, %1
  br i1 %.not.i.i20, label %_ZN3gch6detail19allocator_interfaceINSt3__19allocatorIN3tev11ChannelViewIfEEEEE18uninitialized_copyIPS6_TnNS2_9enable_ifIXsr36is_uninitialized_memcpyable_iteratorIT_EE5valueEbE4typeELb1EEESA_NS2_13move_iteratorISC_EESG_SA_.exit23, label %.split8.i.i21

.split8.i.i21:                                    ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %1, i64 %i.c, i1 false)
  br label %_ZN3gch6detail19allocator_interfaceINSt3__19allocatorIN3tev11ChannelViewIfEEEEE18uninitialized_copyIPS6_TnNS2_9enable_ifIXsr36is_uninitialized_memcpyable_iteratorIT_EE5valueEbE4typeELb1EEESA_NS2_13move_iteratorISC_EESG_SA_.exit23

_ZN3gch6detail19allocator_interfaceINSt3__19allocatorIN3tev11ChannelViewIfEEEEE18uninitialized_copyIPS6_TnNS2_9enable_ifIXsr36is_uninitialized_memcpyable_iteratorIT_EE5valueEbE4typeELb1EEESA_NS2_13move_iteratorISC_EESG_SA_.exit23: ; preds = %bb.g, %.split8.i.i21
  %i.u = load ptr, ptr %0, align 8, !tbaa !120
  %i.v = mul i64 %i.f, 24
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.v) #36
  store ptr %i.t, ptr %0, align 8, !tbaa !120
  store i64 5, ptr %i.e, align 8, !tbaa !121
  br label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE27overwrite_existing_elementsINS2_13move_iteratorIPS6_EEEEvT_SD_m.exit

bb.h:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !119  ; 4 uses
  %i.y = icmp ult i64 %i.x, %i.d
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i24 = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i24, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE16copy_n_return_inIPS6_TnPNS2_9enable_ifIXsr22is_memcpyable_iteratorIT_EE5valueEvE4typeELPv0EEENS2_13move_iteratorISC_EESI_mSA_.exit.i, label %.split6.i.i.i

.split6.i.i.i:                                    ; preds = %bb.i
  %i.z = load ptr, ptr %0, align 8, !tbaa !120
  %i.aa = mul i64 %i.x, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr align 8 %1, i64 %i.aa, i1 false)
  %i.ab = getelementptr inbounds [24 x i8], ptr %1, i64 %i.x
  br label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE16copy_n_return_inIPS6_TnPNS2_9enable_ifIXsr22is_memcpyable_iteratorIT_EE5valueEvE4typeELPv0EEENS2_13move_iteratorISC_EESI_mSA_.exit.i

_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE16copy_n_return_inIPS6_TnPNS2_9enable_ifIXsr22is_memcpyable_iteratorIT_EE5valueEvE4typeELPv0EEENS2_13move_iteratorISC_EESI_mSA_.exit.i: ; preds = %.split6.i.i.i, %bb.i
  %phi.call.i.i.i = phi ptr [ %i.ab, %.split6.i.i.i ], [ %1, %bb.i ] ; 3 uses
  %.not.i.i9.i = icmp eq ptr %2, %phi.call.i.i.i
  br i1 %.not.i.i9.i, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE27overwrite_existing_elementsINS2_13move_iteratorIPS6_EEEEvT_SD_m.exit, label %.split8.i.i.i

.split8.i.i.i:                                    ; preds = %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE16copy_n_return_inIPS6_TnPNS2_9enable_ifIXsr22is_memcpyable_iteratorIT_EE5valueEvE4typeELPv0EEENS2_13move_iteratorISC_EESI_mSA_.exit.i
  %i.ac = load ptr, ptr %0, align 8, !tbaa !120
  %i.ad = load i64, ptr %i.w, align 8, !tbaa !119
  %i.ae = getelementptr inbounds [24 x i8], ptr %i.ac, i64 %i.ad
  %i.af = ptrtoint ptr %phi.call.i.i.i to i64
  %i.ag = sub i64 %i.a, %i.af
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ae, ptr align 8 %phi.call.i.i.i, i64 %i.ag, i1 false)
  br label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE27overwrite_existing_elementsINS2_13move_iteratorIPS6_EEEEvT_SD_m.exit

bb.j:                                             ; preds = %bb.h
  %i.ah = icmp eq ptr %1, %2
  br i1 %i.ah, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE27overwrite_existing_elementsINS2_13move_iteratorIPS6_EEEEvT_SD_m.exit, label %.lr.ph.i.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.i.preheader.i:                   ; preds = %bb.j
  %i.ai = load ptr, ptr %0, align 8, !tbaa !120
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.i
  %storemerge7.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.03.06.i.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.i.i.preheader.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %storemerge7.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.06.i.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !1266
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %storemerge7.i.i.i.i.i.i.i, i64 24
  %i.al = icmp eq ptr %i.aj, %2
  br i1 %i.al, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE27overwrite_existing_elementsINS2_13move_iteratorIPS6_EEEEvT_SD_m.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1265

end_hunk_0
