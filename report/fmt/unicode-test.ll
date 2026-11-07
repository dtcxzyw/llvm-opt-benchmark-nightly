Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/unicode-test?download=true
inline.NumInlined: 3630
inline.NumDeleted: 1043
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN3fmt3v126detail15write_codepointILm8EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SH_cj:bb.a
  %i.bn = phi i64 [ %i.bi, %bb.l ], [ %.pre.i.i.i.i.3, %bb.m ]
  %i.bo = load ptr, ptr %0, align 8, !tbaa !128
  store i64 %.pre-phi.i.i.i.i.3, ptr %i.ad, align 8, !tbaa !130
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bn
  store i8 %i.bh, ptr %i.bp, align 1, !tbaa !72
  %.07.i.ptr.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bq = load i8, ptr %.07.i.ptr.4, align 4, !tbaa !72
  %.not.i.i11.4 = icmp eq i64 %.sroa.4.1, 4
  br i1 %.not.i.i11.4, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.n

bb.n:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3
  %i.br = load i64, ptr %i.ad, align 8, !tbaa !130 ; 2 uses
  %i.bs = add i64 %i.br, 1                        ; 3 uses
  %i.bt = load i64, ptr %i.ae, align 8, !tbaa !129
  %i.bu = icmp ugt i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.o, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4

bb.o:                                             ; preds = %bb.n
  %i.bv = load ptr, ptr %i.af, align 8, !tbaa !127
  tail call void %i.bv(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bs), !inline_history !37
  %.pre.i.i.i.i.4 = load i64, ptr %i.ad, align 8, !tbaa !130 ; 2 uses
  %.pre2.i.i.i.i.4 = add i64 %.pre.i.i.i.i.4, 1
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4: ; preds = %bb.n, %bb.o
  %.pre-phi.i.i.i.i.4 = phi i64 [ %i.bs, %bb.n ], [ %.pre2.i.i.i.i.4, %bb.o ]
  %i.bw = phi i64 [ %i.br, %bb.n ], [ %.pre.i.i.i.i.4, %bb.o ]
  %i.bx = load ptr, ptr %0, align 8, !tbaa !128
  store i64 %.pre-phi.i.i.i.i.4, ptr %i.ad, align 8, !tbaa !130
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw
  store i8 %i.bq, ptr %i.by, align 1, !tbaa !72
  %.07.i.ptr.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.bz = load i8, ptr %.07.i.ptr.5, align 1, !tbaa !72
  %.not.i.i11.5 = icmp eq i64 %.sroa.4.1, 5
  br i1 %.not.i.i11.5, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.p

bb.p:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4
  %i.ca = load i64, ptr %i.ad, align 8, !tbaa !130 ; 2 uses
  %i.cb = add i64 %i.ca, 1                        ; 3 uses
  %i.cc = load i64, ptr %i.ae, align 8, !tbaa !129
  %i.cd = icmp ugt i64 %i.cb, %i.cc
  br i1 %i.cd, label %bb.q, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5

bb.q:                                             ; preds = %bb.p
  %i.ce = load ptr, ptr %i.af, align 8, !tbaa !127
  tail call void %i.ce(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cb), !inline_history !37
  %.pre.i.i.i.i.5 = load i64, ptr %i.ad, align 8, !tbaa !130 ; 2 uses
  %.pre2.i.i.i.i.5 = add i64 %.pre.i.i.i.i.5, 1
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5: ; preds = %bb.p, %bb.q
  %.pre-phi.i.i.i.i.5 = phi i64 [ %i.cb, %bb.p ], [ %.pre2.i.i.i.i.5, %bb.q ]
  %i.cf = phi i64 [ %i.ca, %bb.p ], [ %.pre.i.i.i.i.5, %bb.q ]
  %i.cg = load ptr, ptr %0, align 8, !tbaa !128
  store i64 %.pre-phi.i.i.i.i.5, ptr %i.ad, align 8, !tbaa !130
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cf
  store i8 %i.bz, ptr %i.ch, align 1, !tbaa !72
  %.07.i.ptr.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ci = load i8, ptr %.07.i.ptr.6, align 2, !tbaa !72
  %.not.i.i11.6 = icmp eq i64 %.sroa.4.1, 6
  br i1 %.not.i.i11.6, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.r

