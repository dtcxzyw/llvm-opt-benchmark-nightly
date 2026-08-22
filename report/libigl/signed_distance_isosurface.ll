Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/signed_distance_isosurface?download=true
inline.NumInlined: 15415
inline.NumDeleted: 5215
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 86
begin_hunk_0_@_ZNK4CGAL19Cartesian_converterINS_5EpickENS_5EpeckENS_12NT_converterIdNS_13Lazy_exact_ntIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEEEclERKNS_7Point_3IS1_EE:bb.a
  fence acquire
  %i.as = load ptr, ptr %8, align 8, !tbaa !654   ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !68
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(12) %i.as) #38, !inline_history !660
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.d, %bb.g, %bb.h, %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  %i.ax = load ptr, ptr %7, align 8, !tbaa !654   ; 4 uses
  %.not.i.i10 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i10, label %_ZN4CGAL6HandleD2Ev.exit12, label %bb.m

bb.m:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i11 = icmp eq i8 %i.ay, 0
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.ba = load atomic i32, ptr %i.az monotonic, align 4 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 1                    ; 2 uses
  br i1 %.not.i.i.i11, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.bb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bc = load ptr, ptr %i.ax, align 8, !tbaa !68
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(12) %i.ax) #38, !inline_history !660
  br label %_ZN4CGAL6HandleD2Ev.exit12

bb.p:                                             ; preds = %bb.n
  %i.bf = add nsw i32 %i.ba, -1
  store atomic i32 %i.bf, ptr %i.az monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit12

bb.q:                                             ; preds = %bb.m
  br i1 %i.bb, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = atomicrmw sub ptr %i.az, i32 1 release, align 4
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %bb.s, label %_ZN4CGAL6HandleD2Ev.exit12

bb.s:                                             ; preds = %bb.r, %bb.q
  fence acquire
  %i.bi = load ptr, ptr %7, align 8, !tbaa !654   ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_ZN4CGAL6HandleD2Ev.exit12, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !68
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(12) %i.bi) #38, !inline_history !660
  br label %_ZN4CGAL6HandleD2Ev.exit12

_ZN4CGAL6HandleD2Ev.exit12:                       ; preds = %_ZN4CGAL6HandleD2Ev.exit, %bb.o, %bb.p, %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  %i.bn = load ptr, ptr %6, align 8, !tbaa !654   ; 4 uses
  %.not.i.i13 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i13, label %_ZN4CGAL6HandleD2Ev.exit15, label %bb.u

bb.u:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit12
  %i.bo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i14 = icmp eq i8 %i.bo, 0
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
  %i.bq = load atomic i32, ptr %i.bp monotonic, align 4 ; 2 uses
  %i.br = icmp eq i32 %i.bq, 1                    ; 2 uses
  br i1 %.not.i.i.i14, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %i.br, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bs = load ptr, ptr %i.bn, align 8, !tbaa !68
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(12) %i.bn) #38, !inline_history !660
  br label %_ZN4CGAL6HandleD2Ev.exit15

bb.x:                                             ; preds = %bb.v
  %i.bv = add nsw i32 %i.bq, -1
  store atomic i32 %i.bv, ptr %i.bp monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit15

bb.y:                                             ; preds = %bb.u
  br i1 %i.br, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bw = atomicrmw sub ptr %i.bp, i32 1 release, align 4
  %i.bx = icmp eq i32 %i.bw, 1
  br i1 %i.bx, label %bb.aa, label %_ZN4CGAL6HandleD2Ev.exit15

bb.aa:                                            ; preds = %bb.z, %bb.y
  fence acquire
  %i.by = load ptr, ptr %6, align 8, !tbaa !654   ; 3 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %_ZN4CGAL6HandleD2Ev.exit15, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !68
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(12) %i.by) #38, !inline_history !660
  br label %_ZN4CGAL6HandleD2Ev.exit15

_ZN4CGAL6HandleD2Ev.exit15:                       ; preds = %_ZN4CGAL6HandleD2Ev.exit12, %bb.w, %bb.x, %bb.z, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  ret void

bb.ac:                                            ; preds = %bb.a
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ad:                                            ; preds = %bb.b
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.c
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %8) #38
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.ae ], [ %i.ce, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %7) #38
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.af ], [ %i.cd, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_15Return_base_tagENS_13Lazy_exact_ntISL_EEST_ST_EEEDcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Point_3.587") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(9) %5) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %6 = alloca %class.anon.540, align 8            ; 5 uses
  %7 = alloca %class.anon.539, align 8            ; 4 uses
  %8 = alloca %class.anon.540, align 8            ; 5 uses
  %9 = alloca %class.anon.539, align 8            ; 4 uses
  %10 = alloca %class.anon.540, align 8           ; 5 uses
  %11 = alloca %class.anon.539, align 8           ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %.sroa.04.i.i.i.i = alloca [3 x %"class.CGAL::Interval_nt"], align 16 ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.CGAL::PointC3.551", align 16 ; 30 uses
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
  %i.m = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #47
          to label %bb.b unwind label %bb.e       ; 11 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04.i.i.i.i)
  %i.n = load ptr, ptr %3, align 8, !tbaa !654
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %4, align 8, !tbaa !654
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %5, align 8, !tbaa !654    ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.o, i64 16, i1 false)
  %.sroa.04.16..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.16..sroa_idx.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.q, i64 16, i1 false)
  %.sroa.04.32..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.32..sroa_idx.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.s, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.t, align 4, !tbaa !661
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.u, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.04.i.i.i.i, i64 48, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store ptr null, ptr %i.v, align 8, !tbaa !724
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store i32 0, ptr %i.w, align 8, !tbaa !666
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_23CartesianKernelFunctors17Construct_point_3IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_15Return_base_tagENS_13Lazy_exact_ntISJ_EESW_SW_EEE, i64 16), ptr %i.m, align 16, !tbaa !68
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store ptr %i.r, ptr %i.x, align 16, !tbaa !654
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load atomic i32, ptr %i.z monotonic, align 4
  %i.ab = add nsw i32 %i.aa, 1
  store atomic i32 %i.ab, ptr %i.z monotonic, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.ad = load ptr, ptr %4, align 8, !tbaa !654   ; 2 uses
  store ptr %i.ad, ptr %i.ac, align 16, !tbaa !654
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load atomic i32, ptr %i.ae monotonic, align 4
  %i.ag = add nsw i32 %i.af, 1
  store atomic i32 %i.ag, ptr %i.ae monotonic, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.ai = load ptr, ptr %3, align 8, !tbaa !654   ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 16, !tbaa !654
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = load atomic i32, ptr %i.aj monotonic, align 4
  %i.al = add nsw i32 %i.ak, 1
  store atomic i32 %i.al, ptr %i.aj monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.am = atomicrmw add ptr %i.z, i32 1 monotonic, align 4 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.ao = load ptr, ptr %4, align 8, !tbaa !654   ; 2 uses
  store ptr %i.ao, ptr %i.an, align 16, !tbaa !654
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = atomicrmw add ptr %i.ap, i32 1 monotonic, align 4 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.as = load ptr, ptr %3, align 8, !tbaa !654   ; 2 uses
  store ptr %i.as, ptr %i.ar, align 16, !tbaa !654
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = atomicrmw add ptr %i.at, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i.i.i.i)
  store ptr %i.m, ptr %0, align 8, !tbaa !654
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
  %i.az = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #38
  %i.ba = icmp eq i32 %.013, %i.az
  br i1 %i.ba, label %bb.f, label %bb.aa

bb.f:                                             ; preds = %bb.e
  %.014 = extractvalue { ptr, i32 } %i.ay, 0
  %i.bb = call ptr @__cxa_begin_catch(ptr %.014) #38 ; 0 uses
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
  %i.bf = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #47 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  %i.bg = load ptr, ptr %3, align 8, !tbaa !654   ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  store ptr %i.bg, ptr %11, align 8, !tbaa !657
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  store ptr %11, ptr %10, align 8, !tbaa !15
  %i.bi = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 9 uses
  store ptr %10, ptr %i.bi, align 8, !tbaa !15
  %i.bj = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 9 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.bj, align 8, !tbaa !15
  %i.bk = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.bh, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bk) #46
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.bl = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bi, align 8, !tbaa !15
  store ptr null, ptr %i.bj, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.bi, align 8, !tbaa !15
  store ptr null, ptr %i.bj, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bn = load atomic ptr, ptr %i.bm monotonic, align 8
  %i.bo = load ptr, ptr %4, align 8, !tbaa !654   ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  store ptr %i.bo, ptr %9, align 8, !tbaa !657
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  store ptr %9, ptr %8, align 8, !tbaa !15
  store ptr %8, ptr %i.bi, align 8, !tbaa !15
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.bj, align 8, !tbaa !15
  %i.bq = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.bp, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22 unwind label %bb.n ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22:        ; preds = %bb.k
  %.not.i.i.i.i23 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i23, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bq) #46
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.br = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bi, align 8, !tbaa !15
  store ptr null, ptr %i.bj, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  br label %.body

bb.o:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22
  store ptr null, ptr %i.bi, align 8, !tbaa !15
  store ptr null, ptr %i.bj, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bt = load atomic ptr, ptr %i.bs monotonic, align 8
  %i.bu = load ptr, ptr %5, align 8, !tbaa !654   ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  store ptr %i.bu, ptr %7, align 8, !tbaa !657
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  store ptr %7, ptr %6, align 8, !tbaa !15
  store ptr %6, ptr %i.bi, align 8, !tbaa !15
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.bj, align 8, !tbaa !15
  %i.bw = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.bv, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i27 unwind label %bb.r ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i27:        ; preds = %bb.o
  %.not.i.i.i.i28 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i.i.i28, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i27
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bw) #46
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.bx = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bi, align 8, !tbaa !15
  store ptr null, ptr %i.bj, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  br label %.body

