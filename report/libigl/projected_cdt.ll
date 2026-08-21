Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/projected_cdt?download=true
inline.NumInlined: 11108
inline.NumDeleted: 3934
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZNK4CGAL25Lazy_construction_variantINS_5EpeckENS_20CommonKernelFunctors11Intersect_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclINS_9Segment_2IS1_EESR_EEDcRKT_RKT0_:bb.a
  br i1 %.not.i.i.i.i.i.i.i.i.i36, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit34, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ev = load i8, ptr @__libc_single_threaded, align 1, !tbaa !199
  %.not.i.i.i.i.i.i.i.i7.i.i37 = icmp eq i8 %i.ev, 0
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 3 uses
  %i.ex = load atomic i32, ptr %i.ew monotonic, align 4 ; 2 uses
  %i.ey = icmp eq i32 %i.ex, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i7.i.i37, label %bb.bv, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  br i1 %i.ey, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ez = load ptr, ptr %i.ef, align 8, !tbaa !41
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(12) %i.ef) #21, !inline_history !1325
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit34

bb.bu:                                            ; preds = %bb.bs
  %i.fc = add nsw i32 %i.ex, -1
  store atomic i32 %i.fc, ptr %i.ew monotonic, align 4
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit34

bb.bv:                                            ; preds = %bb.br
  br i1 %i.ey, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.fd = atomicrmw sub ptr %i.ew, i32 1 release, align 4
  %i.fe = icmp eq i32 %i.fd, 1
  br i1 %i.fe, label %bb.bx, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit34

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  fence acquire
  %i.ff = load ptr, ptr %16, align 8, !tbaa !181  ; 3 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit34, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.fh = load ptr, ptr %i.ff, align 8, !tbaa !41
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(12) %i.ff) #21, !inline_history !1325
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit34

_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit34: ; preds = %bb.bh, %bb.bk, %bb.bl, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.bt, %bb.bu, %bb.bw, %bb.bx, %bb.by, %bb.be, %.thread63, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  %i.fk = load i8, ptr %i.dh, align 16, !tbaa !1341, !range !13, !noundef !14
  %i.fl = trunc nuw i8 %i.fk to i1
  store i8 0, ptr %i.dh, align 16, !tbaa !1341
  br i1 %i.fl, label %bb.bz, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_2ISH_EEEELb0ELb0EED2Ev.exit

bb.bz:                                            ; preds = %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit34
  %i.fm = getelementptr inbounds nuw i8, ptr %15, i64 256
  %i.fn = load i8, ptr %i.fm, align 16, !tbaa !1345
  switch i8 %i.fn, label %bb.cf [
    i8 -1, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_2ISH_EEEELb0ELb0EED2Ev.exit
    i8 0, label %bb.ca
  ], !prof !1349

bb.ca:                                            ; preds = %bb.bz
  %i.fo = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.fp = getelementptr inbounds nuw i8, ptr %15, i64 121
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !9, !range !13, !noundef !14
  %i.fr = trunc nuw i8 %i.fq to i1
  %i.fs = getelementptr inbounds nuw i8, ptr %15, i64 122
  %i.ft = load i8, ptr %i.fs, align 2, !range !13
  %i.fu = trunc nuw i8 %i.ft to i1
  %or.cond.i1.i.i.i.i.i.i.i.i = select i1 %i.fr, i1 true, i1 %i.fu
  br i1 %or.cond.i1.i.i.i.i.i.i.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.fv = getelementptr inbounds nuw i8, ptr %15, i64 96
  %i.fw = getelementptr inbounds nuw i8, ptr %15, i64 104
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = load i64, ptr %i.fv, align 16
  %i.fz = shl i64 %i.fy, 3
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.fz) #36
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i.i.i.i: ; preds = %bb.cb, %bb.ca
  %i.ga = getelementptr inbounds nuw i8, ptr %15, i64 89
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !9, !range !13, !noundef !14
  %i.gc = trunc nuw i8 %i.gb to i1
  %i.gd = getelementptr inbounds nuw i8, ptr %15, i64 90
  %i.ge = load i8, ptr %i.gd, align 2, !range !13
  %i.gf = trunc nuw i8 %i.ge to i1
  %or.cond.i.i.i.i.i.i.i.i.i = select i1 %i.gc, i1 true, i1 %i.gf
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i.i.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i.i.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %15, i64 72
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = load i64, ptr %i.fo, align 16
  %i.gj = shl i64 %i.gi, 3
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gj) #36
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i.i.i.i.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.cc, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i.i.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %15, i64 57
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !9, !range !13, !noundef !14
  %i.gm = trunc nuw i8 %i.gl to i1
  %i.gn = getelementptr inbounds nuw i8, ptr %15, i64 58
  %i.go = load i8, ptr %i.gn, align 2, !range !13
  %i.gp = trunc nuw i8 %i.go to i1
  %or.cond.i1.i.i.1.i.i.i.i.i.i = select i1 %i.gm, i1 true, i1 %i.gp
  br i1 %or.cond.i1.i.i.1.i.i.i.i.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i.i.i.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i.i.i.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.gr = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = load i64, ptr %i.gq, align 16
  %i.gu = shl i64 %i.gt, 3
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gu) #36
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i.i.i.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i.i.i.i.i.i: ; preds = %bb.cd, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i.i.i.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %15, i64 25
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !9, !range !13, !noundef !14
  %i.gx = trunc nuw i8 %i.gw to i1
  %i.gy = getelementptr inbounds nuw i8, ptr %15, i64 26
  %i.gz = load i8, ptr %i.gy, align 2, !range !13
  %i.ha = trunc nuw i8 %i.gz to i1
  %or.cond.i.i.i.1.i.i.i.i.i.i = select i1 %i.gx, i1 true, i1 %i.ha
  br i1 %or.cond.i.i.i.1.i.i.i.i.i.i, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_2ISH_EEEELb0ELb0EED2Ev.exit, label %bb.ce

bb.ce:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i.i.i.i.i.i
  %i.hb = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = load i64, ptr %15, align 16
  %i.he = shl i64 %i.hd, 3
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.he) #36
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_2ISH_EEEELb0ELb0EED2Ev.exit

bb.cf:                                            ; preds = %bb.bz
  call void @_ZNSt5arrayIN4CGAL7Point_2INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEELm2EED2Ev(ptr noundef nonnull align 16 dead_on_return(256) dereferenceable(288) %15) #21
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_2ISH_EEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_2ISH_EEEELb0ELb0EED2Ev.exit: ; preds = %bb.bz, %bb.cf, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i.i.i.i.i.i, %bb.ce, %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEELb0ELb0EED2Ev.exit34
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.cg

bb.cg:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit, %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_2INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_2ISH_EEEELb0ELb0EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_20CommonKernelFunctors19Construct_segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb1EEclIJNS_7Point_2IS1_EESS_EEEDcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Segment_2.506") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #27 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %5 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %6 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %7 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %8 = alloca %class.anon.427, align 8            ; 5 uses
  %9 = alloca %class.anon, align 8                ; 4 uses
  %10 = alloca %class.anon.427, align 8           ; 5 uses
  %11 = alloca %class.anon, align 8               ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %.sroa.0.i.i = alloca [2 x %"class.CGAL::Point_2.211"], align 16 ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.CGAL::Segment_2.585", align 16 ; 48 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.g)
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 24576                      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e)
  %i.j = load i32, ptr %i.e, align 4
  %i.k = and i32 %i.j, -24577
  %i.l = or disjoint i32 %i.k, 16384
  store i32 %i.l, ptr %i.f, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.m = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #38
          to label %bb.b unwind label %bb.e       ; 9 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.n = load ptr, ptr %2, align 8, !tbaa !181
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %3, align 8, !tbaa !181    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.0.i.i, ptr noundef nonnull align 16 dereferenceable(32) %i.o, i64 32, i1 false)
  %.sroa.0.32..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.0.32..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(32) %i.q, i64 32, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.r, align 4, !tbaa !1040
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.s, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.0.i.i, i64 64, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store ptr %i.s, ptr %i.t, align 16, !tbaa !1350
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  store i32 0, ptr %i.u, align 8, !tbaa !1045
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20CommonKernelFunctors19Construct_segment_2IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_7Point_2INS_5EpeckEEESW_EEE, i64 16), ptr %i.m, align 16, !tbaa !41
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  store ptr %i.p, ptr %i.v, align 16, !tbaa !181
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !199
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load atomic i32, ptr %i.x monotonic, align 8
  %i.z = add nsw i32 %i.y, 1
  store atomic i32 %i.z, ptr %i.x monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.ab = load ptr, ptr %2, align 8, !tbaa !181   ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !181
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = load atomic i32, ptr %i.ac monotonic, align 4
  %i.ae = add nsw i32 %i.ad, 1
  store atomic i32 %i.ae, ptr %i.ac monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.af = atomicrmw add ptr %i.x, i32 1 monotonic, align 4 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.ah = load ptr, ptr %2, align 8, !tbaa !181   ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !181
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = atomicrmw add ptr %i.ai, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  store ptr %i.m, ptr %0, align 8, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.ak = load i32, ptr %i.c, align 4
  %i.al = and i32 %i.ak, -24577
  %i.am = or disjoint i32 %i.al, %i.i
  store i32 %i.am, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ak

bb.e:                                             ; preds = %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE ; 3 uses
  %.010 = extractvalue { ptr, i32 } %i.an, 1
  %i.ao = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #21
  %i.ap = icmp eq i32 %.010, %i.ao
  br i1 %i.ap, label %bb.f, label %bb.ah

bb.f:                                             ; preds = %bb.e
  %.011 = extractvalue { ptr, i32 } %i.an, 0
  %i.aq = call ptr @__cxa_begin_catch(ptr %.011) #21 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.ag

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.ar = load i32, ptr %i.c, align 4
  %i.as = and i32 %i.ar, -24577
  %i.at = or disjoint i32 %i.as, %i.i
  store i32 %i.at, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.au = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #38 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.av = load ptr, ptr %2, align 8, !tbaa !181   ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr %i.av, ptr %11, align 8, !tbaa !1170
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store ptr %11, ptr %10, align 8, !tbaa !392
  %i.ax = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 6 uses
  store ptr %10, ptr %i.ax, align 8, !tbaa !392
  %i.ay = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 6 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_2INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.ay, align 8, !tbaa !392
  %i.az = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.aw, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.az) #37
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ba = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ax, align 8, !tbaa !392
  store ptr null, ptr %i.ay, align 8, !tbaa !392
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.ax, align 8, !tbaa !392
  store ptr null, ptr %i.ay, align 8, !tbaa !392
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.bc = load atomic ptr, ptr %i.bb monotonic, align 8
  %i.bd = load ptr, ptr %3, align 8, !tbaa !181   ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store ptr %i.bd, ptr %9, align 8, !tbaa !1170
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %9, ptr %8, align 8, !tbaa !392
  store ptr %8, ptr %i.ax, align 8, !tbaa !392
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_2INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.ay, align 8, !tbaa !392
  %i.bf = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.be, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i19 unwind label %bb.n ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i19:        ; preds = %bb.k
  %.not.i.i.i.i20 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i.i.i20, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i19
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bf) #37
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bg = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ax, align 8, !tbaa !392
  store ptr null, ptr %i.ay, align 8, !tbaa !392
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %.body

