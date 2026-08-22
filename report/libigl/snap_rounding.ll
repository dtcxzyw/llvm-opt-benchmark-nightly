Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/snap_rounding?download=true
inline.NumInlined: 5669
inline.NumDeleted: 2127
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_:bb.a
  store i64 0, ptr %4, align 16, !tbaa !33
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.fa, align 16, !tbaa !333
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i8 0, ptr %i.fb, align 8, !tbaa !341
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 25 ; 4 uses
  store i8 1, ptr %i.fc, align 1, !tbaa !9
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 26 ; 3 uses
  store i8 0, ptr %i.fd, align 2, !tbaa !342
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5boost14multiprecision8backends13eval_multiplyILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_(ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %i.fe)
          to label %bb.ae unwind label %bb.ao

bb.ae:                                            ; preds = %bb.ad
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZN5boost14multiprecision8backends13eval_multiplyILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_(ptr noundef nonnull align 16 dereferenceable(27) %4, ptr noundef nonnull align 16 dereferenceable(27) %1, ptr noundef nonnull align 16 dereferenceable(27) %i.ff)
          to label %bb.af unwind label %bb.ao

bb.af:                                            ; preds = %bb.ae
  %i.fg = load i8, ptr %i.ex, align 8, !tbaa !341, !range !13, !noundef !14 ; 2 uses
  %i.fh = trunc nuw i8 %i.fg to i1                ; 2 uses
  %i.fi = load i8, ptr %i.fb, align 8, !tbaa !341, !range !13, !noundef !14
  %.not.i.i = icmp eq i8 %i.fg, %i.fi
  br i1 %.not.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fj = select i1 %i.fh, i32 -1, i32 1
  br label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit

bb.ah:                                            ; preds = %bb.af
  %i.fk = load i64, ptr %i.ew, align 16, !tbaa !333 ; 4 uses
  %i.fl = load i64, ptr %i.fa, align 16, !tbaa !333 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.fk, %i.fl
  br i1 %.not.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fm = icmp ugt i64 %i.fk, %i.fl
  %i.fn = select i1 %i.fm, i32 1, i32 -1
  br label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE16compare_unsignedILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.fo = load i8, ptr %i.ey, align 1, !tbaa !9, !range !13, !noundef !14
  %i.fp = trunc nuw i8 %i.fo to i1
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = select i1 %i.fp, ptr %3, ptr %i.fr
  %i.ft = load i8, ptr %i.fc, align 1, !tbaa !9, !range !13, !noundef !14
  %i.fu = trunc nuw i8 %i.ft to i1
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = select i1 %i.fu, ptr %4, ptr %i.fw
  %i.fy = icmp slt i64 %i.fk, 1
  br i1 %i.fy, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE16compare_unsignedILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.i.i, label %.lr.ph

bb.ak:                                            ; preds = %.lr.ph
  %i.fz = icmp slt i64 %.015.in.i.i.i76, 2
  br i1 %i.fz, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE16compare_unsignedILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.i.i, label %.lr.ph, !llvm.loop !358

.lr.ph:                                           ; preds = %bb.aj, %bb.ak
  %.015.in.i.i.i76 = phi i64 [ %.015.i.i.i, %bb.ak ], [ %i.fk, %bb.aj ] ; 2 uses
  %.015.i.i.i = add nsw i64 %.015.in.i.i.i76, -1  ; 3 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %.015.i.i.i
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !334 ; 2 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.015.i.i.i
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !334 ; 2 uses
  %.not19.i.i.i = icmp eq i64 %i.gb, %i.gd
  br i1 %.not19.i.i.i, label %bb.ak, label %bb.al, !llvm.loop !358

bb.al:                                            ; preds = %.lr.ph
  %i.ge = icmp ugt i64 %i.gb, %i.gd
  %i.gf = select i1 %i.ge, i32 1, i32 -1
  br label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE16compare_unsignedILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.i.i

_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE16compare_unsignedILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.i.i: ; preds = %bb.ak, %bb.aj, %bb.al, %bb.ai
  %.2.i.i.i = phi i32 [ %i.fn, %bb.ai ], [ %i.gf, %bb.al ], [ 0, %bb.aj ], [ 0, %bb.ak ] ; 2 uses
  %i.gg = sub nsw i32 0, %.2.i.i.i
  %spec.select.i.i57 = select i1 %i.fh, i32 %i.gg, i32 %.2.i.i.i
  br label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit

_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit: ; preds = %bb.ag, %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE16compare_unsignedILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.i.i
  %.05.i.i = phi i32 [ %i.fj, %bb.ag ], [ %spec.select.i.i57, %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE16compare_unsignedILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.i.i ]
  %i.gh = load i8, ptr %i.fc, align 1, !tbaa !9, !range !13, !noundef !14
  %i.gi = trunc nuw i8 %i.gh to i1
  %i.gj = load i8, ptr %i.fd, align 2, !range !13
  %i.gk = trunc nuw i8 %i.gj to i1
  %or.cond.i36 = select i1 %i.gi, i1 true, i1 %i.gk
  br i1 %or.cond.i36, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit37, label %bb.am

bb.am:                                            ; preds = %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit
  %i.gl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = load i64, ptr %4, align 16
  %i.go = shl i64 %i.gn, 3
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.go) #36
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit37

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit37: ; preds = %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.gp = load i8, ptr %i.ey, align 1, !tbaa !9, !range !13, !noundef !14
  %i.gq = trunc nuw i8 %i.gp to i1
  %i.gr = load i8, ptr %i.ez, align 2, !range !13
  %i.gs = trunc nuw i8 %i.gr to i1
  %or.cond.i34 = select i1 %i.gq, i1 true, i1 %i.gs
  br i1 %or.cond.i34, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit35, label %bb.an

bb.an:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit37
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = load i64, ptr %3, align 16
  %i.gw = shl i64 %i.gv, 3
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gw) #36
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit35

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit35: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit37, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.ar

bb.ao:                                            ; preds = %bb.ae, %bb.ad
  %i.gx = landingpad { ptr, i32 }
          cleanup
  %i.gy = load i8, ptr %i.fc, align 1, !tbaa !9, !range !13, !noundef !14
  %i.gz = trunc nuw i8 %i.gy to i1
  %i.ha = load i8, ptr %i.fd, align 2, !range !13
  %i.hb = trunc nuw i8 %i.ha to i1
  %or.cond.i32 = select i1 %i.gz, i1 true, i1 %i.hb
  br i1 %or.cond.i32, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit33, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8
  %i.he = load i64, ptr %4, align 16
  %i.hf = shl i64 %i.he, 3
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hf) #36
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit33

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit33: ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.hg = load i8, ptr %i.ey, align 1, !tbaa !9, !range !13, !noundef !14
  %i.hh = trunc nuw i8 %i.hg to i1
  %i.hi = load i8, ptr %i.ez, align 2, !range !13
  %i.hj = trunc nuw i8 %i.hi to i1
  %or.cond.i = select i1 %i.hh, i1 true, i1 %i.hj
  br i1 %or.cond.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit33
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8
  %i.hm = load i64, ptr %3, align 16
  %i.hn = shl i64 %i.hm, 3
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.hn) #36
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit33, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %common.resume

bb.ar:                                            ; preds = %bb.aa, %bb.ac, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit35, %bb.c, %bb.b
  %.1 = phi i32 [ %i.ah, %bb.b ], [ 0, %bb.c ], [ %i.et, %bb.aa ], [ %i.ev, %bb.ac ], [ %.05.i.i, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit35 ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL20Lazy_construction_ntINS_5EpeckENS_23CartesianKernelFunctors11Compute_x_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclIJNS_7Point_2IS1_EEEEENS_13Lazy_exact_ntINSt9remove_cvINSt16remove_referenceIDTcldtdefpT2ecspclsr4CGALE5exactfp_EEEE4typeEE4typeEEEDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Lazy_exact_nt") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %4 = alloca %class.anon.167, align 8            ; 5 uses
  %5 = alloca %class.anon.166, align 8            ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
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
  %i.m = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #39
          to label %bb.b unwind label %bb.e       ; 7 uses

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !34     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.p, align 4, !tbaa !238
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.q, ptr noundef nonnull align 16 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !424
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.r, align 16, !tbaa !240
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 0, ptr %i.s, align 8, !tbaa !243
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_2INS_5EpeckEEEEEE, i64 16), ptr %i.m, align 16, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.n, ptr %i.t, align 16, !tbaa !34
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load atomic i32, ptr %i.v monotonic, align 8
  %i.x = add nsw i32 %i.w, 1
  store atomic i32 %i.x, ptr %i.v monotonic, align 8
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_2INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.y = atomicrmw add ptr %i.v, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_2INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_2INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit: ; preds = %bb.d, %bb.c
  store ptr %i.m, ptr %0, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.z = load i32, ptr %i.c, align 4
  %i.aa = and i32 %i.z, -24577
  %i.ab = or disjoint i32 %i.aa, %i.i
  store i32 %i.ab, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.q

bb.e:                                             ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE ; 3 uses
  %.07 = extractvalue { ptr, i32 } %i.ac, 1
  %i.ad = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #23
  %i.ae = icmp eq i32 %.07, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %.08 = extractvalue { ptr, i32 } %i.ac, 0
  %i.af = call ptr @__cxa_begin_catch(ptr %.08) #23 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.ag = load i32, ptr %i.c, align 4
  %i.ah = and i32 %i.ag, -24577
  %i.ai = or disjoint i32 %i.ah, %i.i
  store i32 %i.ai, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aj = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #39 ; 8 uses
  %i.ak = load ptr, ptr %2, align 8, !tbaa !34    ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %i.ak, ptr %5, align 8, !tbaa !520
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %5, ptr %4, align 8, !tbaa !305
  %i.am = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %4, ptr %i.am, align 8, !tbaa !305
  %i.an = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_2INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.an, align 8, !tbaa !305
  %i.ao = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ao) #38
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.am, align 8, !tbaa !305
  store ptr null, ptr %i.an, align 8, !tbaa !305
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.am, align 8, !tbaa !305
  store ptr null, ptr %i.an, align 8, !tbaa !305
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.ar = load atomic ptr, ptr %i.aq monotonic, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.as = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(64) %i.ar)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %bb.k
  %i.at = extractvalue { double, double } %i.as, 0
  %i.au = extractvalue { double, double } %i.as, 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 1, ptr %i.av, align 4, !tbaa !238
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %i.aj, align 16, !tbaa !37
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ax = fneg double %i.at
  %i.ay = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %i.au, i64 1
  store <2 x double> %i.az, ptr %i.aw, align 16, !tbaa !33
  %i.ba = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #39
          to label %.noexc13 unwind label %bb.p   ; 3 uses

.noexc13:                                         ; preds = %.noexc
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.ba, ptr noundef nonnull align 16 dereferenceable(64) %i.ar)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %.noexc13
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 64) #36
  br label %.body

bb.m:                                             ; preds = %.noexc13
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.ba, ptr %i.bc, align 16, !tbaa !240
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store i32 0, ptr %i.bd, align 8, !tbaa !243
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_0INS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEEE, i64 16), ptr %i.aj, align 16, !tbaa !37
  store ptr %i.aj, ptr %0, align 8, !tbaa !34
  br label %bb.q

bb.n:                                             ; preds = %bb.f
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.e
  %.merged12 = phi { ptr, i32 } [ %i.be, %bb.n ], [ %i.ac, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.bf = load i32, ptr %i.a, align 4
  %i.bg = and i32 %i.bf, -24577
  %i.bh = or disjoint i32 %i.bg, %i.i
  store i32 %i.bh, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.r

bb.p:                                             ; preds = %.noexc, %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.l, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.j ], [ %i.bi, %bb.p ], [ %i.bb, %bb.l ]
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 48) #36
  br label %bb.r

bb.q:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_2INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit, %bb.m
  ret void

bb.r:                                             ; preds = %.body, %bb.o
  %.merged = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.merged12, %bb.o ]
  resume { ptr, i32 } %.merged
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #30

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_2INS_5EpeckEEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(56) dereferenceable(64) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !34  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL7Point_2INS0_5EpeckEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #23, !inline_history !523
  br label %_ZNSt10_Head_baseILm0EN4CGAL7Point_2INS0_5EpeckEEELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.e, -1
  store atomic i32 %i.j, ptr %i.d monotonic, align 4
  br label %_ZNSt10_Head_baseILm0EN4CGAL7Point_2INS0_5EpeckEEELb0EED2Ev.exit

bb.f:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.h, label %bb.g

end_hunk_0
begin_hunk_1_@_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_2INS_5EpeckEEEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE:bb.a
  br i1 %.not.i.i.i.i.i, label %_ZN4CGAL17lazy_reset_memberIJNS_7Point_2INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i = icmp eq i8 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load atomic i32, ptr %i.u monotonic, align 4 ; 2 uses
  %i.w = icmp eq i32 %i.v, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(12) %i.s) #23, !inline_history !525
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.aa = add nsw i32 %i.v, -1
  store atomic i32 %i.aa, ptr %i.u monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.f
  br i1 %i.w, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = atomicrmw sub ptr %i.u, i32 1 release, align 4
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.l, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.k, %bb.j
  fence acquire
  %i.ad = load ptr, ptr %i.b, align 16, !tbaa !34 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !37
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(12) %i.ad) #23, !inline_history !525
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i:          ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.h
  store ptr null, ptr %i.b, align 16, !tbaa !34
  br label %_ZN4CGAL17lazy_reset_memberIJNS_7Point_2INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit

_ZN4CGAL17lazy_reset_memberIJNS_7Point_2INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit, %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i
  ret void

bb.n:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.n ], [ %i.h, %bb.d ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #36
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_2INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv() #10 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !305
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !526, !nonnull !14, !align !475
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !520  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 16 dereferenceable(60) %i.d), !inline_history !528
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_0INS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEED0Ev(ptr noundef nonnull align 16 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %0, align 16, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load atomic ptr, ptr %i.a monotonic, align 16 ; 10 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  fence acquire
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  %i.d = load i8, ptr %i.c, align 1, !tbaa !9, !range !13, !noundef !14
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.g = load i8, ptr %i.f, align 2, !range !13
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond.i1.i.i.i = select i1 %i.e, i1 true, i1 %i.h
  br i1 %or.cond.i1.i.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load i64, ptr %i.i, align 16
  %i.m = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.m) #36, !inline_history !488
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i: ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  %i.o = load i8, ptr %i.n, align 1, !tbaa !9, !range !13, !noundef !14
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.r = load i8, ptr %i.q, align 2, !range !13
  %i.s = trunc nuw i8 %i.r to i1
  %or.cond.i.i.i.i = select i1 %i.p, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i.i, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load i64, ptr %i.b, align 16
  %i.w = shl i64 %i.v, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.w) #36, !inline_history !488
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i: ; preds = %bb.d, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 64) #36, !inline_history !488
  br label %_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev.exit