bb.s:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i27
  store ptr null, ptr %i.bi, align 8, !tbaa !15
  store ptr null, ptr %i.bj, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bz = load atomic ptr, ptr %i.by monotonic, align 8
  invoke void @_ZN4CGAL8Vector_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2IRKSE_SJ_SJ_EEOT_OT0_OT1_(ptr noundef nonnull align 16 dereferenceable(192) %12, ptr noundef nonnull align 16 dereferenceable(64) %i.bn, ptr noundef nonnull align 16 dereferenceable(64) %i.bt, ptr noundef nonnull align 16 dereferenceable(64) %i.bz)
          to label %_ZNK4CGAL23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclIJRKSF_SK_SK_EEENS_7PointC3ISG_EENS_15Return_base_tagEDpOT_.exit unwind label %bb.ab

_ZNK4CGAL23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclIJRKSF_SK_SK_EEENS_7PointC3ISG_EENS_15Return_base_tagEDpOT_.exit: ; preds = %bb.s
  invoke void @_ZN4CGAL10Lazy_rep_0INS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEC2INS_7PointC3ISK_EEEEOT_(ptr noundef nonnull align 16 dereferenceable(80) %i.bf, ptr noundef nonnull align 16 dereferenceable(192) %12)
          to label %_ZN4CGAL6HandleD2Ev.exit34 unwind label %bb.ac

_ZN4CGAL6HandleD2Ev.exit34:                       ; preds = %_ZNK4CGAL23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclIJRKSF_SK_SK_EEENS_7PointC3ISG_EENS_15Return_base_tagEDpOT_.exit
  store ptr %i.bf, ptr %0, align 8, !tbaa !654
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 128
  %i.cb = getelementptr inbounds nuw i8, ptr %12, i64 185
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !9, !range !13, !noundef !14
  %i.cd = trunc nuw i8 %i.cc to i1
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 186
end_hunk_0
begin_hunk_1_@_ZNSt5arrayIN4CGAL9cpp_floatELm3EEaSERKS2_:bb.a
  %spec.select.i8.i.i.i.2 = select i1 %i.ci, i64 8, i64 %i.cj ; 2 uses
  %i.ck = icmp ugt i64 %spec.select.i.i.i.2, %spec.select.i8.i.i.i.2
  br i1 %i.ck, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i.i.2, label %bb.l

bb.l:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit.i.i.1
  store i64 %spec.select.i.i.i.2, ptr %i.cd, align 16, !tbaa !741
  %.phi.trans.insert.i.i.2 = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.pre8.i.i.2 = load ptr, ptr %.phi.trans.insert.i.i.2, align 8
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit.i.i.2

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i.i.2: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit.i.i.1
  %i.cl = shl nuw nsw i64 %spec.select.i8.i.i.i.2, 2
  %.sroa.speculated16.i.i.i.2 = tail call i64 @llvm.umax.i64(i64 %i.cl, i64 %spec.select.i.i.i.2)
  %.sroa.speculated.i.i.i.2 = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i.i.i.2, i64 288230376151711744) ; 2 uses
  %i.cm = shl nuw nsw i64 %.sroa.speculated.i.i.i.2, 3
  %i.cn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cm) #47 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8
  br i1 %i.ci, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i.i.2
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 266
  %i.cr = load i8, ptr %i.cq, align 2, !tbaa !745, !range !13, !noundef !14
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ct = shl i64 %i.cj, 3
  tail call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #43
  %.pre.pre.i.i.2 = load i8, ptr %i.cg, align 1, !tbaa !744, !range !13
  %i.cu = trunc nuw i8 %.pre.pre.i.i.2 to i1
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i.i.2
  store i8 0, ptr %i.cg, align 1, !tbaa !744
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pre.i.i.2 = phi i1 [ false, %bb.o ], [ %i.cu, %bb.n ]
  store i64 %spec.select.i.i.i.2, ptr %i.cd, align 16, !tbaa !741
  store i64 %.sroa.speculated.i.i.i.2, ptr %i.cb, align 16, !tbaa !24
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !24
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit.i.i.2

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit.i.i.2: ; preds = %bb.p, %bb.l
  %.pre-phi.i.i.2 = phi i1 [ %.pre.i.i.2, %bb.p ], [ %i.ci, %bb.l ]
  %i.cv = phi ptr [ %i.cn, %bb.p ], [ %.pre8.i.i.2, %bb.l ]
  %i.cw = select i1 %.pre-phi.i.i.2, ptr %i.cb, ptr %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 265
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !744, !range !13, !noundef !14
  %i.cz = trunc nuw i8 %i.cy to i1
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = select i1 %i.cz, ptr %i.cc, ptr %i.db
  %i.dd = load i64, ptr %i.ce, align 16, !tbaa !741
  %i.de = shl i64 %i.dd, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.cw, ptr align 8 %i.dc, i64 %i.de, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.dg = load i8, ptr %i.df, align 8, !tbaa !743, !range !13, !noundef !14
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i8 %i.dg, ptr %i.dh, align 8, !tbaa !743
  br label %.split7.us
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost6tuples4consIN4CGAL7Point_3INS2_16Simple_cartesianINS2_9cpp_floatEEEEENS1_IS5_NS1_INS2_4SignENS0_9null_typeEEEEEEC2ERKSC_(ptr noundef nonnull align 16 dereferenceable(400) %0, ptr noundef nonnull align 16 dereferenceable(400) %1) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNSt5arrayIN4CGAL9cpp_floatELm3EEC2ERKS2_(ptr noundef nonnull align 16 dereferenceable(288) %0, ptr noundef nonnull align 16 dereferenceable(288) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  store i64 0, ptr %i.a, align 16, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 362
  %i.e = load i8, ptr %i.d, align 2, !tbaa !745, !range !13, !noundef !14
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.h = load i64, ptr %i.g, align 16, !tbaa !741
  store i64 %i.h, ptr %i.c, align 16, !tbaa !741
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.k = load i8, ptr %i.j, align 8, !tbaa !743, !range !13, !noundef !14
  store i8 %i.k, ptr %i.i, align 8, !tbaa !743
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 361
  store i8 0, ptr %i.l, align 1, !tbaa !744
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 362
  store i8 1, ptr %i.m, align 2, !tbaa !745
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(100) %i.a, ptr noundef nonnull align 16 dereferenceable(100) %i.b, i64 16, i1 false), !tbaa.struct !286
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %i.c, align 16, !tbaa !741
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.p = load i8, ptr %i.o, align 8, !tbaa !743, !range !13, !noundef !14
  store i8 %i.p, ptr %i.n, align 8, !tbaa !743
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 361 ; 2 uses
  store i8 1, ptr %i.q, align 1, !tbaa !744
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 362
  store i8 0, ptr %i.r, align 2, !tbaa !745
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.t = load i64, ptr %i.s, align 16, !tbaa !741 ; 2 uses
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.t, i64 288230376151711744) ; 2 uses
  %i.u = icmp ult i64 %i.t, 9
  br i1 %i.u, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit.i.i, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i.i

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i.i: ; preds = %bb.c
  %.sroa.speculated16.i.i.i = tail call i64 @llvm.umax.i64(i64 %spec.select.i.i.i, i64 32) ; 2 uses
  %i.v = shl nuw nsw i64 %.sroa.speculated16.i.i.i, 3
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #47
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i8 0, ptr %i.q, align 1, !tbaa !744
  store i64 %.sroa.speculated16.i.i.i, ptr %i.a, align 16, !tbaa !24
  store ptr %i.w, ptr %i.x, align 8, !tbaa !24
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit.i.i: ; preds = %.noexc, %bb.c
  %i.y = phi ptr [ %i.w, %.noexc ], [ %i.a, %bb.c ]
  store i64 %spec.select.i.i.i, ptr %i.c, align 16, !tbaa !741
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 361
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !744, !range !13, !noundef !14
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = select i1 %i.ab, ptr %i.b, ptr %i.ad
  %i.af = load i64, ptr %i.s, align 16, !tbaa !741
  %i.ag = shl i64 %i.af, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %i.ae, i64 %i.ag, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit.i.i, %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.aj = load i32, ptr %i.ai, align 16, !tbaa !746
  store i32 %i.aj, ptr %i.ah, align 16, !tbaa !746
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.am = load i32, ptr %i.al, align 16, !tbaa !141
  store i32 %i.am, ptr %i.ak, align 16, !tbaa !141
  ret void

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(288) dereferenceable(288) %0) #38
  resume { ptr, i32 } %i.an
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_20CommonKernelFunctors18Construct_sphere_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb1EEclIJNS_15Return_base_tagENS_7Point_3IS1_EENS_13Lazy_exact_ntISL_EENS_4SignEEEEDcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Sphere_3.532") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(9) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %6 = alloca %class.anon.540, align 8            ; 5 uses
  %7 = alloca %class.anon.539, align 8            ; 4 uses
  %8 = alloca %class.anon.676, align 8            ; 5 uses
  %9 = alloca %class.anon.675, align 8            ; 4 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.CGAL::SphereC3.547", align 16 ; 38 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.h)
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 24576                      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.f)
  %i.k = load i32, ptr %i.f, align 4
  %i.l = and i32 %i.k, -24577
  %i.m = or disjoint i32 %i.l, 16384
  store i32 %i.m, ptr %i.g, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.n = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #47
          to label %bb.b unwind label %bb.e       ; 12 uses

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %3, align 8, !tbaa !654
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %4, align 8, !tbaa !654    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i32, ptr %5, align 4, !tbaa !682    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 1, ptr %i.t, align 4, !tbaa !661
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.u, ptr noundef nonnull align 16 dereferenceable(48) %i.p, i64 48, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.v, ptr noundef nonnull align 16 dereferenceable(16) %i.r, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store i32 %i.s, ptr %i.w, align 4, !tbaa !141
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store ptr %i.u, ptr %i.x, align 8, !tbaa !762
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  store i32 0, ptr %i.y, align 8, !tbaa !666
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_8Sphere_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20CommonKernelFunctors18Construct_sphere_3IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_15Return_base_tagENS_7Point_3INS_5EpeckEEENS_13Lazy_exact_ntISJ_EENS_4SignEEEE, i64 16), ptr %i.n, align 16, !tbaa !68
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  store i32 %i.s, ptr %i.z, align 16, !tbaa !765
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  store ptr %i.q, ptr %i.aa, align 8, !tbaa !654
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ab, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = load atomic i32, ptr %i.ac monotonic, align 4
  %i.ae = add nsw i32 %i.ad, 1
  store atomic i32 %i.ae, ptr %i.ac monotonic, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %i.ag = load ptr, ptr %3, align 8, !tbaa !654   ; 2 uses
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !654
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = load atomic i32, ptr %i.ah monotonic, align 4
  %i.aj = add nsw i32 %i.ai, 1
  store atomic i32 %i.aj, ptr %i.ah monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.ak = atomicrmw add ptr %i.ac, i32 1 monotonic, align 4 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %i.am = load ptr, ptr %3, align 8, !tbaa !654   ; 2 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !654
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = atomicrmw add ptr %i.an, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.c, %bb.d
  store ptr %i.n, ptr %0, align 8, !tbaa !654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.d)
  %i.ap = load i32, ptr %i.d, align 4
  %i.aq = and i32 %i.ap, -24577
  %i.ar = or disjoint i32 %i.aq, %i.j
  store i32 %i.ar, ptr %i.e, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ac