bb.o:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i19
  store ptr null, ptr %i.ax, align 8, !tbaa !392
  store ptr null, ptr %i.ay, align 8, !tbaa !392
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bi = load atomic ptr, ptr %i.bh monotonic, align 8
  invoke void @_ZNK4CGAL20CommonKernelFunctors19Construct_segment_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_2ISG_EESL_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Segment_2.585") align 16 %12, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(128) %i.bc, ptr noundef nonnull align 16 dereferenceable(128) %i.bi)
          to label %bb.p unwind label %bb.ai

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21, !noalias !1353
  %i.bj = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 16 dereferenceable(256) %12)
          to label %.noexc unwind label %bb.aj    ; 2 uses

.noexc:                                           ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21, !noalias !1353
  %i.bk = extractvalue { double, double } %i.bj, 0
  %i.bl = extractvalue { double, double } %i.bj, 1
  %i.bm = fneg double %i.bk
  %i.bn = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %i.bl, i64 1
  %i.bp = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21, !noalias !1353
  %i.bq = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 16 dereferenceable(64) %i.bp)
          to label %.noexc24 unwind label %bb.aj  ; 2 uses

.noexc24:                                         ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !1353
  %i.br = extractvalue { double, double } %i.bq, 0
  %i.bs = extractvalue { double, double } %i.bq, 1
  %i.bt = fneg double %i.br
  %i.bu = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bv = insertelement <2 x double> %i.bu, double %i.bs, i64 1
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 128 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !1358
  %i.bx = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 16 dereferenceable(128) %i.bw)
          to label %.noexc25 unwind label %bb.aj  ; 2 uses

.noexc25:                                         ; preds = %.noexc24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !1358
  %i.by = extractvalue { double, double } %i.bx, 0
  %i.bz = extractvalue { double, double } %i.bx, 1
  %i.ca = fneg double %i.by
  %i.cb = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.bz, i64 1
  %i.cd = getelementptr inbounds nuw i8, ptr %12, i64 192 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21, !noalias !1358
  %i.ce = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 16 dereferenceable(64) %i.cd)
          to label %.noexc26 unwind label %bb.aj  ; 2 uses

.noexc26:                                         ; preds = %.noexc25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !1358
  %i.cf = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 1, ptr %i.cf, align 4, !tbaa !1040
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EEE, i64 16), ptr %i.au, align 16, !tbaa !41
  %i.cg = invoke noalias noundef nonnull dereferenceable(320) ptr @_Znwm(i64 noundef 320) #38
          to label %_ZN4CGAL10Lazy_rep_0INS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEC2ISL_EEOT_.exit unwind label %bb.aj ; 45 uses

_ZN4CGAL10Lazy_rep_0INS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEC2ISL_EEOT_.exit: ; preds = %.noexc26
  %i.ch = extractvalue { double, double } %i.ce, 0
  %i.ci = fneg double %i.ch
  %i.cj = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.ck = extractvalue { double, double } %i.ce, 1
  %i.cl = insertelement <2 x double> %i.cj, double %i.ck, i64 1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  store <2 x double> %i.bo, ptr %i.cg, align 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store <2 x double> %i.bv, ptr %.sroa.4.0..sroa_idx.i, align 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
end_hunk_0
begin_hunk_1_@_ZN4CGAL17Boost_MP_internal11to_intervalIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEENS4_ISB_LSD_1EEEEESt4pairIddET0_SI_:bb.a
  %i.dd = load i8, ptr %i.by, align 1, !tbaa !9, !range !13, !noundef !14
  %i.de = trunc nuw i8 %i.dd to i1
  %i.df = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = select i1 %i.de, ptr %13, ptr %i.dg
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !223 ; 2 uses
  %i.dj = icmp sgt i64 %i.da, 52
  br i1 %i.dj, label %.split, label %bb.ad

_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE7is_zeroEv.exit.thread: ; preds = %_ZN5boost14multiprecision3msbINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENSt9enable_ifIXeqsr15number_categoryIT_EE5valueLNS0_20number_category_typeE0EEmE4typeERKNS0_6numberISA_XT0_EEE.exit
  %i.dk = icmp sgt i64 %i.da, 52
  br i1 %i.dk, label %.split.thread, label %.thread

.split.thread:                                    ; preds = %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE7is_zeroEv.exit.thread
  %i.dl = lshr i64 %i.cz, 1
  %i.dm = add i32 %i.ag, 52
  br label %.thread

.split:                                           ; preds = %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE7is_zeroEv.exit
  %i.dn = and i64 %i.cz, 1
  %i.do = or i64 %i.dn, %i.di
  %i.dp = icmp eq i64 %i.do, 0
  %i.dq = lshr i64 %i.cz, 1                       ; 2 uses
  %i.dr = add i32 %i.ag, 52                       ; 2 uses
  br i1 %i.dp, label %bb.ae, label %.thread

bb.aa:                                            ; preds = %_ZN5boost14multiprecision8backends15eval_left_shiftILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEvE4typeERS9_o.exit
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ab:                                            ; preds = %_ZN5boost14multiprecision9divide_qrINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENSt9enable_ifIXeqsr15number_categoryIT_EE5valueLNS0_20number_category_typeE0EEvE4typeERKNS0_6numberISA_XT0_EEESH_RSF_SI_.exit
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ac:                                            ; preds = %bb.z
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ad:                                            ; preds = %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE7is_zeroEv.exit
  %i.dv = icmp eq i64 %i.di, 0
  br i1 %i.dv, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %.split, %bb.ad
  %.03288 = phi i64 [ %i.dq, %.split ], [ %i.cz, %bb.ad ]
  %.03886 = phi i32 [ %i.dr, %.split ], [ %i.ah, %bb.ad ] ; 3 uses
  %i.dw = uitofp i64 %.03288 to double
  %i.dx = sub nsw i32 0, %.03886
  %i.dy = icmp sgt i32 %.03886, 1074
  br i1 %i.dy, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dz = icmp slt i32 %.03886, -971
  br i1 %i.dz, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ea = call double @ldexp(double noundef 1.000000e+00, i32 noundef %i.dx) #21
  %i.eb = fmul double %i.ea, %i.dw                ; 2 uses
  br label %bb.aj

.thread:                                          ; preds = %.split.thread, %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE7is_zeroEv.exit.thread, %.split, %bb.ad
  %.03289 = phi i64 [ %i.dq, %.split ], [ %i.cz, %bb.ad ], [ %i.cz, %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE7is_zeroEv.exit.thread ], [ %i.dl, %.split.thread ]
  %.03887 = phi i32 [ %i.dr, %.split ], [ %i.ah, %bb.ad ], [ %i.ah, %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE7is_zeroEv.exit.thread ], [ %i.dm, %.split.thread ] ; 3 uses
  %i.ec = uitofp i64 %.03289 to double            ; 2 uses
  %i.ed = fadd nnan double %i.ec, 1.000000e+00
  %i.ee = sub nsw i32 0, %.03887
  %i.ef = icmp sgt i32 %.03887, 1074
  br i1 %i.ef, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %.thread
  %i.eg = icmp slt i32 %.03887, -971
  br i1 %i.eg, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eh = call double @ldexp(double noundef 1.000000e+00, i32 noundef %i.ee) #21 ; 2 uses
  %i.ei = fmul double %i.eh, %i.ec
  %i.ej = fmul double %i.ed, %i.eh
  br label %bb.aj

bb.aj:                                            ; preds = %.thread, %bb.ah, %bb.ai, %bb.ae, %bb.af, %bb.ag
  %.sroa.6.0 = phi double [ +inf, %bb.af ], [ %i.eb, %bb.ag ], [ f0x0010000000000000, %bb.ae ], [ %i.ej, %bb.ai ], [ f0x0010000000000000, %.thread ], [ +inf, %bb.ah ] ; 2 uses
  %.sroa.074.0 = phi double [ f0x7FEFFFFFFFFFFFFF, %bb.af ], [ %i.eb, %bb.ag ], [ 0.000000e+00, %bb.ae ], [ %i.ei, %bb.ai ], [ 0.000000e+00, %.thread ], [ f0x7FEFFFFFFFFFFFFF, %bb.ah ] ; 2 uses
  %i.ek = fneg double %.sroa.6.0
  %i.el = fneg double %.sroa.074.0
  %.085 = select i1 %.039, double %i.el, double %.sroa.6.0
  %.0 = select i1 %.039, double %i.ek, double %.sroa.074.0
  %.fca.0.insert.i66 = insertvalue { double, double } poison, double %.0, 0
  %.fca.1.insert.i67 = insertvalue { double, double } %.fca.0.insert.i66, double %.085, 1
  %i.em = load i8, ptr %i.by, align 1, !tbaa !9, !range !13, !noundef !14
  %i.en = trunc nuw i8 %i.em to i1
  %i.eo = load i8, ptr %i.bz, align 2, !range !13
  %i.ep = trunc nuw i8 %i.eo to i1
  %or.cond.i.i = select i1 %i.en, i1 true, i1 %i.ep
  br i1 %or.cond.i.i, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eq = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = load i64, ptr %13, align 16
  %i.et = shl i64 %i.es, 3
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.et) #36
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.eu = load i8, ptr %i.bu, align 1, !tbaa !9, !range !13, !noundef !14
  %i.ev = trunc nuw i8 %i.eu to i1
  %i.ew = load i8, ptr %i.bv, align 2, !range !13
  %i.ex = trunc nuw i8 %i.ew to i1
  %or.cond.i.i68 = select i1 %i.ev, i1 true, i1 %i.ex
  br i1 %or.cond.i.i68, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit69, label %bb.al

bb.al:                                            ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = load i64, ptr %12, align 16
  %i.fb = shl i64 %i.fa, 3
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fb) #36
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit69

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit69: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.ap

bb.am:                                            ; preds = %bb.ab, %bb.ac, %bb.aa
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ds, %bb.aa ], [ %i.dt, %bb.ab ], [ %i.du, %bb.ac ]
  %i.fc = load i8, ptr %i.by, align 1, !tbaa !9, !range !13, !noundef !14
  %i.fd = trunc nuw i8 %i.fc to i1
  %i.fe = load i8, ptr %i.bz, align 2, !range !13
  %i.ff = trunc nuw i8 %i.fe to i1
  %or.cond.i.i70 = select i1 %i.fd, i1 true, i1 %i.ff
  br i1 %or.cond.i.i70, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit71, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fg = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = load i64, ptr %13, align 16
  %i.fj = shl i64 %i.fi, 3
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fj) #36
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit71

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit71: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.fk = load i8, ptr %i.bu, align 1, !tbaa !9, !range !13, !noundef !14
  %i.fl = trunc nuw i8 %i.fk to i1
  %i.fm = load i8, ptr %i.bv, align 2, !range !13
  %i.fn = trunc nuw i8 %i.fm to i1
  %or.cond.i.i72 = select i1 %i.fl, i1 true, i1 %i.fn
  br i1 %or.cond.i.i72, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit73, label %bb.ao