bb.r:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5
  %i.cj = load i64, ptr %i.ad, align 8, !tbaa !130 ; 2 uses
  %i.ck = add i64 %i.cj, 1                        ; 3 uses
  %i.cl = load i64, ptr %i.ae, align 8, !tbaa !129
  %i.cm = icmp ugt i64 %i.ck, %i.cl
  br i1 %i.cm, label %bb.s, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6

bb.s:                                             ; preds = %bb.r
  %i.cn = load ptr, ptr %i.af, align 8, !tbaa !127
  tail call void %i.cn(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ck), !inline_history !37
  %.pre.i.i.i.i.6 = load i64, ptr %i.ad, align 8, !tbaa !130 ; 2 uses
  %.pre2.i.i.i.i.6 = add i64 %.pre.i.i.i.i.6, 1
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6: ; preds = %bb.r, %bb.s
  %.pre-phi.i.i.i.i.6 = phi i64 [ %i.ck, %bb.r ], [ %.pre2.i.i.i.i.6, %bb.s ]
  %i.co = phi i64 [ %i.cj, %bb.r ], [ %.pre.i.i.i.i.6, %bb.s ]
  %i.cp = load ptr, ptr %0, align 8, !tbaa !128
  store i64 %.pre-phi.i.i.i.i.6, ptr %i.ad, align 8, !tbaa !130
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.co
  store i8 %i.ci, ptr %i.cq, align 1, !tbaa !72
  %.07.i.ptr.7 = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.cr = load i8, ptr %.07.i.ptr.7, align 1, !tbaa !72
  %.not.i.i11.7 = icmp eq i64 %.sroa.4.1, 7
  br i1 %.not.i.i11.7, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.t

bb.t:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6
  %i.cs = load i64, ptr %i.ad, align 8, !tbaa !130 ; 2 uses
  %i.ct = add i64 %i.cs, 1                        ; 3 uses
  %i.cu = load i64, ptr %i.ae, align 8, !tbaa !129
  %i.cv = icmp ugt i64 %i.ct, %i.cu
  br i1 %i.cv, label %bb.u, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7