bb.e:                                             ; preds = %bb.a
  %i.as = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE ; 3 uses
  %.013 = extractvalue { ptr, i32 } %i.as, 1
  %i.at = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #38
  %i.au = icmp eq i32 %.013, %i.at
  br i1 %i.au, label %bb.f, label %bb.z

bb.f:                                             ; preds = %bb.e
  %.014 = extractvalue { ptr, i32 } %i.as, 0
  %i.av = call ptr @__cxa_begin_catch(ptr %.014) #38 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.y

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.d)
  %i.aw = load i32, ptr %i.d, align 4
  %i.ax = and i32 %i.aw, -24577
  %i.ay = or disjoint i32 %i.ax, %i.j
  store i32 %i.ay, ptr %i.e, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.az = call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #47 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  %i.ba = load ptr, ptr %3, align 8, !tbaa !654   ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  store ptr %i.ba, ptr %9, align 8, !tbaa !767
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  store ptr %9, ptr %8, align 8, !tbaa !15
  %i.bc = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 6 uses
  store ptr %8, ptr %i.bc, align 8, !tbaa !15
  %i.bd = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 6 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.bd, align 8, !tbaa !15
  %i.be = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.bb, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.be) #46
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.bf = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bc, align 8, !tbaa !15
  store ptr null, ptr %i.bd, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.bc, align 8, !tbaa !15
  store ptr null, ptr %i.bd, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  %i.bh = load atomic ptr, ptr %i.bg monotonic, align 8
  %i.bi = load ptr, ptr %4, align 8, !tbaa !654   ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  store ptr %i.bi, ptr %7, align 8, !tbaa !657
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  store ptr %7, ptr %6, align 8, !tbaa !15
  store ptr %6, ptr %i.bc, align 8, !tbaa !15
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.bd, align 8, !tbaa !15
  %i.bk = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.bj, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22 unwind label %bb.n ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22:        ; preds = %bb.k
  %.not.i.i.i.i23 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i.i23, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bk) #46
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bl = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bc, align 8, !tbaa !15
  store ptr null, ptr %i.bd, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  br label %.body

bb.o:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22
  store ptr null, ptr %i.bc, align 8, !tbaa !15
  store ptr null, ptr %i.bd, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bn = load atomic ptr, ptr %i.bm monotonic, align 8
  %i.bo = load i32, ptr %5, align 4, !tbaa !682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.bo, ptr %i.c, align 4, !tbaa !682, !noalias !770
  invoke void @_ZN4CGAL8SphereC3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKNS_7Point_3ISF_EERKSE_RKNS_4SignE(ptr noundef nonnull align 16 dereferenceable(272) %10, ptr noundef nonnull align 16 dereferenceable(192) %i.bh, ptr noundef nonnull align 16 dereferenceable(64) %i.bn, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.p unwind label %bb.aa

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_ZN4CGAL10Lazy_rep_0INS_8Sphere_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEC2INS_8SphereC3ISK_EEEEOT_(ptr noundef nonnull align 16 dereferenceable(112) %i.az, ptr noundef nonnull align 16 dereferenceable(272) %10)
          to label %_ZN4CGAL6HandleD2Ev.exit28 unwind label %bb.ab

_ZN4CGAL6HandleD2Ev.exit28:                       ; preds = %bb.p
  store ptr %i.az, ptr %0, align 8, !tbaa !654
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 192
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 249
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !9, !range !13, !noundef !14
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 250
  %i.bu = load i8, ptr %i.bt, align 2, !range !13
  %i.bv = trunc nuw i8 %i.bu to i1
  %or.cond.i1.i.i.i.i.i = select i1 %i.bs, i1 true, i1 %i.bv
  br i1 %or.cond.i1.i.i.i.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit28
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 224
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 232
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = load i64, ptr %i.bw, align 16
  %i.ca = shl i64 %i.bz, 3
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.ca) #43
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i: ; preds = %bb.q, %_ZN4CGAL6HandleD2Ev.exit28
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 217
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !9, !range !13, !noundef !14
  %i.cd = trunc nuw i8 %i.cc to i1
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 218
  %i.cf = load i8, ptr %i.ce, align 2, !range !13
  %i.cg = trunc nuw i8 %i.cf to i1
  %or.cond.i.i.i.i.i.i = select i1 %i.cd, i1 true, i1 %i.cg
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN4CGAL8SphereC3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 200
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = load i64, ptr %i.bp, align 16
  %i.ck = shl i64 %i.cj, 3
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.ck) #43
  br label %_ZN4CGAL8SphereC3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEED2Ev.exit

_ZN4CGAL8SphereC3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEED2Ev.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i, %bb.r
  %i.cl = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 185
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !9, !range !13, !noundef !14
  %i.co = trunc nuw i8 %i.cn to i1
  %i.cp = getelementptr inbounds nuw i8, ptr %10, i64 186
  %i.cq = load i8, ptr %i.cp, align 2, !range !13
  %i.cr = trunc nuw i8 %i.cq to i1
  %or.cond.i1.i.i.i = select i1 %i.co, i1 true, i1 %i.cr
  br i1 %or.cond.i1.i.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i, label %bb.s

bb.s:                                             ; preds = %_ZN4CGAL8SphereC3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEED2Ev.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 160
  %i.ct = getelementptr inbounds nuw i8, ptr %10, i64 168
end_hunk_1
begin_hunk_2_@_ZNK4CGAL10Lazy_rep_nINS_8Sphere_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20CommonKernelFunctors18Construct_sphere_3IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_15Return_base_tagENS_7Point_3INS_5EpeckEEENS_13Lazy_exact_ntISJ_EENS_4SignEEE19update_exact_helperIJLm0ELm1ELm2ELm3EEEEvSt16integer_sequenceImJXspT_EEE:bb.a
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.1.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.1.i: ; preds = %bb.t, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 57
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !9, !range !13, !noundef !14
  %i.db = trunc nuw i8 %i.da to i1
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 58
  %i.dd = load i8, ptr %i.dc, align 2, !range !13
  %i.de = trunc nuw i8 %i.dd to i1
  %or.cond.i1.i.i.2.i = select i1 %i.db, i1 true, i1 %i.de
  br i1 %or.cond.i1.i.i.2.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.2.i, label %bb.u

bb.u:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.1.i
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = load i64, ptr %i.df, align 16
  %i.dj = shl i64 %i.di, 3
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dj) #43
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.2.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.2.i: ; preds = %bb.u, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.1.i
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 25
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !9, !range !13, !noundef !14
  %i.dm = trunc nuw i8 %i.dl to i1
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 26
  %i.do = load i8, ptr %i.dn, align 2, !range !13
  %i.dp = trunc nuw i8 %i.do to i1
  %or.cond.i.i.i.2.i = select i1 %i.dm, i1 true, i1 %i.dp
  br i1 %or.cond.i.i.i.2.i, label %_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.2.i
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = load i64, ptr %7, align 16
  %i.dt = shl i64 %i.ds, 3
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dt) #43
  br label %_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev.exit

_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.2.i, %bb.v
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 249
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !9, !range !13, !noundef !14
  %i.dw = trunc nuw i8 %i.dv to i1
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 250
  %i.dy = load i8, ptr %i.dx, align 2, !range !13
  %i.dz = trunc nuw i8 %i.dy to i1
  %or.cond.i1.i.i.i.i.i18 = select i1 %i.dw, i1 true, i1 %i.dz
  br i1 %or.cond.i1.i.i.i.i.i18, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i19, label %bb.w

bb.w:                                             ; preds = %_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %8, i64 224
  %i.eb = getelementptr inbounds nuw i8, ptr %8, i64 232
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = load i64, ptr %i.ea, align 16
  %i.ee = shl i64 %i.ed, 3
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ee) #43
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i19

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i19: ; preds = %bb.w, %_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %8, i64 217
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !9, !range !13, !noundef !14
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 218
  %i.ej = load i8, ptr %i.ei, align 2, !range !13
  %i.ek = trunc nuw i8 %i.ej to i1
  %or.cond.i.i.i.i.i.i20 = select i1 %i.eh, i1 true, i1 %i.ek
  br i1 %or.cond.i.i.i.i.i.i20, label %_ZN4CGAL8SphereC3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEED2Ev.exit21, label %bb.x

bb.x:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i19
  %i.el = getelementptr inbounds nuw i8, ptr %8, i64 200
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = load i64, ptr %i.ac, align 16
  %i.eo = shl i64 %i.en, 3
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eo) #43
  br label %_ZN4CGAL8SphereC3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEED2Ev.exit21

_ZN4CGAL8SphereC3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEED2Ev.exit21: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i19, %bb.x
  %i.ep = getelementptr inbounds nuw i8, ptr %8, i64 185
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !9, !range !13, !noundef !14
  %i.er = trunc nuw i8 %i.eq to i1
  %i.es = getelementptr inbounds nuw i8, ptr %8, i64 186
  %i.et = load i8, ptr %i.es, align 2, !range !13
  %i.eu = trunc nuw i8 %i.et to i1
  %or.cond.i1.i.i.i22 = select i1 %i.er, i1 true, i1 %i.eu
  br i1 %or.cond.i1.i.i.i22, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i23, label %bb.y