bb.ao:                                            ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit71
  %i.fo = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = load i64, ptr %12, align 16
  %i.fr = shl i64 %i.fq, 3
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fr) #36
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit73

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit73: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit71, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %common.resume

bb.ap:                                            ; preds = %_ZN4CGAL7is_zeroIN5boost14multiprecision6numberINS2_8backends15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEELNS2_26expression_template_optionE1EEEEENSt11conditionalIXsr3stdE9is_same_vINS_26Algebraic_structure_traitsIT_E7Is_zeroENS_12Null_functorEEENS_22Real_embeddable_traitsISE_E7Is_zeroESG_E4type11result_typeERKSE_.exit, %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit69
  %.pn46 = phi { double, double } [ %.fca.1.insert.i67, %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit69 ], [ zeroinitializer, %_ZN4CGAL7is_zeroIN5boost14multiprecision6numberINS2_8backends15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEELNS2_26expression_template_optionE1EEEEENSt11conditionalIXsr3stdE9is_same_vINS_26Algebraic_structure_traitsIT_E7Is_zeroENS_12Null_functorEEENS_22Real_embeddable_traitsISE_E7Is_zeroESG_E4type11result_typeERKSE_.exit ]
  ret { double, double } %.pn46
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL8internal27Fill_lazy_variant_visitor_2ISt8optionalISt7variantIJNS_7Point_2INS_5EpeckEEENS_9Segment_2IS5_EEEEENS_16Simple_cartesianINS_11Interval_ntILb0EEEEES5_NSB_IN5boost14multiprecision6numberINSG_8backends16rational_adaptorINSI_15cpp_int_backendILm0ELm0ELNSG_16cpp_integer_typeE1ELNSG_18cpp_int_check_typeE0ESaIyEEEEELNSG_26expression_template_optionE1EEEEENS_4LazyIS2_IS3_IJNS4_ISE_EENS7_ISE_EEEEES2_IS3_IJNS4_ISS_EENS7_ISS_EEEEENS_19Cartesian_converterISS_SE_NS_12NT_converterISR_SD_EEEEEEEclISU_EEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #38 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1332 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !181
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.f = load atomic ptr, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load i8, ptr %i.g, align 16, !tbaa !1333
  %.not.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZNK4CGAL8internal12Variant_castINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJS7_NS_9Segment_2IS6_EEEEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.i, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @.str.134, ptr %i.j, align 8, !tbaa !1347
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #37
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNK4CGAL8internal12Variant_castINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJS7_NS_9Segment_2IS6_EEEEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.k, align 4, !tbaa !1040
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.l, ptr noundef nonnull align 16 dereferenceable(32) %i.f, i64 32, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.m, align 16, !tbaa !1042
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 0, ptr %i.n, align 8, !tbaa !1045
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEEE, i64 16), ptr %i.a, align 16, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !181  ; 2 uses
  store ptr %i.p, ptr %i.o, align 16, !tbaa !181
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !199
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4CGAL8internal12Variant_castINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJS7_NS_9Segment_2IS6_EEEEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i
  %i.s = load atomic i32, ptr %i.r monotonic, align 4
  %i.t = add nsw i32 %i.s, 1
  store atomic i32 %i.t, ptr %i.r monotonic, align 4
  br label %_ZN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit

bb.d:                                             ; preds = %_ZNK4CGAL8internal12Variant_castINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJS7_NS_9Segment_2IS6_EEEEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i
  %i.u = atomicrmw add ptr %i.r, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit

_ZN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit: ; preds = %bb.d, %bb.c
  %i.v = load ptr, ptr %0, align 8, !tbaa !1328   ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !1319, !range !13, !noundef !14
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !1322
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %_ZNSt8optionalISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS2_5EpeckEEENS2_9Segment_2IS4_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_ZNSt7variantIJN4CGAL7Point_2INS0_5EpeckEEENS0_9Segment_2IS2_EEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_EE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i.i unwind label %bb.g

_ZNSt7variantIJN4CGAL7Point_2INS0_5EpeckEEENS0_9Segment_2IS2_EEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_EE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i.i: ; preds = %bb.f
  store ptr %i.a, ptr %i.v, align 8, !tbaa !181
  store i8 0, ptr %i.z, align 8, !tbaa !1322
  br label %_ZN4CGAL6HandleD2Ev.exit6

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #39
  unreachable

bb.h:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit
  store ptr %i.a, ptr %i.v, align 8, !tbaa !181
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i8 0, ptr %i.ae, align 8, !tbaa !1322
  store i8 1, ptr %i.w, align 8, !tbaa !1319
  br label %_ZN4CGAL6HandleD2Ev.exit6

_ZNSt8optionalISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit: ; preds = %bb.e
  %i.af = load ptr, ptr %i.v, align 8, !tbaa !1443 ; 6 uses
  store ptr %i.a, ptr %i.v, align 8, !tbaa !1443
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit6, label %bb.i

bb.i:                                             ; preds = %_ZNSt8optionalISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !199
  %.not.i.i.i = icmp eq i8 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load atomic i32, ptr %i.ah monotonic, align 4 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 1                    ; 2 uses
  br i1 %.not.i.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !41
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(12) %i.af) #21, !inline_history !200
  br label %_ZN4CGAL6HandleD2Ev.exit6

bb.l:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ai, -1
  store atomic i32 %i.an, ptr %i.ah monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit6

bb.m:                                             ; preds = %bb.i
  br i1 %i.aj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = atomicrmw sub ptr %i.ah, i32 1 release, align 4
  %i.ap = icmp eq i32 %i.ao, 1
  br i1 %i.ap, label %bb.o, label %_ZN4CGAL6HandleD2Ev.exit6

bb.o:                                             ; preds = %bb.m, %bb.n
  fence acquire
  %i.aq = load ptr, ptr %i.af, align 8, !tbaa !41
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(12) %i.af) #21, !inline_history !200
  br label %_ZN4CGAL6HandleD2Ev.exit6

_ZN4CGAL6HandleD2Ev.exit6:                        ; preds = %bb.h, %_ZNSt7variantIJN4CGAL7Point_2INS0_5EpeckEEENS0_9Segment_2IS2_EEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_EE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i.i, %bb.o, %bb.n, %bb.l, %bb.k, %_ZNSt8optionalISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit
  ret void

bb.p:                                             ; preds = %bb.b
  %i.at = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #36
  resume { ptr, i32 } %i.at
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEED2Ev(ptr noundef nonnull align 16 dead_on_return(72) dereferenceable(80) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !181 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !199
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #21, !inline_history !1444
  br label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.e, -1
  store atomic i32 %i.j, ptr %i.d monotonic, align 4
  br label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit

bb.f:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = atomicrmw sub ptr %i.d, i32 1 release, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.h, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  fence acquire
  %i.m = load ptr, ptr %i.a, align 16, !tbaa !181 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #21, !inline_history !1444
  br label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit

_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.g, %bb.h, %bb.i
  tail call void @_ZN4CGAL8Lazy_repINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EED2Ev(ptr noundef nonnull align 16 dead_on_return(60) dereferenceable(60) %0) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEED0Ev(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !181 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !199
  %.not.i.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #21, !inline_history !1445
  br label %_ZN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.e, -1
  store atomic i32 %i.j, ptr %i.d monotonic, align 4
  br label %_ZN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEED2Ev.exit

end_hunk_1
begin_hunk_2_@_ZNK4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE:bb.a
bb.j:                                             ; preds = %bb.f
  br i1 %i.ak, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = atomicrmw sub ptr %i.ai, i32 1 release, align 4
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %bb.l, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.k, %bb.j
  fence acquire
  %i.ar = load ptr, ptr %i.b, align 16, !tbaa !181 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !41
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(12) %i.ar) #21, !inline_history !1453
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i:          ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.h
  store ptr null, ptr %i.b, align 16, !tbaa !181
  br label %_ZN4CGAL17lazy_reset_memberIJNS_4LazyISt8optionalISt7variantIJNS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS_19Cartesian_converterISR_S8_NS_12NT_converterISQ_S7_EEEEEEEEEvRSt5tupleIJDpT_EE.exit

_ZN4CGAL17lazy_reset_memberIJNS_4LazyISt8optionalISt7variantIJNS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS_19Cartesian_converterISR_S8_NS_12NT_converterISQ_S7_EEEEEEEEEvRSt5tupleIJDpT_EE.exit: ; preds = %_ZN4CGAL7Point_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit, %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i
  ret void

bb.n:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke, %_ZNK4CGAL8internal12Variant_castINS_7Point_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEEclIJSI_NS_9Segment_2ISH_EEEEERKSI_RKSt8optionalISt7variantIJDpT_EEE.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %.preheader.preheader.i.i.i.i.i, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.aw, %bb.n ], [ %i.r, %.preheader.preheader.i.i.i.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 128) #36
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repISt8optionalISt7variantIJNS3_7Point_2INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS3_9Segment_2ISB_EEEEES5_IS6_IJNS7_INS8_IN5boost14multiprecision6numberINSI_8backends16rational_adaptorINSK_15cpp_int_backendILm0ELm0ELNSI_16cpp_integer_typeE1ELNSI_18cpp_int_check_typeE0ESaIyEEEEELNSI_26expression_template_optionE1EEEEEEENSD_ISU_EEEEENS3_19Cartesian_converterISU_SB_NS3_12NT_converterIST_SA_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERS16_ENUlvE_8__invokeEv() #9 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !392
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1454, !nonnull !14, !align !1175
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1446 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 16 dereferenceable(124) %i.d), !inline_history !1456
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS2_5EpeckEEENS2_9Segment_2IS4_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(9) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1322  ; 2 uses
  %.not = icmp eq i8 %i.b, -1
  br i1 %.not, label %bb.u, label %bb.b, !prof !301

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i8 %i.b, 0
  %i.d = load ptr, ptr %0, align 8, !tbaa !181    ; 7 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null  ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !199
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load atomic i32, ptr %i.f monotonic, align 4 ; 2 uses
  %i.h = icmp eq i32 %i.g, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(12) %i.d) #21, !inline_history !1457
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit

bb.g:                                             ; preds = %bb.e
  %i.l = add nsw i32 %i.g, -1
  store atomic i32 %i.l, ptr %i.f monotonic, align 4
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit

bb.h:                                             ; preds = %bb.d
  br i1 %i.h, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = atomicrmw sub ptr %i.f, i32 1 release, align 4
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.j, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  fence acquire
  %i.o = load ptr, ptr %0, align 8, !tbaa !181    ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(12) %i.o) #21, !inline_history !1457
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit

bb.l:                                             ; preds = %bb.b
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !199
  %.not.i.i.i.i.i.i.i.i7.i = icmp eq i8 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.v = load atomic i32, ptr %i.u monotonic, align 4 ; 2 uses
  %i.w = icmp eq i32 %i.v, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i7.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.w, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(12) %i.d) #21, !inline_history !1458
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit

bb.p:                                             ; preds = %bb.n
  %i.aa = add nsw i32 %i.v, -1
  store atomic i32 %i.aa, ptr %i.u monotonic, align 4
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit

bb.q:                                             ; preds = %bb.m
  br i1 %i.w, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = atomicrmw sub ptr %i.u, i32 1 release, align 4
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.s, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit

bb.s:                                             ; preds = %bb.r, %bb.q
  fence acquire
  %i.ad = load ptr, ptr %0, align 8, !tbaa !181   ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !41
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(12) %i.ad) #21, !inline_history !1458
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit: ; preds = %bb.c, %bb.f, %bb.g, %bb.i, %bb.j, %bb.k, %bb.l, %bb.o, %bb.p, %bb.r, %bb.s, %bb.t
  store i8 -1, ptr %i.a, align 8, !tbaa !1322
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL8internal27Fill_lazy_variant_visitor_2ISt8optionalISt7variantIJNS_7Point_2INS_5EpeckEEENS_9Segment_2IS5_EEEEENS_16Simple_cartesianINS_11Interval_ntILb0EEEEES5_NSB_IN5boost14multiprecision6numberINSG_8backends16rational_adaptorINSI_15cpp_int_backendILm0ELm0ELNSG_16cpp_integer_typeE1ELNSG_18cpp_int_check_typeE0ESaIyEEEEELNSG_26expression_template_optionE1EEEEENS_4LazyIS2_IS3_IJNS4_ISE_EENS7_ISE_EEEEES2_IS3_IJNS4_ISS_EENS7_ISS_EEEEENS_19Cartesian_converterISS_SE_NS_12NT_converterISR_SD_EEEEEEEclISV_EEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(64) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #38 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1332 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !181
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.f = load atomic ptr, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load i8, ptr %i.g, align 16, !tbaa !1333
  %.not.i.i.i.i = icmp eq i8 %i.h, 1
  br i1 %.not.i.i.i.i, label %_ZNK4CGAL8internal12Variant_castINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJNS_7Point_2IS6_EES7_EEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.i, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @.str.134, ptr %i.j, align 8, !tbaa !1347
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #37
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNK4CGAL8internal12Variant_castINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJNS_7Point_2IS6_EES7_EEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.k, align 4, !tbaa !1040
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.l, ptr noundef nonnull align 16 dereferenceable(64) %i.f, i64 64, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.l, ptr %i.m, align 16, !tbaa !1350
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i32 0, ptr %i.n, align 8, !tbaa !1045
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_2IS5_EES6_EEESV_ISW_IJNSX_ISK_EESL_EEEST_EEEEE, i64 16), ptr %i.a, align 16, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !181  ; 2 uses
  store ptr %i.p, ptr %i.o, align 16, !tbaa !181
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !199
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4CGAL8internal12Variant_castINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJNS_7Point_2IS6_EES7_EEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i
  %i.s = load atomic i32, ptr %i.r monotonic, align 4
  %i.t = add nsw i32 %i.s, 1
  store atomic i32 %i.t, ptr %i.r monotonic, align 4
  br label %_ZN4CGAL10Lazy_rep_nINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_2IS5_EES6_EEESV_ISW_IJNSX_ISK_EESL_EEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit

bb.d:                                             ; preds = %_ZNK4CGAL8internal12Variant_castINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJNS_7Point_2IS6_EES7_EEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i
  %i.u = atomicrmw add ptr %i.r, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL10Lazy_rep_nINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_2IS5_EES6_EEESV_ISW_IJNSX_ISK_EESL_EEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit

_ZN4CGAL10Lazy_rep_nINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_2IS5_EES6_EEESV_ISW_IJNSX_ISK_EESL_EEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit: ; preds = %bb.d, %bb.c
  %i.v = load ptr, ptr %0, align 8, !tbaa !1328   ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !1319, !range !13, !noundef !14
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_2IS5_EES6_EEESV_ISW_IJNSX_ISK_EESL_EEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !1322
  %i.ab = icmp eq i8 %i.aa, 1
  br i1 %i.ab, label %_ZNSt8optionalISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEEEaSIS6_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS2_5EpeckEEENS2_9Segment_2IS4_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_ZNSt7variantIJN4CGAL7Point_2INS0_5EpeckEEENS0_9Segment_2IS2_EEEE7emplaceILm1EJS5_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_EE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i.i unwind label %bb.g

_ZNSt7variantIJN4CGAL7Point_2INS0_5EpeckEEENS0_9Segment_2IS2_EEEE7emplaceILm1EJS5_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_EE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i.i: ; preds = %bb.f
  store ptr %i.a, ptr %i.v, align 8, !tbaa !181
  store i8 1, ptr %i.z, align 8, !tbaa !1322
  br label %_ZN4CGAL6HandleD2Ev.exit6

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #39
  unreachable

bb.h:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_2IS5_EES6_EEESV_ISW_IJNSX_ISK_EESL_EEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit
  store ptr %i.a, ptr %i.v, align 8, !tbaa !181
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i8 1, ptr %i.ae, align 8, !tbaa !1322
  store i8 1, ptr %i.w, align 8, !tbaa !1319
  br label %_ZN4CGAL6HandleD2Ev.exit6

_ZNSt8optionalISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEEEaSIS6_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit: ; preds = %bb.e
  %i.af = load ptr, ptr %i.v, align 8, !tbaa !1443 ; 6 uses
  store ptr %i.a, ptr %i.v, align 8, !tbaa !1443
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit6, label %bb.i

bb.i:                                             ; preds = %_ZNSt8optionalISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEEEaSIS6_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !199
  %.not.i.i.i = icmp eq i8 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load atomic i32, ptr %i.ah monotonic, align 4 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 1                    ; 2 uses
  br i1 %.not.i.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !41
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(12) %i.af) #21, !inline_history !200
  br label %_ZN4CGAL6HandleD2Ev.exit6

bb.l:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ai, -1
  store atomic i32 %i.an, ptr %i.ah monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit6

bb.m:                                             ; preds = %bb.i
  br i1 %i.aj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = atomicrmw sub ptr %i.ah, i32 1 release, align 4
  %i.ap = icmp eq i32 %i.ao, 1
  br i1 %i.ap, label %bb.o, label %_ZN4CGAL6HandleD2Ev.exit6

bb.o:                                             ; preds = %bb.m, %bb.n
  fence acquire
  %i.aq = load ptr, ptr %i.af, align 8, !tbaa !41
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(12) %i.af) #21, !inline_history !200
  br label %_ZN4CGAL6HandleD2Ev.exit6

_ZN4CGAL6HandleD2Ev.exit6:                        ; preds = %bb.h, %_ZNSt7variantIJN4CGAL7Point_2INS0_5EpeckEEENS0_9Segment_2IS2_EEEE7emplaceILm1EJS5_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_EE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i.i, %bb.o, %bb.n, %bb.l, %bb.k, %_ZNSt8optionalISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEEEaSIS6_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit
  ret void

bb.p:                                             ; preds = %bb.b
  %i.at = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 112) #36
  resume { ptr, i32 } %i.at
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_2IS5_EES6_EEESV_ISW_IJNSX_ISK_EESL_EEEST_EEEED2Ev(ptr noundef nonnull align 16 dead_on_return(104) dereferenceable(112) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !181 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !199
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #21, !inline_history !1444
  br label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.e, -1
  store atomic i32 %i.j, ptr %i.d monotonic, align 4
  br label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit

bb.f:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = atomicrmw sub ptr %i.d, i32 1 release, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.h, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  fence acquire
  %i.m = load ptr, ptr %i.a, align 16, !tbaa !181 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #21, !inline_history !1444
  br label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit

_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.g, %bb.h, %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EEE, i64 16), ptr %0, align 16, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load atomic ptr, ptr %i.r monotonic, align 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i, label %_ZN4CGAL8Lazy_repINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit
  fence acquire
  %i.u = icmp eq ptr %i.s, null
  br i1 %i.u, label %_ZN4CGAL8Lazy_repINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  tail call void @_ZNSt5arrayIN4CGAL7Point_2INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEELm2EED2Ev(ptr noundef nonnull align 16 dead_on_return(256) dereferenceable(256) %i.v) #21, !inline_history !1459
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 320) #36, !inline_history !1459
  br label %_ZN4CGAL8Lazy_repINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EED2Ev.exit

_ZN4CGAL8Lazy_repINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit, %bb.j, %bb.k
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_2IS5_EES6_EEESV_ISW_IJNSX_ISK_EESL_EEEST_EEEED0Ev(ptr noundef nonnull align 16 dereferenceable(112) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !181 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !199
  %.not.i.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4CGAL31Polyline_constraint_hierarchy_2INS_8internal11CC_iteratorINS_17Compact_containerINS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2INS_30Triangulation_data_structure_2INS4_IS5_NS6_IvEEEENS_37Constrained_triangulation_face_base_2IS5_NS_25Triangulation_face_base_2IS5_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS_7DefaultESJ_SJ_EELb0EEENS_26Pct2_vertex_handle_less_xyINS_32Constrained_triangulation_plus_2INS_36Constrained_Delaunay_triangulation_2IS5_SG_NS_23Exact_intersections_tagEEEEEEENS_7Point_2IS5_EEE5clearEv:bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.an, ptr %i.be, align 8, !tbaa !52
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.bf, align 8, !tbaa !53
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !50
  invoke void @_ZNSt8_Rb_treeIN4CGAL31Polyline_constraint_hierarchy_2INS0_8internal11CC_iteratorINS0_17Compact_containerINS0_27Triangulation_vertex_base_2INS0_5EpeckENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS5_IS6_NS7_IvEEEENS0_37Constrained_triangulation_face_base_2IS6_NS0_25Triangulation_face_base_2IS6_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS0_7DefaultESK_SK_EELb0EEENS0_26Pct2_vertex_handle_less_xyINS0_32Constrained_triangulation_plus_2INS0_36Constrained_Delaunay_triangulation_2IS6_SH_NS0_23Exact_intersections_tagEEEEEEENS0_7Point_2IS6_EEE13Constraint_idESX_St9_IdentityISX_ESt4lessISX_ESaISX_EE8_M_eraseEPSt13_Rb_tree_nodeISX_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.bh)
          to label %_ZNSt3setIN4CGAL31Polyline_constraint_hierarchy_2INS0_8internal11CC_iteratorINS0_17Compact_containerINS0_27Triangulation_vertex_base_2INS0_5EpeckENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS5_IS6_NS7_IvEEEENS0_37Constrained_triangulation_face_base_2IS6_NS0_25Triangulation_face_base_2IS6_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS0_7DefaultESK_SK_EELb0EEENS0_26Pct2_vertex_handle_less_xyINS0_32Constrained_triangulation_plus_2INS0_36Constrained_Delaunay_triangulation_2IS6_SH_NS0_23Exact_intersections_tagEEEEEEENS0_7Point_2IS6_EEE13Constraint_idESt4lessISX_ESaISX_EE5clearEv.exit unwind label %bb.o