bb.u:                                             ; preds = %bb.t
  %i.cw = load ptr, ptr %i.af, align 8, !tbaa !127
  tail call void %i.cw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ct), !inline_history !37
  %.pre.i.i.i.i.7 = load i64, ptr %i.ad, align 8, !tbaa !130 ; 2 uses
  %.pre2.i.i.i.i.7 = add i64 %.pre.i.i.i.i.7, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7:    ; preds = %bb.u, %bb.t
  %.pre-phi.i.i.i.i.7 = phi i64 [ %i.ct, %bb.t ], [ %.pre2.i.i.i.i.7, %bb.u ]
  %i.cx = phi i64 [ %i.cs, %bb.t ], [ %.pre.i.i.i.i.7, %bb.u ]
  %i.cy = load ptr, ptr %0, align 8, !tbaa !128
  store i64 %.pre-phi.i.i.i.i.7, ptr %i.ad, align 8, !tbaa !130
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cx
  store i8 %i.cr, ptr %i.cz, align 1, !tbaa !72
  %i.da = add i64 %.sroa.4.1, -8
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7: ; preds = %_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.1, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.2, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6
  %.sroa.3.1.i.7 = phi i64 [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6 ], [ %i.da, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.2 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.1 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i ], [ 0, %_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %0, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.3.1.i.7, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customINS0_7weekdayEEEvPvRNS0_13parse_contextIcEERS3_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #2 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v12::formatter", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  store i32 32768, ptr %3, align 8, !tbaa !144
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 32, ptr %i.b, align 4, !tbaa !72
  %scevgep.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.c, align 4, !tbaa !146
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr @_ZN3fmt3v126detail14string_literalIcJLc37ELc70ELc32ELc37ELc84EEE5valueE, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 5, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !185    ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !186  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i ; 2 uses
  %.not.i = icmp samesign eq i64 %i.i, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i8, ptr %i.g, align 1, !tbaa !72
  %i.l = icmp eq i8 %i.k, 76
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i32 49152, ptr %3, align 8, !tbaa !144
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0.i = phi ptr [ %i.m, %bb.c ], [ %i.g, %bb.b ], [ %i.g, %bb.a ] ; 3 uses
  %.not13.i = icmp eq ptr %.0.i, %i.j
  br i1 %.not13.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i8, ptr %.0.i, align 1, !tbaa !72
  %i.o = icmp ne i8 %i.n, 125                     ; 2 uses
  %i.p = zext i1 %i.o to i8
  store i8 %i.p, ptr %i.f, align 8, !tbaa !262
  br i1 %i.o, label %bb.f, label %_ZN3fmt3v129formatterINS0_7weekdayEcvE5parseERNS0_13parse_contextIcEE.exit

bb.f:                                             ; preds = %bb.e
  %i.q = call noundef ptr @_ZN3fmt3v129formatterI2tmcvE8do_parseERNS0_13parse_contextIcEEb(ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef nonnull align 8 dereferenceable(20) %1, i1 noundef zeroext true)
  %.pre = load ptr, ptr %1, align 8, !tbaa !185
  %.pre7 = load i64, ptr %i.h, align 8, !tbaa !186
  br label %_ZN3fmt3v129formatterINS0_7weekdayEcvE5parseERNS0_13parse_contextIcEE.exit

.critedge.i:                                      ; preds = %bb.d
  store i8 0, ptr %i.f, align 8, !tbaa !262
  br label %_ZN3fmt3v129formatterINS0_7weekdayEcvE5parseERNS0_13parse_contextIcEE.exit

_ZN3fmt3v129formatterINS0_7weekdayEcvE5parseERNS0_13parse_contextIcEE.exit: ; preds = %bb.e, %bb.f, %.critedge.i
  %i.r = phi i64 [ %.pre7, %bb.f ], [ %i.i, %.critedge.i ], [ %i.i, %bb.e ]
  %i.s = phi ptr [ %.pre, %bb.f ], [ %i.g, %.critedge.i ], [ %i.g, %bb.e ] ; 2 uses
  %i.t = phi ptr [ %i.q, %bb.f ], [ %i.j, %.critedge.i ], [ %.0.i, %bb.e ]
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.w
  store ptr %i.x, ptr %1, align 8, !tbaa !185
  %i.y = sub i64 %i.r, %i.w
  store i64 %i.y, ptr %i.h, align 8, !tbaa !186
  %.sroa.0.0.copyload = load i8, ptr %0, align 1, !tbaa !72
  %i.z = call ptr @_ZNK3fmt3v129formatterINS0_7weekdayEcvE6formatINS0_7contextEEEDTcldtfp0_3outEES2_RT_(ptr noundef nonnull align 8 dereferenceable(49) %3, i8 %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNK3fmt3v129formatterINS0_7weekdayEcvE6formatINS0_7contextEEEDTcldtfp0_3outEES2_RT_(ptr noundef nonnull align 8 dereferenceable(49) %0, i8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 7 uses
  %4 = alloca %"class.fmt::v12::detail::get_locale", align 8 ; 9 uses
  %5 = alloca %"class.fmt::v12::detail::tm_writer", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.a = zext i8 %1 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.a, ptr %i.b, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i8, ptr %i.c, align 8, !tbaa !262, !range !82, !noundef !83
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @_ZNK3fmt3v129formatterI2tmcvE9do_formatINSt6chrono8durationIlSt5ratioILl1ELl1EEEENS0_7contextEEEDTcldtfp0_3outEERKS2_RT0_PKT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef null)
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.g = load i32, ptr %0, align 8, !tbaa !144
  %i.h = and i32 %i.g, 16384                      ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.i, align 8, !tbaa !140 ; 2 uses
  %.lobit = lshr exact i32 %i.h, 14
  %i.j = trunc nuw nsw i32 %.lobit to i8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i8 %i.j, ptr %i.k, align 8, !tbaa !264
  br i1 %.not, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload.i) #34
  br label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit

bb.f:                                             ; preds = %bb.d
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %4) #34
  br label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit: ; preds = %bb.c, %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.l = load i8, ptr %i.k, align 8, !tbaa !264, !range !82, !noundef !83
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.n = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.h, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, !prof !265

