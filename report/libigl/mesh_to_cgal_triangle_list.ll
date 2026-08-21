Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/mesh_to_cgal_triangle_list?download=true
inline.NumInlined: 4460
inline.NumDeleted: 1589
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZZN3igl8copyleft4cgal26mesh_to_cgal_triangle_listIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS5_5EpeckEEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERSt6vectorINS5_10Triangle_3IT1_EESaIS10_EEENKUllE_clEl:bb.a
bb.aa:                                            ; preds = %bb.z
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !23
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(12) %i.cn) #20, !inline_history !209
  br label %_ZN4CGAL6HandleD2Ev.exit22

_ZN4CGAL6HandleD2Ev.exit22:                       ; preds = %_ZN4CGAL6HandleD2Ev.exit19, %bb.v, %bb.w, %bb.y, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.cs = load ptr, ptr %13, align 8, !tbaa !36   ; 4 uses
  %.not.i.i23 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i23, label %_ZN4CGAL6HandleD2Ev.exit25, label %bb.ab

bb.ab:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit22
  %i.ct = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i24 = icmp eq i8 %i.ct, 0
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 3 uses
  %i.cv = load atomic i32, ptr %i.cu monotonic, align 4 ; 2 uses
  %i.cw = icmp eq i32 %i.cv, 1                    ; 2 uses
  br i1 %.not.i.i.i24, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.cw, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cx = load ptr, ptr %i.cs, align 8, !tbaa !23
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(12) %i.cs) #20, !inline_history !209
  br label %_ZN4CGAL6HandleD2Ev.exit25

bb.ae:                                            ; preds = %bb.ac
  %i.da = add nsw i32 %i.cv, -1
  store atomic i32 %i.da, ptr %i.cu monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit25

bb.af:                                            ; preds = %bb.ab
  br i1 %i.cw, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.db = atomicrmw sub ptr %i.cu, i32 1 release, align 4
  %i.dc = icmp eq i32 %i.db, 1
  br i1 %i.dc, label %bb.ah, label %_ZN4CGAL6HandleD2Ev.exit25

bb.ah:                                            ; preds = %bb.ag, %bb.af
  fence acquire
  %i.dd = load ptr, ptr %13, align 8, !tbaa !36   ; 3 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %_ZN4CGAL6HandleD2Ev.exit25, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.df = load ptr, ptr %i.dd, align 8, !tbaa !23
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(12) %i.dd) #20, !inline_history !209
  br label %_ZN4CGAL6HandleD2Ev.exit25

_ZN4CGAL6HandleD2Ev.exit25:                       ; preds = %_ZN4CGAL6HandleD2Ev.exit22, %bb.ad, %bb.ae, %bb.ag, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  ret void

bb.aj:                                            ; preds = %bb.a
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ak:                                            ; preds = %bb.b
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %bb.c
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #20
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.dk, %bb.al ], [ %i.dj, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #20
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aj
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.am ], [ %i.di, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36     ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN4CGAL6Handle5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i = icmp eq i8 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.d = load atomic i32, ptr %i.c monotonic, align 4 ; 2 uses
  %i.e = icmp eq i32 %i.d, 1                      ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(12) %i.a) #20, !inline_history !269
  br label %_ZN4CGAL6Handle5resetEv.exit

bb.e:                                             ; preds = %bb.c
  %i.i = add nsw i32 %i.d, -1
  store atomic i32 %i.i, ptr %i.c monotonic, align 4
  br label %_ZN4CGAL6Handle5resetEv.exit

bb.f:                                             ; preds = %bb.b
  br i1 %i.e, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = atomicrmw sub ptr %i.c, i32 1 release, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.h, label %_ZN4CGAL6Handle5resetEv.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  fence acquire
  %i.l = load ptr, ptr %0, align 8, !tbaa !36     ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN4CGAL6Handle5resetEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(12) %i.l) #20, !inline_history !269
  br label %_ZN4CGAL6Handle5resetEv.exit

