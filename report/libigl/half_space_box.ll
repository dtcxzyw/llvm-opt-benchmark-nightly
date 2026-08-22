Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/half_space_box?download=true
inline.NumInlined: 5732
inline.NumDeleted: 1668
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN4CGAL17Boost_MP_internal11to_intervalIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEENS4_ISB_LSD_1EEEEESt4pairIddET0_SI_:bb.a
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
  %i.ea = call double @ldexp(double noundef 1.000000e+00, i32 noundef %i.dx) #23
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
  %i.eh = call double @ldexp(double noundef 1.000000e+00, i32 noundef %i.ee) #23 ; 2 uses
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
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.et) #33
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
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
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fb) #33
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit69

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit69: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
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
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fj) #33
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit71

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit71: ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
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
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fr) #33
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit73

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit73: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit71, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %common.resume

bb.ap:                                            ; preds = %_ZN4CGAL7is_zeroIN5boost14multiprecision6numberINS2_8backends15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEELNS2_26expression_template_optionE1EEEEENSt11conditionalIXsr3stdE9is_same_vINS_26Algebraic_structure_traitsIT_E7Is_zeroENS_12Null_functorEEENS_22Real_embeddable_traitsISE_E7Is_zeroESG_E4type11result_typeERKSE_.exit, %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit69
  %.pn46 = phi { double, double } [ %.fca.1.insert.i67, %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit69 ], [ zeroinitializer, %_ZN4CGAL7is_zeroIN5boost14multiprecision6numberINS2_8backends15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEELNS2_26expression_template_optionE1EEEEENSt11conditionalIXsr3stdE9is_same_vINS_26Algebraic_structure_traitsIT_E7Is_zeroENS_12Null_functorEEENS_22Real_embeddable_traitsISE_E7Is_zeroESG_E4type11result_typeERKSE_.exit ]
  ret { double, double } %.pn46
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL20Lazy_construction_ntINS_5EpeckENS_23CartesianKernelFunctors11Compute_z_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclIJNS_8Vector_3IS1_EEEEENS_13Lazy_exact_ntINSt9remove_cvINSt16remove_referenceIDTcldtdefpT2ecspclsr4CGALE5exactfp_EEEE4typeEE4typeEEEDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Lazy_exact_nt") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %4 = alloca %class.anon.193, align 8            ; 5 uses
  %5 = alloca %class.anon.192, align 8            ; 4 uses
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
  %i.m = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34
          to label %bb.b unwind label %bb.e       ; 7 uses

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.p = load atomic ptr, ptr %i.o acquire, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.r, align 4, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.s, ptr noundef nonnull align 16 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !1550
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.t, align 16, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 0, ptr %i.u, align 8, !tbaa !24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_z_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEEE, i64 16), ptr %i.m, align 16, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.w = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  store ptr %i.w, ptr %i.v, align 16, !tbaa !36
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.x, 0
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = load atomic i32, ptr %i.y monotonic, align 4
  %i.aa = add nsw i32 %i.z, 1
  store atomic i32 %i.aa, ptr %i.y monotonic, align 4
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_z_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = atomicrmw add ptr %i.y, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_z_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_z_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit: ; preds = %bb.d, %bb.c
  store ptr %i.m, ptr %0, align 8, !tbaa !36
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
  %i.am = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #34 ; 8 uses
  %i.an = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %i.an, ptr %5, align 8, !tbaa !1629
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %5, ptr %4, align 8, !tbaa !1600
  %i.ap = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %4, ptr %i.ap, align 8, !tbaa !1600
  %i.aq = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_8Vector_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.aq, align 8, !tbaa !1600
  %i.ar = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ar) #35
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.as = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ap, align 8, !tbaa !1600
  store ptr null, ptr %i.aq, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.ap, align 8, !tbaa !1600
  store ptr null, ptr %i.aq, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.au = load atomic ptr, ptr %i.at monotonic, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 176 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.aw = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(64) %i.av)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %bb.k
  %i.ax = extractvalue { double, double } %i.aw, 0
  %i.ay = extractvalue { double, double } %i.aw, 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 1, ptr %i.az, align 4, !tbaa !17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %i.am, align 16, !tbaa !26
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.bb = fneg double %i.ax
  %i.bc = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %i.ay, i64 1
  store <2 x double> %i.bd, ptr %i.ba, align 16, !tbaa !19
  %i.be = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34
          to label %.noexc13 unwind label %bb.p   ; 3 uses

.noexc13:                                         ; preds = %.noexc
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.be, ptr noundef nonnull align 16 dereferenceable(64) %i.av)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %.noexc13
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef 64) #33
  br label %.body

bb.m:                                             ; preds = %.noexc13
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store ptr %i.be, ptr %i.bg, align 16, !tbaa !20
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store i32 0, ptr %i.bh, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_0INS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEEE, i64 16), ptr %i.am, align 16, !tbaa !26
  store ptr %i.am, ptr %0, align 8, !tbaa !36
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
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef 48) #33
  br label %bb.r

bb.q:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_z_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit, %bb.m
  ret void

bb.r:                                             ; preds = %.body, %bb.o
  %.merged = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.merged12, %bb.o ]
  resume { ptr, i32 } %.merged
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #29

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_z_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(56) dereferenceable(64) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !36  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL8Vector_3INS0_5EpeckEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e
end_hunk_0
begin_hunk_1_@_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_z_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE:bb.a

bb.f:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.w = load atomic i32, ptr %i.v monotonic, align 4 ; 2 uses
  %i.x = icmp eq i32 %i.w, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(12) %i.t) #23, !inline_history !1635
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
  %i.ae = load ptr, ptr %i.b, align 16, !tbaa !36 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(12) %i.ae) #23, !inline_history !1635
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i:          ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.h
  store ptr null, ptr %i.b, align 16, !tbaa !36
  br label %_ZN4CGAL17lazy_reset_memberIJNS_8Vector_3INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit

_ZN4CGAL17lazy_reset_memberIJNS_8Vector_3INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit, %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i
  ret void

bb.n:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.n ], [ %i.h, %bb.d ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #33
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_8Vector_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv() #11 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1600
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1636, !nonnull !14, !align !1606
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1629 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 16 dereferenceable(76) %i.d), !inline_history !1638
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_0INS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEED0Ev(ptr noundef nonnull align 16 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %0, align 16, !tbaa !26
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
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.m) #33, !inline_history !1633
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
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.w) #33, !inline_history !1633
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i: ; preds = %bb.d, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 64) #33, !inline_history !1633
  br label %_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev.exit

_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev.exit: ; preds = %bb.a, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_0INS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE12update_exactEv(ptr noundef nonnull align 16 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load atomic ptr, ptr %i.a monotonic, align 16
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34 ; 3 uses
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
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 64) #33
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL20Lazy_construction_ntINS_5EpeckENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclIJNS_8Vector_3IS1_EEEEENS_13Lazy_exact_ntINSt9remove_cvINSt16remove_referenceIDTcldtdefpT2ecspclsr4CGALE5exactfp_EEEE4typeEE4typeEEEDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Lazy_exact_nt") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %4 = alloca %class.anon.193, align 8            ; 5 uses
  %5 = alloca %class.anon.192, align 8            ; 4 uses
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
  %i.m = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34
          to label %bb.b unwind label %bb.e       ; 7 uses

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.p = load atomic ptr, ptr %i.o acquire, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.q, align 4, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.r, ptr noundef nonnull align 16 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !1550
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.s, align 16, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 0, ptr %i.t, align 8, !tbaa !24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEEE, i64 16), ptr %i.m, align 16, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.v = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  store ptr %i.v, ptr %i.u, align 16, !tbaa !36
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load atomic i32, ptr %i.x monotonic, align 4
  %i.z = add nsw i32 %i.y, 1
  store atomic i32 %i.z, ptr %i.x monotonic, align 4
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = atomicrmw add ptr %i.x, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit: ; preds = %bb.d, %bb.c
  store ptr %i.m, ptr %0, align 8, !tbaa !36
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
  %i.al = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #34 ; 8 uses
  %i.am = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %i.am, ptr %5, align 8, !tbaa !1629
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %5, ptr %4, align 8, !tbaa !1600
  %i.ao = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %4, ptr %i.ao, align 8, !tbaa !1600
  %i.ap = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_8Vector_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.ap, align 8, !tbaa !1600
  %i.aq = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.an, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.aq) #35
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ao, align 8, !tbaa !1600
  store ptr null, ptr %i.ap, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.ao, align 8, !tbaa !1600
  store ptr null, ptr %i.ap, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.at = load atomic ptr, ptr %i.as monotonic, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.av = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(64) %i.au)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %bb.k
  %i.aw = extractvalue { double, double } %i.av, 0
  %i.ax = extractvalue { double, double } %i.av, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 1, ptr %i.ay, align 4, !tbaa !17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %i.al, align 16, !tbaa !26
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ba = fneg double %i.aw
  %i.bb = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.ax, i64 1
  store <2 x double> %i.bc, ptr %i.az, align 16, !tbaa !19
  %i.bd = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34
          to label %.noexc13 unwind label %bb.p   ; 3 uses

.noexc13:                                         ; preds = %.noexc
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.bd, ptr noundef nonnull align 16 dereferenceable(64) %i.au)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %.noexc13
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef 64) #33
  br label %.body

bb.m:                                             ; preds = %.noexc13
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store ptr %i.bd, ptr %i.bf, align 16, !tbaa !20
  %i.bg = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store i32 0, ptr %i.bg, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_0INS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEEE, i64 16), ptr %i.al, align 16, !tbaa !26
  store ptr %i.al, ptr %0, align 8, !tbaa !36
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
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 48) #33
  br label %bb.r

bb.q:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit, %bb.m
  ret void

bb.r:                                             ; preds = %.body, %bb.o
  %.merged = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.merged12, %bb.o ]
  resume { ptr, i32 } %.merged
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(56) dereferenceable(64) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !36  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL8Vector_3INS0_5EpeckEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
end_hunk_1
begin_hunk_2_@_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEED0Ev:bb.a
  %i.ai = load i8, ptr %i.ah, align 2, !range !13
  %i.aj = trunc nuw i8 %i.ai to i1
  %or.cond.i.i.i.i.i = select i1 %i.ag, i1 true, i1 %i.aj
  br i1 %or.cond.i.i.i.i.i, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = load i64, ptr %i.s, align 16
  %i.an = shl i64 %i.am, 3
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.an) #33, !inline_history !1633
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i: ; preds = %bb.l, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 64) #33, !inline_history !1633
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEED2Ev.exit

_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0EN4CGAL8Vector_3INS0_5EpeckEEELb0EED2Ev.exit.i, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEE12update_exactEv(ptr noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 16 dereferenceable(64) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 16 dereferenceable(64) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %2 = alloca %class.anon.193, align 8            ; 5 uses
  %3 = alloca %class.anon.192, align 8            ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !36  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.c, ptr %3, align 8, !tbaa !1629
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %3, ptr %2, align 8, !tbaa !1600
  %i.e = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %2, ptr %i.e, align 8, !tbaa !1600
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_8Vector_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !1600
  %i.g = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.g) #35
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !1600
  store ptr null, ptr %i.f, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.body

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.e, align 8, !tbaa !1600
  store ptr null, ptr %i.f, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
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
  store <2 x double> %i.q, ptr %i.r, align 16, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic ptr %i.a, ptr %i.s release, align 16
  %i.t = load ptr, ptr %i.b, align 16, !tbaa !36  ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %_ZN4CGAL17lazy_reset_memberIJNS_8Vector_3INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.w = load atomic i32, ptr %i.v monotonic, align 4 ; 2 uses
  %i.x = icmp eq i32 %i.w, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(12) %i.t) #23, !inline_history !1635
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
  %i.ae = load ptr, ptr %i.b, align 16, !tbaa !36 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(12) %i.ae) #23, !inline_history !1635
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i:          ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.h
  store ptr null, ptr %i.b, align 16, !tbaa !36
  br label %_ZN4CGAL17lazy_reset_memberIJNS_8Vector_3INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit

_ZN4CGAL17lazy_reset_memberIJNS_8Vector_3INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit, %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i
  ret void

bb.n:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.n ], [ %i.h, %bb.d ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #33
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL20Lazy_construction_ntINS_5EpeckENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclIJNS_8Vector_3IS1_EEEEENS_13Lazy_exact_ntINSt9remove_cvINSt16remove_referenceIDTcldtdefpT2ecspclsr4CGALE5exactfp_EEEE4typeEE4typeEEEDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Lazy_exact_nt") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %4 = alloca %class.anon.193, align 8            ; 5 uses
  %5 = alloca %class.anon.192, align 8            ; 4 uses
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
  %i.m = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34
          to label %bb.b unwind label %bb.e       ; 7 uses

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.p = load atomic ptr, ptr %i.o acquire, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.r, align 4, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.s, ptr noundef nonnull align 16 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !1550
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.t, align 16, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 0, ptr %i.u, align 8, !tbaa !24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEEE, i64 16), ptr %i.m, align 16, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.w = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  store ptr %i.w, ptr %i.v, align 16, !tbaa !36
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.x, 0
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = load atomic i32, ptr %i.y monotonic, align 4
  %i.aa = add nsw i32 %i.z, 1
  store atomic i32 %i.aa, ptr %i.y monotonic, align 4
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = atomicrmw add ptr %i.y, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit: ; preds = %bb.d, %bb.c
  store ptr %i.m, ptr %0, align 8, !tbaa !36
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
  %i.am = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #34 ; 8 uses
  %i.an = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %i.an, ptr %5, align 8, !tbaa !1629
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %5, ptr %4, align 8, !tbaa !1600
  %i.ap = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %4, ptr %i.ap, align 8, !tbaa !1600
  %i.aq = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_8Vector_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.aq, align 8, !tbaa !1600
  %i.ar = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ar) #35
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.as = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ap, align 8, !tbaa !1600
  store ptr null, ptr %i.aq, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.ap, align 8, !tbaa !1600
  store ptr null, ptr %i.aq, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.au = load atomic ptr, ptr %i.at monotonic, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 112 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.aw = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(64) %i.av)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %bb.k
  %i.ax = extractvalue { double, double } %i.aw, 0
  %i.ay = extractvalue { double, double } %i.aw, 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 1, ptr %i.az, align 4, !tbaa !17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %i.am, align 16, !tbaa !26
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.bb = fneg double %i.ax
  %i.bc = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %i.ay, i64 1
  store <2 x double> %i.bd, ptr %i.ba, align 16, !tbaa !19
  %i.be = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34
          to label %.noexc13 unwind label %bb.p   ; 3 uses

.noexc13:                                         ; preds = %.noexc
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.be, ptr noundef nonnull align 16 dereferenceable(64) %i.av)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %.noexc13
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef 64) #33
  br label %.body

bb.m:                                             ; preds = %.noexc13
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store ptr %i.be, ptr %i.bg, align 16, !tbaa !20
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store i32 0, ptr %i.bh, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_0INS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEEE, i64 16), ptr %i.am, align 16, !tbaa !26
  store ptr %i.am, ptr %0, align 8, !tbaa !36
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
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef 48) #33
  br label %bb.r

bb.q:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit, %bb.m
  ret void

bb.r:                                             ; preds = %.body, %bb.o
  %.merged = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.merged12, %bb.o ]
  resume { ptr, i32 } %.merged
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(56) dereferenceable(64) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !36  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL8Vector_3INS0_5EpeckEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
end_hunk_2
begin_hunk_3_@_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.y = load i8, ptr %i.x, align 1, !tbaa !9, !range !13, !noundef !14
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.ab = load i8, ptr %i.aa, align 2, !range !13
  %i.ac = trunc nuw i8 %i.ab to i1
  %or.cond.i1.i.i.1 = select i1 %i.z, i1 true, i1 %i.ac
  br i1 %or.cond.i1.i.i.1, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1, label %bb.d

bb.d:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = load i64, ptr %i.ad, align 16
  %i.ah = shl i64 %i.ag, 3
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ah) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1: ; preds = %bb.d, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !9, !range !13, !noundef !14
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.am = load i8, ptr %i.al, align 2, !range !13
  %i.an = trunc nuw i8 %i.am to i1
  %or.cond.i.i.i.1 = select i1 %i.ak, i1 true, i1 %i.an
  br i1 %or.cond.i.i.i.1, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.1, label %bb.e

bb.e:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = load i64, ptr %i.w, align 16
  %i.ar = shl i64 %i.aq, 3
  tail call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.ar) #33
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.1

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.1: ; preds = %bb.e, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.at = load i8, ptr %i.as, align 1, !tbaa !9, !range !13, !noundef !14
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.aw = load i8, ptr %i.av, align 2, !range !13
  %i.ax = trunc nuw i8 %i.aw to i1
  %or.cond.i1.i.i.2 = select i1 %i.au, i1 true, i1 %i.ax
  br i1 %or.cond.i1.i.i.2, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.2, label %bb.f

bb.f:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.1
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load i64, ptr %i.ay, align 16
  %i.bc = shl i64 %i.bb, 3
  tail call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bc) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.2

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.2: ; preds = %bb.f, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.1
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !9, !range !13, !noundef !14
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.bh = load i8, ptr %i.bg, align 2, !range !13
  %i.bi = trunc nuw i8 %i.bh to i1
  %or.cond.i.i.i.2 = select i1 %i.bf, i1 true, i1 %i.bi
  br i1 %or.cond.i.i.i.2, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.2, label %bb.g

bb.g:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.2
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load i64, ptr %0, align 16
  %i.bm = shl i64 %i.bl, 3
  tail call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bm) #33
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.2

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.2: ; preds = %bb.g, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.2
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_0INS_8Vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEED0Ev(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_8Vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EEE, i64 16), ptr %0, align 16, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load atomic ptr, ptr %i.a monotonic, align 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i, label %_ZN4CGAL8Lazy_repINS_8Vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  fence acquire
  %i.d = icmp eq ptr %i.b, null
  br i1 %i.d, label %_ZN4CGAL8Lazy_repINS_8Vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %i.e) #23, !inline_history !1678
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 240) #33, !inline_history !1678
  br label %_ZN4CGAL8Lazy_repINS_8Vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EED2Ev.exit

_ZN4CGAL8Lazy_repINS_8Vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_0INS_8Vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEE12update_exactEv(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load atomic ptr, ptr %i.a monotonic, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #34 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(192) %i.f)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  %.ptr.1.i.i.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(64) %.ptr.1.i.i.i.ptr.i)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2Ev.exit.1.i.i.i.i unwind label %.preheader.preheader.i.i.i.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2Ev.exit.1.i.i.i.i: ; preds = %.noexc
  %.ptr.2.i.i.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(64) %.ptr.2.i.i.i.ptr.i)
          to label %_ZN4CGAL10AT_ET_wrapINS_8Vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEEEC2Ev.exit unwind label %.preheader.preheader.i.i.i.i

.preheader.preheader.i.i.i.i:                     ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2Ev.exit.1.i.i.i.i, %.noexc
  %.ptr.lcssa.ph.i.i.i.idx.i = phi i64 [ 176, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2Ev.exit.1.i.i.i.i ], [ 112, %.noexc ]
  %lpad.thr_comm.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i, %.preheader.preheader.i.i.i.i
  %.idx.i = phi i64 [ %.add.i, %.preheader.i.i.i.i ], [ %.ptr.lcssa.ph.i.i.i.idx.i, %.preheader.preheader.i.i.i.i ]
  %.add.i = add nsw i64 %.idx.i, -64              ; 3 uses
  %.ptr1.i = getelementptr inbounds i8, ptr %i.e, i64 %.add.i
  tail call void @_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %.ptr1.i) #23
  %i.g = icmp eq i64 %.add.i, 48
  br i1 %i.g, label %.body, label %.preheader.i.i.i.i

_ZN4CGAL10AT_ET_wrapINS_8Vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEEEC2Ev.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2Ev.exit.1.i.i.i.i
  store atomic ptr %i.e, ptr %i.a release, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZN4CGAL10AT_ET_wrapINS_8Vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEEEC2Ev.exit
  ret void

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.preheader.i.i.i.i, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %lpad.thr_comm.i.i.i.i, %.preheader.i.i.i.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 240) #33
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL20Lazy_construction_ntINS_5EpeckENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclIJNS_7Point_3IS1_EEEEENS_13Lazy_exact_ntINSt9remove_cvINSt16remove_referenceIDTcldtdefpT2ecspclsr4CGALE5exactfp_EEEE4typeEE4typeEEEDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Lazy_exact_nt") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %4 = alloca %class.anon.244, align 8            ; 5 uses
  %5 = alloca %class.anon.243, align 8            ; 4 uses
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
  %i.m = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34
          to label %bb.b unwind label %bb.e       ; 7 uses

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !36     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.p, align 4, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.q, ptr noundef nonnull align 16 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !1550
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.r, align 16, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 0, ptr %i.s, align 8, !tbaa !24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEEE, i64 16), ptr %i.m, align 16, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.n, ptr %i.t, align 16, !tbaa !36
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load atomic i32, ptr %i.v monotonic, align 8
  %i.x = add nsw i32 %i.w, 1
  store atomic i32 %i.x, ptr %i.v monotonic, align 8
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.y = atomicrmw add ptr %i.v, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit: ; preds = %bb.d, %bb.c
  store ptr %i.m, ptr %0, align 8, !tbaa !36
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
  %i.aj = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #34 ; 8 uses
  %i.ak = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %i.ak, ptr %5, align 8, !tbaa !1717
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %5, ptr %4, align 8, !tbaa !1600
  %i.am = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %4, ptr %i.am, align 8, !tbaa !1600
  %i.an = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.an, align 8, !tbaa !1600
  %i.ao = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ao) #35
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.am, align 8, !tbaa !1600
  store ptr null, ptr %i.an, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.am, align 8, !tbaa !1600
  store ptr null, ptr %i.an, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.ar = load atomic ptr, ptr %i.aq monotonic, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.as = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(64) %i.ar)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %bb.k
  %i.at = extractvalue { double, double } %i.as, 0
  %i.au = extractvalue { double, double } %i.as, 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 1, ptr %i.av, align 4, !tbaa !17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %i.aj, align 16, !tbaa !26
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ax = fneg double %i.at
  %i.ay = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %i.au, i64 1
  store <2 x double> %i.az, ptr %i.aw, align 16, !tbaa !19
  %i.ba = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34
          to label %.noexc13 unwind label %bb.p   ; 3 uses

.noexc13:                                         ; preds = %.noexc
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.ba, ptr noundef nonnull align 16 dereferenceable(64) %i.ar)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %.noexc13
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 64) #33
  br label %.body

bb.m:                                             ; preds = %.noexc13
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.ba, ptr %i.bc, align 16, !tbaa !20
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store i32 0, ptr %i.bd, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_0INS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEEE, i64 16), ptr %i.aj, align 16, !tbaa !26
  store ptr %i.aj, ptr %0, align 8, !tbaa !36
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
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 48) #33
  br label %bb.r

bb.q:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit, %bb.m
  ret void

