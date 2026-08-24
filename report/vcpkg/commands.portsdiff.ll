Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/commands.portsdiff?download=true
inline.NumInlined: 1289
inline.NumDeleted: 667
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN3fmt3v126detail15write_codepointILm8EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SH_cj:bb.a
bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %i.af, align 8, !tbaa !171
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ar), !inline_history !250
  %.pre.i.i.i.i.1 = load i64, ptr %i.ad, align 8, !tbaa !168 ; 2 uses
  %.pre2.i.i.i.i.1 = add i64 %.pre.i.i.i.i.1, 1
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.1

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.1: ; preds = %bb.h, %bb.i
  %.pre-phi.i.i.i.i.1 = phi i64 [ %i.ar, %bb.h ], [ %.pre2.i.i.i.i.1, %bb.i ]
  %i.av = phi i64 [ %i.aq, %bb.h ], [ %.pre.i.i.i.i.1, %bb.i ]
  %i.aw = load ptr, ptr %0, align 8, !tbaa !174
  store i64 %.pre-phi.i.i.i.i.1, ptr %i.ad, align 8, !tbaa !168
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av
  store i8 %i.ap, ptr %i.ax, align 1, !tbaa !12
  %.07.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ay = load i8, ptr %.07.i.ptr.2, align 2, !tbaa !12
  %.not.i.i11.2 = icmp eq i64 %.sroa.4.1, 2
  br i1 %.not.i.i11.2, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.j

bb.j:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.1
  %i.az = load i64, ptr %i.ad, align 8, !tbaa !168 ; 2 uses
  %i.ba = add i64 %i.az, 1                        ; 3 uses
  %i.bb = load i64, ptr %i.ae, align 8, !tbaa !170
  %i.bc = icmp ugt i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.k, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.2

bb.k:                                             ; preds = %bb.j
  %i.bd = load ptr, ptr %i.af, align 8, !tbaa !171
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ba), !inline_history !250
  %.pre.i.i.i.i.2 = load i64, ptr %i.ad, align 8, !tbaa !168 ; 2 uses
  %.pre2.i.i.i.i.2 = add i64 %.pre.i.i.i.i.2, 1
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.2

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.2: ; preds = %bb.j, %bb.k
  %.pre-phi.i.i.i.i.2 = phi i64 [ %i.ba, %bb.j ], [ %.pre2.i.i.i.i.2, %bb.k ]
  %i.be = phi i64 [ %i.az, %bb.j ], [ %.pre.i.i.i.i.2, %bb.k ]
  %i.bf = load ptr, ptr %0, align 8, !tbaa !174
  store i64 %.pre-phi.i.i.i.i.2, ptr %i.ad, align 8, !tbaa !168
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.be
  store i8 %i.ay, ptr %i.bg, align 1, !tbaa !12
  %.07.i.ptr.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.bh = load i8, ptr %.07.i.ptr.3, align 1, !tbaa !12
  %.not.i.i11.3 = icmp eq i64 %.sroa.4.1, 3
  br i1 %.not.i.i11.3, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.l

bb.l:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.2
  %i.bi = load i64, ptr %i.ad, align 8, !tbaa !168 ; 2 uses
  %i.bj = add i64 %i.bi, 1                        ; 3 uses
  %i.bk = load i64, ptr %i.ae, align 8, !tbaa !170
  %i.bl = icmp ugt i64 %i.bj, %i.bk
  br i1 %i.bl, label %bb.m, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3