bb.o:                                             ; preds = %_ZNSt3mapISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_27Triangulation_vertex_base_2INS1_5EpeckENS1_30Triangulation_ds_vertex_base_2INS1_30Triangulation_data_structure_2INS5_IS6_NS7_IvEEEENS1_37Constrained_triangulation_face_base_2IS6_NS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS1_7DefaultESK_SK_EELb0EEESM_EPNSt7__cxx114listINS1_31Polyline_constraint_hierarchy_2ISM_NS1_26Pct2_vertex_handle_less_xyINS1_32Constrained_triangulation_plus_2INS1_36Constrained_Delaunay_triangulation_2IS6_SH_NS1_23Exact_intersections_tagEEEEEEENS1_7Point_2IS6_EEE7ContextESaIS11_EEENS10_12Pair_compareESaIS0_IKSN_S14_EEE5clearEv.exit
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  tail call void @__clang_call_terminate(ptr %i.bj) #39
  unreachable

_ZNSt3setIN4CGAL31Polyline_constraint_hierarchy_2INS0_8internal11CC_iteratorINS0_17Compact_containerINS0_27Triangulation_vertex_base_2INS0_5EpeckENS0_30Triangulation_ds_vertex_base_2INS0_30Triangulation_data_structure_2INS5_IS6_NS7_IvEEEENS0_37Constrained_triangulation_face_base_2IS6_NS0_25Triangulation_face_base_2IS6_NS0_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS0_7DefaultESK_SK_EELb0EEENS0_26Pct2_vertex_handle_less_xyINS0_32Constrained_triangulation_plus_2INS0_36Constrained_Delaunay_triangulation_2IS6_SH_NS0_23Exact_intersections_tagEEEEEEENS0_7Point_2IS6_EEE13Constraint_idESt4lessISX_ESaISX_EE5clearEv.exit: ; preds = %_ZNSt3mapISt4pairIN4CGAL8internal11CC_iteratorINS1_17Compact_containerINS1_27Triangulation_vertex_base_2INS1_5EpeckENS1_30Triangulation_ds_vertex_base_2INS1_30Triangulation_data_structure_2INS5_IS6_NS7_IvEEEENS1_37Constrained_triangulation_face_base_2IS6_NS1_25Triangulation_face_base_2IS6_NS1_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS1_7DefaultESK_SK_EELb0EEESM_EPNSt7__cxx114listINS1_31Polyline_constraint_hierarchy_2ISM_NS1_26Pct2_vertex_handle_less_xyINS1_32Constrained_triangulation_plus_2INS1_36Constrained_Delaunay_triangulation_2IS6_SH_NS1_23Exact_intersections_tagEEEEEEENS1_7Point_2IS6_EEE7ContextESaIS11_EEENS10_12Pair_compareESaIS0_IKSN_S14_EEE5clearEv.exit
  store ptr null, ptr %i.bg, align 8, !tbaa !50
  store ptr %i.d, ptr %i.b, align 8, !tbaa !51
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.d, ptr %i.bk, align 8, !tbaa !52
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.bl, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL8SkiplistINS_31Polyline_constraint_hierarchy_2INS_8internal11CC_iteratorINS_17Compact_containerINS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2INS_30Triangulation_data_structure_2INS5_IS6_NS7_IvEEEENS_37Constrained_triangulation_face_base_2IS6_NS_25Triangulation_face_base_2IS6_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS_7DefaultESK_SK_EELb0EEENS_26Pct2_vertex_handle_less_xyINS_32Constrained_triangulation_plus_2INS_36Constrained_Delaunay_triangulation_2IS6_SH_NS_23Exact_intersections_tagEEEEEEENS_7Point_2IS6_EEE4NodeEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !786, !noalias !2168 ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not11.i.i.i, label %_ZN5boost9intrusive9list_implINS0_8mhtraitsIN4CGAL8SkiplistINS3_31Polyline_constraint_hierarchy_2INS3_8internal11CC_iteratorINS3_17Compact_containerINS3_27Triangulation_vertex_base_2INS3_5EpeckENS3_30Triangulation_ds_vertex_base_2INS3_30Triangulation_data_structure_2INS9_ISA_NSB_IvEEEENS3_37Constrained_triangulation_face_base_2ISA_NS3_25Triangulation_face_base_2ISA_NS3_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS3_7DefaultESO_SO_EELb0EEENS3_26Pct2_vertex_handle_less_xyINS3_32Constrained_triangulation_plus_2INS3_36Constrained_Delaunay_triangulation_2ISA_SL_NS3_23Exact_intersections_tagEEEEEEENS3_7Point_2ISA_EEE4NodeEE4NodeENS0_16list_member_hookIJEEEXadL_ZNS13_9skip_hookEEEEEmLb1EvE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.05.012.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.sroa.05.012.i.i.i, align 8, !tbaa !786 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.012.i.i.i, i8 0, i64 16, i1 false)
  %.not.i.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i.i, label %_ZN5boost9intrusive9list_implINS0_8mhtraitsIN4CGAL8SkiplistINS3_31Polyline_constraint_hierarchy_2INS3_8internal11CC_iteratorINS3_17Compact_containerINS3_27Triangulation_vertex_base_2INS3_5EpeckENS3_30Triangulation_ds_vertex_base_2INS3_30Triangulation_data_structure_2INS9_ISA_NSB_IvEEEENS3_37Constrained_triangulation_face_base_2ISA_NS3_25Triangulation_face_base_2ISA_NS3_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS3_7DefaultESO_SO_EELb0EEENS3_26Pct2_vertex_handle_less_xyINS3_32Constrained_triangulation_plus_2INS3_36Constrained_Delaunay_triangulation_2ISA_SL_NS3_23Exact_intersections_tagEEEEEEENS3_7Point_2ISA_EEE4NodeEE4NodeENS0_16list_member_hookIJEEEXadL_ZNS13_9skip_hookEEEEEmLb1EvE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2160

_ZN5boost9intrusive9list_implINS0_8mhtraitsIN4CGAL8SkiplistINS3_31Polyline_constraint_hierarchy_2INS3_8internal11CC_iteratorINS3_17Compact_containerINS3_27Triangulation_vertex_base_2INS3_5EpeckENS3_30Triangulation_ds_vertex_base_2INS3_30Triangulation_data_structure_2INS9_ISA_NSB_IvEEEENS3_37Constrained_triangulation_face_base_2ISA_NS3_25Triangulation_face_base_2ISA_NS3_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS3_7DefaultESO_SO_EELb0EEENS3_26Pct2_vertex_handle_less_xyINS3_32Constrained_triangulation_plus_2INS3_36Constrained_Delaunay_triangulation_2ISA_SL_NS3_23Exact_intersections_tagEEEEEEENS3_7Point_2ISA_EEE4NodeEE4NodeENS0_16list_member_hookIJEEEXadL_ZNS13_9skip_hookEEEEEmLb1EvE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  store ptr %i.b, ptr %i.b, align 8, !tbaa !786
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.b, ptr %i.e, align 8, !tbaa !783
  store i64 0, ptr %i.a, align 8, !tbaa !822
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !786, !noalias !2171 ; 2 uses
  %.not12.i.i = icmp eq ptr %i.g, %i.f
  br i1 %.not12.i.i, label %_ZN5boost9intrusive9list_implINS0_8mhtraitsIN4CGAL8SkiplistINS3_31Polyline_constraint_hierarchy_2INS3_8internal11CC_iteratorINS3_17Compact_containerINS3_27Triangulation_vertex_base_2INS3_5EpeckENS3_30Triangulation_ds_vertex_base_2INS3_30Triangulation_data_structure_2INS9_ISA_NSB_IvEEEENS3_37Constrained_triangulation_face_base_2ISA_NS3_25Triangulation_face_base_2ISA_NS3_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS3_7DefaultESO_SO_EELb0EEENS3_26Pct2_vertex_handle_less_xyINS3_32Constrained_triangulation_plus_2INS3_36Constrained_Delaunay_triangulation_2ISA_SL_NS3_23Exact_intersections_tagEEEEEEENS3_7Point_2ISA_EEE4NodeEE4NodeENS0_16list_member_hookIJEEEXadL_ZNS13_9skip_hookEEEEEmLb1EvED2Ev.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost9intrusive9list_implINS0_8mhtraitsIN4CGAL8SkiplistINS3_31Polyline_constraint_hierarchy_2INS3_8internal11CC_iteratorINS3_17Compact_containerINS3_27Triangulation_vertex_base_2INS3_5EpeckENS3_30Triangulation_ds_vertex_base_2INS3_30Triangulation_data_structure_2INS9_ISA_NSB_IvEEEENS3_37Constrained_triangulation_face_base_2ISA_NS3_25Triangulation_face_base_2ISA_NS3_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS3_7DefaultESO_SO_EELb0EEENS3_26Pct2_vertex_handle_less_xyINS3_32Constrained_triangulation_plus_2INS3_36Constrained_Delaunay_triangulation_2ISA_SL_NS3_23Exact_intersections_tagEEEEEEENS3_7Point_2ISA_EEE4NodeEE4NodeENS0_16list_member_hookIJEEEXadL_ZNS13_9skip_hookEEEEEmLb1EvE5clearEv.exit.i, %_ZNK4CGAL8SkiplistINS_31Polyline_constraint_hierarchy_2INS_8internal11CC_iteratorINS_17Compact_containerINS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2INS_30Triangulation_data_structure_2INS5_IS6_NS7_IvEEEENS_37Constrained_triangulation_face_base_2IS6_NS_25Triangulation_face_base_2IS6_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS_7DefaultESK_SK_EELb0EEENS_26Pct2_vertex_handle_less_xyINS_32Constrained_triangulation_plus_2INS_36Constrained_Delaunay_triangulation_2IS6_SH_NS_23Exact_intersections_tagEEEEEEENS_7Point_2IS6_EEE4NodeEE13Node_disposerclEPNSY_4NodeE.exit.i.i
  %.sroa.06.013.i.i = phi ptr [ %i.h, %_ZNK4CGAL8SkiplistINS_31Polyline_constraint_hierarchy_2INS_8internal11CC_iteratorINS_17Compact_containerINS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2INS_30Triangulation_data_structure_2INS5_IS6_NS7_IvEEEENS_37Constrained_triangulation_face_base_2IS6_NS_25Triangulation_face_base_2IS6_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS_7DefaultESK_SK_EELb0EEENS_26Pct2_vertex_handle_less_xyINS_32Constrained_triangulation_plus_2INS_36Constrained_Delaunay_triangulation_2IS6_SH_NS_23Exact_intersections_tagEEEEEEENS_7Point_2IS6_EEE4NodeEE13Node_disposerclEPNSY_4NodeE.exit.i.i ], [ %i.g, %_ZN5boost9intrusive9list_implINS0_8mhtraitsIN4CGAL8SkiplistINS3_31Polyline_constraint_hierarchy_2INS3_8internal11CC_iteratorINS3_17Compact_containerINS3_27Triangulation_vertex_base_2INS3_5EpeckENS3_30Triangulation_ds_vertex_base_2INS3_30Triangulation_data_structure_2INS9_ISA_NSB_IvEEEENS3_37Constrained_triangulation_face_base_2ISA_NS3_25Triangulation_face_base_2ISA_NS3_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS3_7DefaultESO_SO_EELb0EEENS3_26Pct2_vertex_handle_less_xyINS3_32Constrained_triangulation_plus_2INS3_36Constrained_Delaunay_triangulation_2ISA_SL_NS3_23Exact_intersections_tagEEEEEEENS3_7Point_2ISA_EEE4NodeEE4NodeENS0_16list_member_hookIJEEEXadL_ZNS13_9skip_hookEEEEEmLb1EvE5clearEv.exit.i ] ; 4 uses
  %i.h = load ptr, ptr %.sroa.06.013.i.i, align 8, !tbaa !786 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.013.i.i, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds i8, ptr %.sroa.06.013.i.i, i64 -40
  %i.j = getelementptr inbounds i8, ptr %.sroa.06.013.i.i, i64 -32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !181  ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK4CGAL8SkiplistINS_31Polyline_constraint_hierarchy_2INS_8internal11CC_iteratorINS_17Compact_containerINS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2INS_30Triangulation_data_structure_2INS5_IS6_NS7_IvEEEENS_37Constrained_triangulation_face_base_2IS6_NS_25Triangulation_face_base_2IS6_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS_7DefaultESK_SK_EELb0EEENS_26Pct2_vertex_handle_less_xyINS_32Constrained_triangulation_plus_2INS_36Constrained_Delaunay_triangulation_2IS6_SH_NS_23Exact_intersections_tagEEEEEEENS_7Point_2IS6_EEE4NodeEE13Node_disposerclEPNSY_4NodeE.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !199
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.n = load atomic i32, ptr %i.m monotonic, align 4 ; 2 uses
  %i.o = icmp eq i32 %i.n, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(12) %i.k) #21, !inline_history !2164
  br label %_ZNK4CGAL8SkiplistINS_31Polyline_constraint_hierarchy_2INS_8internal11CC_iteratorINS_17Compact_containerINS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2INS_30Triangulation_data_structure_2INS5_IS6_NS7_IvEEEENS_37Constrained_triangulation_face_base_2IS6_NS_25Triangulation_face_base_2IS6_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS_7DefaultESK_SK_EELb0EEENS_26Pct2_vertex_handle_less_xyINS_32Constrained_triangulation_plus_2INS_36Constrained_Delaunay_triangulation_2IS6_SH_NS_23Exact_intersections_tagEEEEEEENS_7Point_2IS6_EEE4NodeEE13Node_disposerclEPNSY_4NodeE.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.s = add nsw i32 %i.n, -1
  store atomic i32 %i.s, ptr %i.m monotonic, align 4
  br label %_ZNK4CGAL8SkiplistINS_31Polyline_constraint_hierarchy_2INS_8internal11CC_iteratorINS_17Compact_containerINS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2INS_30Triangulation_data_structure_2INS5_IS6_NS7_IvEEEENS_37Constrained_triangulation_face_base_2IS6_NS_25Triangulation_face_base_2IS6_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS_7DefaultESK_SK_EELb0EEENS_26Pct2_vertex_handle_less_xyINS_32Constrained_triangulation_plus_2INS_36Constrained_Delaunay_triangulation_2IS6_SH_NS_23Exact_intersections_tagEEEEEEENS_7Point_2IS6_EEE4NodeEE13Node_disposerclEPNSY_4NodeE.exit.i.i