_ZN4CGAL6Handle5resetEv.exit:                     ; preds = %bb.d, %bb.e, %bb.g, %bb.h, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_15Return_base_tagENS_13Lazy_exact_ntISL_EEST_ST_EEEDcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Point_3.313") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(9) %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %6 = alloca %class.anon.347, align 8            ; 5 uses
  %7 = alloca %class.anon.346, align 8            ; 4 uses
  %8 = alloca %class.anon.347, align 8            ; 5 uses
  %9 = alloca %class.anon.346, align 8            ; 4 uses
  %10 = alloca %class.anon.347, align 8           ; 5 uses
  %11 = alloca %class.anon.346, align 8           ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %.sroa.04.i.i.i.i = alloca [3 x %"class.CGAL::Interval_nt"], align 16 ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.CGAL::PointC3.299", align 16 ; 30 uses
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
  %i.m = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #36
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
  store i32 1, ptr %i.t, align 4, !tbaa !211
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.u, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.04.i.i.i.i, i64 48, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store ptr null, ptr %i.v, align 16, !tbaa !270
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store i32 0, ptr %i.w, align 8, !tbaa !216
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_23CartesianKernelFunctors17Construct_point_3IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_15Return_base_tagENS_13Lazy_exact_ntISJ_EESW_SW_EEE, i64 16), ptr %i.m, align 16, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store ptr %i.r, ptr %i.x, align 16, !tbaa !36
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
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
  %i.az = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #20
  %i.ba = icmp eq i32 %.013, %i.az
  br i1 %i.ba, label %bb.f, label %bb.aa

bb.f:                                             ; preds = %bb.e
  %.014 = extractvalue { ptr, i32 } %i.ay, 0
  %i.bb = call ptr @__cxa_begin_catch(ptr %.014) #20 ; 0 uses
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
  %i.bf = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #36 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.bg = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  store ptr %i.bg, ptr %11, align 8, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store ptr %11, ptr %10, align 8, !tbaa !49
  %i.bi = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 9 uses
  store ptr %10, ptr %i.bi, align 8, !tbaa !49
  %i.bj = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 9 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.bj, align 8, !tbaa !49
  %i.bk = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.bh, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bk) #34
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.bl = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bi, align 8, !tbaa !49
  store ptr null, ptr %i.bj, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.bi, align 8, !tbaa !49
  store ptr null, ptr %i.bj, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bn = load atomic ptr, ptr %i.bm monotonic, align 8
  %i.bo = load ptr, ptr %4, align 8, !tbaa !36    ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  store ptr %i.bo, ptr %9, align 8, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store ptr %9, ptr %8, align 8, !tbaa !49
  store ptr %8, ptr %i.bi, align 8, !tbaa !49
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.bj, align 8, !tbaa !49
  %i.bq = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.bp, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22 unwind label %bb.n ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22:        ; preds = %bb.k
  %.not.i.i.i.i23 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i23, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bq) #34
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.br = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bi, align 8, !tbaa !49
  store ptr null, ptr %i.bj, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %.body

bb.o:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22
  store ptr null, ptr %i.bi, align 8, !tbaa !49
  store ptr null, ptr %i.bj, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bt = load atomic ptr, ptr %i.bs monotonic, align 8
  %i.bu = load ptr, ptr %5, align 8, !tbaa !36    ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store ptr %i.bu, ptr %7, align 8, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %7, ptr %6, align 8, !tbaa !49
  store ptr %6, ptr %i.bi, align 8, !tbaa !49
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.bj, align 8, !tbaa !49
  %i.bw = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.bv, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i27 unwind label %bb.r ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i27:        ; preds = %bb.o
  %.not.i.i.i.i28 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i.i.i28, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i27
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bw) #34
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.bx = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bi, align 8, !tbaa !49
  store ptr null, ptr %i.bj, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %.body

bb.s:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i27
  store ptr null, ptr %i.bi, align 8, !tbaa !49
  store ptr null, ptr %i.bj, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
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
end_hunk_0
begin_hunk_1_@_ZN4CGAL8Vector_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2IRKSE_SJ_SJ_EEOT_OT0_OT1_:bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.ci = load i64, ptr %i.ch, align 16, !tbaa !117 ; 2 uses
  store i64 %i.ci, ptr %i.cg, align 16, !tbaa !117
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 184
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !126, !range !13, !noundef !14
  store i8 %i.cl, ptr %i.cj, align 8, !tbaa !126
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 185
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 185
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !9, !range !13, !noundef !14 ; 2 uses
  store i8 %i.co, ptr %i.cm, align 1, !tbaa !9
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 186
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 186
  %i.cr = load i8, ptr %i.cq, align 2, !tbaa !127, !range !13, !noundef !14
  store i8 %i.cr, ptr %i.cp, align 2, !tbaa !127
  %i.cs = trunc nuw i8 %i.co to i1
  br i1 %i.cs, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2EOS8_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %i.ce, ptr noundef nonnull align 16 dereferenceable(27) %i.cf, i64 16, i1 false), !tbaa.struct !179
  br label %_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev.exit