bb.m:                                             ; preds = %bb.l
  %i.bm = load ptr, ptr %i.af, align 8, !tbaa !171
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bj), !inline_history !250
  %.pre.i.i.i.i.3 = load i64, ptr %i.ad, align 8, !tbaa !168 ; 2 uses
  %.pre2.i.i.i.i.3 = add i64 %.pre.i.i.i.i.3, 1
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3: ; preds = %bb.l, %bb.m
  %.pre-phi.i.i.i.i.3 = phi i64 [ %i.bj, %bb.l ], [ %.pre2.i.i.i.i.3, %bb.m ]
  %i.bn = phi i64 [ %i.bi, %bb.l ], [ %.pre.i.i.i.i.3, %bb.m ]
  %i.bo = load ptr, ptr %0, align 8, !tbaa !174
  store i64 %.pre-phi.i.i.i.i.3, ptr %i.ad, align 8, !tbaa !168
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bn
  store i8 %i.bh, ptr %i.bp, align 1, !tbaa !12
  %.07.i.ptr.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bq = load i8, ptr %.07.i.ptr.4, align 4, !tbaa !12
  %.not.i.i11.4 = icmp eq i64 %.sroa.4.1, 4
  br i1 %.not.i.i11.4, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.n

bb.n:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3
  %i.br = load i64, ptr %i.ad, align 8, !tbaa !168 ; 2 uses
  %i.bs = add i64 %i.br, 1                        ; 3 uses
  %i.bt = load i64, ptr %i.ae, align 8, !tbaa !170
  %i.bu = icmp ugt i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.o, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4

bb.o:                                             ; preds = %bb.n
  %i.bv = load ptr, ptr %i.af, align 8, !tbaa !171
  tail call void %i.bv(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bs), !inline_history !250
  %.pre.i.i.i.i.4 = load i64, ptr %i.ad, align 8, !tbaa !168 ; 2 uses
  %.pre2.i.i.i.i.4 = add i64 %.pre.i.i.i.i.4, 1
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4: ; preds = %bb.n, %bb.o
  %.pre-phi.i.i.i.i.4 = phi i64 [ %i.bs, %bb.n ], [ %.pre2.i.i.i.i.4, %bb.o ]
  %i.bw = phi i64 [ %i.br, %bb.n ], [ %.pre.i.i.i.i.4, %bb.o ]
  %i.bx = load ptr, ptr %0, align 8, !tbaa !174
  store i64 %.pre-phi.i.i.i.i.4, ptr %i.ad, align 8, !tbaa !168
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw
  store i8 %i.bq, ptr %i.by, align 1, !tbaa !12
  %.07.i.ptr.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.bz = load i8, ptr %.07.i.ptr.5, align 1, !tbaa !12
  %.not.i.i11.5 = icmp eq i64 %.sroa.4.1, 5
  br i1 %.not.i.i11.5, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.p

bb.p:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4
  %i.ca = load i64, ptr %i.ad, align 8, !tbaa !168 ; 2 uses
  %i.cb = add i64 %i.ca, 1                        ; 3 uses
  %i.cc = load i64, ptr %i.ae, align 8, !tbaa !170
  %i.cd = icmp ugt i64 %i.cb, %i.cc
  br i1 %i.cd, label %bb.q, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5

bb.q:                                             ; preds = %bb.p
  %i.ce = load ptr, ptr %i.af, align 8, !tbaa !171
  tail call void %i.ce(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cb), !inline_history !250
  %.pre.i.i.i.i.5 = load i64, ptr %i.ad, align 8, !tbaa !168 ; 2 uses
  %.pre2.i.i.i.i.5 = add i64 %.pre.i.i.i.i.5, 1
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5: ; preds = %bb.p, %bb.q
  %.pre-phi.i.i.i.i.5 = phi i64 [ %i.cb, %bb.p ], [ %.pre2.i.i.i.i.5, %bb.q ]
  %i.cf = phi i64 [ %i.ca, %bb.p ], [ %.pre.i.i.i.i.5, %bb.q ]
  %i.cg = load ptr, ptr %0, align 8, !tbaa !174
  store i64 %.pre-phi.i.i.i.i.5, ptr %i.ad, align 8, !tbaa !168
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cf
  store i8 %i.bz, ptr %i.ch, align 1, !tbaa !12
  %.07.i.ptr.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ci = load i8, ptr %.07.i.ptr.6, align 2, !tbaa !12
  %.not.i.i11.6 = icmp eq i64 %.sroa.4.1, 6
  br i1 %.not.i.i11.6, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.r