bb.f:                                             ; preds = %bb.b
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = atomicrmw sub ptr %i.m, i32 1 release, align 4
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %bb.h, label %_ZNK4CGAL8SkiplistINS_31Polyline_constraint_hierarchy_2INS_8internal11CC_iteratorINS_17Compact_containerINS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2INS_30Triangulation_data_structure_2INS5_IS6_NS7_IvEEEENS_37Constrained_triangulation_face_base_2IS6_NS_25Triangulation_face_base_2IS6_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS_7DefaultESK_SK_EELb0EEENS_26Pct2_vertex_handle_less_xyINS_32Constrained_triangulation_plus_2INS_36Constrained_Delaunay_triangulation_2IS6_SH_NS_23Exact_intersections_tagEEEEEEENS_7Point_2IS6_EEE4NodeEE13Node_disposerclEPNSY_4NodeE.exit.i.i

bb.h:                                             ; preds = %bb.g, %bb.f
  fence acquire
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !181  ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZNK4CGAL8SkiplistINS_31Polyline_constraint_hierarchy_2INS_8internal11CC_iteratorINS_17Compact_containerINS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2INS_30Triangulation_data_structure_2INS5_IS6_NS7_IvEEEENS_37Constrained_triangulation_face_base_2IS6_NS_25Triangulation_face_base_2IS6_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS_7DefaultESK_SK_EELb0EEENS_26Pct2_vertex_handle_less_xyINS_32Constrained_triangulation_plus_2INS_36Constrained_Delaunay_triangulation_2IS6_SH_NS_23Exact_intersections_tagEEEEEEENS_7Point_2IS6_EEE4NodeEE13Node_disposerclEPNSY_4NodeE.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !41
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(12) %i.v) #21, !inline_history !2164
  br label %_ZNK4CGAL8SkiplistINS_31Polyline_constraint_hierarchy_2INS_8internal11CC_iteratorINS_17Compact_containerINS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2INS_30Triangulation_data_structure_2INS5_IS6_NS7_IvEEEENS_37Constrained_triangulation_face_base_2IS6_NS_25Triangulation_face_base_2IS6_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS_7DefaultESK_SK_EELb0EEENS_26Pct2_vertex_handle_less_xyINS_32Constrained_triangulation_plus_2INS_36Constrained_Delaunay_triangulation_2IS6_SH_NS_23Exact_intersections_tagEEEEEEENS_7Point_2IS6_EEE4NodeEE13Node_disposerclEPNSY_4NodeE.exit.i.i

_ZNK4CGAL8SkiplistINS_31Polyline_constraint_hierarchy_2INS_8internal11CC_iteratorINS_17Compact_containerINS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2INS_30Triangulation_data_structure_2INS5_IS6_NS7_IvEEEENS_37Constrained_triangulation_face_base_2IS6_NS_25Triangulation_face_base_2IS6_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS_7DefaultESK_SK_EELb0EEENS_26Pct2_vertex_handle_less_xyINS_32Constrained_triangulation_plus_2INS_36Constrained_Delaunay_triangulation_2IS6_SH_NS_23Exact_intersections_tagEEEEEEENS_7Point_2IS6_EEE4NodeEE13Node_disposerclEPNSY_4NodeE.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %.lr.ph.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 56) #36
  %.not.i.i = icmp eq ptr %i.h, %i.f
  br i1 %.not.i.i, label %_ZN4CGAL8SkiplistINS_31Polyline_constraint_hierarchy_2INS_8internal11CC_iteratorINS_17Compact_containerINS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2INS_30Triangulation_data_structure_2INS5_IS6_NS7_IvEEEENS_37Constrained_triangulation_face_base_2IS6_NS_25Triangulation_face_base_2IS6_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS_7DefaultESK_SK_EELb0EEENS_26Pct2_vertex_handle_less_xyINS_32Constrained_triangulation_plus_2INS_36Constrained_Delaunay_triangulation_2IS6_SH_NS_23Exact_intersections_tagEEEEEEENS_7Point_2IS6_EEE4NodeEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !2165

_ZN4CGAL8SkiplistINS_31Polyline_constraint_hierarchy_2INS_8internal11CC_iteratorINS_17Compact_containerINS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2INS_30Triangulation_data_structure_2INS5_IS6_NS7_IvEEEENS_37Constrained_triangulation_face_base_2IS6_NS_25Triangulation_face_base_2IS6_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS_7DefaultESK_SK_EELb0EEENS_26Pct2_vertex_handle_less_xyINS_32Constrained_triangulation_plus_2INS_36Constrained_Delaunay_triangulation_2IS6_SH_NS_23Exact_intersections_tagEEEEEEENS_7Point_2IS6_EEE4NodeEE5clearEv.exit: ; preds = %_ZNK4CGAL8SkiplistINS_31Polyline_constraint_hierarchy_2INS_8internal11CC_iteratorINS_17Compact_containerINS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2INS_30Triangulation_data_structure_2INS5_IS6_NS7_IvEEEENS_37Constrained_triangulation_face_base_2IS6_NS_25Triangulation_face_base_2IS6_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS_7DefaultESK_SK_EELb0EEENS_26Pct2_vertex_handle_less_xyINS_32Constrained_triangulation_plus_2INS_36Constrained_Delaunay_triangulation_2IS6_SH_NS_23Exact_intersections_tagEEEEEEENS_7Point_2IS6_EEE4NodeEE13Node_disposerclEPNSY_4NodeE.exit.i.i
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !786, !noalias !2174 ; 2 uses
  store ptr %i.f, ptr %i.f, align 8, !tbaa !786
  %.not11.i.i.i1 = icmp eq ptr %.pre, %i.b
  br i1 %.not11.i.i.i1, label %_ZN5boost9intrusive9list_implINS0_8mhtraitsIN4CGAL8SkiplistINS3_31Polyline_constraint_hierarchy_2INS3_8internal11CC_iteratorINS3_17Compact_containerINS3_27Triangulation_vertex_base_2INS3_5EpeckENS3_30Triangulation_ds_vertex_base_2INS3_30Triangulation_data_structure_2INS9_ISA_NSB_IvEEEENS3_37Constrained_triangulation_face_base_2ISA_NS3_25Triangulation_face_base_2ISA_NS3_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS3_7DefaultESO_SO_EELb0EEENS3_26Pct2_vertex_handle_less_xyINS3_32Constrained_triangulation_plus_2INS3_36Constrained_Delaunay_triangulation_2ISA_SL_NS3_23Exact_intersections_tagEEEEEEENS3_7Point_2ISA_EEE4NodeEE4NodeENS0_16list_member_hookIJEEEXadL_ZNS13_9skip_hookEEEEEmLb1EvED2Ev.exit.thread, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZN4CGAL8SkiplistINS_31Polyline_constraint_hierarchy_2INS_8internal11CC_iteratorINS_17Compact_containerINS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2INS_30Triangulation_data_structure_2INS5_IS6_NS7_IvEEEENS_37Constrained_triangulation_face_base_2IS6_NS_25Triangulation_face_base_2IS6_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS_7DefaultESK_SK_EELb0EEENS_26Pct2_vertex_handle_less_xyINS_32Constrained_triangulation_plus_2INS_36Constrained_Delaunay_triangulation_2IS6_SH_NS_23Exact_intersections_tagEEEEEEENS_7Point_2IS6_EEE4NodeEE5clearEv.exit, %.lr.ph.i.i.i2
  %.sroa.05.012.i.i.i3 = phi ptr [ %i.aa, %.lr.ph.i.i.i2 ], [ %.pre, %_ZN4CGAL8SkiplistINS_31Polyline_constraint_hierarchy_2INS_8internal11CC_iteratorINS_17Compact_containerINS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2INS_30Triangulation_data_structure_2INS5_IS6_NS7_IvEEEENS_37Constrained_triangulation_face_base_2IS6_NS_25Triangulation_face_base_2IS6_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS_7DefaultESK_SK_EELb0EEENS_26Pct2_vertex_handle_less_xyINS_32Constrained_triangulation_plus_2INS_36Constrained_Delaunay_triangulation_2IS6_SH_NS_23Exact_intersections_tagEEEEEEENS_7Point_2IS6_EEE4NodeEE5clearEv.exit ] ; 2 uses
  %i.aa = load ptr, ptr %.sroa.05.012.i.i.i3, align 8, !tbaa !786 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.012.i.i.i3, i8 0, i64 16, i1 false)
  %.not.i.i.i4 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i4, label %_ZN5boost9intrusive9list_implINS0_8mhtraitsIN4CGAL8SkiplistINS3_31Polyline_constraint_hierarchy_2INS3_8internal11CC_iteratorINS3_17Compact_containerINS3_27Triangulation_vertex_base_2INS3_5EpeckENS3_30Triangulation_ds_vertex_base_2INS3_30Triangulation_data_structure_2INS9_ISA_NSB_IvEEEENS3_37Constrained_triangulation_face_base_2ISA_NS3_25Triangulation_face_base_2ISA_NS3_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS3_7DefaultESO_SO_EELb0EEENS3_26Pct2_vertex_handle_less_xyINS3_32Constrained_triangulation_plus_2INS3_36Constrained_Delaunay_triangulation_2ISA_SL_NS3_23Exact_intersections_tagEEEEEEENS3_7Point_2ISA_EEE4NodeEE4NodeENS0_16list_member_hookIJEEEXadL_ZNS13_9skip_hookEEEEEmLb1EvED2Ev.exit, label %.lr.ph.i.i.i2, !llvm.loop !2160