bb.r:                                             ; preds = %.body, %bb.o
  %.merged = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.merged12, %bb.o ]
  resume { ptr, i32 } %.merged
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(56) dereferenceable(64) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !36  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL7Point_3INS0_5EpeckEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #23, !inline_history !1720
  br label %_ZNSt10_Head_baseILm0EN4CGAL7Point_3INS0_5EpeckEEELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.e, -1
  store atomic i32 %i.j, ptr %i.d monotonic, align 4
  br label %_ZNSt10_Head_baseILm0EN4CGAL7Point_3INS0_5EpeckEEELb0EED2Ev.exit

bb.f:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = atomicrmw sub ptr %i.d, i32 1 release, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.h, label %_ZNSt10_Head_baseILm0EN4CGAL7Point_3INS0_5EpeckEEELb0EED2Ev.exit

end_hunk_3
begin_hunk_4_@_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEED0Ev:bb.a
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i: ; preds = %bb.l, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 64) #33, !inline_history !1633
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEED2Ev.exit

_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0EN4CGAL7Point_3INS0_5EpeckEEELb0EED2Ev.exit.i, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEE12update_exactEv(ptr noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 16 dereferenceable(64) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 16 dereferenceable(64) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %2 = alloca %class.anon.244, align 8            ; 5 uses
  %3 = alloca %class.anon.243, align 8            ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !36  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.c, ptr %3, align 8, !tbaa !1717
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %3, ptr %2, align 8, !tbaa !1600
  %i.e = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %2, ptr %i.e, align 8, !tbaa !1600
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !1600
  %i.g = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.g) #35
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !1600
  store ptr null, ptr %i.f, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.body

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.e, align 8, !tbaa !1600
  store ptr null, ptr %i.f, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.j)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit unwind label %bb.n

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.k = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(64) %i.a) ; 2 uses
  %i.l = extractvalue { double, double } %i.k, 0
  %i.m = extractvalue { double, double } %i.k, 1
  %i.n = fneg double %i.l
  %i.o = insertelement <2 x double> poison, double %i.n, i64 0
  %i.p = insertelement <2 x double> %i.o, double %i.m, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x double> %i.p, ptr %i.q, align 16, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic ptr %i.a, ptr %i.r release, align 16
  %i.s = load ptr, ptr %i.b, align 16, !tbaa !36  ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZN4CGAL17lazy_reset_memberIJNS_7Point_3INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i = icmp eq i8 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load atomic i32, ptr %i.u monotonic, align 4 ; 2 uses
  %i.w = icmp eq i32 %i.v, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(12) %i.s) #23, !inline_history !1722
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
  %i.ad = load ptr, ptr %i.b, align 16, !tbaa !36 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !26
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(12) %i.ad) #23, !inline_history !1722
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i:          ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.h
  store ptr null, ptr %i.b, align 16, !tbaa !36
  br label %_ZN4CGAL17lazy_reset_memberIJNS_7Point_3INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit

_ZN4CGAL17lazy_reset_memberIJNS_7Point_3INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit, %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i
  ret void

bb.n:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.n ], [ %i.h, %bb.d ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #33
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv() #11 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1600
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1723, !nonnull !14, !align !1606
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1717 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 16 dereferenceable(76) %i.d), !inline_history !1725
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL20Lazy_construction_ntINS_5EpeckENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclIJNS_7Point_3IS1_EEEEENS_13Lazy_exact_ntINSt9remove_cvINSt16remove_referenceIDTcldtdefpT2ecspclsr4CGALE5exactfp_EEEE4typeEE4typeEEEDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Lazy_exact_nt") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %4 = alloca %class.anon.244, align 8            ; 5 uses
  %5 = alloca %class.anon.243, align 8            ; 4 uses
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
  %i.m = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34
          to label %bb.b unwind label %bb.e       ; 7 uses

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !36     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.p, align 4, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.q, ptr noundef nonnull align 16 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !1550
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.r, align 16, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 0, ptr %i.s, align 8, !tbaa !24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEEE, i64 16), ptr %i.m, align 16, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.n, ptr %i.t, align 16, !tbaa !36
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load atomic i32, ptr %i.v monotonic, align 8
  %i.x = add nsw i32 %i.w, 1
  store atomic i32 %i.x, ptr %i.v monotonic, align 8
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.y = atomicrmw add ptr %i.v, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit: ; preds = %bb.d, %bb.c
  store ptr %i.m, ptr %0, align 8, !tbaa !36
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
  %i.aj = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #34 ; 8 uses
  %i.ak = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %i.ak, ptr %5, align 8, !tbaa !1717
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %5, ptr %4, align 8, !tbaa !1600
  %i.am = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %4, ptr %i.am, align 8, !tbaa !1600
  %i.an = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.an, align 8, !tbaa !1600
  %i.ao = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ao) #35
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.am, align 8, !tbaa !1600
  store ptr null, ptr %i.an, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.am, align 8, !tbaa !1600
  store ptr null, ptr %i.an, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.ar = load atomic ptr, ptr %i.aq monotonic, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.at = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(64) %i.as)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %bb.k
  %i.au = extractvalue { double, double } %i.at, 0
  %i.av = extractvalue { double, double } %i.at, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 1, ptr %i.aw, align 4, !tbaa !17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %i.aj, align 16, !tbaa !26
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ay = fneg double %i.au
  %i.az = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %i.av, i64 1
  store <2 x double> %i.ba, ptr %i.ax, align 16, !tbaa !19
  %i.bb = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34
          to label %.noexc13 unwind label %bb.p   ; 3 uses

.noexc13:                                         ; preds = %.noexc
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.bb, ptr noundef nonnull align 16 dereferenceable(64) %i.as)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %.noexc13
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 64) #33
  br label %.body

bb.m:                                             ; preds = %.noexc13
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.bb, ptr %i.bd, align 16, !tbaa !20
  %i.be = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store i32 0, ptr %i.be, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_0INS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEEE, i64 16), ptr %i.aj, align 16, !tbaa !26
  store ptr %i.aj, ptr %0, align 8, !tbaa !36
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
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 48) #33
  br label %bb.r

bb.q:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit, %bb.m
  ret void

bb.r:                                             ; preds = %.body, %bb.o
  %.merged = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.merged12, %bb.o ]
  resume { ptr, i32 } %.merged
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(56) dereferenceable(64) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !36  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL7Point_3INS0_5EpeckEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #23, !inline_history !1720
  br label %_ZNSt10_Head_baseILm0EN4CGAL7Point_3INS0_5EpeckEEELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.e, -1
  store atomic i32 %i.j, ptr %i.d monotonic, align 4
  br label %_ZNSt10_Head_baseILm0EN4CGAL7Point_3INS0_5EpeckEEELb0EED2Ev.exit

bb.f:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = atomicrmw sub ptr %i.d, i32 1 release, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.h, label %_ZNSt10_Head_baseILm0EN4CGAL7Point_3INS0_5EpeckEEELb0EED2Ev.exit
end_hunk_4
begin_hunk_5_@_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEED0Ev:bb.a
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 26
  %i.ai = load i8, ptr %i.ah, align 2, !range !13
  %i.aj = trunc nuw i8 %i.ai to i1
  %or.cond.i.i.i.i.i = select i1 %i.ag, i1 true, i1 %i.aj
  br i1 %or.cond.i.i.i.i.i, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = load i64, ptr %i.s, align 16
  %i.an = shl i64 %i.am, 3
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.an) #33, !inline_history !1633
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i: ; preds = %bb.l, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 64) #33, !inline_history !1633
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEED2Ev.exit

_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0EN4CGAL7Point_3INS0_5EpeckEEELb0EED2Ev.exit.i, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEE12update_exactEv(ptr noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 16 dereferenceable(64) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 16 dereferenceable(64) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %2 = alloca %class.anon.244, align 8            ; 5 uses
  %3 = alloca %class.anon.243, align 8            ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !36  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.c, ptr %3, align 8, !tbaa !1717
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %3, ptr %2, align 8, !tbaa !1600
  %i.e = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %2, ptr %i.e, align 8, !tbaa !1600
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !1600
  %i.g = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.g) #35
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !1600
  store ptr null, ptr %i.f, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.body

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.e, align 8, !tbaa !1600
  store ptr null, ptr %i.f, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
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
  store <2 x double> %i.q, ptr %i.r, align 16, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic ptr %i.a, ptr %i.s release, align 16
  %i.t = load ptr, ptr %i.b, align 16, !tbaa !36  ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %_ZN4CGAL17lazy_reset_memberIJNS_7Point_3INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.w = load atomic i32, ptr %i.v monotonic, align 4 ; 2 uses
  %i.x = icmp eq i32 %i.w, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(12) %i.t) #23, !inline_history !1722
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
  %i.ae = load ptr, ptr %i.b, align 16, !tbaa !36 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(12) %i.ae) #23, !inline_history !1722
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i:          ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.h
  store ptr null, ptr %i.b, align 16, !tbaa !36
  br label %_ZN4CGAL17lazy_reset_memberIJNS_7Point_3INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit

_ZN4CGAL17lazy_reset_memberIJNS_7Point_3INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit, %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i
  ret void

bb.n:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.n ], [ %i.h, %bb.d ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #33
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL20Lazy_construction_ntINS_5EpeckENS_23CartesianKernelFunctors11Compute_z_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclIJNS_7Point_3IS1_EEEEENS_13Lazy_exact_ntINSt9remove_cvINSt16remove_referenceIDTcldtdefpT2ecspclsr4CGALE5exactfp_EEEE4typeEE4typeEEEDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Lazy_exact_nt") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %4 = alloca %class.anon.244, align 8            ; 5 uses
  %5 = alloca %class.anon.243, align 8            ; 4 uses
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
  %i.m = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34
          to label %bb.b unwind label %bb.e       ; 7 uses

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !36     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.p, align 4, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.q, ptr noundef nonnull align 16 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !1550
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.r, align 16, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 0, ptr %i.s, align 8, !tbaa !24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_z_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEEE, i64 16), ptr %i.m, align 16, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.n, ptr %i.t, align 16, !tbaa !36
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load atomic i32, ptr %i.v monotonic, align 8
  %i.x = add nsw i32 %i.w, 1
  store atomic i32 %i.x, ptr %i.v monotonic, align 8
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_z_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.y = atomicrmw add ptr %i.v, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_z_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_z_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit: ; preds = %bb.d, %bb.c
  store ptr %i.m, ptr %0, align 8, !tbaa !36
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
  %i.aj = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #34 ; 8 uses
  %i.ak = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %i.ak, ptr %5, align 8, !tbaa !1717
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %5, ptr %4, align 8, !tbaa !1600
  %i.am = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %4, ptr %i.am, align 8, !tbaa !1600
  %i.an = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.an, align 8, !tbaa !1600
  %i.ao = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ao) #35
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.am, align 8, !tbaa !1600
  store ptr null, ptr %i.an, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.am, align 8, !tbaa !1600
  store ptr null, ptr %i.an, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.ar = load atomic ptr, ptr %i.aq monotonic, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.at = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(64) %i.as)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %bb.k
  %i.au = extractvalue { double, double } %i.at, 0
  %i.av = extractvalue { double, double } %i.at, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 1, ptr %i.aw, align 4, !tbaa !17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %i.aj, align 16, !tbaa !26
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ay = fneg double %i.au
  %i.az = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %i.av, i64 1
  store <2 x double> %i.ba, ptr %i.ax, align 16, !tbaa !19
  %i.bb = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34
          to label %.noexc13 unwind label %bb.p   ; 3 uses

.noexc13:                                         ; preds = %.noexc
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.bb, ptr noundef nonnull align 16 dereferenceable(64) %i.as)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %.noexc13
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 64) #33
  br label %.body