bb.r:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5
  %i.cj = load i64, ptr %i.ad, align 8, !tbaa !168 ; 2 uses
  %i.ck = add i64 %i.cj, 1                        ; 3 uses
  %i.cl = load i64, ptr %i.ae, align 8, !tbaa !170
  %i.cm = icmp ugt i64 %i.ck, %i.cl
  br i1 %i.cm, label %bb.s, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6

bb.s:                                             ; preds = %bb.r
  %i.cn = load ptr, ptr %i.af, align 8, !tbaa !171
  tail call void %i.cn(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ck), !inline_history !250
  %.pre.i.i.i.i.6 = load i64, ptr %i.ad, align 8, !tbaa !168 ; 2 uses
  %.pre2.i.i.i.i.6 = add i64 %.pre.i.i.i.i.6, 1
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6: ; preds = %bb.r, %bb.s
  %.pre-phi.i.i.i.i.6 = phi i64 [ %i.ck, %bb.r ], [ %.pre2.i.i.i.i.6, %bb.s ]
  %i.co = phi i64 [ %i.cj, %bb.r ], [ %.pre.i.i.i.i.6, %bb.s ]
  %i.cp = load ptr, ptr %0, align 8, !tbaa !174
  store i64 %.pre-phi.i.i.i.i.6, ptr %i.ad, align 8, !tbaa !168
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.co
  store i8 %i.ci, ptr %i.cq, align 1, !tbaa !12
  %.07.i.ptr.7 = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.cr = load i8, ptr %.07.i.ptr.7, align 1, !tbaa !12
  %.not.i.i11.7 = icmp eq i64 %.sroa.4.1, 7
  br i1 %.not.i.i11.7, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.t

bb.t:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6
  %i.cs = load i64, ptr %i.ad, align 8, !tbaa !168 ; 2 uses
  %i.ct = add i64 %i.cs, 1                        ; 3 uses
  %i.cu = load i64, ptr %i.ae, align 8, !tbaa !170
  %i.cv = icmp ugt i64 %i.ct, %i.cu
  br i1 %i.cv, label %bb.u, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7