bb.y:                                             ; preds = %_ZN4CGAL8SphereC3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEED2Ev.exit21
  %i.ev = getelementptr inbounds nuw i8, ptr %8, i64 160
  %i.ew = getelementptr inbounds nuw i8, ptr %8, i64 168
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = load i64, ptr %i.ev, align 16
  %i.ez = shl i64 %i.ey, 3
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.ez) #43
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i23

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i23: ; preds = %bb.y, %_ZN4CGAL8SphereC3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEED2Ev.exit21
  %i.fa = getelementptr inbounds nuw i8, ptr %8, i64 153
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !9, !range !13, !noundef !14
  %i.fc = trunc nuw i8 %i.fb to i1
  %i.fd = getelementptr inbounds nuw i8, ptr %8, i64 154
  %i.fe = load i8, ptr %i.fd, align 2, !range !13
  %i.ff = trunc nuw i8 %i.fe to i1
  %or.cond.i.i.i.i24 = select i1 %i.fc, i1 true, i1 %i.ff
  br i1 %or.cond.i.i.i.i24, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i25, label %bb.z

bb.z:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i23
  %i.fg = getelementptr inbounds nuw i8, ptr %8, i64 136
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = load i64, ptr %i.x, align 16
  %i.fj = shl i64 %i.fi, 3
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fj) #43
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i25

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i25: ; preds = %bb.z, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i23
  %i.fk = getelementptr inbounds nuw i8, ptr %8, i64 121
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !9, !range !13, !noundef !14
  %i.fm = trunc nuw i8 %i.fl to i1
  %i.fn = getelementptr inbounds nuw i8, ptr %8, i64 122
  %i.fo = load i8, ptr %i.fn, align 2, !range !13
  %i.fp = trunc nuw i8 %i.fo to i1
  %or.cond.i1.i.i.1.i26 = select i1 %i.fm, i1 true, i1 %i.fp
  br i1 %or.cond.i1.i.i.1.i26, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i27, label %bb.aa

bb.aa:                                            ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i25
  %i.fq = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.fr = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = load i64, ptr %i.fq, align 16
  %i.fu = shl i64 %i.ft, 3
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fu) #43
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i27

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i27: ; preds = %bb.aa, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i25
  %i.fv = getelementptr inbounds nuw i8, ptr %8, i64 89
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !9, !range !13, !noundef !14
  %i.fx = trunc nuw i8 %i.fw to i1
  %i.fy = getelementptr inbounds nuw i8, ptr %8, i64 90
  %i.fz = load i8, ptr %i.fy, align 2, !range !13
  %i.ga = trunc nuw i8 %i.fz to i1
  %or.cond.i.i.i.1.i28 = select i1 %i.fx, i1 true, i1 %i.ga
  br i1 %or.cond.i.i.i.1.i28, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.1.i29, label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i27
  %i.gb = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = load i64, ptr %i.v, align 16
  %i.ge = shl i64 %i.gd, 3
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.ge) #43
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.1.i29

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.1.i29: ; preds = %bb.ab, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i27
  %i.gf = getelementptr inbounds nuw i8, ptr %8, i64 57
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !9, !range !13, !noundef !14
  %i.gh = trunc nuw i8 %i.gg to i1
  %i.gi = getelementptr inbounds nuw i8, ptr %8, i64 58
  %i.gj = load i8, ptr %i.gi, align 2, !range !13
  %i.gk = trunc nuw i8 %i.gj to i1
  %or.cond.i1.i.i.2.i30 = select i1 %i.gh, i1 true, i1 %i.gk
  br i1 %or.cond.i1.i.i.2.i30, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.2.i31, label %bb.ac

bb.ac:                                            ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.1.i29
  %i.gl = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.gm = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.gn = load ptr, ptr %i.gm, align 8
  %i.go = load i64, ptr %i.gl, align 16
  %i.gp = shl i64 %i.go, 3
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gp) #43
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.2.i31

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.2.i31: ; preds = %bb.ac, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.1.i29
  %i.gq = getelementptr inbounds nuw i8, ptr %8, i64 25
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !9, !range !13, !noundef !14
  %i.gs = trunc nuw i8 %i.gr to i1
  %i.gt = getelementptr inbounds nuw i8, ptr %8, i64 26
  %i.gu = load i8, ptr %i.gt, align 2, !range !13
  %i.gv = trunc nuw i8 %i.gu to i1
  %or.cond.i.i.i.2.i32 = select i1 %i.gs, i1 true, i1 %i.gv
  br i1 %or.cond.i.i.i.2.i32, label %_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev.exit33, label %bb.ad

bb.ad:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.2.i31
  %i.gw = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8
  %i.gy = load i64, ptr %8, align 16
  %i.gz = shl i64 %i.gy, 3
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.gz) #43
  br label %_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev.exit33

_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev.exit33: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.2.i31, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  store i16 0, ptr %2, align 2
  call void @_ZNK4CGAL19Cartesian_converterINS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS1_INS_11Interval_ntILb0EEEEENS_12NT_converterISE_SH_EEEclERKNS_8Sphere_3ISF_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Sphere_3.557") align 16 %1, ptr noundef nonnull align 1 dereferenceable(2) %2, ptr noundef nonnull align 16 dereferenceable(272) %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.b, ptr noundef nonnull align 16 dereferenceable(80) %1, i64 48, i1 false)
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.hb, ptr noundef nonnull align 16 dereferenceable(20) %i.ha, i64 16, i1 false), !tbaa.struct !130
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.hd = load i32, ptr %i.hc, align 16, !tbaa !141
  store i32 %i.hd, ptr %i.ah, align 4, !tbaa !141
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 96
  store atomic ptr %i.b, ptr %i.he release, align 16
  call void @_ZN4CGAL23lazy_reset_member_tupleIJNS_15Return_base_tagENS_7Point_3INS_5EpeckEEENS_13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEENS_4SignEEJLm0ELm1ELm2ELm3EEEEvRSt5tupleIJDpT_EESt16integer_sequenceImJXspT0_EEE(ptr noundef nonnull align 8 dereferenceable(32) %i.c)
  ret void

bb.ae:                                            ; preds = %bb.i
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.af:                                            ; preds = %bb.j
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %.body13

bb.ag:                                            ; preds = %bb.l
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %.body16

.body16:                                          ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i, %bb.m, %bb.ag
  %eh.lpad-body17 = phi { ptr, i32 } [ %i.hh, %bb.ag ], [ %i.al, %bb.m ], [ %lpad.thr_comm.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i ]
  call void @_ZN4CGAL8SphereC3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(272) dereferenceable(272) %7) #38
  br label %.body13

.body13:                                          ; preds = %.preheader.i.i.i.i.i.i.i.i.i, %bb.af, %bb.k, %.body16
  %.pn = phi { ptr, i32 } [ %eh.lpad-body17, %.body16 ], [ %i.hg, %bb.af ], [ %i.ad, %bb.k ], [ %lpad.thr_comm.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i ]
  call void @_ZN4CGAL8SphereC3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(272) dereferenceable(272) %8) #38
  br label %.body

.body:                                            ; preds = %bb.d, %bb.h, %bb.ae, %.body13
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body13 ], [ %i.j, %bb.d ], [ %i.hf, %bb.ae ], [ %i.q, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 352) #43
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL19Cartesian_converterINS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS1_INS_11Interval_ntILb0EEEEENS_12NT_converterISE_SH_EEEclERKNS_8Sphere_3ISF_EE(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Sphere_3.557") align 16 %0, ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 16 dereferenceable(272) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %4 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %5 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %6 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %7 = alloca %"class.boost::multiprecision::number", align 16 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38, !noalias !779
  %i.a = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 16 dereferenceable(192) %2), !noalias !779 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38, !noalias !779
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38, !noalias !779
  %i.c = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 16 dereferenceable(64) %i.b), !noalias !779 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38, !noalias !779
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38, !noalias !779
  %i.e = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 16 dereferenceable(64) %i.d), !noalias !779 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38, !noalias !779
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 192
  call void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %7, ptr noundef nonnull align 16 dereferenceable(64) %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.g = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(64) %7)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { double, double } %i.e, 0
  %i.i = fneg double %i.h
  %i.j = insertelement <2 x double> poison, double %i.i, i64 0
  %i.k = extractvalue { double, double } %i.e, 1
  %i.l = insertelement <2 x double> %i.j, double %i.k, i64 1
  %i.m = extractvalue { double, double } %i.c, 0
  %i.n = fneg double %i.m
  %i.o = insertelement <2 x double> poison, double %i.n, i64 0
  %i.p = extractvalue { double, double } %i.c, 1
  %i.q = insertelement <2 x double> %i.o, double %i.p, i64 1
  %i.r = extractvalue { double, double } %i.a, 0
  %i.s = fneg double %i.r
  %i.t = insertelement <2 x double> poison, double %i.s, i64 0
  %i.u = extractvalue { double, double } %i.a, 1
  %i.v = insertelement <2 x double> %i.t, double %i.u, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  %i.w = extractvalue { double, double } %i.g, 0
  %i.x = extractvalue { double, double } %i.g, 1
  %i.y = fneg double %i.w
  %i.z = insertelement <2 x double> poison, double %i.y, i64 0
  %i.aa = insertelement <2 x double> %i.z, double %i.x, i64 1
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.ac = load i32, ptr %i.ab, align 16, !tbaa !682
  store <2 x double> %i.v, ptr %0, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x double> %i.q, ptr %.sroa.5.0..sroa_idx, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x double> %i.l, ptr %.sroa.6.0..sroa_idx, align 16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x double> %i.aa, ptr %i.ad, align 16, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.ac, ptr %i.ae, align 16, !tbaa !141
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 57
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !9, !range !13, !noundef !14
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 58
  %i.aj = load i8, ptr %i.ai, align 2, !range !13
  %i.ak = trunc nuw i8 %i.aj to i1
  %or.cond.i1.i.i = select i1 %i.ah, i1 true, i1 %i.ak
  br i1 %or.cond.i1.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = load i64, ptr %i.al, align 16
  %i.ap = shl i64 %i.ao, 3
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ap) #43
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i: ; preds = %bb.c, %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 25
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !9, !range !13, !noundef !14
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 26
  %i.au = load i8, ptr %i.at, align 2, !range !13
  %i.av = trunc nuw i8 %i.au to i1
  %or.cond.i.i.i = select i1 %i.as, i1 true, i1 %i.av
  br i1 %or.cond.i.i.i, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = load i64, ptr %7, align 16
  %i.az = shl i64 %i.ay, 3
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.az) #43
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %7) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  resume { ptr, i32 } %i.ba
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL23lazy_reset_member_tupleIJNS_15Return_base_tagENS_7Point_3INS_5EpeckEEENS_13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEENS_4SignEEJLm0ELm1ELm2ELm3EEEEvRSt5tupleIJDpT_EESt16integer_sequenceImJXspT0_EEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !654  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN4CGAL17lazy_reset_memberINS_7Point_3INS_5EpeckEEEEEvRT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #38, !inline_history !782
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.e, -1
  store atomic i32 %i.j, ptr %i.d monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i