bb.m:                                             ; preds = %.noexc13
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.bb, ptr %i.bd, align 16, !tbaa !20
  %i.be = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store i32 0, ptr %i.be, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_0INS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEEE, i64 16), ptr %i.aj, align 16, !tbaa !26
  store ptr %i.aj, ptr %0, align 8, !tbaa !36
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
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 48) #33
  br label %bb.r

bb.q:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_z_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit, %bb.m
  ret void

bb.r:                                             ; preds = %.body, %bb.o
  %.merged = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.merged12, %bb.o ]
  resume { ptr, i32 } %.merged
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_z_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(56) dereferenceable(64) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !36  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL7Point_3INS0_5EpeckEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #23, !inline_history !1720
  br label %_ZNSt10_Head_baseILm0EN4CGAL7Point_3INS0_5EpeckEEELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.e, -1
  store atomic i32 %i.j, ptr %i.d monotonic, align 4
  br label %_ZNSt10_Head_baseILm0EN4CGAL7Point_3INS0_5EpeckEEELb0EED2Ev.exit

bb.f:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = atomicrmw sub ptr %i.d, i32 1 release, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.h, label %_ZNSt10_Head_baseILm0EN4CGAL7Point_3INS0_5EpeckEEELb0EED2Ev.exit
end_hunk_5
begin_hunk_6_@_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_z_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE:bb.a
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(12) %i.t) #23, !inline_history !1722
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
  %i.ae = load ptr, ptr %i.b, align 16, !tbaa !36 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(12) %i.ae) #23, !inline_history !1722
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i:          ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.h
  store ptr null, ptr %i.b, align 16, !tbaa !36
  br label %_ZN4CGAL17lazy_reset_memberIJNS_7Point_3INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit

_ZN4CGAL17lazy_reset_memberIJNS_7Point_3INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit, %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i
  ret void

bb.n:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.n ], [ %i.h, %bb.d ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #33
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL14Lazy_exact_CstIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEdED0Ev(ptr noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %0, align 16, !tbaa !26
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
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.m) #33, !inline_history !1633
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
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.w) #33, !inline_history !1633
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i: ; preds = %bb.d, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 64) #33, !inline_history !1633
  br label %_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev.exit

_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev.exit: ; preds = %bb.a, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL14Lazy_exact_CstIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEdE12update_exactEv(ptr noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34 ; 5 uses
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(64) %i.a)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load double, ptr %i.b, align 16, !tbaa !15
  %i.d = fpext double %i.c to x86_fp80
  %i.e = invoke noundef nonnull align 16 dereferenceable(64) ptr @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEaSIeEENSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueERS8_E4typeESB_(ptr noundef nonnull align 16 dereferenceable(64) %i.a, x86_fp80 noundef %i.d)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2IdEERKT_PNSt9enable_ifIXaaaaoooosr5boost14multiprecision6detail25is_convertible_arithmeticISD_S9_EE5valuesr3std7is_sameINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_EE5valuesr3std14is_convertibleISD_PKcEE5valuentsr3std14is_convertibleINS0_6detail9canonicalISD_S9_E4typeES9_EE5valuentsr6detail24is_restricted_conversionISS_S9_EE5valueEvE4typeE.exit unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %.noexc
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %i.a) #23
  br label %.body

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2IdEERKT_PNSt9enable_ifIXaaaaoooosr5boost14multiprecision6detail25is_convertible_arithmeticISD_S9_EE5valuesr3std7is_sameINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_EE5valuesr3std14is_convertibleISD_PKcEE5valuentsr3std14is_convertibleINS0_6detail9canonicalISD_S9_E4typeES9_EE5valuentsr6detail24is_restricted_conversionISS_S9_EE5valueEvE4typeE.exit: ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic ptr %i.a, ptr %i.g release, align 16
  ret void

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.c ], [ %i.f, %bb.b ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #33
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_20CommonKernelFunctors17Construct_plane_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb1EEclIJNS_15Return_base_tagENS_13Lazy_exact_ntISL_EEST_ST_ST_EEEDcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Plane_3") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(9) %6) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %7 = alloca %class.anon.165, align 8            ; 5 uses
  %8 = alloca %class.anon.164, align 8            ; 4 uses
  %9 = alloca %class.anon.165, align 8            ; 5 uses
  %10 = alloca %class.anon.164, align 8           ; 4 uses
  %11 = alloca %class.anon.165, align 8           ; 5 uses
  %12 = alloca %class.anon.164, align 8           ; 4 uses
  %13 = alloca %class.anon.165, align 8           ; 5 uses
  %14 = alloca %class.anon.164, align 8           ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %.sroa.0.i = alloca [4 x %"class.CGAL::Interval_nt"], align 16 ; 7 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %15 = alloca %"class.CGAL::PlaneC3.297", align 16 ; 11 uses
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
  %i.m = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #34
          to label %bb.b unwind label %bb.e       ; 13 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.n = load ptr, ptr %3, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %4, align 8, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %5, align 8, !tbaa !36
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %6, align 8, !tbaa !36     ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 16 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !1550
  %.sroa.0.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.16..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !1550
  %.sroa.0.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.32..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !1550
  %.sroa.0.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.48..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !1550
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.v, align 4, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.w, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.0.i, i64 64, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store ptr %i.w, ptr %i.x, align 16, !tbaa !1728
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  store i32 0, ptr %i.y, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_7Plane_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20CommonKernelFunctors17Construct_plane_3IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_15Return_base_tagENS_13Lazy_exact_ntISJ_EESW_SW_SW_EEE, i64 16), ptr %i.m, align 16, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  store ptr %i.t, ptr %i.z, align 16, !tbaa !36
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aa, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = load atomic i32, ptr %i.ab monotonic, align 8
  %i.ad = add nsw i32 %i.ac, 1
  store atomic i32 %i.ad, ptr %i.ab monotonic, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.af = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  store ptr %i.af, ptr %i.ae, align 16, !tbaa !36
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = load atomic i32, ptr %i.ag monotonic, align 4
  %i.ai = add nsw i32 %i.ah, 1
  store atomic i32 %i.ai, ptr %i.ag monotonic, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.ak = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  store ptr %i.ak, ptr %i.aj, align 16, !tbaa !36
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.am = load atomic i32, ptr %i.al monotonic, align 4
  %i.an = add nsw i32 %i.am, 1
  store atomic i32 %i.an, ptr %i.al monotonic, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  %i.ap = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  store ptr %i.ap, ptr %i.ao, align 16, !tbaa !36
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.ar = load atomic i32, ptr %i.aq monotonic, align 4
  %i.as = add nsw i32 %i.ar, 1
  store atomic i32 %i.as, ptr %i.aq monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.at = atomicrmw add ptr %i.ab, i32 1 monotonic, align 4 ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.av = load ptr, ptr %5, align 8, !tbaa !36    ; 2 uses
  store ptr %i.av, ptr %i.au, align 16, !tbaa !36
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = atomicrmw add ptr %i.aw, i32 1 monotonic, align 4 ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.az = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  store ptr %i.az, ptr %i.ay, align 16, !tbaa !36
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = atomicrmw add ptr %i.ba, i32 1 monotonic, align 4 ; 0 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  %i.bd = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  store ptr %i.bd, ptr %i.bc, align 16, !tbaa !36
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = atomicrmw add ptr %i.be, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.c, %bb.d
  store ptr %i.m, ptr %0, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.bg = load i32, ptr %i.c, align 4
  %i.bh = and i32 %i.bg, -24577
  %i.bi = or disjoint i32 %i.bh, %i.i
  store i32 %i.bi, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ad

bb.e:                                             ; preds = %bb.a
  %i.bj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE ; 3 uses
  %.015 = extractvalue { ptr, i32 } %i.bj, 1
  %i.bk = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #23
  %i.bl = icmp eq i32 %.015, %i.bk
  br i1 %i.bl, label %bb.f, label %bb.aa

bb.f:                                             ; preds = %bb.e
  %.016 = extractvalue { ptr, i32 } %i.bj, 0
  %i.bm = call ptr @__cxa_begin_catch(ptr %.016) #23 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.z

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.bn = load i32, ptr %i.c, align 4
  %i.bo = and i32 %i.bn, -24577
  %i.bp = or disjoint i32 %i.bo, %i.i
  store i32 %i.bp, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bq = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.br = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr %i.br, ptr %14, align 8, !tbaa !1597
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  store ptr %14, ptr %13, align 8, !tbaa !1600
  %i.bt = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 12 uses
  store ptr %13, ptr %i.bt, align 8, !tbaa !1600
  %i.bu = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 12 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.bu, align 8, !tbaa !1600
  %i.bv = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.bs, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bv) #35
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.bw = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bt, align 8, !tbaa !1600
  store ptr null, ptr %i.bu, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.bt, align 8, !tbaa !1600
  store ptr null, ptr %i.bu, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.by = load atomic ptr, ptr %i.bx monotonic, align 8
  %i.bz = load ptr, ptr %4, align 8, !tbaa !36    ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store ptr %i.bz, ptr %12, align 8, !tbaa !1597
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store ptr %12, ptr %11, align 8, !tbaa !1600
  store ptr %11, ptr %i.bt, align 8, !tbaa !1600
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.bu, align 8, !tbaa !1600
  %i.cb = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.ca, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i24 unwind label %bb.n ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i24:        ; preds = %bb.k
  %.not.i.i.i.i25 = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i.i.i25, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i24
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.cb) #35
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.cc = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bt, align 8, !tbaa !1600
  store ptr null, ptr %i.bu, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %.body

bb.o:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i24
  store ptr null, ptr %i.bt, align 8, !tbaa !1600
  store ptr null, ptr %i.bu, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.ce = load atomic ptr, ptr %i.cd monotonic, align 8
  %i.cf = load ptr, ptr %5, align 8, !tbaa !36    ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store ptr %i.cf, ptr %10, align 8, !tbaa !1597
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store ptr %10, ptr %9, align 8, !tbaa !1600
  store ptr %9, ptr %i.bt, align 8, !tbaa !1600
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.bu, align 8, !tbaa !1600
  %i.ch = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.cg, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i29 unwind label %bb.r ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i29:        ; preds = %bb.o
  %.not.i.i.i.i30 = icmp eq i32 %i.ch, 0
  br i1 %.not.i.i.i.i30, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i29
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ch) #35
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.ci = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bt, align 8, !tbaa !1600
  store ptr null, ptr %i.bu, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %.body

bb.s:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i29
  store ptr null, ptr %i.bt, align 8, !tbaa !1600
  store ptr null, ptr %i.bu, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ck = load atomic ptr, ptr %i.cj monotonic, align 8
  %i.cl = load ptr, ptr %6, align 8, !tbaa !36    ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
end_hunk_6
begin_hunk_7_@_ZN4CGAL8Vector_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2IdddEEOT_OT0_OT1_:bb.a
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 185
  %.sroa.024.185..sroa_idx344 = getelementptr inbounds nuw i8, ptr %.sroa.024, i64 185
  %.sroa.024.185..sroa.024.185..sroa.024.185..sroa.024.185. = load i8, ptr %.sroa.024.185..sroa_idx344, align 1, !tbaa !9 ; 2 uses
  store i8 %.sroa.024.185..sroa.024.185..sroa.024.185..sroa.024.185., ptr %i.di, align 1, !tbaa !9
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 186
  %.sroa.024.186..sroa_idx346 = getelementptr inbounds nuw i8, ptr %.sroa.024, i64 186
  %.sroa.024.186..sroa.024.186..sroa.024.186..sroa.024.186. = load i8, ptr %.sroa.024.186..sroa_idx346, align 2, !tbaa !1467
  store i8 %.sroa.024.186..sroa.024.186..sroa.024.186..sroa.024.186., ptr %i.dj, align 2, !tbaa !1467
  %i.dk = trunc nuw i8 %.sroa.024.185..sroa.024.185..sroa.024.185..sroa.024.185. to i1
  br i1 %i.dk, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2EOS8_.exit.i23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.df, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.024.160..sroa_idx193, i64 16, i1 false), !tbaa.struct !1529
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit21