bb.h:                                             ; preds = %bb.g
  %i.p = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #34
  %.not.i.i7 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i7, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr %i.q, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !267
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #34
  br label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i

bb.k:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #34
  br label %.body

_ZN3fmt3v126detail18get_classic_localeEv.exit.i:  ; preds = %bb.j, %bb.h, %bb.g
  %i.s = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !267, !nonnull !83, !align !111
  br label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit

_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit: ; preds = %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.t = phi ptr [ %i.s, %_ZN3fmt3v126detail18get_classic_localeEv.exit.i ], [ %4, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit ] ; 2 uses
  %.sroa.0.0.copyload.i8 = load ptr, ptr %2, align 8, !tbaa !134
  store ptr %i.t, ptr %5, align 8, !tbaa !267
  %i.u = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %bb.p, !prof !265

bb.l:                                             ; preds = %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.w = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #34
  %.not.i.i10 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i10, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  store ptr %i.x, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !267
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #34
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #34
  br label %.body

bb.p:                                             ; preds = %bb.n, %bb.l, %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aa = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !267, !nonnull !83, !align !111
  %i.ab = call noundef zeroext i1 @_ZNKSt6localeeqERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #34
  %i.ac = zext i1 %i.ab to i8
  store i8 %i.ac, ptr %i.z, align 8, !tbaa !271
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %.sroa.0.0.copyload.i8, ptr %i.ad, align 8, !tbaa !134
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr null, ptr %i.ae, align 8, !tbaa !272
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %3, ptr %i.af, align 8, !tbaa !273
  invoke void @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE15on_abbr_weekdayEv(ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %.sroa.0.0.copyload.i13 = load ptr, ptr %i.ad, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.ag = load i8, ptr %i.k, align 8, !tbaa !264, !range !82, !noundef !83
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.r, label %_ZN3fmt3v126detail10get_localeD2Ev.exit

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %4) #34
  br label %_ZN3fmt3v126detail10get_localeD2Ev.exit

_ZN3fmt3v126detail10get_localeD2Ev.exit:          ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.u

bb.s:                                             ; preds = %bb.p
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.s, %bb.o, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.r, %bb.k ], [ %i.ai, %bb.s ], [ %i.y, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.aj = load i8, ptr %i.k, align 8, !tbaa !264, !range !82, !noundef !83
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.t, label %_ZN3fmt3v126detail10get_localeD2Ev.exit14

bb.t:                                             ; preds = %.body
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %4) #34
  br label %_ZN3fmt3v126detail10get_localeD2Ev.exit14

_ZN3fmt3v126detail10get_localeD2Ev.exit14:        ; preds = %.body, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  resume { ptr, i32 } %eh.lpad-body