bb.u:                                             ; preds = %bb.t
  %i.cw = load ptr, ptr %i.af, align 8, !tbaa !171
  tail call void %i.cw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ct), !inline_history !250
  %.pre.i.i.i.i.7 = load i64, ptr %i.ad, align 8, !tbaa !168 ; 2 uses
  %.pre2.i.i.i.i.7 = add i64 %.pre.i.i.i.i.7, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7:    ; preds = %bb.u, %bb.t
  %.pre-phi.i.i.i.i.7 = phi i64 [ %i.ct, %bb.t ], [ %.pre2.i.i.i.i.7, %bb.u ]
  %i.cx = phi i64 [ %i.cs, %bb.t ], [ %.pre.i.i.i.i.7, %bb.u ]
  %i.cy = load ptr, ptr %0, align 8, !tbaa !174
  store i64 %.pre-phi.i.i.i.i.7, ptr %i.ad, align 8, !tbaa !168
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cx
  store i8 %i.cr, ptr %i.cz, align 1, !tbaa !12
  %i.da = add i64 %.sroa.4.1, -8
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7: ; preds = %_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.1, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.2, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6
  %.sroa.3.1.i.7 = phi i64 [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6 ], [ %i.da, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.2 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.1 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i ], [ 0, %_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %0, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.3.1.i.7, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN5vcpkg11VersionSpecESaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 128102389400760775
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.d = load ptr, ptr %0, align 8, !tbaa !44     ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 72
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIN5vcpkg11VersionSpecESaIS1_EE11_M_allocateEm.exit, label %bb.g

_ZNSt12_Vector_baseIN5vcpkg11VersionSpecESaIS1_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42   ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 72
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #26 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5vcpkg11VersionSpecESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseIN5vcpkg11VersionSpecESaIS1_EE11_M_allocateEm.exit, %_ZSt19__relocate_object_aIN5vcpkg11VersionSpecES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.at, %_ZSt19__relocate_object_aIN5vcpkg11VersionSpecES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN5vcpkg11VersionSpecESaIS1_EE11_M_allocateEm.exit ] ; 9 uses
  %.0911.i.i.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aIN5vcpkg11VersionSpecES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN5vcpkg11VersionSpecESaIS1_EE11_M_allocateEm.exit ] ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.p, ptr %.012.i.i.i, align 8, !tbaa !28, !alias.scope !251, !noalias !254
  %i.q = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !30, !alias.scope !254, !noalias !251 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !32, !alias.scope !254, !noalias !251 ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  tail call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.w, i1 false), !alias.scope !256
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.q, ptr %.012.i.i.i, align 8, !tbaa !30, !alias.scope !251, !noalias !254
  %i.x = load i64, ptr %i.r, align 8, !tbaa !12, !alias.scope !254, !noalias !251
  store i64 %i.x, ptr %i.p, align 8, !tbaa !12, !alias.scope !251, !noalias !254
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !32, !alias.scope !254, !noalias !251
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.y = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.u, %bb.d ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.y, ptr %i.aa, align 8, !tbaa !32, !alias.scope !251, !noalias !254
  store ptr %i.r, ptr %.0911.i.i.i, align 8, !tbaa !30, !alias.scope !254, !noalias !251
  store i64 0, ptr %i.z, align 8, !tbaa !32, !alias.scope !254, !noalias !251
  store i8 0, ptr %i.r, align 8, !tbaa !12, !alias.scope !254, !noalias !251
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 3 uses
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !28, !alias.scope !251, !noalias !254
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !30, !alias.scope !254, !noalias !251 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !32, !alias.scope !254, !noalias !251 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !256
  br label %_ZSt19__relocate_object_aIN5vcpkg11VersionSpecES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !30, !alias.scope !251, !noalias !254
  %i.al = load i64, ptr %i.af, align 8, !tbaa !12, !alias.scope !254, !noalias !251
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !12, !alias.scope !251, !noalias !254
  %.phi.trans.insert6.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %.pre7.i.i.i.i = load i64, ptr %.phi.trans.insert6.i.i.i.i, align 8, !tbaa !32, !alias.scope !254, !noalias !251
  br label %_ZSt19__relocate_object_aIN5vcpkg11VersionSpecES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN5vcpkg11VersionSpecES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.e
  %i.am = phi i64 [ %i.ai, %bb.e ], [ %.pre7.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !32, !alias.scope !251, !noalias !254
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !30, !alias.scope !254, !noalias !251
  store i64 0, ptr %i.an, align 8, !tbaa !32, !alias.scope !254, !noalias !251
  store i8 0, ptr %i.af, align 8, !tbaa !12, !alias.scope !254, !noalias !251
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !84, !alias.scope !254, !noalias !251
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !84, !alias.scope !251, !noalias !254
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %.not.i.i.i = icmp eq ptr %i.as, %i.k
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5vcpkg11VersionSpecESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !257

_ZNSt6vectorIN5vcpkg11VersionSpecESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.loopexit: ; preds = %_ZSt19__relocate_object_aIN5vcpkg11VersionSpecES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !44
  br label %_ZNSt6vectorIN5vcpkg11VersionSpecESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

_ZNSt6vectorIN5vcpkg11VersionSpecESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZNSt6vectorIN5vcpkg11VersionSpecESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.loopexit, %_ZNSt12_Vector_baseIN5vcpkg11VersionSpecESaIS1_EE11_M_allocateEm.exit
  %i.au = phi ptr [ %.pre, %_ZNSt6vectorIN5vcpkg11VersionSpecESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.loopexit ], [ %i.d, %_ZNSt12_Vector_baseIN5vcpkg11VersionSpecESaIS1_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.au, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseIN5vcpkg11VersionSpecESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5vcpkg11VersionSpecESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ay) #22
  br label %_ZNSt12_Vector_baseIN5vcpkg11VersionSpecESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5vcpkg11VersionSpecESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN5vcpkg11VersionSpecESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !44
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.az, ptr %i.j, align 8, !tbaa !42
  %i.ba = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %1
  store ptr %i.ba, ptr %i.b, align 8, !tbaa !35
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIN5vcpkg11VersionSpecESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5vcpkg11VersionSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN5vcpkg7VersionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !12
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #22
  br label %_ZN5vcpkg7VersionD2Ev.exit

_ZN5vcpkg7VersionD2Ev.exit:                       ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5vcpkg7VersionD2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !12
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5vcpkg7VersionD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN5vcpkg11VersionSpecESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !44     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5vcpkg11VersionSpecESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #25
  unreachable

_ZNKSt6vectorIN5vcpkg11VersionSpecESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 72                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 128102389400760775)
  %i.l = select i1 %i.j, i64 128102389400760775, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 72
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #26 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !28
  %i.s = load ptr, ptr %2, align 8, !tbaa !30     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN5vcpkg11VersionSpecESaIS1_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !32   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorIN5vcpkg11VersionSpecESaIS1_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !30
  %i.z = load i64, ptr %i.t, align 8, !tbaa !12
  store i64 %i.z, ptr %i.r, align 8, !tbaa !12
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.aa = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.w, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !32
  store ptr %i.t, ptr %2, align 8, !tbaa !30
  store i64 0, ptr %i.ab, align 8, !tbaa !32
  store i8 0, ptr %i.t, align 8, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 3 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !28
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !30 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !32 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false)
  br label %_ZN5vcpkg11VersionSpecC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !30
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !12
  store i64 %i.an, ptr %i.af, align 8, !tbaa !12
  %.phi.trans.insert37 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.pre38 = load i64, ptr %.phi.trans.insert37, align 8, !tbaa !32
  br label %_ZN5vcpkg11VersionSpecC2EOS0_.exit