bb.v:                                             ; preds = %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2EOS8_.exit.i23
  %i.dl = shl i64 %.sroa.024.176..sroa.024.176..sroa.024.176..sroa.024.176., 3
  %.sroa.024.160..sroa_idx337 = getelementptr inbounds nuw i8, ptr %.sroa.024, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(27) %i.df, ptr nonnull align 16 dereferenceable(27) %.sroa.024.160..sroa_idx337, i64 %i.dl, i1 false)
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit21

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit21: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.024)
  ret void

bb.w:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2IdEERKT_PNSt9enable_ifIXaaaaoooosr5boost14multiprecision6detail25is_convertible_arithmeticISD_S9_EE5valuesr3std7is_sameINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_EE5valuesr3std14is_convertibleISD_PKcEE5valuentsr3std14is_convertibleINS0_6detail9canonicalISD_S9_E4typeES9_EE5valuentsr6detail24is_restricted_conversionISS_S9_EE5valueEvE4typeE.exit13
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %.body10

bb.x:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2IdEERKT_PNSt9enable_ifIXaaaaoooosr5boost14multiprecision6detail25is_convertible_arithmeticISD_S9_EE5valuesr3std7is_sameINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_EE5valuesr3std14is_convertibleISD_PKcEE5valuentsr3std14is_convertibleINS0_6detail9canonicalISD_S9_E4typeES9_EE5valuentsr6detail24is_restricted_conversionISS_S9_EE5valueEvE4typeE.exit12
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.x, %bb.d
  %.pn = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.dn, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %5) #23
  br label %.body10

.body10:                                          ; preds = %bb.w, %bb.c, %.body
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.dm, %bb.w ], [ %i.h, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.024)
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_0INS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEED0Ev(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EEE, i64 16), ptr %0, align 16, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load atomic ptr, ptr %i.a monotonic, align 16 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN4CGAL8Lazy_repINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %i.b) #23, !inline_history !1780
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 192) #33, !inline_history !1780
  br label %_ZN4CGAL8Lazy_repINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EED2Ev.exit

_ZN4CGAL8Lazy_repINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_0INS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEE12update_exactEv(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load atomic ptr, ptr %i.a monotonic, align 16
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #34 ; 6 uses
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(192) %i.d)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  %.ptr.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(64) %.ptr.1.i.i.i.i.i)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2Ev.exit.1.i.i.i.i.i unwind label %.preheader.preheader.i.i.i.i.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2Ev.exit.1.i.i.i.i.i: ; preds = %.noexc
  %.ptr.2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 2 uses
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(64) %.ptr.2.i.i.i.i.i)
          to label %_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2Ev.exit unwind label %.preheader.preheader.i.i.i.i.i

.preheader.preheader.i.i.i.i.i:                   ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2Ev.exit.1.i.i.i.i.i, %.noexc
  %.ptr.lcssa.ph.i.i.i.i.i = phi ptr [ %.ptr.2.i.i.i.i.i, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2Ev.exit.1.i.i.i.i.i ], [ %.ptr.1.i.i.i.i.i, %.noexc ]
  %lpad.thr_comm.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i
  %i.e = phi ptr [ %i.f, %.preheader.i.i.i.i.i ], [ %.ptr.lcssa.ph.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i ]
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -64 ; 3 uses
  tail call void @_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %i.f) #23
  %i.g = icmp eq ptr %i.f, %i.d
  br i1 %i.g, label %.body, label %.preheader.i.i.i.i.i

_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2Ev.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2Ev.exit.1.i.i.i.i.i
  store atomic ptr %i.d, ptr %i.a release, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2Ev.exit
  ret void

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.preheader.i.i.i.i.i, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %lpad.thr_comm.i.i.i.i.i, %.preheader.i.i.i.i.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 192) #33
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors27Construct_projected_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_7Plane_3IS1_EENS_7Point_3IS1_EEEEEDcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Point_3") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.CGAL::PointC3", align 16    ; 34 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %6 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %7 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %8 = alloca %class.anon.244, align 8            ; 5 uses
  %9 = alloca %class.anon.243, align 8            ; 4 uses
  %10 = alloca %class.anon.374, align 8           ; 5 uses
  %11 = alloca %class.anon.373, align 8           ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %.sroa.04.i.i.i.i.i.i = alloca [3 x %"class.CGAL::Interval_nt"], align 16 ; 6 uses
  %12 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %13 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %.sroa.0.i = alloca [3 x %"class.CGAL::Interval_nt"], align 16 ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %14 = alloca %"class.CGAL::Point_3.233", align 16 ; 39 uses
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
  %i.m = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34
          to label %bb.b unwind label %bb.e       ; 10 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.n = load ptr, ptr %2, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.p = load atomic ptr, ptr %i.o acquire, align 8 ; 4 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !36     ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23, !noalias !1784
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23, !noalias !1784
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04.i.i.i.i.i.i), !noalias !1784
  invoke void @_ZN4CGAL18projection_planeC3INS_11Interval_ntILb0EEEEEvRKT_S5_S5_S5_S5_S5_S5_RS3_S6_S6_(ptr noundef nonnull align 16 dereferenceable(64) %i.p, ptr noundef nonnull align 16 dereferenceable(16) %i.s, ptr noundef nonnull align 16 dereferenceable(16) %i.t, ptr noundef nonnull align 16 dereferenceable(16) %i.u, ptr noundef nonnull align 16 dereferenceable(48) %i.r, ptr noundef nonnull align 16 dereferenceable(16) %i.v, ptr noundef nonnull align 16 dereferenceable(16) %i.w, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %12, ptr noundef nonnull align 16 dereferenceable(16) %13)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  %.sroa.04.16..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.i.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.16..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !1550, !noalias !1784
  %.sroa.04.32..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.i.i.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.32..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %13, i64 16, i1 false), !tbaa.struct !1550, !noalias !1784
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0.i, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.04.i.i.i.i.i.i, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i.i.i.i.i.i), !noalias !1784
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23, !noalias !1784
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23, !noalias !1784
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.x, align 4, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.y, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0.i, i64 48, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store ptr null, ptr %i.z, align 16, !tbaa !1768
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store i32 0, ptr %i.aa, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_23CartesianKernelFunctors27Construct_projected_point_3IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_7Plane_3INS_5EpeckEEENS1_ISV_EEEEE, i64 16), ptr %i.m, align 16, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.ac = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 16, !tbaa !36
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ad, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.af = load atomic i32, ptr %i.ae monotonic, align 4
  %i.ag = add nsw i32 %i.af, 1
  store atomic i32 %i.ag, ptr %i.ae monotonic, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.ai = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !36
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = load atomic i32, ptr %i.aj monotonic, align 4
  %i.al = add nsw i32 %i.ak, 1
  store atomic i32 %i.al, ptr %i.aj monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.d:                                             ; preds = %.noexc
  %i.am = atomicrmw add ptr %i.ae, i32 1 monotonic, align 4 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.ao = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !36
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = atomicrmw add ptr %i.ap, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.c, %bb.d
  store ptr %i.m, ptr %0, align 8, !tbaa !36
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
  br label %bb.ai

bb.e:                                             ; preds = %bb.a
  %i.au = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.av = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 96) #33
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.av, %bb.f ], [ %i.au, %bb.e ] ; 3 uses
  %.010 = extractvalue { ptr, i32 } %.pn, 1
  %i.aw = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #23
  %i.ax = icmp eq i32 %.010, %i.aw
  br i1 %i.ax, label %bb.h, label %bb.af

bb.h:                                             ; preds = %bb.g
  %.011 = extractvalue { ptr, i32 } %.pn, 0
  %i.ay = call ptr @__cxa_begin_catch(ptr %.011) #23 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.ae

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.az = load i32, ptr %i.c, align 4
  %i.ba = and i32 %i.az, -24577
  %i.bb = or disjoint i32 %i.ba, %i.i
  store i32 %i.bb, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bc = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #34 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.bd = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store ptr %i.bd, ptr %11, align 8, !tbaa !1791
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store ptr %11, ptr %10, align 8, !tbaa !1600
  %i.bf = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 6 uses
  store ptr %10, ptr %i.bf, align 8, !tbaa !1600
  %i.bg = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 6 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Plane_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.bg, align 8, !tbaa !1600
  %i.bh = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.be, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.l ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.i
  %.not.i.i.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bh) #35
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bf, align 8, !tbaa !1600
  store ptr null, ptr %i.bg, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %.body

bb.m:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.bf, align 8, !tbaa !1600
  store ptr null, ptr %i.bg, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  %i.bk = load atomic ptr, ptr %i.bj monotonic, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %i.bm = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store ptr %i.bm, ptr %9, align 8, !tbaa !1717
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store ptr %9, ptr %8, align 8, !tbaa !1600
  store ptr %8, ptr %i.bf, align 8, !tbaa !1600
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.bg, align 8, !tbaa !1600
  %i.bo = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.bn, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i19 unwind label %bb.p ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i19:        ; preds = %bb.m
  %.not.i.i.i.i20 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i.i.i20, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i19
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bo) #35
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.bp = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bf, align 8, !tbaa !1600
  store ptr null, ptr %i.bg, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %.body

bb.q:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i19
  store ptr null, ptr %i.bf, align 8, !tbaa !1600
  store ptr null, ptr %i.bg, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  %i.br = load atomic ptr, ptr %i.bq monotonic, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1794)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !1794
  invoke void @_ZN4CGAL16projection_planeINS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEENS_7PointC3IT_EERKSI_RKNS_7PlaneC3ISH_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::PointC3") align 16 %4, ptr noundef nonnull align 16 dereferenceable(192) %i.br, ptr noundef nonnull align 16 dereferenceable(256) %i.bl)
          to label %.noexc31 unwind label %bb.ag

.noexc31:                                         ; preds = %bb.q
  store i64 0, ptr %14, align 16, !tbaa !19, !alias.scope !1794
  %i.bs = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bu = load i64, ptr %i.bt, align 16, !tbaa !1457, !noalias !1794 ; 2 uses
  store i64 %i.bu, ptr %i.bs, align 16, !tbaa !1457, !alias.scope !1794
  %i.bv = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !1466, !range !13, !noalias !1794, !noundef !14
  store i8 %i.bx, ptr %i.bv, align 8, !tbaa !1466, !alias.scope !1794
  %i.by = getelementptr inbounds nuw i8, ptr %14, i64 25 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 25
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !9, !range !13, !noalias !1794, !noundef !14 ; 2 uses
  store i8 %i.ca, ptr %i.by, align 1, !tbaa !9, !alias.scope !1794
  %i.cb = getelementptr inbounds nuw i8, ptr %14, i64 26 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 26
  %i.cd = load i8, ptr %i.cc, align 2, !tbaa !1467, !range !13, !noalias !1794, !noundef !14
  store i8 %i.cd, ptr %i.cb, align 2, !tbaa !1467, !alias.scope !1794
  %i.ce = trunc nuw i8 %i.ca to i1
  br i1 %i.ce, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.noexc31
  %i.cf = shl i64 %i.bu, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(192) %14, ptr nonnull align 16 dereferenceable(192) %4, i64 %i.cf, i1 false)
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.i.i