bb.j:                                             ; preds = %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2EOS8_.exit.i
  %i.ct = shl i64 %i.ci, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(27) %i.ce, ptr nonnull align 16 dereferenceable(27) %i.cf, i64 %i.ct, i1 false)
  br label %_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev.exit

_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void
}

declare void @__once_proxy() #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #22

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv() #8 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !306, !nonnull !14, !align !241
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !273  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 16 dereferenceable(44) %i.d), !inline_history !308
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL8Lazy_repINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EED2Ev(ptr noundef nonnull align 16 dead_on_return(76) dereferenceable(76) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EEE, i64 16), ptr %0, align 16, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load atomic ptr, ptr %i.a monotonic, align 16 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %i.b) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 192) #33
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_0INS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEED0Ev(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EEE, i64 16), ptr %0, align 16, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load atomic ptr, ptr %i.a monotonic, align 16 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN4CGAL8Lazy_repINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %i.b) #20, !inline_history !282
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 192) #33, !inline_history !282
  br label %_ZN4CGAL8Lazy_repINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EED2Ev.exit

_ZN4CGAL8Lazy_repINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_0INS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEE12update_exactEv(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load atomic ptr, ptr %i.a monotonic, align 16
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #36 ; 6 uses
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
  tail call void @_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %i.f) #20
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
define linkonce_odr dso_local void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_20CommonKernelFunctors20Construct_triangle_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb1EEclIJNS_15Return_base_tagENS_7Point_3IS1_EEST_ST_EEEDcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Triangle_3") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %6 = alloca %class.anon.365, align 8            ; 5 uses
  %7 = alloca %class.anon.364, align 8            ; 4 uses
  %8 = alloca %class.anon.365, align 8            ; 5 uses
  %9 = alloca %class.anon.364, align 8            ; 4 uses
  %10 = alloca %class.anon.365, align 8           ; 5 uses
  %11 = alloca %class.anon.364, align 8           ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %.sroa.0.i = alloca [3 x %"class.CGAL::Point_3"], align 16 ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.CGAL::TriangleC3.296", align 16 ; 78 uses
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
  %i.m = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #36
          to label %bb.b unwind label %bb.i       ; 16 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.n = load ptr, ptr %3, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %4, align 8, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %5, align 8, !tbaa !36     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0.i, ptr noundef nonnull align 16 dereferenceable(48) %i.o, i64 48, i1 false)
  %.sroa.0.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0.48..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(48) %i.q, i64 48, i1 false)
  %.sroa.0.96..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0.96..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(48) %i.s, i64 48, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 8 uses
  store i32 1, ptr %i.t, align 4, !tbaa !211
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.u, ptr noundef nonnull align 16 dereferenceable(144) %.sroa.0.i, i64 144, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  store ptr %i.u, ptr %i.v, align 16, !tbaa !233
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 168
  store i32 0, ptr %i.w, align 8, !tbaa !216
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_10Triangle_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20CommonKernelFunctors20Construct_triangle_3IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_15Return_base_tagENS_7Point_3INS_5EpeckEEESX_SX_EEE, i64 16), ptr %i.m, align 16, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  store ptr %i.r, ptr %i.x, align 16, !tbaa !36
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load atomic i32, ptr %i.z monotonic, align 8
  %i.ab = add nsw i32 %i.aa, 1
  store atomic i32 %i.ab, ptr %i.z monotonic, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 184
  %i.ad = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !36
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load atomic i32, ptr %i.ae monotonic, align 4
  %i.ag = add nsw i32 %i.af, 1
  store atomic i32 %i.ag, ptr %i.ae monotonic, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  %i.ai = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 16, !tbaa !36
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = load atomic i32, ptr %i.aj monotonic, align 4
  %i.al = add nsw i32 %i.ak, 1
  store atomic i32 %i.al, ptr %i.aj monotonic, align 4
  store ptr %i.m, ptr %0, align 8, !tbaa !36
  %i.am = load atomic i32, ptr %i.t monotonic, align 8
  %i.an = add nsw i32 %i.am, 1
  store atomic i32 %i.an, ptr %i.t monotonic, align 8
  %i.ao = load atomic i32, ptr %i.t monotonic, align 8 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 1
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aq = load ptr, ptr %i.m, align 16, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #20, !inline_history !209
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.at = add nsw i32 %i.ao, -1
  store atomic i32 %i.at, ptr %i.t monotonic, align 8
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.f:                                             ; preds = %bb.b
  %i.au = atomicrmw add ptr %i.z, i32 1 monotonic, align 4 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 184
  %i.aw = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !36
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = atomicrmw add ptr %i.ax, i32 1 monotonic, align 4 ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  %i.ba = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  store ptr %i.ba, ptr %i.az, align 16, !tbaa !36
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = atomicrmw add ptr %i.bb, i32 1 monotonic, align 4 ; 0 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !36
  %i.bd = atomicrmw add ptr %i.t, i32 1 monotonic, align 4 ; 0 uses
  %i.be = load atomic i32, ptr %i.t monotonic, align 8
  %i.bf = icmp eq i32 %i.be, 1
  br i1 %i.bf, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = atomicrmw sub ptr %i.t, i32 1 release, align 4
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %bb.h, label %_ZN4CGAL6HandleD2Ev.exit