_ZN5boost9intrusive9list_implINS0_8mhtraitsIN4CGAL8SkiplistINS3_31Polyline_constraint_hierarchy_2INS3_8internal11CC_iteratorINS3_17Compact_containerINS3_27Triangulation_vertex_base_2INS3_5EpeckENS3_30Triangulation_ds_vertex_base_2INS3_30Triangulation_data_structure_2INS9_ISA_NSB_IvEEEENS3_37Constrained_triangulation_face_base_2ISA_NS3_25Triangulation_face_base_2ISA_NS3_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS3_7DefaultESO_SO_EELb0EEENS3_26Pct2_vertex_handle_less_xyINS3_32Constrained_triangulation_plus_2INS3_36Constrained_Delaunay_triangulation_2ISA_SL_NS3_23Exact_intersections_tagEEEEEEENS3_7Point_2ISA_EEE4NodeEE4NodeENS0_16list_member_hookIJEEEXadL_ZNS13_9skip_hookEEEEEmLb1EvED2Ev.exit.thread: ; preds = %_ZN5boost9intrusive9list_implINS0_8mhtraitsIN4CGAL8SkiplistINS3_31Polyline_constraint_hierarchy_2INS3_8internal11CC_iteratorINS3_17Compact_containerINS3_27Triangulation_vertex_base_2INS3_5EpeckENS3_30Triangulation_ds_vertex_base_2INS3_30Triangulation_data_structure_2INS9_ISA_NSB_IvEEEENS3_37Constrained_triangulation_face_base_2ISA_NS3_25Triangulation_face_base_2ISA_NS3_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS3_7DefaultESO_SO_EELb0EEENS3_26Pct2_vertex_handle_less_xyINS3_32Constrained_triangulation_plus_2INS3_36Constrained_Delaunay_triangulation_2ISA_SL_NS3_23Exact_intersections_tagEEEEEEENS3_7Point_2ISA_EEE4NodeEE4NodeENS0_16list_member_hookIJEEEXadL_ZNS13_9skip_hookEEEEEmLb1EvE5clearEv.exit.i, %_ZN4CGAL8SkiplistINS_31Polyline_constraint_hierarchy_2INS_8internal11CC_iteratorINS_17Compact_containerINS_27Triangulation_vertex_base_2INS_5EpeckENS_30Triangulation_ds_vertex_base_2INS_30Triangulation_data_structure_2INS5_IS6_NS7_IvEEEENS_37Constrained_triangulation_face_base_2IS6_NS_25Triangulation_face_base_2IS6_NS_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS_7DefaultESK_SK_EELb0EEENS_26Pct2_vertex_handle_less_xyINS_32Constrained_triangulation_plus_2INS_36Constrained_Delaunay_triangulation_2IS6_SH_NS_23Exact_intersections_tagEEEEEEENS_7Point_2IS6_EEE4NodeEE5clearEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br label %_ZN5boost9intrusive9list_implINS0_8mhtraitsIN4CGAL8SkiplistINS3_31Polyline_constraint_hierarchy_2INS3_8internal11CC_iteratorINS3_17Compact_containerINS3_27Triangulation_vertex_base_2INS3_5EpeckENS3_30Triangulation_ds_vertex_base_2INS3_30Triangulation_data_structure_2INS9_ISA_NSB_IvEEEENS3_37Constrained_triangulation_face_base_2ISA_NS3_25Triangulation_face_base_2ISA_NS3_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS3_7DefaultESO_SO_EELb0EEENS3_26Pct2_vertex_handle_less_xyINS3_32Constrained_triangulation_plus_2INS3_36Constrained_Delaunay_triangulation_2ISA_SL_NS3_23Exact_intersections_tagEEEEEEENS3_7Point_2ISA_EEE4NodeEE4NodeENS0_16list_member_hookIJEEEXadL_ZNS13_8all_hookEEEEEmLb1EvED2Ev.exit

_ZN5boost9intrusive9list_implINS0_8mhtraitsIN4CGAL8SkiplistINS3_31Polyline_constraint_hierarchy_2INS3_8internal11CC_iteratorINS3_17Compact_containerINS3_27Triangulation_vertex_base_2INS3_5EpeckENS3_30Triangulation_ds_vertex_base_2INS3_30Triangulation_data_structure_2INS9_ISA_NSB_IvEEEENS3_37Constrained_triangulation_face_base_2ISA_NS3_25Triangulation_face_base_2ISA_NS3_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS3_7DefaultESO_SO_EELb0EEENS3_26Pct2_vertex_handle_less_xyINS3_32Constrained_triangulation_plus_2INS3_36Constrained_Delaunay_triangulation_2ISA_SL_NS3_23Exact_intersections_tagEEEEEEENS3_7Point_2ISA_EEE4NodeEE4NodeENS0_16list_member_hookIJEEEXadL_ZNS13_9skip_hookEEEEEmLb1EvED2Ev.exit: ; preds = %.lr.ph.i.i.i2
  %.pre8 = load ptr, ptr %i.f, align 8, !tbaa !786, !noalias !2177 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not12.i.i.i = icmp eq ptr %.pre8, %i.f
  br i1 %.not12.i.i.i, label %_ZN5boost9intrusive9list_implINS0_8mhtraitsIN4CGAL8SkiplistINS3_31Polyline_constraint_hierarchy_2INS3_8internal11CC_iteratorINS3_17Compact_containerINS3_27Triangulation_vertex_base_2INS3_5EpeckENS3_30Triangulation_ds_vertex_base_2INS3_30Triangulation_data_structure_2INS9_ISA_NSB_IvEEEENS3_37Constrained_triangulation_face_base_2ISA_NS3_25Triangulation_face_base_2ISA_NS3_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS3_7DefaultESO_SO_EELb0EEENS3_26Pct2_vertex_handle_less_xyINS3_32Constrained_triangulation_plus_2INS3_36Constrained_Delaunay_triangulation_2ISA_SL_NS3_23Exact_intersections_tagEEEEEEENS3_7Point_2ISA_EEE4NodeEE4NodeENS0_16list_member_hookIJEEEXadL_ZNS13_8all_hookEEEEEmLb1EvED2Ev.exit, label %.lr.ph.i.i.i6

.lr.ph.i.i.i6:                                    ; preds = %_ZN5boost9intrusive9list_implINS0_8mhtraitsIN4CGAL8SkiplistINS3_31Polyline_constraint_hierarchy_2INS3_8internal11CC_iteratorINS3_17Compact_containerINS3_27Triangulation_vertex_base_2INS3_5EpeckENS3_30Triangulation_ds_vertex_base_2INS3_30Triangulation_data_structure_2INS9_ISA_NSB_IvEEEENS3_37Constrained_triangulation_face_base_2ISA_NS3_25Triangulation_face_base_2ISA_NS3_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS3_7DefaultESO_SO_EELb0EEENS3_26Pct2_vertex_handle_less_xyINS3_32Constrained_triangulation_plus_2INS3_36Constrained_Delaunay_triangulation_2ISA_SL_NS3_23Exact_intersections_tagEEEEEEENS3_7Point_2ISA_EEE4NodeEE4NodeENS0_16list_member_hookIJEEEXadL_ZNS13_9skip_hookEEEEEmLb1EvED2Ev.exit, %.lr.ph.i.i.i6
  %.sroa.06.013.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i6 ], [ %.pre8, %_ZN5boost9intrusive9list_implINS0_8mhtraitsIN4CGAL8SkiplistINS3_31Polyline_constraint_hierarchy_2INS3_8internal11CC_iteratorINS3_17Compact_containerINS3_27Triangulation_vertex_base_2INS3_5EpeckENS3_30Triangulation_ds_vertex_base_2INS3_30Triangulation_data_structure_2INS9_ISA_NSB_IvEEEENS3_37Constrained_triangulation_face_base_2ISA_NS3_25Triangulation_face_base_2ISA_NS3_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS3_7DefaultESO_SO_EELb0EEENS3_26Pct2_vertex_handle_less_xyINS3_32Constrained_triangulation_plus_2INS3_36Constrained_Delaunay_triangulation_2ISA_SL_NS3_23Exact_intersections_tagEEEEEEENS3_7Point_2ISA_EEE4NodeEE4NodeENS0_16list_member_hookIJEEEXadL_ZNS13_9skip_hookEEEEEmLb1EvED2Ev.exit ] ; 2 uses
  %i.ab = load ptr, ptr %.sroa.06.013.i.i.i, align 8, !tbaa !786 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.013.i.i.i, i8 0, i64 16, i1 false)
  %.not.i.i.i7 = icmp eq ptr %i.ab, %i.f
  br i1 %.not.i.i.i7, label %_ZN5boost9intrusive9list_implINS0_8mhtraitsIN4CGAL8SkiplistINS3_31Polyline_constraint_hierarchy_2INS3_8internal11CC_iteratorINS3_17Compact_containerINS3_27Triangulation_vertex_base_2INS3_5EpeckENS3_30Triangulation_ds_vertex_base_2INS3_30Triangulation_data_structure_2INS9_ISA_NSB_IvEEEENS3_37Constrained_triangulation_face_base_2ISA_NS3_25Triangulation_face_base_2ISA_NS3_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS3_7DefaultESO_SO_EELb0EEENS3_26Pct2_vertex_handle_less_xyINS3_32Constrained_triangulation_plus_2INS3_36Constrained_Delaunay_triangulation_2ISA_SL_NS3_23Exact_intersections_tagEEEEEEENS3_7Point_2ISA_EEE4NodeEE4NodeENS0_16list_member_hookIJEEEXadL_ZNS13_8all_hookEEEEEmLb1EvED2Ev.exit, label %.lr.ph.i.i.i6, !llvm.loop !2180