bb.f:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = atomicrmw sub ptr %i.d, i32 1 release, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.h, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i

bb.h:                                             ; preds = %bb.g, %bb.f
  fence acquire
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !654  ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !68
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #38, !inline_history !782
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i.i:              ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.d
end_hunk_2
begin_hunk_3_@_ZN4CGAL8SphereC3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKNS_7Point_3ISF_EERKSE_RKNS_4SignE:bb.a
  store i32 %i.v, ptr %i.f, align 16, !tbaa !141
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 249
  %i.x = load i8, ptr %i.w, align 1, !tbaa !9, !range !13, !noundef !14
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 250
  %i.aa = load i8, ptr %i.z, align 2, !range !13
  %i.ab = trunc nuw i8 %i.aa to i1
  %or.cond.i1.i.i.i.i = select i1 %i.y, i1 true, i1 %i.ab
  br i1 %or.cond.i1.i.i.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = load i64, ptr %i.ac, align 16
  %i.ag = shl i64 %i.af, 3
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ag) #43
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 217
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !9, !range !13, !noundef !14
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 218
  %i.al = load i8, ptr %i.ak, align 2, !range !13
  %i.am = trunc nuw i8 %i.al to i1
  %or.cond.i.i.i.i.i = select i1 %i.aj, i1 true, i1 %i.am
  br i1 %or.cond.i.i.i.i.i, label %_ZN5boost6tuples4consIN4CGAL7Point_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_ISG_NS1_INS2_4SignENS0_9null_typeEEEEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 200
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = load i64, ptr %i.n, align 16
  %i.aq = shl i64 %i.ap, 3
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.aq) #43
  br label %_ZN5boost6tuples4consIN4CGAL7Point_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_ISG_NS1_INS2_4SignENS0_9null_typeEEEEEED2Ev.exit

_ZN5boost6tuples4consIN4CGAL7Point_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_ISG_NS1_INS2_4SignENS0_9null_typeEEEEEED2Ev.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i, %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 185
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !9, !range !13, !noundef !14
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 186
  %i.av = load i8, ptr %i.au, align 2, !range !13
  %i.aw = trunc nuw i8 %i.av to i1
  %or.cond.i1.i.i.i = select i1 %i.at, i1 true, i1 %i.aw
  br i1 %or.cond.i1.i.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost6tuples4consIN4CGAL7Point_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_ISG_NS1_INS2_4SignENS0_9null_typeEEEEEED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = load i64, ptr %i.ax, align 16
  %i.bb = shl i64 %i.ba, 3
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bb) #43
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i: ; preds = %bb.h, %_ZN5boost6tuples4consIN4CGAL7Point_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_ISG_NS1_INS2_4SignENS0_9null_typeEEEEEED2Ev.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 153
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !9, !range !13, !noundef !14
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 154
  %i.bg = load i8, ptr %i.bf, align 2, !range !13
  %i.bh = trunc nuw i8 %i.bg to i1
  %or.cond.i.i.i.i = select i1 %i.be, i1 true, i1 %i.bh
  br i1 %or.cond.i.i.i.i, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = load i64, ptr %i.i, align 16
  %i.bl = shl i64 %i.bk, 3
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bl) #43
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i: ; preds = %bb.i, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 121
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !9, !range !13, !noundef !14
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 122
  %i.bq = load i8, ptr %i.bp, align 2, !range !13
  %i.br = trunc nuw i8 %i.bq to i1
  %or.cond.i1.i.i.1.i = select i1 %i.bo, i1 true, i1 %i.br
  br i1 %or.cond.i1.i.i.1.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i, label %bb.j

bb.j:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = load i64, ptr %i.bs, align 16
  %i.bw = shl i64 %i.bv, 3
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bw) #43
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i: ; preds = %bb.j, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 89
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !9, !range !13, !noundef !14
  %i.bz = trunc nuw i8 %i.by to i1
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 90
  %i.cb = load i8, ptr %i.ca, align 2, !range !13
  %i.cc = trunc nuw i8 %i.cb to i1
  %or.cond.i.i.i.1.i = select i1 %i.bz, i1 true, i1 %i.cc
  br i1 %or.cond.i.i.i.1.i, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.1.i, label %bb.k

bb.k:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = load i64, ptr %i.g, align 16
  %i.cg = shl i64 %i.cf, 3
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.cg) #43
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.1.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.1.i: ; preds = %bb.k, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 57
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !9, !range !13, !noundef !14
  %i.cj = trunc nuw i8 %i.ci to i1
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 58
  %i.cl = load i8, ptr %i.ck, align 2, !range !13
  %i.cm = trunc nuw i8 %i.cl to i1
  %or.cond.i1.i.i.2.i = select i1 %i.cj, i1 true, i1 %i.cm
  br i1 %or.cond.i1.i.i.2.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.2.i, label %bb.l

bb.l:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.1.i
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = load i64, ptr %i.cn, align 16
  %i.cr = shl i64 %i.cq, 3
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cr) #43
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.2.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.2.i: ; preds = %bb.l, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.1.i
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 25
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !9, !range !13, !noundef !14
  %i.cu = trunc nuw i8 %i.ct to i1
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 26
  %i.cw = load i8, ptr %i.cv, align 2, !range !13
  %i.cx = trunc nuw i8 %i.cw to i1
  %or.cond.i.i.i.2.i = select i1 %i.cu, i1 true, i1 %i.cx
  br i1 %or.cond.i.i.i.2.i, label %_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.2.i
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = load i64, ptr %4, align 16
  %i.db = shl i64 %i.da, 3
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.db) #43
  br label %_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev.exit

_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.2.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  ret void

bb.n:                                             ; preds = %_ZN5boost6tuples5tupleIN4CGAL7Point_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEESG_NS2_4SignENS0_9null_typeESK_SK_SK_SK_SK_SK_EC2Ev.exit
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %.noexc14, %.noexc13, %.noexc12, %bb.d
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost6tuples4consIN4CGAL7Point_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_ISG_NS1_INS2_4SignENS0_9null_typeEEEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(272) dereferenceable(272) %4) #38
  br label %.body

.body:                                            ; preds = %.preheader.i.i.i.i.i.i.i9, %bb.n, %bb.c, %bb.o
  %.pn = phi { ptr, i32 } [ %i.dd, %bb.o ], [ %i.dc, %bb.n ], [ %i.o, %bb.c ], [ %lpad.thr_comm.i.i.i.i.i.i.i8, %.preheader.i.i.i.i.i.i.i9 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @_ZN5boost6tuples4consIN4CGAL7Point_3INS2_16Simple_cartesianINS_14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_ISG_NS1_INS2_4SignENS0_9null_typeEEEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(272) dereferenceable(272) %0) #38
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv() #4 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !783, !nonnull !14, !align !520
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !767  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 16 dereferenceable(76) %i.d), !inline_history !785
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL8Lazy_repINS_8Sphere_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EEC2IS6_NS_8SphereC3ISK_EEEEOT_OT0_(ptr noundef nonnull align 16 dereferenceable(108) %0, ptr noundef nonnull align 16 dereferenceable(80) %1, ptr noundef nonnull align 16 dereferenceable(272) %2) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !661
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_8Sphere_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EEE, i64 16), ptr %0, align 16, !tbaa !68
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.b, align 16, !tbaa !141
  %i.c = tail call noalias noundef nonnull dereferenceable(352) ptr @_Znwm(i64 noundef 352) #47 ; 11 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(352) %i.c, ptr noundef nonnull align 16 dereferenceable(80) %1, i64 48, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.d, ptr noundef nonnull align 16 dereferenceable(20) %i.e, i64 16, i1 false), !tbaa.struct !130
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.h = load i32, ptr %i.g, align 16, !tbaa !141
  store i32 %i.h, ptr %i.f, align 4, !tbaa !141
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(272) %i.i, ptr noundef nonnull align 16 dereferenceable(272) %2)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %.ptr4.i = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 64
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %.ptr4.i, ptr noundef nonnull align 16 dereferenceable(64) %i.j)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i.i.i.i.i unwind label %.preheader.preheader.i.i.i.i.i.i.i.i.i.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc
  %.ptr5.i = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 128
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %.ptr5.i, ptr noundef nonnull align 16 dereferenceable(64) %i.k)
          to label %_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit.i.i.i.i.i unwind label %.preheader.preheader.i.i.i.i.i.i.i.i.i.i

.preheader.preheader.i.i.i.i.i.i.i.i.i.i:         ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i.i.i.i.i, %.noexc
  %.lcssa.ph.i.i.i.i.i.i.i.i.i.idx.i = phi i64 [ 208, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i.i.i.i.i ], [ 144, %.noexc ]
  %lpad.thr_comm.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i.i.i.i.i
  %.idx.i = phi i64 [ %.add.i, %.preheader.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa.ph.i.i.i.i.i.i.i.i.i.idx.i, %.preheader.preheader.i.i.i.i.i.i.i.i.i.i ]
  %.add.i = add nsw i64 %.idx.i, -64              ; 3 uses
  %.ptr3.i = getelementptr inbounds i8, ptr %i.c, i64 %.add.i
  tail call void @_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %.ptr3.i) #38
  %i.l = icmp eq i64 %.add.i, 80
  br i1 %i.l, label %.body, label %.preheader.i.i.i.i.i.i.i.i.i.i