_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev.exit: ; preds = %bb.a, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_0INS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE12update_exactEv(ptr noundef nonnull align 16 dereferenceable(48) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load atomic ptr, ptr %i.a monotonic, align 16
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #39 ; 3 uses
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(64) %i.d)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2Ev.exit unwind label %bb.d

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2Ev.exit: ; preds = %bb.b
  store atomic ptr %i.d, ptr %i.a release, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2Ev.exit
  ret void

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 64) #36
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL20Lazy_construction_ntINS_5EpeckENS_23CartesianKernelFunctors11Compute_y_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclIJNS_7Point_2IS1_EEEEENS_13Lazy_exact_ntINSt9remove_cvINSt16remove_referenceIDTcldtdefpT2ecspclsr4CGALE5exactfp_EEEE4typeEE4typeEEEDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Lazy_exact_nt") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %4 = alloca %class.anon.167, align 8            ; 5 uses
  %5 = alloca %class.anon.166, align 8            ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
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
  %i.m = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #39
          to label %bb.b unwind label %bb.e       ; 7 uses

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !34     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.p, align 4, !tbaa !238
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.q, ptr noundef nonnull align 16 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !424
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.r, align 16, !tbaa !240
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 0, ptr %i.s, align 8, !tbaa !243
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_2INS_5EpeckEEEEEE, i64 16), ptr %i.m, align 16, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.n, ptr %i.t, align 16, !tbaa !34
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load atomic i32, ptr %i.v monotonic, align 8
  %i.x = add nsw i32 %i.w, 1
  store atomic i32 %i.x, ptr %i.v monotonic, align 8
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_2INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.y = atomicrmw add ptr %i.v, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_2INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_2INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit: ; preds = %bb.d, %bb.c
  store ptr %i.m, ptr %0, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.z = load i32, ptr %i.c, align 4
  %i.aa = and i32 %i.z, -24577
  %i.ab = or disjoint i32 %i.aa, %i.i
  store i32 %i.ab, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.q

bb.e:                                             ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE ; 3 uses
  %.07 = extractvalue { ptr, i32 } %i.ac, 1
  %i.ad = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #23
  %i.ae = icmp eq i32 %.07, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %.08 = extractvalue { ptr, i32 } %i.ac, 0
  %i.af = call ptr @__cxa_begin_catch(ptr %.08) #23 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.ag = load i32, ptr %i.c, align 4
  %i.ah = and i32 %i.ag, -24577
  %i.ai = or disjoint i32 %i.ah, %i.i
  store i32 %i.ai, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aj = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #39 ; 8 uses
  %i.ak = load ptr, ptr %2, align 8, !tbaa !34    ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %i.ak, ptr %5, align 8, !tbaa !520
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %5, ptr %4, align 8, !tbaa !305
  %i.am = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %4, ptr %i.am, align 8, !tbaa !305
  %i.an = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_2INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.an, align 8, !tbaa !305
  %i.ao = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ao) #38
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.am, align 8, !tbaa !305
  store ptr null, ptr %i.an, align 8, !tbaa !305
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.am, align 8, !tbaa !305
  store ptr null, ptr %i.an, align 8, !tbaa !305
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.ar = load atomic ptr, ptr %i.aq monotonic, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.at = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(64) %i.as)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %bb.k
  %i.au = extractvalue { double, double } %i.at, 0
  %i.av = extractvalue { double, double } %i.at, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 1, ptr %i.aw, align 4, !tbaa !238
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %i.aj, align 16, !tbaa !37
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ay = fneg double %i.au
  %i.az = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %i.av, i64 1
  store <2 x double> %i.ba, ptr %i.ax, align 16, !tbaa !33
  %i.bb = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #39
          to label %.noexc13 unwind label %bb.p   ; 3 uses

.noexc13:                                         ; preds = %.noexc
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.bb, ptr noundef nonnull align 16 dereferenceable(64) %i.as)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %.noexc13
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 64) #36
  br label %.body

bb.m:                                             ; preds = %.noexc13
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.bb, ptr %i.bd, align 16, !tbaa !240
  %i.be = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store i32 0, ptr %i.be, align 8, !tbaa !243
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_0INS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEEE, i64 16), ptr %i.aj, align 16, !tbaa !37
  store ptr %i.aj, ptr %0, align 8, !tbaa !34
  br label %bb.q

bb.n:                                             ; preds = %bb.f
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.e
  %.merged12 = phi { ptr, i32 } [ %i.bf, %bb.n ], [ %i.ac, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.bg = load i32, ptr %i.a, align 4
  %i.bh = and i32 %i.bg, -24577
  %i.bi = or disjoint i32 %i.bh, %i.i
  store i32 %i.bi, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.r

bb.p:                                             ; preds = %.noexc, %bb.k
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.l, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.j ], [ %i.bj, %bb.p ], [ %i.bc, %bb.l ]
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 48) #36
  br label %bb.r

bb.q:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_2INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit, %bb.m
  ret void

bb.r:                                             ; preds = %.body, %bb.o
  %.merged = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.merged12, %bb.o ]
  resume { ptr, i32 } %.merged
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_2INS_5EpeckEEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(56) dereferenceable(64) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !34  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL7Point_2INS0_5EpeckEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #23, !inline_history !523
  br label %_ZNSt10_Head_baseILm0EN4CGAL7Point_2INS0_5EpeckEEELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.e, -1
  store atomic i32 %i.j, ptr %i.d monotonic, align 4
  br label %_ZNSt10_Head_baseILm0EN4CGAL7Point_2INS0_5EpeckEEELb0EED2Ev.exit

bb.f:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = atomicrmw sub ptr %i.d, i32 1 release, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.h, label %_ZNSt10_Head_baseILm0EN4CGAL7Point_2INS0_5EpeckEEELb0EED2Ev.exit
end_hunk_1
begin_hunk_2_@_ZNSt5arrayIN4CGAL7Point_2INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEELm2EEC2EOSI_:bb.a
  store i64 0, ptr %i.dj, align 16, !tbaa !333
  store i8 1, ptr %i.dp, align 1, !tbaa !9
  br label %_ZN4CGAL7Point_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2EOSG_.exit.1

bb.q:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.1.i.i.i.i.i.1
  %i.dv = shl i64 %i.dk, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(27) %i.dg, ptr nonnull align 16 dereferenceable(27) %i.dh, i64 %i.dv, i1 false)
  br label %_ZN4CGAL7Point_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2EOSG_.exit.1

_ZN4CGAL7Point_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2EOSG_.exit.1: ; preds = %bb.q, %bb.p
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIvEERN4CGAL8internal18Converting_visitorINS4_19Cartesian_converterINS4_16Simple_cartesianIN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEENS8_INS4_11Interval_ntILb0EEEEENS4_12NT_converterISL_SO_EEEESt8optionalISt7variantIJNS4_7Point_2ISP_EENS4_9Segment_2ISP_EEEEEEEJRKSU_IJNSV_ISM_EENSX_ISM_EEEEEEDcOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(257) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %3 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %4 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %5 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %6 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %7 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.b = load i8, ptr %i.a, align 16, !tbaa !549
  %i.c = icmp eq i8 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !604
  %i.e = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 16 dereferenceable(257) %1), !noalias !604 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !604
  %i.f = extractvalue { double, double } %i.e, 0
  %i.g = extractvalue { double, double } %i.e, 1
  %i.h = fneg double %i.f
  %i.i = insertelement <2 x double> poison, double %i.h, i64 0
  %i.j = insertelement <2 x double> %i.i, double %i.g, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !604
  %i.k = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 16 dereferenceable(64) %i.d), !noalias !604 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !604
  %i.l = extractvalue { double, double } %i.k, 0
  %i.m = extractvalue { double, double } %i.k, 1
  %i.n = fneg double %i.l
  %i.o = insertelement <2 x double> poison, double %i.n, i64 0
  %i.p = insertelement <2 x double> %i.o, double %i.m, i64 1 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !602  ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 80 ; 2 uses
  %i.t = load i8, ptr %i.s, align 16, !tbaa !530, !range !13, !noundef !14
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 2 uses
  %i.w = load i8, ptr %i.v, align 16, !tbaa !537
  %i.x = icmp eq i8 %i.w, 0
  store <2 x double> %i.j, ptr %i.r, align 16
  %.sroa.6.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x double> %i.p, ptr %.sroa.6.0..sroa_idx6.i.i.i.i, align 16
  br i1 %i.x, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN4CGAL8internal18Converting_visitorINS5_19Cartesian_converterINS5_16Simple_cartesianIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEENS9_INS5_11Interval_ntILb0EEEEENS5_12NT_converterISM_SP_EEEESt8optionalISt7variantIJNS5_7Point_2ISQ_EENS5_9Segment_2ISQ_EEEEEEERKSV_IJNSW_ISN_EENSY_ISN_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S18_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.v, align 16, !tbaa !537
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN4CGAL8internal18Converting_visitorINS5_19Cartesian_converterINS5_16Simple_cartesianIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEENS9_INS5_11Interval_ntILb0EEEEENS5_12NT_converterISM_SP_EEEESt8optionalISt7variantIJNS5_7Point_2ISQ_EENS5_9Segment_2ISQ_EEEEEEERKSV_IJNSW_ISN_EENSY_ISN_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S18_.exit

bb.e:                                             ; preds = %bb.b
  store <2 x double> %i.j, ptr %i.r, align 16
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x double> %i.p, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  store i8 0, ptr %i.y, align 16, !tbaa !537
  store i8 1, ptr %i.s, align 16, !tbaa !530
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN4CGAL8internal18Converting_visitorINS5_19Cartesian_converterINS5_16Simple_cartesianIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEENS9_INS5_11Interval_ntILb0EEEEENS5_12NT_converterISM_SP_EEEESt8optionalISt7variantIJNS5_7Point_2ISQ_EENS5_9Segment_2ISQ_EEEEEEERKSV_IJNSW_ISN_EENSY_ISN_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S18_.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !607
  %i.z = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 16 dereferenceable(257) %1), !noalias !607 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !607
  %i.aa = extractvalue { double, double } %i.z, 0
  %i.ab = extractvalue { double, double } %i.z, 1
  %i.ac = fneg double %i.aa
  %i.ad = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %i.ab, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !607
  %i.af = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 16 dereferenceable(64) %i.d), !noalias !607 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !607
  %i.ag = extractvalue { double, double } %i.af, 0
  %i.ah = extractvalue { double, double } %i.af, 1
  %i.ai = fneg double %i.ag
  %i.aj = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %i.ah, i64 1 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !612
  %i.am = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(128) %i.al), !noalias !612 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !612
  %i.an = extractvalue { double, double } %i.am, 0
  %i.ao = extractvalue { double, double } %i.am, 1
  %i.ap = fneg double %i.an
  %i.aq = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.ar = insertelement <2 x double> %i.aq, double %i.ao, i64 1 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 192
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !612
  %i.at = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(64) %i.as), !noalias !612 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !612
  %i.au = extractvalue { double, double } %i.at, 0
  %i.av = extractvalue { double, double } %i.at, 1
  %i.aw = fneg double %i.au
  %i.ax = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.av, i64 1 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !602 ; 11 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 80 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 16, !tbaa !530, !range !13, !noundef !14
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 64 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 16, !tbaa !537
  %i.bg = icmp eq i8 %i.bf, 1
  store <2 x double> %i.ae, ptr %i.ba, align 16
  %.sroa.6.0..sroa_idx6.i.i.i.i7 = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <2 x double> %i.ak, ptr %.sroa.6.0..sroa_idx6.i.i.i.i7, align 16
  %.sroa.7.0..sroa_idx10.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store <2 x double> %i.ar, ptr %.sroa.7.0..sroa_idx10.i.i.i.i, align 16
  %.sroa.8.0..sroa_idx14.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  store <2 x double> %i.ay, ptr %.sroa.8.0..sroa_idx14.i.i.i.i, align 16
  br i1 %i.bg, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN4CGAL8internal18Converting_visitorINS5_19Cartesian_converterINS5_16Simple_cartesianIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEENS9_INS5_11Interval_ntILb0EEEEENS5_12NT_converterISM_SP_EEEESt8optionalISt7variantIJNS5_7Point_2ISQ_EENS5_9Segment_2ISQ_EEEEEEERKSV_IJNSW_ISN_EENSY_ISN_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S18_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.be, align 16, !tbaa !537
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN4CGAL8internal18Converting_visitorINS5_19Cartesian_converterINS5_16Simple_cartesianIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEENS9_INS5_11Interval_ntILb0EEEEENS5_12NT_converterISM_SP_EEEESt8optionalISt7variantIJNS5_7Point_2ISQ_EENS5_9Segment_2ISQ_EEEEEEERKSV_IJNSW_ISN_EENSY_ISN_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S18_.exit