bb.h:                                             ; preds = %bb.f, %bb.g
  fence acquire
  %i.bi = load ptr, ptr %i.m, align 16, !tbaa !23
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #20, !inline_history !209
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.i:                                             ; preds = %bb.a
  %i.bl = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE ; 3 uses
  %.013 = extractvalue { ptr, i32 } %i.bl, 1
  %i.bm = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #20
  %i.bn = icmp eq i32 %.013, %i.bm
  br i1 %i.bn, label %bb.j, label %bb.aw

bb.j:                                             ; preds = %bb.i
  %.014 = extractvalue { ptr, i32 } %i.bl, 0
  %i.bo = call ptr @__cxa_begin_catch(ptr %.014) #20 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %.critedge unwind label %bb.av

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.h, %bb.g, %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.bp = load i32, ptr %i.c, align 4
  %i.bq = and i32 %i.bp, -24577
  %i.br = or disjoint i32 %i.bq, %i.i
  store i32 %i.br, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.az

.critedge:                                        ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.bs = load i32, ptr %i.c, align 4
  %i.bt = and i32 %i.bs, -24577
  %i.bu = or disjoint i32 %i.bt, %i.i
  store i32 %i.bu, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bv = call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #36 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.bw = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  store ptr %i.bw, ptr %11, align 8, !tbaa !309
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store ptr %11, ptr %10, align 8, !tbaa !49
  %i.by = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 9 uses
  store ptr %10, ptr %i.by, align 8, !tbaa !49
  %i.bz = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 9 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.bz, align 8, !tbaa !49
  %i.ca = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.bx, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.m ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %.critedge
  %.not.i.i.i.i22 = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i.i.i22, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ca) #34
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k, %.critedge
  %i.cb = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.by, align 8, !tbaa !49
  store ptr null, ptr %i.bz, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %.body

bb.n:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.by, align 8, !tbaa !49
  store ptr null, ptr %i.bz, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  %i.cd = load atomic ptr, ptr %i.cc monotonic, align 8
  %i.ce = load ptr, ptr %4, align 8, !tbaa !36    ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  store ptr %i.ce, ptr %9, align 8, !tbaa !309
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store ptr %9, ptr %8, align 8, !tbaa !49
  store ptr %8, ptr %i.by, align 8, !tbaa !49
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.bz, align 8, !tbaa !49
  %i.cg = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.cf, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i23 unwind label %bb.q ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i23:        ; preds = %bb.n
  %.not.i.i.i.i24 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i.i.i24, label %bb.r, label %bb.o

bb.o:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i23
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.cg) #34
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.ch = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.by, align 8, !tbaa !49
  store ptr null, ptr %i.bz, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %.body

bb.r:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i23
  store ptr null, ptr %i.by, align 8, !tbaa !49
  store ptr null, ptr %i.bz, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 64
  %i.cj = load atomic ptr, ptr %i.ci monotonic, align 8
  %i.ck = load ptr, ptr %5, align 8, !tbaa !36    ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store ptr %i.ck, ptr %7, align 8, !tbaa !309
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %7, ptr %6, align 8, !tbaa !49
  store ptr %6, ptr %i.by, align 8, !tbaa !49
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.bz, align 8, !tbaa !49
  %i.cm = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.cl, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i28 unwind label %bb.u ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i28:        ; preds = %bb.r
  %.not.i.i.i.i29 = icmp eq i32 %i.cm, 0
  br i1 %.not.i.i.i.i29, label %bb.v, label %bb.s

bb.s:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i28
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.cm) #34
          to label %bb.t unwind label %bb.u
end_hunk_1