bb.s:                                             ; preds = %.noexc31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %14, ptr noundef nonnull align 16 dereferenceable(192) %4, i64 16, i1 false), !tbaa.struct !1529
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.i.i: ; preds = %bb.s, %bb.r
end_hunk_7
begin_hunk_8_@_ZNK4CGAL14Lazy_exact_OppIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEE12update_exactEv:bb.a
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !1600
  store ptr null, ptr %i.f, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.body

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  store ptr null, ptr %i.e, align 8, !tbaa !1600
  store ptr null, ptr %i.f, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8 ; 2 uses
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(64) %i.a)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.e
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSD_8terminalESB_vvvEEEEvRKT_RKSF_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.l = invoke noundef nonnull align 16 dereferenceable(64) ptr @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEaSERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.j)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSD_8terminalESB_vvvEEEEvRKT_RKSF_.exit.i.i.i.i.i unwind label %bb.i ; 0 uses

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSD_8terminalESB_vvvEEEEvRKT_RKSF_.exit.i.i.i.i.i: ; preds = %bb.f, %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !1466, !range !13, !alias.scope !1889, !noundef !14 ; 2 uses
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = xor i8 %i.n, 1
  store i8 %i.p, ptr %i.m, align 8, !tbaa !1466, !alias.scope !1889
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = load i64, ptr %i.q, align 16, !alias.scope !1889
  %i.s = icmp ne i64 %i.r, 1
  %or.cond.i.not.i.i.i.i.i.i = select i1 %i.o, i1 true, i1 %i.s
  br i1 %or.cond.i.not.i.i.i.i.i.i, label %_ZN4CGAL8oppositeIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEET_RKSE_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSD_8terminalESB_vvvEEEEvRKT_RKSF_.exit.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.u = load i8, ptr %i.t, align 1, !tbaa !9, !range !13, !alias.scope !1889, !noundef !14
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !1889
  %i.y = select i1 %i.v, ptr %i.a, ptr %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1458
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.h, label %_ZN4CGAL8oppositeIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEET_RKSE_.exit

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.m, align 8, !tbaa !1466, !alias.scope !1889
  br label %_ZN4CGAL8oppositeIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEET_RKSE_.exit

bb.i:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %i.a) #23
  br label %.body

_ZN4CGAL8oppositeIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEET_RKSE_.exit: ; preds = %bb.h, %bb.g, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSD_8terminalESB_vvvEEEEvRKT_RKSF_.exit.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !19
  %i.af = load <2 x double>, ptr %i.ac, align 16, !tbaa !19
  %i.ag = extractelement <2 x double> %i.af, i64 0
  %i.ah = fneg double %i.ag
  %i.ai = fcmp oeq double %i.ae, %i.ah
  br i1 %i.ai, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN4CGAL8oppositeIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEET_RKSE_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.aj = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(64) %i.a) ; 2 uses
  %i.ak = extractvalue { double, double } %i.aj, 0
  %i.al = extractvalue { double, double } %i.aj, 1
  %i.am = fneg double %i.ak
  %i.an = insertelement <2 x double> poison, double %i.am, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.al, i64 1
  store <2 x double> %i.ao, ptr %i.ac, align 16, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.i, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.ap, %bb.k ], [ %i.ab, %bb.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #33
  resume { ptr, i32 } %eh.lpad-body

bb.l:                                             ; preds = %bb.j, %_ZN4CGAL8oppositeIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEET_RKSE_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic ptr %i.a, ptr %i.aq release, align 16
  %i.ar = load ptr, ptr %i.b, align 16, !tbaa !36 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i, label %_ZNK4CGAL16Lazy_exact_unaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEE9prune_dagEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i6 = icmp eq i8 %i.as, 0
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  %i.au = load atomic i32, ptr %i.at monotonic, align 4 ; 2 uses
  %i.av = icmp eq i32 %i.au, 1                    ; 2 uses
  br i1 %.not.i.i.i6, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.av, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !26
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(12) %i.ar) #23, !inline_history !1610
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.p:                                             ; preds = %bb.n
  %i.az = add nsw i32 %i.au, -1
  store atomic i32 %i.az, ptr %i.at monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.q:                                             ; preds = %bb.m
  br i1 %i.av, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = atomicrmw sub ptr %i.at, i32 1 release, align 4
  %i.bb = icmp eq i32 %i.ba, 1
  br i1 %i.bb, label %bb.s, label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.s:                                             ; preds = %bb.r, %bb.q
  fence acquire
  %i.bc = load ptr, ptr %i.b, align 16, !tbaa !36 ; 3 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %_ZN4CGAL6Handle6decrefEv.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !26
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(12) %i.bc) #23, !inline_history !1610
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i:                ; preds = %bb.t, %bb.s, %bb.r, %bb.p, %bb.o
  store ptr null, ptr %i.b, align 16, !tbaa !36
  br label %_ZNK4CGAL16Lazy_exact_unaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEE9prune_dagEv.exit

_ZNK4CGAL16Lazy_exact_unaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEE9prune_dagEv.exit: ; preds = %bb.l, %_ZN4CGAL6Handle6decrefEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors29Construct_orthogonal_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb1EEclIJNS_7Plane_3IS1_EEEEEDcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Vector_3") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %4 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %5 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %6 = alloca %class.anon.374, align 8            ; 5 uses
  %7 = alloca %class.anon.373, align 8            ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %.sroa.04.i.i.i = alloca [3 x %"class.CGAL::Interval_nt"], align 16 ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.CGAL::Vector_3.182", align 16 ; 37 uses
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
  %i.m = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34
          to label %bb.b unwind label %bb.e       ; 7 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04.i.i.i)
  %i.n = load ptr, ptr %2, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.p = load atomic ptr, ptr %i.o acquire, align 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.i.i.i, ptr noundef nonnull align 16 dereferenceable(64) %i.p, i64 16, i1 false)
  %.sroa.04.16..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.16..sroa_idx.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.q, i64 16, i1 false)
  %.sroa.04.32..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.32..sroa_idx.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.r, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.s, align 4, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.t, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.04.i.i.i, i64 48, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store ptr %i.t, ptr %i.u, align 16, !tbaa !1657
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store i32 0, ptr %i.v, align 8, !tbaa !24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_8Vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_23CartesianKernelFunctors29Construct_orthogonal_vector_3IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_7Plane_3INS_5EpeckEEEEEE, i64 16), ptr %i.m, align 16, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.x = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  store ptr %i.x, ptr %i.w, align 16, !tbaa !36
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load atomic i32, ptr %i.z monotonic, align 4
  %i.ab = add nsw i32 %i.aa, 1
  store atomic i32 %i.ab, ptr %i.z monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.ac = atomicrmw add ptr %i.z, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i.i.i)
  store ptr %i.m, ptr %0, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.ad = load i32, ptr %i.c, align 4
  %i.ae = and i32 %i.ad, -24577
  %i.af = or disjoint i32 %i.ae, %i.i
  store i32 %i.af, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.v

bb.e:                                             ; preds = %bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE ; 3 uses
  %.08 = extractvalue { ptr, i32 } %i.ag, 1
  %i.ah = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #23
  %i.ai = icmp eq i32 %.08, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.s

bb.f:                                             ; preds = %bb.e
  %.09 = extractvalue { ptr, i32 } %i.ag, 0
  %i.aj = call ptr @__cxa_begin_catch(ptr %.09) #23 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.r

bb.g:                                             ; preds = %bb.f
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
  %i.an = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #34 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.ao = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %i.ao, ptr %7, align 8, !tbaa !1791
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr %7, ptr %6, align 8, !tbaa !1600
  %i.aq = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %6, ptr %i.aq, align 8, !tbaa !1600
  %i.ar = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Plane_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.ar, align 8, !tbaa !1600
  %i.as = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.as) #35
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.at = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.aq, align 8, !tbaa !1600
  store ptr null, ptr %i.ar, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.aq, align 8, !tbaa !1600
  store ptr null, ptr %i.ar, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.av = load atomic ptr, ptr %i.au monotonic, align 8 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 128
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 192
  invoke void @_ZN4CGAL8Vector_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2IRKSE_SJ_SJ_EEOT_OT0_OT1_(ptr noundef nonnull align 16 dereferenceable(192) %8, ptr noundef nonnull align 16 dereferenceable(256) %i.aw, ptr noundef nonnull align 16 dereferenceable(64) %i.ax, ptr noundef nonnull align 16 dereferenceable(64) %i.ay)
          to label %_ZNK4CGAL23CartesianKernelFunctors29Construct_orthogonal_vector_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Plane_3ISG_EE.exit unwind label %bb.t

_ZNK4CGAL23CartesianKernelFunctors29Construct_orthogonal_vector_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Plane_3ISG_EE.exit: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !1892
  %i.az = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 16 dereferenceable(192) %8)
          to label %.noexc unwind label %bb.u     ; 2 uses

.noexc:                                           ; preds = %_ZNK4CGAL23CartesianKernelFunctors29Construct_orthogonal_vector_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Plane_3ISG_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !1892
  %i.ba = extractvalue { double, double } %i.az, 0
  %i.bb = extractvalue { double, double } %i.az, 1
  %i.bc = fneg double %i.ba
  %i.bd = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.bb, i64 1
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !1892
  %i.bg = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 16 dereferenceable(64) %i.bf)
          to label %.noexc17 unwind label %bb.u   ; 2 uses

.noexc17:                                         ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !1892
  %i.bh = extractvalue { double, double } %i.bg, 0
  %i.bi = extractvalue { double, double } %i.bg, 1
  %i.bj = fneg double %i.bh
  %i.bk = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bl = insertelement <2 x double> %i.bk, double %i.bi, i64 1
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !1892
  %i.bn = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(64) %i.bm)
          to label %.noexc18 unwind label %bb.u   ; 2 uses

.noexc18:                                         ; preds = %.noexc17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !1892
  %i.bo = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 1, ptr %i.bo, align 4, !tbaa !17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_8Vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EEE, i64 16), ptr %i.an, align 16, !tbaa !26
  %i.bp = invoke noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #34
          to label %_ZN4CGAL10Lazy_rep_0INS_8Vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEC2ISL_EEOT_.exit unwind label %bb.u ; 34 uses

_ZN4CGAL10Lazy_rep_0INS_8Vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEC2ISL_EEOT_.exit: ; preds = %.noexc18
  %i.bq = extractvalue { double, double } %i.bn, 0
  %i.br = fneg double %i.bq
  %i.bs = insertelement <2 x double> poison, double %i.br, i64 0
  %i.bt = extractvalue { double, double } %i.bn, 1
  %i.bu = insertelement <2 x double> %i.bs, double %i.bt, i64 1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  store <2 x double> %i.be, ptr %i.bp, align 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store <2 x double> %i.bl, ptr %.sroa.4.0..sroa_idx.i, align 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  store <2 x double> %i.bu, ptr %.sroa.5.0..sroa_idx.i, align 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 48 ; 3 uses
  store i64 0, ptr %i.bw, align 16, !tbaa !19
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bz = load i64, ptr %i.by, align 16, !tbaa !1457 ; 2 uses
  store i64 %i.bz, ptr %i.bx, align 16, !tbaa !1457
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !1466, !range !13, !noundef !14
  store i8 %i.cc, ptr %i.ca, align 8, !tbaa !1466
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bp, i64 73
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 25
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !9, !range !13, !noundef !14 ; 2 uses
  store i8 %i.cf, ptr %i.cd, align 1, !tbaa !9
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bp, i64 74
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 26
  %i.ci = load i8, ptr %i.ch, align 2, !tbaa !1467, !range !13, !noundef !14
  store i8 %i.ci, ptr %i.cg, align 2, !tbaa !1467
  %i.cj = trunc nuw i8 %i.cf to i1
  br i1 %i.cj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4CGAL10Lazy_rep_0INS_8Vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEC2ISL_EEOT_.exit
  %i.ck = shl i64 %i.bz, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(192) %i.bw, ptr nonnull align 16 dereferenceable(192) %8, i64 %i.ck, i1 false)
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.i