bb.u:                                             ; preds = %_ZN3fmt3v126detail10get_localeD2Ev.exit, %bb.b
  %.sroa.06.0 = phi ptr [ %i.f, %bb.b ], [ %.sroa.0.0.copyload.i13, %_ZN3fmt3v126detail10get_localeD2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret ptr %.sroa.06.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v129formatterI2tmcvE8do_parseERNS0_13parse_contextIcEEb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"class.fmt::v12::detail::tm_format_checker", align 1 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !185    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !186  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 5 uses
  %i.e = icmp samesign eq i64 %i.c, 0
  br i1 %i.e, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.a, align 1, !tbaa !72
  %i.g = icmp eq i8 %i.f, 125
  br i1 %i.g, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef ptr @_ZN3fmt3v126detail11parse_alignIcEEPKT_S5_S5_RNS0_12format_specsE(ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull align 4 dereferenceable(16) %0) ; 5 uses
  %i.i = icmp eq ptr %i.h, %i.d
  br i1 %i.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.h, align 1, !tbaa !72    ; 3 uses
  %i.k = add i8 %i.j, -48
  %or.cond = icmp ult i8 %i.k, 10
  %i.l = icmp eq i8 %i.j, 123
  %or.cond5 = or i1 %i.l, %or.cond
  br i1 %or.cond5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = tail call { ptr, i32 } @_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE(ptr noundef nonnull %i.h, ptr noundef nonnull %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(20) %1) ; 2 uses
  %i.p = extractvalue { ptr, i32 } %i.o, 0        ; 4 uses
  %i.q = extractvalue { ptr, i32 } %i.o, 1
  %i.r = load i32, ptr %0, align 8, !tbaa !144
  %i.s = and i32 %i.r, -193
  %i.t = shl i32 %i.q, 6
  %i.u = or i32 %i.s, %i.t
  store i32 %i.u, ptr %0, align 8, !tbaa !144
  %i.v = icmp eq ptr %i.p, %i.d
  br i1 %i.v, label %bb.j, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.e
  %.pr = load i8, ptr %i.p, align 1, !tbaa !72
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split, %bb.d
  %i.w = phi i8 [ %.pr, %thread-pre-split ], [ %i.j, %bb.d ]
  %.0 = phi ptr [ %i.p, %thread-pre-split ], [ %i.h, %bb.d ] ; 2 uses
  %i.x = icmp eq i8 %i.w, 76
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = load i32, ptr %0, align 8, !tbaa !144
  %i.z = or i32 %i.y, 16384
  store i32 %i.z, ptr %0, align 8, !tbaa !144
  %i.aa = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi ptr [ %i.aa, %bb.g ], [ %.0, %bb.f ]  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.ab = zext i1 %2 to i8
  store i8 %i.ab, ptr %3, align 1, !tbaa !275
  %i.ac = call noundef ptr @_ZN3fmt3v126detail19parse_chrono_formatIcNS1_17tm_format_checkerEEEPKT_S6_S6_OT0_(ptr noundef nonnull %.1, ptr noundef nonnull %i.d, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %.not = icmp eq ptr %i.ac, %.1
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %.1 to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.1, ptr %i.ag, align 8, !tbaa !135
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.af, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !86
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.i, %bb.h, %bb.c, %bb.a, %bb.b
  %.139 = phi ptr [ %i.h, %bb.c ], [ %i.a, %bb.a ], [ %i.a, %bb.b ], [ %i.p, %bb.e ], [ %i.ac, %bb.i ], [ %i.ac, %bb.h ]
  ret ptr %.139
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v126detail11parse_alignIcEEPKT_S5_S5_RNS0_12format_specsE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #2 comdat {
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail19parse_chrono_formatIcNS1_17tm_format_checkerEEEPKT_S6_S6_OT0_:bb.a

bb.as:                                            ; preds = %bb.ar
  tail call void @__cxa_throw(ptr nonnull %i.am, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #38
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.au:                                            ; preds = %bb.r
  %i.ao = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull @.str.68)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  tail call void @__cxa_throw(ptr nonnull %i.ao, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #38
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit: ; preds = %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.y, %bb.u, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.ah, %bb.aq, %bb.f
  %.3 = phi ptr [ %i.ak, %bb.ap ], [ %i.f, %bb.f ], [ %i.ak, %bb.aq ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.q, %bb.r ], [ %i.ak, %bb.ap ], [ %i.q, %bb.r ], [ %i.q, %bb.u ], [ %i.q, %bb.y ], [ %i.ad, %bb.ag ], [ %i.ad, %bb.ag ], [ %i.ad, %bb.ag ], [ %i.ad, %bb.ag ], [ %i.ad, %bb.ag ], [ %i.ad, %bb.ah ], [ %i.ad, %bb.ag ], [ %i.ak, %bb.ap ], [ %i.ak, %bb.ap ], [ %i.ak, %bb.ap ], [ %i.ak, %bb.ap ], [ %i.ak, %bb.ap ], [ %i.ak, %bb.ap ], [ %i.ak, %bb.ap ], [ %i.ak, %bb.ap ], [ %i.ak, %bb.ap ], [ %i.ak, %bb.ap ], [ %i.ak, %bb.ap ] ; 4 uses
  %.not145 = icmp eq ptr %.3, %1
  br i1 %.not145, label %_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit.thread, label %.lr.phthread-pre-split

_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit.thread: ; preds = %.lr.ph, %_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit, %bb.b, %bb.a
  %.0134 = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.0129168, %.lr.ph ], [ %.3, %_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE.exit ]
  ret ptr %.0134
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail17tm_format_checker13on_utc_offsetENS1_14numeric_systemE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !275, !range !82, !noundef !83
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.70)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #38
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #34
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail17tm_format_checker11unsupportedEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.69)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #38
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #34
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE15on_abbr_weekdayEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !271, !range !82, !noundef !83
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !134 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !276, !nonnull !83, !align !111 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !77   ; 2 uses
  %or.cond.i = icmp ult i32 %i.h, 7
  br i1 %or.cond.i, label %_ZN3fmt3v126detail18tm_wday_short_nameEi.exit, label %_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEEET0_S5_PKT_.exit