_ZN5vcpkg11VersionSpecC2EOS0_.exit:               ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ao = phi i64 [ %i.ak, %bb.d ], [ %.pre38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !32
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !30
  store i64 0, ptr %i.ap, align 8, !tbaa !32
  store i8 0, ptr %i.ah, align 8, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.at = load i32, ptr %i.as, align 8, !tbaa !84
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !84
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5vcpkg11VersionSpecESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5vcpkg11VersionSpecC2EOS0_.exit, %_ZSt19__relocate_object_aIN5vcpkg11VersionSpecES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.by, %_ZSt19__relocate_object_aIN5vcpkg11VersionSpecES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZN5vcpkg11VersionSpecC2EOS0_.exit ] ; 9 uses
  %.0911.i.i.i = phi ptr [ %i.bx, %_ZSt19__relocate_object_aIN5vcpkg11VersionSpecES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZN5vcpkg11VersionSpecC2EOS0_.exit ] ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.au, ptr %.012.i.i.i, align 8, !tbaa !28, !alias.scope !258, !noalias !261
  %i.av = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !30, !alias.scope !261, !noalias !258 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !32, !alias.scope !261, !noalias !258 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bb, i1 false), !alias.scope !263
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.av, ptr %.012.i.i.i, align 8, !tbaa !30, !alias.scope !258, !noalias !261
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !12, !alias.scope !261, !noalias !258
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !12, !alias.scope !258, !noalias !261
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !32, !alias.scope !261, !noalias !258
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.e
  %i.bd = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.az, %bb.e ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !32, !alias.scope !258, !noalias !261
end_hunk_0