bb.i:                                             ; preds = %bb.f
  store <2 x double> %i.ae, ptr %i.ba, align 16
  %.sroa.6.0..sroa_idx.i.i.i.i6 = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <2 x double> %i.ak, ptr %.sroa.6.0..sroa_idx.i.i.i.i6, align 16
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store <2 x double> %i.ar, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 16
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  store <2 x double> %i.ay, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  store i8 1, ptr %i.bh, align 16, !tbaa !537
  store i8 1, ptr %i.bb, align 16, !tbaa !530
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN4CGAL8internal18Converting_visitorINS5_19Cartesian_converterINS5_16Simple_cartesianIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEENS9_INS5_11Interval_ntILb0EEEEENS5_12NT_converterISM_SP_EEEESt8optionalISt7variantIJNS5_7Point_2ISQ_EENS5_9Segment_2ISQ_EEEEEEERKSV_IJNSW_ISN_EENSY_ISN_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S18_.exit

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN4CGAL8internal18Converting_visitorINS5_19Cartesian_converterINS5_16Simple_cartesianIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEENS9_INS5_11Interval_ntILb0EEEEENS5_12NT_converterISM_SP_EEEESt8optionalISt7variantIJNS5_7Point_2ISQ_EENS5_9Segment_2ISQ_EEEEEEERKSV_IJNSW_ISN_EENSY_ISN_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S18_.exit: ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #15

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt18bad_variant_accessD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt18bad_variant_access4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL8internal27Fill_lazy_variant_visitor_2ISt8optionalISt7variantIJNS_7Point_2INS_5EpeckEEENS_9Segment_2IS5_EEEEENS_16Simple_cartesianINS_11Interval_ntILb0EEEEES5_NSB_IN5boost14multiprecision6numberINSG_8backends16rational_adaptorINSI_15cpp_int_backendILm0ELm0ELNSG_16cpp_integer_typeE1ELNSG_18cpp_int_check_typeE0ESaIyEEEEELNSG_26expression_template_optionE1EEEEENS_4LazyIS2_IS3_IJNS4_ISE_EENS7_ISE_EEEEES2_IS3_IJNS4_ISS_EENS7_ISS_EEEEENS_19Cartesian_converterISS_SE_NS_12NT_converterISR_SD_EEEEEEEclISU_EEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(32) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #39 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !536  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.f = load atomic ptr, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load i8, ptr %i.g, align 16, !tbaa !537
  %.not.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZNK4CGAL8internal12Variant_castINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJS7_NS_9Segment_2IS6_EEEEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.i, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @.str.110, ptr %i.j, align 8, !tbaa !151
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #38
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNK4CGAL8internal12Variant_castINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJS7_NS_9Segment_2IS6_EEEEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.k, align 4, !tbaa !238
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.l, ptr noundef nonnull align 16 dereferenceable(32) %i.f, i64 32, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.m, align 16, !tbaa !615
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 0, ptr %i.n, align 8, !tbaa !243
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEEE, i64 16), ptr %i.a, align 16, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  store ptr %i.p, ptr %i.o, align 16, !tbaa !34
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
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
  %i.v = load ptr, ptr %0, align 8, !tbaa !532    ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !147, !range !13, !noundef !14
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !149
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %_ZNSt8optionalISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS2_5EpeckEEENS2_9Segment_2IS4_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_ZNSt7variantIJN4CGAL7Point_2INS0_5EpeckEEENS0_9Segment_2IS2_EEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_EE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i.i unwind label %bb.g

_ZNSt7variantIJN4CGAL7Point_2INS0_5EpeckEEENS0_9Segment_2IS2_EEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_EE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i.i: ; preds = %bb.f
  store ptr %i.a, ptr %i.v, align 8, !tbaa !34
  store i8 0, ptr %i.z, align 8, !tbaa !149
  br label %_ZN4CGAL6HandleD2Ev.exit6

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #40
  unreachable

bb.h:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit
  store ptr %i.a, ptr %i.v, align 8, !tbaa !34
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i8 0, ptr %i.ae, align 8, !tbaa !149
  store i8 1, ptr %i.w, align 8, !tbaa !147
  br label %_ZN4CGAL6HandleD2Ev.exit6

_ZNSt8optionalISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit: ; preds = %bb.e
  %i.af = load ptr, ptr %i.v, align 8, !tbaa !254 ; 6 uses
  store ptr %i.a, ptr %i.v, align 8, !tbaa !254
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit6, label %bb.i

bb.i:                                             ; preds = %_ZNSt8optionalISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i = icmp eq i8 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load atomic i32, ptr %i.ah monotonic, align 4 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 1                    ; 2 uses
  br i1 %.not.i.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !37
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(12) %i.af) #23, !inline_history !96
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
  %i.aq = load ptr, ptr %i.af, align 8, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(12) %i.af) #23, !inline_history !96
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
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !34  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #23, !inline_history !618
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
  %i.m = load ptr, ptr %i.a, align 16, !tbaa !34  ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #23, !inline_history !618
  br label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit

_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.g, %bb.h, %bb.i
  tail call void @_ZN4CGAL8Lazy_repINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EED2Ev(ptr noundef nonnull align 16 dead_on_return(60) dereferenceable(60) %0) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEED0Ev(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !34  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #23, !inline_history !619
  br label %_ZN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.e, -1
  store atomic i32 %i.j, ptr %i.d monotonic, align 4
  br label %_ZN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEED2Ev.exit

end_hunk_2
begin_hunk_3_@_ZNK4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE:bb.a
bb.j:                                             ; preds = %bb.f
  br i1 %i.ak, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = atomicrmw sub ptr %i.ai, i32 1 release, align 4
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %bb.l, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.k, %bb.j
  fence acquire
  %i.ar = load ptr, ptr %i.b, align 16, !tbaa !34 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !37
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(12) %i.ar) #23, !inline_history !627
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i:          ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.h
  store ptr null, ptr %i.b, align 16, !tbaa !34
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
define linkonce_odr dso_local void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repISt8optionalISt7variantIJNS3_7Point_2INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS3_9Segment_2ISB_EEEEES5_IS6_IJNS7_INS8_IN5boost14multiprecision6numberINSI_8backends16rational_adaptorINSK_15cpp_int_backendILm0ELm0ELNSI_16cpp_integer_typeE1ELNSI_18cpp_int_check_typeE0ESaIyEEEEELNSI_26expression_template_optionE1EEEEEEENSD_ISU_EEEEENS3_19Cartesian_converterISU_SB_NS3_12NT_converterIST_SA_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERS16_ENUlvE_8__invokeEv() #10 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !305
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !628, !nonnull !14, !align !475
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !620  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 16 dereferenceable(124) %i.d), !inline_history !630
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS2_5EpeckEEENS2_9Segment_2IS4_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(9) %0) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !149   ; 2 uses
  %.not = icmp eq i8 %i.b, -1
  br i1 %.not, label %bb.u, label %bb.b, !prof !53

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i8 %i.b, 0
  %i.d = load ptr, ptr %0, align 8, !tbaa !34     ; 7 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null  ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load atomic i32, ptr %i.f monotonic, align 4 ; 2 uses
  %i.h = icmp eq i32 %i.g, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(12) %i.d) #23, !inline_history !631
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
  %i.o = load ptr, ptr %0, align 8, !tbaa !34     ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !37
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(12) %i.o) #23, !inline_history !631
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit

bb.l:                                             ; preds = %bb.b
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i.i.i7.i = icmp eq i8 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.v = load atomic i32, ptr %i.u monotonic, align 4 ; 2 uses
  %i.w = icmp eq i32 %i.v, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i7.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.w, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(12) %i.d) #23, !inline_history !632
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
  %i.ad = load ptr, ptr %0, align 8, !tbaa !34    ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !37
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(12) %i.ad) #23, !inline_history !632
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit: ; preds = %bb.c, %bb.f, %bb.g, %bb.i, %bb.j, %bb.k, %bb.l, %bb.o, %bb.p, %bb.r, %bb.s, %bb.t
  store i8 -1, ptr %i.a, align 8, !tbaa !149
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL8internal27Fill_lazy_variant_visitor_2ISt8optionalISt7variantIJNS_7Point_2INS_5EpeckEEENS_9Segment_2IS5_EEEEENS_16Simple_cartesianINS_11Interval_ntILb0EEEEES5_NSB_IN5boost14multiprecision6numberINSG_8backends16rational_adaptorINSI_15cpp_int_backendILm0ELm0ELNSG_16cpp_integer_typeE1ELNSG_18cpp_int_check_typeE0ESaIyEEEEELNSG_26expression_template_optionE1EEEEENS_4LazyIS2_IS3_IJNS4_ISE_EENS7_ISE_EEEEES2_IS3_IJNS4_ISS_EENS7_ISS_EEEEENS_19Cartesian_converterISS_SE_NS_12NT_converterISR_SD_EEEEEEEclISV_EEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(64) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #39 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !536  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.f = load atomic ptr, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load i8, ptr %i.g, align 16, !tbaa !537
  %.not.i.i.i.i = icmp eq i8 %i.h, 1
  br i1 %.not.i.i.i.i, label %_ZNK4CGAL8internal12Variant_castINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJNS_7Point_2IS6_EES7_EEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.i, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @.str.110, ptr %i.j, align 8, !tbaa !151
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #38
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNK4CGAL8internal12Variant_castINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJNS_7Point_2IS6_EES7_EEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.k, align 4, !tbaa !238
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.l, ptr noundef nonnull align 16 dereferenceable(64) %i.f, i64 64, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.l, ptr %i.m, align 16, !tbaa !633
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i32 0, ptr %i.n, align 8, !tbaa !243
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_2IS5_EES6_EEESV_ISW_IJNSX_ISK_EESL_EEEST_EEEEE, i64 16), ptr %i.a, align 16, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  store ptr %i.p, ptr %i.o, align 16, !tbaa !34
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
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
  %i.v = load ptr, ptr %0, align 8, !tbaa !532    ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !147, !range !13, !noundef !14
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_2IS5_EES6_EEESV_ISW_IJNSX_ISK_EESL_EEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !149
  %i.ab = icmp eq i8 %i.aa, 1
  br i1 %i.ab, label %_ZNSt8optionalISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEEEaSIS6_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS2_5EpeckEEENS2_9Segment_2IS4_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_ZNSt7variantIJN4CGAL7Point_2INS0_5EpeckEEENS0_9Segment_2IS2_EEEE7emplaceILm1EJS5_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_EE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i.i unwind label %bb.g

_ZNSt7variantIJN4CGAL7Point_2INS0_5EpeckEEENS0_9Segment_2IS2_EEEE7emplaceILm1EJS5_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_EE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i.i: ; preds = %bb.f
  store ptr %i.a, ptr %i.v, align 8, !tbaa !34
  store i8 1, ptr %i.z, align 8, !tbaa !149
  br label %_ZN4CGAL6HandleD2Ev.exit6

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #40
  unreachable

bb.h:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_2IS5_EES6_EEESV_ISW_IJNSX_ISK_EESL_EEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit
  store ptr %i.a, ptr %i.v, align 8, !tbaa !34
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i8 1, ptr %i.ae, align 8, !tbaa !149
  store i8 1, ptr %i.w, align 8, !tbaa !147
  br label %_ZN4CGAL6HandleD2Ev.exit6

_ZNSt8optionalISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEEEaSIS6_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit: ; preds = %bb.e
  %i.af = load ptr, ptr %i.v, align 8, !tbaa !254 ; 6 uses
  store ptr %i.a, ptr %i.v, align 8, !tbaa !254
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit6, label %bb.i

bb.i:                                             ; preds = %_ZNSt8optionalISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEEEaSIS6_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i = icmp eq i8 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load atomic i32, ptr %i.ah monotonic, align 4 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 1                    ; 2 uses
  br i1 %.not.i.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !37
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(12) %i.af) #23, !inline_history !96
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
  %i.aq = load ptr, ptr %i.af, align 8, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(12) %i.af) #23, !inline_history !96
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
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !34  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #23, !inline_history !618
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
  %i.m = load ptr, ptr %i.a, align 16, !tbaa !34  ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #23, !inline_history !618
  br label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit

_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.g, %bb.h, %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EEE, i64 16), ptr %0, align 16, !tbaa !37
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
  tail call void @_ZNSt5arrayIN4CGAL7Point_2INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEELm2EED2Ev(ptr noundef nonnull align 16 dead_on_return(256) dereferenceable(256) %i.v) #23, !inline_history !636
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 320) #36, !inline_history !636
  br label %_ZN4CGAL8Lazy_repINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EED2Ev.exit

_ZN4CGAL8Lazy_repINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit, %bb.j, %bb.k
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_2IS5_EES6_EEESV_ISW_IJNSX_ISK_EESL_EEEST_EEEED0Ev(ptr noundef nonnull align 16 dereferenceable(112) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !34  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4CGAL8Lazy_repINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EEC2IS6_RKSL_EEOT_OT0_:bb.a
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.i, ptr noundef nonnull align 16 dereferenceable(64) %i.j)
          to label %_ZN4CGAL10AT_ET_wrapINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEEEC2IS6_RKSL_EEOT_OT0_.exit unwind label %.body.i.i.i.i

.split.i.i.i.i:                                   ; preds = %_ZN4CGAL7Point_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit.i.i.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.noexc.1.i.i.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(128) %i.g) #23
  br label %.preheader.preheader.i.i.i.i

.preheader.preheader.i.i.i.i:                     ; preds = %.body.i.i.i.i, %.split.i.i.i.i
  %eh.lpad-body15.i.i.i.i = phi { ptr, i32 } [ %i.k, %.split.i.i.i.i ], [ %i.l, %.body.i.i.i.i ]
  tail call void @_ZN4CGAL7PointC2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(128) dereferenceable(256) %i.c) #23
  br label %.body

_ZN4CGAL10AT_ET_wrapINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEEEC2IS6_RKSL_EEOT_OT0_.exit: ; preds = %.noexc.1.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.b, ptr %i.m, align 16, !tbaa !633
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.n, align 8, !tbaa !243
  ret void

bb.b:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.thread.i.i.i.i, %.preheader.preheader.i.i.i.i, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %bb.b ], [ %i.f, %.body.thread.i.i.i.i ], [ %eh.lpad-body15.i.i.i.i, %.preheader.preheader.i.i.i.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 320) #36
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL8Lazy_repINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EED2Ev(ptr noundef nonnull align 16 dead_on_return(92) dereferenceable(92) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EEE, i64 16), ptr %0, align 16, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load atomic ptr, ptr %i.a monotonic, align 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  fence acquire
  %i.d = icmp eq ptr %i.b, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @_ZNSt5arrayIN4CGAL7Point_2INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEELm2EED2Ev(ptr noundef nonnull align 16 dead_on_return(256) dereferenceable(256) %i.e) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 320) #36
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_0INS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEED0Ev(ptr noundef nonnull align 16 dereferenceable(96) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EEE, i64 16), ptr %0, align 16, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load atomic ptr, ptr %i.a monotonic, align 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i, label %_ZN4CGAL8Lazy_repINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  fence acquire
  %i.d = icmp eq ptr %i.b, null
  br i1 %i.d, label %_ZN4CGAL8Lazy_repINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @_ZNSt5arrayIN4CGAL7Point_2INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEELm2EED2Ev(ptr noundef nonnull align 16 dead_on_return(256) dereferenceable(256) %i.e) #23, !inline_history !636
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 320) #36, !inline_history !636
  br label %_ZN4CGAL8Lazy_repINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EED2Ev.exit