_ZN3fmt3v126detail18tm_wday_short_nameEi.exit:    ; preds = %bb.b
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail18tm_wday_short_nameEiE15short_name_list, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !135
  br label %_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEEET0_S5_PKT_.exit

_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEEET0_S5_PKT_.exit: ; preds = %_ZN3fmt3v126detail18tm_wday_short_nameEi.exit, %bb.b
  %i.l = phi ptr [ %i.k, %_ZN3fmt3v126detail18tm_wday_short_nameEi.exit ], [ @.str.92, %bb.b ] ; 3 uses
  %i.m = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #34
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = tail call ptr @_ZN3fmt3v126detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef nonnull %i.l, ptr noundef nonnull %i.n, ptr %.sroa.0.0.copyload)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %0, align 8, !tbaa !277, !nonnull !83, !align !111 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 0, ptr %i.s, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.r, align 8, !tbaa !127
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  store ptr %i.t, ptr %1, align 8, !tbaa !128
  store i64 500, ptr %i.q, align 8, !tbaa !129
  invoke void @_ZN3fmt3v126detail8do_writeIcEEvRNS1_6bufferIT_EERK2tmRKSt6localecc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i8 noundef signext 97, i8 noundef signext 0)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %1, align 8, !tbaa !128
  %i.v = load i64, ptr %i.s, align 8, !tbaa !130
  %i.w = invoke ptr @_ZN3fmt3v126detail20write_encoded_tm_strINS0_14basic_appenderIcEEEET_S5_NS0_17basic_string_viewIcEERKSt6locale(ptr %.sroa.0.0.copyload, ptr %i.u, i64 %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %1, align 8, !tbaa !128    ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.t
  br i1 %.not.i.i.i.i, label %_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.x) #34
  br label %_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %1, align 8, !tbaa !128    ; 2 uses
  %.not.i.i11.i.i = icmp eq ptr %i.z, %i.t
  br i1 %.not.i.i11.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit12.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %i.z) #34
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit12.i.i

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit12.i.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  resume { ptr, i32 } %i.y