_ZN5boost9intrusive9list_implINS0_8mhtraitsIN4CGAL8SkiplistINS3_31Polyline_constraint_hierarchy_2INS3_8internal11CC_iteratorINS3_17Compact_containerINS3_27Triangulation_vertex_base_2INS3_5EpeckENS3_30Triangulation_ds_vertex_base_2INS3_30Triangulation_data_structure_2INS9_ISA_NSB_IvEEEENS3_37Constrained_triangulation_face_base_2ISA_NS3_25Triangulation_face_base_2ISA_NS3_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS3_7DefaultESO_SO_EELb0EEENS3_26Pct2_vertex_handle_less_xyINS3_32Constrained_triangulation_plus_2INS3_36Constrained_Delaunay_triangulation_2ISA_SL_NS3_23Exact_intersections_tagEEEEEEENS3_7Point_2ISA_EEE4NodeEE4NodeENS0_16list_member_hookIJEEEXadL_ZNS13_8all_hookEEEEEmLb1EvED2Ev.exit: ; preds = %.lr.ph.i.i.i6, %_ZN5boost9intrusive9list_implINS0_8mhtraitsIN4CGAL8SkiplistINS3_31Polyline_constraint_hierarchy_2INS3_8internal11CC_iteratorINS3_17Compact_containerINS3_27Triangulation_vertex_base_2INS3_5EpeckENS3_30Triangulation_ds_vertex_base_2INS3_30Triangulation_data_structure_2INS9_ISA_NSB_IvEEEENS3_37Constrained_triangulation_face_base_2ISA_NS3_25Triangulation_face_base_2ISA_NS3_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS3_7DefaultESO_SO_EELb0EEENS3_26Pct2_vertex_handle_less_xyINS3_32Constrained_triangulation_plus_2INS3_36Constrained_Delaunay_triangulation_2ISA_SL_NS3_23Exact_intersections_tagEEEEEEENS3_7Point_2ISA_EEE4NodeEE4NodeENS0_16list_member_hookIJEEEXadL_ZNS13_9skip_hookEEEEEmLb1EvED2Ev.exit.thread, %_ZN5boost9intrusive9list_implINS0_8mhtraitsIN4CGAL8SkiplistINS3_31Polyline_constraint_hierarchy_2INS3_8internal11CC_iteratorINS3_17Compact_containerINS3_27Triangulation_vertex_base_2INS3_5EpeckENS3_30Triangulation_ds_vertex_base_2INS3_30Triangulation_data_structure_2INS9_ISA_NSB_IvEEEENS3_37Constrained_triangulation_face_base_2ISA_NS3_25Triangulation_face_base_2ISA_NS3_28Triangulation_ds_face_base_2IvEEEEEEEEEEEENS3_7DefaultESO_SO_EELb0EEENS3_26Pct2_vertex_handle_less_xyINS3_32Constrained_triangulation_plus_2INS3_36Constrained_Delaunay_triangulation_2ISA_SL_NS3_23Exact_intersections_tagEEEEEEENS3_7Point_2ISA_EEE4NodeEE4NodeENS0_16list_member_hookIJEEEXadL_ZNS13_9skip_hookEEEEEmLb1EvED2Ev.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors24Construct_lifted_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb1EEclIJNS_7Plane_3IS1_EENS_7Point_2IS1_EEEEEDcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Point_3.101") align 8 %0, ptr noundef nonnull align 1 dereferenceable(10) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #27 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %5 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %6 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %7 = alloca %class.anon.427, align 8            ; 5 uses
  %8 = alloca %class.anon, align 8                ; 4 uses
  %9 = alloca %class.anon.870, align 8            ; 5 uses
  %10 = alloca %class.anon.869, align 8           ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %11 = alloca %"class.CGAL::Point_3.811", align 16 ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.CGAL::Point_3.825", align 16 ; 37 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.g)
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 24576                      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e)
  %i.j = load i32, ptr %i.e, align 4
  %i.k = and i32 %i.j, -24577
  %i.l = or disjoint i32 %i.k, 16384
  store i32 %i.l, ptr %i.f, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.m = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #38
          to label %bb.b unwind label %bb.e       ; 11 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.n = load ptr, ptr %2, align 8, !tbaa !181
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.p = load atomic ptr, ptr %i.o acquire, align 8
  %i.q = load ptr, ptr %3, align 8, !tbaa !181
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  invoke void @_ZNK4CGAL23CartesianKernelFunctors24Construct_lifted_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Plane_3IS5_EERKNS_7Point_2IS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3.811") align 16 %11, ptr noundef nonnull align 1 dereferenceable(5) %1, ptr noundef nonnull align 16 dereferenceable(64) %i.p, ptr noundef nonnull align 16 dereferenceable(32) %i.r)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.t, align 4, !tbaa !1040
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.u, ptr noundef nonnull align 16 dereferenceable(48) %11, i64 48, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store ptr null, ptr %i.v, align 16, !tbaa !2181
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store i32 0, ptr %i.w, align 8, !tbaa !1045
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.x, ptr noundef nonnull align 1 dereferenceable(5) %i.s, i64 5, i1 false), !tbaa.struct !14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_23CartesianKernelFunctors24Construct_lifted_point_3IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_7Plane_3INS_5EpeckEEENS_7Point_2ISV_EEEEE, i64 16), ptr %i.m, align 16, !tbaa !41
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.z = load ptr, ptr %3, align 8, !tbaa !181    ; 2 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !181
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !199
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aa, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.ac = load atomic i32, ptr %i.ab monotonic, align 4
  %i.ad = add nsw i32 %i.ac, 1
  store atomic i32 %i.ad, ptr %i.ab monotonic, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.af = load ptr, ptr %2, align 8, !tbaa !181   ; 2 uses
  store ptr %i.af, ptr %i.ae, align 16, !tbaa !181
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = load atomic i32, ptr %i.ag monotonic, align 4
  %i.ai = add nsw i32 %i.ah, 1
  store atomic i32 %i.ai, ptr %i.ag monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.d:                                             ; preds = %.noexc
  %i.aj = atomicrmw add ptr %i.ab, i32 1 monotonic, align 4 ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.al = load ptr, ptr %2, align 8, !tbaa !181   ; 2 uses
  store ptr %i.al, ptr %i.ak, align 16, !tbaa !181
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = atomicrmw add ptr %i.am, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.c, %bb.d
  store ptr %i.m, ptr %0, align 8, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.ao = load i32, ptr %i.c, align 4
  %i.ap = and i32 %i.ao, -24577
  %i.aq = or disjoint i32 %i.ap, %i.i
  store i32 %i.aq, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ac

bb.e:                                             ; preds = %bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 112) #36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.as, %bb.f ], [ %i.ar, %bb.e ] ; 3 uses
  %.010 = extractvalue { ptr, i32 } %.pn, 1
  %i.at = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #21
  %i.au = icmp eq i32 %.010, %i.at
  br i1 %i.au, label %bb.h, label %bb.z

bb.h:                                             ; preds = %bb.g
  %.011 = extractvalue { ptr, i32 } %.pn, 0
  %i.av = call ptr @__cxa_begin_catch(ptr %.011) #21 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.y

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.aw = load i32, ptr %i.c, align 4
  %i.ax = and i32 %i.aw, -24577
  %i.ay = or disjoint i32 %i.ax, %i.i
  store i32 %i.ay, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.az = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #38 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.bb = load ptr, ptr %2, align 8, !tbaa !181   ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store ptr %i.bb, ptr %10, align 8, !tbaa !2184
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store ptr %10, ptr %9, align 8, !tbaa !392
  %i.bd = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 6 uses
  store ptr %9, ptr %i.bd, align 8, !tbaa !392
  %i.be = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 6 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Plane_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.be, align 8, !tbaa !392
  %i.bf = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.bc, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.l ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.i
  %.not.i.i.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bf) #37
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bd, align 8, !tbaa !392
  store ptr null, ptr %i.be, align 8, !tbaa !392
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %.body

bb.m:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.bd, align 8, !tbaa !392
  store ptr null, ptr %i.be, align 8, !tbaa !392
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  %i.bi = load atomic ptr, ptr %i.bh monotonic, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.bk = load ptr, ptr %3, align 8, !tbaa !181   ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %i.bk, ptr %8, align 8, !tbaa !1170
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store ptr %8, ptr %7, align 8, !tbaa !392
  store ptr %7, ptr %i.bd, align 8, !tbaa !392
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_2INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.be, align 8, !tbaa !392
  %i.bm = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.bl, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i19 unwind label %bb.p ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i19:        ; preds = %bb.m
  %.not.i.i.i.i20 = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i.i.i20, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i19
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bm) #37
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.bn = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bd, align 8, !tbaa !392
  store ptr null, ptr %i.be, align 8, !tbaa !392
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %.body

bb.q:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i19
  store ptr null, ptr %i.bd, align 8, !tbaa !392
  store ptr null, ptr %i.be, align 8, !tbaa !392
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bp = load atomic ptr, ptr %i.bo monotonic, align 8
  invoke void @_ZNK4CGAL23CartesianKernelFunctors24Construct_lifted_point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Plane_3ISG_EERKNS_7Point_2ISG_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3.825") align 16 %12, ptr noundef nonnull align 1 dereferenceable(5) %i.ba, ptr noundef nonnull align 16 dereferenceable(256) %i.bj, ptr noundef nonnull align 16 dereferenceable(128) %i.bp)
          to label %bb.r unwind label %bb.aa

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21, !noalias !2187
  %i.bq = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 16 dereferenceable(192) %12)
          to label %.noexc23 unwind label %bb.ab  ; 2 uses

.noexc23:                                         ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !2187
  %i.br = extractvalue { double, double } %i.bq, 0
  %i.bs = extractvalue { double, double } %i.bq, 1
  %i.bt = fneg double %i.br
  %i.bu = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bv = insertelement <2 x double> %i.bu, double %i.bs, i64 1
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !2187
  %i.bx = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 16 dereferenceable(64) %i.bw)
          to label %.noexc24 unwind label %bb.ab  ; 2 uses

.noexc24:                                         ; preds = %.noexc23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !2187
  %i.by = getelementptr inbounds nuw i8, ptr %12, i64 128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21, !noalias !2187
  %i.bz = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 16 dereferenceable(64) %i.by)
          to label %.noexc25 unwind label %bb.ab  ; 2 uses

.noexc25:                                         ; preds = %.noexc24
  %i.ca = extractvalue { double, double } %i.bx, 0
  %i.cb = fneg double %i.ca
  %i.cc = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.cd = extractvalue { double, double } %i.bx, 1
  %i.ce = insertelement <2 x double> %i.cc, double %i.cd, i64 1
end_hunk_3