_ZN4CGAL8Lazy_repINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_0INS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEE12update_exactEv(ptr noundef nonnull align 16 dereferenceable(96) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load atomic ptr, ptr %i.a monotonic, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull dereferenceable(320) ptr @_Znwm(i64 noundef 320) #39 ; 8 uses
  %.ptr2.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(256) %.ptr2.i)
          to label %.noexc.i.i.i.i unwind label %bb.c

.noexc.i.i.i.i:                                   ; preds = %bb.b
  %.ptr.1.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(64) %.ptr.1.i.i.i.i.i.i.i.i.i)
          to label %_ZN4CGAL7Point_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2Ev.exit.i.i.i.i unwind label %.preheader.preheader.i.i.i.i.i.i.i.i.i

.preheader.preheader.i.i.i.i.i.i.i.i.i:           ; preds = %.noexc.1.i.i.i.i, %.noexc.i.i.i.i
  %.idx.lcssa13.i.i.i.i = phi i64 [ 0, %.noexc.i.i.i.i ], [ 128, %.noexc.1.i.i.i.i ]
  %.ptr.lcssa10.i.i.i.idx.i = phi i64 [ 64, %.noexc.i.i.i.i ], [ 192, %.noexc.1.i.i.i.i ] ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup
  %.ptr.lcssa10.i.i.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.ptr.lcssa10.i.i.i.idx.i
  tail call void @_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(128) %.ptr.lcssa10.i.i.i.ptr.i) #23
  br label %.body.i.i.i.i

_ZN4CGAL7Point_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2Ev.exit.i.i.i.i: ; preds = %.noexc.i.i.i.i
  %.ptr.1.i.i.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(128) %.ptr.1.i.i.i.ptr.i)
          to label %.noexc.1.i.i.i.i unwind label %bb.c

.noexc.1.i.i.i.i:                                 ; preds = %_ZN4CGAL7Point_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2Ev.exit.i.i.i.i
  %.ptr.1.i.i.i.i.i.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(64) %.ptr.1.i.i.i.i.i.1.i.i.i.i)
          to label %_ZN4CGAL10AT_ET_wrapINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEEEC2Ev.exit unwind label %.preheader.preheader.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %_ZN4CGAL7Point_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2Ev.exit.i.i.i.i, %bb.b
  %.idx.lcssa.i.i.i.i = phi i64 [ 0, %bb.b ], [ 128, %_ZN4CGAL7Point_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2Ev.exit.i.i.i.i ]
  %.ptr.lcssa.i.i.i.idx.i = phi i64 [ 64, %bb.b ], [ 192, %_ZN4CGAL7Point_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2Ev.exit.i.i.i.i ]
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.c, %.preheader.preheader.i.i.i.i.i.i.i.i.i
  %.idx15.i.i.i.i = phi i64 [ %.idx.lcssa.i.i.i.i, %bb.c ], [ %.idx.lcssa13.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i.i.i.i ]
  %.ptr12.i.i.i.idx.i = phi i64 [ %.ptr.lcssa.i.i.i.idx.i, %bb.c ], [ %.ptr.lcssa10.i.i.i.idx.i, %.preheader.preheader.i.i.i.i.i.i.i.i.i ]
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.f, %.preheader.preheader.i.i.i.i.i.i.i.i.i ]
  %i.h = icmp samesign eq i64 %.idx15.i.i.i.i, 0
  br i1 %i.h, label %.body, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.body.i.i.i.i, %.preheader.i.i.i.i
  %.idx.i = phi i64 [ %.add.i, %.preheader.i.i.i.i ], [ %.ptr12.i.i.i.idx.i, %.body.i.i.i.i ]
  %.add.i = add nsw i64 %.idx.i, -128             ; 3 uses
  %.ptr1.i = getelementptr inbounds i8, ptr %i.e, i64 %.add.i
  tail call void @_ZN4CGAL7PointC2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(128) dereferenceable(128) %.ptr1.i) #23
  %i.i = icmp eq i64 %.add.i, 64
  br i1 %i.i, label %.body, label %.preheader.i.i.i.i

_ZN4CGAL10AT_ET_wrapINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEEEC2Ev.exit: ; preds = %.noexc.1.i.i.i.i
  store atomic ptr %i.e, ptr %i.a release, align 16
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN4CGAL10AT_ET_wrapINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEEEC2Ev.exit
  ret void

.body:                                            ; preds = %.preheader.i.i.i.i, %.body.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 320) #36
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_20CommonKernelFunctors18Construct_source_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb1EEclIJNS_9Segment_2IS1_EEEEEDcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Point_2") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %class.anon.328, align 8            ; 5 uses
  %4 = alloca %class.anon.327, align 8            ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
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
  %i.m = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #39
          to label %bb.b unwind label %bb.e       ; 7 uses

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.p = load atomic ptr, ptr %i.o acquire, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.q, align 4, !tbaa !238
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.r, ptr noundef nonnull align 16 dereferenceable(32) %i.p, i64 32, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr null, ptr %i.s, align 16, !tbaa !615
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store i32 0, ptr %i.t, align 8, !tbaa !243
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20CommonKernelFunctors18Construct_source_2IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_9Segment_2INS_5EpeckEEEEEE, i64 16), ptr %i.m, align 16, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.v = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  store ptr %i.v, ptr %i.u, align 16, !tbaa !34
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load atomic i32, ptr %i.x monotonic, align 4
  %i.z = add nsw i32 %i.y, 1
  store atomic i32 %i.z, ptr %i.x monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = atomicrmw add ptr %i.x, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.c, %bb.d
  store ptr %i.m, ptr %0, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.ab = load i32, ptr %i.c, align 4
  %i.ac = and i32 %i.ab, -24577
  %i.ad = or disjoint i32 %i.ac, %i.i
  store i32 %i.ad, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE ; 3 uses
  %.07 = extractvalue { ptr, i32 } %i.ae, 1
  %i.af = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #23
  %i.ag = icmp eq i32 %.07, %i.af
  br i1 %i.ag, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %.08 = extractvalue { ptr, i32 } %i.ae, 0
  %i.ah = call ptr @__cxa_begin_catch(ptr %.08) #23 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.ai = load i32, ptr %i.c, align 4
  %i.aj = and i32 %i.ai, -24577
  %i.ak = or disjoint i32 %i.aj, %i.i
  store i32 %i.ak, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.al = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #39 ; 3 uses
  %i.am = load ptr, ptr %2, align 8, !tbaa !34    ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %i.am, ptr %4, align 8, !tbaa !539
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %4, ptr %3, align 8, !tbaa !305
  %i.ao = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %3, ptr %i.ao, align 8, !tbaa !305
  %i.ap = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_9Segment_2INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.ap, align 8, !tbaa !305
  %i.aq = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.an, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.aq) #38
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ao, align 8, !tbaa !305
  store ptr null, ptr %i.ap, align 8, !tbaa !305
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.ao, align 8, !tbaa !305
  store ptr null, ptr %i.ap, align 8, !tbaa !305
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.at = load atomic ptr, ptr %i.as monotonic, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  invoke void @_ZN4CGAL10Lazy_rep_0INS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEC2IRKSL_EEOT_(ptr noundef nonnull align 16 dereferenceable(64) %i.al, ptr noundef nonnull align 16 dereferenceable(128) %i.au)
          to label %_ZN4CGAL6HandleD2Ev.exit15 unwind label %bb.n

_ZN4CGAL6HandleD2Ev.exit15:                       ; preds = %bb.k
  store ptr %i.al, ptr %0, align 8, !tbaa !34
  br label %bb.o

bb.l:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.e
  %.merged12 = phi { ptr, i32 } [ %i.av, %bb.l ], [ %i.ae, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.aw = load i32, ptr %i.a, align 4
  %i.ax = and i32 %i.aw, -24577
  %i.ay = or disjoint i32 %i.ax, %i.i
  store i32 %i.ay, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.az, %bb.n ], [ %i.ar, %bb.j ]
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 64) #36
  br label %bb.p

bb.o:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit, %_ZN4CGAL6HandleD2Ev.exit15
  ret void

bb.p:                                             ; preds = %.body, %bb.m
  %.merged = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.merged12, %bb.m ]
  resume { ptr, i32 } %.merged
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20CommonKernelFunctors18Construct_source_2IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_9Segment_2INS_5EpeckEEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(72) dereferenceable(80) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !34  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL9Segment_2INS0_5EpeckEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #23, !inline_history !836
  br label %_ZNSt10_Head_baseILm0EN4CGAL9Segment_2INS0_5EpeckEEELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.e, -1
  store atomic i32 %i.j, ptr %i.d monotonic, align 4
  br label %_ZNSt10_Head_baseILm0EN4CGAL9Segment_2INS0_5EpeckEEELb0EED2Ev.exit

bb.f:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = atomicrmw sub ptr %i.d, i32 1 release, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.h, label %_ZNSt10_Head_baseILm0EN4CGAL9Segment_2INS0_5EpeckEEELb0EED2Ev.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  fence acquire
  %i.m = load ptr, ptr %i.a, align 16, !tbaa !34  ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZNSt10_Head_baseILm0EN4CGAL9Segment_2INS0_5EpeckEEELb0EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #23, !inline_history !836
  br label %_ZNSt10_Head_baseILm0EN4CGAL9Segment_2INS0_5EpeckEEELb0EED2Ev.exit

_ZNSt10_Head_baseILm0EN4CGAL9Segment_2INS0_5EpeckEEELb0EED2Ev.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.g, %bb.h, %bb.i
  tail call void @_ZN4CGAL8Lazy_repINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EED2Ev(ptr noundef nonnull align 16 dead_on_return(60) dereferenceable(60) %0) #23
end_hunk_4
begin_hunk_5_@_ZN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20CommonKernelFunctors18Construct_source_2IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_9Segment_2INS_5EpeckEEEEED0Ev:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20CommonKernelFunctors18Construct_source_2IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_9Segment_2INS_5EpeckEEEEE12update_exactEv(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZNK4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20CommonKernelFunctors18Construct_source_2IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_9Segment_2INS_5EpeckEEEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 16 dereferenceable(80) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20CommonKernelFunctors18Construct_source_2IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_9Segment_2INS_5EpeckEEEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 16 dereferenceable(80) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %2 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %3 = alloca %class.anon.328, align 8            ; 5 uses
  %4 = alloca %class.anon.327, align 8            ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #39 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !34  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %i.c, ptr %4, align 8, !tbaa !539
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %4, ptr %3, align 8, !tbaa !305
  %i.e = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %3, ptr %i.e, align 8, !tbaa !305
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_9Segment_2INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !305
  %i.g = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.g) #38
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !305
  store ptr null, ptr %i.f, align 8, !tbaa !305
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.body

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.e, align 8, !tbaa !305
  store ptr null, ptr %i.f, align 8, !tbaa !305
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(128) %i.a, ptr noundef nonnull align 16 dereferenceable(128) %i.k)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.l, ptr noundef nonnull align 16 dereferenceable(64) %i.m)
          to label %_ZN4CGAL7Point_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit unwind label %.preheader.preheader.i.i.i.i.i

.preheader.preheader.i.i.i.i.i:                   ; preds = %.noexc
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(128) %i.a) #23
  br label %.body

_ZN4CGAL7Point_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit: ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !838
  %i.o = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(128) %i.a), !noalias !838 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !838
  %i.p = extractvalue { double, double } %i.o, 0
  %i.q = extractvalue { double, double } %i.o, 1
  %i.r = fneg double %i.p
  %i.s = insertelement <2 x double> poison, double %i.r, i64 0
  %i.t = insertelement <2 x double> %i.s, double %i.q, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23, !noalias !838
  %i.u = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(64) %i.l), !noalias !838 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23, !noalias !838
  %i.v = extractvalue { double, double } %i.u, 0
  %i.w = extractvalue { double, double } %i.u, 1
  %i.x = fneg double %i.v
  %i.y = insertelement <2 x double> poison, double %i.x, i64 0
  %i.z = insertelement <2 x double> %i.y, double %i.w, i64 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x double> %i.t, ptr %i.aa, align 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x double> %i.z, ptr %.sroa.4.0..sroa_idx.i, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  store atomic ptr %i.a, ptr %i.ab release, align 16
  %i.ac = load ptr, ptr %i.b, align 16, !tbaa !34 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i, label %_ZN4CGAL17lazy_reset_memberIJNS_9Segment_2INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4CGAL7Point_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ad, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.af = load atomic i32, ptr %i.ae monotonic, align 4 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !37
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(12) %i.ac) #23, !inline_history !841
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ak = add nsw i32 %i.af, -1
  store atomic i32 %i.ak, ptr %i.ae monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.f
  br i1 %i.ag, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = atomicrmw sub ptr %i.ae, i32 1 release, align 4
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.l, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.k, %bb.j
  fence acquire
  %i.an = load ptr, ptr %i.b, align 16, !tbaa !34 ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !37
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(12) %i.an) #23, !inline_history !841
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i:          ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.h
  store ptr null, ptr %i.b, align 16, !tbaa !34
  br label %_ZN4CGAL17lazy_reset_memberIJNS_9Segment_2INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit

_ZN4CGAL17lazy_reset_memberIJNS_9Segment_2INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit: ; preds = %_ZN4CGAL7Point_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit, %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i
  ret void