bb.m:                                             ; preds = %_ZN4CGAL10Lazy_rep_0INS_8Vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEC2ISL_EEOT_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %i.bw, ptr noundef nonnull align 16 dereferenceable(192) %8, i64 16, i1 false), !tbaa.struct !1529
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.i: ; preds = %bb.m, %bb.l
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bp, i64 80 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store i64 0, ptr %i.cl, align 16, !tbaa !19
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bp, i64 96
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.cp = load i64, ptr %i.co, align 16, !tbaa !1457 ; 2 uses
  store i64 %i.cp, ptr %i.cn, align 16, !tbaa !1457
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bp, i64 104
  %i.cr = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !1466, !range !13, !noundef !14
  store i8 %i.cs, ptr %i.cq, align 8, !tbaa !1466
end_hunk_8
begin_hunk_9_@_ZNK4CGAL14Lazy_exact_SubIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E12update_exactEv:bb.a
  %i.w = extractelement <2 x double> %i.v, i64 0
  %i.x = fneg double %i.w
  %i.y = fcmp oeq double %i.u, %i.x
  br i1 %i.y, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail19subtract_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.z = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(64) %i.a) ; 2 uses
  %i.aa = extractvalue { double, double } %i.z, 0
  %i.ab = extractvalue { double, double } %i.z, 1
  %i.ac = fneg double %i.aa
  %i.ad = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %i.ab, i64 1
  store <2 x double> %i.ae, ptr %i.s, align 16, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.j, %bb.l, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.o, %bb.h ], [ %i.af, %bb.l ], [ %i.r, %bb.j ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #33
  resume { ptr, i32 } %eh.lpad-body

bb.m:                                             ; preds = %bb.k, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail19subtract_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic ptr %i.a, ptr %i.ag release, align 16
  %i.ah = load ptr, ptr %i.b, align 16, !tbaa !36 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %_ZN4CGAL6Handle5resetEv.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i12 = icmp eq i8 %i.ai, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.ak = load atomic i32, ptr %i.aj monotonic, align 4 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 1                    ; 2 uses
  br i1 %.not.i.i.i12, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.al, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !26
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(12) %i.ah) #23, !inline_history !1901
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
  %i.as = load ptr, ptr %i.b, align 16, !tbaa !36 ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_ZN4CGAL6Handle6decrefEv.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !26
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(12) %i.as) #23, !inline_history !1901
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i:                ; preds = %bb.u, %bb.t, %bb.s, %bb.q, %bb.p
  store ptr null, ptr %i.b, align 16, !tbaa !36
  br label %_ZN4CGAL6Handle5resetEv.exit.i

_ZN4CGAL6Handle5resetEv.exit.i:                   ; preds = %_ZN4CGAL6Handle6decrefEv.exit.i.i, %bb.m
  %i.ax = load ptr, ptr %i.k, align 16, !tbaa !36 ; 4 uses
  %.not.i1.i = icmp eq ptr %i.ax, null
  br i1 %.not.i1.i, label %_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit, label %bb.v

bb.v:                                             ; preds = %_ZN4CGAL6Handle5resetEv.exit.i
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i2.i = icmp eq i8 %i.ay, 0
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.ba = load atomic i32, ptr %i.az monotonic, align 4 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 1                    ; 2 uses
  br i1 %.not.i.i2.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %i.bb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bc = load ptr, ptr %i.ax, align 8, !tbaa !26
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(12) %i.ax) #23, !inline_history !1901
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
  %i.bi = load ptr, ptr %i.k, align 16, !tbaa !36 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_ZN4CGAL6Handle6decrefEv.exit.i3.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !26
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(12) %i.bi) #23, !inline_history !1901
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

_ZN4CGAL6Handle6decrefEv.exit.i3.i:               ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.x
  store ptr null, ptr %i.k, align 16, !tbaa !36
  br label %_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit

_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit: ; preds = %_ZN4CGAL6Handle5resetEv.exit.i, %_ZN4CGAL6Handle6decrefEv.exit.i3.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_ED0Ev(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #36
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb1EEclIJNS_15Return_base_tagENS_13Lazy_exact_ntISL_EEST_ST_EEEDcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Vector_3") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(9) %5) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %6 = alloca %class.anon.165, align 8            ; 5 uses
  %7 = alloca %class.anon.164, align 8            ; 4 uses
  %8 = alloca %class.anon.165, align 8            ; 5 uses
  %9 = alloca %class.anon.164, align 8            ; 4 uses
  %10 = alloca %class.anon.165, align 8           ; 5 uses
  %11 = alloca %class.anon.164, align 8           ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %.sroa.0.i = alloca [3 x %"class.CGAL::Interval_nt"], align 16 ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.CGAL::VectorC3", align 16  ; 31 uses
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
  %i.m = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #34
          to label %bb.b unwind label %bb.e       ; 11 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.n = load ptr, ptr %3, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %4, align 8, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %5, align 8, !tbaa !36     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 16 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !1550
  %.sroa.0.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.16..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !1550
  %.sroa.0.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.32..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !1550
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.t, align 4, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.u, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0.i, i64 48, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store ptr %i.u, ptr %i.v, align 16, !tbaa !1657
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store i32 0, ptr %i.w, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_8Vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_23CartesianKernelFunctors18Construct_vector_3IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_15Return_base_tagENS_13Lazy_exact_ntISJ_EESW_SW_EEE, i64 16), ptr %i.m, align 16, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store ptr %i.r, ptr %i.x, align 16, !tbaa !36
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load atomic i32, ptr %i.z monotonic, align 8
  %i.ab = add nsw i32 %i.aa, 1
  store atomic i32 %i.ab, ptr %i.z monotonic, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.ad = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  store ptr %i.ad, ptr %i.ac, align 16, !tbaa !36
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load atomic i32, ptr %i.ae monotonic, align 4
  %i.ag = add nsw i32 %i.af, 1
  store atomic i32 %i.ag, ptr %i.ae monotonic, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.ai = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 16, !tbaa !36
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = load atomic i32, ptr %i.aj monotonic, align 4
  %i.al = add nsw i32 %i.ak, 1
  store atomic i32 %i.al, ptr %i.aj monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.am = atomicrmw add ptr %i.z, i32 1 monotonic, align 4 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.ao = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  store ptr %i.ao, ptr %i.an, align 16, !tbaa !36
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = atomicrmw add ptr %i.ap, i32 1 monotonic, align 4 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.as = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  store ptr %i.as, ptr %i.ar, align 16, !tbaa !36
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = atomicrmw add ptr %i.at, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.c, %bb.d
  store ptr %i.m, ptr %0, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.av = load i32, ptr %i.c, align 4
  %i.aw = and i32 %i.av, -24577
  %i.ax = or disjoint i32 %i.aw, %i.i
  store i32 %i.ax, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.af

bb.e:                                             ; preds = %bb.a
  %i.ay = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE ; 3 uses
  %.013 = extractvalue { ptr, i32 } %i.ay, 1
  %i.az = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #23
  %i.ba = icmp eq i32 %.013, %i.az
  br i1 %i.ba, label %bb.f, label %bb.ac

bb.f:                                             ; preds = %bb.e
  %.014 = extractvalue { ptr, i32 } %i.ay, 0
  %i.bb = call ptr @__cxa_begin_catch(ptr %.014) #23 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.ab

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.bc = load i32, ptr %i.c, align 4
  %i.bd = and i32 %i.bc, -24577
  %i.be = or disjoint i32 %i.bd, %i.i
  store i32 %i.be, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bf = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.bg = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store ptr %i.bg, ptr %11, align 8, !tbaa !1597
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store ptr %11, ptr %10, align 8, !tbaa !1600
  %i.bi = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 9 uses
  store ptr %10, ptr %i.bi, align 8, !tbaa !1600
  %i.bj = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 9 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.bj, align 8, !tbaa !1600
  %i.bk = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.bh, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bk) #35
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.bl = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bi, align 8, !tbaa !1600
  store ptr null, ptr %i.bj, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.bi, align 8, !tbaa !1600
  store ptr null, ptr %i.bj, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bn = load atomic ptr, ptr %i.bm monotonic, align 8
  %i.bo = load ptr, ptr %4, align 8, !tbaa !36    ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store ptr %i.bo, ptr %9, align 8, !tbaa !1597
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store ptr %9, ptr %8, align 8, !tbaa !1600
  store ptr %8, ptr %i.bi, align 8, !tbaa !1600
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.bj, align 8, !tbaa !1600
  %i.bq = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.bp, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22 unwind label %bb.n ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22:        ; preds = %bb.k
  %.not.i.i.i.i23 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i23, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bq) #35
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.br = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bi, align 8, !tbaa !1600
  store ptr null, ptr %i.bj, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %.body

bb.o:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22
  store ptr null, ptr %i.bi, align 8, !tbaa !1600
  store ptr null, ptr %i.bj, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bt = load atomic ptr, ptr %i.bs monotonic, align 8
  %i.bu = load ptr, ptr %5, align 8, !tbaa !36    ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %i.bu, ptr %7, align 8, !tbaa !1597
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr %7, ptr %6, align 8, !tbaa !1600
  store ptr %6, ptr %i.bi, align 8, !tbaa !1600
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.bj, align 8, !tbaa !1600
  %i.bw = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.bv, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i27 unwind label %bb.r ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i27:        ; preds = %bb.o
  %.not.i.i.i.i28 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i.i.i28, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i27
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bw) #35
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.bx = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bi, align 8, !tbaa !1600
  store ptr null, ptr %i.bj, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %.body

bb.s:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i27
  store ptr null, ptr %i.bi, align 8, !tbaa !1600
  store ptr null, ptr %i.bj, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bz = load atomic ptr, ptr %i.by monotonic, align 8
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(192) %12, ptr noundef nonnull align 16 dereferenceable(64) %i.bn)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 3 uses
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.ca, ptr noundef nonnull align 16 dereferenceable(64) %i.bt)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit6.i.i unwind label %bb.t

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit6.i.i: ; preds = %.noexc
  %i.cb = getelementptr inbounds nuw i8, ptr %12, i64 128 ; 3 uses
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.cb, ptr noundef nonnull align 16 dereferenceable(64) %i.bz)
          to label %_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclENS_15Return_base_tagERKSF_SK_SK_.exit unwind label %bb.t

bb.t:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit6.i.i, %.noexc
  %.0.i.i = phi ptr [ %i.cb, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit6.i.i ], [ %i.ca, %.noexc ]