_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit.i.i.i.i.i: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 192
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(68) %i.m, ptr noundef nonnull align 16 dereferenceable(68) %i.n)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit.i.i.i.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(272) %i.i) #38
  br label %.body

bb.c:                                             ; preds = %_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.r = load i32, ptr %i.q, align 16, !tbaa !141
  store i32 %i.r, ptr %i.p, align 4, !tbaa !141
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.c, ptr %i.s, align 16, !tbaa !762
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %i.t, align 8, !tbaa !666
  ret void

bb.d:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i, %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.d ], [ %i.o, %bb.b ], [ %lpad.thr_comm.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 352) #43
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL8Lazy_repINS_8Sphere_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EED2Ev(ptr noundef nonnull align 16 dead_on_return(108) dereferenceable(108) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_8Sphere_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EEE, i64 16), ptr %0, align 16, !tbaa !68
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load atomic ptr, ptr %i.a monotonic, align 16 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  fence acquire
  %i.d = icmp eq ptr %i.b, null
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 329
  %i.g = load i8, ptr %i.f, align 1, !tbaa !9, !range !13, !noundef !14
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 330
  %i.j = load i8, ptr %i.i, align 2, !range !13
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond.i1.i.i.i.i.i.i = select i1 %i.h, i1 true, i1 %i.k
  br i1 %or.cond.i1.i.i.i.i.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load i64, ptr %i.l, align 16
  %i.p = shl i64 %i.o, 3
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.p) #43
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 297
  %i.r = load i8, ptr %i.q, align 1, !tbaa !9, !range !13, !noundef !14
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 298
  %i.u = load i8, ptr %i.t, align 2, !range !13
  %i.v = trunc nuw i8 %i.u to i1
  %or.cond.i.i.i.i.i.i.i = select i1 %i.s, i1 true, i1 %i.v
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN4CGAL10AT_ET_wrapINS_8Sphere_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = load i64, ptr %i.e, align 16
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.z) #43
  br label %_ZN4CGAL10AT_ET_wrapINS_8Sphere_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEEED2Ev.exit

_ZN4CGAL10AT_ET_wrapINS_8Sphere_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEEED2Ev.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i.i, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(272) %i.aa) #38
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 352) #43
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %_ZN4CGAL10AT_ET_wrapINS_8Sphere_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_0INS_8Sphere_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEED0Ev(ptr noundef nonnull align 16 dereferenceable(112) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_8Sphere_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EEE, i64 16), ptr %0, align 16, !tbaa !68
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load atomic ptr, ptr %i.a monotonic, align 16 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i, label %_ZN4CGAL8Lazy_repINS_8Sphere_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  fence acquire
  %i.d = icmp eq ptr %i.b, null
  br i1 %i.d, label %_ZN4CGAL8Lazy_repINS_8Sphere_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 329
  %i.g = load i8, ptr %i.f, align 1, !tbaa !9, !range !13, !noundef !14
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 330
  %i.j = load i8, ptr %i.i, align 2, !range !13
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond.i1.i.i.i.i.i.i.i = select i1 %i.h, i1 true, i1 %i.k
  br i1 %or.cond.i1.i.i.i.i.i.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load i64, ptr %i.l, align 16
  %i.p = shl i64 %i.o, 3
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.p) #43, !inline_history !775
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 297
  %i.r = load i8, ptr %i.q, align 1, !tbaa !9, !range !13, !noundef !14
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 298
  %i.u = load i8, ptr %i.t, align 2, !range !13
  %i.v = trunc nuw i8 %i.u to i1
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.s, i1 true, i1 %i.v
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZN4CGAL10AT_ET_wrapINS_8Sphere_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = load i64, ptr %i.e, align 16
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.z) #43, !inline_history !775
  br label %_ZN4CGAL10AT_ET_wrapINS_8Sphere_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEEED2Ev.exit.i

_ZN4CGAL10AT_ET_wrapINS_8Sphere_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEEED2Ev.exit.i: ; preds = %bb.e, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(272) %i.aa) #38, !inline_history !775
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 352) #43, !inline_history !775
  br label %_ZN4CGAL8Lazy_repINS_8Sphere_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EED2Ev.exit

_ZN4CGAL8Lazy_repINS_8Sphere_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EED2Ev.exit: ; preds = %bb.a, %bb.b, %_ZN4CGAL10AT_ET_wrapINS_8Sphere_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEEED2Ev.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_0INS_8Sphere_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEE12update_exactEv(ptr noundef nonnull align 16 dereferenceable(112) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load atomic ptr, ptr %i.a monotonic, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull dereferenceable(352) ptr @_Znwm(i64 noundef 352) #47 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i32 0, ptr %i.f, align 4, !tbaa !141
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 2 uses
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(272) %i.g)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  %.ptr.1.i.i.i.i.i.i.i.i.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(64) %.ptr.1.i.i.i.i.i.i.i.i.i.ptr.i)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2Ev.exit.1.i.i.i.i.i.i.i.i.i.i unwind label %.preheader.preheader.i.i.i.i.i.i.i.i.i.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2Ev.exit.1.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc
  %.ptr.2.i.i.i.i.i.i.i.i.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(64) %.ptr.2.i.i.i.i.i.i.i.i.i.ptr.i)
          to label %_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2Ev.exit.i.i.i.i.i unwind label %.preheader.preheader.i.i.i.i.i.i.i.i.i.i

.preheader.preheader.i.i.i.i.i.i.i.i.i.i:         ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2Ev.exit.1.i.i.i.i.i.i.i.i.i.i, %.noexc
  %.ptr.lcssa.ph.i.i.i.i.i.i.i.i.i.idx.i = phi i64 [ 208, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2Ev.exit.1.i.i.i.i.i.i.i.i.i.i ], [ 144, %.noexc ]
  %lpad.thr_comm.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i.i.i.i.i
  %.idx.i = phi i64 [ %.add.i, %.preheader.i.i.i.i.i.i.i.i.i.i ], [ %.ptr.lcssa.ph.i.i.i.i.i.i.i.i.i.idx.i, %.preheader.preheader.i.i.i.i.i.i.i.i.i.i ]
  %.add.i = add nsw i64 %.idx.i, -64              ; 3 uses
  %.ptr1.i = getelementptr inbounds i8, ptr %i.e, i64 %.add.i
  tail call void @_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %.ptr1.i) #38
  %i.h = icmp eq i64 %.add.i, 80
  br i1 %i.h, label %.body, label %.preheader.i.i.i.i.i.i.i.i.i.i

_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2Ev.exit.i.i.i.i.i: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2Ev.exit.1.i.i.i.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 272
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(68) %i.i)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2Ev.exit.i.i.i.i.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(272) %i.g) #38
  br label %.body

bb.d:                                             ; preds = %_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2Ev.exit.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 336
  store i32 0, ptr %i.k, align 4, !tbaa !141
  store atomic ptr %i.e, ptr %i.a release, align 16
end_hunk_3
begin_hunk_4_@_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors24Construct_circumcenter_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb1EEclIJNS_7Point_3IS1_EESS_SS_EEEDcDpRKT_:bb.a
bb.w:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.i
  %i.cu = shl i64 %i.cj, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(27) %i.cf, ptr nonnull align 16 dereferenceable(27) %i.cg, i64 %i.cu, i1 false)
  br label %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2EOS8_.exit.i

bb.x:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %i.cf, ptr noundef nonnull align 16 dereferenceable(27) %i.cg, i64 16, i1 false), !tbaa.struct !286
  br label %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2EOS8_.exit.i