bb.n:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %.preheader.preheader.i.i.i.i.i, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.as, %bb.n ], [ %i.n, %.preheader.preheader.i.i.i.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 128) #36
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_20CommonKernelFunctors18Construct_target_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb1EEclIJNS_9Segment_2IS1_EEEEEDcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Point_2") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %class.anon.328, align 8            ; 5 uses
  %4 = alloca %class.anon.327, align 8            ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
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
  %i.m = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #39
          to label %bb.b unwind label %bb.e       ; 7 uses

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.p = load atomic ptr, ptr %i.o acquire, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.r, align 4, !tbaa !238
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.s, ptr noundef nonnull align 16 dereferenceable(32) %i.q, i64 32, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr null, ptr %i.t, align 16, !tbaa !615
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store i32 0, ptr %i.u, align 8, !tbaa !243
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20CommonKernelFunctors18Construct_target_2IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_9Segment_2INS_5EpeckEEEEEE, i64 16), ptr %i.m, align 16, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.w = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  store ptr %i.w, ptr %i.v, align 16, !tbaa !34
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.x, 0
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = load atomic i32, ptr %i.y monotonic, align 4
  %i.aa = add nsw i32 %i.z, 1
  store atomic i32 %i.aa, ptr %i.y monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = atomicrmw add ptr %i.y, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.c, %bb.d
  store ptr %i.m, ptr %0, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.ac = load i32, ptr %i.c, align 4
  %i.ad = and i32 %i.ac, -24577
  %i.ae = or disjoint i32 %i.ad, %i.i
  store i32 %i.ae, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE ; 3 uses
  %.07 = extractvalue { ptr, i32 } %i.af, 1
  %i.ag = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #23
  %i.ah = icmp eq i32 %.07, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %.08 = extractvalue { ptr, i32 } %i.af, 0
  %i.ai = call ptr @__cxa_begin_catch(ptr %.08) #23 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.aj = load i32, ptr %i.c, align 4
  %i.ak = and i32 %i.aj, -24577
  %i.al = or disjoint i32 %i.ak, %i.i
  store i32 %i.al, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.am = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #39 ; 3 uses
  %i.an = load ptr, ptr %2, align 8, !tbaa !34    ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %i.an, ptr %4, align 8, !tbaa !539
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %4, ptr %3, align 8, !tbaa !305
  %i.ap = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %3, ptr %i.ap, align 8, !tbaa !305
  %i.aq = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_9Segment_2INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.aq, align 8, !tbaa !305
  %i.ar = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ar) #38
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.as = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ap, align 8, !tbaa !305
  store ptr null, ptr %i.aq, align 8, !tbaa !305
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.ap, align 8, !tbaa !305
  store ptr null, ptr %i.aq, align 8, !tbaa !305
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.au = load atomic ptr, ptr %i.at monotonic, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 192
  invoke void @_ZN4CGAL10Lazy_rep_0INS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEC2IRKSL_EEOT_(ptr noundef nonnull align 16 dereferenceable(64) %i.am, ptr noundef nonnull align 16 dereferenceable(128) %i.av)
          to label %_ZN4CGAL6HandleD2Ev.exit15 unwind label %bb.n

_ZN4CGAL6HandleD2Ev.exit15:                       ; preds = %bb.k
  store ptr %i.am, ptr %0, align 8, !tbaa !34
  br label %bb.o

bb.l:                                             ; preds = %bb.f
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.e
  %.merged12 = phi { ptr, i32 } [ %i.aw, %bb.l ], [ %i.af, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.ax = load i32, ptr %i.a, align 4
  %i.ay = and i32 %i.ax, -24577
  %i.az = or disjoint i32 %i.ay, %i.i
  store i32 %i.az, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.ba, %bb.n ], [ %i.as, %bb.j ]
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef 64) #36
  br label %bb.p

bb.o:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit, %_ZN4CGAL6HandleD2Ev.exit15
  ret void

bb.p:                                             ; preds = %.body, %bb.m
  %.merged = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.merged12, %bb.m ]
  resume { ptr, i32 } %.merged
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20CommonKernelFunctors18Construct_target_2IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_9Segment_2INS_5EpeckEEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(72) dereferenceable(80) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !34  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL9Segment_2INS0_5EpeckEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #23, !inline_history !836
  br label %_ZNSt10_Head_baseILm0EN4CGAL9Segment_2INS0_5EpeckEEELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.e, -1
  store atomic i32 %i.j, ptr %i.d monotonic, align 4
  br label %_ZNSt10_Head_baseILm0EN4CGAL9Segment_2INS0_5EpeckEEELb0EED2Ev.exit

bb.f:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = atomicrmw sub ptr %i.d, i32 1 release, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.h, label %_ZNSt10_Head_baseILm0EN4CGAL9Segment_2INS0_5EpeckEEELb0EED2Ev.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  fence acquire
  %i.m = load ptr, ptr %i.a, align 16, !tbaa !34  ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZNSt10_Head_baseILm0EN4CGAL9Segment_2INS0_5EpeckEEELb0EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #23, !inline_history !836
  br label %_ZNSt10_Head_baseILm0EN4CGAL9Segment_2INS0_5EpeckEEELb0EED2Ev.exit

_ZNSt10_Head_baseILm0EN4CGAL9Segment_2INS0_5EpeckEEELb0EED2Ev.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.g, %bb.h, %bb.i
  tail call void @_ZN4CGAL8Lazy_repINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EED2Ev(ptr noundef nonnull align 16 dead_on_return(60) dereferenceable(60) %0) #23
end_hunk_5
begin_hunk_6_@_ZNK4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20CommonKernelFunctors18Construct_target_2IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_9Segment_2INS_5EpeckEEEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE:bb.a
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !305
  store ptr null, ptr %i.f, align 8, !tbaa !305
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.body

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.e, align 8, !tbaa !305
  store ptr null, ptr %i.f, align 8, !tbaa !305
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 192
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(128) %i.a, ptr noundef nonnull align 16 dereferenceable(128) %i.k)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 256
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.l, ptr noundef nonnull align 16 dereferenceable(64) %i.m)
          to label %_ZN4CGAL7Point_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit unwind label %.preheader.preheader.i.i.i.i.i

.preheader.preheader.i.i.i.i.i:                   ; preds = %.noexc
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(128) %i.a) #23
  br label %.body

_ZN4CGAL7Point_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit: ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !843
  %i.o = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(128) %i.a), !noalias !843 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !843
  %i.p = extractvalue { double, double } %i.o, 0
  %i.q = extractvalue { double, double } %i.o, 1
  %i.r = fneg double %i.p
  %i.s = insertelement <2 x double> poison, double %i.r, i64 0
  %i.t = insertelement <2 x double> %i.s, double %i.q, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23, !noalias !843
  %i.u = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(64) %i.l), !noalias !843 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23, !noalias !843
  %i.v = extractvalue { double, double } %i.u, 0
  %i.w = extractvalue { double, double } %i.u, 1
  %i.x = fneg double %i.v
  %i.y = insertelement <2 x double> poison, double %i.x, i64 0
  %i.z = insertelement <2 x double> %i.y, double %i.w, i64 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x double> %i.t, ptr %i.aa, align 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x double> %i.z, ptr %.sroa.4.0..sroa_idx.i, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  store atomic ptr %i.a, ptr %i.ab release, align 16
  %i.ac = load ptr, ptr %i.b, align 16, !tbaa !34 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i, label %_ZN4CGAL17lazy_reset_memberIJNS_9Segment_2INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4CGAL7Point_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ad, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.af = load atomic i32, ptr %i.ae monotonic, align 4 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !37
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(12) %i.ac) #23, !inline_history !841
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ak = add nsw i32 %i.af, -1
  store atomic i32 %i.ak, ptr %i.ae monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.f
  br i1 %i.ag, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = atomicrmw sub ptr %i.ae, i32 1 release, align 4
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.l, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.k, %bb.j
  fence acquire
  %i.an = load ptr, ptr %i.b, align 16, !tbaa !34 ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !37
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(12) %i.an) #23, !inline_history !841
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i:          ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.h
  store ptr null, ptr %i.b, align 16, !tbaa !34
  br label %_ZN4CGAL17lazy_reset_memberIJNS_9Segment_2INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit

_ZN4CGAL17lazy_reset_memberIJNS_9Segment_2INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit: ; preds = %_ZN4CGAL7Point_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit, %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i
  ret void

bb.n:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %.preheader.preheader.i.i.i.i.i, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.as, %bb.n ], [ %i.n, %.preheader.preheader.i.i.i.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 128) #36
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #31 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #23, !inline_history !846
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !23   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !23
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #23, !inline_history !846
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL20Lazy_construction_ntINS_5EpeckENS_23CartesianKernelFunctors11Compute_x_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclIJNS_8Vector_2IS1_EEEEENS_13Lazy_exact_ntINSt9remove_cvINSt16remove_referenceIDTcldtdefpT2ecspclsr4CGALE5exactfp_EEEE4typeEE4typeEEEDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Lazy_exact_nt") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %4 = alloca %class.anon.360, align 8            ; 5 uses
  %5 = alloca %class.anon.359, align 8            ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
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
  %i.m = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #39
          to label %bb.b unwind label %bb.e       ; 7 uses

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load atomic ptr, ptr %i.o acquire, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.q, align 4, !tbaa !238
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.r, ptr noundef nonnull align 16 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !424
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.s, align 16, !tbaa !240
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 0, ptr %i.t, align 8, !tbaa !243
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_2INS_5EpeckEEEEEE, i64 16), ptr %i.m, align 16, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.v = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  store ptr %i.v, ptr %i.u, align 16, !tbaa !34
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load atomic i32, ptr %i.x monotonic, align 4
  %i.z = add nsw i32 %i.y, 1
  store atomic i32 %i.z, ptr %i.x monotonic, align 4
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_2INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = atomicrmw add ptr %i.x, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_2INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_2INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit: ; preds = %bb.d, %bb.c
  store ptr %i.m, ptr %0, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.ab = load i32, ptr %i.c, align 4
  %i.ac = and i32 %i.ab, -24577
  %i.ad = or disjoint i32 %i.ac, %i.i
  store i32 %i.ad, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.q

bb.e:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE ; 3 uses
  %.07 = extractvalue { ptr, i32 } %i.ae, 1
  %i.af = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #23
  %i.ag = icmp eq i32 %.07, %i.af
  br i1 %i.ag, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %.08 = extractvalue { ptr, i32 } %i.ae, 0
  %i.ah = call ptr @__cxa_begin_catch(ptr %.08) #23 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.ai = load i32, ptr %i.c, align 4
  %i.aj = and i32 %i.ai, -24577
  %i.ak = or disjoint i32 %i.aj, %i.i
  store i32 %i.ak, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.al = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #39 ; 8 uses
  %i.am = load ptr, ptr %2, align 8, !tbaa !34    ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %i.am, ptr %5, align 8, !tbaa !847
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %5, ptr %4, align 8, !tbaa !305
  %i.ao = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %4, ptr %i.ao, align 8, !tbaa !305
  %i.ap = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_8Vector_2INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.ap, align 8, !tbaa !305
  %i.aq = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.an, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.aq) #38
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ao, align 8, !tbaa !305
  store ptr null, ptr %i.ap, align 8, !tbaa !305
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.ao, align 8, !tbaa !305
  store ptr null, ptr %i.ap, align 8, !tbaa !305
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.at = load atomic ptr, ptr %i.as monotonic, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.av = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(64) %i.au)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %bb.k
  %i.aw = extractvalue { double, double } %i.av, 0
  %i.ax = extractvalue { double, double } %i.av, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 1, ptr %i.ay, align 4, !tbaa !238
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %i.al, align 16, !tbaa !37
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ba = fneg double %i.aw
  %i.bb = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.ax, i64 1
  store <2 x double> %i.bc, ptr %i.az, align 16, !tbaa !33
  %i.bd = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #39
          to label %.noexc13 unwind label %bb.p   ; 3 uses

.noexc13:                                         ; preds = %.noexc
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.bd, ptr noundef nonnull align 16 dereferenceable(64) %i.au)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %.noexc13
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef 64) #36
  br label %.body

bb.m:                                             ; preds = %.noexc13
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store ptr %i.bd, ptr %i.bf, align 16, !tbaa !240
  %i.bg = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store i32 0, ptr %i.bg, align 8, !tbaa !243
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_0INS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEEE, i64 16), ptr %i.al, align 16, !tbaa !37
  store ptr %i.al, ptr %0, align 8, !tbaa !34
  br label %bb.q

bb.n:                                             ; preds = %bb.f
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.e
  %.merged12 = phi { ptr, i32 } [ %i.bh, %bb.n ], [ %i.ae, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.bi = load i32, ptr %i.a, align 4
  %i.bj = and i32 %i.bi, -24577
  %i.bk = or disjoint i32 %i.bj, %i.i
  store i32 %i.bk, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.r

bb.p:                                             ; preds = %.noexc, %bb.k
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.l, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.ar, %bb.j ], [ %i.bl, %bb.p ], [ %i.be, %bb.l ]
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 48) #36
  br label %bb.r

bb.q:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_2INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit, %bb.m
  ret void

bb.r:                                             ; preds = %.body, %bb.o
  %.merged = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.merged12, %bb.o ]
  resume { ptr, i32 } %.merged
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_2INS_5EpeckEEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(56) dereferenceable(64) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !34  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL8Vector_2INS0_5EpeckEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
end_hunk_6
begin_hunk_7_@_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_2INS_5EpeckEEEEED0Ev:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 64) #36, !inline_history !488
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_2INS_5EpeckEEEEED2Ev.exit

_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_2INS_5EpeckEEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0EN4CGAL8Vector_2INS0_5EpeckEEELb0EED2Ev.exit.i, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_2INS_5EpeckEEEEE12update_exactEv(ptr noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_2INS_5EpeckEEEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 16 dereferenceable(64) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_2INS_5EpeckEEEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 16 dereferenceable(64) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %2 = alloca %class.anon.360, align 8            ; 5 uses
  %3 = alloca %class.anon.359, align 8            ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #39 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !34  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.c, ptr %3, align 8, !tbaa !847
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %3, ptr %2, align 8, !tbaa !305
  %i.e = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %2, ptr %i.e, align 8, !tbaa !305
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_8Vector_2INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !305
  %i.g = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.g) #38
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !305
  store ptr null, ptr %i.f, align 8, !tbaa !305
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.body

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.e, align 8, !tbaa !305
  store ptr null, ptr %i.f, align 8, !tbaa !305
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.k)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit unwind label %bb.n

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.l = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(64) %i.a) ; 2 uses
  %i.m = extractvalue { double, double } %i.l, 0
  %i.n = extractvalue { double, double } %i.l, 1
  %i.o = fneg double %i.m
  %i.p = insertelement <2 x double> poison, double %i.o, i64 0
  %i.q = insertelement <2 x double> %i.p, double %i.n, i64 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x double> %i.q, ptr %i.r, align 16, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic ptr %i.a, ptr %i.s release, align 16
  %i.t = load ptr, ptr %i.b, align 16, !tbaa !34  ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %_ZN4CGAL17lazy_reset_memberIJNS_8Vector_2INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.w = load atomic i32, ptr %i.v monotonic, align 4 ; 2 uses
  %i.x = icmp eq i32 %i.w, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !37
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(12) %i.t) #23, !inline_history !852
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ab = add nsw i32 %i.w, -1
  store atomic i32 %i.ab, ptr %i.v monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.f
  br i1 %i.x, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = atomicrmw sub ptr %i.v, i32 1 release, align 4
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %bb.l, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.k, %bb.j
  fence acquire
  %i.ae = load ptr, ptr %i.b, align 16, !tbaa !34 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !37
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(12) %i.ae) #23, !inline_history !852
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i:          ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.h
  store ptr null, ptr %i.b, align 16, !tbaa !34
  br label %_ZN4CGAL17lazy_reset_memberIJNS_8Vector_2INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit

_ZN4CGAL17lazy_reset_memberIJNS_8Vector_2INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit, %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i
  ret void

bb.n:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.n ], [ %i.h, %bb.d ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #36
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_8Vector_2INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv() #10 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !305
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !853, !nonnull !14, !align !475
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !847  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 16 dereferenceable(60) %i.d), !inline_history !855
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL20Lazy_construction_ntINS_5EpeckENS_23CartesianKernelFunctors11Compute_y_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclIJNS_8Vector_2IS1_EEEEENS_13Lazy_exact_ntINSt9remove_cvINSt16remove_referenceIDTcldtdefpT2ecspclsr4CGALE5exactfp_EEEE4typeEE4typeEEEDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Lazy_exact_nt") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %4 = alloca %class.anon.360, align 8            ; 5 uses
  %5 = alloca %class.anon.359, align 8            ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
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
  %i.m = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #39
          to label %bb.b unwind label %bb.e       ; 7 uses

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load atomic ptr, ptr %i.o acquire, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.r, align 4, !tbaa !238
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.s, ptr noundef nonnull align 16 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !424
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.t, align 16, !tbaa !240
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 0, ptr %i.u, align 8, !tbaa !243
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_2INS_5EpeckEEEEEE, i64 16), ptr %i.m, align 16, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.w = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  store ptr %i.w, ptr %i.v, align 16, !tbaa !34
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.x, 0
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = load atomic i32, ptr %i.y monotonic, align 4
  %i.aa = add nsw i32 %i.z, 1
  store atomic i32 %i.aa, ptr %i.y monotonic, align 4
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_2INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = atomicrmw add ptr %i.y, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_2INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_2INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit: ; preds = %bb.d, %bb.c
  store ptr %i.m, ptr %0, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.ac = load i32, ptr %i.c, align 4
  %i.ad = and i32 %i.ac, -24577
  %i.ae = or disjoint i32 %i.ad, %i.i
  store i32 %i.ae, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.q

bb.e:                                             ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE ; 3 uses
  %.07 = extractvalue { ptr, i32 } %i.af, 1
  %i.ag = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #23
  %i.ah = icmp eq i32 %.07, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %.08 = extractvalue { ptr, i32 } %i.af, 0
  %i.ai = call ptr @__cxa_begin_catch(ptr %.08) #23 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.aj = load i32, ptr %i.c, align 4
  %i.ak = and i32 %i.aj, -24577
  %i.al = or disjoint i32 %i.ak, %i.i
  store i32 %i.al, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.am = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #39 ; 8 uses
  %i.an = load ptr, ptr %2, align 8, !tbaa !34    ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %i.an, ptr %5, align 8, !tbaa !847
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %5, ptr %4, align 8, !tbaa !305
  %i.ap = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %4, ptr %i.ap, align 8, !tbaa !305
  %i.aq = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_8Vector_2INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.aq, align 8, !tbaa !305
  %i.ar = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ar) #38
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.as = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ap, align 8, !tbaa !305
  store ptr null, ptr %i.aq, align 8, !tbaa !305
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.ap, align 8, !tbaa !305
  store ptr null, ptr %i.aq, align 8, !tbaa !305
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.au = load atomic ptr, ptr %i.at monotonic, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.aw = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(64) %i.av)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %bb.k
  %i.ax = extractvalue { double, double } %i.aw, 0
  %i.ay = extractvalue { double, double } %i.aw, 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 1, ptr %i.az, align 4, !tbaa !238
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %i.am, align 16, !tbaa !37
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.bb = fneg double %i.ax
  %i.bc = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %i.ay, i64 1
  store <2 x double> %i.bd, ptr %i.ba, align 16, !tbaa !33
  %i.be = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #39
          to label %.noexc13 unwind label %bb.p   ; 3 uses

.noexc13:                                         ; preds = %.noexc
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.be, ptr noundef nonnull align 16 dereferenceable(64) %i.av)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %.noexc13
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef 64) #36
  br label %.body

bb.m:                                             ; preds = %.noexc13
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store ptr %i.be, ptr %i.bg, align 16, !tbaa !240
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store i32 0, ptr %i.bh, align 8, !tbaa !243
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_0INS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEEE, i64 16), ptr %i.am, align 16, !tbaa !37
  store ptr %i.am, ptr %0, align 8, !tbaa !34
  br label %bb.q

bb.n:                                             ; preds = %bb.f
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.e
  %.merged12 = phi { ptr, i32 } [ %i.bi, %bb.n ], [ %i.af, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.bj = load i32, ptr %i.a, align 4
  %i.bk = and i32 %i.bj, -24577
  %i.bl = or disjoint i32 %i.bk, %i.i
  store i32 %i.bl, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.r

bb.p:                                             ; preds = %.noexc, %bb.k
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.l, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.as, %bb.j ], [ %i.bm, %bb.p ], [ %i.bf, %bb.l ]
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef 48) #36
  br label %bb.r

bb.q:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_2INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit, %bb.m
  ret void

bb.r:                                             ; preds = %.body, %bb.o
  %.merged = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.merged12, %bb.o ]
  resume { ptr, i32 } %.merged
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_2INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_2INS_5EpeckEEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(56) dereferenceable(64) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !34  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL8Vector_2INS0_5EpeckEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
end_hunk_7
begin_hunk_8_@_ZN4CGAL8Vector_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ISE_SE_EEOT_OT0_:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL8Lazy_repINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EEC2IS6_SL_EEOT_OT0_(ptr noundef nonnull align 16 dereferenceable(60) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, ptr noundef nonnull align 16 dereferenceable(128) %2) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !238
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EEE, i64 16), ptr %0, align 16, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.c = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #39 ; 23 uses
  store i64 0, ptr %i.c, align 16, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 16, !tbaa !333 ; 2 uses
  store i64 %i.f, ptr %i.d, align 16, !tbaa !333
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load i8, ptr %i.h, align 8, !tbaa !341, !range !13, !noundef !14
  store i8 %i.i, ptr %i.g, align 8, !tbaa !341
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 25
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 25 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !9, !range !13, !noundef !14 ; 2 uses
  store i8 %i.l, ptr %i.j, align 1, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 26
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.o = load i8, ptr %i.n, align 2, !tbaa !342, !range !13, !noundef !14
  store i8 %i.o, ptr %i.m, align 2, !tbaa !342
  %i.p = trunc nuw i8 %i.l to i1
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = shl i64 %i.f, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(128) %i.c, ptr nonnull align 16 dereferenceable(128) %2, i64 %i.q, i1 false)
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.c, ptr noundef nonnull align 16 dereferenceable(128) %2, i64 16, i1 false), !tbaa.struct !404
  store i64 0, ptr %i.e, align 16, !tbaa !333
  store i8 1, ptr %i.k, align 1, !tbaa !9
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.i.i.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store i64 0, ptr %i.r, align 16, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.v = load i64, ptr %i.u, align 16, !tbaa !333 ; 2 uses
  store i64 %i.v, ptr %i.t, align 16, !tbaa !333
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.y = load i8, ptr %i.x, align 8, !tbaa !341, !range !13, !noundef !14
  store i8 %i.y, ptr %i.w, align 8, !tbaa !341
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 57
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 57 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9, !range !13, !noundef !14 ; 2 uses
  store i8 %i.ab, ptr %i.z, align 1, !tbaa !9
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 58
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 58
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !342, !range !13, !noundef !14
  store i8 %i.ae, ptr %i.ac, align 2, !tbaa !342
  %i.af = trunc nuw i8 %i.ab to i1
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.i.i.i.i.i
  %i.ag = shl i64 %i.v, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(27) %i.r, ptr nonnull align 16 dereferenceable(27) %i.s, i64 %i.ag, i1 false)
  br label %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2EOS8_.exit.i.i.i.i.i

bb.e:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %i.r, ptr noundef nonnull align 16 dereferenceable(27) %i.s, i64 16, i1 false), !tbaa.struct !404
  store i64 0, ptr %i.u, align 16, !tbaa !333
  store i8 1, ptr %i.aa, align 1, !tbaa !9
  br label %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2EOS8_.exit.i.i.i.i.i

_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2EOS8_.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i64 0, ptr %i.ah, align 16, !tbaa !33
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 16, !tbaa !333 ; 2 uses
  store i64 %i.al, ptr %i.aj, align 16, !tbaa !333
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !341, !range !13, !noundef !14
  store i8 %i.ao, ptr %i.am, align 8, !tbaa !341
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 89
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 89 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !9, !range !13, !noundef !14 ; 2 uses
  store i8 %i.ar, ptr %i.ap, align 1, !tbaa !9
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 90
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 90
  %i.au = load i8, ptr %i.at, align 2, !tbaa !342, !range !13, !noundef !14
  store i8 %i.au, ptr %i.as, align 2, !tbaa !342
  %i.av = trunc nuw i8 %i.ar to i1
  br i1 %i.av, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2EOS8_.exit.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ah, ptr noundef nonnull align 16 dereferenceable(64) %i.ai, i64 16, i1 false), !tbaa.struct !404
  store i64 0, ptr %i.ak, align 16, !tbaa !333
  store i8 1, ptr %i.aq, align 1, !tbaa !9
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.1.i.i.i.i.i

bb.g:                                             ; preds = %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2EOS8_.exit.i.i.i.i.i
  %i.aw = shl i64 %i.al, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(64) %i.ah, ptr nonnull align 16 dereferenceable(64) %i.ai, i64 %i.aw, i1 false)
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.1.i.i.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.1.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  store i64 0, ptr %i.ax, align 16, !tbaa !33
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 16, !tbaa !333 ; 2 uses
  store i64 %i.bb, ptr %i.az, align 16, !tbaa !333
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !341, !range !13, !noundef !14
  store i8 %i.be, ptr %i.bc, align 8, !tbaa !341
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 121
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 121 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !9, !range !13, !noundef !14 ; 2 uses
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !9
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 122
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 122
  %i.bk = load i8, ptr %i.bj, align 2, !tbaa !342, !range !13, !noundef !14
  store i8 %i.bk, ptr %i.bi, align 2, !tbaa !342
  %i.bl = trunc nuw i8 %i.bh to i1
  br i1 %i.bl, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.1.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %i.ax, ptr noundef nonnull align 16 dereferenceable(27) %i.ay, i64 16, i1 false), !tbaa.struct !404
  store i64 0, ptr %i.ba, align 16, !tbaa !333
  store i8 1, ptr %i.bg, align 1, !tbaa !9
  br label %_ZN4CGAL7Point_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2EOSG_.exit

bb.i:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.1.i.i.i.i.i
  %i.bm = shl i64 %i.bb, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(27) %i.ax, ptr nonnull align 16 dereferenceable(27) %i.ay, i64 %i.bm, i1 false)
  br label %_ZN4CGAL7Point_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2EOSG_.exit

_ZN4CGAL7Point_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2EOSG_.exit: ; preds = %bb.h, %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.c, ptr %i.bn, align 16, !tbaa !615
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.bo, align 8, !tbaa !243
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_20CommonKernelFunctors19Construct_segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb1EEclIJNS_15Return_base_tagENS_7Point_2IS1_EEST_EEEDcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Segment_2") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %5 = alloca %class.anon.167, align 8            ; 5 uses
  %6 = alloca %class.anon.166, align 8            ; 4 uses
  %7 = alloca %class.anon.167, align 8            ; 5 uses
  %8 = alloca %class.anon.166, align 8            ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %.sroa.0.i = alloca [2 x %"class.CGAL::Point_2.151"], align 16 ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.CGAL::SegmentC2.252", align 16 ; 7 uses
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
  %i.m = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #39
          to label %bb.b unwind label %bb.e       ; 9 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.n = load ptr, ptr %3, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %4, align 8, !tbaa !34     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.0.i, ptr noundef nonnull align 16 dereferenceable(32) %i.o, i64 32, i1 false)
  %.sroa.0.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.0.32..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(32) %i.q, i64 32, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.r, align 4, !tbaa !238
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.s, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.0.i, i64 64, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store ptr %i.s, ptr %i.t, align 16, !tbaa !633
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  store i32 0, ptr %i.u, align 8, !tbaa !243
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20CommonKernelFunctors19Construct_segment_2IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_15Return_base_tagENS_7Point_2INS_5EpeckEEESX_EEE, i64 16), ptr %i.m, align 16, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  store ptr %i.p, ptr %i.v, align 16, !tbaa !34
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load atomic i32, ptr %i.x monotonic, align 8
  %i.z = add nsw i32 %i.y, 1
  store atomic i32 %i.z, ptr %i.x monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.ab = load ptr, ptr %3, align 8, !tbaa !34    ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !34
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = load atomic i32, ptr %i.ac monotonic, align 4
  %i.ae = add nsw i32 %i.ad, 1
  store atomic i32 %i.ae, ptr %i.ac monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.af = atomicrmw add ptr %i.x, i32 1 monotonic, align 4 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.ah = load ptr, ptr %3, align 8, !tbaa !34    ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !34
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = atomicrmw add ptr %i.ai, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.c, %bb.d
  store ptr %i.m, ptr %0, align 8, !tbaa !34
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
  br label %bb.t

bb.e:                                             ; preds = %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE ; 3 uses
  %.011 = extractvalue { ptr, i32 } %i.an, 1
  %i.ao = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #23
  %i.ap = icmp eq i32 %.011, %i.ao
  br i1 %i.ap, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %.012 = extractvalue { ptr, i32 } %i.an, 0
  %i.aq = call ptr @__cxa_begin_catch(ptr %.012) #23 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.p

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
  %i.au = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #39 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.av = load ptr, ptr %3, align 8, !tbaa !34    ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store ptr %i.av, ptr %8, align 8, !tbaa !520
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %8, ptr %7, align 8, !tbaa !305
  %i.ax = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 6 uses
  store ptr %7, ptr %i.ax, align 8, !tbaa !305
  %i.ay = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 6 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_2INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.ay, align 8, !tbaa !305
  %i.az = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.aw, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.az) #38
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ba = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ax, align 8, !tbaa !305
  store ptr null, ptr %i.ay, align 8, !tbaa !305
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.ax, align 8, !tbaa !305
  store ptr null, ptr %i.ay, align 8, !tbaa !305
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.bc = load atomic ptr, ptr %i.bb monotonic, align 8
  %i.bd = load ptr, ptr %4, align 8, !tbaa !34    ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr %i.bd, ptr %6, align 8, !tbaa !520
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %6, ptr %5, align 8, !tbaa !305
  store ptr %5, ptr %i.ax, align 8, !tbaa !305
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_2INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.ay, align 8, !tbaa !305
  %i.bf = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.be, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i20 unwind label %bb.n ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i20:        ; preds = %bb.k
  %.not.i.i.i.i21 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i.i.i21, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i20
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bf) #38
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bg = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ax, align 8, !tbaa !305
  store ptr null, ptr %i.ay, align 8, !tbaa !305
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %.body