end_hunk_9
begin_hunk_10_@_ZZN3igl8copyleft4cgal14half_space_boxIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEiEEvRKNS5_7Plane_3INS5_5EpeckEEERKNS3_10MatrixBaseIT_EERNS4_ISK_Li8ELi3ELi0ELi8ELi3EEERNS4_IT0_Li12ELi3ELi0ELi12ELi3EEEENKUlSK_RNS5_8Vector_3ISN_EEE_clESK_S13_:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 1, ptr %i.s, align 4, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x double> <double -2.000000e+00, double 2.000000e+00>, ptr %i.t, align 16, !tbaa !19
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr null, ptr %i.u, align 16, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i32 0, ptr %i.v, align 8, !tbaa !24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL14Lazy_exact_CstIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEdEE, i64 16), ptr %i.r, align 16, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store double 2.000000e+00, ptr %i.w, align 16, !tbaa !28
  store ptr %i.r, ptr %7, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !2055
  invoke void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors25Construct_scaled_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb1EEclIJNS_8Vector_3IS1_EENS_13Lazy_exact_ntISL_EEEEEDcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Vector_3") align 8 %6, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(9) %7)
          to label %bb.m unwind label %bb.ae

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !2055
  %i.x = load ptr, ptr %2, align 8, !tbaa !577    ; 5 uses
  %i.y = load ptr, ptr %6, align 8, !tbaa !577
  store ptr %i.y, ptr %2, align 8, !tbaa !577
  store ptr %i.x, ptr %6, align 8, !tbaa !577
  %.not.i.i6 = icmp eq ptr %i.x, null
  br i1 %.not.i.i6, label %_ZN4CGAL6HandleD2Ev.exit8, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i7 = icmp eq i8 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.ab = load atomic i32, ptr %i.aa monotonic, align 4 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 1                    ; 2 uses
  br i1 %.not.i.i.i7, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.ac, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(12) %i.x) #23, !inline_history !39
  br label %_ZN4CGAL6HandleD2Ev.exit8

bb.q:                                             ; preds = %bb.o
  %i.ag = add nsw i32 %i.ab, -1
  store atomic i32 %i.ag, ptr %i.aa monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit8

bb.r:                                             ; preds = %bb.n
  br i1 %i.ac, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ah = atomicrmw sub ptr %i.aa, i32 1 release, align 4
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %bb.t, label %_ZN4CGAL6HandleD2Ev.exit8

bb.t:                                             ; preds = %bb.s, %bb.r
  fence acquire
  %i.aj = load ptr, ptr %6, align 8, !tbaa !36    ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZN4CGAL6HandleD2Ev.exit8, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !26
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(12) %i.aj) #23, !inline_history !39
  br label %_ZN4CGAL6HandleD2Ev.exit8

_ZN4CGAL6HandleD2Ev.exit8:                        ; preds = %bb.m, %bb.p, %bb.q, %bb.s, %bb.t, %bb.u
  %i.ao = load ptr, ptr %7, align 8, !tbaa !36    ; 4 uses
  %.not.i.i9 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i9, label %_ZN4CGAL6HandleD2Ev.exit11, label %bb.v

bb.v:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit8
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i10 = icmp eq i8 %i.ap, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 3 uses
  %i.ar = load atomic i32, ptr %i.aq monotonic, align 4 ; 2 uses
  %i.as = icmp eq i32 %i.ar, 1                    ; 2 uses
  br i1 %.not.i.i.i10, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %i.as, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !26
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(12) %i.ao) #23, !inline_history !39
  br label %_ZN4CGAL6HandleD2Ev.exit11

bb.y:                                             ; preds = %bb.w
  %i.aw = add nsw i32 %i.ar, -1
  store atomic i32 %i.aw, ptr %i.aq monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit11

bb.z:                                             ; preds = %bb.v
  br i1 %i.as, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ax = atomicrmw sub ptr %i.aq, i32 1 release, align 4
  %i.ay = icmp eq i32 %i.ax, 1
  br i1 %i.ay, label %bb.ab, label %_ZN4CGAL6HandleD2Ev.exit11

bb.ab:                                            ; preds = %bb.aa, %bb.z
  fence acquire
  %i.az = load ptr, ptr %7, align 8, !tbaa !36    ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_ZN4CGAL6HandleD2Ev.exit11, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !26
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(12) %i.az) #23, !inline_history !39
  br label %_ZN4CGAL6HandleD2Ev.exit11

_ZN4CGAL6HandleD2Ev.exit11:                       ; preds = %_ZN4CGAL6HandleD2Ev.exit8, %bb.x, %bb.y, %bb.aa, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.b, !llvm.loop !2058

bb.ad:                                            ; preds = %bb.b
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ag

bb.ae:                                            ; preds = %bb.l
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.ag

bb.af:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit
  ret void

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.ae ], [ %i.be, %bb.ad ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_15Return_base_tagENS_13Lazy_exact_ntISL_EEST_ST_EEEDcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Point_3") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(9) %5) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %6 = alloca %class.anon.165, align 8            ; 5 uses
  %7 = alloca %class.anon.164, align 8            ; 4 uses
  %8 = alloca %class.anon.165, align 8            ; 5 uses
  %9 = alloca %class.anon.164, align 8            ; 4 uses
  %10 = alloca %class.anon.165, align 8           ; 5 uses
  %11 = alloca %class.anon.164, align 8           ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %.sroa.04.i.i.i.i = alloca [3 x %"class.CGAL::Interval_nt"], align 16 ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.CGAL::PointC3", align 16   ; 30 uses
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
  %i.m = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #34
          to label %bb.b unwind label %bb.e       ; 11 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04.i.i.i.i)
  %i.n = load ptr, ptr %3, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %4, align 8, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %5, align 8, !tbaa !36     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.o, i64 16, i1 false)
  %.sroa.04.16..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.16..sroa_idx.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.q, i64 16, i1 false)
  %.sroa.04.32..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.32..sroa_idx.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.s, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.t, align 4, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.u, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.04.i.i.i.i, i64 48, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store ptr null, ptr %i.v, align 16, !tbaa !1768
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store i32 0, ptr %i.w, align 8, !tbaa !24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_23CartesianKernelFunctors17Construct_point_3IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_15Return_base_tagENS_13Lazy_exact_ntISJ_EESW_SW_EEE, i64 16), ptr %i.m, align 16, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store ptr %i.r, ptr %i.x, align 16, !tbaa !36
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load atomic i32, ptr %i.z monotonic, align 8
  %i.ab = add nsw i32 %i.aa, 1
  store atomic i32 %i.ab, ptr %i.z monotonic, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.ad = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  store ptr %i.ad, ptr %i.ac, align 16, !tbaa !36
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load atomic i32, ptr %i.ae monotonic, align 4
  %i.ag = add nsw i32 %i.af, 1
  store atomic i32 %i.ag, ptr %i.ae monotonic, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.ai = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 16, !tbaa !36
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = load atomic i32, ptr %i.aj monotonic, align 4
  %i.al = add nsw i32 %i.ak, 1
  store atomic i32 %i.al, ptr %i.aj monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.am = atomicrmw add ptr %i.z, i32 1 monotonic, align 4 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.ao = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  store ptr %i.ao, ptr %i.an, align 16, !tbaa !36
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = atomicrmw add ptr %i.ap, i32 1 monotonic, align 4 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.as = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  store ptr %i.as, ptr %i.ar, align 16, !tbaa !36
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = atomicrmw add ptr %i.at, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i.i.i.i)
  store ptr %i.m, ptr %0, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.av = load i32, ptr %i.c, align 4
  %i.aw = and i32 %i.av, -24577
  %i.ax = or disjoint i32 %i.aw, %i.i
  store i32 %i.ax, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ad

bb.e:                                             ; preds = %bb.a
  %i.ay = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE ; 3 uses
  %.013 = extractvalue { ptr, i32 } %i.ay, 1
  %i.az = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #23
  %i.ba = icmp eq i32 %.013, %i.az
  br i1 %i.ba, label %bb.f, label %bb.aa

bb.f:                                             ; preds = %bb.e
  %.014 = extractvalue { ptr, i32 } %i.ay, 0
  %i.bb = call ptr @__cxa_begin_catch(ptr %.014) #23 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.z

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.bc = load i32, ptr %i.c, align 4
  %i.bd = and i32 %i.bc, -24577
  %i.be = or disjoint i32 %i.bd, %i.i
  store i32 %i.be, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bf = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.bg = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store ptr %i.bg, ptr %11, align 8, !tbaa !1597
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store ptr %11, ptr %10, align 8, !tbaa !1600
  %i.bi = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 9 uses
  store ptr %10, ptr %i.bi, align 8, !tbaa !1600
  %i.bj = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 9 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.bj, align 8, !tbaa !1600
  %i.bk = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.bh, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bk) #35
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.bl = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bi, align 8, !tbaa !1600
  store ptr null, ptr %i.bj, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.bi, align 8, !tbaa !1600
  store ptr null, ptr %i.bj, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bn = load atomic ptr, ptr %i.bm monotonic, align 8
  %i.bo = load ptr, ptr %4, align 8, !tbaa !36    ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store ptr %i.bo, ptr %9, align 8, !tbaa !1597
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store ptr %9, ptr %8, align 8, !tbaa !1600
  store ptr %8, ptr %i.bi, align 8, !tbaa !1600
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.bj, align 8, !tbaa !1600
  %i.bq = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.bp, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22 unwind label %bb.n ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22:        ; preds = %bb.k
  %.not.i.i.i.i23 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i23, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bq) #35
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.br = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bi, align 8, !tbaa !1600
  store ptr null, ptr %i.bj, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %.body

bb.o:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22
  store ptr null, ptr %i.bi, align 8, !tbaa !1600
  store ptr null, ptr %i.bj, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bt = load atomic ptr, ptr %i.bs monotonic, align 8
  %i.bu = load ptr, ptr %5, align 8, !tbaa !36    ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %i.bu, ptr %7, align 8, !tbaa !1597
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr %7, ptr %6, align 8, !tbaa !1600
  store ptr %6, ptr %i.bi, align 8, !tbaa !1600
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.bj, align 8, !tbaa !1600
  %i.bw = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.bv, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i27 unwind label %bb.r ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i27:        ; preds = %bb.o
  %.not.i.i.i.i28 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i.i.i28, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i27
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bw) #35
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.bx = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bi, align 8, !tbaa !1600
  store ptr null, ptr %i.bj, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %.body

bb.s:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i27
  store ptr null, ptr %i.bi, align 8, !tbaa !1600
  store ptr null, ptr %i.bj, align 8, !tbaa !1600
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bz = load atomic ptr, ptr %i.by monotonic, align 8
  invoke void @_ZN4CGAL8Vector_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2IRKSE_SJ_SJ_EEOT_OT0_OT1_(ptr noundef nonnull align 16 dereferenceable(192) %12, ptr noundef nonnull align 16 dereferenceable(64) %i.bn, ptr noundef nonnull align 16 dereferenceable(64) %i.bt, ptr noundef nonnull align 16 dereferenceable(64) %i.bz)
          to label %_ZNK4CGAL23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclIJRKSF_SK_SK_EEENS_7PointC3ISG_EENS_15Return_base_tagEDpOT_.exit unwind label %bb.ab

_ZNK4CGAL23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclIJRKSF_SK_SK_EEENS_7PointC3ISG_EENS_15Return_base_tagEDpOT_.exit: ; preds = %bb.s
  invoke void @_ZN4CGAL10Lazy_rep_0INS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEC2INS_7PointC3ISK_EEEEOT_(ptr noundef nonnull align 16 dereferenceable(80) %i.bf, ptr noundef nonnull align 16 dereferenceable(192) %12)
          to label %_ZN4CGAL6HandleD2Ev.exit34 unwind label %bb.ac

_ZN4CGAL6HandleD2Ev.exit34:                       ; preds = %_ZNK4CGAL23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclIJRKSF_SK_SK_EEENS_7PointC3ISG_EENS_15Return_base_tagEDpOT_.exit
  store ptr %i.bf, ptr %0, align 8, !tbaa !36
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 128
  %i.cb = getelementptr inbounds nuw i8, ptr %12, i64 185
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !9, !range !13, !noundef !14
  %i.cd = trunc nuw i8 %i.cc to i1
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 186
end_hunk_10