_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2EOS8_.exit.i: ; preds = %bb.x, %bb.w
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bp, i64 64 ; 2 uses
  store i64 0, ptr %i.cv, align 16, !tbaa !24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bp, i64 80
  %i.cx = getelementptr inbounds nuw i8, ptr %14, i64 80
  %i.cy = load i64, ptr %i.cx, align 16, !tbaa !215 ; 2 uses
  store i64 %i.cy, ptr %i.cw, align 16, !tbaa !215
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bp, i64 88
  %i.da = getelementptr inbounds nuw i8, ptr %14, i64 88
  %i.db = load i8, ptr %i.da, align 8, !tbaa !223, !range !13, !noundef !14
  store i8 %i.db, ptr %i.cz, align 8, !tbaa !223
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bp, i64 89
  %i.dd = getelementptr inbounds nuw i8, ptr %14, i64 89
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !9, !range !13, !noundef !14 ; 2 uses
  store i8 %i.de, ptr %i.dc, align 1, !tbaa !9
  %i.df = getelementptr inbounds nuw i8, ptr %i.bp, i64 90
  %i.dg = getelementptr inbounds nuw i8, ptr %14, i64 90
  %i.dh = load i8, ptr %i.dg, align 2, !tbaa !224, !range !13, !noundef !14
  store i8 %i.dh, ptr %i.df, align 2, !tbaa !224
  %i.di = trunc nuw i8 %i.de to i1
  %i.dj = shl i64 %i.cy, 3
  %.sink = select i1 %i.di, i64 %i.dj, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(64) %i.cv, ptr nonnull align 16 dereferenceable(64) %i.az, i64 %.sink, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bp, i64 96 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %14, i64 96
  store i64 0, ptr %i.dk, align 16, !tbaa !24
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bp, i64 112
  %i.dn = getelementptr inbounds nuw i8, ptr %14, i64 112
  %i.do = load i64, ptr %i.dn, align 16, !tbaa !215 ; 2 uses
  store i64 %i.do, ptr %i.dm, align 16, !tbaa !215
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bp, i64 120
  %i.dq = getelementptr inbounds nuw i8, ptr %14, i64 120
  %i.dr = load i8, ptr %i.dq, align 8, !tbaa !223, !range !13, !noundef !14
  store i8 %i.dr, ptr %i.dp, align 8, !tbaa !223
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bp, i64 121
  %i.dt = getelementptr inbounds nuw i8, ptr %14, i64 121
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !9, !range !13, !noundef !14 ; 2 uses
  store i8 %i.du, ptr %i.ds, align 1, !tbaa !9
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bp, i64 122
  %i.dw = getelementptr inbounds nuw i8, ptr %14, i64 122
  %i.dx = load i8, ptr %i.dw, align 2, !tbaa !224, !range !13, !noundef !14
  store i8 %i.dx, ptr %i.dv, align 2, !tbaa !224
  %i.dy = trunc nuw i8 %i.du to i1
  %i.dz = shl i64 %i.do, 3
  %.sink52 = select i1 %i.dy, i64 %i.dz, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(27) %i.dk, ptr nonnull align 16 dereferenceable(27) %i.dl, i64 %.sink52, i1 false)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bp, i64 128 ; 2 uses
  store i64 0, ptr %i.ea, align 16, !tbaa !24
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bp, i64 144
  %i.ec = getelementptr inbounds nuw i8, ptr %14, i64 144
  %i.ed = load i64, ptr %i.ec, align 16, !tbaa !215 ; 2 uses
  store i64 %i.ed, ptr %i.eb, align 16, !tbaa !215
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bp, i64 152
  %i.ef = getelementptr inbounds nuw i8, ptr %14, i64 152
  %i.eg = load i8, ptr %i.ef, align 8, !tbaa !223, !range !13, !noundef !14
  store i8 %i.eg, ptr %i.ee, align 8, !tbaa !223
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bp, i64 153
  %i.ei = getelementptr inbounds nuw i8, ptr %14, i64 153
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !9, !range !13, !noundef !14 ; 2 uses
  store i8 %i.ej, ptr %i.eh, align 1, !tbaa !9
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bp, i64 154
  %i.el = getelementptr inbounds nuw i8, ptr %14, i64 154
  %i.em = load i8, ptr %i.el, align 2, !tbaa !224, !range !13, !noundef !14
  store i8 %i.em, ptr %i.ek, align 2, !tbaa !224
  %i.en = trunc nuw i8 %i.ej to i1
  %i.eo = shl i64 %i.ed, 3
  %.sink53 = select i1 %i.en, i64 %i.eo, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(64) %i.ea, ptr nonnull align 16 dereferenceable(64) %i.bb, i64 %.sink53, i1 false)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bp, i64 160 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %14, i64 160 ; 2 uses
  store i64 0, ptr %i.ep, align 16, !tbaa !24
  %i.er = getelementptr inbounds nuw i8, ptr %i.bp, i64 176
  %i.es = getelementptr inbounds nuw i8, ptr %14, i64 176
  %i.et = load i64, ptr %i.es, align 16, !tbaa !215 ; 2 uses
  store i64 %i.et, ptr %i.er, align 16, !tbaa !215
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bp, i64 184
  %i.ev = getelementptr inbounds nuw i8, ptr %14, i64 184
  %i.ew = load i8, ptr %i.ev, align 8, !tbaa !223, !range !13, !noundef !14
  store i8 %i.ew, ptr %i.eu, align 8, !tbaa !223
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bp, i64 185
  %i.ey = getelementptr inbounds nuw i8, ptr %14, i64 185
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !9, !range !13, !noundef !14 ; 2 uses
  store i8 %i.ez, ptr %i.ex, align 1, !tbaa !9
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bp, i64 186
  %i.fb = getelementptr inbounds nuw i8, ptr %14, i64 186
  %i.fc = load i8, ptr %i.fb, align 2, !tbaa !224, !range !13, !noundef !14
  store i8 %i.fc, ptr %i.fa, align 2, !tbaa !224
  %i.fd = trunc nuw i8 %i.ez to i1
  br i1 %i.fd, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2EOS8_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %i.ep, ptr noundef nonnull align 16 dereferenceable(27) %i.eq, i64 16, i1 false), !tbaa.struct !286
  br label %_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev.exit

bb.z:                                             ; preds = %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2EOS8_.exit.i
  %i.fe = shl i64 %i.et, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(27) %i.ep, ptr nonnull align 16 dereferenceable(27) %i.eq, i64 %i.fe, i1 false)
  br label %_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev.exit

_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev.exit: ; preds = %bb.y, %bb.z
  store ptr %i.bp, ptr %i.bq, align 16, !tbaa !724
  %i.ff = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  store i32 0, ptr %i.ff, align 8, !tbaa !666
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_0INS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEE, i64 16), ptr %i.y, align 16, !tbaa !68
  store ptr %i.y, ptr %0, align 8, !tbaa !654
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  br label %bb.ae

bb.aa:                                            ; preds = %bb.f
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.e
  %.merged20 = phi { ptr, i32 } [ %i.fg, %bb.aa ], [ %.pn, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.fh = load i32, ptr %i.a, align 4
  %i.fi = and i32 %i.fh, -24577
  %i.fj = or disjoint i32 %i.fi, %i.i
  store i32 %i.fj, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.ac:                                            ; preds = %bb.s
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ad:                                            ; preds = %.noexc32, %.noexc31, %.noexc, %bb.t
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %14) #38
  br label %.body

.body:                                            ; preds = %bb.j, %bb.ac, %bb.r, %bb.n, %bb.ad
  %.pn18 = phi { ptr, i32 } [ %i.fl, %bb.ad ], [ %i.ae, %bb.j ], [ %i.ak, %bb.n ], [ %i.fk, %bb.ac ], [ %i.aq, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 80) #43
  br label %bb.af

bb.ae:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit, %_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev.exit
  ret void

bb.af:                                            ; preds = %.body, %bb.ab
  %.merged = phi { ptr, i32 } [ %.pn18, %.body ], [ %.merged20, %bb.ab ]
  resume { ptr, i32 } %.merged
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL20Lazy_construction_ntINS_5EpeckENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclIJNS_7Point_3IS1_EEEEENS_13Lazy_exact_ntINSt9remove_cvINSt16remove_referenceIDTcldtdefpT2ecspclsr4CGALE5exactfp_EEEE4typeEE4typeEEEDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Lazy_exact_nt") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %4 = alloca %class.anon.676, align 8            ; 5 uses
  %5 = alloca %class.anon.675, align 8            ; 4 uses
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
  %i.m = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #47
          to label %bb.b unwind label %bb.e       ; 7 uses

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !654    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.p, align 4, !tbaa !661
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.q, ptr noundef nonnull align 16 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !130
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.r, align 8, !tbaa !663
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 0, ptr %i.s, align 8, !tbaa !666
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEEE, i64 16), ptr %i.m, align 16, !tbaa !68
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.n, ptr %i.t, align 16, !tbaa !654
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load atomic i32, ptr %i.v monotonic, align 4
  %i.x = add nsw i32 %i.w, 1
  store atomic i32 %i.x, ptr %i.v monotonic, align 4
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.y = atomicrmw add ptr %i.v, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit: ; preds = %bb.d, %bb.c
  store ptr %i.m, ptr %0, align 8, !tbaa !654
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
  %i.ad = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #38
  %i.ae = icmp eq i32 %.07, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %.08 = extractvalue { ptr, i32 } %i.ac, 0
  %i.af = call ptr @__cxa_begin_catch(ptr %.08) #38 ; 0 uses
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
  %i.aj = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #47 ; 8 uses
  %i.ak = load ptr, ptr %2, align 8, !tbaa !654   ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  store ptr %i.ak, ptr %5, align 8, !tbaa !767
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  store ptr %5, ptr %4, align 8, !tbaa !15
  %i.am = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %4, ptr %i.am, align 8, !tbaa !15
  %i.an = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.an, align 8, !tbaa !15
  %i.ao = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ao) #46
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.am, align 8, !tbaa !15
  store ptr null, ptr %i.an, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.am, align 8, !tbaa !15
  store ptr null, ptr %i.an, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.ar = load atomic ptr, ptr %i.aq monotonic, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.as = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(64) %i.ar)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %bb.k
  %i.at = extractvalue { double, double } %i.as, 0
  %i.au = extractvalue { double, double } %i.as, 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 1, ptr %i.av, align 4, !tbaa !661
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %i.aj, align 16, !tbaa !68
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ax = fneg double %i.at
  %i.ay = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %i.au, i64 1
  store <2 x double> %i.az, ptr %i.aw, align 16, !tbaa !24
  %i.ba = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #47
          to label %.noexc13 unwind label %bb.p   ; 3 uses

.noexc13:                                         ; preds = %.noexc
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.ba, ptr noundef nonnull align 16 dereferenceable(64) %i.ar)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %.noexc13
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 64) #43
  br label %.body

bb.m:                                             ; preds = %.noexc13
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.ba, ptr %i.bc, align 16, !tbaa !663
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store i32 0, ptr %i.bd, align 8, !tbaa !666
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_0INS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEEE, i64 16), ptr %i.aj, align 16, !tbaa !68
  store ptr %i.aj, ptr %0, align 8, !tbaa !654
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
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 48) #43
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
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !654 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL7Point_3INS0_5EpeckEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #38, !inline_history !807
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
begin_hunk_5_@_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEED0Ev:bb.a
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !9, !range !13, !noundef !14
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
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.an) #43, !inline_history !691
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i: ; preds = %bb.l, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 64) #43, !inline_history !691
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEED2Ev.exit

_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0EN4CGAL7Point_3INS0_5EpeckEEELb0EED2Ev.exit.i, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEE12update_exactEv(ptr noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 16 dereferenceable(64) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 16 dereferenceable(64) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %2 = alloca %class.anon.676, align 8            ; 5 uses
  %3 = alloca %class.anon.675, align 8            ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #47 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !654 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  store ptr %i.c, ptr %3, align 8, !tbaa !767
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  store ptr %3, ptr %2, align 8, !tbaa !15
  %i.e = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %2, ptr %i.e, align 8, !tbaa !15
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !15
  %i.g = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.g) #46
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !15
  store ptr null, ptr %i.f, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  br label %.body

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.e, align 8, !tbaa !15
  store ptr null, ptr %i.f, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.j)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit unwind label %bb.n

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  %i.k = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(64) %i.a) ; 2 uses
  %i.l = extractvalue { double, double } %i.k, 0
  %i.m = extractvalue { double, double } %i.k, 1
  %i.n = fneg double %i.l
  %i.o = insertelement <2 x double> poison, double %i.n, i64 0
  %i.p = insertelement <2 x double> %i.o, double %i.m, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x double> %i.p, ptr %i.q, align 16, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic ptr %i.a, ptr %i.r release, align 16
  %i.s = load ptr, ptr %i.b, align 16, !tbaa !654 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZN4CGAL17lazy_reset_memberIJNS_7Point_3INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i = icmp eq i8 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load atomic i32, ptr %i.u monotonic, align 4 ; 2 uses
  %i.w = icmp eq i32 %i.v, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !68
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(12) %i.s) #38, !inline_history !809
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
  %i.ad = load ptr, ptr %i.b, align 16, !tbaa !654 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !68
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(12) %i.ad) #38, !inline_history !809
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i:          ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.h
  store ptr null, ptr %i.b, align 16, !tbaa !654
  br label %_ZN4CGAL17lazy_reset_memberIJNS_7Point_3INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit

_ZN4CGAL17lazy_reset_memberIJNS_7Point_3INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit, %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i
  ret void

bb.n:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.n ], [ %i.h, %bb.d ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #43
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL20Lazy_construction_ntINS_5EpeckENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclIJNS_7Point_3IS1_EEEEENS_13Lazy_exact_ntINSt9remove_cvINSt16remove_referenceIDTcldtdefpT2ecspclsr4CGALE5exactfp_EEEE4typeEE4typeEEEDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Lazy_exact_nt") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %4 = alloca %class.anon.676, align 8            ; 5 uses
  %5 = alloca %class.anon.675, align 8            ; 4 uses
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
  %i.m = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #47
          to label %bb.b unwind label %bb.e       ; 7 uses

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !654    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.p, align 4, !tbaa !661
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.q, ptr noundef nonnull align 16 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !130
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.r, align 8, !tbaa !663
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 0, ptr %i.s, align 8, !tbaa !666
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEEE, i64 16), ptr %i.m, align 16, !tbaa !68
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.n, ptr %i.t, align 16, !tbaa !654
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load atomic i32, ptr %i.v monotonic, align 4
  %i.x = add nsw i32 %i.w, 1
  store atomic i32 %i.x, ptr %i.v monotonic, align 4
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.y = atomicrmw add ptr %i.v, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit: ; preds = %bb.d, %bb.c
  store ptr %i.m, ptr %0, align 8, !tbaa !654
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
  %i.ad = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #38
  %i.ae = icmp eq i32 %.07, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %.08 = extractvalue { ptr, i32 } %i.ac, 0
  %i.af = call ptr @__cxa_begin_catch(ptr %.08) #38 ; 0 uses
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
  %i.aj = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #47 ; 8 uses
  %i.ak = load ptr, ptr %2, align 8, !tbaa !654   ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  store ptr %i.ak, ptr %5, align 8, !tbaa !767
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  store ptr %5, ptr %4, align 8, !tbaa !15
  %i.am = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %4, ptr %i.am, align 8, !tbaa !15
  %i.an = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.an, align 8, !tbaa !15
  %i.ao = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ao) #46
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.am, align 8, !tbaa !15
  store ptr null, ptr %i.an, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.am, align 8, !tbaa !15
  store ptr null, ptr %i.an, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.ar = load atomic ptr, ptr %i.aq monotonic, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.at = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(64) %i.as)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %bb.k
  %i.au = extractvalue { double, double } %i.at, 0
  %i.av = extractvalue { double, double } %i.at, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 1, ptr %i.aw, align 4, !tbaa !661
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %i.aj, align 16, !tbaa !68
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ay = fneg double %i.au
  %i.az = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %i.av, i64 1
  store <2 x double> %i.ba, ptr %i.ax, align 16, !tbaa !24
  %i.bb = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #47
          to label %.noexc13 unwind label %bb.p   ; 3 uses

.noexc13:                                         ; preds = %.noexc
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.bb, ptr noundef nonnull align 16 dereferenceable(64) %i.as)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %.noexc13
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 64) #43
  br label %.body

bb.m:                                             ; preds = %.noexc13
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.bb, ptr %i.bd, align 16, !tbaa !663
  %i.be = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store i32 0, ptr %i.be, align 8, !tbaa !666
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_0INS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEEE, i64 16), ptr %i.aj, align 16, !tbaa !68
  store ptr %i.aj, ptr %0, align 8, !tbaa !654
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
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 48) #43
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
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !654 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL7Point_3INS0_5EpeckEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #38, !inline_history !807
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
begin_hunk_6_@_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEED0Ev:bb.a
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
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.an) #43, !inline_history !691
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i: ; preds = %bb.l, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 64) #43, !inline_history !691
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEED2Ev.exit

_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0EN4CGAL7Point_3INS0_5EpeckEEELb0EED2Ev.exit.i, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEE12update_exactEv(ptr noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 16 dereferenceable(64) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 16 dereferenceable(64) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %2 = alloca %class.anon.676, align 8            ; 5 uses
  %3 = alloca %class.anon.675, align 8            ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #47 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !654 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  store ptr %i.c, ptr %3, align 8, !tbaa !767
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  store ptr %3, ptr %2, align 8, !tbaa !15
  %i.e = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %2, ptr %i.e, align 8, !tbaa !15
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !15
  %i.g = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.g) #46
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !15
  store ptr null, ptr %i.f, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  br label %.body

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.e, align 8, !tbaa !15
  store ptr null, ptr %i.f, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.k)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit unwind label %bb.n

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  %i.l = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(64) %i.a) ; 2 uses
  %i.m = extractvalue { double, double } %i.l, 0
  %i.n = extractvalue { double, double } %i.l, 1
  %i.o = fneg double %i.m
  %i.p = insertelement <2 x double> poison, double %i.o, i64 0
  %i.q = insertelement <2 x double> %i.p, double %i.n, i64 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x double> %i.q, ptr %i.r, align 16, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic ptr %i.a, ptr %i.s release, align 16
  %i.t = load ptr, ptr %i.b, align 16, !tbaa !654 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %_ZN4CGAL17lazy_reset_memberIJNS_7Point_3INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.w = load atomic i32, ptr %i.v monotonic, align 4 ; 2 uses
  %i.x = icmp eq i32 %i.w, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !68
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(12) %i.t) #38, !inline_history !809
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
  %i.ae = load ptr, ptr %i.b, align 16, !tbaa !654 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !68
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(12) %i.ae) #38, !inline_history !809
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i:          ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.h
  store ptr null, ptr %i.b, align 16, !tbaa !654
  br label %_ZN4CGAL17lazy_reset_memberIJNS_7Point_3INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit

_ZN4CGAL17lazy_reset_memberIJNS_7Point_3INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit, %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i
  ret void

bb.n:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.n ], [ %i.h, %bb.d ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #43
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL20Lazy_construction_ntINS_5EpeckENS_23CartesianKernelFunctors11Compute_z_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclIJNS_7Point_3IS1_EEEEENS_13Lazy_exact_ntINSt9remove_cvINSt16remove_referenceIDTcldtdefpT2ecspclsr4CGALE5exactfp_EEEE4typeEE4typeEEEDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Lazy_exact_nt") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %4 = alloca %class.anon.676, align 8            ; 5 uses
  %5 = alloca %class.anon.675, align 8            ; 4 uses
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
  %i.m = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #47
          to label %bb.b unwind label %bb.e       ; 7 uses

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !654    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.p, align 4, !tbaa !661
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.q, ptr noundef nonnull align 16 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !130
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.r, align 8, !tbaa !663
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 0, ptr %i.s, align 8, !tbaa !666
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_z_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEEE, i64 16), ptr %i.m, align 16, !tbaa !68
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.n, ptr %i.t, align 16, !tbaa !654
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load atomic i32, ptr %i.v monotonic, align 4
  %i.x = add nsw i32 %i.w, 1
  store atomic i32 %i.x, ptr %i.v monotonic, align 4
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_z_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.y = atomicrmw add ptr %i.v, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_z_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit

_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_z_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEEC2IJRKSR_EEERKSK_RKSM_DpOT_.exit: ; preds = %bb.d, %bb.c
  store ptr %i.m, ptr %0, align 8, !tbaa !654
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
  %i.ad = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #38
  %i.ae = icmp eq i32 %.07, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %.08 = extractvalue { ptr, i32 } %i.ac, 0
  %i.af = call ptr @__cxa_begin_catch(ptr %.08) #38 ; 0 uses
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
  %i.aj = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #47 ; 8 uses
  %i.ak = load ptr, ptr %2, align 8, !tbaa !654   ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  store ptr %i.ak, ptr %5, align 8, !tbaa !767
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  store ptr %5, ptr %4, align 8, !tbaa !15
  %i.am = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %4, ptr %i.am, align 8, !tbaa !15
  %i.an = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.an, align 8, !tbaa !15
  %i.ao = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ao) #46
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.am, align 8, !tbaa !15
  store ptr null, ptr %i.an, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.am, align 8, !tbaa !15
  store ptr null, ptr %i.an, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.ar = load atomic ptr, ptr %i.aq monotonic, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.at = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(64) %i.as)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %bb.k
  %i.au = extractvalue { double, double } %i.at, 0
  %i.av = extractvalue { double, double } %i.at, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 1, ptr %i.aw, align 4, !tbaa !661
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %i.aj, align 16, !tbaa !68
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ay = fneg double %i.au
  %i.az = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %i.av, i64 1
  store <2 x double> %i.ba, ptr %i.ax, align 16, !tbaa !24
  %i.bb = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #47
          to label %.noexc13 unwind label %bb.p   ; 3 uses

.noexc13:                                         ; preds = %.noexc
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.bb, ptr noundef nonnull align 16 dereferenceable(64) %i.as)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %.noexc13
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 64) #43
  br label %.body

bb.m:                                             ; preds = %.noexc13
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.bb, ptr %i.bd, align 16, !tbaa !663
  %i.be = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store i32 0, ptr %i.be, align 8, !tbaa !666
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_0INS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEEE, i64 16), ptr %i.aj, align 16, !tbaa !68
  store ptr %i.aj, ptr %0, align 8, !tbaa !654
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
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 48) #43
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
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !654 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL7Point_3INS0_5EpeckEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #38, !inline_history !807
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
end_hunk_6