bb.o:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i20
  store ptr null, ptr %i.ax, align 8, !tbaa !305
  store ptr null, ptr %i.ay, align 8, !tbaa !305
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bi = load atomic ptr, ptr %i.bh monotonic, align 8
  invoke void @_ZN4CGAL9SegmentC2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKNS_7Point_2ISF_EESK_(ptr noundef nonnull align 16 dereferenceable(256) %9, ptr noundef nonnull align 16 dereferenceable(128) %i.bc, ptr noundef nonnull align 16 dereferenceable(128) %i.bi)
          to label %_ZNK4CGAL20CommonKernelFunctors19Construct_segment_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclENS_15Return_base_tagERKNS_7Point_2ISG_EESM_.exit unwind label %bb.r

_ZNK4CGAL20CommonKernelFunctors19Construct_segment_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclENS_15Return_base_tagERKNS_7Point_2ISG_EESM_.exit: ; preds = %bb.o
  invoke void @_ZN4CGAL10Lazy_rep_0INS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEC2INS_9SegmentC2ISK_EEEEOT_(ptr noundef nonnull align 16 dereferenceable(96) %i.au, ptr noundef nonnull align 16 dereferenceable(256) %9)
          to label %_ZN4CGAL6HandleD2Ev.exit27 unwind label %bb.s

_ZN4CGAL6HandleD2Ev.exit27:                       ; preds = %_ZNK4CGAL20CommonKernelFunctors19Construct_segment_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclENS_15Return_base_tagERKNS_7Point_2ISG_EESM_.exit
  store ptr %i.au, ptr %0, align 8, !tbaa !34
  call void @_ZNSt5arrayIN4CGAL7Point_2INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEELm2EED2Ev(ptr noundef nonnull align 16 dead_on_return(256) dereferenceable(256) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.t

bb.p:                                             ; preds = %bb.f
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.e
  %.merged19 = phi { ptr, i32 } [ %i.bj, %bb.p ], [ %i.an, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.bk = load i32, ptr %i.a, align 4
  %i.bl = and i32 %i.bk, -24577
  %i.bm = or disjoint i32 %i.bl, %i.i
  store i32 %i.bm, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.u

bb.r:                                             ; preds = %bb.o
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %_ZNK4CGAL20CommonKernelFunctors19Construct_segment_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclENS_15Return_base_tagERKNS_7Point_2ISG_EESM_.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt5arrayIN4CGAL7Point_2INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEELm2EED2Ev(ptr noundef nonnull align 16 dead_on_return(256) dereferenceable(256) %9) #23
  br label %.body

.body:                                            ; preds = %bb.j, %bb.n, %bb.r, %bb.s
  %.pn17 = phi { ptr, i32 } [ %i.bo, %bb.s ], [ %i.ba, %bb.j ], [ %i.bn, %bb.r ], [ %i.bg, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 96) #36
  br label %bb.u

bb.t:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit, %_ZN4CGAL6HandleD2Ev.exit27
  ret void

bb.u:                                             ; preds = %.body, %bb.q
  %.merged = phi { ptr, i32 } [ %.pn17, %.body ], [ %.merged19, %bb.q ]
  resume { ptr, i32 } %.merged
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_0INS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEC2INS_9SegmentC2ISK_EEEEOT_(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(256) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %3 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %4 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %5 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
end_hunk_8
begin_hunk_9_@_ZNK4CGAL10Lazy_rep_nINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20CommonKernelFunctors19Construct_segment_2IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_15Return_base_tagENS_7Point_2INS_5EpeckEEESX_EE19update_exact_helperIJLm0ELm1ELm2EEEEvSt16integer_sequenceImJXspT_EEE:bb.a
  %i.ie = extractvalue { double, double } %i.id, 0
  %i.if = extractvalue { double, double } %i.id, 1
  %i.ig = fneg double %i.ie
  %i.ih = insertelement <2 x double> poison, double %i.ig, i64 0
  %i.ii = insertelement <2 x double> %i.ih, double %i.if, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !951
  %i.ij = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(128) %i.gf), !noalias !951 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !951
  %i.ik = extractvalue { double, double } %i.ij, 0
  %i.il = extractvalue { double, double } %i.ij, 1
  %i.im = fneg double %i.ik
  %i.in = insertelement <2 x double> poison, double %i.im, i64 0
  %i.io = insertelement <2 x double> %i.in, double %i.il, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23, !noalias !951
  %i.ip = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(64) %i.hb), !noalias !951 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23, !noalias !951
  %i.iq = extractvalue { double, double } %i.ip, 0
  %i.ir = extractvalue { double, double } %i.ip, 1
  %i.is = fneg double %i.iq
  %i.it = insertelement <2 x double> poison, double %i.is, i64 0
  %i.iu = insertelement <2 x double> %i.it, double %i.ir, i64 1
  store <2 x double> %i.ic, ptr %i.a, align 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <2 x double> %i.ii, ptr %.sroa.4.0..sroa_idx.i, align 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <2 x double> %i.io, ptr %.sroa.5.0..sroa_idx.i, align 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <2 x double> %i.iu, ptr %.sroa.6.0..sroa_idx.i, align 16
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 80
  store atomic ptr %i.a, ptr %i.iv release, align 16
  %i.iw = load ptr, ptr %i.c, align 8, !tbaa !34  ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i.i.i, label %_ZN4CGAL17lazy_reset_memberINS_7Point_2INS_5EpeckEEEEEvRT_.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt5arrayIN4CGAL7Point_2INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEELm2EEC2EOSI_.exit19
  %i.ix = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ix, 0
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 8 ; 3 uses
  %i.iz = load atomic i32, ptr %i.iy monotonic, align 4 ; 2 uses
  %i.ja = icmp eq i32 %i.iz, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.ja, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.jb = load ptr, ptr %i.iw, align 8, !tbaa !37
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8
  call void %i.jd(ptr noundef nonnull align 8 dereferenceable(12) %i.iw) #23, !inline_history !954
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

bb.as:                                            ; preds = %bb.aq
  %i.je = add nsw i32 %i.iz, -1
  store atomic i32 %i.je, ptr %i.iy monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

bb.at:                                            ; preds = %bb.ap
  br i1 %i.ja, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jf = atomicrmw sub ptr %i.iy, i32 1 release, align 4
  %i.jg = icmp eq i32 %i.jf, 1
  br i1 %i.jg, label %bb.av, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

bb.av:                                            ; preds = %bb.au, %bb.at
  fence acquire
  %i.jh = load ptr, ptr %i.c, align 8, !tbaa !34  ; 3 uses
  %i.ji = icmp eq ptr %i.jh, null
  br i1 %i.ji, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jj = load ptr, ptr %i.jh, align 8, !tbaa !37
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jl = load ptr, ptr %i.jk, align 8
  call void %i.jl(ptr noundef nonnull align 8 dereferenceable(12) %i.jh) #23, !inline_history !954
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i:          ; preds = %bb.aw, %bb.av, %bb.au, %bb.as, %bb.ar
  store ptr null, ptr %i.c, align 8, !tbaa !34
  br label %_ZN4CGAL17lazy_reset_memberINS_7Point_2INS_5EpeckEEEEEvRT_.exit.i.i

_ZN4CGAL17lazy_reset_memberINS_7Point_2INS_5EpeckEEEEEvRT_.exit.i.i: ; preds = %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i, %_ZNSt5arrayIN4CGAL7Point_2INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEELm2EEC2EOSI_.exit19
  %i.jm = load ptr, ptr %i.b, align 16, !tbaa !34 ; 4 uses
  %.not.i.i.i3.i.i = icmp eq ptr %i.jm, null
  br i1 %.not.i.i.i3.i.i, label %_ZN4CGAL17lazy_reset_memberIJNS_15Return_base_tagENS_7Point_2INS_5EpeckEEES4_EEEvRSt5tupleIJDpT_EE.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZN4CGAL17lazy_reset_memberINS_7Point_2INS_5EpeckEEEEEvRT_.exit.i.i
  %i.jn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i4.i.i = icmp eq i8 %i.jn, 0
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 8 ; 3 uses
  %i.jp = load atomic i32, ptr %i.jo monotonic, align 4 ; 2 uses
  %i.jq = icmp eq i32 %i.jp, 1                    ; 2 uses
  br i1 %.not.i.i.i.i4.i.i, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.jq, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.jr = load ptr, ptr %i.jm, align 8, !tbaa !37
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jt = load ptr, ptr %i.js, align 8
  call void %i.jt(ptr noundef nonnull align 8 dereferenceable(12) %i.jm) #23, !inline_history !954
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i5.i.i

bb.ba:                                            ; preds = %bb.ay
  %i.ju = add nsw i32 %i.jp, -1
  store atomic i32 %i.ju, ptr %i.jo monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i5.i.i

bb.bb:                                            ; preds = %bb.ax
  br i1 %i.jq, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jv = atomicrmw sub ptr %i.jo, i32 1 release, align 4
  %i.jw = icmp eq i32 %i.jv, 1
  br i1 %i.jw, label %bb.bd, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i5.i.i

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  fence acquire
  %i.jx = load ptr, ptr %i.b, align 16, !tbaa !34 ; 3 uses
  %i.jy = icmp eq ptr %i.jx, null
  br i1 %i.jy, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i5.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jz = load ptr, ptr %i.jx, align 8, !tbaa !37
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kb = load ptr, ptr %i.ka, align 8
  call void %i.kb(ptr noundef nonnull align 8 dereferenceable(12) %i.jx) #23, !inline_history !954
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i5.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i.i5.i.i:         ; preds = %bb.be, %bb.bd, %bb.bc, %bb.ba, %bb.az
  store ptr null, ptr %i.b, align 16, !tbaa !34
  br label %_ZN4CGAL17lazy_reset_memberIJNS_15Return_base_tagENS_7Point_2INS_5EpeckEEES4_EEEvRSt5tupleIJDpT_EE.exit

_ZN4CGAL17lazy_reset_memberIJNS_15Return_base_tagENS_7Point_2INS_5EpeckEEES4_EEEvRSt5tupleIJDpT_EE.exit: ; preds = %_ZN4CGAL17lazy_reset_memberINS_7Point_2INS_5EpeckEEEEEvRT_.exit.i.i, %_ZN4CGAL6Handle6decrefEv.exit.i.i.i5.i.i
  ret void

bb.bf:                                            ; preds = %bb.i
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.h, %bb.bf
  %.pn = phi { ptr, i32 } [ %i.o, %bb.h ], [ %i.i, %bb.d ], [ %i.kc, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 320) #36
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors17Construct_point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_15Return_base_tagENS_13Lazy_exact_ntISL_EEST_EEEDcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Point_2") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(9) %4) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.CGAL::VectorC2", align 16   ; 25 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %6 = alloca %class.anon.137, align 8            ; 5 uses
  %7 = alloca %class.anon.136, align 8            ; 4 uses
  %8 = alloca %class.anon.137, align 8            ; 5 uses
  %9 = alloca %class.anon.136, align 8            ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %.sroa.03.i.i.i.i = alloca [2 x %"class.CGAL::Interval_nt"], align 16 ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.CGAL::PointC2", align 16   ; 32 uses
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
  %i.m = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #39
          to label %bb.b unwind label %bb.e       ; 9 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i.i.i)
  %i.n = load ptr, ptr %3, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %4, align 8, !tbaa !34     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.03.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.o, i64 16, i1 false)
  %.sroa.03.16..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.03.16..sroa_idx.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.q, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.r, align 4, !tbaa !238
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.s, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.03.i.i.i.i, i64 32, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr null, ptr %i.t, align 16, !tbaa !615
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store i32 0, ptr %i.u, align 8, !tbaa !243
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_23CartesianKernelFunctors17Construct_point_2IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_15Return_base_tagENS_13Lazy_exact_ntISJ_EESW_EEE, i64 16), ptr %i.m, align 16, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store ptr %i.p, ptr %i.v, align 16, !tbaa !34
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load atomic i32, ptr %i.x monotonic, align 8
  %i.z = add nsw i32 %i.y, 1
  store atomic i32 %i.z, ptr %i.x monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.ab = load ptr, ptr %3, align 8, !tbaa !34    ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 16, !tbaa !34
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = load atomic i32, ptr %i.ac monotonic, align 4
  %i.ae = add nsw i32 %i.ad, 1
  store atomic i32 %i.ae, ptr %i.ac monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.af = atomicrmw add ptr %i.x, i32 1 monotonic, align 4 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.ah = load ptr, ptr %3, align 8, !tbaa !34    ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 16, !tbaa !34
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = atomicrmw add ptr %i.ai, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i.i.i)
  store ptr %i.m, ptr %0, align 8, !tbaa !34
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
  br label %bb.af

bb.e:                                             ; preds = %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE ; 3 uses
  %.011 = extractvalue { ptr, i32 } %i.an, 1
  %i.ao = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #23
  %i.ap = icmp eq i32 %.011, %i.ao
  br i1 %i.ap, label %bb.f, label %bb.ac