_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit, %_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEEET0_S5_PKT_.exit
  %.sink = phi ptr [ %i.w, %_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEE16format_localizedEcc.exit ], [ %i.o, %_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEEET0_S5_PKT_.exit ]
  store ptr %.sink, ptr %i.d, align 8, !tbaa !134
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNK3fmt3v129formatterI2tmcvE9do_formatINSt6chrono8durationIlSt5ratioILl1ELl1EEEENS0_7contextEEEDTcldtfp0_3outEERKS2_RT0_PKT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v12::format_specs", align 4 ; 8 uses
  %5 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 12 uses
  %6 = alloca %"class.fmt::v12::detail::get_locale", align 8 ; 10 uses
  %7 = alloca %"class.fmt::v12::detail::tm_writer", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.b, align 8, !tbaa !127
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !128
  store i64 500, ptr %i.a, align 8, !tbaa !129
  %i.e = load i32, ptr %4, align 4, !tbaa !144
  %i.f = lshr i32 %i.e, 6
  %i.g = and i32 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_(i32 noundef %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %4, align 4, !tbaa !144
  %i.k = and i32 %i.j, 16384
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i8 0, ptr %i.l, align 8, !tbaa !264
  br label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.m, align 8, !tbaa !140 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.n = icmp ne ptr %.sroa.0.0.copyload.i, null  ; 2 uses
  %i.o = zext i1 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i8 %i.o, ptr %i.p, align 8, !tbaa !264
  br i1 %i.n, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit, label %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread: ; preds = %.thread, %bb.c
  %.ph29 = phi ptr [ %i.p, %bb.c ], [ %i.l, %.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  br label %bb.d

_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit: ; preds = %bb.c
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(9) %6, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload.i) #34
  %.pre = load i8, ptr %i.p, align 8, !tbaa !264, !range !82
  %i.q = trunc nuw i8 %.pre to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  br i1 %i.q, label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.r = phi ptr [ %.ph29, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit.thread ], [ %i.p, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit ] ; 2 uses
  %i.s = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.e, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, !prof !265

bb.e:                                             ; preds = %bb.d
  %i.u = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #34
  %.not.i.i14 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i14, label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %i.v, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !267
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #34
  br label %_ZN3fmt3v126detail18get_classic_localeEv.exit.i

bb.h:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #34
  br label %.body

_ZN3fmt3v126detail18get_classic_localeEv.exit.i:  ; preds = %bb.g, %bb.e, %bb.d
  %i.x = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !267, !nonnull !83, !align !111
  br label %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit

_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit: ; preds = %_ZN3fmt3v126detail18get_classic_localeEv.exit.i, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit
  %i.y = phi ptr [ %i.r, %_ZN3fmt3v126detail18get_classic_localeEv.exit.i ], [ %i.p, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit ] ; 3 uses
  %i.z = phi ptr [ %i.x, %_ZN3fmt3v126detail18get_classic_localeEv.exit.i ], [ %6, %_ZN3fmt3v126detail10get_localeC2EbNS0_10locale_refE.exit ] ; 2 uses
  store ptr %i.z, ptr %7, align 8, !tbaa !267
  %i.aa = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.i, label %bb.m, !prof !265

bb.i:                                             ; preds = %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.ac = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #34
  %.not.i.i16 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i16, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %i.ad, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !267
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #34
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #34
  br label %.body

bb.m:                                             ; preds = %bb.k, %bb.i, %_ZNK3fmt3v126detail10get_localecvRKSt6localeEv.exit
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = load ptr, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !267, !nonnull !83, !align !111
  %i.ah = call noundef zeroext i1 @_ZNKSt6localeeqERKS_(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #34
  %i.ai = zext i1 %i.ah to i8
  store i8 %i.ai, ptr %i.af, align 8, !tbaa !271
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %5, ptr %i.aj, align 8, !tbaa !134
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %3, ptr %i.ak, align 8, !tbaa !272
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %1, ptr %i.al, align 8, !tbaa !273
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !185 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !186
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ap
  %i.ar = invoke noundef ptr @_ZN3fmt3v126detail19parse_chrono_formatIcRNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEEEPKT_SF_SF_OT0_(ptr noundef %i.an, ptr noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %bb.n unwind label %bb.s       ; 0 uses

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.copyload.i19 = load ptr, ptr %2, align 8, !tbaa !134
  %i.as = load ptr, ptr %5, align 8, !tbaa !128
  %i.at = load i64, ptr %i.c, align 8, !tbaa !130
  %i.au = invoke ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i19, ptr %i.as, i64 %i.at, ptr noundef nonnull align 4 dereferenceable(16) %4)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.av = load i8, ptr %i.y, align 8, !tbaa !264, !range !82, !noundef !83
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.p, label %_ZN3fmt3v126detail10get_localeD2Ev.exit

bb.p:                                             ; preds = %bb.o
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %6) #34
  br label %_ZN3fmt3v126detail10get_localeD2Ev.exit

_ZN3fmt3v126detail10get_localeD2Ev.exit:          ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.ax = load ptr, ptr %5, align 8, !tbaa !128   ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.ax, %i.d
  br i1 %.not.i.i20, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN3fmt3v126detail10get_localeD2Ev.exit
  call void @free(ptr noundef %i.ax) #34
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %_ZN3fmt3v126detail10get_localeD2Ev.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret ptr %i.au

bb.r:                                             ; preds = %bb.a
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.s:                                             ; preds = %bb.n, %bb.m
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.s, %bb.l, %bb.h
  %i.ba = phi ptr [ %i.r, %bb.h ], [ %i.y, %bb.s ], [ %i.y, %bb.l ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.w, %bb.h ], [ %i.az, %bb.s ], [ %i.ae, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !264, !range !82, !noundef !83
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.t, label %_ZN3fmt3v126detail10get_localeD2Ev.exit21

bb.t:                                             ; preds = %.body
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %6) #34
  br label %_ZN3fmt3v126detail10get_localeD2Ev.exit21

_ZN3fmt3v126detail10get_localeD2Ev.exit21:        ; preds = %bb.t, %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.u

bb.u:                                             ; preds = %_ZN3fmt3v126detail10get_localeD2Ev.exit21, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZN3fmt3v126detail10get_localeD2Ev.exit21 ], [ %i.ay, %bb.r ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !128   ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.bd, %i.d
  br i1 %.not.i.i22, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit23, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef %i.bd) #34
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit23

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit23: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v126detail19parse_chrono_formatIcRNS1_9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEEEPKT_SF_SF_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %bb.do, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !72
  switch i8 %i.c, label %bb.c [
    i8 125, label %bb.do
    i8 37, label %.lr.ph
  ]

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 18 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 20 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull @.str.68)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #38
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.f) #34
  br label %bb.dp

thread-pre-split:                                 ; preds = %bb.dk
  %.pr = load i8, ptr %.3, align 1, !tbaa !72
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split, %.lr.ph
  %i.h = phi i8 [ %.pr, %thread-pre-split ], [ 37, %.lr.ph ]
  %.0129261 = phi ptr [ %.3, %thread-pre-split ], [ %0, %.lr.ph ] ; 8 uses
  %.0135260 = phi ptr [ %.1136, %thread-pre-split ], [ %0, %.lr.ph ] ; 4 uses
  switch i8 %i.h, label %bb.g [
    i8 125, label %.thread
    i8 37, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %.0129261, i64 1
  br label %bb.dk, !llvm.loop !778
end_hunk_1