bb.f:                                             ; preds = %bb.e
  %.012 = extractvalue { ptr, i32 } %i.an, 0
  %i.aq = call ptr @__cxa_begin_catch(ptr %.012) #23 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.ab

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
  %i.au = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #39 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.av = load ptr, ptr %3, align 8, !tbaa !34    ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store ptr %i.av, ptr %9, align 8, !tbaa !302
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store ptr %9, ptr %8, align 8, !tbaa !305
  %i.ax = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 6 uses
  store ptr %8, ptr %i.ax, align 8, !tbaa !305
  %i.ay = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 6 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.ay, align 8, !tbaa !305
  %i.az = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.aw, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.az) #38
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ba = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ax, align 8, !tbaa !305
  store ptr null, ptr %i.ay, align 8, !tbaa !305
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.ax, align 8, !tbaa !305
  store ptr null, ptr %i.ay, align 8, !tbaa !305
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.bc = load atomic ptr, ptr %i.bb monotonic, align 8
  %i.bd = load ptr, ptr %4, align 8, !tbaa !34    ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %i.bd, ptr %7, align 8, !tbaa !302
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr %7, ptr %6, align 8, !tbaa !305
  store ptr %6, ptr %i.ax, align 8, !tbaa !305
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.ay, align 8, !tbaa !305
  %i.bf = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.be, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i20 unwind label %bb.n ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i20:        ; preds = %bb.k
  %.not.i.i.i.i21 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i.i.i21, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i20
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bf) #38
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bg = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ax, align 8, !tbaa !305
  store ptr null, ptr %i.ay, align 8, !tbaa !305
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %.body

bb.o:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i20
  store ptr null, ptr %i.ax, align 8, !tbaa !305
  store ptr null, ptr %i.ay, align 8, !tbaa !305
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bi = load atomic ptr, ptr %i.bh monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(128) %5, ptr noundef nonnull align 16 dereferenceable(64) %i.bc)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.bj, ptr noundef nonnull align 16 dereferenceable(64) %i.bi)
          to label %_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclENS_15Return_base_tagERKSF_SK_.exit.i unwind label %bb.p

bb.p:                                             ; preds = %.noexc
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(128) %5) #23
  br label %.body

_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclENS_15Return_base_tagERKSF_SK_.exit.i: ; preds = %.noexc
  store i64 0, ptr %10, align 16, !tbaa !33
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bn = load i64, ptr %i.bm, align 16, !tbaa !333 ; 2 uses
  store i64 %i.bn, ptr %i.bl, align 16, !tbaa !333
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !341, !range !13, !noundef !14
  store i8 %i.bq, ptr %i.bo, align 8, !tbaa !341
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 25 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 25
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !9, !range !13, !noundef !14 ; 2 uses
  store i8 %i.bt, ptr %i.br, align 1, !tbaa !9
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 26 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 26
  %i.bw = load i8, ptr %i.bv, align 2, !tbaa !342, !range !13, !noundef !14
  store i8 %i.bw, ptr %i.bu, align 2, !tbaa !342
  %i.bx = trunc nuw i8 %i.bt to i1
  br i1 %i.bx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclENS_15Return_base_tagERKSF_SK_.exit.i
  %i.by = shl i64 %i.bn, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(128) %10, ptr nonnull align 16 dereferenceable(128) %5, i64 %i.by, i1 false)
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.i.i.i

bb.r:                                             ; preds = %_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclENS_15Return_base_tagERKSF_SK_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %10, ptr noundef nonnull align 16 dereferenceable(128) %5, i64 16, i1 false), !tbaa.struct !404
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.i.i.i: ; preds = %bb.r, %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store i64 0, ptr %i.bz, align 16, !tbaa !33
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.cd = load i64, ptr %i.cc, align 16, !tbaa !333 ; 2 uses
  store i64 %i.cd, ptr %i.cb, align 16, !tbaa !333
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !341, !range !13, !noundef !14
  store i8 %i.cg, ptr %i.ce, align 8, !tbaa !341
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 57 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 57
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !9, !range !13, !noundef !14 ; 2 uses
  store i8 %i.cj, ptr %i.ch, align 1, !tbaa !9
  %i.ck = getelementptr inbounds nuw i8, ptr %10, i64 58 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 58
end_hunk_9
begin_hunk_10_@_ZNK4CGAL14Lazy_exact_AddIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E12update_exactEv:bb.a
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail14add_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit unwind label %bb.j

bb.j:                                             ; preds = %.noexc
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %i.a) #23
  br label %.body

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail14add_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit: ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load double, ptr %i.t, align 8, !tbaa !33
  %i.v = load <2 x double>, ptr %i.s, align 16, !tbaa !33
  %i.w = extractelement <2 x double> %i.v, i64 0
  %i.x = fneg double %i.w
  %i.y = fcmp oeq double %i.u, %i.x
  br i1 %i.y, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail14add_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.z = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(64) %i.a) ; 2 uses
  %i.aa = extractvalue { double, double } %i.z, 0
  %i.ab = extractvalue { double, double } %i.z, 1
  %i.ac = fneg double %i.aa
  %i.ad = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %i.ab, i64 1
  store <2 x double> %i.ae, ptr %i.s, align 16, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.j, %bb.l, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.o, %bb.h ], [ %i.af, %bb.l ], [ %i.r, %bb.j ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #36
  resume { ptr, i32 } %eh.lpad-body

bb.m:                                             ; preds = %bb.k, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail14add_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic ptr %i.a, ptr %i.ag release, align 16
  %i.ah = load ptr, ptr %i.b, align 16, !tbaa !34 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %_ZN4CGAL6Handle5resetEv.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i12 = icmp eq i8 %i.ai, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.ak = load atomic i32, ptr %i.aj monotonic, align 4 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 1                    ; 2 uses
  br i1 %.not.i.i.i12, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.al, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !37
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(12) %i.ah) #23, !inline_history !513
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.ap = add nsw i32 %i.ak, -1
  store atomic i32 %i.ap, ptr %i.aj monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.r:                                             ; preds = %bb.n
  br i1 %i.al, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = atomicrmw sub ptr %i.aj, i32 1 release, align 4
  %i.ar = icmp eq i32 %i.aq, 1
  br i1 %i.ar, label %bb.t, label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.t:                                             ; preds = %bb.s, %bb.r
  fence acquire
  %i.as = load ptr, ptr %i.b, align 16, !tbaa !34 ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_ZN4CGAL6Handle6decrefEv.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !37
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(12) %i.as) #23, !inline_history !513
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i:                ; preds = %bb.u, %bb.t, %bb.s, %bb.q, %bb.p
  store ptr null, ptr %i.b, align 16, !tbaa !34
  br label %_ZN4CGAL6Handle5resetEv.exit.i

_ZN4CGAL6Handle5resetEv.exit.i:                   ; preds = %_ZN4CGAL6Handle6decrefEv.exit.i.i, %bb.m
  %i.ax = load ptr, ptr %i.k, align 16, !tbaa !34 ; 4 uses
  %.not.i1.i = icmp eq ptr %i.ax, null
  br i1 %.not.i1.i, label %_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit, label %bb.v

bb.v:                                             ; preds = %_ZN4CGAL6Handle5resetEv.exit.i
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i2.i = icmp eq i8 %i.ay, 0
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.ba = load atomic i32, ptr %i.az monotonic, align 4 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 1                    ; 2 uses
  br i1 %.not.i.i2.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %i.bb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bc = load ptr, ptr %i.ax, align 8, !tbaa !37
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(12) %i.ax) #23, !inline_history !513
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

bb.y:                                             ; preds = %bb.w
  %i.bf = add nsw i32 %i.ba, -1
  store atomic i32 %i.bf, ptr %i.az monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

bb.z:                                             ; preds = %bb.v
  br i1 %i.bb, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bg = atomicrmw sub ptr %i.az, i32 1 release, align 4
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %bb.ab, label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

bb.ab:                                            ; preds = %bb.aa, %bb.z
  fence acquire
  %i.bi = load ptr, ptr %i.k, align 16, !tbaa !34 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_ZN4CGAL6Handle6decrefEv.exit.i3.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !37
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(12) %i.bi) #23, !inline_history !513
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

_ZN4CGAL6Handle6decrefEv.exit.i3.i:               ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.x
  store ptr null, ptr %i.k, align 16, !tbaa !34
  br label %_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit

_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit: ; preds = %_ZN4CGAL6Handle5resetEv.exit.i, %_ZN4CGAL6Handle6decrefEv.exit.i3.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors18Construct_vector_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb1EEclIJNS_15Return_base_tagENS_13Lazy_exact_ntISL_EEST_EEEDcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Vector_2") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(9) %4) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %5 = alloca %class.anon.137, align 8            ; 5 uses
  %6 = alloca %class.anon.136, align 8            ; 4 uses
  %7 = alloca %class.anon.137, align 8            ; 5 uses
  %8 = alloca %class.anon.136, align 8            ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %.sroa.0.i = alloca [2 x %"class.CGAL::Interval_nt"], align 16 ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.CGAL::VectorC2", align 16   ; 23 uses
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
  %i.m = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #39
          to label %bb.b unwind label %bb.e       ; 9 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.n = load ptr, ptr %3, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %4, align 8, !tbaa !34     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 16 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !424
  %.sroa.0.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.16..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !424
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.r, align 4, !tbaa !238
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.s, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.0.i, i64 32, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.s, ptr %i.t, align 16, !tbaa !907
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store i32 0, ptr %i.u, align 8, !tbaa !243
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_8Vector_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_23CartesianKernelFunctors18Construct_vector_2IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_15Return_base_tagENS_13Lazy_exact_ntISJ_EESW_EEE, i64 16), ptr %i.m, align 16, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store ptr %i.p, ptr %i.v, align 16, !tbaa !34
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load atomic i32, ptr %i.x monotonic, align 8
  %i.z = add nsw i32 %i.y, 1
  store atomic i32 %i.z, ptr %i.x monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.ab = load ptr, ptr %3, align 8, !tbaa !34    ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 16, !tbaa !34
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = load atomic i32, ptr %i.ac monotonic, align 4
  %i.ae = add nsw i32 %i.ad, 1
  store atomic i32 %i.ae, ptr %i.ac monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.af = atomicrmw add ptr %i.x, i32 1 monotonic, align 4 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.ah = load ptr, ptr %3, align 8, !tbaa !34    ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 16, !tbaa !34
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = atomicrmw add ptr %i.ai, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.c, %bb.d
  store ptr %i.m, ptr %0, align 8, !tbaa !34
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
  br label %bb.y

bb.e:                                             ; preds = %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE ; 3 uses
  %.011 = extractvalue { ptr, i32 } %i.an, 1
  %i.ao = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #23
  %i.ap = icmp eq i32 %.011, %i.ao
  br i1 %i.ap, label %bb.f, label %bb.v

bb.f:                                             ; preds = %bb.e
  %.012 = extractvalue { ptr, i32 } %i.an, 0
  %i.aq = call ptr @__cxa_begin_catch(ptr %.012) #23 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.u

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
  %i.au = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #39 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.av = load ptr, ptr %3, align 8, !tbaa !34    ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store ptr %i.av, ptr %8, align 8, !tbaa !302
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %8, ptr %7, align 8, !tbaa !305
  %i.ax = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 6 uses
  store ptr %7, ptr %i.ax, align 8, !tbaa !305
  %i.ay = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 6 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.ay, align 8, !tbaa !305
  %i.az = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.aw, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.az) #38
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ba = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ax, align 8, !tbaa !305
  store ptr null, ptr %i.ay, align 8, !tbaa !305
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.ax, align 8, !tbaa !305
  store ptr null, ptr %i.ay, align 8, !tbaa !305
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.bc = load atomic ptr, ptr %i.bb monotonic, align 8
  %i.bd = load ptr, ptr %4, align 8, !tbaa !34    ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr %i.bd, ptr %6, align 8, !tbaa !302
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %6, ptr %5, align 8, !tbaa !305
  store ptr %5, ptr %i.ax, align 8, !tbaa !305
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.ay, align 8, !tbaa !305
  %i.bf = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.be, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i20 unwind label %bb.n ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i20:        ; preds = %bb.k
  %.not.i.i.i.i21 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i.i.i21, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i20
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bf) #38
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bg = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ax, align 8, !tbaa !305
  store ptr null, ptr %i.ay, align 8, !tbaa !305
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %.body

bb.o:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i20
  store ptr null, ptr %i.ax, align 8, !tbaa !305
  store ptr null, ptr %i.ay, align 8, !tbaa !305
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bi = load atomic ptr, ptr %i.bh monotonic, align 8
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(128) %9, ptr noundef nonnull align 16 dereferenceable(64) %i.bc)
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.bj, ptr noundef nonnull align 16 dereferenceable(64) %i.bi)
          to label %_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclENS_15Return_base_tagERKSF_SK_.exit unwind label %bb.p

bb.p:                                             ; preds = %.noexc
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(128) %9) #23
  br label %.body

_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclENS_15Return_base_tagERKSF_SK_.exit: ; preds = %.noexc
  invoke void @_ZN4CGAL10Lazy_rep_0INS_8Vector_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEC2INS_8VectorC2ISK_EEEEOT_(ptr noundef nonnull align 16 dereferenceable(64) %i.au, ptr noundef nonnull align 16 dereferenceable(128) %9)
          to label %_ZN4CGAL6HandleD2Ev.exit29 unwind label %bb.x

_ZN4CGAL6HandleD2Ev.exit29:                       ; preds = %_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclENS_15Return_base_tagERKSF_SK_.exit
  store ptr %i.au, ptr %0, align 8, !tbaa !34
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 121
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !9, !range !13, !noundef !14
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 122
  %i.bp = load i8, ptr %i.bo, align 2, !range !13
  %i.bq = trunc nuw i8 %i.bp to i1
  %or.cond.i1.i.i.i.i = select i1 %i.bn, i1 true, i1 %i.bq
  br i1 %or.cond.i1.i.i.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit29
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = load i64, ptr %i.br, align 16
  %i.bv = shl i64 %i.bu, 3
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bv) #36
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i: ; preds = %bb.q, %_ZN4CGAL6HandleD2Ev.exit29
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 89
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !9, !range !13, !noundef !14
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 90
  %i.ca = load i8, ptr %i.bz, align 2, !range !13
  %i.cb = trunc nuw i8 %i.ca to i1
  %or.cond.i.i.i.i.i = select i1 %i.by, i1 true, i1 %i.cb
  br i1 %or.cond.i.i.i.i.i, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = load i64, ptr %i.bj, align 16
  %i.cf = shl i64 %i.ce, 3
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cf) #36
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i: ; preds = %bb.r, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 57
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !9, !range !13, !noundef !14
  %i.ci = trunc nuw i8 %i.ch to i1
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 58
  %i.ck = load i8, ptr %i.cj, align 2, !range !13
  %i.cl = trunc nuw i8 %i.ck to i1
  %or.cond.i1.i.i.1.i.i = select i1 %i.ci, i1 true, i1 %i.cl
end_hunk_10
